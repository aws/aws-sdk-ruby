module AwsSdkCodeGenerator
  module Dsl
    # @api private
    class TagType < String

      def self.new(type)
        if type
          types = Array(type)
          types = types.map { |t| t.nil? ? 'nil' : t.to_s }
          super(types.empty? ? '' : " [#{types.join(', ')}]")
        else
          super('')
        end
      end

    end
  end
end
