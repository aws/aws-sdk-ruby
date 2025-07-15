# frozen_string_literal: true

require_relative '../json'

module Aws
  module Core
    module Plugins
      # @api private
      class JsonRpc < Smithy::Client::Plugin
        # @api private
        option(:json_codec) { Smithy::JSON::Codec.new }
        # @api private
        option(:stubber) { Stubbing::JsonRpc.new }

        handler(Json::Handler)
        handler(Json::ErrorHandler, step: :sign)
      end
    end
  end
end
