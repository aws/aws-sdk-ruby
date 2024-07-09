# frozen_string_literal: true

module Aws
  # @api private
  class Profile
    def initialize(name, properties = {})
      @name = name
      @properties = {}
      update_properties(properties)
    end

    attr_reader :name, :properties

    def update_properties(new_values)
      new_values.each do |key, value|
        if @properties.key?(key)
          puts "Warning: Duplicate property '#{key}' detected in profile #{@name}. "\
               'One value will be ignored.'
        end
        @properties[key] = value
      end
    end

    # @api private
    class Property
      attr_reader :name, :value, :sub_properties

      def initialize(name, value)
        @name = name
        @value = value
        @sub_properties = parse_sub_properties
      end

      def to_h
        if @sub_properties
          @sub_properties.transform_values(&:to_h)
        else
          @value
        end
      end

      private

      def parse_sub_properties
        return nil unless @value.start_with?("\n")

        sub_properties = {}
        @value.split(/[\r\n]+/).each do |raw_sub_property_line|
          next if ProfileFileUtils.empty_line?(raw_sub_property_line)

          left, right = ProfileFileUtils.parse_property_definition_line(
            raw_sub_property_line, "in sub-property of #{@name}"
          )
          next unless ProfileFileUtils.valid_identifier?(left)

          if sub_properties.key?(left)
            puts "Warning: Duplicate sub-property '#{left}' detected in property '#{@name}'. "\
                 'The later one in the file will be used.'
          end

          sub_properties[left] = Property.new(left, right)
        end
        sub_properties
      end
    end
  end
end