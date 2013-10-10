require 'thread'

module Seahorse
  module Model
    class Operations
      def initialize(raw_data = {})
        @raw = raw_data.dup
        @loaded = {}
        @mutex = Mutex.new
      end

      def [](name)
        name = name.to_s
        @mutex.synchronize do
          if @raw.key?(name)
            @loaded[name] = Operation.from_hash(@raw.delete(name))
          else
            @loaded[name]
          end
        end
      end

      def []=(name, value)
        name = name.to_s
        @mutex.synchronize do
          @raw.delete(name)
          @loaded[name] = value
        end
      end

      def load!
        @raw.keys.each { |key| self[key] }
      end

      def keys
        @mutex.synchronize do
          (@loaded.keys + @raw.keys).sort
        end
      end

      def values
        self.load!
        @loaded.values
      end

      def each(&block)
        self.load!
        @loaded.each(&block)
      end

      def to_h
        self.load!
        @loaded.dup
      end
      alias to_hash to_h

    end
  end
end
