module Aws

  # @api private
  class Translator

    include Util

    DEFAULT_OPTIONS = {
      documentation: true,
      errors: true,
      timestamp_format: 'iso8601',
    }

    def initialize(src, options)
      @properties = {}
      @options = options
      DEFAULT_OPTIONS.each do |option, default|
        @options[option] = default unless @options.key?(option)
      end
      src.each_pair do |property, value|
        self.send("set_#{property}", value)
      end
    end

    def set_timestamp_format(format)
      @options = @options.merge(timestamp_format: format.sub(/Timestamp/, ''))
    end

    def set_documentation(docs)
      if docs && @options[:documentation]
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

      def translate(src, options)
        new(src, options).translated if src
      end

      def property(name, options = {})
        method_name = "set_#{options[:from] || name}"
        define_method(method_name) do |value|
          @properties[name.to_s] = value
        end
      end

      def metadata(name, options = {})
        define_method("set_#{name}") do |value|
          @properties['metadata'] ||= {}
          @properties['metadata'][options[:as] || name.to_s] = value
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

    def self.translate(src, options = {})
      super(src, options)
    end

    def translated

      api = Seahorse::Model::Api.from_hash(@properties)
      api.metadata = Hash[api.metadata.sort]
      @operations.values.each do |src|
        operation = OperationTranslator.translate(src, @options)
        api.operations[underscore(operation.name)] = operation
      end

      if @result_wrapped
        api.operations.each do |op_name, operation|

          output = Seahorse::Model::Shapes::OutputShape.new

          unless operation.output.empty?
            struct = operation.output.to_hash
            struct['type'] = 'structure'
            struct['serialized_name'] = "#{operation.name}Result"
            struct = Seahorse::Model::Shapes::Shape.from_hash(struct)
            output.members[:"#{op_name}_result"] = struct
          end

          output.members[:response_metadata] =
            Seahorse::Model::Shapes::Shape.from_hash(
              'type' => 'structure',
              'serialized_name' => 'ResponseMetadata',
              'members' => {
                'request_id' => {
                  'type' => 'string',
                  'serialized_name' => 'RequestId'
                }
              })

          operation.output = output
        end
      end

      # restful xml services that have multiple body params at the top
      # level need guidance on their root level xml name and xmlns
      if xml?
        xmlns = api.metadata.delete('xmlnamespace')
        api.operations.values.each do |operation|
          if operation.input.payload
            operation.input.payload_member.metadata['xmlns_uri'] = xmlns
          elsif !operation.input.payload_member.members.empty?
            operation.input.serialized_name = operation.name + "Request"
            operation.input.metadata['xmlns_uri'] = xmlns
          end
        end
      end

      set_service_class_name(api)

      api
    end

    def set_service_class_name(api)
      service_namer(api) do |svc|
        api.metadata['service_full_name'] = svc.full_name
        api.metadata['service_abbreviation'] = svc.abbr if svc.abbr
        api.metadata['service_class_name'] = svc.class_name
      end
    end

    def service_namer(api)
      args = []
      args << api.endpoint
      args << api.metadata.delete('service_full_name')
      args << api.metadata.delete('service_abbreviation')
      yield(Api::ServiceNamer.new(*args))
    end

    def xml?
      @properties['plugins'].include?('Aws::Plugins::XmlProtocol')
    end

    property :version, from: :api_version

    metadata :signing_name
    metadata :checksum_format
    metadata :json_version, as: 'json_version'
    metadata :target_prefix, as: 'json_target_prefix'
    metadata :service_full_name
    metadata :service_abbreviation
    metadata :xmlnamespace

    def set_type(type)
      plugins = @properties['plugins'] ||= []
      plugins << 'Seahorse::Client::Plugins::RestfulBindings'
      plugins << 'Seahorse::Client::Plugins::ContentLength'
      plugins << 'Seahorse::Client::Plugins::JsonSimple' if type.match(/json/)
      plugins << 'Aws::Plugins::GlobalConfiguration'
      plugins << 'Aws::Plugins::RegionalEndpoint'
      plugins << 'Aws::Plugins::Credentials'
      plugins.push(*case type
        when 'query' then ['Aws::Plugins::QueryProtocol']
        when 'json' then [
          'Aws::Plugins::JsonProtocol', # used by all aws json services
          'Aws::Plugins::JsonRpcHeaders' # not used by services like Glacier
        ]
        when /json/ then ['Aws::Plugins::JsonProtocol']
        when /xml/ then ['Aws::Plugins::XmlProtocol']
      end)
    end

    def set_signature_version(version)
      return unless version
      @properties['plugins'] ||= []
      @properties['plugins'] <<
        case version
          when 'v4'         then 'Aws::Plugins::SignatureV4'
          when 'v3'         then 'Aws::Plugins::SignatureV4'
          when 'v3https'    then 'Aws::Plugins::SignatureV3'
          when 'v2'         then 'Aws::Plugins::SignatureV2'
          when 'cloudfront' then 'Aws::Plugins::SignatureV4'
          when 's3'         then 'Aws::Plugins::S3Signer'
          else raise "unhandled signer version `#{version}'"
        end
    end

    def set_result_wrapped(state)
      @result_wrapped = state
    end

    def set_global_endpoint(endpoint)
      @properties['endpoint'] = endpoint
    end

    def set_endpoint_prefix(prefix)
      @properties['endpoint'] ||= "#{prefix}.%s.amazonaws.com"
    end

    def set_operations(operations)
      @operations = operations
    end

  end

  # @api private
  class OperationTranslator < Translator

    def translated
      @properties['http_method'] ||= 'POST'
      @properties['http_path'] ||= '/'

      if @input
        @input.members.each_pair do |member_name, member_shape|
          if member_shape.location == 'uri'
            placeholder = member_shape.serialized_name
            @properties['http_path'].sub!("{#{placeholder}}", "{#{member_name}}")
            member_shape.serialized_name = nil
          end
        end
      end

      operation = Seahorse::Model::Operation.from_hash(@properties)
      operation.input = @input if @input
      operation.output = @output if @output
      operation.errors = @errors if @errors and @options[:errors]
      operation
    end

    ignore :documentation_url
    ignore :alias

    def set_name(name)
      # strip api version from operation name
      @properties['name'] = name.sub(/\d{4}_\d{2}_\d{2}$/, '')
    end

    def set_http(http)
      @properties['http_method'] = http['method']
      @properties['http_path'] = http['uri']
    end

    def set_input(src)
      handle_input_output('input', src)
    end

    def set_output(src)
      handle_input_output('output', src)
    end

    def handle_input_output(input_or_output, src)
      if src
        src = src.merge('type' => input_or_output)
        translator = "#{input_or_output.capitalize}ShapeTranslator"
        translator = Aws::const_get(translator)
        shape = translator.translate(src, @options)
        shape.members.each do |member_name, member|
          if member.metadata['payload']
            member.metadata.delete('payload')
            shape.payload = member_name
          end
        end
        instance_variable_set("@#{input_or_output}", shape)
      end
    end

    def set_errors(errors)
      @errors = errors.map { |src| OutputShapeTranslator.translate(src, @options) }
      @errors = nil if @errors.empty?
    end

  end

  # @api private
  class ShapeTranslator < Translator

    CONVERT_TYPES = {
      'long' => 'integer',
      'double' => 'float',
    }

    def translated

      if @properties['type'] == 'timestamp'
        @type_prefix = @options[:timestamp_format]
      end

      if @type_prefix
        @properties['type'] = "#{@type_prefix}_#{@properties['type']}"
      end

      shape = Seahorse::Model::Shapes::Shape.from_hash(@properties)
      shape.members = @members unless @members.nil?
      shape.keys = @keys if @keys
      shape
    end

    property :location
    property :serialized_name, from: :xmlname
    property :serialized_name, from: :location_name
    property :enum

    metadata :xmlnamespace
    metadata :xmlattribute
    metadata :payload
    metadata :wrapper

    ignore :shape_name
    ignore :member_order
    ignore :box
    ignore :streaming

    # validation properties
    ignore :pattern
    ignore :min_length
    ignore :max_length

    def set_xmlnamespace(xmlns)
      metadata = @properties['metadata'] ||= {}
      metadata['xmlns_uri'] = xmlns['uri']
      metadata['xmlns_prefix'] = xmlns['prefix'] if xmlns['prefix']
    end

    def set_type(type)
      @properties['type'] = CONVERT_TYPES[type] || type
    end

    def set_flattened(state)
      @type_prefix = 'flat' if state
    end

    def set_keys(member)
      @keys = self.class.translate(member, @options)
    end

    # Structure shapes have a hash of members.  Lists and maps have a
    # single member (with a type).
    def set_members(members)
      if members['type'].is_a?(String)
        @members = self.class.translate(members, @options)
      else
        @members = Seahorse::Model::Shapes::MemberHash.new
        members.each do |name, src|
          shape = self.class.translate(src, @options)
          shape.serialized_name ||= name
          @members[underscore(name)] = shape
        end
      end
    end

  end

  # @api private
  class InputShapeTranslator < ShapeTranslator
    property :required
  end

  # @api private
  class OutputShapeTranslator < ShapeTranslator
    ignore :required
  end

end
