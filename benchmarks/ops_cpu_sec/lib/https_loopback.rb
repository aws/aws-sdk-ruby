# frozen_string_literal: true

require 'net/http'
require 'socket'

module OpsCpuSec
  # Sends every call through the SDK's own Net::HTTP send handler to a
  # fixture server on loopback, for example the smithy-java e2e benchmark
  # FixtureServer (https://github.com/smithy-lang/smithy-java, under
  # benchmarks/e2e-benchmarks). The server must:
  #
  # * serve HTTPS (HTTP/1.1, keep-alive) on the data address and answer every
  #   request with the current fixture;
  # * accept `POST /fixture` on the plaintext control address, with a complete
  #   HTTP/1.1 response as the body, answering 204.
  #
  # Only the socket is redirected: endpoint resolution, the URL, the Host
  # header, TLS SNI and SigV4 signing stay those of the real endpoint. The
  # server's certificate is not verified (it is expected to be self-signed).
  class HttpsLoopback
    REASONS = { 200 => 'OK', 204 => 'No Content' }.freeze
    CONTENT_TYPES = {
      'awsJson1_0' => 'application/x-amz-json-1.0',
      'rpcv2Cbor' => 'application/cbor',
      'awsQuery' => 'text/xml',
      'restJson1' => 'application/json',
      'restXml' => 'application/xml'
    }.freeze

    # Dials the loopback server for TLS connections while Net::HTTP still
    # uses the real host for SNI, the Host header and connection reuse.
    module Redirect
      def connect
        target = OpsCpuSec::HttpsLoopback.target
        return super unless target && use_ssl?

        self.ipaddr = target[0]
        real_port = @port
        @port = target[1]
        begin
          super
        ensure
          @port = real_port
        end
      end
    end

    class << self
      # [host, port] that TLS connections are sent to, or nil.
      attr_accessor :target
    end

    attr_reader :server, :control

    # server and control are "host:port" strings.
    def initialize(server:, control:)
      @server = parse(server)
      @control = parse(control)
    end

    def name
      'https'
    end

    def description
      "Net::HTTP (the SDK's send handler), HTTP/1.1 over TLS with keep-alive, sockets redirected to " \
        "#{@server.join(':')}; certificate not verified"
    end

    def install
      HttpsLoopback.target = @server
      Net::HTTP.prepend(Redirect) unless Net::HTTP.ancestors.include?(Redirect)
    end

    def client_options(_canned, capture: false)
      { ssl_verify_peer: false, plugins: capture ? [CapturePlugin] : [] }
    end

    # Posts the case's canned response to the control address.
    def prepare(test_case)
      fixture = raw_response(test_case.canned, test_case.protocol)
      Net::HTTP.start(*@control) do |http|
        resp = http.post('/fixture', fixture, 'Host' => 'fixture', 'Connection' => 'close')
        unless resp.code == '204'
          raise "fixture control #{@control.join(':')} answered #{resp.code} for #{test_case.id}"
        end
      end
    end

    # A complete HTTP/1.1 response: the canned status, headers and body, with
    # Content-Length always set and a Content-Type for the protocol if the case
    # has none.
    def raw_response(canned, protocol)
      headers = canned.headers.reject { |name, _| name.casecmp?('content-length') }
      unless headers.keys.any? { |name| name.casecmp?('content-type') }
        headers = { 'Content-Type' => CONTENT_TYPES.fetch(protocol) }.merge(headers)
      end
      head = ["HTTP/1.1 #{canned.status} #{REASONS.fetch(canned.status, 'Status')}"]
      head.concat(headers.map { |name, value| "#{name}: #{value}" })
      head << "Content-Length: #{canned.body.bytesize}"
      "#{head.join("\r\n")}\r\n\r\n".b + canned.body
    end

    private

    def parse(address)
      host, port = address.split(':', 2)
      raise ArgumentError, "expected host:port, got #{address.inspect}" unless host && port.to_s.match?(/\A\d+\z/)

      [host, Integer(port)]
    end
  end

  # Captures each request just before it is sent (for --validate with a
  # transport other than the stub).
  class CaptureHandler < Seahorse::Client::Handler
    def call(context)
      capture = OpsCpuSec.capture
      if capture
        req = context.http_request
        body = req.body.read.to_s.b
        req.body.rewind
        headers = {}
        req.headers.each_pair { |name, value| headers[name] = value }
        capture.call(req, headers, body)
      end
      @handler.call(context)
    end
  end

  # Installs CaptureHandler after signing, right before the send handler.
  class CapturePlugin < Seahorse::Client::Plugin
    handler(CaptureHandler, step: :sign, priority: 0)
  end
end
