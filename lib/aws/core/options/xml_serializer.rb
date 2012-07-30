# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'builder'

module AWS
  module Core
    module Options

      # Given a hash of serialization rules, an XMLSerializer can convert
      # a hash of request options into XML.  The request options are
      # validated before returning XML.
      class XMLSerializer

        # @param [String] namespace
        # @param [String] operation_name
        # @param [Hash] rules A hash of option rules to validate against.
        def initialize namespace, operation_name, rules
          @namespace = namespace
          @operation_name = operation_name
          @rules = rules
          @validator = Validator.new(rules)
        end

        # @return [String] Returns the name of the API operation.
        attr_reader :operation_name

        # @return [String]
        attr_reader :namespace

        # @return [Hash]
        attr_reader :rules

        # @return [Validator]
        attr_reader :validator

        # @overload serialize!(request_options)
        #   @param [Hash] request_options A hash of already validated
        #     request options with normalized values.
        #   @return [String] Returns an string of the request parameters
        #     serialized into XML.
        def serialize request_options
          xml = []
          builder = Builder::XmlMarkup.new(:target => xml, :indent => 2)
          builder.tag!("#{operation_name}Request", :xmlns => namespace) do
            request_options.each_pair do |opt_name, opt_value|
              to_xml(builder, opt_name, rules[opt_name], opt_value)
            end
          end
          xml.join
        end

        protected

        # @param [Builder::XmlMarkup] builder An XML builder object that should
        #   be used to build the xml.
        # @param [String,Symbol] opt_name The name of the input option.
        # @param [Hash] rules The hash to XML conversion rules.
        # @param [Mixed] value
        # @return [String] Returns an XML string.
        def to_xml builder, opt_name, rules, value

          xml_name = rules[:name]
          xml_name ||= opt_name.is_a?(String) ?
            opt_name : Inflection.class_name(opt_name.to_s)

          case value
          when Hash
            builder.tag!(xml_name) do
              value.each_pair do |m_name, m_value|
                to_xml(builder, m_name, rules[:members][m_name], m_value)
              end
            end
          when Array
            builder.tag!(xml_name) do
              value.each do |member_value|
                to_xml(builder, 'member', rules[:members], member_value)
              end
            end
          else builder.tag!(xml_name, value)
          end

        end

      end
    end
  end
end
