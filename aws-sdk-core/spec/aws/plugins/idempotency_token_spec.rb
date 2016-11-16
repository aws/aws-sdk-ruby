require 'spec_helper'

module Aws
  module Plugins

    describe IdempotencyToken do

      let(:ec2) {
        Aws::EC2::Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
      }

      let(:ec2_auto_fill) {
        ec2 = Aws::EC2::Client.new(
          region: 'us-west-2',
          idempotency_auto_fill: true,
          stub_responses: true
        )
      }

      it 'disable auto_fill by default' do
        resp = ec2.run_scheduled_instances(
          instance_count: 1,
          launch_specification: {
            image_id: "ami-12345678",
          },
          scheduled_instance_id: "sci-1234-1234-1234-1234-123456789012",
        )
        expect(resp.context.params[:client_token]).to be_nil
      end

      it 'disable auto_fill per operation' do
        resp = ec2_auto_fill.run_scheduled_instances(
          instance_count: 1,
          launch_specification: {
            image_id: "ami-12345678",
          },
          scheduled_instance_id: "sci-1234-1234-1234-1234-123456789012",
          idempotency_auto_fill: false
        )
        expect(resp.context.params[:client_token]).to be_nil
      end

      it 'auto fills param with `idempotencyToken` trait when enabled per operation' do
        resp = ec2.run_scheduled_instances(
          instance_count: 1,
          launch_specification: {
            image_id: "ami-12345678",
          },
          scheduled_instance_id: "sci-1234-1234-1234-1234-123456789012",
          idempotency_auto_fill: true
        )
        expect(
          resp.context.params[:client_token]
        ).to match(/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/)
      end

      it 'auto fills param with `idempotencyToken` trait when enabled per client' do
        resp = ec2_auto_fill.run_scheduled_instances(
          instance_count: 1,
          launch_specification: {
            image_id: "ami-12345678",
          },
          scheduled_instance_id: "sci-1234-1234-1234-1234-123456789012",
        )
        expect(
          resp.context.params[:client_token]
        ).to match(/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/)
      end

      it 'allows overwriting params with UUID v4 auto filled' do
        resp = ec2.run_scheduled_instances(
          instance_count: 1,
          launch_specification: {
            image_id: "ami-12345678",
          },
          client_token: "foo",
          scheduled_instance_id: "sci-1234-1234-1234-1234-123456789012",
          idempotency_auto_fill: true
        )
        expect(resp.context.params[:client_token]).to eq('foo')
      end

    end
  end
end
