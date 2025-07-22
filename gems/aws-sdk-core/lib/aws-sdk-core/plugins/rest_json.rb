# frozen_string_literal: true

require_relative '../json'
require_relative '../rest'

module Aws
  module Core
    module Plugins
      # @api private
      class RestJson < Smithy::Client::Plugin
        # @api private
        option(:json_codec) { Smithy::Json::Codec.new(json_name: true) }
        # @api private
        option(:stubber) { Stubbing::RestJson.new }

        handler(Rest::Handler)
        handler(Json::ErrorHandler, step: :sign)
      end
    end
  end
end
