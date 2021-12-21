# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe DefaultsMode do
      Client = ApiHelper.sample_service.const_get(:Client)

      let(:env) { {} }

      let(:client_class) { Client }

      let(:cfg) do
        {
          stub_responses: true
        }
      end

      before do
        stub_const('ENV', env)
      end

      describe 'defaults_mode option' do
        it 'adds a :defaults_mode configuration option' do
          expect(client_class.new(cfg.merge(defaults_mode: 'standard')).config.defaults_mode)
            .to eq('standard')
        end

        it 'defaults to legacy' do
          expect(client_class.new(cfg).config.defaults_mode).to eq('legacy')
        end

        it 'defaults to ENV["AWS_DEFAULTS_MODE"]' do
          env['AWS_DEFAULTS_MODE'] = 'env-mode'
          expect(client_class.new(cfg).config.defaults_mode).to eq('env-mode')
        end

        it 'can be set directly, overriding the ENV["AWS_DEFAULTS_MODE"]' do
          env['AWS_DEFAULTS_MODE'] = 'env-mode'
          expect(client_class.new(cfg.merge(defaults_mode: 'client-mode')).config.defaults_mode)
            .to eq('client-mode')
        end

        it 'can be configured with shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:defaults_mode).and_return('shared-mode')
          expect(client_class.new(cfg).config.defaults_mode).to eq('shared-mode')
        end
      end
    end
  end
end
