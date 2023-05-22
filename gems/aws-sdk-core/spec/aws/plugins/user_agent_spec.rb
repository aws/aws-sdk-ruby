# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe UserAgent do
      let(:svc) { ApiHelper.sample_service }
      let(:client) { svc::Client.new(stub_responses: true) }

      def setup(given)
        feature_callable = nil
        # framework_callable = nil
        caller = []

        given.keys.each do |key|
          case key
          when 'internal-traffic' then nil
          when 'os' then
            os_family = given['os']['family'].downcase
            version = given['os']['version']
            allow(Gem::Platform).to receive(:local).and_return(
              double('platform', os: os_family, version: version, cpu: nil)
            )
          when 'language'
            name = given['language']['name']
            version = given['language']['version']
            stub_const('RUBY_ENGINE', name)
            stub_const('RUBY_ENGINE_VERSION', version)
          when 'environmentVariables'
            given['environmentVariables'].each { |k, v| ENV[k] = v }
          when 'sharedConfigFile'
            given['sharedConfigFile'].each do |k, v|
              allow_any_instance_of(Aws::SharedConfig)
                .to receive(k.to_sym).and_return(v)
            end
          when 'feature'
            version = given['feature']['version']
            feature = given['feature']['name']
            feature += "##{version}" unless version.empty?
            feature_callable = proc do |callable|
              Aws::Plugins::UserAgent.feature(feature) do
                callable.call
              end
            end
          when 'framework'
            version = given['framework']['version']
            version = '1.2.3' if version.empty?
            name = given['framework']['name']
            # old approach - keeping around until decision
            # framework += "##{version}" unless version.empty?
            # framework_callable = proc do |callable|
            #   Aws::Plugins::UserAgent.framework(framework) do
            #     callable.call
            #   end
            # end
            framework = "#{name}-#{version}"
            caller << "gems/#{framework}/lib/file.rb"
            # also stub the regex
            regex = Aws::Plugins::UserAgent::Handler::UserAgent::FRAMEWORK_REGEX
            regex = Regexp.new(regex.to_s.gsub('<name>', "<name>#{name}|"))
            stub_const('Aws::Plugins::UserAgent::Handler::UserAgent::FRAMEWORK_REGEX', regex)
          end
        end

        [feature_callable, caller]
      end

      def assert_header(expected, actual)
        if (exact_order = expected['containsInExactOrder'])
          begin
            actual_order = actual.split(' ')
            exact_order = exact_order.each
            actual_order.each do |a|
              # special case
              a = 'aws-sdk-{language}/{version}' if a =~ /aws-sdk-ruby3/
              a == exact_order.peek ? exact_order.next : next
            end
            raise 'Exhausted user agent metadata before expected order was met'
          rescue StopIteration
            # exact order has been met
          end
        end

        if (any_order = expected['containsInAnyOrder'])
          any_order.each do |e|
            expect(actual).to include(e)
          end
        end

        if (contains = expected['contains'])
          contains.each do |contain|
            expect(actual).to include(contain)
          end
        end
      end

      context 'test runner' do
        tests = JSON.load_file(
          File.join(File.dirname(__FILE__), 'user_agent_tests.json')
        )

        tests.each_with_index do |test, index|
          it "passes test #{index + 1}: #{test['description']}" do
            given = test['given']
            expected_header = test['expectedRequestHeaders']['user-agent']
            feature_callable, caller = setup(given)
            allow(Kernel).to receive(:caller).and_return(caller)

            callable1 = proc { client.example_operation }
            callable2 = callable1
            callable2 = proc { feature_callable.call(callable1) } if feature_callable
            #callable3 = callable2
            #callable3 = proc { framework_callable.call(callable2) } if framework_callable

            resp = callable2.call
            actual_header = resp.context.http_request.headers['User-Agent']

            assert_header(expected_header, actual_header)
          end
        end
      end
    end
  end
end
