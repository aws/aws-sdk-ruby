# http://docs.amazonwebservices.com/AWSRubySDK/latest/

require "em-synchrony"
require "em-synchrony/em-http"

module AWS
  module Core
    module Http
  
      # An EM-Synchrony implementation for Fiber based asynchronous application
      #
      # In Rails add the following to you various environment files:
      #
      # AWS.config(
      # :http_handler => AWS::Http::EMHttpHandler.new(
      # :proxy => {:host => "http://myproxy.com",:port => 80}
      # )
      # )
      #
      class EMHttpHandler
  
        # @return [Hash] The default options to send to EM-Synchrony on each
        # request.
        attr_reader :default_request_options
  
        # Constructs a new HTTP handler using EM-Synchrony.
        #
        # @param [Hash] options Default options to send to HTTParty on
        # each request. These options will be sent to +get+, +post+,
        # +head+, +put+, or +delete+ when a request is made. Note
        # that +:body+, +:head+, +:parser+, and +:ssl_ca_file+ are
        # ignored. If you need to set the CA file, you should use the
        # +:ssl_ca_file+ option to {AWS.config} or
        # {AWS::Configuration} instead.
        def initialize options = {}
          @default_request_options = options
        end

  
        def handle(request, response)
          #puts "Using EM!!!!"
          opts = default_request_options.merge({
              :body => request.body
            })
  
          if request.proxy_uri     
            opts[:proxy] = {:host => request.proxy_uri.host,:port => request.proxy_uri.port}
          end
  
          if request.use_ssl?
            url = "https://#{request.host}:443#{request.uri}"
            if request.ssl_verify_peer?
              opts[:private_key_file] = request.ssl_ca_file 
              opts[:cert_chain_file]= request.ssl_ca_file 
            end
            request.ssl_verify_peer?
          else
            url = "http://#{request.host}#{request.uri}"
          end
  
          # get, post, put, delete, head
          method = request.http_method.downcase
  
          # Net::HTTP adds this header for us when the body is
          # provided, but it messes up signing
          headers = { 'content-type' => '' }
  
          # headers must have string values (net http calls .strip on them)
          request.headers.each_pair do |key,value|
            headers[key] = value.to_s
          end
  
          opts[:head] = headers
  
          begin
            http_response = nil
            if EM::reactor_running?
              http = EM::HttpRequest.new(url).send(method, opts)
              http.callback { http_response = http}
              http.errback { puts "#{method} to AWS failed." }
            else
              EM.synchrony do
                http = EM::HttpRequest.new(url).send(method, opts)
                http.callback { http_response = http}
                http.errback { puts "#{method} to AWS failed." }
                EM.stop
              end
            end
          rescue Timeout::Error, Errno::ETIMEDOUT => e
            response.timeout = true
          else
            response.body = http_response.response
            response.status = http_response.response_header.status.to_i
            response.headers = http_response.response_header
          end
        end
      end
    end
  end

  # We move this from AWS::Http to AWS::Core::Http, but we want the
  # previous default handler to remain accessible from its old namesapce
  # @private
  module Http
    class EMHttpHandler < Core::Http::EMHttpHandler; end
  end

end