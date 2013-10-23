require 'set'

module Aws::Api::ServiceTranslators::Glacier

  extend Aws::Api::Visitor

  class << self

    def translate(api)
      remove_checksum(api)
      convert_types(api)
    end

    # this checksum parameter - it must be calculated on xml that is not user
    # supplied, so the sdk has to compute the checksum after building the xml
    def remove_checksum(api)
      api.operations[:complete_multipart_upload].input.members.delete(:checksum)
    end

    # Shapes that are bound to headers and the request URI are all typed as
    # strings, even when they *should* be integers or dates, crawling the
    # api to correct these
    def convert_types(api)
      each_shape(api) do |shape_name, shape|
        case shape_name
        when /date/i then shape.type = 'iso8601_timestamp'
        when :limit, :part_size, :archive_size then shape.type = 'integer'
        end
      end
    end

  end
end
