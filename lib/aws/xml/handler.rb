require 'multi_xml'

module Aws
  module Xml
    class Handler < ProtocolHandler

      def populate_headers(context)
        context.http_request.headers['Content-Type'] = 'application/xml'
      end

      def builder_class
        Xml::Builder
      end

      def parser_class
        Xml::Parser
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
