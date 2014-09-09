require 'set'

module Seahorse
  module Model
    module Shapes

      @types = {}

      class << self

        # Registers a shape by type.
        #
        #     Shapes.register('structure', Shapes::StructureShape)
        #
        #     Shapes.type('structure')
        #     #=> #<Shapes::StructureShape>
        #
        # @param [String] type
        # @param [Class<Shape>] shape_class
        # @return [void]
        # @raise [ArgumentError] Raises an error if the given type or
        #   shape class have already been registered.
        def register(type, shape_class)
          shape_class.type = type
          @types[type] = shape_class
        end

        # Given a type, this method returned the registered shape class.
        # @param [String] type
        # @return [Class<Shape>]
        # @raise [ArgumentError] Raises an ArgumentError if there is no
        #   shape class registered with the given `type`.
        def shape_class(type)
          if @types.key?(type)
            @types[type]
          else
            raise ArgumentError, "unregisterd type `#{type}'"
          end
        end

        # Returns an enumerator that yields registered type names and shape
        # classes.
        #
        #    Seahorse::Model::Shapes.types.each do |type, shape_class|
        #      puts "%s => %s" % [type, shape_class.name]
        #    end
        #
        # @return [Enumerator] Returns an enumerable object that yields
        #   registered type names and shape classes.
        def types
          Enumerator.new do |y|
            @types.each do |name, shape_class|
              y.yield(name, shape_class)
            end
          end
        end

      end

      class Shape

        # @param [Hash] definition
        # @option options [ShapeMap] :shape_map (nil)
        def initialize(definition, options = {})
          definition['type'] ||= self.class.type
          @name = definition['shape']
          @definition = definition
          @type = definition['type']
          @location = definition['location'] || 'body'
          @location_name = definition['locationName']
          @shape_map = options[:shape_map] || ShapeMap.new
        end

        # @return [String]
        attr_reader :name

        # @return [Hash]
        attr_reader :definition

        # @return [String] The type name for this shape.
        attr_reader :type

        # @return [String] Returns one of 'body', 'uri', 'headers', 'status_code'
        attr_reader :location

        # @return [String, nil] Typically only set for shapes that are
        #   structure members.  Serialized names are typically set on the
        #   shape references, not on the shape definition.
        attr_reader :location_name

        attr_reader :documentation

        # @return [ShapeMap]
        attr_reader :shape_map

        # @return [String, nil]
        def documentation
          @definition['documentation']
        end

        # @param [String] key
        # @return [Object, nil]
        def metadata(key)
          @definition[key.to_s]
        end

        # @api private
        # @return [String]
        def inspect
          "#<#{self.class.name}>"
        end

        # @api private
        def with(options)
          self.class.new(@definition.merge(options), shape_map: shape_map)
        end

        private

        def underscore(string)
          Util.underscore(string)
        end

        def shape_at(key)
          if @definition[key]
            shape_for(@definition[key])
          else
            raise ArgumentError, "expected shape definition at #{key.inspect}"
          end
        end

        def shape_for(reference)
          if reference.key?('shape')
            # shape ref given, e.g. { "shape" => "ShapeName" },
            # use the shape map to resolve this reference
            @shape_map.shape(reference)
          else
            Shape.new(reference, shape_map: @shape_map)
          end
        end

        class << self

          # @return [String]
          attr_accessor :type

          # Constructs and returns a new shape object.  You must specify
          # the shape type using the "type" option or you must construct
          # the shape using the appropriate subclass of `Shape`.
          #
          # @example Constructing a new shape
          #
          #   shape = Seahorse::Model::Shapes::Shape.new("type" => "structure")
          #
          #   shape.class
          #   #=> Seahorse::Model::Shapes::Structure
          #
          #   shape.definition
          #   #=> { "type" => "structure" }
          #
          # @example Constructing a new shape using the shape class
          #
          #   shape = Seahorse::Model::Shapes::String.new
          #   shape.definition
          #   #=> { "type" => "string" }
          #
          # @param [Hash] definition
          # @option options [ShapeMap] :shape_map
          # @return [Shape]
          def new(definition = {}, options = {})
            if self == Shape
              from_type(definition, options)
            else
              super(apply_type(definition), options)
            end
          end

          private

          def apply_type(definition)
            case definition['type']
            when type then definition
            when nil then { 'type' => type }.merge(definition)
            else raise ArgumentError, "expected 'type' to be `#{type}'"
            end
          end

          def from_type(definition, options)
            if type = definition['type']
              Shapes.shape_class(type).new(definition, options)
            else
              raise ArgumentError, 'must specify "type" in the definition'
            end
          end

        end

      end

      class Structure < Shape

        def initialize(definition, options = {})
          super
          @members = {}
          @member_refs = {}
          @member_names = {}
          compute_member_names
          compute_required_member_names
          @member_names = @member_names.values
        end

        # @return [Array<Symbol>] Returns a list of members names.
        attr_reader :member_names

        # @return [Array<Symbol>] Returns a list of required members names.
        attr_reader :required

        # @return [String, nil] Returns the name of the payload member if set.
        attr_reader :payload

        # @return [Shape, nil]
        def payload_member
          @payload_member ||= member(payload)
        end

        # @param [Symbol] name
        # @return [Shape]
        def member(name)
          if ref = @member_refs[name.to_sym]
            @members[name] ||= shape_for(ref)
          else
            raise ArgumentError, "no such member :#{name}"
          end
        end

        # @param [Symbol] name
        # @return [Boolean] Returns `true` if this structure has a member with
        #   the given name.
        def member?(name)
          @member_refs.key?(name.to_sym)
        end

        # @return [Enumerable<Symbol,Shape>] Returns an enumerator that yields
        #   member names and shapes.
        def members
          Enumerator.new do |y|
            member_names.map do |member_name|
              y.yield(member_name, member(member_name))
            end
          end
        end

        # Searches the structure members for a shape with the given
        # serialized name.
        #
        # If found, the shape will be returned with its symbolized member
        # name.
        #
        # If no shape is found with the given serialized name, then
        # nil is returned.
        #
        # @example
        #
        #   name, shape = structure.member_by_location_name('SerializedName')
        #   name #=> :member_name
        #   shape #=> instance of Seahorse::Model::Shapes::Shape
        #
        # @param [String] location_name
        # @return [Array<Symbol,Shape>, nil]
        def member_by_location_name(location_name)
          @by_location_name ||= index_members_by_location_name
          @by_location_name[location_name]
        end

        private

        def index_members_by_location_name
          members.each.with_object({}) do |(name, shape), hash|
            hash[shape.location_name] = [name, shape]
          end
        end

        def compute_member_names
          (definition['members'] || {}).each do |orig_name,ref|
            name = underscore(orig_name).to_sym
            if ref['location'] == 'headers'
              @member_refs[name] = ref
            else
              @member_refs[name] = { 'locationName' => orig_name }.merge(ref)
            end
            @member_names[orig_name] = name
          end
          @payload = @member_names[definition['payload']] if definition['payload']
        end

        def compute_required_member_names
          @required = (definition['required'] || []).map do |orig_name|
            @member_names[orig_name]
          end
        end

      end

      class List < Shape

        def initialize(definition, options = {})
          super
          @min = definition['min']
          @max = definition['max']
          @member = shape_at('member')
        end

        # @return [Shape]
        attr_reader :member

        # @return [Integer, nil]
        attr_reader :min

        # @return [Integer, nil]
        attr_reader :max

      end

      class Map < Shape

        def initialize(definition, options = {})
          super
          @min = definition['min']
          @max = definition['max']
          @key = shape_at('key')
          @value = shape_at('value')
        end

        # @return [Shape]
        attr_reader :key

        # @return [Shape]
        attr_reader :value

        # @return [Integer, nil]
        attr_reader :min

        # @return [Integer, nil]
        attr_reader :max

      end

      class String < Shape

        def initialize(definition, options = {})
          super
          @enum = Set.new(definition['enum']) if definition['enum']
          @pattern = definition['pattern']
          @min = definition['min']
          @max = definition['max']
        end

        # @return [Set, nil]
        attr_reader :enum

        # @return [String, nil]
        attr_reader :pattern

        # @return [Integer, nil]
        attr_reader :min

        # @return [Integer, nil]
        attr_reader :max

      end

      class Character < String; end

      class Byte < String; end

      class Timestamp < Shape

        def initialize(definition, options = {})
          @format = definition['timestampFormat']
          super
        end

        # @return [String]
        attr_reader :format

        # @param [Time] time
        # @param [String] default_format The format to default to
        #   when {#format} is not set on this timestamp shape.
        # @return [String]
        def format_time(time, default_format)
          format = @format || default_format
          case format
          when 'iso8601'       then time.utc.iso8601
          when 'rfc822'        then time.utc.rfc822
          when 'httpdate'      then time.httpdate
          when 'unixTimestamp' then time.utc.to_i
          else
            msg = "invalid timestamp format #{format.inspect}"
            raise ArgumentError, msg
          end
        end

      end

      class Integer < Shape

        def initialize(definition, options = {})
          @min = definition['min']
          @max = definition['max']
          super
        end

        # @return [Integer, nil]
        attr_reader :min

        # @return [Integer, nil]
        attr_reader :max

      end

      class Long < Integer; end

      class Float < Shape; end

      class Double < Float; end

      class Boolean < Shape; end

      class Blob < Shape; end

      register('blob', Shapes::Blob)
      register('byte', Shapes::Byte)
      register('boolean', Shapes::Boolean)
      register('character', Shapes::Character)
      register('double', Shapes::Double)
      register('float', Shapes::Float)
      register('integer', Shapes::Integer)
      register('list', Shapes::List)
      register('long', Shapes::Long)
      register('map', Shapes::Map)
      register('string', Shapes::String)
      register('structure', Shapes::Structure)
      register('timestamp', Shapes::Timestamp)

    end
  end
end
