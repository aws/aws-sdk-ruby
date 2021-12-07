# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module ConfigurationDefaults

    describe ConfigurationModeDefaultsResolver do
      let(:test_case_defaults) do
        dir = File.expand_path('../../fixtures/defaults', __FILE__)
        Json.load_file("#{dir}/default-resolution.json")
      end

      let(:defaults_mode) { 'standard' }
      let(:cfg) do
        double('config',
          defaults_mode: defaults_mode
        )
      end
      let(:subject) do
        ConfigurationModeDefaultsResolver.new(test_case_defaults, cfg)
      end

      context 'defaults_mode is standard' do
        let(:defaults_mode) { 'standard' }

        it 'resolves the values' do
          expect(subject.resolve(:http_open_timeout)).to eq(2.0)
          expect(subject.resolve(:http_ssl_timeout)).to eq(2.0)
          expect(subject.resolve(:sts_regional_endpoints)).to eq('regional')
          expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to eq('regional')
          expect(subject.resolve(:retry_mode)).to eq('standard')
        end
      end

      context 'defaults_mode is in-region' do
        let(:defaults_mode) { 'in-region' }

        it 'resolves the values' do
          expect(subject.resolve(:http_open_timeout)).to eq(1.0)
          expect(subject.resolve(:http_ssl_timeout)).to eq(1.0)
          expect(subject.resolve(:sts_regional_endpoints)).to eq('regional')
          expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to eq('regional')
          expect(subject.resolve(:retry_mode)).to eq('standard')
        end
      end

      context 'defaults_mode is cross-region' do
        let(:defaults_mode) { 'cross-region' }

        it 'resolves the values' do
          expect(subject.resolve(:http_open_timeout)).to be_within(0.001).of(2.8)
          expect(subject.resolve(:http_ssl_timeout)).to be_within(0.001).of(2.8)
          expect(subject.resolve(:sts_regional_endpoints)).to eq('regional')
          expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to eq('regional')
          expect(subject.resolve(:retry_mode)).to eq('standard')
        end
      end

      context 'defaults_mode is mobile' do
        let(:defaults_mode) { 'mobile' }

        it 'resolves the values' do
          expect(subject.resolve(:http_open_timeout)).to eq(10.0)
          expect(subject.resolve(:http_ssl_timeout)).to eq(4.0)
          expect(subject.resolve(:sts_regional_endpoints)).to eq('regional')
          expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to eq('regional')
          expect(subject.resolve(:retry_mode)).to eq('adaptive')
        end
      end

      context 'defaults_mode is legacy' do
        let(:defaults_mode) { 'legacy' }

        it 'returns nils' do
          expect(subject.resolve(:http_open_timeout)).to be_nil
          expect(subject.resolve(:http_ssl_timeout)).to be_nil
          expect(subject.resolve(:sts_regional_endpoints)).to be_nil
          expect(subject.resolve(:s3_us_east_1_regional_endpoint)).to be_nil
          expect(subject.resolve(:retry_mode)).to be_nil
        end
      end
    end
  end
end