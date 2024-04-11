# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class RpcV2 < Seahorse::Client::Plugin
        option(:rpcv2_parser_class) { |config| Aws::RpcV2::PeekAndReadParser }

        handler(Aws::RpcV2::Handler)
        handler(Aws::RpcV2::ErrorHandler, step: :sign)
      end
    end
  end
end
