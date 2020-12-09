# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class Gemspec < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        @custom = @service.protocol == 'api-gateway'
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      # @return [String]
      def gem_name
        @service.gem_name
      end

      def author
        @custom ? 'Author Name' : 'Amazon Web Services'
      end

      def homepage
        @custom ? 'http://gem-homepage.com' : 'https://github.com/aws/aws-sdk-ruby'
      end

      def email
        @custom ? 'yourname@email.com' : 'trevrowe@amazon.com'
      end

      # @return [String]
      def summary
        @custom ? @service.short_name : "AWS SDK for Ruby - #{@service.short_name}"
      end

      def metadata
        @custom ? false : true
      end

      # @return [String]
      def description
        if @custom
          desc = "Gem Description"
        else
          if @service.short_name != @service.full_name
            abbreviation = " (#{@service.short_name})"
          end
          desc = "Official AWS Ruby gem for #{@service.full_name}#{abbreviation}. "
          desc += 'This gem is part of the AWS SDK for Ruby.'
        end
        desc
      end

      # @return [String]
      def code_uri
        "https://github.com/aws/aws-sdk-ruby/tree/master/gems/#{gem_name}"
      end

      # @return [Array<Dependency>]
      def dependencies
        @service.gem_dependencies.map do |gem, version|
          version = if version.is_a? Array
            version.map { |v| "'#{v}'" }.join(', ')
          else
            "'#{version}'"
          end
          Dependency.new(gem, version)
        end
      end

      Dependency = Struct.new(:gem, :version)

    end
  end
end
