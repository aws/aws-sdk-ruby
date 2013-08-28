# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module Aws

  # @api private
  class Translator

    def initialize(src)
      @properties = {}
      src.each_pair do |property, value|
        self.send("set_#{property}", value)
      end
    end

    def set_documentation(docs)
      if docs
        docs = docs.gsub(/<!--.*?-->/m, '')
        docs = docs.gsub(/<a>(.+?)<\/a>/m, '\1')
        docs = docs.gsub(/<examples?>.+?<\/examples?>/m, '')
        docs = docs.gsub(/<\/?note>/m, '')
        docs = docs.gsub(/\{(\S+)\}/, '`{\1}`')
        docs = docs.gsub(/\s+/, ' ').strip
        @properties['documentation'] = docs unless docs.empty?
      end
    end

    def translated
      raise NotImplementedError
    end

    class << self

      def translate(src)
        new(src).translated if src
      end

      def property(name, options = {})
        method_name = "set_#{options[:from] || name}"
        define_method(method_name) do |value|
          @properties[name.to_s] = value
        end
      end

      def metadata(name, options = {})
        method_name = "set_#{options[:from] || name}"
        define_method(method_name) do |value|
          @properties['metadata'] ||= {}
          @properties['metadata'][name.to_s] = value
        end
      end

      def ignore(property)
        define_method("set_#{property}") { |value| }
      end

    end

  end

  # This tool translates APIs from the raw AWS format into a
  # `Seahorse::Model::Api`.  The formats are similar, but not fully
  # compatible.
  # @api private
  class ApiTranslator < Translator

    def translated
      api = Seahorse::Model::Api.from_hash(@properties)
      api.metadata = Hash[api.metadata.sort]
      @operations.each do |operation|
        api.operations[operation.name] = operation
      end
      api
    end

    property :type
    property :api_version
    property :endpoint, from: :global_endpoint

    metadata :signature_version
    metadata :endpoint_prefix
    metadata :checksum_format
    metadata :json_version
    metadata :target_prefix
    metadata :timestamp_format
    metadata :signing_name
    metadata :service_full_name
    metadata :service_abbreviation
    metadata :result_wrapped
    metadata :xmlnamespace

    def set_operations(operations)
      @operations = operations.values.map do |src|
        OperationTranslator.translate(src)
      end
    end

  end

  # @api private
  class OperationTranslator < Translator

    def translated
      @properties['http_uri'] ||= '/'
      @properties['http_verb'] ||= 'POST'
      operation = Seahorse::Model::Operation.from_hash(@properties)
      operation.input = @input
      operation.output = @output
      operation.errors = @errors if @errors
      operation
    end

    property :name

    ignore :documentation_url
    ignore :alias

    def set_http(http)
      @properties['http_uri'] = http['uri']
      @properties['http_verb'] = http['verb']
    end

    def set_input(src)
      @input = ShapeTranslator.translate(src)
    end

    def set_output(src)
      @output = ShapeTranslator.translate(src)
    end

    def set_errors(errors)
      @errors = errors.map { |src| ShapeTranslator.translate(src) }
    end

  end

  # @api private
  class ShapeTranslator < Translator

    def translated
      shape = Seahorse::Model::Shapes::Shape.from_hash(@properties)
      shape.members = @members unless @members.nil?
      shape.keys = @keys if @keys
      shape
    end

    property :type
    property :location
    property :serialized_name, from: :xmlname
    property :serialized_name, from: :location_name
    property :required
    property :enum
    property :pattern
    property :min_length
    property :max_length
    property :timestamp_format

    metadata :flattened
    metadata :xmlnamespace
    metadata :xmlattribute
    metadata :payload
    metadata :streaming
    metadata :wrapper

    ignore :shape_name
    ignore :member_order
    ignore :box

    def set_keys(member)
      @keys = ShapeTranslator.translate(member)
    end

    # Structure shapes have a hash of members.  Lists and maps have a
    # single member (with a type).
    def set_members(members)
      if members['type'].is_a?(String)
        @members = ShapeTranslator.translate(members)
      else
        @members = {}
        members.each do |name, src|
          shape = ShapeTranslator.translate(src)
          shape.serialized_name ||= name
          @members[underscore(name)] = shape
        end
      end
    end

    def underscore(str)
      str.
        gsub(/([A-Z0-9]+)([A-Z][a-z])/, '\1_\2'). # split acronyms
        scan(/[a-z]+|\d+|[A-Z0-9]+[a-z]*/).       # split words
        join('_').downcase                        # join parts
    end

  end

end
