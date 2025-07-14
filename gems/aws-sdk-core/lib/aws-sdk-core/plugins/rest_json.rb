# frozen_string_literal: true

require_relative '../rest/handler'
require_relative '../json/error_handler'
require_relative '../stubbing/rest_json'

module Aws
  module Core
    module Plugins
      # @api private
      class RestJson < Smithy::Client::Plugin
        # @api private
        option(:json_codec) { Smithy::JSON::Codec.new(json_name: true) }
        # @api private
        option(:stubber) { Stubbing::RestJson.new }

        handler(Rest::Handler)
        handler(JSON::ErrorHandler, step: :sign)
      end
    end
  end
end
