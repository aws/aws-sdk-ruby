module Aws
  module Stubbing
    module Protocols
      class EC2

        def stub_response(api, operation, data)
          resp = Seahorse::Client::Http::Response.new
          resp.status_code = 200
          resp.body = build_body(api, operation, data)
          resp.headers['Content-Length'] = resp.body.size
          resp.headers['Content-Type'] = 'text/xml;charset=UTF-8'
          resp.headers['Server'] = 'AmazonEC2'
          resp
        end

        private

        def build_body(api, operation, data)
          xml = []
          if rules = operation.output
            Xml::Builder.new(operation.output, target:xml).to_xml(data)
            xml.shift
            xml.pop
          end
          xmlns = "http://ec2.amazonaws.com/doc/#{api.version}/".inspect
          xml.unshift("  <requestId>stubbed-request-id</requestId>")
          xml.unshift("<#{operation.name}Response xmlns=#{xmlns}>\n")
          xml.push("</#{operation.name}Response>\n")
          xml.join
        end

      end
    end
  end
end
