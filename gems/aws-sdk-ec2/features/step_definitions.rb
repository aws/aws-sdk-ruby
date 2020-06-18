# frozen_string_literal: true

Before('@ec2') do
  @service = Aws::EC2::Resource.new
  @client = @service.client
  @volume_ids = []
end

After('@ec2') do
  unless @volume_ids.empty?
    @volume_ids.each do |id|
      @client.delete_volume(volume_id: id)
    end
    @client.wait_until(:volume_deleted, volume_ids: @volume_ids)
  end
end

Given(/^I create a volume$/) do
  @volume = @service.create_volume(
    size: 1, availability_zone: 'us-east-1a', volume_type: 'gp2'
  )
  @volume_id = @volume.id
  @volume_ids << @volume_id
end

When(/^I use \#wait_until to wait until volume is available$/) do
  expect do
    @resp = @volume.wait_until { |v| v.state == 'available' }
  end.not_to raise_error
end

Then(/^Waiter works as expected$/) do
  expect(ApiCallTracker.called_operations).to include(:describe_volumes)
  expect(@resp.id).to eq(@volume_id)
end
