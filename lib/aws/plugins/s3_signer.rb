module Aws
  module Plugins
    class S3Signer < Seahorse::Client::Plugin

      handle(:Handler, step: :sign) do |context|
        Signers::S3.new(
          context.config.credentials,
          context.params
        ).sign(context.http_request)
        @handler.call(context)
      end

    end
  end
end
