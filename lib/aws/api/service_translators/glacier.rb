module Aws::Api::ServiceTranslators::Glacier

  extend Aws::Api::Visitor

  class << self

    def translate(api)
      apply_plugins(api)
      convert_types(api)
    end

    def apply_plugins(api)
      api.plugins << "Aws::Plugins::GlacierAccountId"
      api.plugins << "Aws::Plugins::GlacierApiVersion"
      api.plugins << "Aws::Plugins::GlacierChecksums"
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
