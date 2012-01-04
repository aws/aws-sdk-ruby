# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

When /^I get the following attributes of the (.*):$/ do |resource, table|
  table.raw.flatten.each do |att|
    # p att
    instance_variable_get("@"+resource.tr(" ", "_")).send(att)
  end
end

Before("@ec2") do

  @ec2 = EC2.new
  @ec2_client = @ec2.client

  @created_vpc_ids = []
  @created_subnet_ids = []

  @created_key_pairs = []
  @created_security_groups = []
  @allocated_elastic_ips = []
  @started_instances = []
  @tags_created = []
  @created_images = []
  @created_volumes = []
  @created_snapshots = []

  @test_config["account_id"] ||=
    @ec2.security_groups.filter("group-name", "default").first.owner_id

end

After("@ec2") do

  @tags_created.each do |tag|
    begin
      tag.delete
    rescue
    end
  end

  @started_instances.each do |id|
    begin
      EC2::Instance.new(id).api_termination_disabled = false
    rescue
    end
  end

  unless @started_instances.empty?
    @ec2_client.terminate_instances(:instance_ids => @started_instances)
  end

  @allocated_elastic_ips.each do |elastic_ip|
    begin
      elastic_ip.release
    rescue
    end
  end

  @created_key_pairs.each do |key_pair|
    begin
      key_pair.delete
    rescue
    end
  end

  @created_security_groups.each{|group|
    begin
      group.delete
    rescue
    end
  }

  @created_images.each do |image|
    begin
      image.delete
    rescue
    end
  end

  @created_volumes.each do |volume|
    begin
      volume.delete
    rescue
    end
  end

  @created_snapshots.each do |snapshot|
    begin
      snapshot.delete
    rescue
    end
  end


  unless @created_subnet_ids.empty?

    # before we can delete vpc subnets we must wait till all stated
    # vpc instances in that subnet have been terminated
    @vpc_instances = []
    @started_instances.each do |id|
      instance = @ec2.instances[id]
      @vpc_instances << instance if instance.vpc_id
    end
    until @vpc_instances.all?{|i| i.status == terminated? }
      sleep(5)
    end

    @created_subnet_ids.each do |subnet_id|
      @ec2_client.delete_subnet(:subnet_id => subnet_id)
    end

  end

  @created_vpc_ids.each do |vpc_id|
    @ec2_client.delete_vpc(:vpc_id => vpc_id)
  end

end
