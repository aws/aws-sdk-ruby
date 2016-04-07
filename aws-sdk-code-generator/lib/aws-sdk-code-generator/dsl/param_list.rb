module AwsSdkCodeGenerator
  module Dsl
    # @api private
    class ParamList

      def initialize(params)
        @params = params
      end

      def signature
        if @params.empty?
          nil
        else
          "(#{@params.map { |p| param_signature(p) }.join(', ')})"
        end
      end

      def tags
        lines = []
        @params.each do |param|
          lines.concat(param.tag)
        end
        lines
      end

      private

      def param_signature(param)
        if param.default.empty?
          param.name
        else
          "#{param.name} = #{param.default}"
        end
      end

    end
  end
end
