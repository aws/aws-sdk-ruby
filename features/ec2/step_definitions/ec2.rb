# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    instance_variable_get("@"+resource.tr(" ", "_")).send(att)
  end
end

Before("@ec2") do

  @ec2 = EC2.new
  @ec2_client = @ec2.client

  @created_vpcs = []
  @created_route_tables = []
  @created_subnets = []
  @created_key_pairs = []
  @created_security_groups = []
  @allocated_elastic_ips = []
  @started_instances = []
  @tags_created = []
  @created_images = []
  @created_volumes = []
  @created_snapshots = []
  @created_network_interfaces = []
  @created_internet_gateways = []
  @created_customer_gateways = []
  @created_vpn_gateways = []
  @created_dhcp_options = []
  @created_vpn_connections = []

  @test_config["account_id"] ||=
    @ec2.security_groups.filter("group-name", "default").first.owner_id

end

After("@ec2") do

  @created_vpn_connections.each do |connection|
    connection.delete
    sleep 1 until connection.state == :deleted
  end

  @created_vpn_gateways.each do |gateway|
    gateway.delete
  end

  @created_customer_gateways.each do |gateway|
    begin
      gateway.delete
    rescue AWS::EC2::Errors::InvalidCustomerGatewayID::NotFound
      # already deleted
    end
  end

  @created_internet_gateways.each do |gateway|
    begin
      gateway.vpc = nil
      gateway.delete
    rescue AWS::EC2::Errors::InvalidInternetGatewayID::NotFound
      # already deleted
    end
  end

  @tags_created.each do |tag|
    begin
      tag.delete
    rescue
    end
  end

  @created_network_interfaces.each do |interface|
    if attachment = interface.attachment
      attachment.delete
    end
    interface.delete
  end

  @started_instances.each do |instance|
    begin
      instance.terminate
    rescue AWS::EC2::Errors::OperationNotPermitted
      instance.api_termination_disabled = false
      retry
    end
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
    rescue AWS::EC2::Errors::InvalidSecurityGroupID::NotFound,
           AWS::EC2::Errors::InvalidGroup::NotFound
      # already deleted
    end
  }

  @created_images.each do |image|
    begin
      image.delete
    rescue AWS::EC2::Errors::InvalidImageID::NotFound,
           AWS::EC2::Errors::InvalidAMIID::Unavailable
      # already deleted
    end
  end

  @created_volumes.each do |volume|
    begin
      volume.delete
    rescue AWS::EC2::Errors::InvalidVolumeID::NotFound,
      AWS::EC2::Errors::InvalidVolume::NotFound
      # already deleted
    end
  end

  @created_snapshots.each do |snapshot|
    begin
      snapshot.delete
    rescue AWS::EC2::Errors::InvalidSnapshotID::NotFound,
           AWS::EC2::Errors::InvalidSnapshot::NotFound
      # already deleted
    end
  end


  unless @created_subnets.empty?

    # before we can delete vpc subnets we must wait for instances to terminate
    unless @started_instances.empty?
      sleep(1) until @started_instances.all?{|i| i.status == :terminated }
      # even after all isntances indicate they are terminated,
      # it can take some time before the subnet may be deleted
      sleep(10)
    end

    @created_subnets.each do |subnet|
      begin
        subnet.delete
      rescue AWS::EC2::Errors::InvalidSubnetID::NotFound
        # subnet already deleted
      end
    end

  end

  @created_route_tables.each do |table|
    begin
      table.delete
    rescue AWS::EC2::Errors::InvalidRouteTableID::NotFound
      # route table already deleted
    end
  end

  @created_vpcs.each do |vpc|
    begin
      vpc.delete
    rescue AWS::EC2::Errors::InvalidVpcID::NotFound
      # already deleted
    end
  end

  @created_dhcp_options.each do |opts|
    begin
      opts.delete
    rescue AWS::EC2::Errors::InvalidDhcpOptionsID::NotFound
      # already deleted
    end
  end

end
