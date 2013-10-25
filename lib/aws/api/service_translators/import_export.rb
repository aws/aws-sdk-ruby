module Aws::Api::ServiceTranslators::ImportExport
  class << self

    def translate(api)
      remove_restful_bindings(api)
    end

    def remove_restful_bindings(api)
      api.operations.each do |operation_name, operation|
        operation.http_path = '/'
      end
    end

  end
end
