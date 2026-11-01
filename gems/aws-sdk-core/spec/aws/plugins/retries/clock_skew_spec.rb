# frozen_string_literal: true

require_relative '../../../spec_helper'
require_relative '../../../retry_errors_helper'

module Aws
  module Plugins
    describe Retries::ClockSkew do
      ##
      # @param endpoint [URI, String] the endpoint the request points at
      # @param server_time [String, nil] the timestamp returned by the server
      def build_context(endpoint, server_time)
        build_context_with_headers(endpoint, 'date' => server_time)
      end

      # Builds a context whose response carries arbitrary headers (e.g. 'age')
      # and, optionally, the time the response headers were received.
      def build_context_with_headers(endpoint, headers, received_at = nil)
        response = double('response', headers: headers)
        request  = double('request', endpoint: endpoint)
        metadata = { clock_skew_response_received_at: received_at }

        double('context', http_response: response, http_request: request, metadata: metadata)
      end

      subject { Retries::ClockSkew.new }

      let(:endpoint)    { 'example_endpoint' }
      let(:context)     { build_context(endpoint, server_time) }
      let(:server_time) { Time.now.utc.to_s }

      describe '#initialize' do
        it 'is initialized with 0 correction' do
          expect(subject.clock_correction(endpoint)).to be 0
        end

        it 'is initialized with nil skew' do
          expect(subject.estimated_skew(endpoint)).to be_nil
        end
      end

      describe '#clock_correction' do
        [nil, '', '   '].each do |value|
          it "handles #{value.inspect} as endpoint" do
            expect(subject.clock_correction(value)).to eq(0)
          end
        end
      end

      describe '#clock_skewed?' do
        context 'server time is not set' do
          let(:server_time) { nil }
          it { expect(subject.clock_skewed?(context)).to be false }
        end

        context 'server time is not parsable' do
          let(:server_time) { 'bogus time' }
          it { expect(subject.clock_skewed?(context)).to be false }
        end

        context 'server time matches the clients time' do
          let(:server_time) { Time.now.utc.to_s }
          it { expect(subject.clock_skewed?(context)).to be false }
        end

        context 'server time is off by more than the threshold' do
          let(:server_time) { (Time.now.utc - 1000).to_s }
          it { expect(subject.clock_skewed?(context)).to be true }
        end
      end

      describe '#estimated_skew' do
        [nil, '', '   '].each do |value|
          it "handles #{value.inspect} as endpoint" do
            expect(subject.estimated_skew(value)).to be_nil
          end
        end
      end

      describe '#update_clock_correction' do
        let(:server_time) { (Time.now.utc + 1000).to_s }

        context 'server time is not set' do
          let(:server_time) { nil }
          it 'does not update the corrections' do
            subject.update_clock_correction(context)
            expect(subject.clock_correction(endpoint)).to be 0
          end
        end

        context 'server time matches the clients time' do
          let(:server_time) { Time.now.utc.to_s }
          it 'records a near-zero correction (unconditional recording)' do
            subject.update_clock_correction(context)
            expect(subject.clock_correction(endpoint)).to be_within(5).of(0)
          end
        end

        context 'a previously stored correction is healed by a healthy response' do
          it 'overwrites a stale correction with a near-zero value' do
            skewed = build_context(endpoint, (Time.now.utc + 1000).to_s)
            subject.update_clock_correction(skewed)
            expect(subject.clock_correction(endpoint)).to be_within(5).of(1000)

            healthy = build_context(endpoint, Time.now.utc.to_s)
            subject.update_clock_correction(healthy)
            expect(subject.clock_correction(endpoint)).to be_within(5).of(0)
          end
        end

        context 'server time is off by more than the threshold' do
          it 'updates the corrections' do
            subject.update_clock_correction(context)
            expect(subject.clock_correction(endpoint)).to be_within(5).of(1000)
          end

          it 'does not update corrections for other endpoints' do
            subject.update_clock_correction(context)
            expect(subject.clock_correction('other_endpoint')).to be 0
          end
        end

        context 'with malformed URI endpoints' do
          let(:malformed_endpoints) { ['ht!tp://invalid', '://missing-scheme', 'https://[invalid-ipv6'] }

          before do
            malformed_endpoints.each do |endpoint|
              subject.update_clock_correction(build_context(endpoint, server_time))
            end
          end

          it 'handles malformed URIs gracefully' do
            malformed_endpoints.each do |endpoint|
              expect(subject.clock_correction(endpoint)).to be_within(5).of(1000)
            end
          end

          it 'tracks the endpoints as is' do
            expect(subject.instance_variable_get(:@endpoint_clock_corrections).keys).to match_array(malformed_endpoints)
          end
        end

        context 'with incomplete URIs as separate endpoints' do
          let(:incomplete_endpoints) { ['/just/a/path', 'bare-hostname', 'example.com'] }

          before do
            incomplete_endpoints.each do |endpoint|
              subject.update_clock_correction(build_context(endpoint, server_time))
            end
          end

          it 'handles incomplete URIs as separate endpoints' do
            incomplete_endpoints.each do |endpoint|
              expect(subject.clock_correction(endpoint)).to be_within(5).of(1000)
            end
          end

          it 'tracks the endpoints as is' do
            expect(subject.instance_variable_get(:@endpoint_clock_corrections).keys)
              .to match_array(incomplete_endpoints)
          end
        end

        context 'with default ports' do
          let(:port_variations) do
            [
              'https://s3.amazonaws.com/bucket/key',
              URI('https://s3.amazonaws.com:443/bucket/other'),
              'http://example.com/path',
              URI('http://example.com:80/different')
            ]
          end

          let(:tracked_endpoints) { %w[https://s3.amazonaws.com:443 http://example.com:80] }

          before do
            port_variations.each do |endpoint|
              subject.update_clock_correction(build_context(endpoint, server_time))
            end
          end

          it 'tracks to correct correction for other endpoint per server', :aggregate_failures do
            expect(subject.clock_correction('https://s3.amazonaws.com/new/path')).to be_within(5).of(1000)
            expect(subject.clock_correction('http://example.com/new/path')).to be_within(5).of(1000)
          end

          it 'tracks the endpoints as is' do
            expect(subject.instance_variable_get(:@endpoint_clock_corrections).keys).to match_array(tracked_endpoints)
          end
        end

        context 'with IPv6 addresses' do
          let(:ipv6_endpoints) do
            [
              'https://[2001:db8::1]/path',
              URI('https://[2001:db8::1]/other/path'),
              'https://[2001:db8::1]:8080/different',
              URI('https://[2001:db8::1]:8080/very/different')
            ]
          end

          let(:tracked_endpoints) { ['https://[2001:db8::1]:443', 'https://[2001:db8::1]:8080'] }

          before do
            ipv6_endpoints.each do |endpoint|
              subject.update_clock_correction(build_context(endpoint, server_time))
            end
          end

          it 'tracks to correct correction for other endpoint per server', :aggregate_failures do
            expect(subject.clock_correction('https://[2001:db8::1]/new')).to be_within(5).of(1000)
            expect(subject.clock_correction('https://[2001:db8::1]:8080/new')).to be_within(5).of(1000)
          end

          it 'tracks the endpoints as is' do
            expect(subject.instance_variable_get(:@endpoint_clock_corrections).keys).to match_array(tracked_endpoints)
          end
        end

        context 'with case variations in scheme and host' do
          let(:case_endpoints) { ['HTTP://EXAMPLE.COM/path', 'http://EXAMPLE.COM/other', 'http://example.com/path'] }

          before do
            case_endpoints.each do |endpoint|
              subject.update_clock_correction(build_context(endpoint, server_time))
            end
          end

          it 'handles the endpoints correctly' do
            case_endpoints.each do |endpoint|
              expect(subject.clock_correction(endpoint)).to be_within(5).of(1000)
            end
          end

          it 'treats them as different endpoints while it consolidates the scheme' do
            expect(subject.instance_variable_get(:@endpoint_clock_corrections).keys).to contain_exactly(
              'http://EXAMPLE.COM:80', 'http://example.com:80'
            )
          end
        end
      end

      describe '#update_estimated_skew' do
        let(:server_time) { (Time.now.utc + 1000).to_s }

        context 'server time is not set' do
          let(:server_time) { nil }
          it 'does not update the skew' do
            subject.update_estimated_skew(context)
            expect(subject.estimated_skew(endpoint)).to be nil
          end
        end

        context 'server time matches the clients time' do
          let(:server_time) { Time.now.utc.to_s }
          it 'updates the skew' do
            subject.update_estimated_skew(context)
            expect(subject.estimated_skew(endpoint)).to be_a(Float)
          end
        end

        context 'server time is off by more than the threshold' do
          it 'updates the skew' do
            subject.update_estimated_skew(context)
            expect(subject.estimated_skew(endpoint)).to be_within(5).of(1000)
          end

          it 'does not update the skew for other endpoints' do
            subject.update_estimated_skew(context)
            expect(subject.estimated_skew('other_endpoint')).to be nil
          end
        end

        context 'with malformed URI endpoints' do
          let(:malformed_endpoints) { ['ht!tp://invalid', '://missing-scheme', 'https://[invalid-ipv6'] }

          before do
            malformed_endpoints.each do |endpoint|
              subject.update_estimated_skew(build_context(endpoint, server_time))
            end
          end

          it 'handles malformed URIs gracefully' do
            malformed_endpoints.each do |endpoint|
              expect(subject.estimated_skew(endpoint)).to be_within(5).of(1000)
            end
          end

          it 'tracks the endpoints as is' do
            expect(subject.instance_variable_get(:@endpoint_estimated_skews).keys).to match_array(malformed_endpoints)
          end
        end

        context 'with incomplete URIs as separate endpoints' do
          let(:incomplete_endpoints) { ['/just/a/path', 'bare-hostname', 'example.com'] }

          before do
            incomplete_endpoints.each do |endpoint|
              subject.update_estimated_skew(build_context(endpoint, server_time))
            end
          end

          it 'handles incomplete URIs as separate endpoints' do
            incomplete_endpoints.each do |endpoint|
              expect(subject.estimated_skew(endpoint)).to be_within(5).of(1000)
            end
          end

          it 'tracks the endpoints as is' do
            expect(subject.instance_variable_get(:@endpoint_estimated_skews).keys).to match_array(incomplete_endpoints)
          end
        end

        context 'with default ports' do
          let(:port_variations) do
            [
              'https://s3.amazonaws.com/bucket/key',
              URI('https://s3.amazonaws.com:443/bucket/other'),
              'http://example.com/path',
              URI('http://example.com:80/different')
            ]
          end

          let(:tracked_endpoints) { %w[https://s3.amazonaws.com:443 http://example.com:80] }

          before do
            port_variations.each do |endpoint|
              subject.update_estimated_skew(build_context(endpoint, server_time))
            end
          end

          it 'tracks to correct correction for other endpoint per server', :aggregate_failures do
            expect(subject.estimated_skew('https://s3.amazonaws.com/new/path')).to be_within(5).of(1000)
            expect(subject.estimated_skew('http://example.com/new/path')).to be_within(5).of(1000)
          end

          it 'tracks the endpoints as is' do
            expect(subject.instance_variable_get(:@endpoint_estimated_skews).keys).to match_array(tracked_endpoints)
          end
        end

        context 'with IPv6 addresses' do
          let(:ipv6_endpoints) do
            [
              'https://[2001:db8::1]/path',
              URI('https://[2001:db8::1]/other/path'),
              'https://[2001:db8::1]:8080/different',
              URI('https://[2001:db8::1]:8080/very/different')
            ]
          end

          let(:tracked_endpoints) { ['https://[2001:db8::1]:443', 'https://[2001:db8::1]:8080'] }

          before do
            ipv6_endpoints.each do |endpoint|
              subject.update_estimated_skew(build_context(endpoint, server_time))
            end
          end

          it 'tracks to correct correction for other endpoint per server', :aggregate_failures do
            expect(subject.estimated_skew('https://[2001:db8::1]/new')).to be_within(5).of(1000)
            expect(subject.estimated_skew('https://[2001:db8::1]:8080/new')).to be_within(5).of(1000)
          end

          it 'tracks the endpoints as is' do
            expect(subject.instance_variable_get(:@endpoint_estimated_skews).keys).to match_array(tracked_endpoints)
          end
        end

        context 'with case variations in scheme and host' do
          let(:case_endpoints) { ['HTTP://EXAMPLE.COM/path', 'http://EXAMPLE.COM/other', 'http://example.com/path'] }

          before do
            case_endpoints.each do |endpoint|
              subject.update_estimated_skew(build_context(endpoint, server_time))
            end
          end

          it 'handles the endpoints correctly' do
            case_endpoints.each do |endpoint|
              expect(subject.estimated_skew(endpoint)).to be_within(5).of(1000)
            end
          end

          it 'treats them as different endpoints while it consolidates the scheme' do
            expect(subject.instance_variable_get(:@endpoint_estimated_skews).keys).to contain_exactly(
              'http://EXAMPLE.COM:80', 'http://example.com:80'
            )
          end
        end
      end

      describe 'candidate skew (server Date - response headers received time)' do
        let(:t) { Time.utc(2026, 1, 1) }

        # Records one response and returns the stored correction.
        def correction_for(date:, received_at:, sent_at: t, endpoint: 'https://example.com')
          headers = date ? { 'date' => date.httpdate } : {}
          ctx = build_context_with_headers(endpoint, headers, received_at)
          subject.update_clock_correction(ctx, sent_at)
          subject.clock_correction(endpoint)
        end

        it 'is 0 when the clocks agree' do
          expect(correction_for(date: t + 2, received_at: t + 2)).to eq(0)
        end

        it 'is positive when the server clock is ahead' do
          expect(correction_for(date: t + 3602, received_at: t + 2)).to eq(3600)
        end

        it 'is negative when the server clock is behind' do
          expect(correction_for(date: t - 3598, received_at: t + 2)).to eq(-3600)
        end

        it 'is 0 for a 620s request when the clocks agree (midpoint would give +310s)' do
          expect(correction_for(date: t + 620, received_at: t + 620)).to eq(0)
        end

        it 'is +600s for a 620s request when the server clock is 10 minutes ahead' do
          expect(correction_for(date: t + 1220, received_at: t + 620)).to eq(600)
        end

        it 'attributes response latency to skew' do
          expect(correction_for(date: t + 1, received_at: t + 2)).to eq(-1)
        end

        it 'keeps a round trip of exactly 900s' do
          expect(correction_for(date: t + 4500, received_at: t + 900)).to eq(3600)
        end

        it 'discards a round trip of 901s' do
          expect(correction_for(date: t + 4501, received_at: t + 901)).to eq(0)
        end

        it 'discards a response without a Date header' do
          expect(correction_for(date: nil, received_at: t + 2)).to eq(0)
        end

        it 'discards a cached response with an Age header' do
          ctx = build_context_with_headers(
            endpoint, { 'date' => (t + 3602).httpdate, 'age' => '30' }, t + 2
          )
          subject.update_clock_correction(ctx, t)
          expect(subject.clock_correction(endpoint)).to eq(0)
          expect(subject.clock_skewed?(ctx, t)).to be false
        end

        it 'uses the headers received time, not the current time' do
          # The body finished 10 seconds after the headers arrived.
          allow(Time).to receive(:now).and_return((t + 12).getlocal)
          expect(correction_for(date: t + 3602, received_at: t + 2)).to eq(3600)
        end

        it 'uses the headers received time for the max trusted duration check' do
          # Headers at 899s are trusted even though the body finished after 901s.
          allow(Time).to receive(:now).and_return((t + 901).getlocal)
          expect(correction_for(date: t + 899, received_at: t + 899)).to eq(0)
          expect(correction_for(date: t + 4499, received_at: t + 899)).to eq(3600)
        end

        it 'uses the headers received time for clock_skewed?' do
          allow(Time).to receive(:now).and_return((t + 1000).getlocal)
          # server - headers received = 241s; server - now would be -757s.
          above = build_context_with_headers(endpoint, { 'date' => (t + 243).httpdate }, t + 2)
          below = build_context_with_headers(endpoint, { 'date' => (t + 241).httpdate }, t + 2)
          expect(subject.clock_skewed?(above, t)).to be true
          expect(subject.clock_skewed?(below, t)).to be false
        end

        it 'records the correction per endpoint' do
          expect(correction_for(date: t + 3602, received_at: t + 2, endpoint: 'https://a.example.com')).to eq(3600)
          expect(correction_for(date: t + 2, received_at: t + 2, endpoint: 'https://b.example.com')).to eq(0)
          expect(subject.clock_correction('https://a.example.com')).to eq(3600)
        end
      end

      describe '#track_response_received_at' do
        let(:t) { Time.utc(2026, 1, 1) }
        let(:http_response) { Seahorse::Client::Http::Response.new }
        let(:ctx) { Seahorse::Client::RequestContext.new(http_response: http_response) }

        it 'records the raw time the response headers arrive' do
          subject.track_response_received_at(ctx)
          expect(ctx.metadata[:clock_skew_response_received_at]).to be_nil

          allow(Time).to receive(:now).and_return((t + 2).getlocal)
          http_response.signal_headers(200, 'date' => (t + 3602).httpdate)
          allow(Time).to receive(:now).and_return((t + 10).getlocal)
          http_response.signal_data('body')
          http_response.signal_done

          expect(ctx.metadata[:clock_skew_response_received_at]).to eq(t + 2)
          expect(ctx.metadata[:clock_skew_response_received_at]).to be_utc
        end

        it 'clears the previous attempt time and adds the listener only once' do
          subject.track_response_received_at(ctx)
          http_response.signal_headers(200, {})
          expect(ctx.metadata[:clock_skew_response_received_at]).not_to be_nil

          ctx.retries += 1
          http_response.reset
          subject.track_response_received_at(ctx)
          expect(ctx.metadata[:clock_skew_response_received_at]).to be_nil
          expect(http_response.instance_variable_get(:@listeners)[:headers].size).to eq(1)

          allow(Time).to receive(:now).and_return((t + 5).getlocal)
          http_response.signal_headers(200, {})
          expect(ctx.metadata[:clock_skew_response_received_at]).to eq(t + 5)
        end
      end

      describe 'candidate skew (guards)' do
        describe '#update_clock_correction with a send time' do
          it 'discards the candidate when elapsed exceeds the max trusted duration' do
            sent_at = Time.now.utc
            server_time = (sent_at + 100).httpdate
            ctx = build_context_with_headers(endpoint, 'date' => server_time)
            # elapsed = 16 minutes > 15 minute max trusted duration
            allow(Time).to receive(:now).and_return(sent_at.getlocal + (16 * 60))

            subject.update_clock_correction(ctx, sent_at)
            expect(subject.clock_correction(endpoint)).to eq(0)
          end

          it 'keeps the candidate at exactly the max trusted duration boundary' do
            sent_at = Time.now.utc
            server_time = (sent_at + 1000).httpdate
            ctx = build_context_with_headers(endpoint, 'date' => server_time)
            # elapsed = exactly 15 minutes (900s): NOT discarded
            allow(Time).to receive(:now).and_return(sent_at.getlocal + (15 * 60))

            subject.update_clock_correction(ctx, sent_at)
            expect(subject.clock_correction(endpoint)).not_to eq(0)
          end
        end

        describe 'Age header guard' do
          it 'does not record a correction when an Age header is present' do
            server_time = (Time.now.utc - 3600).httpdate
            ctx = build_context_with_headers(
              endpoint, 'date' => server_time, 'age' => '3600'
            )
            subject.update_clock_correction(ctx)
            expect(subject.clock_correction(endpoint)).to eq(0)
          end

          it 'is not clock_skewed? when an Age header is present' do
            server_time = (Time.now.utc - 3600).httpdate
            ctx = build_context_with_headers(
              endpoint, 'date' => server_time, 'age' => '3600'
            )
            expect(subject.clock_skewed?(ctx)).to be false
          end
        end

        describe '#clock_skewed? threshold boundary (4 minutes)' do
          it 'is false when skew is below the 4 minute threshold' do
            server_time = (Time.now.utc + 239).to_s
            ctx = build_context_with_headers(endpoint, 'date' => server_time)
            expect(subject.clock_skewed?(ctx)).to be false
          end

          it 'is true when skew exceeds the 4 minute threshold' do
            server_time = (Time.now.utc + 241).to_s
            ctx = build_context_with_headers(endpoint, 'date' => server_time)
            expect(subject.clock_skewed?(ctx)).to be true
          end
        end

        describe 'no headers received time recorded' do
          it 'falls back to server_time - now' do
            server_time = (Time.now.utc + 1000).to_s
            ctx = build_context_with_headers(endpoint, 'date' => server_time)
            subject.update_clock_correction(ctx)
            expect(subject.clock_correction(endpoint)).to be_within(5).of(1000)
          end
        end
      end
    end
  end
end
