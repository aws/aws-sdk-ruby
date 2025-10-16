# frozen_string_literal: true

require_relative '../../spec_helper'
require_relative '../../../lib/aws-sdk-core/plugins/shared_config'
require_relative '../../../lib/aws-sdk-core/plugins/user_agent'

module Aws
  module Core
    module Plugins
      describe UserAgent do
        let(:shapes) do
          shapes = ClientHelper.sample_shapes
          shapes['smithy.ruby.tests#SampleClient']['traits']['aws.api#service'] = { 'sdkId' => 'sample' }
          shapes
        end

        let(:sample_client) { ClientHelper.sample_client(shapes: shapes) }
        let(:client_class) do
          client_class = sample_client.const_get(:Client)
          client_class.add_plugin(Plugins::SharedConfig)
          client_class.add_plugin(Plugins::UserAgent)
          client_class
        end
        let(:client) { client_class.new(stub_responses: true, endpoint: 'https://example.com') }

        def setup(given)
          metric_callable = nil
          caller = []
          config_frameworks = []

          given.each_key do |key|
            case key
            when 'internal-traffic' then nil
            when 'os'
              os_family = given['os']['family'].downcase
              version = given['os']['version']
              allow(RbConfig::CONFIG).to receive(:[])
                .with('host_os').and_return(os_family)
              allow(RbConfig::CONFIG).to receive(:[])
                .with('host_cpu').and_return('x86_64')
              allow(Gem::Platform).to receive(:local)
                .and_return(double(version: version))
            when 'language'
              name = given['language']['name']
              version = given['language']['version']
              stub_const('RUBY_ENGINE', name)
              stub_const('RUBY_ENGINE_VERSION', version)
            when 'environmentVariables'
              given['environmentVariables'].each { |k, v| ENV[k] = v }
            when 'sharedConfigFile'
              shared_config = "[profile default]\n"
              given['sharedConfigFile'].each do |k, v|
                shared_config += "#{k} = #{v}\n"
              end
              mock_shared_config(shared_config)
            when 'metric'
              stub_const(
                'Aws::Core::Plugins::UserAgent::METRICS',
                { 'metric' => given['metric'] }
              )
              metric_callable = proc do |callable|
                Smithy::Client::Features.track('metric') do
                  callable.call
                end
              end
            when 'framework'
              version = given['framework']['version']
              version = '1.2.3' if version.empty?
              framework = given['framework']['name']
              config_frameworks << framework
              framework += "-#{version}" unless version.empty?
              caller << "gems/#{framework}/some_file.rb"
            end
          end

          [metric_callable, caller, config_frameworks]
        end

        def assert_header(expected, actual)
          if (exact_order = expected['containsInExactOrder'])
            begin
              actual_order = actual.split
              exact_order = exact_order.each
              actual_order.each do |a|
                # special case
                a = 'aws-sdk-{language}/{version}' if a =~ /aws-sdk-ruby4/
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

        tests = JSON.load_file(File.join(File.dirname(__FILE__), 'user_agent_tests.json'))
        tests.each_with_index do |test, index|
          it "passes test #{index + 1}: #{test['description']}" do
            given = test['given']
            expected_header = test['expectedRequestHeaders']['user-agent']
            metric_callable, caller, config_frameworks = setup(given)
            allow(Kernel).to receive(:caller).and_return(caller)
            client.config.user_agent_frameworks = config_frameworks

            callable1 = proc { client.operation }
            callable2 = callable1
            callable2 = proc { metric_callable.call(callable1) } if metric_callable
            resp = callable2.call

            actual_header = resp.context.http_request.headers['User-Agent']
            assert_header(expected_header, actual_header)
          end
        end
      end
    end
  end
end
