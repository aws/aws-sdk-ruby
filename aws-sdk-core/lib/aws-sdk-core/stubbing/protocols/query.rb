module Aws
  module Stubbing
    module Protocols
      class Query

        def stub_data(api, operation, data)
          resp = Seahorse::Client::Http::Response.new
          resp.status_code = 200
          resp.body = build_body(api, operation, data)
          resp.headers['Content-Length'] = resp.body.size
          resp.headers['Date'] = Time.now.utc.httpdate
          resp.headers['Content-Type'] = 'text/xml'
          resp
        end

        private

        def build_body(api, operation, data)
          xml = []
          builder = Aws::Xml::DocBuilder.new(target: xml, indent: '  ')
          builder.node(operation.name + 'Response') do
            if rules = operation.output
              rules.location_name = operation.name + 'Result'
              Xml::Builder.new(rules, target:xml, pad:'  ').to_xml(data)
            end
            builder.node('ResponseMetadata') do
              builder.node('RequestId', 'stubbed-response')
            end
          end
          xml.join
        end

      end
    end
  end
end
