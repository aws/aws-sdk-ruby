# frozen_string_literal: true

require_relative 'spec_helper'
$LOAD_PATH.unshift(File.expand_path('../../aws-sdk-s3control/lib', __dir__))
require 'aws-sdk-s3control'
require_relative '../features/client/mrap_helpers'

describe S3MrapHelpers do
  let(:s3) { Aws::S3::Client.new(region: 'us-east-1', stub_responses: true) }
  let(:control) { Aws::S3Control::Client.new(region: 'us-west-2', stub_responses: true) }
  let(:world) { Object.new.extend(described_class) }
  let(:missing) { { status_code: 404, headers: {}, body: '' } }
  let(:ready) { { access_point: { status: 'READY', alias: 'example.mrap' } } }

  before do
    world.instance_variable_set(:@client, s3)
    world.instance_variable_set(:@mrap_control, control)
    world.instance_variable_set(:@mrap_account, '123456789012')
    world.instance_variable_set(:@mrap_name, 'temporary-mrap')
    world.instance_variable_set(:@mrap_bucket, 'temporary-mrap')
    allow(world).to receive(:sleep)
    s3.stub_responses(:head_bucket, missing)
  end

  it 'waits through missing and creating responses until the access point is ready' do
    control.stub_responses(:get_multi_region_access_point, [
                             missing, { access_point: { status: 'CREATING' } }, ready
                           ])
    point = world.wait_for_mrap { |access_point| access_point && access_point.status == 'READY' }
    expect(point.alias).to eq('example.mrap')
    expect(control.api_requests.length).to eq(3)
  end

  it 'fails immediately on authorization errors' do
    control.stub_responses(:get_multi_region_access_point, 'AccessDenied')
    expect { world.wait_for_mrap { false } }.to raise_error(Aws::S3Control::Errors::AccessDenied)
    expect(control.api_requests.length).to eq(1)
  end

  it 'reports the resource name when creation times out' do
    control.stub_responses(:get_multi_region_access_point, access_point: { status: 'CREATING' })
    expect { world.wait_for_mrap(0) { false } }.to raise_error(/Timed out.*temporary-mrap/)
  end

  it 'finishes an in-progress create before deleting the access point and bucket' do
    control.stub_responses(:get_multi_region_access_point, [
                             { access_point: { status: 'CREATING' } }, ready,
                             { access_point: { status: 'DELETING' } }, missing
                           ])
    s3.stub_responses(:list_object_versions, versions: [{ key: 'object-key', version_id: 'null' }])
    expect(control).to receive(:delete_multi_region_access_point).ordered.and_call_original
    expect(s3).to receive(:delete_objects).with(
      { bucket: 'temporary-mrap', delete: { objects: [{ key: 'object-key', version_id: 'null' }] } }
    ).ordered.and_call_original
    expect(s3).to receive(:delete_bucket).with({ bucket: 'temporary-mrap' }).ordered.and_call_original
    world.cleanup_mrap
    expect(world.instance_variable_get(:@mrap_bucket)).to be_nil
  end

  it 'preserves the bucket if creation remains in progress through the cleanup deadline' do
    control.stub_responses(:get_multi_region_access_point, access_point: { status: 'CREATING' })
    allow(world).to receive(:wait_for_mrap).and_wrap_original do |method, _deadline, &block|
      method.call(0, &block)
    end
    expect { world.cleanup_mrap }.to raise_error(/Cleanup failed.*temporary-mrap.*Timed out/)
    expect(control.api_requests.map do |request|
      request[:operation_name]
    end).not_to include(:delete_multi_region_access_point)
    expect(s3.api_requests).to be_empty
  end

  it 'preserves the bucket if access point deletion is rejected' do
    control.stub_responses(:get_multi_region_access_point, ready)
    control.stub_responses(:delete_multi_region_access_point, 'AccessDenied')
    expect { world.cleanup_mrap }.to raise_error(/Cleanup failed.*temporary-mrap.*AccessDenied/)
    expect(s3.api_requests).to be_empty
  end

  it 'cleans up the bucket after a definitively rejected access point creation' do
    world.instance_variable_set(:@mrap_name, nil)
    world.cleanup_mrap
    expect(s3.api_requests.map { |request| request[:operation_name] }).to include(:delete_bucket)
    expect(control.api_requests).to be_empty
  end

  it 'does not delete a bucket whose creation was rejected' do
    world.instance_variable_set(:@mrap_bucket, nil)
    world.cleanup_mrap
    expect(s3.api_requests).to be_empty
    expect(control.api_requests).to be_empty
  end
end
