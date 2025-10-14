# frozen_string_literal: true

require 'smithy-xml'

module Aws
  module Core
    module Plugins
      # @api private
      class QueryProtocol < Smithy::Client::Plugin
        option(:protocol, default: 'aws.protocols#awsQuery')
        option(:query_codec) { Core::Query::Codec.new }
        option(:xml_codec) { Smithy::Xml::Codec.new }
        option(:stubber) { Stubbing::Query.new }

        handler(Core::Query::Handler)
        handler(Core::Xml::ErrorHandler, step: :sign)
      end
    end
  end
end
