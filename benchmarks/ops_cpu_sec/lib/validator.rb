# frozen_string_literal: true

require_relative 'validator/values'
require_relative 'validator/request_checks'
require_relative 'validator/response_checks'

module OpsCpuSec
  # Checks, for every case, that the timed call does what the model says:
  #
  # * the real pipeline ran: SigV4 Authorization header, host from the
  #   endpoint rule set, method and URI from the model;
  # * request cases: the bytes sent (body, headers, query string) carry
  #   exactly the model's params, on the second call too (no spent streams);
  # * response cases: the parsed output carries every value of the canned
  #   body and of the headers bound to output members, and nothing else.
  module Validator
    EXPECTED_HOST = 'example.com'
    AUTH = %r{\AAWS4-HMAC-SHA256 Credential=akid/\d{8}/us-east-1/example/aws4_request, }.freeze

    # Requests and responses of two calls of one case.
    Calls = Struct.new(:sent, :responses)
    private_constant :Calls

    class << self
      def run(cases, transport = StubTransport)
        failures = cases.count do |test_case|
          transport.prepare(test_case)
          !report(test_case)
        end
        puts "#{cases.size - failures}/#{cases.size} cases valid"
        failures.zero?
      end

      # Prints the case's result; returns true when it is valid.
      def report(test_case)
        errors, summary = check(test_case)
        puts "#{errors.empty? ? 'ok  ' : 'FAIL'} #{test_case.id}#{summary}"
        errors.each { |error| puts "       - #{error}" }
        errors.empty?
      rescue StandardError => e
        puts "FAIL #{test_case.id}\n       - #{e.class}: #{e.message}\n         " \
             "#{e.backtrace.first(3).join("\n         ")}"
        false
      end

      # Returns [errors, summary].
      def check(test_case)
        before = Marshal.load(Marshal.dump(test_case.params))
        calls = call_twice(test_case)
        errors = call_errors(test_case, before, calls)
        req, headers, body = calls.sent.last
        errors.concat(check_pipeline(test_case, req, headers))
        if test_case.kind == 'request'
          errors.concat(RequestChecks.check(test_case, req, headers, body))
          [errors, " (sent #{body.bytesize} B body, #{headers.size} headers)"]
        else
          response_errors, summary = ResponseChecks.check(test_case, calls.responses)
          [errors.concat(response_errors), summary]
        end
      end

      def call_twice(test_case)
        sent = []
        OpsCpuSec.capture = ->(req, headers, body) { sent << [req, headers, body] }
        responses = Array.new(2) { test_case.client.public_send(test_case.method_name, test_case.params) }
        Calls.new(sent, responses)
      ensure
        OpsCpuSec.capture = nil
      end

      def call_errors(test_case, before, calls)
        errors = []
        # (Time params may be converted to UTC in place; == compares instants.)
        errors << 'params were changed by the call' unless test_case.params == before
        errors << "expected 2 requests, got #{calls.sent.size}" unless calls.sent.size == 2
        first, last = calls.sent.map { |(_, _, body)| body }
        errors << "1st and 2nd request bodies differ (#{first.bytesize} vs #{last.bytesize} B)" if first != last
        errors
      end

      def check_pipeline(test_case, req, headers)
        errors = []
        endpoint = req.endpoint
        errors << "host #{endpoint.host}" unless endpoint.host == EXPECTED_HOST && endpoint.scheme == 'https'
        errors << "Authorization #{headers['authorization'].inspect}" unless headers['authorization']&.match?(AUTH)
        errors << 'no x-amz-date' unless headers['x-amz-date']
        want_method = test_case.spec['method']
        errors << "method #{req.http_method} != #{want_method}" if want_method && req.http_method != want_method
        uri = expected_uri(test_case)
        errors << "uri #{endpoint.request_uri} != #{uri}" if uri && endpoint.request_uri != uri
        errors
      end

      # The model's rpcv2Cbor tests give uri "/"; the protocol's path is
      # /service/<service>/operation/<operation>.
      def expected_uri(test_case)
        return test_case.spec['uri'] unless test_case.protocol == 'rpcv2Cbor'

        service = test_case.client.config.api.metadata['targetPrefix']
        "/service/#{service}/operation/#{test_case.operation}"
      end
    end
  end
end
