module Aws
  module Plugins
    class SignatureV2 < Seahorse::Client::Plugin

      handler(Signers::Handler.new(Signers::V2), step: :sign)

    end
  end
end
