module Aws
  module Plugins
    class SignatureV3 < Seahorse::Client::Plugin

      handler(Signers::Handler.new(Signers::V3), step: :sign)

    end
  end
end
