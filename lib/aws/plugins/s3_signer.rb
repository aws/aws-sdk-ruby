module Aws
  module Plugins
    class S3Signer < Seahorse::Client::Plugin

      handler(Signers::Handler.new(Signers::S3), step: :sign)

    end
  end
end
