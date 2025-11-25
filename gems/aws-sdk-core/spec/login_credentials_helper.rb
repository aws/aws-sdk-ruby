# frozen_string_literal: true

require 'json'

module LoginCredentialsHelper
  def mock_token_file(login_session, cached_token)
    token_file.open
    token_file.write(JSON.dump(cached_token))
    token_file.rewind
    login_session_sha = OpenSSL::Digest::SHA256.hexdigest(login_session.strip.encode('utf-8'))
    allow(Dir).to receive(:home).and_return('HOME')
    directory = ENV['AWS_LOGIN_CACHE_DIRECTORY'] || File.join(Dir.home, '.aws', 'login', 'cache')
    expected_path = File.join(directory, "#{login_session_sha}.json")
    expect_any_instance_of(Aws::LoginCredentials).to receive(:login_cache_file).at_least(:once).and_wrap_original do |m, *args|
      path = m.call(*args)
      expect(path).to eq(expected_path)
      token_file.path
    end
    token_file.close
  end

  def expect_token_write_back(expected_token)
    actual_token = JSON.parse(File.read(token_file.path))
    expect(actual_token).to eq(JSON.parse(JSON.dump(expected_token)))
  end

  def verify_dpop(dpop_proof)
    verify_header(dpop_proof)
    verify_payload(dpop_proof)
    verify_signature(dpop_proof)
  end

  def verify_header(dpop_proof)
    encoded_header = dpop_proof.split('.')[0]
    header = JSON.parse(Base64.urlsafe_decode64(encoded_header))
    expect(header['alg']).to eq('ES256')
    expect(header['typ']).to eq('dpop+jwt')
    expect(header['jwk']).to_not be_nil
    expect(header['jwk']['kty']).to eq('EC')
    expect(header['jwk']['crv']).to eq('P-256')
    expect(header['jwk']['x']).to_not be_nil
    expect(header['jwk']['y']).to_not be_nil
  end

  def verify_payload(dpop_proof)
    encoded_payload = dpop_proof.split('.')[1]
    payload = JSON.parse(Base64.urlsafe_decode64(encoded_payload))
    expect(payload['htm']).to eq('POST')
    expect(payload['iat']).to be > 0
    expect(payload['jti']).to_not be_nil
    expect(payload['htu']).to_not be_nil
  end

  def verify_signature(dpop_proof)
    encoded_header, encoded_payload, encoded_signature = dpop_proof.split('.')

    jwk = JSON.parse(Base64.urlsafe_decode64(encoded_header))['jwk']

    sig_bytes = Base64.urlsafe_decode64(encoded_signature)
    message = "#{encoded_header}.#{encoded_payload}"

    x_bytes = Base64.urlsafe_decode64(jwk['x'])
    y_bytes = Base64.urlsafe_decode64(jwk['y'])

    public_key = create_ec_public_key(x_bytes, y_bytes)
    der_signature = jws_to_der(sig_bytes)
    expect(public_key.verify(OpenSSL::Digest.new('SHA256'), der_signature, message)).to eq(true)
  end

  def create_ec_public_key(x_bytes, y_bytes)
    # Approach compatible with JRuby and BouncyCastle
    group = OpenSSL::PKey::EC::Group.new('prime256v1')
    point = OpenSSL::PKey::EC::Point.new(group, OpenSSL::BN.new("\u0004#{x_bytes}#{y_bytes}", 2))
    
    ec_key = OpenSSL::PKey::EC.new(group)
    ec_key.public_key = point
    ec_key
  rescue OpenSSL::PKey::PKeyError
    # Approach compatible with OpenSSL 3.0.0 where pkeys are immutable

    # Create uncompressed point format: 0x04 + x + y
    point = "\u0004#{x_bytes}#{y_bytes}"

    # Create EC public key using P-256 curve
    group = OpenSSL::PKey::EC::Group.new('prime256v1')
    ec_params_der = group.to_der
    asn1_sequence = OpenSSL::ASN1::Sequence([
      OpenSSL::ASN1::Sequence([
        OpenSSL::ASN1::ObjectId('id-ecPublicKey'),
        OpenSSL::ASN1.decode(ec_params_der)
      ]),
      OpenSSL::ASN1::BitString(point)
    ])

    # Use read to create public key from DER encoding to avoid immutable PKey error
    OpenSSL::PKey.read(asn1_sequence.to_der)
  end

  def jws_to_der(jws_signature)
    raise 'Invalid ES256 signature length' unless jws_signature.length == 64

    r_bytes = jws_signature[0, 32]
    s_bytes = jws_signature[32, 32]

    r = OpenSSL::BN.new(r_bytes, 2)
    s = OpenSSL::BN.new(s_bytes, 2)

    # Create ASN.1 sequence
    r_asn1 = OpenSSL::ASN1::Integer.new(r)
    s_asn1 = OpenSSL::ASN1::Integer.new(s)
    OpenSSL::ASN1::Sequence.new([r_asn1, s_asn1]).to_der
  end
end
