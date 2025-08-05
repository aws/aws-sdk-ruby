# frozen_string_literal: true

module Aws
  module Core
    module Stubbing
      # @api private
      class Query
        def stub_data(config, operation, data)
          http_resp = Smithy::Client::Http::Response.new
          http_resp.status_code = 200
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
          xml.unshift("    <ResponseMetadata><RequestId>stubbed-request-id</RequestId></ResponseMetadata>\n")
          xml.unshift("  <#{operation.name}Result>\n")
          xml.unshift("<#{operation.name}Response xmlns=\"#{xmlns(config.service)}\">\n")
          xml.push("  </#{operation.name}Result>\n")
          xml.push("</#{operation.name}Response>\n")
          xml.join
        end

        def xmlns(service)
          service.traits.dig('smithy.api#xmlNamespace', 'uri')
        end
      end
    end
  end
end
