module Aws
  module Xml
    class ErrorParser

      def extract_error(response)
        xml = MultiXml.parse(response.http_response.body_contents)
        xml = xml['Response'] if xml.key?('Response')
        xml = xml['Errors'] if xml.key?('Errors')
        error_code = xml['Error']['Code']
        error_message = xml['Error']['Message']
        [error_code, error_message]
      end

    end
  end
end
