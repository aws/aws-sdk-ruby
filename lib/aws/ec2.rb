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

require 'aws/core'
require 'aws/ec2/config'

module AWS

  # Provides an expressive, object-oriented interface to Amazon EC2.
  #
  # == Credentials
  #
  # You can setup default credentials for all AWS services via
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # Or you can set them directly on the EC2 interface:
  #
  #   ec2 = AWS::EC2.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # == Instances
  #
  # EC2 uses instances to run your software.
  #
  # To run an instance:
  #
  #   ec2.instances.create(:image_id => "ami-8c1fece5")
  #
  # To get an instance by ID:
  #
  #   i = ec2.instances["i-12345678"]
  #   i.exists?
  #
  # To get a list of instances:
  #
  #   ec2.instances.inject({}) { |m, i| m[i.id] = i.status; m }
  #   # => { "i-12345678" => :running, "i-87654321" => :shutting_down }
  #
  # == Security Groups
  #
  # A security group is a named collection of access rules. These access
  # rules specify which ingress (i.e., incoming) network traffic should be
  # delivered to your instance. All other ingress traffic will be discarded.
  #
  # To create a security group:
  #
  #   websvr = ec2.security_groups.create('webservers')
  #
  # Then you can add ingress authorizations.  In the following example
  # we add a rule that allows web traffic from the entire internet.
  #
  #   # web traffic
  #   websvr.authorize_ingress(:tcp, 80)
  #
  # You can also specify a port range.  Here we are opening FTP traffic:
  #
  #   # ftp traffic
  #   websvr.authorize_ingress(:tcp, 20..21)
  #
  # If you want to limit an authorization to a particular CIDR IP address or
  # list of address, just add them to the #authorize_ingress call.
  #
  #   # ssh access
  #   websrvr.authorize_ingress(:tcp, 22, '1.1.1.1/0', '2.2.2.2/0')
  #
  # You can also provide another security group instead of CIDR IP addresses.
  # This allows incoming traffic from EC2 instances in the given security
  # group(s).
  #
  #   # get two existing security groups
  #   dbsvrs = ec2.security_groups.filter('group-name', 'db-servers').first
  #   websvrs = ec2.security_groups.filter('group-name', 'web-servers').first
  #
  #   # allow instances in the 'web-servers' security group to connect
  #   # to instances in the 'db-servers' security group over tcp port 3306
  #   dbsvrs.authorize_ingress(:tcp, 3306, websvrs)
  #
  # There are a few handy shortcuts for allowing pings:
  #
  #   wbsvrs.allow_ping
  #
  # Just like with authorize_ingress you can pass a security group or a list
  # of CIDR IP addresses to allow ping to limit where you can ping from.
  #
  # You can also use the same parameters from the examples above to
  # {SecurityGroup#revoke_ingress} and {SecurityGroup#disallow_ping}.
  #
  # You can specify other protocols than +:tcp+, like :udp and :icmp.
  #
  # == Elastic IPs
  #
  # You can allocate up to 5 elastic IP addresses for each account.
  # You can associate those elastic IP addresses with EC2 instances:
  #
  #   instance = ec2.instances['i-12345678']
  #   ip = ec2.elastic_ips.allocate
  #
  #   instance.ip_address                # 1.1.1.1
  #   ip.ip_address                      # 2.2.2.2
  #
  #   instance.associate_elastic_ip(ip)
  #   instance.ip_address                # 2.2.2.2
  #
  #   instance.disassociate_elastic_ip
  #   instance.ip_address                # 1.1.1.1
  #
  # When you are done with an elastic IP address you should release it.
  # In the following example we release all elastic IP addresses that are 
  # not currently associated with an instance:
  #
  #   ec2.select{|ip| !ip.associated? }.each(&:release)
  #
  # == Key Pairs
  #
  # Public Amazon Machine Image (AMI) instances have no password, and you need a
  # public/private key pair to log in to them. The public key half
  # of this pair is embedded in your instance, allowing you to use
  # the private key to log in securely without a password.
  #
  # You can generate a key pair yourself and then send the public
  # part to EC2 using {KeyPairCollection#import}.  For example:
  #
  #   key_pair =
  #     ec2.key_pairs.import("mykey", File.read("~/.ssh/identity.pub"))
  #
  # You can also ask EC2 to generate a key pair for you.  For
  # example:
  #
  #   key_pair = ec2.key_pairs.create("mykey")
  #   File.open("~/.ssh/ec2", "w") do |f|
  #     f.write(key_pair.private_key)
  #   end
  #
  # == Filtering and Tagging
  #
  # Any of the collections in the interface may be filtered by a
  # number of different parameters.  For example, to get all the
  # windows images owned by amazon where the description includes
  # the string "linux", you can do this:
  #
  #   ec2.images.with_owner("amazon").
  #     filter("platform", "windows").
  #     filter("description", "*linux*")
  #
  # Similarly, you can tag images, instances, security groups,
  # snapshots, and volumes with free-form key-value metadata and
  # filter on that metadata.  For example:
  #
  #   ec2.images["ami-123"].tags << "myapp"
  #   ec2.images.tagged("myapp")             # will include ami-123
  #
  # == Regions
  #
  # Amazon has data centers in different areas of the world (e.g.,
  # North America, Europe, Asia, etc.). Correspondingly, EC2 is
  # available to use in different Regions. By launching instances in
  # separate Regions, you can design your application to be closer
  # to specific customers or to meet legal or other
  # requirements. Prices for Amazon EC2 usage vary by Region (for
  # more information about pricing by Region, go to the {Amazon EC2
  # Pricing page}[http://aws.amazon.com/ec2/pricing]).  You can use
  # the Ruby SDK to see which regions are available for your
  # account:
  #
  #  ec2.regions.map(&:name)            # => ["us-east-1", ...]
  #
  # The default region is +us-east-1+; you can access other regions
  # like this:
  #
  #  ec2_us_west = ec2.regions["us-west-1"]
  #  # starts an instance in eu-west-1
  #  ec2_us_west.instances.create(:image_id => 'ami-3bc9997e')
  #
  # This makes a call to EC2's DescribeRegions API to find the
  # endpoint for "us-west-1" -- if you just want to configure a
  # different endpoint without making a call to EC2, you can do it
  # like this:
  #
  #  ec2 = AWS::EC2.new(:ec2_endpoint =>
  #                             "ec2.us-west-1.amazonaws.com")
  #
  # == Availability Zones
  #
  # Each Region contains multiple distinct locations called
  # Availability Zones. Each Availability Zone is engineered to be
  # isolated from failures in other Availability zones and to
  # provide inexpensive, low-latency network connectivity to other
  # zones in the same Region. By launching instances in separate
  # Availability Zones, you can protect your applications from the
  # failure of a single location.
  #
  # You can use the {#availability_zones} collection to get information
  # about the available zones available to your account.  For
  # example:
  #
  #  ec2.availability_zones.map(&:name)   # => ["us-east-1a", ...]
  #
  # == Images
  #
  # An Amazon Machine Image (AMI) contains all information necessary
  # to boot instances of your software. For example, an AMI might
  # contain all the software to act as a web server (e.g., Linux,
  # Apache, and your web site) or it might contain all the software
  # to act as a Hadoop node (e.g., Linux, Hadoop, and a custom
  # application).
  #
  # You can use the {#images} collection to get information about
  # the images available to your account.  For example:
  #
  #  ec2.images.with_owner("amazon").map(&:name)
  #
  # You can also use the images collection to create new images:
  #
  #  ec2.images.create(:image_location => "mybucket/manifest.xml",
  #                    :name => "my-image")
  #
  class EC2

    AWS.register_autoloads(self) do
      autoload :Attachment, 'attachment'
      autoload :AttachmentCollection, 'attachment_collection'
      autoload :AvailabilityZone, 'availability_zone'
      autoload :AvailabilityZoneCollection, 'availability_zone_collection'
      autoload :BlockDeviceMappings, 'block_device_mappings'
      autoload :Client, 'client'
      autoload :Collection, 'collection'
      autoload :ConfigTransform, 'config_transform'
      autoload :CustomerGateway, 'customer_gateway'
      autoload :CustomerGatewayCollection, 'customer_gateway_collection'
      autoload :DHCPOptions, 'dhcp_options'
      autoload :DHCPOptionsCollection, 'dhcp_options_collection'
      autoload :ElasticIp, 'elastic_ip'
      autoload :ElasticIpCollection, 'elastic_ip_collection'
      autoload :Errors, 'errors'
      autoload :FilteredCollection, 'filtered_collection'
      autoload :HasPermissions, 'has_permissions'
      autoload :Image, 'image'
      autoload :ImageCollection, 'image_collection'
      autoload :Instance, 'instance'
      autoload :InstanceCollection, 'instance_collection'
      autoload :InternetGateway, 'internet_gateway'
      autoload :InternetGatewayCollection, 'internet_gateway_collection'
      autoload :KeyPair, 'key_pair'
      autoload :KeyPairCollection, 'key_pair_collection'
      autoload :NetworkACL, 'network_acl'
      autoload :NetworkACLCollection, 'network_acl_collection'
      autoload :NetworkInterface, 'network_interface'
      autoload :NetworkInterfaceCollection, 'network_interface_collection'
      autoload :PermissionCollection, 'permission_collection'
      autoload :Region, 'region'
      autoload :RegionCollection, 'region_collection'
      autoload :Request, 'request'
      autoload :ReservedInstances, 'reserved_instances'
      autoload :ReservedInstancesCollection, 'reserved_instances_collection'
      autoload :ReservedInstancesOffering, 'reserved_instances_offering'
      autoload :ReservedInstancesOfferingCollection, 
        'reserved_instances_offering_collection'
      autoload :Resource, 'resource'
      autoload :ResourceObject, 'tag_collection'
      autoload :ResourceTagCollection, 'resource_tag_collection'
      autoload :RouteTable, 'route_table'
      autoload :RouteTableCollection, 'route_table_collection'
      autoload :SecurityGroup, 'security_group'
      autoload :SecurityGroupCollection, 'security_group_collection'
      autoload :Snapshot, 'snapshot'
      autoload :SnapshotCollection, 'snapshot_collection'
      autoload :Subnet, 'subnet'
      autoload :SubnetCollection, 'subnet_collection'
      autoload :Tag, 'tag'
      autoload :TagCollection, 'tag_collection'
      autoload :TaggedCollection, 'tagged_collection'
      autoload :TaggedItem, 'tagged_item'
      autoload :Volume, 'volume'
      autoload :VolumeCollection, 'volume_collection'
      autoload :VPC, 'vpc'
      autoload :VPCCollection, 'vpc_collection'
      autoload :VPNConnection, 'vpn_connection'
      autoload :VPNConnectionCollection, 'vpn_connection_collection'
      autoload :VPNGateway, 'vpn_gateway'
      autoload :VPNGatewayCollection, 'vpn_gateway_collection'
    end

    include Core::ServiceInterface

    # @return [InstanceCollection] A collection representing all instances
    def instances
      InstanceCollection.new(:config => config)
    end

    # @return [SecurityGroupCollection] A collection representing all security
    #   groups.
    def security_groups
      SecurityGroupCollection.new(:config => config)
    end

    # @return [ElasticIpCollection] A collection representing all
    #   elastic IP addresses for this account.
    def elastic_ips
      ElasticIpCollection.new(:config => config)
    end

    # @return [KeyPairCollection] A collection representing all key pairs.
    def key_pairs
      KeyPairCollection.new(:config => config)
    end

    # @return [TagCollection] A collection representing all EC2 tags for
    #   all resource types.
    def tags
      TagCollection.new(:config => config)
    end

    # @return [RegionCollection] A collection representing all EC2
    #   regions.
    def regions
      RegionCollection.new(:config => config)
    end

    # @return [AvailabilityZoneCollection] A collection representing
    #   all EC2 availability zones.
    def availability_zones
      AvailabilityZoneCollection.new(:config => config)
    end

    # @return [ImageCollection] A collection representing
    #   all Amazon Machine Images available to your account.
    def images
      ImageCollection.new(:config => config)
    end

    # @return [VolumeCollection] A collection representing
    #   all EBS volumes available to your account.
    def volumes
      VolumeCollection.new(:config => config)
    end

    # @return [ReservedInstancesCollection] A collection representing all
    #   purchased reserved instance offerings.
    def reserved_instances
      ReservedInstancesCollection.new(:config => config)
    end

    # @return [ReservedInstancesOfferingCollection] A collection representing all
    #   reserved instance offerings that may be purchased.
    def reserved_instances_offerings
      ReservedInstancesOfferingCollection.new(:config => config)
    end

    # @return [SnapshotCollection] A collection representing
    #   all EBS snapshots available to your account.
    def snapshots
      SnapshotCollection.new(:config => config)
    end

    # @return [VPCCollection] A collection representing 
    #   all VPCs in your account.
    def vpcs
      VPCCollection.new(:config => config)
    end

    # @return [SubnetCollection] Returns a collection that represents all
    #   of the subnets associated with this account (across all VPCs).
    def subnets
      SubnetCollection.new(:config => config)
    end

    # @return [NetworkACLCollection] Returns a collection that represents
    #   all of the network ACLs for this account.
    def network_acls
      NetworkACLCollection.new(:config => config)
    end

    # @return [RouteTableCollection] Returns a collection that represents
    #   all of the route tables for this account.
    def route_tables
      RouteTableCollection.new(:config => config)
    end

    # @return [NetworkInterfaceCollection] Returns a collection that
    #   represents all of the network interfaces for this account.
    def network_interfaces
      NetworkInterfaceCollection.new(:config => config)
    end

    # @return [InternetGatewayCollection] Returns a collection that
    #   represents all of the internet gateways for this account.
    def internet_gateways
      InternetGatewayCollection.new(:config => config)
    end

    # @return [CustomerGatewayCollection] Returns a collection that
    #   represents all of the customer gateways for this account.
    def customer_gateways
      CustomerGatewayCollection.new(:config => config)
    end

    # @return [VPNGatewayCollection] Returns a collection that
    #   represents all of the vpn gateways for this account.
    def vpn_gateways
      VPNGatewayCollection.new(:config => config)
    end

    # @return [DHCPOptionsCollection] Returns a collection that
    #   represents all of the dhcp options for this account.
    def dhcp_options
      DHCPOptionsCollection.new(:config => config)
    end

    # @return [VPNConnections] Returns a collection that
    #   represents all of vpn connections for this account.
    def vpn_connections
      VPNConnectionCollection.new(:config => config)
    end

  end
end
