module Aws
  module Json
    class ErrorParser

      def extract_error(response)
        json = MultiJson.load(response.http_response.body_contents)
        error_code = json['code'] || json['__type']
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
