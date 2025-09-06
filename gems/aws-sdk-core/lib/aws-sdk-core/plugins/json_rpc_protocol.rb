# frozen_string_literal: true

require 'smithy-json'

require 'aws-sdk-core/json'
require 'aws-sdk-core/stubbing/json_rpc'

module Aws
  module Core
    module Plugins
      # @api private
      class JsonRpcProtocol < Smithy::Client::Plugin
        option(:protocol) do |config|
          traits = config.service.traits
          if traits.key?('aws.protocols#awsJson1_1')
            'aws.protocols#awsJson1_1'
          elsif traits.key?('aws.protocols#awsJson1_0')
            'aws.protocols#awsJson1_0'
          else
            raise "unable to determine JSON RPC protocol for #{config.service.name}"
          end
        end
        option(:json_codec) { Smithy::Json::Codec.new }
        option(:stubber) { Stubbing::JsonRpc.new }

        handler(Core::Json::Handler)
        handler(Core::Json::ErrorHandler, step: :sign)
      end
    end
  end
end
