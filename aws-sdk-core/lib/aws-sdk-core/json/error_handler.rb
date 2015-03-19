module Aws
  module Json
    class ErrorHandler < Xml::ErrorHandler

      # @param [Seahorse::Client::RequestContext] context
      # @return [Seahorse::Client::Response]
      def call(context)
        @handler.call(context).on(300..599) do |response|
          response.error = error(context)
          response.data = nil
        end
      end

      private

      def extract_error(context)
        json = MultiJson.load(context.http_response.body_contents)
        error_code = json['code'] || json['__type']
        error_code ||= context.http_response.headers['x-amzn-errortype']
        error_code = error_code.split('#').last
        if error_code == 'RequestEntityTooLarge'
          error_message = 'Request body must be less than 1 MB'
        else
          error_message = json['message'] || json['Message']
        end
        [error_code, error_message]
      end

    end
  end
end
