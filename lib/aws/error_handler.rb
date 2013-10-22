module Aws
  # @api private
  class ErrorHandler

    def initialize(parser)
      @parser = parser
    end

    attr_accessor :handler

    def call(context)
      @handler.call(context).on_status(300..599) do |response|
        if empty_body?(response)
          response.error = empty_body_error(response)
        else
          code, message = @parser.extract_error(response)
          response.error = Errors.response_error(response, code).new(message)
        end
        response.data = nil
      end
    end

    def empty_body?(response)
      response.http_response.body_contents.empty?
    end

    def empty_body_error(response)
      Errors.response_error(response, error_code(response)).new('')
    end

    def error_code(response)
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
