module AuthHelper
  # Expect the signer to be called with the given auth scheme.
  def expect_auth(expected_auth_scheme, region: nil, credentials: nil)
    expect(Aws::Plugins::Sign).to receive(:signer_for).and_wrap_original do |m, *args|
      actual_auth_scheme = args[0]
      _config = args[1]
      _sigv4_region_override = args[2]
      _sigv4_credentials_override = args[3]

      expect(actual_auth_scheme).to include(expected_auth_scheme)
      signer = m.call(*args)
      case signer
      when Aws::Plugins::Sign::SignatureV4
        sigv4_signer = signer.signer
        case expected_auth_scheme['name']
        when 'sigv4'
          region = region || expected_auth_scheme['signingRegion']
        when 'sigv4a'
          region = region || expected_auth_scheme['signingRegionSet']&.join(',')
        end
        expect(sigv4_signer.region).to eq(region) if region
        expect(sigv4_signer.credentials_provider).to eq(credentials) if credentials
      end
      signer
    end
  end
end
