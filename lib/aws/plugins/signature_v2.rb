module Aws
  module Plugins
    class SignatureV2 < Seahorse::Client::Plugin

      handle(:Handler, step: :sign) do |context|
        Signers::V2.new(context.config.credentials).sign(context.http_request)
        @handler.call(context)
      end

    end
  end
end
