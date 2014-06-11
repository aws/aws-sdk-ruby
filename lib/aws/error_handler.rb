module Aws
  # @api private
  class ErrorHandler

    def initialize(parser)
      @parser = parser
    end

    attr_accessor :handler

    def call(context)
      @handler.call(context).on(300..599) do |response|
        if empty_body?(context.http_response)
          error_code = error_code_for_empty_response(context.http_response)
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
      svc = context.client.class.name.split('::')[1]
      errors_module = Aws.const_get(svc).const_get(:Errors)
      errors_module.error_class(code).new(context, message)
    end

    def empty_body?(http_resp)
      http_resp.body_contents.empty?
    end

    def error_code_for_empty_response(http_resp)
      status_code = http_resp.status_code
      {
        302 => 'MovedTemporarily',
        304 => 'NotModified',
        400 => 'BadRequest',
        403 => 'Forbidden',
        404 => 'NotFound',
        412 => 'PreconditionFailed',
      }[status_code] || "#{status_code}Error"
    end

  end
end
