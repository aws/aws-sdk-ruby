# frozen_string_literal: true

# In-process transport for the ops/CPU-sec benchmark.
module OpsCpuSec
  # Canned response for one case, as bytes on the wire.
  Canned = Struct.new(:status, :headers, :body)

  class << self
    # Validation hook, called with each sent request; nil while timing.
    attr_accessor :capture
  end

  # Replaces the Net::HTTP send handler. Like the real handler, it passes
  # the request headers through, streams the whole request body, and
  # signals the response headers, body and completion.
  class StubSendHandler < Seahorse::Client::Handler
    CHUNK = 16 * 1024

    def call(context)
      req = context.http_request
      headers = request_headers(req)
      capture = OpsCpuSec.capture
      sent = read_body(req.body, capture)
      capture&.call(req, headers, sent)
      respond(context.http_response, context.config.ocs_response)
      Seahorse::Client::Response.new(context: context)
    end

    private

    def request_headers(req)
      headers = { 'accept-encoding' => '' }
      req.headers.each_pair { |name, value| headers[name] = value }
      headers
    end

    # Returns the bytes read, or the body itself when capturing.
    def read_body(body, capture)
      # IO-like bodies have no #empty?
      return '' if body.respond_to?(:size) && body.size.zero? # rubocop:disable Style/ZeroLengthPredicate

      buf = capture ? String.new(encoding: Encoding::BINARY) : nil
      bytes = 0
      while (chunk = body.read(CHUNK))
        bytes += chunk.bytesize
        buf&.<< chunk
      end
      buf || bytes
    end

    def respond(resp, canned)
      resp.signal_headers(canned.status, canned.headers)
      resp.signal_data(canned.body)
      length = resp.headers['content-length']
      raise "content-length #{length} != body #{canned.body.bytesize}" if length && length.to_i != canned.body.bytesize

      resp.signal_done
    end
  end

  # Installs StubSendHandler as the client's send handler.
  class StubSendPlugin < Seahorse::Client::Plugin
    option(:ocs_response, default: nil, doc_type: 'OpsCpuSec::Canned', docstring: 'Canned stub response.')
    handler(StubSendHandler, step: :send)
  end
end
