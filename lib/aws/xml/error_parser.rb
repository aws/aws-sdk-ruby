module Aws
  module Xml
    class ErrorParser

      def extract_error(response)
        error = MultiXml.parse(response.http_response.body_contents)
        %w(Response ErrorResponse Errors Error).each do |wrapper|
          error = error[wrapper] if error[wrapper]
        end
        [remove_prefix(response, error['Code']), error['Message']]
      end

      def remove_prefix(response, error_code)
        prefix = response.context.config.api.metadata['error_prefix']
        if prefix = response.context.config.api.metadata['error_prefix']
          error_code.sub(/^#{prefix}/, '')
        else
          error_code
        end
      end

    end
  end
end
