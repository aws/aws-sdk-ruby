module Sigv4Helper
  # check service signing
  def expect_sigv4_service(service)
    expect(Aws::Plugins::Sign::SignatureV4).to receive(:apply_signature) do |signer|
      expect(signer.service).to eq(service)
    end
  end

  # check region signing
  def expect_sigv4_region(region)
    expect(Aws::Plugins::Sign::SignatureV4).to receive(:apply_signature) do |signer|
      expect(signer.region).to eq(region)
    end
  end

  # perhaps belongs in an AuthHelper but we mainly check Sigv4 these days
  def expect_auth(auth_scheme)
    expect(Aws::Plugins::Sign).to receive(:signer_for).and_wrap_original do |m, *args|
      expect(args.first).to include(auth_scheme)
      if auth_scheme['name'] == 'sigv4a'
        mock_signature = Aws::Sigv4::Signature.new(headers: {})
        signer = double('sigv4a_signer', sign_request: mock_signature)

        expect(Aws::Sigv4::Signer).to receive(:new)
          .with(hash_including(signing_algorithm: :sigv4a))
          .and_return(signer)
      end
      m.call(*args)
    end
  end
end
