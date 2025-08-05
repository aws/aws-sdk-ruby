# frozen_string_literal: true

require_relative '../query/codec'
require_relative '../query/handler'
require_relative '../stubbing/query'
require_relative '../xml/error_handler'

module Aws
  module Core
    module Plugins
      # @api private
      class Query < Smithy::Client::Plugin
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
