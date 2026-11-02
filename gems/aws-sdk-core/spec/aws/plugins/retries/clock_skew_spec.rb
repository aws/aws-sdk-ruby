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
        response = double('response', headers: { 'date' => server_time })
        request  = double('request', endpoint: endpoint)

        double('context', http_response: response, http_request: request)
      end

      # Builds a context whose response carries arbitrary headers (e.g. 'age').
      def build_context_with_headers(endpoint, headers)
        response = double('response', headers: headers)
        request  = double('request', endpoint: endpoint)

        double('context', http_response: response, http_request: request)
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

      describe 'candidate skew (midpoint + guards)' do
        describe '#update_clock_correction with a send time' do
          it 'uses the midpoint formula to discount network transit' do
            sent_at = Time.now.utc
            # server generated its Date 100s ahead of the client, response takes 10s
            server_time = (sent_at + 100).httpdate
            ctx = build_context_with_headers(endpoint, 'date' => server_time)
            allow(Time).to receive(:now).and_return(sent_at.getlocal + 10)

            subject.update_clock_correction(ctx, sent_at)
            # midpoint = sent_at + 5s, so skew ~= 100 - 5 = 95s
            expect(subject.clock_correction(endpoint)).to be_within(1).of(95)
          end

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

        describe 'legacy fallback (no send time)' do
          it 'computes skew as server_time - now' do
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
