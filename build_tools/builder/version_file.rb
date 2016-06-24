module BuildTools
  class Builder
    class VersionFile

      def initialize(service)
        @path = File.join(service.gem_dir, 'VERSION')
      end

      def build
        FileWriter.new(@path).bootstrap('1.0.0')
      end

    end
  end
end
