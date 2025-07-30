# frozen_string_literal: true

require_relative '../query/handler'
require_relative '../query/param_builder'
require_relative '../xml/error_handler'
require_relative '../stubbing/query'

module Aws
  module Core
    module Plugins
      # @api private
      class Query < Smithy::Client::Plugin
        # @api private
        # option(:query_codec) { Core::Query::ParamBuilder }
        option(:xml_codec) { Smithy::Xml::Codec.new }

        # @api private
        option(:stubber) { Stubbing::Query.new }

        handler(Core::Query::Handler)
        handler(Core::Xml::ErrorHandler, step: :sign)
      end
    end
  end
end
