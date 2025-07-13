# frozen_string_literal: true

require_relative '../json/error_handler'
require_relative '../json/handler'
require_relative '../stubbing/json_rpc'

module Aws
  module Core
    module Plugins
      # @api private
      class JsonRpc < Smithy::Client::Plugin
        # @api private
        option(:codec) { Smithy::JSON::Codec.new }
        # @api private
        option(:stubber) { Stubbing::JsonRpc.new }

        handler(JSON::Handler)
        handler(JSON::ErrorHandler, step: :sign)
      end
    end
  end
end
