module Aws
  module Resource
    class Base

      extend HasOperations

      # @overload initialize(options = {})
      # @overload initialize(*identifiers, options = {})
      # @option options [Seahorse::Client::Base] :client
      def initialize(*args)
        options = args.last.is_a?(Hash) ? args.pop : {}
        @identifiers = extract_identifiers(args, options)
        @client = extract_client(options[:client])
        @data = options[:data]
      end

      # Marked private to prevent double documentation
      # @return [Seahorse::Client::Base]
      attr_reader :client

      # Marked private to prevent double documentation
      # @return [Hash<Symbol,String>]
      attr_reader :identifiers

      # @return [Struct]
      def data
        load unless @data
        @data
      end

      # @return [Boolean] Returns `true` if {#data} has been loaded.
      def data_loaded?
        !@data.nil?
      end

      # Loads data for this resource.
      # @note Calling this method will send a request to AWS.
      # @return [self]
      def load
        if load_operation = self.class.load_operation
          @data = load_operation.call(resource:self, client:client)
          self
        else
          raise NotImplementedError, "#load not defined for #{self.class.name}"
        end
      end
      alias reload load

      # @api private
      def inspect
        identifiers = self.identifiers.map do |name, value|
          "#{name}=#{value.inspect}"
        end.join(', ')
        "#<#{[self.class.name, identifiers].join(' ').strip}>"
      end

      private

      def extract_client(client)
        case client
        when nil then build_client
        when Hash then build_client(client)
        else client
        end
      end

      def build_client(config = {})
        self.class.client_class.new(config)
      end

      def extract_identifiers(args, options)
        identifiers = {}
        self.class.identifiers.each.with_index do |name, n|
          if args[n]
            identifiers[name] = args[n]
          elsif options.key?(name)
            identifiers[name] = options[name]
          else
            raise ArgumentError, "missing required option #{name.inspect}"
          end
        end
        identifiers
      end

      class << self

        # @return [String, nil] The resource name.
        attr_accessor :resource_name

        # @return [Class<Seahorse::Client::Base>, nil] When constructing
        #   a resource, the client will default to an instance of the
        #   this class.
        attr_accessor :client_class

        # @return [Operations::DataOperation, nil]
        attr_accessor :load_operation

        # @param [Class<Seahorse::Client::Base>] client_class
        # @param [Array<Symbol>] identifiers
        # @return [Class<Resource>] Returns a new resource subclass.
        def define(client_class, identifiers = [])
          klass = Class.new(self)
          klass.client_class = client_class
          identifiers.each do |identifier|
            klass.add_identifier(identifier)
          end
          klass
        end

        # @return [Array<Symbol>]
        # @see add_identifier
        # @see #identifiers
        def identifiers
          @identifiers.dup
        end

        # @param [Symbol] name
        # @return [void]
        def add_identifier(name)
          name = name.to_sym
          safe_define_method(name) { @identifiers[name] }
          @identifiers << name
        end

        # Registers a data attribute.  This defines a simple getter
        # for the attribute which will access {#data}, loading the
        # resource if necessary.
        # @param [Symbol] name
        # @return [void]
        def add_data_attribute(name)
          safe_define_method(name) { data[name] }
          @data_attributes << name
        end

        # @return [Array<Symbol>] Returns an array of symbolized data
        #   attribute names.
        def data_attributes
          @data_attributes.dup
        end

        # @api private
        def inherited(subclass)
          subclass.send(:instance_variable_set, "@identifiers", [])
          subclass.send(:instance_variable_set, "@data_attributes", [])
          super
        end

      end
    end
  end
end
