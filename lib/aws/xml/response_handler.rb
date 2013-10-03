require 'multi_xml'

module Aws
  module Xml
    # @api private
    class ResponseHandler < Aws::ResponseHandler

      def extract_data(rules, xml, target)
        Parser.parse(rules, xml, target)
      end

      def extract_error(response)
        xml = MultiXml.parse(response.http_response.body_contents)
        xml = xml['Response'] if xml.key?('Response')
        xml = xml['Errors'] if xml.key?('Errors')
        error_code = xml['Error']['Code']
        error_message = xml['Error']['Message']
        Errors.response_error(response, error_code).new(error_message)
      end

    end
  end
end
