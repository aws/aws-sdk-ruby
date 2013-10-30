module Aws::Api::ServiceTranslators::Route53

  extend Aws::Api::Visitor

  class << self

    def translate(api)
      convert_types(api)
    end

    # Shapes that are bound to headers and the request URI are all typed as
    # strings, even when they *should* be integers or dates, crawling the
    # api to correct these
    def convert_types(api)
      each_shape(api) do |shape_name, shape|
        case shape_name
        when :max_items then shape.type = 'integer'
        end
      end
    end

  end
end
