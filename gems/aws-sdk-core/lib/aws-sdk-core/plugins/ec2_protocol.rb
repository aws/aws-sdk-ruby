# frozen_string_literal: true

require 'smithy-xml'

require 'aws-sdk-core/query'
require 'aws-sdk-core/stubbing/ec2'
require 'aws-sdk-core/xml'

module Aws
  module Core
    module Plugins
      # @api private
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
