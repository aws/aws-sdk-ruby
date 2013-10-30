module Aws
  module Api

    # This class is responsible for calculating class names and method names
    # from AWS name.  The basic pattern for determining a class name is:
    #
    # * Start with the service full name or abbreviation if it has one
    # * Remove AWS/Amazon prefixes and suffixes
    # * Take the shorter of the name or the endpoint prefix
    #
    class ServiceNamer

      def initialize(endpoint_prefix, full_name, abbreviation = nil)
        @full_name = full_name
        @abbreviation = abbreviation
        @class_name = build_class_name(endpoint_prefix)
      end

      # @return [String]
      attr_reader :full_name

      # @return [String, nil]
      attr_reader :abbreviation

      alias abbr abbreviation

      # @return [String]
      attr_reader :class_name

      private

      def build_class_name(endpoint_prefix)
        name = @abbreviation || @full_name
        name = name.sub('Amazon', '').sub('AWS', '').gsub(/\W+/, '')
        [name, endpoint_prefix.upcase].sort_by(&:size).first
      end

    end
  end
end
