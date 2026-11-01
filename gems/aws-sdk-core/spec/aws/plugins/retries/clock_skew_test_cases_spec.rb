# frozen_string_literal: true

require_relative '../../../spec_helper'
require 'socket'

module Aws
  module Plugins
    # Shared clock skew correction test cases, run through a real client with a
    # fake clock: the clock reads the attempt's send time while the request is
    # signed, and its receive time when the response headers arrive.
    describe 'clock skew correction test cases' do
      # Builds an attempt; times are HH:MM:SS on 2026-01-01 UTC.
      def self.attempt(send, receive, signing, status, date, error_code = nil, age: nil)
        time = ->(hms) { Time.parse("2026-01-01T#{hms}Z").utc }
        headers = {}
        headers['Date'] = "Thu, 01 Jan 2026 #{date} GMT" if date
        headers['Age'] = age if age
        {
          send: time.call(send), receive: time.call(receive), signing: time.call(signing),
          status: status, headers: headers, error_code: error_code
        }
      end

      def self.operation(initial_skew, expected_skew, outcome, attempts, max_attempts: nil)
        { initial_skew: initial_skew, expected_skew: expected_skew, outcome: outcome,
          attempts: attempts, max_attempts: max_attempts }
      end

      TEST_CASES = {
        'Clocks agree, request succeeds on first attempt, ClientSkew updated to 0' => [
          operation(0, 0, :success, [attempt('00:00:00', '00:00:02', '00:00:00', 200, '00:00:02')])
        ],
        'Long-running request does not attribute server processing time to ClientSkew' => [
          operation(0, 0, :success, [attempt('00:00:00', '00:10:20', '00:00:00', 200, '00:10:20')]),
          operation(0, 0, :success, [attempt('00:10:21', '00:10:22', '00:10:21', 200, '00:10:22')])
        ],
        'Response latency is attributed to ClientSkew' => [
          operation(0, -1, :success, [attempt('00:00:00', '00:00:02', '00:00:00', 200, '00:00:01')])
        ],
        'Definite clock skew error on first attempt, retry succeeds, ClientSkew persists to next operation' => [
          operation(0, 300, :success, [
            attempt('00:00:00', '00:00:02', '00:00:00', 403, '00:05:02', 'RequestTimeTooSkewed'),
            attempt('00:00:02', '00:00:04', '00:05:02', 200, '00:05:04')
          ]),
          operation(300, 300, :success, [attempt('00:01:00', '00:01:02', '00:06:00', 200, '00:06:02')])
        ],
        'Clock skew error with no retry budget still updates ClientSkew' => [
          operation(0, 300, :error, [
            attempt('00:00:00', '00:00:02', '00:00:00', 403, '00:05:02', 'RequestTimeTooSkewed')
          ], max_attempts: 1)
        ],
        'Delayed response exceeding trust threshold does not update ClientSkew' => [
          operation(0, 0, :success, [attempt('00:00:00', '00:16:00', '00:00:00', 200, '00:10:00')]),
          operation(0, 300, :success, [attempt('00:17:00', '00:17:02', '00:17:00', 200, '00:22:02')])
        ],
        'Stale ClientSkew is silently corrected by a successful response without error or retry' => [
          operation(300, 0, :success, [attempt('00:00:00', '00:00:02', '00:05:00', 200, '00:00:02')])
        ],
        'Possible clock skew error with skew below detection threshold is not retried as clock skew' => [
          operation(0, 120, :error, [
            attempt('00:00:00', '00:00:02', '00:00:00', 400, '00:02:02', 'InvalidSignatureException')
          ])
        ],
        'Possible clock skew error with skew above detection threshold is retried and succeeds' => [
          operation(0, 300, :success, [
            attempt('00:00:00', '00:00:02', '00:00:00', 400, '00:05:02', 'InvalidSignatureException'),
            attempt('00:00:02', '00:00:04', '00:05:02', 200, '00:05:04')
          ])
        ],
        'Clock skew error with no Date header is not treated as a candidate, ClientSkew is not updated' => [
          operation(0, 0, :error, [
            attempt('00:00:00', '00:00:02', '00:00:00', 403, nil, 'RequestTimeTooSkewed')
          ])
        ],
        'Cached response with Age header does not update ClientSkew' => [
          operation(0, 0, :success, [
            attempt('16:51:00', '16:51:02', '16:51:00', 200, '12:03:01', age: '17280')
          ]),
          operation(0, 300, :success, [attempt('16:51:10', '16:51:12', '16:51:10', 200, '16:56:12')])
        ],
        'Cached response with Age header does not poison ClientSkew even when followed by a clock skew error' => [
          operation(0, 0, :success, [
            attempt('16:51:00', '16:51:02', '16:51:00', 200, '12:03:01', age: '17280')
          ]),
          operation(0, 0, :success, [attempt('16:51:10', '16:51:12', '16:51:10', 200, '16:51:12')])
        ]
      }.freeze

      let(:client) do
        Aws::STS::Client.new(
          region: 'us-east-1',
          credentials: Credentials.new('akid', 'secret'),
          retry_mode: 'standard'
        )
      end
      let(:endpoint) { 'https://sts.us-east-1.amazonaws.com' }
      let(:clock_skew) { client.config.clock_skew }

      # Fake clock and the attempts of the operation being run; shared with the
      # send handler, which does not run in the example's scope.
      let(:state) { { now: Time.now.utc } }

      before do
        allow(Kernel).to receive(:sleep)
        state = self.state
        allow(Time).to receive(:now) { state[:now].getlocal }
        body_for = method(:body_for)
        client.handle(step: :send) do |context|
          attempts = state[:attempts]
          signing_times = state[:signing_times]
          attempt = attempts[signing_times.size]
          signing_times << context.http_request.headers['X-Amz-Date']
          state[:now] = attempt[:receive]
          context.http_response.signal_headers(attempt[:status], attempt[:headers])
          context.http_response.signal_data(body_for.call(attempt))
          context.http_response.signal_done
          # The clock moves on before the response is processed, so the
          # correction must come from the time the headers arrived.
          state[:now] = attempts[signing_times.size]&.dig(:send) || attempt[:receive] + 5
          Seahorse::Client::Response.new(context: context)
        end
      end

      def body_for(attempt)
        if attempt[:error_code]
          '<ErrorResponse><Error><Type>Sender</Type>' \
            "<Code>#{attempt[:error_code]}</Code><Message>m</Message></Error>" \
            '<RequestId>id</RequestId></ErrorResponse>'
        else
          '<GetCallerIdentityResponse><GetCallerIdentityResult>' \
            '<Account>123456789012</Account></GetCallerIdentityResult>' \
            '</GetCallerIdentityResponse>'
        end
      end

      # Runs one operation; returns its outcome and each attempt's signing time.
      def run_operation(operation)
        state[:attempts] = operation[:attempts]
        state[:signing_times] = []
        state[:now] = operation[:attempts].first[:send]
        client.config.max_attempts = operation[:max_attempts] || 3
        client.get_caller_identity
        [:success, state[:signing_times]]
      rescue Aws::STS::Errors::ServiceError
        [:error, state[:signing_times]]
      end

      TEST_CASES.each do |description, operations|
        it description do
          operations.each_with_index do |operation, i|
            if i.zero?
              clock_skew.send(:set_clock_correction, endpoint, operation[:initial_skew])
            end
            expect(clock_skew.clock_correction(endpoint)).to eq(operation[:initial_skew])

            outcome, signing_times = run_operation(operation)

            expected_signing = operation[:attempts].map { |a| a[:signing].strftime('%Y%m%dT%H%M%SZ') }
            expect(signing_times).to eq(expected_signing)
            expect(outcome).to eq(operation[:outcome])
            expect(clock_skew.clock_correction(endpoint)).to eq(operation[:expected_skew])
          end
        end
      end
    end

    # Runs against a loopback server over the real Net::HTTP transport. The
    # server sends a Date one hour ahead, then holds the body back, so the
    # correction is about +3600s only if it uses the time the headers arrived.
    describe 'clock skew correction over Net::HTTP' do
      body_delay = 2

      # WebMock's Net::HTTP adapter reads the whole body before yielding the
      # response, so turn it off to exercise the real transport.
      before { WebMock.disable! }
      after { WebMock.enable! }

      define_method(:serve_once) do |server, status, body|
        Thread.new do
          socket = server.accept
          length = 0
          while (line = socket.gets) && line != "\r\n"
            length = line.split(':', 2).last.to_i if line =~ /\Acontent-length:/i
          end
          socket.read(length)
          socket.write(
            "HTTP/1.1 #{status} X\r\nDate: #{(Time.now.utc + 3600).httpdate}\r\n" \
            "Content-Type: text/xml\r\nContent-Length: #{body.bytesize}\r\n" \
            "Connection: close\r\n\r\n"
          )
          socket.flush
          sleep(body_delay)
          socket.write(body)
          socket.close
        end
      end

      {
        200 => '<GetCallerIdentityResponse><GetCallerIdentityResult>' \
               '<Account>123456789012</Account></GetCallerIdentityResult>' \
               '</GetCallerIdentityResponse>',
        403 => '<ErrorResponse><Error><Type>Sender</Type><Code>RequestTimeTooSkewed</Code>' \
               '<Message>m</Message></Error><RequestId>id</RequestId></ErrorResponse>'
      }.each do |status, body|
        it "uses the time the headers arrived for a #{status} response" do
          server = TCPServer.new('127.0.0.1', 0)
          endpoint = "http://127.0.0.1:#{server.addr[1]}"
          thread = serve_once(server, status, body)
          client = Aws::STS::Client.new(
            region: 'us-east-1', endpoint: endpoint, retry_mode: 'standard',
            max_attempts: 1, credentials: Credentials.new('akid', 'secret')
          )

          begin
            client.get_caller_identity
          rescue Aws::STS::Errors::RequestTimeTooSkewed
            raise unless status == 403
          end

          # With the body-done time this would be about 3600 - body_delay.
          expect(client.config.clock_skew.clock_correction(endpoint)).to be_within(1).of(3600)
        ensure
          thread&.join
          server&.close
        end
      end
    end
  end
end
