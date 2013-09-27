Given(/^I describe the EC2 region "(.*?)"$/) do |region_name|
  @region = @ec2.describe_regions(region_names: [region_name]).data.regions.first
end

Then(/^the EC2 endpoint for the region should be "(.*?)"$/) do |endpoint|
  expect(@region.endpoint).to eq(endpoint)
end

Given(/^I describe a non-existent instance$/) do
  begin
    @ec2.describe_instances(instance_ids: ['i-12345678'])
  rescue => error
    @error = error
  end
end

Then(/^a "(.*?)" error should be raised$/) do |error_class|
  expect(@error.class.name).to match(error_class)
end
