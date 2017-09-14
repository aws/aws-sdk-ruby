Before("@ec2") do
  @service = Aws::EC2::Resource.new
  @client = @service.client
  @volume_ids = []
end

After("@ec2") do
end

Given(/^I create a volume$/) do
  @volume = @service.create_volume(size: 1, availability_zone: 'us-west-2a', volume_type: 'gp2')
  @volume_id = @volume.id
end

When(/^I use \#wait_until to wait until volume is available$/) do
  expect {
    @resp = @volume.wait_until {|v| v.state == 'available'}
  }.not_to raise_error
end

Then(/^Waiter works and volume is cleaned up$/) do
  expect(ApiCallTracker.called_operations).to include(:describe_volumes)
  expect(@resp.id).to eq(@volume_id)

  # clean up
  @client.delete_volume(volume_id: @volume_id)
  @client.wait_until(:volume_deleted, volume_ids: [@volume_id])
end
