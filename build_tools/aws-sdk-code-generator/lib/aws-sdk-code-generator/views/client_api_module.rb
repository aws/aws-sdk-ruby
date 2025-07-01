# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class ClientApiModule < View

      include Helper

      SKIP_TRAITS = Set.new(%w(shape deprecated location locationName documentation))

      SHAPE_CLASSES = {
        'blob' => 'BlobShape',
        'byte' => 'IntegerShape',
        'boolean' => 'BooleanShape',
        'character' => 'StringShape',
        'double' => 'FloatShape',
        'float' => 'FloatShape',
        'integer' => 'IntegerShape',
        'list' => 'ListShape',
        'long' => 'IntegerShape',
        'map' => 'MapShape',
        'string' => 'StringShape',
        'structure' => 'StructureShape',
        'timestamp' => 'TimestampShape'
      }

      SHAPE_KEYS = {
        # keep
        'flattened' => true,
        'timestampFormat' => true,
        'xmlNamespace' => true,
        'streaming' => true,
        'requiresLength' => true,
        'union' => false, # handled separately - should remain false
        'document' => true,
        'jsonvalue' => true,
        'error' => true,
        'locationName' => true,
        # ignore
        # event stream modeling
        'event' => false,
        'eventstream' => false,
        'eventheader' => false,
        'eventpayload' => false,
        'exceptionEvent' => false, # internal, exceptions cannot be events
        # other
        'synthetic' => false,
        'box' => false,
        'fault' => false,
        'deprecated' => false,
        'deprecatedMessage' => false,
        'deprecatedSince' => false,
        'type' => false,
        'documentation' => false,
        'members' => false,
        'member' => false,
        'key' => false,
        'value' => false,
        'required' => false,
        'enum' => false,
        'exception' => false,
        'payload' => false,
        'pattern' => false,
        'sensitive' => false,
        'min' => false,
        'max' => false,
        'wrapper' => false,
        'xmlOrder' => false,
        'retryable' => false,
      }

      METADATA_KEYS = {
        # keep
        'endpointPrefix' => true,
        'signatureVersion' => true,
        'auth' => true,
        'signingName' => true,
        'serviceFullName' => true,
        'protocol' => true,
        'protocols' => true,
        'targetPrefix' => true,
        'jsonVersion' => true,
        'errorPrefix' => true,
        'timestampFormat' => true,
        'xmlNamespace' => true,
        'protocolSettings' => {},
        'serviceId' => true,
        'apiVersion' => true,
        'checksumFormat' => true,
        'globalEndpoint' => true,
        'serviceAbbreviation' => true,
        'uid' => true,
        'awsQueryCompatible' => true,
        # ignore
        'ripServiceName' => false
      }

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'

        GENERATED_SRC_WARNING
      end

      # @return [String]
      def module_name
        @service.module_name
      end

      # @return [String<YYYY-MM-DD>]
      def api_version
        @service.api_version
      end

      # @return [Array<Shape>]
      def shapes
        shape_enum.map do |shape_name, shape|
          # APIG model, shape can start with downcase and with "__"
          if @service.protocol == 'api-gateway'
            shape_name = lstrip_prefix(upcase_first(shape_name))
          end
          Shape.new.tap do |s|
            s.name = shape_name
            s.class_name, shape = shape_class_name(shape)
            s.constructor_args = shape_constructor_args(shape_name, shape)
          end
        end
      end

      def shape_definitions
        shape_enum.inject([]) do |groups, (shape_name, shape)|
          # APIG model, shape can start with downcase and with "__"
          if @service.protocol == 'api-gateway'
            shape_name = lstrip_prefix(upcase_first(shape_name))
          end
          lines = []
          if non_error_struct?(shape) && !document_struct?(shape)
            required = Set.new(shape['required'] || [])
            unless shape['members'].nil?
              shape['members'].each do |member_name, member_ref|
                lines << "#{shape_name}.add_member(:#{underscore(member_name)}, #{shape_ref(member_ref, member_name, required)})"
              end
            end
            if shape['union']
              lines << "#{shape_name}.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))"
              shape['members'].each do |member_name, member_ref|
                member_name_underscore = underscore(member_name)
                member_class_name = pascal_case(member_name_underscore)
                lines << "#{shape_name}.add_member_subclass(:#{member_name_underscore}, Types::#{shape_name}::#{member_class_name})"
              end
              lines << "#{shape_name}.add_member_subclass(:unknown, Types::#{shape_name}::Unknown)"
            end
            lines << "#{shape_name}.struct_class = Types::#{shape_name}"
            if payload = shape['payload']
              lines << "#{shape_name}[:payload] = :#{underscore(payload)}"
              lines << "#{shape_name}[:payload_member] = #{shape_name}.member(:#{underscore(payload)})"
            end
            groups << lines.join("\n")
          elsif error_struct?(shape)
            required = Set.new(shape['required'] || [])
            unless shape['members'].nil?
              shape['members'].each do |member_name, member_ref|
                lines << "#{shape_name}.add_member(:#{underscore(member_name)}, #{shape_ref(member_ref, member_name, required)})"
              end
            end
            lines << "#{shape_name}.struct_class = Types::#{shape_name}"
            groups << lines.join("\n")
          elsif shape['type'] == 'list'
            lines << "#{shape_name}.member = #{shape_ref(shape['member'])}"
            groups << lines.join("\n")
          elsif shape['type'] == 'map'
            lines << "#{shape_name}.key = #{shape_ref(shape['key'])}"
            lines << "#{shape_name}.value = #{shape_ref(shape['value'])}"
            groups << lines.join("\n")
          else
            groups
          end
        end
      end

      # @return [Array<Hash>]
      def metadata
        metadata = []
        @service.api.fetch('metadata', {}).keys.sort.each do |key|
          if METADATA_KEYS[key]
            metadata << {
              key: key.inspect,
              value: @service.api['metadata'][key].inspect
            }
          elsif METADATA_KEYS[key].nil?
            AwsSdkCodeGenerator.warn(
              @service.service_id,
              :invalid_key,
              "unhandled metadata key `#{key}`"
            )
          end
        end
        metadata
      end

      def operations
        @service.api['operations'].map do |operation_name, operation|
          Operation.new.tap do |o|
            o.name = operation['name'] || operation_name
            o.method_name = underscore(operation_name)
            o.http_method = operation['http']['method']
            o.http_request_uri = operation['http']['requestUri']
            o.http_checksum_required = true if operation['httpChecksumRequired']
            if operation.key?('httpChecksum')
              operation['httpChecksum']['requestAlgorithmMember'] = underscore(operation['httpChecksum']['requestAlgorithmMember']) if operation['httpChecksum']['requestAlgorithmMember']
              operation['httpChecksum']['requestValidationModeMember'] = underscore(operation['httpChecksum']['requestValidationModeMember']) if operation['httpChecksum']['requestValidationModeMember']
              o.http_checksum = operation['httpChecksum'].inject([]) do |a, (k, v)|
                a << { key: k.inspect, value: v.inspect }
                a
              end
            end

            if operation.key?('requestcompression')
              o.request_compression = operation['requestcompression'].each_with_object([]) do |(k, v), arr|
                arr << { key: k.inspect, value: v.inspect }
              end
            end

            %w(input output).each do |key|
              if operation[key]
                o.shape_references << "o.#{key} = #{operation_ref(operation[key])}"
              else
                o.shape_references << "o.#{key} = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))"
              end
            end
            o.error_shape_names = operation.fetch('errors', []).map {|e| e['shape'] }
            o.deprecated = true if operation['deprecated']
            o.endpoint_operation = true if operation['endpointoperation']
            if operation.key?('endpointdiscovery')
              # "endpointdiscovery" trait per operation
              # contains hash values of configuration,
              # current acked field: "required"
              o.endpoint_discovery_available = true
              o.endpoint_discovery = operation['endpointdiscovery'].inject([]) do |a, (k, v)|
                a << { key: k.inspect, value: v.inspect }
                a
              end
            # endpoint trait cannot be co-exist with endpoint discovery
            elsif operation.key?('endpoint')
              # endpoint trait per operation, cannot be enabled with endpoint discovery
              o.endpoint_trait = true
              o.endpoint_pattern = operation['endpoint'].inject([]) do |a, (k, v)|
                a << { key: k.inspect, value: v.inspect }
                a
              end
            end
            o.authorizer = operation['authorizer'] if operation.key?('authorizer')
            o.authtype = operation['authtype'] if operation.key?('authtype')
            o.unsigned_payload = operation['unsignedPayload'] if operation.key?('unsignedPayload')
            o.auth = operation['auth'] if operation.key?('auth')
            o.require_apikey = operation['requiresApiKey'] if operation.key?('requiresApiKey')
            o.pager = pager(operation_name)
            o.async = async(operation)
          end
        end
      end

      def apig_authorizer
        return nil unless @service.api.key? 'authorizers'

        @service.api['authorizers'].map do |name, authorizer|
          Authorizer.new.tap do |a|
            a.name = name
            a.authorizer_name = underscore(name)
            a.type = authorizer['type'] if authorizer.key? 'type'
            if authorizer.key? 'placement'
              a.location = authorizer['placement']['location']
              a.location_name = authorizer['placement']['name']
            end
          end
        end
      end

      def async(operation)
        # When h2 is eventstream, all eventstream operations must be sent over H2. This includes all operations that
        # have any input OR output structures targeted with event traits. Other operations MAY use h2, but we
        # currently do not do this.
        (@service.protocol_settings['h2'] == 'eventstream' &&
          AwsSdkCodeGenerator::Helper.operation_eventstreaming?(operation, @service.api)) ||
          # When h2 is optional, only bidirectional eventstreaming operations will be on the async client. Other
          # operations MAY be on the async client, but we currently do not do this. (They are disjoint).
          (@service.protocol_settings['h2'] == 'optional' &&
            AwsSdkCodeGenerator::Helper.operation_bidirectional_eventstreaming?(operation, @service.api)) ||
          # When h2 is required, the operation must be sent over H2.
          @service.protocol_settings['h2'] == 'required'
      end

      def endpoint_operation
        @service.api['operations'].each do |name, ref|
          return underscore(name) if ref['endpointoperation']
        end
        nil
      end

      def require_endpoint_discovery
        @service.require_endpoint_discovery
      end

      private

      def shape_class_name(shape)
        type = shape['type']
        # APIG time serializing difference
        if @service.protocol == 'api-gateway' && type == 'timestamp'
          shape['timestampFormat'] = 'iso8601'
        end
        if document_struct?(shape)
          ["Shapes::DocumentShape", shape]
	      elsif shape['union']
          ["Shapes::UnionShape", shape]
        elsif SHAPE_CLASSES.key?(type)
          ["Shapes::#{SHAPE_CLASSES[type]}", shape]
        else
          raise ArgumentError, "unsupported shape type `#{type}'"
        end
      end

      def shape_constructor_args(shape_name, shape)
        args = []
        args << "name: '#{shape_name}'"
        shape.each_pair do |key, value|
          if SHAPE_KEYS[key]
            query_or_query_compatible = @service.protocol == 'query' || @service.api['metadata']['awsQueryCompatible']
            # only query and query compatible protocols have custom error code
            next if !query_or_query_compatible && key == 'error'

            args << "#{key}: #{value.inspect}"
          elsif SHAPE_KEYS[key].nil?
            AwsSdkCodeGenerator.warn(
              @service.service_id,
              :invalid_key,
              "unhandled shape key `#{key}` on `#{shape_name}`"
            )
          end
        end
        args.join(', ')
      end

      def shape_enum
        unless @service.protocol_settings.empty?
          if @service.protocol_settings['h2'] == 'eventstream'
            # some event shapes shared with error shapes
            # might missing event trait
            @service.api['shapes'].each do |_, shape|
              if shape['eventstream']
                # add event trait to all members if not exists
                shape['members'].each do |name, ref|
                  @service.api['shapes'][ref['shape']]['event'] = true
                end
              end
            end
          end
        end
        Enumerator.new do |y|
          @service.api.fetch('shapes', {}).keys.sort.each do |shape_name|
            y.yield(shape_name, @service.api['shapes'].fetch(shape_name))
          end
        end
      end

      def non_error_struct?(shape)
        if !!shape['event']
          shape['type'] == 'structure'
        else
          shape['type'] == 'structure' &&
            !shape['error'] &&
            !shape['exception']
        end
      end

      def error_struct?(shape)
        shape['type'] == 'structure' && !!!shape['event'] &&
          (shape['error'] || shape['exception'])
      end

      def document_struct?(shape)
        shape['type'] == 'structure' && shape['document']
      end

      def structure_shape_enum
        Enumerator.new do |y|
          shape_enum.each do |shape_name, shape|
            # non error types && non empty error struct
            if non_error_struct?(shape) || error_struct?(shape)
              y.yield(shape_name, shape)
            end
          end
        end
      end

      def shape_ref(ref, member_name = nil, required = Set.new)
        ref_name = ref['shape']
        if  @service.protocol == 'api-gateway'
          ref_name = lstrip_prefix(ref_name)
        end
        line = "Shapes::ShapeRef.new(shape: #{ref_name}"
        line += shape_ref_required(required, member_name)
        line += shape_ref_deprecated(ref)
        line += shape_ref_event(ref)
        line += shape_ref_eventstream(ref)
        line += shape_ref_eventpayload(ref)
        line += shape_ref_eventheader(ref)
        line += shape_ref_location(ref)
        line += shape_ref_location_name(member_name, ref)
        line += shape_ref_metadata(ref, member_name)
        line += ")"
        line
      end

      def shape_ref_required(required, member_name)
        if required.include?(member_name)
          ", required: true"
        else
          ""
        end
      end

      def shape_ref_deprecated(ref)
        if ref['deprecated'] || @service.api['shapes'][ref['shape']]['deprecated']
          ", deprecated: true"
        else
          ""
        end
      end

      def shape_ref_eventstream(ref)
        if @service.api['shapes'][ref['shape']]['eventstream']
          ", eventstream: true"
        else
          ''
        end
      end

      def shape_ref_event(ref)
        if @service.api['shapes'][ref['shape']]['event']
          ", event: true"
        else
          ''
        end
      end

      def shape_ref_eventpayload(ref)
        if ref['eventpayload']
          type = @service.api['shapes'][ref['shape']]['type']
          ", eventpayload: true, eventpayload_type: '#{type}'"
        else
          ''
        end
      end

      def shape_ref_eventheader(ref)
        if ref['eventheader']
          type = @service.api['shapes'][ref['shape']]['type']
          ", eventheader: true, eventheader_type: '#{type}'"
        else
          ''
        end
      end

      def shape_ref_location(ref)
        if ref['location']
          ", location: #{ref['location'].inspect}"
        else
          ''
        end
      end

      def shape_ref_location_name(member_name, member_ref)
        location_name = member_ref['locationName']
        location_name ||= member_name unless member_ref['location'] == 'headers'
        location_name ? ", location_name: #{location_name.inspect}" : ""
      end

      def shape_ref_metadata(member_ref, member_name)
        metadata = member_ref.inject({}) do |hash, (key, value)|
          hash[key] = value unless SKIP_TRAITS.include?(key)
          if key == 'hostLabel'
            hash['hostLabelName'] = member_name
          end
          hash
        end
        if metadata.empty?
          ""
        else
          ", metadata: #{metadata.inspect}"
        end
      end

      def pager(operation_name)
        if @service.paginators && @service.paginators['pagination'][operation_name]
          p = @service.paginators['pagination'][operation_name]
          input = Array(p['input_token'])
          output = Array(p['output_token'])
          tokens = {}
          input.each.with_index do |key, n|
            tokens[underscore_jmespath(output[n])] = underscore_jmespath(key)
          end
          options = {}
          options[:more_results] = underscore_jmespath(p['more_results']) if p['more_results']
          options[:limit_key] = underscore_jmespath(p['limit_key']) if p['limit_key']
          options[:tokens] = tokens
          options = HashFormatter.new(
            quote_strings: true,
            inline: true,
            wrap: false,
          ).format(options)
          "o[:pager] = Aws::Pager.new(#{options})" unless tokens.empty?
        end
      end

      def operation_ref(ref)
        metadata = ref.dup
        shape_name = metadata.delete('shape')
        # APIG model, shape can start with downcase and with "__"
        if @service.protocol == 'api-gateway'
          shape_name = lstrip_prefix(upcase_first(shape_name))
        end
        if metadata.empty?
          options = ''
        else
          options = {}
          metadata.each_pair do |key, value|
            next if key == 'resultWrapper'

            if key == 'locationName'
              options[:location_name] =
                # use the xmlName on shape if defined
                if (@service.protocol == 'rest-xml') &&
                   (shape_location_name = @service.api['shapes'][shape_name]['locationName'])
                  shape_location_name.inspect
                else
                  value.inspect
                end
            else
              options[:metadata] ||= {}
              options[:metadata][key] = value.inspect
            end
          end
          if options.empty?
            options = ''
          else
            opts = HashFormatter.new(wrap:false).format(options)
            if opts[0] == "\n"
              options = ",#{opts}"
            else
              options = ", #{opts}"
            end
          end
        end
        "Shapes::ShapeRef.new(shape: #{shape_name}#{options})"
      end


      class Shape

        # @return [String]
        attr_accessor :name

        # @return [String<ClassName>]
        attr_accessor :class_name

        # @return [String]
        attr_accessor :constructor_args

      end

      class Operation

        def initialize
          @shape_references = []
          @error_shape_names = []
        end

        # @return [String] The UpperCamelCase operation name.
        attr_accessor :name

        # @return [String] The underscored method name.
        attr_accessor :method_name

        # @return [String] GET, PUT, POST, etc.
        attr_accessor :http_method

        # @return [String] "/", "/path?query", etc.
        attr_accessor :http_request_uri

        # @return [Boolean]
        attr_accessor :http_checksum_required

        # @return [Hash]
        attr_accessor :http_checksum

        # @return [Hash]
        attr_accessor :request_compression

        # @return [Array<String>]
        attr_accessor :shape_references

        # @return [Array<String>]
        attr_accessor :error_shape_names

        # @return [Boolean]
        attr_accessor :deprecated

        # @return [Boolean]
        attr_accessor :endpoint_discovery_available

        # @return [Boolean]
        attr_accessor :endpoint_operation

        # @return [Array]
        attr_accessor :endpoint_discovery

        # @return [String,nil]
        attr_accessor :authtype

        # @return [Boolean,nil]
        attr_accessor :unsigned_payload

        # @return [Array<String>]
        attr_accessor :auth

        # @return [Boolean]
        attr_accessor :endpoint_trait

        # @return [Array]
        attr_accessor :endpoint_pattern

        # APIG only
        # @return [Boolean]
        attr_accessor :require_apikey

        # APIG only
        # @return [String, nil]
        attr_accessor :authorizer

        # @return [Pager, nil]
        attr_accessor :pager

        # @return [Boolean]
        attr_accessor :async

      end

      # APIG SDK only
      class Authorizer

        # @return [String]
        attr_accessor :name

        # @return [String]
        attr_accessor :authorizer_name

        # @return [String]
        attr_accessor :type

        # @return [String]
        attr_accessor :location

        # @return [String]
        attr_accessor :location_name

      end
    end
  end
end
