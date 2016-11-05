module AwsSdkCodeGenerator
  module Views
    class Gemspec < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
      end

      # @return [String]
      def gem_name
        @service.gem_name
      end

      # @return [String]
      def summary
        "AWS SDK for Ruby - #{@service.short_name}"
      end

      # @return [String]
      def description
        if @service.short_name != @service.full_name
          abbreviation = " (#{@service.short_name})"
        end
        desc = "Official AWS Ruby gem for #{@service.full_name}#{abbreviation}. "
        desc += 'This gem is part of the AWS SDK for Ruby.'
        desc
      end

      # @return [Array<Dependency>]
      def dependencies
        @service.gem_dependencies.map do |gem, version|
          Dependency.new(gem, version)
        end
      end

      Dependency = Struct.new(:gem, :version)

    end
  end
end
