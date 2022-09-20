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
end
