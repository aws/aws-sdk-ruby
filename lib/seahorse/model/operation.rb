
module Seahorse
  module Model
    class Operation < Node

      def initialize(*)
        super
        self.metadata = {}
        self.input = InputShape.new
        self.output = OutputShape.new
      end

      property :name, String
      property :http_method, String
      property :http_path, String
      property :metadata, Hash
      property :documentation, String
      property :input, InputShape
      property :output, OutputShape
      property :errors, [Shape]

      def to_hash
        hash = super
        hash.delete('metadata') if hash['metadata'].empty?
        hash.delete('input') if hash['input']['members'].empty?
        hash.delete('output') if hash['output']['members'].empty?
        hash
      end

    end
  end
end
