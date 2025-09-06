# frozen_string_literal: true

require 'smithy-json'

require 'aws-sdk-core/json'
require 'aws-sdk-core/rest'
require 'aws-sdk-core/stubbing/rest_json'

module Aws
  module Core
    module Plugins
      # @api private
      class RestJsonProtocol < Smithy::Client::Plugin
        option(:protocol, default: 'aws.protocols#restJson1')
        option(:json_codec) { Smithy::Json::Codec.new(json_name: true) }
        option(:stubber) { Stubbing::RestJson.new }

        handler(Core::Rest::Handler)
        handler(Core::Json::ErrorHandler, step: :sign)
      end
    end
  end
end
