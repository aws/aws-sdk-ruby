module Aws::Api::ServiceTranslators::Glacier
  class << self

    include Seahorse::Model::Shapes

    def translate(api)
      remove_complete_multipart_upload_checksum(api)
      convert_timestamp_shapes(api)
    end

    def remove_complete_multipart_upload_checksum(api)
      api.operations[:complete_multipart_upload].input.members.delete(:checksum)
    end

    def convert_timestamp_shapes(api)
      api.operations.values.each do |operation|
        convert_timestamps(operation.input)
        convert_timestamps(operation.output)
      end
    end

    def convert_timestamps(shape)
      case shape
      when StructureShape
        shape.members.each do |member_name, member_shape|
          convert_timestamps(member_shape)
        end
      when MapShape then convert_timestamps(shape.members)
      when ListShape then convert_timestamps(shape.members)
      else
        shape.type = 'iso8601_timestamp' if shape.serialized_name =~ /date/i
      end
    end

  end
end
