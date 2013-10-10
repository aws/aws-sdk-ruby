
module Seahorse
  module Model
    class PropertyError < RuntimeError
      attr_reader :key, :hash

      def initialize(key, hash)
        @key = key.to_s
        @hash = hash
        super("No such key #{key} in #{hash}")
      end
    end

    class Property
      include Model::Types

      attr_accessor :name
      attr_accessor :serialized_class
      attr_accessor :always_serialize
      attr_reader :serialized_location
      attr_writer :serialized_name

      def serialized_location=(value)
        @serialized_location = value ? value.to_sym : nil
      end

      def serialized_name
        (@serialized_name || name).to_sym
      end

      def initialize(name, type, options = {})
        self.name = name.to_sym
        self.serialized_class = type
        self.serialized_location = options[:in]
        self.serialized_name = options[:name]
        self.always_serialize = options[:always_serialize]
      end

      def load_from(hash)
        orig_hash = hash

        if serialized_location
          hash = hash[serialized_location.to_s]
          raise PropertyError.new(serialized_location, orig_hash) unless hash
        end

        if !hash.has_key?(serialized_name.to_s)
          raise PropertyError.new(serialized_name, hash)
        end

        value = hash[serialized_name.to_s]
        deserialize(value, serialized_class)
      end

      def write_to(hash, value)
        orig_hash = hash

        if serialized_location
          hash[serialized_location.to_s] ||= {}
          hash = hash[serialized_location.to_s]
        end

        value = serialize(value, serialized_class)
        if value != nil || always_serialize
          hash[serialized_name.to_s] = value
        end

        orig_hash
      end

      private

      def serialize(value, klass)
        return if value.nil?

        if klass == Operations
          hsh = {}
          value.each do |k, v|
            hsh[key_case(k.to_s)] = serialize(v, Operation)
          end
          hsh
        elsif value.is_a?(Hash) && klass.is_a?(Hash)
          hsh = {}
          value.each do |k, v|
            keyclass = klass.keys.first
            valclass = klass.values.first
            hsh[serialize(k, keyclass).to_s] = serialize(v, valclass)
          end
          hsh
        elsif klass.is_a?(Array)
          value.map {|v| serialize(v, klass.first) }
        elsif klass == Boolean
          !!value
        elsif value.respond_to?(:to_hash)
          value ? value.to_hash : nil
        elsif value.is_a?(Symbol)
          value.to_s
        else
          value
        end
      end

      def deserialize(value, klass)
        if klass == Symbol
          value ? value.to_sym : nil
        elsif klass == Operations
          hash = value.inject({}) do |hsh, (k, v)|
            hsh[key_case(k)] = v; hsh
          end
          Operations.new(hash)
        elsif klass.is_a?(Hash)
          hsh = {}
          value.each do |key, item|
            key = deserialize(key, klass.keys.first)
            item = deserialize(item, klass.values.first)
            hsh[key] = item
          end
          hsh
        elsif klass.is_a?(Array)
          value.map {|v| deserialize(v, klass.first) }
        elsif klass.respond_to?(:from_hash)
          klass.from_hash(value)
        elsif klass == Boolean
          value || false
        elsif klass
          value
        else
          nil
        end
      end

      def key_case(name)
        name = name.to_s
        name = name.gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2')
        name = name.gsub(/([a-z\d])([A-Z])/,'\1_\2')
        name = name.tr("-", "_")
        name.downcase
      end
    end
  end
end
