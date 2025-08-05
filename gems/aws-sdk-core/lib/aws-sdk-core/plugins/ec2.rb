# frozen_string_literal: true

require_relative '../query/codec'
require_relative '../query/handler'
require_relative '../stubbing/ec2'
require_relative '../xml/error_handler'

module Aws
  module Core
    module Plugins
      # @api private
      class Ec2 < Smithy::Client::Plugin
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
