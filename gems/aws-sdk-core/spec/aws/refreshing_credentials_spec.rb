# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe RefreshingCredentials do
    let(:resolver_class) do
      Class.new do
        include RefreshingCredentials

        attr_reader :source_calls

        def expect_response(response, lifetime)
          @next = [response, lifetime]
        end

        def refresh
          @source_calls = (@source_calls || 0) + 1
          response, lifetime = @next
          case response
          when 'freshCredentials' then set_creds(lifetime || 3600)
          when 'staleCredentials' then set_creds(-1)
          when 'error' then raise 'recoverable'
          when 'nonRecoverableError' then raise Aws::Errors::NonRecoverableError
          end
        end

        # def set_creds
        # def seed_state
      end
    end

    before do
      @now = Time.now
      allow(Time).to receive(:now) {@now}
    end

    context 'test runner' do
      tests = JSON.load_file(File.join(File.dirname(__FILE__), 'refreshing_credentials_tests.json'))

      tests.each_with_index do |test, index|
        it "case #{index + 1}: #{test['documentation']}" do
          resolver = build_resolver(resolver_class, test['given'])
          test['steps'].each do |step|
            case step['type']
            when 'advanceTime' then @now += step['seconds']
            when 'invalidate' then resolver.invalidate(fake_identity(step['rejectedAccessKeyId']))
            when 'getCredentials'
              before = resolver.source_calls || 0
              resolver.expect_response(step['response'], step['lifetimeSeconds'])
              exp = step['expected']
              assert_result(resolver, exp['result'])
              expect((resolver.source_calls || 0) > before).to eq(exp['sourceContacted'])
              expect(resolver.rate_limited?).to eq(exp['rateLimited']) if exp.key?('rateLimited')
              if exp.key?('advisoryWindowSeconds')
                expect(resolver.advisory_window).to eq(exp['advisoryWindowSeconds'])
              end
            end
          end
        end
      end
    end

    # def build_resolver
    # def assert_result
    # def fake_identity
  end
end
