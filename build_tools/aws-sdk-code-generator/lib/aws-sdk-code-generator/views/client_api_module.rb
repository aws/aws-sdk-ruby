module AwsSdkCodeGenerator
  module Views
    class ClientApiModule < View

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
        'timestamp' => 'TimestampShape',
      }

      SHAPE_KEYS = {
        # keep
        'flattened' => true,
        'timestampFormat' => true, # glacier api customization
        'xmlNamespace' => true,
        # ignore
        'box' => false,
        'fault' => false,
        'error' => false,
        'deprecated' => false,
        'type' => false,
        'documentation' => false,
        'members' => false,
        'member' => false,
        'key' => false,
        'locationName'  => false,
        'value' => false,
        'required' => false,
        'streaming'  => false,
        'enum' => false,
        'exception' => false,
        'payload' => false,
        'pattern' => false,
        'sensitive' => false,
        'min' => false,
        'max' => false,
        'wrapper' => false,
        'xmlOrder' => false,
      }

      METADATA_KEYS = {
        # keep
        'endpointPrefix' => true,
        'signatureVersion' => true,
        'signingName' => true,
        'serviceFullName' => true,
        'protocol' => true,
        'targetPrefix' => true,
        'jsonVersion' => true,
        'errorPrefix' => true,
        'timestampFormat' => true, # glacier api customization
        'xmlNamespace' => true,

        # ignore
        'apiVersion' => false,
        'checksumFormat' => false,
        'globalEndpoint' => false,
        'serviceAbbreviation' => false,
        'uid' => false,
      }

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
      end

      # @return [String]
      def module_name
        @service.module_name
      end

      # @return [String]
      def service_name
        @service.name
      end

      # @return [String<YYYY-MM-DD>]
      def api_version
        @service.api_version
      end

      # @return [Array<Shape>]
      def shapes
        shape_enum.map do |shape_name, shape|
          Shape.new.tap do |s|
            s.name = shape_name
            s.class_name = shape_class_name(shape['type'])
            s.constructor_args = shape_constructor_args(shape_name, shape)
          end
        end
      end

      def shape_definitions
        shape_enum.inject([]) do |groups, (shape_name, shape)|
          lines = []
          if non_error_struct?(shape)
            required = Set.new(shape['required'] || [])
            shape['members'].each do |member_name, member_ref|
              lines << "#{shape_name}.add_member(:#{underscore(member_name)}, #{shape_ref(member_ref, member_name, required)})"
            end
            lines << "#{shape_name}.struct_class = Types::#{shape_name}"
            if payload = shape['payload']
              lines << "#{shape_name}[:payload] = :#{underscore(payload)}"
              lines << "#{shape_name}[:payload_member] = #{shape_name}.member(:#{underscore(payload)})"
            end
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
            raise "unhandled metadata key #{key.inspect}"
          end
        end
        metadata
      end

      def operations
        @service.api['operations'].map do |operation_name, operation|
          Operation.new.tap do |o|
            o.name = operation_name
            o.method_name = underscore(operation_name)
            o.http_method = operation['http']['method']
            o.http_request_uri = operation['http']['requestUri']
            %w(input output).each do |key|
              if operation[key]
                o.shape_references << "o.#{key} = #{operation_ref(operation[key])}"
              else
                o.shape_references << "o.#{key} = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))"
              end
            end
            operation.fetch('errors', []).map do |error|
              o.shape_references << "o.errors << #{operation_ref(error)}"
            end
            o.deprecated = true if operation['deprecated']
            o.authtype = operation['authtype'] if operation.key?('authtype')
            o.pager = pager(operation_name)
          end
        end
      end

      private

      def shape_class_name(type)
        if SHAPE_CLASSES.key?(type)
          "Shapes::#{SHAPE_CLASSES[type]}"
        else
          raise ArgumentError, "unsupported shape type `#{type}'"
        end
      end

      def shape_constructor_args(shape_name, shape)
        args = []
        args << "name: '#{shape_name}'"
        shape.each_pair do |key, value|
          if SHAPE_KEYS[key]
            args << "#{key}: #{value.inspect}"
          elsif SHAPE_KEYS[key].nil?
            raise "unhandled shape key #{key.inspect}"
          end
        end
        args.join(', ')
      end

      def shape_enum
        Enumerator.new do |y|
          @service.api.fetch('shapes', {}).keys.sort.each do |shape_name|
            y.yield(shape_name, @service.api['shapes'].fetch(shape_name))
          end
        end
      end

      def non_error_struct?(shape)
        shape['type'] == 'structure' &&
        !shape['error'] &&
        !shape['exception']
      end

      def structure_shape_enum
        Enumerator.new do |y|
          shape_enum.each do |shape_name, shape|
            # skip error types
            if non_error_struct?(shape)
              y.yield(shape_name, shape)
            end
          end
        end
      end

      def shape_ref(ref, member_name = nil, required = Set.new)
        line = "Shapes::ShapeRef.new(shape: #{ref['shape']}"
        line += shape_ref_required(required, member_name)
        line += shape_ref_deprecated(ref)
        line += shape_ref_location(ref)
        line += shape_ref_location_name(member_name, ref)
        line += shape_ref_metadata(ref)
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

      def shape_ref_metadata(member_ref)
        metadata = member_ref.inject({}) do |hash, (key, value)|
          hash[key] = value unless SKIP_TRAITS.include?(key)
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
        if metadata.empty?
          options = ''
        else
          options = {}
          metadata.each_pair do |key, value|
            next if key == 'resultWrapper'
            if key == 'locationName'
              options[:location_name] = value.inspect
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
        end

        # @return [String] The UpperCamelCase operation name.
        attr_accessor :name

        # @return [String] The underscored method name.
        attr_accessor :method_name

        # @return [String] GET, PUT, POST, etc.
        attr_accessor :http_method

        # @return [String] "/", "/path?query", etc.
        attr_accessor :http_request_uri

        # @return [Array<String>]
        attr_accessor :shape_references

        # @return [Boolean]
        attr_accessor :deprecated

        # @return [String,nil]
        attr_accessor :authtype

        # @return [Pager, nil]
        attr_accessor :pager

      end
    end
  end
end
