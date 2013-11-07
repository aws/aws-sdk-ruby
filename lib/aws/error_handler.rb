module Aws
  # @api private
  class ErrorHandler

    def initialize(parser)
      @parser = parser
    end

    attr_accessor :handler

    def call(context)
      @handler.call(context).on(300..599) do |response|
        if empty_body?(response)
          error_code = error_code_for_empty_response(response)
          error_message = ''
        else
          error_code, error_message = @parser.extract_error(response)
        end
        response.error = error(context, error_code, error_message)
        response.data = nil
      end
    end

    private

    def error(context, code, message)
      svc_class_name = context.config.api.metadata['service_class_name']
      klass = Errors.error_class(svc_class_name, code)
      Errors.error_class(svc_class_name, code).new(context, message)
    end

    def empty_body?(response)
      response.http_response.body_contents.empty?
    end

    def error_code_for_empty_response(response)
      error_code = response.http_response.status_code
      {
        302 => 'MovedTemporarily',
        304 => 'NotModified',
        400 => 'BadRequest',
        403 => 'Forbidden',
        404 => 'NotFound',
      }[error_code] || "#{error_code}Error"
    end

  end
end
