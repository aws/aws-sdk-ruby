# frozen_string_literal: true

require 'smithy-json'

module Aws
  module Core
    module Plugins
      # @api private
      # TODO: Remove once all services are regenerated onto the protocol-object
      # model (Aws::Core::RestJson). Superseded by the generic
      # Smithy::Client::Plugins::Protocol.
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
