require 'aws-sdk-apigateway/plugins/apply_content_type_header'

module Aws
  module APIGateway
    class Client
      add_plugin(Plugins::ApplyContentTypeHeader)
    end
  end
end
