module AWS
  module Core
    module LogClient
      def log_client
        client.with_http_handler do |request, response|
          $stderr.puts request.inspect
          super(request, response)
          $stderr.puts response.inspect
        end
      end
    end
  end
end