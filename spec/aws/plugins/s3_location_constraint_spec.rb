require 'spec_helper'

module Aws
  module Plugins
    describe S3LocationConstraint do

      let(:config_region) {
        cfg = Seahorse::Client::Configuration.new
        cfg.add_option(:region, 'sa-east-1')
        cfg.add_option(:endpoint, 's3-sa-east-1.amazonaws.com')
      }

      let(:params_with_constraint) {
        {create_bucket_configuration: {location_constraint: 'my-fake-1'}}
      }

      let(:config_default) {
        cfg = Seahorse::Client::Configuration.new
        cfg.add_option(:region, 'us-east-1')
        cfg.add_option(:endpoint, 's3.amazonaws.com')
      }

      it 'coerces the location constraint from the S3 region' do
        resp = call_handler(S3LocationConstraint::Handler,
                            params: {}, config: config_region)
        expect(resp.context
               .params[:create_bucket_configuration][:location_constraint])
               .to eq('sa-east-1')
      end

      it 'does not set location constraint when no region is specified' do
        resp = call_handler(S3LocationConstraint::Handler,
                            params: {}, config: config_default)
        expect(resp.context
               .params[:create_bucket_configuration]).to be_nil
      end

      it 'does not override a specified location constraint' do
        resp = call_handler(S3LocationConstraint::Handler,
                            params: params_with_constraint,
                            config: config_region)
        expect(resp.context
               .params[:create_bucket_configuration][:location_constraint])
               .to eq('my-fake-1')
      end
    end
  end
end
