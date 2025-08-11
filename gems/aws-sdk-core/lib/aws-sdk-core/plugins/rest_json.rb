# frozen_string_literal: true

require_relative '../json/error_handler'
require_relative '../rest'
require_relative '../stubbing/rest_json'

module Aws
  module Core
    module Plugins
      # @api private
      class RestJson < Smithy::Client::Plugin
        option(:protocol, default: 'aws.protocols#restJson1')
        option(:json_codec) { Smithy::Json::Codec.new(json_name: true) }
        option(:stubber) { Stubbing::RestJson.new }

        handler(Core::Rest::Handler)
        handler(Core::Json::ErrorHandler, step: :sign)
      end
    end
  end
end
