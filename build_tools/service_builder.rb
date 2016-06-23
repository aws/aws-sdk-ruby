require_relative 'service_builder/features'
require_relative 'service_builder/file_writer'
require_relative 'service_builder/gemspec'
require_relative 'service_builder/source'
require_relative 'service_builder/specs'
require_relative 'service_builder/version_file'

module BuildTools
  class ServiceBuilder

    # @param [BuildTools::Service] service
    def initialize(service)
      @service = service
    end

    def build
      ServiceBuilder::VersionFile.new(@service).build
      ServiceBuilder::Gemspec.new(@service).build
      ServiceBuilder::Source.new(@service).build
      ServiceBuilder::Specs.new(@service).build
      ServiceBuilder::Features.new(@service).build
    end

  end
end
