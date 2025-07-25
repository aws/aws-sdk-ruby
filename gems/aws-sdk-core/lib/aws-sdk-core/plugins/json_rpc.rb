# frozen_string_literal: true

require_relative '../json'
require_relative '../stubbing/json_rpc'

module Aws
  module Core
    module Plugins
      # @api private
      class JsonRpc < Smithy::Client::Plugin
        # @api private
        option(:json_codec) { Smithy::Json::Codec.new }
        # @api private
        option(:stubber) { Stubbing::JsonRpc.new }

        handler(Core::Json::Handler)
        handler(Core::Json::ErrorHandler, step: :sign)
      end
    end
  end
end
