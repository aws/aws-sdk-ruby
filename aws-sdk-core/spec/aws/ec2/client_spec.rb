require 'spec_helper'

module Aws
  module EC2
    describe Client do

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

        it 'requires a source shapshot region' do
          ec2 = Client.new(stub_responses: true)
          expect {
            ec2.copy_snapshot
          }.to raise_error(ArgumentError)
        end

        it 'manages :destination_region and :presigned_url' do

          now = Time.now
          allow(Time).to receive(:now).and_return(now)
          dest_region = 'us-west-1'
          src_region = 'us-west-2'
          snap_id = 'id'

          ec2 = Client.new(region: dest_region, stub_responses: true)
          resp = ec2.copy_snapshot({
            source_region: src_region,
            source_snapshot_id: snap_id,
          })

          expect(resp.context.params[:destination_region]).to eq(dest_region)
          expect(resp.context.params[:presigned_url]).to match(/^https:\/\/ec2\.#{src_region}.amazonaws.com\?Action=CopySnapshot&DestinationRegion=#{dest_region}&SourceRegion=#{src_region}&SourceSnapshotId=#{snap_id}&Version=\d{4}-\d{2}-\d{2}&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=stubbed-akid%2F#{now.strftime('%Y%m%d')}%2F#{src_region}%2Fec2%2Faws4_request&X-Amz-Date=#{now.strftime('%Y%m%dT%H%M%SZ')}&X-Amz-Expires=3600&X-Amz-SignedHeaders=host&X-Amz-Signature=.+$/)
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
            }.to raise_error(Waiters::Errors::TooManyAttemptsError)
          end

        end
      end
    end
  end
end
