# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module IAM
    describe Client do

      let(:credentials) { Aws::Credentials.new('akid', 'secret') }
      let(:role) { 'test-role' }

      it 'forces the endpoint to iam.amazonaws.com despite region' do
        iam = Client.new(region: 'us-west-2', stub_responses: true)
        resp = iam.get_role(role_name: role)
        expect(resp.context.http_request.endpoint.to_s).to eq('https://iam.amazonaws.com')
      end

      it 'uses us-east-1 as the signing region' do
        iam = Client.new(region: 'us-west-2', stub_responses: true)
        expect(Aws::Plugins::Sign).to receive(:signer_for).and_wrap_original do |m, *args|
          expect(args.first['signingRegion']).to eq('us-east-1')
          m.call(*args)
        end
        iam.get_role(role_name: role)
      end

      it 'expands the endpoint correctly for gov-cloud' do
        iam = Client.new(region: 'us-gov-west-1', stub_responses: true)
        resp = iam.get_role(role_name: role)
        expect(resp.context.http_request.endpoint.to_s).to eq('https://iam.us-gov.amazonaws.com')
      end

      it 'uses the proper sigv4 signing name for gov-cloud' do
        iam = Client.new(region: 'us-gov-west-1', stub_responses: true)
        expect(Aws::Plugins::Sign).to receive(:signer_for).and_wrap_original do |m, *args|
          expect(args.first['signingRegion']).to eq('us-gov-west-1')
          m.call(*args)
        end
        iam.get_role(role_name: role)
      end

    end
  end
end
