module Seahorse
  module Model
    class Operation

      def initialize
        @http_method = 'POST'
        @http_request_uri = '/'
        @deprecated = false
        @errors = []
      end

      # @return [String, nil]
      attr_accessor :name

      # @return [String]
      attr_accessor :http_method

      # @return [String]
      attr_accessor :http_request_uri

      # @return [Boolean]
      attr_accessor :deprecated

      # @return [String, nil]
      attr_accessor :documentation

      # @return [ShapeRef, nil]
      attr_accessor :input

      # @return [ShapeRef, nil]
      attr_accessor :output

      # @return [Array<ShapeRef>]
      attr_accessor :errors

      # @api private
      def inspect
        "#<#{self.class.name} name=#{name.inspect}>"
      end

    end
  end
end
