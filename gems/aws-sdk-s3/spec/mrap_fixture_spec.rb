# frozen_string_literal: true

require 'spec_helper'
$LOAD_PATH.unshift(File.expand_path('../../aws-sdk-s3control/lib', __dir__))
require 'aws-sdk-s3control'
require_relative '../features/client/mrap_fixture'

describe S3MrapFixture do
  let(:s3) { Aws::S3::Client.new(region: 'us-east-1', stub_responses: true) }
  let(:control) { Aws::S3Control::Client.new(region: 'us-west-2', stub_responses: true) }
  let(:identity) do
    Aws::STS::Types::GetCallerIdentityResponse.new(
      account: '123456789012', arn: 'arn:aws:sts::123456789012:assumed-role/test/session'
    )
  end
  let(:fixture) { described_class.new(s3_client: s3, control: control, identity: identity) }
  let(:missing) { { status_code: 404, headers: {}, body: '' } }

  before do
    allow_any_instance_of(Aws::Waiters::Waiter).to receive(:sleep)
    control.stub_responses(:get_multi_region_access_point,
                           access_point: { status: 'READY', alias: 'example.mrap' })
  end

  it 'waits through asynchronous creation and uses the current account' do
    control.stub_responses(:get_multi_region_access_point, [
                             missing, { access_point: { status: 'CREATING' } },
                             { access_point: { status: 'READY', alias: 'example.mrap' } }
                           ])
    expect(fixture.create).to eq('arn:aws:s3::123456789012:accesspoint/example.mrap')
    expect(control.api_requests.count { |r| r[:operation_name] == :get_multi_region_access_point }).to eq(3)
    expect(s3.api_requests.first[:params][:bucket]).to eq(fixture.name)
    expect(s3.api_requests.map { |r| r[:operation_name] }).not_to include(:delete_public_access_block)
  end

  it 'removes objects and waits for MRAP deletion before deleting the bucket' do
    fixture.create
    s3.stub_responses(:list_objects_v2, contents: [{ key: 'object-key' }])
    control.stub_responses(:get_multi_region_access_point, [
                             { access_point: { status: 'DELETING' } }, missing
                           ])
    expect(s3).to receive(:delete_object).with(bucket: fixture.name, key: 'object-key').ordered.and_call_original
    expect(control).to receive(:delete_multi_region_access_point).ordered.and_call_original
    expect(s3).to receive(:delete_bucket).with(bucket: fixture.name).ordered.and_call_original
    s3.stub_responses(:head_bucket, missing)
    fixture.cleanup
  end

  it 'cleans the bucket when MRAP creation fails before the access point exists' do
    control.stub_responses(:create_multi_region_access_point, 'AccessDenied')
    expect { fixture.create }.to raise_error(Aws::S3Control::Errors::ServiceError)
    control.stub_responses(:delete_multi_region_access_point, missing)
    control.stub_responses(:get_multi_region_access_point, missing)
    s3.stub_responses(:head_bucket, missing)
    fixture.cleanup
    expect(s3.api_requests.map { |r| r[:operation_name] }).to include(:delete_bucket)
  end

  it 'preserves the bucket and reports its name when MRAP deletion fails' do
    fixture.create
    control.stub_responses(:delete_multi_region_access_point, 'AccessDenied')
    expect { fixture.cleanup }.to raise_error(RuntimeError, /#{fixture.name}/)
    expect(s3.api_requests.map { |r| r[:operation_name] }).not_to include(:delete_bucket)
  end

  it 'fails immediately on authorization errors instead of waiting 30 minutes' do
    control.stub_responses(:get_multi_region_access_point, 'AccessDenied')
    expect { fixture.create }.to raise_error(Aws::Waiters::Errors::UnexpectedError)
    expect(control.api_requests.count { |r| r[:operation_name] == :get_multi_region_access_point }).to eq(1)
  end

  it 'does not delete a bucket when its creation was rejected' do
    s3.stub_responses(:create_bucket, 'AccessDenied')
    expect { fixture.create }.to raise_error(Aws::S3::Errors::AccessDenied)
    fixture.cleanup
    expect(s3.api_requests.map { |r| r[:operation_name] }).to eq([:create_bucket])
    expect(control.api_requests).to be_empty
  end
end
