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
          builder = Smithy::Xml::DocBuilder.new(target: xml, indent: '  ')
          builder.node("#{operation.name}Response", xmlns: xmlns(config.service)) do
            ref = operation.output
            ref.member_name = "#{operation.name}Result"
            Smithy::Xml::Builder.new(ref, target: xml, pad: '  ').to_xml(data)
            builder.node('ResponseMetadata') do
              builder.node('RequestId', 'stubbed-request-id')
            end
          end
          xml.join
        end

        def xmlns(service)
          return unless service.traits.key?('smithy.api#xmlNamespace')

          service.traits['smithy.api#xmlNamespace']['uri']
        end
      end
    end
  end
end
