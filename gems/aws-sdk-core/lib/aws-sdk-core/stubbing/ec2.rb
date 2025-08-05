# frozen_string_literal: true

module Aws
  module Core
    module Stubbing
      # @api private
      class Ec2
        def stub_data(config, operation, data)
          http_resp = Smithy::Client::Http::Response.new
          http_resp.status_code = 200
          http_resp.headers['Server'] = 'AmazonEC2'
          http_resp.body = build_body(config, operation, data)
          http_resp
        end

        def stub_error(_config, error_code)
          http_resp = Smithy::Client::Http::Response.new
          http_resp.status_code = 400
          http_resp.body = <<~XML.strip
            <ErrorResponse>
              <Error>
                <Code>#{error_code}</Code>
                <Message>stubbed-error-message</Message>
              </Error>
            </ErrorResponse>
          XML
          http_resp
        end

        private

        def build_body(config, operation, data)
          xml = []
          config.xml_codec.build(operation.output, data, xml)
          xml.shift
          xml.pop
          <<~XML.strip
            <#{operation.name}Response xmlns="http://ec2.amazonaws.com/doc/#{config.service.version}/">
              #{xml.join}
              <requestId>stubbed-request-id</requestId>
            </#{operation.name}Response>
          XML
        end
      end
    end
  end
end
