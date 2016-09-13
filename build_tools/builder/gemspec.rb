module BuildTools
  class Builder
    class Gemspec

      def initialize(service)
        @service = service
      end

      def build
        FileWriter.new(path).write(gemspec)
      end

      private

      def path
        File.join(@service.gem_dir, "#{gem_name}.gemspec")
      end

      def gemspec
        <<-GEMSPEC
#{GENERATED_SRC_WARNING}

Gem::Specification.new do |spec|

  spec.name          = '#{gem_name}'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = '#{summary}'
  spec.description   = '#{description}'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb']

  #{dependencies}

end
        GEMSPEC
      end

      def gem_name
        @service.gem_name
      end

      def summary
        "AWS SDK for Ruby - #{@service.short_name}"
      end

      def description
        abbr = @service.short_name != @service.full_name ?
          " (#{@service.short_name})" : ''
        "Official AWS Ruby gem for #{@service.full_name}#{abbr}. This gem is part of the AWS SDK for Ruby."
      end

      def dependencies
        @service.dependencies.map do |gem, version|
          "spec.add_dependency('#{gem}', '#{version}')"
        end.join("\n  ")
      end


    end
  end
end
