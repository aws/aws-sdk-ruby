require_relative '../../spec_helper'

module Aws
  module STS
    describe Client do

      describe ':sts_regional_endpoints' do

        let(:mock_config_file) {
          File.expand_path(File.join(File.dirname(__FILE__),
            '..', 'fixtures', 'credentials', 'mock_shared_config'))
        }

        it 'uses ENV before shared config' do
          ENV['AWS_STS_REGIONAL_ENDPOINTS'] = 'regional'
          config = SharedConfig.new(
            config_path: mock_config_file,
            config_enabled: true,
            profile_name: "sts_legacy"
          )

          allow(Aws).to receive(:shared_config).and_return(config)
          client = Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
        end

        it 'defaults to `regional`' do
          client = Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.us-west-2.amazonaws.com')
        end

        it 'can be set `regional` in the constructor' do
          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'regional',
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.us-west-2.amazonaws.com')
        end

        it 'can be set fron ENV' do
          ENV['AWS_STS_REGIONAL_ENDPOINTS'] = 'regional'
          client = Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.us-west-2.amazonaws.com')
        end

        it 'has no effect on fips endpoint' do
          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'legacy',
            region: 'us-west-2-fips'
          )
          expect(client.config.sts_regional_endpoints).to eq('legacy')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts-fips.us-west-2.amazonaws.com')

          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'regional',
            region: 'us-west-2-fips'
          )
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts-fips.us-west-2.amazonaws.com')
        end

        it 'has no effect on aws-global even when `regional`' do
          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'regional',
            region: 'aws-global'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.amazonaws.com')
        end

        it 'has no effect on current regionalized regions' do
          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'legacy',
            region: 'ap-east-1'
          )
          expect(client.config.sts_regional_endpoints).to eq('legacy')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.ap-east-1.amazonaws.com')

          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'regional',
            region: 'ap-east-1'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.ap-east-1.amazonaws.com')
        end

        it 'has no effect on cn-north-1 region' do
          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'legacy',
            region: 'cn-north-1'
          )
          expect(client.config.sts_regional_endpoints).to eq('legacy')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.cn-north-1.amazonaws.com.cn')

          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'regional',
            region: 'cn-north-1'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.cn-north-1.amazonaws.com.cn')
        end

        it 'configures properly at config' do
          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'legacy',
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('legacy')
          expect(client.config.region).to eq('us-west-2')
          expect(client.config.sigv4_region).to eq('us-east-1')
          expect(client.config.endpoint.to_s).to eq('https://sts.amazonaws.com')

          client = Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          expect(client.config.region).to eq('us-west-2')
          expect(client.config.sigv4_region).to eq('us-west-2')
          expect(client.config.endpoint.to_s).to eq(
            'https://sts.us-west-2.amazonaws.com')
        end

      end

    end
  end
end
