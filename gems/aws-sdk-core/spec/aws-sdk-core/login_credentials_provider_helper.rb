# frozen_string_literal: true

require 'json'

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
  expect(payload['iat']).to be_positive
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
