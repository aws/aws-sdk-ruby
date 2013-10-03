module Aws
  # @api private
  class ErrorHandler

    def initialize(parser)
      @parser = parser
    end

    attr_accessor :handler

    def call(context)
      @handler.call(context).on_error do |response|
        code, message = @parser.extract_error(response)
        response.error = Errors.response_error(response, code).new(message)
        response.data = nil
      end
    end

  end
end
