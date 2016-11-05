require_relative 'builder/features'
require_relative 'builder/source'

module BuildTools
  class Builder

    # @param [BuildTools::Service] service
    def initialize(service)
      @service = service
    end

    def build
      Builder::Source.new(@service).build
    end

  end
end
