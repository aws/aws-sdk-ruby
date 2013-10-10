
module Seahorse
  module Model
    class Api < Node

      property :version, String
      property :endpoint, String
      property :metadata, Hash
      property :plugins, [String]
      property :documentation, String
      property :operations, Operations

      def initialize(*)
        super
        self.metadata = {}
        self.plugins = []
        self.operations = Operations.new
      end

      def validate!
        operations.load!
        true
      end

      def to_hash
        operations.load!
        hash = super
        hash.delete('metadata') if hash['metadata'].empty?
        hash.delete('plugins') if hash['plugins'].empty?
        hash
      end

      def inspect
        "#<#{self.class.name} version=#{version}>"
      end

    end
  end
end
