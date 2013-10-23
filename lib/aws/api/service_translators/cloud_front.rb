module Aws::Api::ServiceTranslators::CloudFront

  extend Aws::Api::Visitor

  class << self

    def translate(api)
      convert_max_items(api)
    end

    # max_item shapes are modeled incorrectly as strings instead of numbers
    def convert_max_items(api)
      modify_shapes(api) do |member_name, shape|
        shape.type = 'integer' if member_name == :max_items
      end
    end

  end
end
