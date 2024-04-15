# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class RpcV2 < Seahorse::Client::Plugin
        handler(Aws::RpcV2::Handler)
        handler(Aws::RpcV2::ErrorHandler, step: :sign)
      end
    end
  end
end
