# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe DefaultsModeConfigResolver do
    let(:test_case_defaults) do
      dir = File.expand_path('../../fixtures/defaults', __FILE__)
      Json.load_file("#{dir}/default-resolution.json")
    end

    let(:defaults_mode) { 'standard' }
    let(:client_region) { 'region-1' }
    let(:cfg) do
      double('config',
        defaults_mode: defaults_mode,
        region: client_region
      )
    end
    let(:subject) do
      DefaultsModeConfigResolver.new(test_case_defaults, cfg)
    end

    context 'defaults_mode is standard' do
      let(:defaults_mode) { 'standard' }

      it 'resolves the values' do
        expect(subject.resolve(:http_open_timeout)).to eq(2.0)
        expect(subject.resolve(:ssl_timeout)).to eq(2.0)
        expect(subject.resolve(:sts_regional_endpoints)).to eq('regional')
        expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to eq('regional')
        expect(subject.resolve(:retry_mode)).to eq('standard')
      end
    end

    context 'defaults_mode is in-region' do
      let(:defaults_mode) { 'in-region' }

      it 'resolves the values' do
        expect(subject.resolve(:http_open_timeout)).to eq(1.0)
        expect(subject.resolve(:ssl_timeout)).to eq(1.0)
        expect(subject.resolve(:sts_regional_endpoints)).to eq('regional')
        expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to eq('regional')
        expect(subject.resolve(:retry_mode)).to eq('standard')
      end
    end

    context 'defaults_mode is cross-region' do
      let(:defaults_mode) { 'cross-region' }

      it 'resolves the values' do
        expect(subject.resolve(:http_open_timeout)).to be_within(0.001).of(2.8)
        expect(subject.resolve(:ssl_timeout)).to be_within(0.001).of(2.8)
        expect(subject.resolve(:sts_regional_endpoints)).to eq('regional')
        expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to eq('regional')
        expect(subject.resolve(:retry_mode)).to eq('standard')
      end
    end

    context 'defaults_mode is mobile' do
      let(:defaults_mode) { 'mobile' }

      it 'resolves the values' do
        expect(subject.resolve(:http_open_timeout)).to eq(10.0)
        expect(subject.resolve(:ssl_timeout)).to eq(4.0)
        expect(subject.resolve(:sts_regional_endpoints)).to eq('regional')
        expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to eq('regional')
        expect(subject.resolve(:retry_mode)).to eq('adaptive')
      end
    end

    context 'defaults_mode is legacy' do
      let(:defaults_mode) { 'legacy' }

      it 'returns nils' do
        expect(subject.resolve(:http_open_timeout)).to be_nil
        expect(subject.resolve(:ssl_timeout)).to be_nil
        expect(subject.resolve(:sts_regional_endpoints)).to be_nil
        expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to be_nil
        expect(subject.resolve(:retry_mode)).to be_nil
      end
    end

    context 'defaults_mode is auto' do
      let(:execution_env) { 'AWS_Lambda_ruby' }
      let(:defaults_mode) { 'auto' }
      let(:client_region) { 'us-east-1' }
      let(:imds_client) { double('imds_client') }
      before do
        # bust the cache
        DefaultsModeConfigResolver.class_variable_set(:@@current_region, nil)
        DefaultsModeConfigResolver.class_variable_set(:@@imds_client, imds_client)
      end

      context 'mobile' do
        it 'resolves mode to mobile' do
          expect(subject).to receive(:env_mobile?).and_return(true)
          expect(subject.send(:resolve_auto_mode)).to eq('mobile')
        end
      end

      context 'AWS_EXECUTION_ENV and AWS_REGION set to client region' do
        before do
          stub_const('ENV', {
            'AWS_EXECUTION_ENV' => execution_env,
            'AWS_REGION' => client_region
          })
        end

        it 'resolves mode to in-region' do
          expect(subject.send(:resolve_auto_mode)).to eq('in-region')
        end
      end


      context 'AWS_EXECUTION_ENV and AWS_DEFAULT_REGION set to non-client region' do
        before do
          stub_const('ENV', {
            'AWS_EXECUTION_ENV' => execution_env,
            'AWS_DEFAULT_REGION' => 'us-west-2'
          })
        end

        it 'resolves mode to cross-region' do
          expect(subject.send(:resolve_auto_mode)).to eq('cross-region')
        end
      end

      context 'AWS_EXECUTION_ENV set and imds returns non-client region' do
        before do
          stub_const('ENV', {
            'AWS_EXECUTION_ENV' => execution_env,
          })
          expect(imds_client)
            .to receive(:get)
                  .with('/latest/meta-data/placement/region')
                  .and_return('us-west-2')
        end

        it 'resolves mode to cross-region' do
          expect(subject.send(:resolve_auto_mode)).to eq('cross-region')
        end
      end

      context 'AWS_REGION set and imds returns client region' do
        before do
          stub_const('ENV', {
            'AWS_REGION' => 'us-west-2',
          })
          expect(imds_client)
            .to receive(:get)
                  .with('/latest/meta-data/placement/region')
                  .and_return(client_region)
        end

        it 'resolves mode to in-region' do
          expect(subject.send(:resolve_auto_mode)).to eq('in-region')
        end
      end

      context 'AWS_EC2_METADATA_DISABLED is false and imds returns non-client region' do
        before do
          stub_const('ENV', {
            'AWS_EC2_METADATA_DISABLED' => 'false',
          })
          expect(imds_client)
            .to receive(:get)
                  .with('/latest/meta-data/placement/region')
                  .and_return('us-west-2')
        end

        it 'resolves mode to in-region' do
          expect(subject.send(:resolve_auto_mode)).to eq('cross-region')
        end
      end

      context 'AWS_EC2_METADATA_DISABLED is false and imds raises' do
        before do
          stub_const('ENV', {
            'AWS_EC2_METADATA_DISABLED' => 'false',
          })
          expect(imds_client)
            .to receive(:get)
                  .with('/latest/meta-data/placement/region')
                  .and_raise(StandardError.new)
        end

        it 'resolves mode to standard' do
          expect(subject.send(:resolve_auto_mode)).to eq('standard')
        end
      end

      # Note: Not currently in spec
      context 'AWS_EC2_METADATA_DISABLED is true' do
        before do
          stub_const('ENV', {
            'AWS_EC2_METADATA_DISABLED' => 'true',
          })
        end

        it 'does not call imds and resolves to standard' do
          expect(imds_client).not_to receive(:get)
          expect(subject.send(:resolve_auto_mode)).to eq('standard')
        end
      end
    end
  end
end