# frozen_string_literal: true

require 'smithy-xml'

module Aws
  module Core
    module Plugins
      # @api private
      # TODO: Remove once all services are regenerated onto the protocol-object
      # model (Aws::Core::RestXml). Superseded by the generic
      # Smithy::Client::Plugins::Protocol.
      class RestXmlProtocol < Smithy::Client::Plugin
        option(:protocol, default: 'aws.protocols#restXml')
        option(:xml_codec) { Smithy::Xml::Codec.new }
        option(:stubber) { Stubbing::RestXml.new }

        handler(Core::Rest::Handler)
        handler(Core::Xml::ErrorHandler, step: :sign)
      end
    end
  end
end
