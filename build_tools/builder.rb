require_relative 'builder/features'
require_relative 'builder/gemspec'
require_relative 'builder/source'
require_relative 'builder/specs'
require_relative 'builder/version_file'

module BuildTools
  class Builder

    # @param [BuildTools::Service] service
    def initialize(service)
      @service = service
    end

    def build
      Builder::VersionFile.new(@service).build
      Builder::Gemspec.new(@service).build
      Builder::Source.new(@service).build
      Builder::Specs.new(@service).build
      Builder::Features.new(@service).build
    end

  end
end
