module Aws::Api::ServiceTranslators
  module Glacier

    extend ModifyShapes

    class << self

      def translate(api)
        convert_dates(api)
        remove_checksum(api)
      end

      # convert all of the "string" date shapes to timestamps
      def convert_dates(api)
        modify_shapes(api) do |shape_name, shape|
          shape.type = 'iso8601_timestamp' if shape.serialized_name =~ /date/i
        end
      end

      # this checksum parameter - it must be calculated on xml that is not user
      # supplied, so the sdk has to compute the checksum after building the xml
      def remove_checksum(api)
        api.operations[:complete_multipart_upload].input.members.delete(:checksum)
      end

    end
  end
end
