module Aws
  module Stubbing
    module Protocols
      class Json

        def stub_data(api, operation, data)
          resp = Seahorse::Client::Http::Response.new
          resp.status_code = 200
          resp.headers["Date"] = Time.now.utc.httpdate
          resp.headers["Content-Type"] = content_type(api)
          resp.headers["X-Amzn-Requestid"] = "response-stub"
          resp.body = build_body(operation, data)
          resp
        end

        def stub_error(code, message)
          resp = new_http_response(400)
          resp.body = Json.dump({
            code: code,
            message: message,
          })
          resp
        end

        private

        def content_type(api)
          "application/x-amz-json-#{api.metadata['jsonVerison']}"
        end

        def build_body(operation, data)
          if operation.output
            Aws::Json::Builder.new(operation.output).to_json(data)
          else
            '{}'
          end
        end

      end
    end
  end
end
