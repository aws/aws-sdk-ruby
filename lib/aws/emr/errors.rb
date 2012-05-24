module AWS
  class EMR
    module Errors

      extend Core::LazyErrorClasses

      # @private
      def self.error_class(code)
        puts "Error_class: " << code
        super(code.sub(/^AWS\.ElasticMapReduce\./, ''))
      end

    end
  end
end
