module Aws
  module Stubbing
    module Protocols
      class RestXml

        def stub_data(api, operation, data)
          resp = Seahorse::Client::Http::Response.new
          resp.status_code = 200
        end

      end
    end
  end
end
