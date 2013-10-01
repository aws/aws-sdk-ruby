
module Seahorse
  module Model
    class LazyOperationHash < Hash
      def initialize(raw_data = {})
        @raw_data = raw_data.dup
      end

      def [](name)
        load_data(name.to_s, super(name.to_s))
      end

      def []=(name, value)
        @raw_data.delete(name.to_s)
        super(name.to_s, value)
      end

      def load!
        @raw_data.each {|k, v| load_data(k, v) }
      end

      def keys
        (super + @raw_data.keys).sort
      end

      private

      def load_data(name, data)
        return data unless @raw_data.has_key?(name)
        self[name] = Operation.from_hash(@raw_data[name])
      end

      Hash.instance_methods.each do |meth|
        next if meth =~ /^__|^(\[\]=?|initialize|default|object_id|keys)$/
        class_eval(<<-eof, __FILE__, __LINE__ + 1)
          def #{meth}(*args, &block)
            load!
            super(*args, &block)
          end
        eof
      end
    end
  end
end
