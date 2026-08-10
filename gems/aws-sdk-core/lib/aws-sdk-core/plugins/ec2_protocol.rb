# frozen_string_literal: true

require 'smithy-xml'

module Aws
  module Core
    module Plugins
      # @api private
      # TODO: Remove once all services are regenerated onto the protocol-object
      # model (Aws::Core::Ec2Query). Superseded by the generic
      # Smithy::Client::Plugins::Protocol.
      class Ec2Protocol < Smithy::Client::Plugin
        option(:protocol, default: 'aws.protocols#ec2Query')
        option(:query_codec) { Core::Query::Codec.new(ec2: true) }
        option(:xml_codec) { Smithy::Xml::Codec.new }
        option(:stubber) { Stubbing::Ec2.new }

        handler(Core::Query::Handler)
        handler(Core::Xml::ErrorHandler, step: :sign)
      end
    end
  end
end
