module Aws
  module Xml
    class ErrorParser

      def extract_error(response)
        body = response.http_response.body_contents
        if body.empty?
          error_code = response.http_response.status_code
          error_code = {
            304 => 'NotModified',
            400 => 'BadRequest',
            403 => 'Forbidden',
            404 => 'NotFound',
          }[error_code] || "#{error_code}Error"
          [error_code, '']
        else
          xml = MultiXml.parse(body)
          xml = xml['Response'] if xml.key?('Response')
          xml = xml['Errors'] if xml.key?('Errors')
          error_code = xml['Error']['Code']
          error_message = xml['Error']['Message']
          [error_code, error_message]
        end
      end

    end
  end
end
