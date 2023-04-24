# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module EC2
    describe Client do

      describe 'request ids' do

        it 'populates request ids in the response context' do
          client = Client.new(stub_responses: true)
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<-XML.strip)
              <?xml version="1.0" encoding="UTF-8"?>
              <DescribeRegionsResponse xmlns="http://ec2.amazonaws.com/doc/2015-10-01/">
                <requestId>9f93c10f-78e0-445e-ae6c-6e03fe74179b</requestId>
                <regionInfo>
                  <item>
                    <regionEndpoint>ec2.us-west-2.amazonaws.com</regionEndpoint>
                    <regionName>us-west-2</regionName>
                  </item>
                </regionInfo>
              </DescribeRegionsResponse>
            XML
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.describe_regions
          expect(resp.context[:request_id]).to eq('9f93c10f-78e0-445e-ae6c-6e03fe74179b')
        end

      end

      describe 'gov-cloud' do

        it 'expands the endpoint correctly for gov-cloud' do
          ec2 = Client.new({
            region: 'us-gov-west-1',
            credentials: Credentials.new('key', 'secret'),
          })
          endpoint = ec2.config.endpoint.to_s
          expect(endpoint).to eq('https://ec2.us-gov-west-1.amazonaws.com')
        end

      end

      describe ':region' do

        it 'should not be an availability zone' do
          expect {
            Client.new(region: 'us-east-1a')
          }.to raise_error(ArgumentError)
        end

      end

      describe '#copy_snapshot' do
        let(:client) do
          Client.new(
            region: destination_region,
            credentials: Credentials.new('akid', 'secret'),
            stub_responses: true
          )
        end

        let(:kms_key_id) { '238f8ec9-420a-0690-8ec9-009f34fc3ef5' }
        let(:source_snapshot_id) { 'snap-1234567890abcdef0' }
        let(:source_region) { 'us-east-1' }
        let(:destination_region) { 'us-west-2' }

        let(:params) do
          {
            kms_key_id: kms_key_id,
            source_region: source_region,
            encrypted: true,
            source_snapshot_id: 'snap-1234567890abcdef0',
            destination_region: 'ca-central-1' # should be ignored
          }
        end

        before do
          allow(Time).to receive(:now).and_return(Time.utc(2023, 1, 24))
        end

        it 'requires a source region' do
          expect { client.copy_snapshot }
            .to raise_error(ArgumentError, /source region/)
        end

        it 'populates :presigned_url' do
          resp = client.copy_snapshot(params)

          expect(resp.context.params[:destination_region])
            .to eq(destination_region)

          presigned_url = resp.context.params[:presigned_url]
          presigned_url_params = CGI.parse(presigned_url.split('?').last)

          expect(presigned_url)
            .to match(/^https:\/\/ec2\.#{source_region}.amazonaws.com/)

          expect(presigned_url_params['Action']).to eq(['CopySnapshot'])
          expect(presigned_url_params['Version']).to eq(['2016-11-15'])
          expect(presigned_url_params['DestinationRegion']).to eq([destination_region])
          expect(presigned_url_params['SourceRegion']).to eq([source_region])
          expect(presigned_url_params['SourceSnapshotId']).to eq([source_snapshot_id])

          expect(presigned_url_params['X-Amz-Signature'])
            .to eq(['c34b30736cc5cd6a10af02c1edb50aed3d7424577644fb912f676846a65311cf'])
        end
      end

      describe '#wait_until' do
        describe ':instance_exists' do

          it 'returns fails when an error is returned' do
            client = Client.new(stub_responses: true)
            client.stub_responses(:describe_instances, 'InvalidInstanceIDNotFound')
            expect {
              client.wait_until(:instance_exists, instance_ids:['i-1234578']) do |w|
                w.max_attempts = 1
              end
            }.to raise_error(Aws::Waiters::Errors::TooManyAttemptsError)
          end

        end
      end
    end
  end
end
