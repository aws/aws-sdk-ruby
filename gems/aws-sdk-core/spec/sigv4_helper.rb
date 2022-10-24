module Sigv4Helper
  # check service signing
  def expect_sigv4_service(service)
    allow(Aws::Plugins::SignatureV4).to receive(:apply_signature) do |args|
      expect(args[:signer].service).to eq(service)
    end
  end
end
