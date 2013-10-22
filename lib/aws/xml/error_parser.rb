module Aws
  module Xml
    class ErrorParser

      def extract_error(response)
        error = MultiXml.parse(response.http_response.body_contents)
        %w(Response ErrorResponse Errors Error).each do |wrapper|
          error = error[wrapper] if error[wrapper]
        end
        [error['Code'], error['Message']]
      end

    end
  end
end
