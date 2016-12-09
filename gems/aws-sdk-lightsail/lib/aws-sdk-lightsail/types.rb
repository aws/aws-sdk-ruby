# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module Lightsail
    module Types

      # @note When making an API call, pass AllocateStaticIpRequest
      #   data as a hash:
      #
      #       {
      #         static_ip_name: "ResourceName", # required
      #       }
      # @!attribute [rw] static_ip_name
      #   The name of the static IP address.
      #   @return [String]
      class AllocateStaticIpRequest < Struct.new(
        :static_ip_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the static
      #   IP address you allocated.
      #   @return [Array<Types::Operation>]
      class AllocateStaticIpResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # @note When making an API call, pass AttachStaticIpRequest
      #   data as a hash:
      #
      #       {
      #         static_ip_name: "ResourceName", # required
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] static_ip_name
      #   The name of the static IP.
      #   @return [String]
      #
      # @!attribute [rw] instance_name
      #   The instance name to which you want to attach the static IP address.
      #   @return [String]
      class AttachStaticIpRequest < Struct.new(
        :static_ip_name,
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about your API
      #   operations.
      #   @return [Array<Types::Operation>]
      class AttachStaticIpResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # Describes an Availability Zone.
      # @!attribute [rw] zone_name
      #   The name of the Availability Zone.
      #   @return [String]
      #
      # @!attribute [rw] state
      #   The state of the Availability Zone.
      #   @return [String]
      class AvailabilityZone < Struct.new(
        :zone_name,
        :state)
        include Aws::Structure
      end

      # Describes a blueprint (a virtual private server image).
      # @!attribute [rw] blueprint_id
      #   The ID for the virtual private server image (e.g.,
      #   `app_wordpress_4_4` or `app_lamp_7_0`).
      #   @return [String]
      #
      # @!attribute [rw] name
      #   The friendly name of the blueprint (e.g., `Amazon Linux`).
      #   @return [String]
      #
      # @!attribute [rw] group
      #   The group name of the blueprint (e.g., `amazon-linux`).
      #   @return [String]
      #
      # @!attribute [rw] type
      #   The type of the blueprint (e.g., `os` or `app`).
      #   @return [String]
      #
      # @!attribute [rw] description
      #   The description of the blueprint.
      #   @return [String]
      #
      # @!attribute [rw] is_active
      #   A Boolean value indicating whether the blueprint is active. When you
      #   update your blueprints, you will inactivate old blueprints and keep
      #   the most recent versions active.
      #   @return [Boolean]
      #
      # @!attribute [rw] min_power
      #   The minimum machine size required to run this blueprint. `0`
      #   indicates that the blueprint runs on all instances.
      #   @return [Integer]
      #
      # @!attribute [rw] version
      #   The version number of the operating system, application, or stack
      #   (e.g., `2016.03.0`).
      #   @return [String]
      #
      # @!attribute [rw] version_code
      #   The version code.
      #   @return [String]
      #
      # @!attribute [rw] product_url
      #   The product URL to learn more about the image or blueprint.
      #   @return [String]
      #
      # @!attribute [rw] license_url
      #   The end-user license agreement URL for the image or blueprint.
      #   @return [String]
      class Blueprint < Struct.new(
        :blueprint_id,
        :name,
        :group,
        :type,
        :description,
        :is_active,
        :min_power,
        :version,
        :version_code,
        :product_url,
        :license_url)
        include Aws::Structure
      end

      # Describes a bundle, which is a set of specs describing your virtual
      # private server (or *instance*).
      # @!attribute [rw] price
      #   The price in US dollars (e.g., `5.0`).
      #   @return [Float]
      #
      # @!attribute [rw] cpu_count
      #   The number of vCPUs included in the bundle (e.g., `2`).
      #   @return [Integer]
      #
      # @!attribute [rw] disk_size_in_gb
      #   The size of the SSD (e.g., `30`).
      #   @return [Integer]
      #
      # @!attribute [rw] bundle_id
      #   The bundle ID (e.g., `micro_1_0`).
      #   @return [String]
      #
      # @!attribute [rw] instance_type
      #   The Amazon EC2 instance type (e.g., `t2.micro`).
      #   @return [String]
      #
      # @!attribute [rw] is_active
      #   A Boolean value indicating whether the bundle is active.
      #   @return [Boolean]
      #
      # @!attribute [rw] name
      #   A friendly name for the bundle (e.g., `Micro`).
      #   @return [String]
      #
      # @!attribute [rw] power
      #   The power of the bundle (e.g., `500`).
      #   @return [Integer]
      #
      # @!attribute [rw] ram_size_in_gb
      #   The amount of RAM in GB (e.g., `2.0`).
      #   @return [Float]
      #
      # @!attribute [rw] transfer_per_month_in_gb
      #   The data transfer rate per month in GB (e.g., `2000`).
      #   @return [Integer]
      class Bundle < Struct.new(
        :price,
        :cpu_count,
        :disk_size_in_gb,
        :bundle_id,
        :instance_type,
        :is_active,
        :name,
        :power,
        :ram_size_in_gb,
        :transfer_per_month_in_gb)
        include Aws::Structure
      end

      # @note When making an API call, pass CloseInstancePublicPortsRequest
      #   data as a hash:
      #
      #       {
      #         port_info: { # required
      #           from_port: 1,
      #           to_port: 1,
      #           protocol: "tcp", # accepts tcp, all, udp
      #         },
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] port_info
      #   Information about the public port you are trying to close.
      #   @return [Types::PortInfo]
      #
      # @!attribute [rw] instance_name
      #   The name of the instance on which you're attempting to close the
      #   public ports.
      #   @return [String]
      class CloseInstancePublicPortsRequest < Struct.new(
        :port_info,
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] operation
      #   An array of key-value pairs that contains information about the
      #   operation.
      #   @return [Types::Operation]
      class CloseInstancePublicPortsResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateDomainEntryRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         domain_entry: { # required
      #           id: "NonEmptyString",
      #           name: "DomainName",
      #           target: "string",
      #           type: "DomainEntryType",
      #           options: {
      #             "DomainEntryOptionsKeys" => "string",
      #           },
      #         },
      #       }
      # @!attribute [rw] domain_name
      #   The domain name (e.g., `example.com`) for which you want to create
      #   the domain entry.
      #   @return [String]
      #
      # @!attribute [rw] domain_entry
      #   An array of key-value pairs containing information about the domain
      #   entry request.
      #   @return [Types::DomainEntry]
      class CreateDomainEntryRequest < Struct.new(
        :domain_name,
        :domain_entry)
        include Aws::Structure
      end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the
      #   operation.
      #   @return [Types::Operation]
      class CreateDomainEntryResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      # @!attribute [rw] domain_name
      #   The domain name to manage (e.g., `example.com`).
      #
      #   <note markdown="1"> You cannot register a new domain name using Lightsail. You must
      #   register a domain name using Amazon Route 53 or another domain name
      #   registrar. If you have already registered your domain, you can enter
      #   its name in this parameter to manage the DNS records for that
      #   domain.
      #
      #    </note>
      #   @return [String]
      class CreateDomainRequest < Struct.new(
        :domain_name)
        include Aws::Structure
      end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the domain
      #   resource you created.
      #   @return [Types::Operation]
      class CreateDomainResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateInstanceSnapshotRequest
      #   data as a hash:
      #
      #       {
      #         instance_snapshot_name: "ResourceName", # required
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_snapshot_name
      #   The name for your new snapshot.
      #   @return [String]
      #
      # @!attribute [rw] instance_name
      #   The Lightsail instance on which to base your snapshot.
      #   @return [String]
      class CreateInstanceSnapshotRequest < Struct.new(
        :instance_snapshot_name,
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the results
      #   of your create instances snapshot request.
      #   @return [Array<Types::Operation>]
      class CreateInstanceSnapshotResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateInstancesFromSnapshotRequest
      #   data as a hash:
      #
      #       {
      #         instance_names: ["string"], # required
      #         availability_zone: "string", # required
      #         instance_snapshot_name: "ResourceName", # required
      #         bundle_id: "NonEmptyString", # required
      #         user_data: "string",
      #         key_pair_name: "ResourceName",
      #       }
      # @!attribute [rw] instance_names
      #   The names for your new instances.
      #   @return [Array<String>]
      #
      # @!attribute [rw] availability_zone
      #   The Availability Zone where you want to create your instances. Use
      #   the following formatting: `us-east-1a` (case sensitive).
      #   @return [String]
      #
      # @!attribute [rw] instance_snapshot_name
      #   The name of the instance snapshot on which you are basing your new
      #   instances. Use the get instance snapshots operation to return
      #   information about your existing snapshots.
      #   @return [String]
      #
      # @!attribute [rw] bundle_id
      #   The bundle of specification information for your virtual private
      #   server (or *instance*), including the pricing plan (e.g.,
      #   `micro_1_0`).
      #   @return [String]
      #
      # @!attribute [rw] user_data
      #   You can create a launch script that configures a server with
      #   additional user data. For example, `apt-get –y update`.
      #
      #   <note markdown="1"> Depending on the machine image you choose, the command to get
      #   software on your instance varies. Amazon Linux and CentOS use `yum`,
      #   Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a
      #   complete list, see the [Dev Guide][1].
      #
      #    </note>
      #
      #
      #
      #   [1]: http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps
      #   @return [String]
      #
      # @!attribute [rw] key_pair_name
      #   The name for your key pair.
      #   @return [String]
      class CreateInstancesFromSnapshotRequest < Struct.new(
        :instance_names,
        :availability_zone,
        :instance_snapshot_name,
        :bundle_id,
        :user_data,
        :key_pair_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the results
      #   of your create instances from snapshot request.
      #   @return [Array<Types::Operation>]
      class CreateInstancesFromSnapshotResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateInstancesRequest
      #   data as a hash:
      #
      #       {
      #         instance_names: ["string"], # required
      #         availability_zone: "string", # required
      #         custom_image_name: "ResourceName",
      #         blueprint_id: "NonEmptyString", # required
      #         bundle_id: "NonEmptyString", # required
      #         user_data: "string",
      #         key_pair_name: "ResourceName",
      #       }
      # @!attribute [rw] instance_names
      #   The names to use for your new Lightsail instances. Separate multiple
      #   values using quotation marks and commas, for example:
      #   `["MyFirstInstance","MySecondInstance"]`
      #   @return [Array<String>]
      #
      # @!attribute [rw] availability_zone
      #   The Availability Zone in which to create your instance. Use the
      #   following format: `us-east-1a` (case sensitive).
      #   @return [String]
      #
      # @!attribute [rw] custom_image_name
      #   The name for your custom image.
      #   @return [String]
      #
      # @!attribute [rw] blueprint_id
      #   The ID for a virtual private server image (e.g., `app_wordpress_4_4`
      #   or `app_lamp_7_0`). Use the get blueprints operation to return a
      #   list of available images (or *blueprints*).
      #   @return [String]
      #
      # @!attribute [rw] bundle_id
      #   The bundle of specification information for your virtual private
      #   server (or *instance*), including the pricing plan (e.g.,
      #   `micro_1_0`).
      #   @return [String]
      #
      # @!attribute [rw] user_data
      #   A launch script you can create that configures a server with
      #   additional user data. For example, you might want to run `apt-get –y
      #   update`.
      #
      #   <note markdown="1"> Depending on the machine image you choose, the command to get
      #   software on your instance varies. Amazon Linux and CentOS use `yum`,
      #   Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a
      #   complete list, see the [Dev Guide][1].
      #
      #    </note>
      #
      #
      #
      #   [1]: http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps
      #   @return [String]
      #
      # @!attribute [rw] key_pair_name
      #   The name of your key pair.
      #   @return [String]
      class CreateInstancesRequest < Struct.new(
        :instance_names,
        :availability_zone,
        :custom_image_name,
        :blueprint_id,
        :bundle_id,
        :user_data,
        :key_pair_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the results
      #   of your create instances request.
      #   @return [Array<Types::Operation>]
      class CreateInstancesResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateKeyPairRequest
      #   data as a hash:
      #
      #       {
      #         key_pair_name: "ResourceName", # required
      #       }
      # @!attribute [rw] key_pair_name
      #   The name for your new key pair.
      #   @return [String]
      class CreateKeyPairRequest < Struct.new(
        :key_pair_name)
        include Aws::Structure
      end

      # @!attribute [rw] key_pair
      #   An array of key-value pairs containing information about the new key
      #   pair you just created.
      #   @return [Types::KeyPair]
      #
      # @!attribute [rw] public_key_base_64
      #   A base64-encoded public key of the `ssh-rsa` type.
      #   @return [String]
      #
      # @!attribute [rw] private_key_base_64
      #   A base64-encoded RSA private key.
      #   @return [String]
      #
      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the results
      #   of your create key pair request.
      #   @return [Types::Operation]
      class CreateKeyPairResult < Struct.new(
        :key_pair,
        :public_key_base_64,
        :private_key_base_64,
        :operation)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteDomainEntryRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         domain_entry: { # required
      #           id: "NonEmptyString",
      #           name: "DomainName",
      #           target: "string",
      #           type: "DomainEntryType",
      #           options: {
      #             "DomainEntryOptionsKeys" => "string",
      #           },
      #         },
      #       }
      # @!attribute [rw] domain_name
      #   The name of the domain entry to delete.
      #   @return [String]
      #
      # @!attribute [rw] domain_entry
      #   An array of key-value pairs containing information about your domain
      #   entries.
      #   @return [Types::DomainEntry]
      class DeleteDomainEntryRequest < Struct.new(
        :domain_name,
        :domain_entry)
        include Aws::Structure
      end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the results
      #   of your delete domain entry request.
      #   @return [Types::Operation]
      class DeleteDomainEntryResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      # @!attribute [rw] domain_name
      #   The specific domain name to delete.
      #   @return [String]
      class DeleteDomainRequest < Struct.new(
        :domain_name)
        include Aws::Structure
      end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the results
      #   of your delete domain request.
      #   @return [Types::Operation]
      class DeleteDomainResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteInstanceRequest
      #   data as a hash:
      #
      #       {
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the instance to delete.
      #   @return [String]
      class DeleteInstanceRequest < Struct.new(
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the results
      #   of your delete instance request.
      #   @return [Array<Types::Operation>]
      class DeleteInstanceResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteInstanceSnapshotRequest
      #   data as a hash:
      #
      #       {
      #         instance_snapshot_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_snapshot_name
      #   The name of the snapshot to delete.
      #   @return [String]
      class DeleteInstanceSnapshotRequest < Struct.new(
        :instance_snapshot_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the results
      #   of your delete instance snapshot request.
      #   @return [Array<Types::Operation>]
      class DeleteInstanceSnapshotResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteKeyPairRequest
      #   data as a hash:
      #
      #       {
      #         key_pair_name: "ResourceName", # required
      #       }
      # @!attribute [rw] key_pair_name
      #   The name of the key pair to delete.
      #   @return [String]
      class DeleteKeyPairRequest < Struct.new(
        :key_pair_name)
        include Aws::Structure
      end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the results
      #   of your delete key pair request.
      #   @return [Types::Operation]
      class DeleteKeyPairResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # @note When making an API call, pass DetachStaticIpRequest
      #   data as a hash:
      #
      #       {
      #         static_ip_name: "ResourceName", # required
      #       }
      # @!attribute [rw] static_ip_name
      #   The name of the static IP to detach from the instance.
      #   @return [String]
      class DetachStaticIpRequest < Struct.new(
        :static_ip_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the results
      #   of your detach static IP request.
      #   @return [Array<Types::Operation>]
      class DetachStaticIpResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # Describes the hard disk (an SSD).
      # @!attribute [rw] name
      #   The name of the disk.
      #   @return [String]
      #
      # @!attribute [rw] arn
      #   The Amazon Resource Name (ARN) of the disk.
      #   @return [String]
      #
      # @!attribute [rw] support_code
      #   The support code. Include this code in your email to support when
      #   you have questions about an instance or another resource in
      #   Lightsail. This code enables our support team to look up your
      #   Lightsail information more easily.
      #   @return [String]
      #
      # @!attribute [rw] created_at
      #   The date when the disk was created.
      #   @return [Time]
      #
      # @!attribute [rw] location
      #   The region and Availability Zone where the disk is located.
      #   @return [Types::ResourceLocation]
      #
      # @!attribute [rw] resource_type
      #   The resource type of the disk.
      #   @return [String]
      #
      # @!attribute [rw] size_in_gb
      #   The size of the disk in GB.
      #   @return [Integer]
      #
      # @!attribute [rw] gb_in_use
      #   The number of GB in use by the disk.
      #   @return [Integer]
      #
      # @!attribute [rw] is_system_disk
      #   A Boolean value indicating whether this disk is a system disk (has
      #   an operating system loaded on it).
      #   @return [Boolean]
      #
      # @!attribute [rw] iops
      #   The input/output operations per second (IOPS) of the disk.
      #   @return [Integer]
      #
      # @!attribute [rw] path
      #   The disk path.
      #   @return [String]
      #
      # @!attribute [rw] attached_to
      #   The resources to which the disk is attached.
      #   @return [String]
      #
      # @!attribute [rw] is_attached
      #   A Boolean value indicating whether the disk is attached.
      #   @return [Boolean]
      #
      # @!attribute [rw] attachment_state
      #   The attachment state of the disk.
      #   @return [String]
      class Disk < Struct.new(
        :name,
        :arn,
        :support_code,
        :created_at,
        :location,
        :resource_type,
        :size_in_gb,
        :gb_in_use,
        :is_system_disk,
        :iops,
        :path,
        :attached_to,
        :is_attached,
        :attachment_state)
        include Aws::Structure
      end

      # Describes a domain where you are storing recordsets in Lightsail.
      # @!attribute [rw] name
      #   The name of the domain.
      #   @return [String]
      #
      # @!attribute [rw] arn
      #   The Amazon Resource Name (ARN) of the domain recordset (e.g.,
      #   `arn:aws:lightsail:global:123456789101:Domain/824cede0-abc7-4f84-8dbc-12345EXAMPLE`).
      #   @return [String]
      #
      # @!attribute [rw] support_code
      #   The support code. Include this code in your email to support when
      #   you have questions about an instance or another resource in
      #   Lightsail. This code enables our support team to look up your
      #   Lightsail information more easily.
      #   @return [String]
      #
      # @!attribute [rw] created_at
      #   The date when the domain recordset was created.
      #   @return [Time]
      #
      # @!attribute [rw] location
      #   The AWS Region and Availability Zones where the domain recordset was
      #   created.
      #   @return [Types::ResourceLocation]
      #
      # @!attribute [rw] resource_type
      #   The resource type.
      #   @return [String]
      #
      # @!attribute [rw] domain_entries
      #   An array of key-value pairs containing information about the domain
      #   entries.
      #   @return [Array<Types::DomainEntry>]
      class Domain < Struct.new(
        :name,
        :arn,
        :support_code,
        :created_at,
        :location,
        :resource_type,
        :domain_entries)
        include Aws::Structure
      end

      # Describes a domain recordset entry.
      # @note When making an API call, pass DomainEntry
      #   data as a hash:
      #
      #       {
      #         id: "NonEmptyString",
      #         name: "DomainName",
      #         target: "string",
      #         type: "DomainEntryType",
      #         options: {
      #           "DomainEntryOptionsKeys" => "string",
      #         },
      #       }
      # @!attribute [rw] id
      #   The ID of the domain recordset entry.
      #   @return [String]
      #
      # @!attribute [rw] name
      #   The name of the domain.
      #   @return [String]
      #
      # @!attribute [rw] target
      #   The target AWS name server (e.g., `ns-111.awsdns-22.com.`).
      #   @return [String]
      #
      # @!attribute [rw] type
      #   The type of domain entry (e.g., `SOA` or `NS`).
      #   @return [String]
      #
      # @!attribute [rw] options
      #   The options for the domain entry.
      #   @return [Hash<String,String>]
      class DomainEntry < Struct.new(
        :id,
        :name,
        :target,
        :type,
        :options)
        include Aws::Structure
      end

      # @api private
      class DownloadDefaultKeyPairRequest < Aws::EmptyStructure; end

      # @!attribute [rw] public_key_base_64
      #   A base64-encoded public key of the `ssh-rsa` type.
      #   @return [String]
      #
      # @!attribute [rw] private_key_base_64
      #   A base64-encoded RSA private key.
      #   @return [String]
      class DownloadDefaultKeyPairResult < Struct.new(
        :public_key_base_64,
        :private_key_base_64)
        include Aws::Structure
      end

      # @note When making an API call, pass GetActiveNamesRequest
      #   data as a hash:
      #
      #       {
      #         page_token: "string",
      #       }
      # @!attribute [rw] page_token
      #   A token used for paginating results from your get active names
      #   request.
      #   @return [String]
      class GetActiveNamesRequest < Struct.new(
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] active_names
      #   The list of active names returned by the get active names request.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_page_token
      #   A token used for advancing to the next page of results from your get
      #   active names request.
      #   @return [String]
      class GetActiveNamesResult < Struct.new(
        :active_names,
        :next_page_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBlueprintsRequest
      #   data as a hash:
      #
      #       {
      #         include_inactive: false,
      #         page_token: "string",
      #       }
      # @!attribute [rw] include_inactive
      #   A Boolean value indicating whether to include inactive results in
      #   your request.
      #   @return [Boolean]
      #
      # @!attribute [rw] page_token
      #   A token used for advancing to the next page of results from your get
      #   blueprints request.
      #   @return [String]
      class GetBlueprintsRequest < Struct.new(
        :include_inactive,
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] blueprints
      #   An array of key-value pairs that contains information about the
      #   available blueprints.
      #   @return [Array<Types::Blueprint>]
      #
      # @!attribute [rw] next_page_token
      #   A token used for advancing to the next page of results from your get
      #   blueprints request.
      #   @return [String]
      class GetBlueprintsResult < Struct.new(
        :blueprints,
        :next_page_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBundlesRequest
      #   data as a hash:
      #
      #       {
      #         include_inactive: false,
      #         page_token: "string",
      #       }
      # @!attribute [rw] include_inactive
      #   A Boolean value that indicates whether to include inactive bundle
      #   results in your request.
      #   @return [Boolean]
      #
      # @!attribute [rw] page_token
      #   A token used for advancing to the next page of results from your get
      #   bundles request.
      #   @return [String]
      class GetBundlesRequest < Struct.new(
        :include_inactive,
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] bundles
      #   An array of key-value pairs that contains information about the
      #   available bundles.
      #   @return [Array<Types::Bundle>]
      #
      # @!attribute [rw] next_page_token
      #   A token used for advancing to the next page of results from your get
      #   active names request.
      #   @return [String]
      class GetBundlesResult < Struct.new(
        :bundles,
        :next_page_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      # @!attribute [rw] domain_name
      #   The domain name for which your want to return information about.
      #   @return [String]
      class GetDomainRequest < Struct.new(
        :domain_name)
        include Aws::Structure
      end

      # @!attribute [rw] domain
      #   An array of key-value pairs containing information about your get
      #   domain request.
      #   @return [Types::Domain]
      class GetDomainResult < Struct.new(
        :domain)
        include Aws::Structure
      end

      # @note When making an API call, pass GetDomainsRequest
      #   data as a hash:
      #
      #       {
      #         page_token: "string",
      #       }
      # @!attribute [rw] page_token
      #   A token used for advancing to the next page of results from your get
      #   domains request.
      #   @return [String]
      class GetDomainsRequest < Struct.new(
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] domains
      #   An array of key-value pairs containing information about each of the
      #   domain entries in the user's account.
      #   @return [Array<Types::Domain>]
      #
      # @!attribute [rw] next_page_token
      #   A token used for advancing to the next page of results from your get
      #   active names request.
      #   @return [String]
      class GetDomainsResult < Struct.new(
        :domains,
        :next_page_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetInstanceAccessDetailsRequest
      #   data as a hash:
      #
      #       {
      #         instance_name: "ResourceName", # required
      #         protocol: "ssh", # accepts ssh, rdp
      #       }
      # @!attribute [rw] instance_name
      #   The name of the instance to access.
      #   @return [String]
      #
      # @!attribute [rw] protocol
      #   The protocol to use to connect to your instance. Defaults to `ssh`.
      #   @return [String]
      class GetInstanceAccessDetailsRequest < Struct.new(
        :instance_name,
        :protocol)
        include Aws::Structure
      end

      # @!attribute [rw] access_details
      #   An array of key-value pairs containing information about a get
      #   instance access request.
      #   @return [Types::InstanceAccessDetails]
      class GetInstanceAccessDetailsResult < Struct.new(
        :access_details)
        include Aws::Structure
      end

      # @note When making an API call, pass GetInstanceMetricDataRequest
      #   data as a hash:
      #
      #       {
      #         instance_name: "ResourceName", # required
      #         metric_name: "CPUUtilization", # required, accepts CPUUtilization, NetworkIn, NetworkOut, StatusCheckFailed, StatusCheckFailed_Instance, StatusCheckFailed_System
      #         period: 1, # required
      #         start_time: Time.now, # required
      #         end_time: Time.now, # required
      #         unit: "Seconds", # required, accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #         statistics: ["Minimum"], # required, accepts Minimum, Maximum, Sum, Average, SampleCount
      #       }
      # @!attribute [rw] instance_name
      #   The name of the instance for which you want to get metrics data.
      #   @return [String]
      #
      # @!attribute [rw] metric_name
      #   The metric name to get data about.
      #   @return [String]
      #
      # @!attribute [rw] period
      #   The time period for which you are requesting data.
      #   @return [Integer]
      #
      # @!attribute [rw] start_time
      #   The start time of the time period.
      #   @return [Time]
      #
      # @!attribute [rw] end_time
      #   The end time of the time period.
      #   @return [Time]
      #
      # @!attribute [rw] unit
      #   The unit. The list of valid values is below.
      #   @return [String]
      #
      # @!attribute [rw] statistics
      #   The instance statistics.
      #   @return [Array<String>]
      class GetInstanceMetricDataRequest < Struct.new(
        :instance_name,
        :metric_name,
        :period,
        :start_time,
        :end_time,
        :unit,
        :statistics)
        include Aws::Structure
      end

      # @!attribute [rw] metric_name
      #   The metric name to return data for.
      #   @return [String]
      #
      # @!attribute [rw] metric_data
      #   An array of key-value pairs containing information about the results
      #   of your get instance metric data request.
      #   @return [Array<Types::MetricDatapoint>]
      class GetInstanceMetricDataResult < Struct.new(
        :metric_name,
        :metric_data)
        include Aws::Structure
      end

      # @note When making an API call, pass GetInstancePortStatesRequest
      #   data as a hash:
      #
      #       {
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the instance.
      #   @return [String]
      class GetInstancePortStatesRequest < Struct.new(
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] port_states
      #   Information about the port states resulting from your request.
      #   @return [Array<String>]
      class GetInstancePortStatesResult < Struct.new(
        :port_states)
        include Aws::Structure
      end

      # @note When making an API call, pass GetInstanceRequest
      #   data as a hash:
      #
      #       {
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the instance.
      #   @return [String]
      class GetInstanceRequest < Struct.new(
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] instance
      #   An array of key-value pairs containing information about the
      #   specified instance.
      #   @return [Types::Instance]
      class GetInstanceResult < Struct.new(
        :instance)
        include Aws::Structure
      end

      # @note When making an API call, pass GetInstanceSnapshotRequest
      #   data as a hash:
      #
      #       {
      #         instance_snapshot_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_snapshot_name
      #   The name of the snapshot for which you are requesting information.
      #   @return [String]
      class GetInstanceSnapshotRequest < Struct.new(
        :instance_snapshot_name)
        include Aws::Structure
      end

      # @!attribute [rw] instance_snapshot
      #   An array of key-value pairs containing information about the results
      #   of your get instance snapshot request.
      #   @return [Types::InstanceSnapshot]
      class GetInstanceSnapshotResult < Struct.new(
        :instance_snapshot)
        include Aws::Structure
      end

      # @note When making an API call, pass GetInstanceSnapshotsRequest
      #   data as a hash:
      #
      #       {
      #         page_token: "string",
      #       }
      # @!attribute [rw] page_token
      #   A token used for advancing to the next page of results from your get
      #   instance snapshots request.
      #   @return [String]
      class GetInstanceSnapshotsRequest < Struct.new(
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] instance_snapshots
      #   An array of key-value pairs containing information about the results
      #   of your get instance snapshots request.
      #   @return [Array<Types::InstanceSnapshot>]
      #
      # @!attribute [rw] next_page_token
      #   A token used for advancing to the next page of results from your get
      #   instance snapshots request.
      #   @return [String]
      class GetInstanceSnapshotsResult < Struct.new(
        :instance_snapshots,
        :next_page_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetInstanceStateRequest
      #   data as a hash:
      #
      #       {
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the instance to get state information about.
      #   @return [String]
      class GetInstanceStateRequest < Struct.new(
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] state
      #   The state of the instance.
      #   @return [Types::InstanceState]
      class GetInstanceStateResult < Struct.new(
        :state)
        include Aws::Structure
      end

      # @note When making an API call, pass GetInstancesRequest
      #   data as a hash:
      #
      #       {
      #         page_token: "string",
      #       }
      # @!attribute [rw] page_token
      #   A token used for advancing to the next page of results from your get
      #   instances request.
      #   @return [String]
      class GetInstancesRequest < Struct.new(
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] instances
      #   An array of key-value pairs containing information about your
      #   instances.
      #   @return [Array<Types::Instance>]
      #
      # @!attribute [rw] next_page_token
      #   A token used for advancing to the next page of results from your get
      #   instances request.
      #   @return [String]
      class GetInstancesResult < Struct.new(
        :instances,
        :next_page_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetKeyPairRequest
      #   data as a hash:
      #
      #       {
      #         key_pair_name: "ResourceName", # required
      #       }
      # @!attribute [rw] key_pair_name
      #   The name of the key pair for which you are requesting information.
      #   @return [String]
      class GetKeyPairRequest < Struct.new(
        :key_pair_name)
        include Aws::Structure
      end

      # @!attribute [rw] key_pair
      #   An array of key-value pairs containing information about the key
      #   pair.
      #   @return [Types::KeyPair]
      class GetKeyPairResult < Struct.new(
        :key_pair)
        include Aws::Structure
      end

      # @note When making an API call, pass GetKeyPairsRequest
      #   data as a hash:
      #
      #       {
      #         page_token: "string",
      #       }
      # @!attribute [rw] page_token
      #   A token used for advancing to the next page of results from your get
      #   key pairs request.
      #   @return [String]
      class GetKeyPairsRequest < Struct.new(
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] key_pairs
      #   An array of key-value pairs containing information about the key
      #   pairs.
      #   @return [Array<Types::KeyPair>]
      #
      # @!attribute [rw] next_page_token
      #   A token used for advancing to the next page of results from your get
      #   key pairs request.
      #   @return [String]
      class GetKeyPairsResult < Struct.new(
        :key_pairs,
        :next_page_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetOperationRequest
      #   data as a hash:
      #
      #       {
      #         operation_id: "NonEmptyString", # required
      #       }
      # @!attribute [rw] operation_id
      #   A GUID used to identify the operation.
      #   @return [String]
      class GetOperationRequest < Struct.new(
        :operation_id)
        include Aws::Structure
      end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the results
      #   of your get operation request.
      #   @return [Types::Operation]
      class GetOperationResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # @note When making an API call, pass GetOperationsForResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_name: "ResourceName", # required
      #         page_token: "string",
      #       }
      # @!attribute [rw] resource_name
      #   The name of the resource for which you are requesting information.
      #   @return [String]
      #
      # @!attribute [rw] page_token
      #   A token used for advancing to the next page of results from your get
      #   operations for resource request.
      #   @return [String]
      class GetOperationsForResourceRequest < Struct.new(
        :resource_name,
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the results
      #   of your get operations for resource request.
      #   @return [Array<Types::Operation>]
      #
      # @!attribute [rw] next_page_count
      #   Returns the number of pages of results that remain.
      #   @return [String]
      class GetOperationsForResourceResult < Struct.new(
        :operations,
        :next_page_count)
        include Aws::Structure
      end

      # @note When making an API call, pass GetOperationsRequest
      #   data as a hash:
      #
      #       {
      #         page_token: "string",
      #       }
      # @!attribute [rw] page_token
      #   A token used for advancing to the next page of results from your get
      #   operations request.
      #   @return [String]
      class GetOperationsRequest < Struct.new(
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the results
      #   of your get operations request.
      #   @return [Array<Types::Operation>]
      #
      # @!attribute [rw] next_page_token
      #   A token used for advancing to the next page of results from your get
      #   operations request.
      #   @return [String]
      class GetOperationsResult < Struct.new(
        :operations,
        :next_page_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetRegionsRequest
      #   data as a hash:
      #
      #       {
      #         include_availability_zones: false,
      #       }
      # @!attribute [rw] include_availability_zones
      #   A Boolean value indicating whether to also include Availability
      #   Zones in your get regions request. Availability Zones are indicated
      #   with a letter: e.g., `us-east-1a`.
      #   @return [Boolean]
      class GetRegionsRequest < Struct.new(
        :include_availability_zones)
        include Aws::Structure
      end

      # @!attribute [rw] regions
      #   An array of key-value pairs containing information about your get
      #   regions request.
      #   @return [Array<Types::Region>]
      class GetRegionsResult < Struct.new(
        :regions)
        include Aws::Structure
      end

      # @note When making an API call, pass GetStaticIpRequest
      #   data as a hash:
      #
      #       {
      #         static_ip_name: "ResourceName", # required
      #       }
      # @!attribute [rw] static_ip_name
      #   The name of the static IP in Lightsail.
      #   @return [String]
      class GetStaticIpRequest < Struct.new(
        :static_ip_name)
        include Aws::Structure
      end

      # @!attribute [rw] static_ip
      #   An array of key-value pairs containing information about the
      #   requested static IP.
      #   @return [Types::StaticIp]
      class GetStaticIpResult < Struct.new(
        :static_ip)
        include Aws::Structure
      end

      # @note When making an API call, pass GetStaticIpsRequest
      #   data as a hash:
      #
      #       {
      #         page_token: "string",
      #       }
      # @!attribute [rw] page_token
      #   A token used for advancing to the next page of results from your get
      #   static IPs request.
      #   @return [String]
      class GetStaticIpsRequest < Struct.new(
        :page_token)
        include Aws::Structure
      end

      # @!attribute [rw] static_ips
      #   An array of key-value pairs containing information about your get
      #   static IPs request.
      #   @return [Array<Types::StaticIp>]
      #
      # @!attribute [rw] next_page_token
      #   A token used for advancing to the next page of results from your get
      #   static IPs request.
      #   @return [String]
      class GetStaticIpsResult < Struct.new(
        :static_ips,
        :next_page_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ImportKeyPairRequest
      #   data as a hash:
      #
      #       {
      #         key_pair_name: "ResourceName", # required
      #         public_key_base_64: "Base64", # required
      #       }
      # @!attribute [rw] key_pair_name
      #   The name of the key pair for which you want to import the public
      #   key.
      #   @return [String]
      #
      # @!attribute [rw] public_key_base_64
      #   A base64-encoded public key of the `ssh-rsa` type.
      #   @return [String]
      class ImportKeyPairRequest < Struct.new(
        :key_pair_name,
        :public_key_base_64)
        include Aws::Structure
      end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the request
      #   operation.
      #   @return [Types::Operation]
      class ImportKeyPairResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # Describes an instance (a virtual private server).
      # @!attribute [rw] name
      #   The name the user gave the instance (e.g.,
      #   `Amazon_Linux-1GB-Virginia-1`).
      #   @return [String]
      #
      # @!attribute [rw] arn
      #   The Amazon Resource Name (ARN) of the instance (e.g.,
      #   `arn:aws:lightsail:us-east-1:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE`).
      #   @return [String]
      #
      # @!attribute [rw] support_code
      #   The support code. Include this code in your email to support when
      #   you have questions about an instance or another resource in
      #   Lightsail. This code enables our support team to look up your
      #   Lightsail information more easily.
      #   @return [String]
      #
      # @!attribute [rw] created_at
      #   The timestamp when the instance was created (e.g., `1479734909.17`).
      #   @return [Time]
      #
      # @!attribute [rw] location
      #   The region name and availability zone where the instance is located.
      #   @return [Types::ResourceLocation]
      #
      # @!attribute [rw] resource_type
      #   The type of resource (usually `Instance`).
      #   @return [String]
      #
      # @!attribute [rw] blueprint_id
      #   The blueprint ID (e.g., `os_amlinux_2016_03`).
      #   @return [String]
      #
      # @!attribute [rw] blueprint_name
      #   The friendly name of the blueprint (e.g., `Amazon Linux`).
      #   @return [String]
      #
      # @!attribute [rw] bundle_id
      #   The bundle for the instance (e.g., `micro_1_0`).
      #   @return [String]
      #
      # @!attribute [rw] is_static_ip
      #   A Boolean value indicating whether this instance has a static IP
      #   assigned to it.
      #   @return [Boolean]
      #
      # @!attribute [rw] private_ip_address
      #   The private IP address of the instance.
      #   @return [String]
      #
      # @!attribute [rw] public_ip_address
      #   The public IP address of the instance.
      #   @return [String]
      #
      # @!attribute [rw] ipv6_address
      #   The IPv6 address of the instance.
      #   @return [String]
      #
      # @!attribute [rw] hardware
      #   The size of the vCPU and the amount of RAM for the instance.
      #   @return [Types::InstanceHardware]
      #
      # @!attribute [rw] networking
      #   Information about the public ports and monthly data transfer rates
      #   for the instance.
      #   @return [Types::InstanceNetworking]
      #
      # @!attribute [rw] state
      #   The status code and the state (e.g., `running`) for the instance.
      #   @return [Types::InstanceState]
      #
      # @!attribute [rw] username
      #   The user name for connecting to the instance (e.g., `ec2-user`).
      #   @return [String]
      #
      # @!attribute [rw] ssh_key_name
      #   The name of the SSH key being used to connect to the instance (e.g.,
      #   `LightsailDefaultKeyPair`).
      #   @return [String]
      class Instance < Struct.new(
        :name,
        :arn,
        :support_code,
        :created_at,
        :location,
        :resource_type,
        :blueprint_id,
        :blueprint_name,
        :bundle_id,
        :is_static_ip,
        :private_ip_address,
        :public_ip_address,
        :ipv6_address,
        :hardware,
        :networking,
        :state,
        :username,
        :ssh_key_name)
        include Aws::Structure
      end

      # The parameters for gaining temporary access to one of your Amazon
      # Lightsail instances.
      # @!attribute [rw] cert_key
      #   For SSH access, the public key to use when accessing your instance
      #   For OpenSSH clients (e.g., command line SSH), you should save this
      #   value to `tempkey-cert.pub`.
      #   @return [String]
      #
      # @!attribute [rw] expires_at
      #   For SSH access, the date on which the temporary keys expire.
      #   @return [Time]
      #
      # @!attribute [rw] ip_address
      #   The public IP address of the Amazon Lightsail instance.
      #   @return [String]
      #
      # @!attribute [rw] password
      #   For RDP access, the temporary password of the Amazon EC2 instance.
      #   @return [String]
      #
      # @!attribute [rw] private_key
      #   For SSH access, the temporary private key. For OpenSSH clients
      #   (e.g., command line SSH), you should save this value to `tempkey`).
      #   @return [String]
      #
      # @!attribute [rw] protocol
      #   The protocol for these Amazon Lightsail instance access details.
      #   @return [String]
      #
      # @!attribute [rw] instance_name
      #   The name of this Amazon Lightsail instance.
      #   @return [String]
      #
      # @!attribute [rw] username
      #   The user name to use when logging in to the Amazon Lightsail
      #   instance.
      #   @return [String]
      class InstanceAccessDetails < Struct.new(
        :cert_key,
        :expires_at,
        :ip_address,
        :password,
        :private_key,
        :protocol,
        :instance_name,
        :username)
        include Aws::Structure
      end

      # Describes the hardware for the instance.
      # @!attribute [rw] cpu_count
      #   The number of vCPUs the instance has.
      #   @return [Integer]
      #
      # @!attribute [rw] disks
      #   The disks attached to the instance.
      #   @return [Array<Types::Disk>]
      #
      # @!attribute [rw] ram_size_in_gb
      #   The amount of RAM in GB on the instance (e.g., `1.0`).
      #   @return [Float]
      class InstanceHardware < Struct.new(
        :cpu_count,
        :disks,
        :ram_size_in_gb)
        include Aws::Structure
      end

      # Describes monthly data transfer rates and port information for an
      # instance.
      # @!attribute [rw] monthly_transfer
      #   The amount of data in GB allocated for monthly data transfers.
      #   @return [Types::MonthlyTransfer]
      #
      # @!attribute [rw] ports
      #   An array of key-value pairs containing information about the ports
      #   on the instance.
      #   @return [Array<Types::InstancePortInfo>]
      class InstanceNetworking < Struct.new(
        :monthly_transfer,
        :ports)
        include Aws::Structure
      end

      # Describes information about the instance ports.
      # @!attribute [rw] from_port
      #   The first port in the range.
      #   @return [Integer]
      #
      # @!attribute [rw] to_port
      #   The last port in the range.
      #   @return [Integer]
      #
      # @!attribute [rw] protocol
      #   The protocol.
      #   @return [String]
      #
      # @!attribute [rw] access_from
      #   The location from which access is allowed (e.g., `Anywhere
      #   (0.0.0.0/0)`).
      #   @return [String]
      #
      # @!attribute [rw] access_type
      #   The type of access (`Public` or `Private`).
      #   @return [String]
      #
      # @!attribute [rw] common_name
      #   The common name.
      #   @return [String]
      #
      # @!attribute [rw] access_direction
      #   The access direction (`inbound` or `outbound`).
      #   @return [String]
      class InstancePortInfo < Struct.new(
        :from_port,
        :to_port,
        :protocol,
        :access_from,
        :access_type,
        :common_name,
        :access_direction)
        include Aws::Structure
      end

      # Describes the snapshot of the virtual private server, or *instance*.
      # @!attribute [rw] name
      #   The name of the snapshot.
      #   @return [String]
      #
      # @!attribute [rw] arn
      #   The Amazon Resource Name (ARN) of the snapshot (e.g.,
      #   `arn:aws:lightsail:us-east-1:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE`).
      #   @return [String]
      #
      # @!attribute [rw] support_code
      #   The support code. Include this code in your email to support when
      #   you have questions about an instance or another resource in
      #   Lightsail. This code enables our support team to look up your
      #   Lightsail information more easily.
      #   @return [String]
      #
      # @!attribute [rw] created_at
      #   The timestamp when the snapshot was created (e.g.,
      #   `1479907467.024`).
      #   @return [Time]
      #
      # @!attribute [rw] location
      #   The region name and availability zone where you created the
      #   snapshot.
      #   @return [Types::ResourceLocation]
      #
      # @!attribute [rw] resource_type
      #   The type of resource (usually `InstanceSnapshot`).
      #   @return [String]
      #
      # @!attribute [rw] state
      #   The state the snapshot is in.
      #   @return [String]
      #
      # @!attribute [rw] progress
      #   The progress of the snapshot.
      #   @return [String]
      #
      # @!attribute [rw] from_instance_name
      #   The instance from which the snapshot was created.
      #   @return [String]
      #
      # @!attribute [rw] from_instance_arn
      #   The Amazon Resource Name (ARN) of the instance from which the
      #   snapshot was created (e.g.,
      #   `arn:aws:lightsail:us-east-1:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE`).
      #   @return [String]
      #
      # @!attribute [rw] from_blueprint_id
      #   The blueprint ID from which you created the snapshot (e.g.,
      #   `os_debian_8_3`). A blueprint is a virtual private server (or
      #   *instance*) image used to create instances quickly.
      #   @return [String]
      #
      # @!attribute [rw] from_bundle_id
      #   The bundle ID from which you created the snapshot (e.g.,
      #   `micro_1_0`).
      #   @return [String]
      #
      # @!attribute [rw] size_in_gb
      #   The size in GB of the SSD.
      #   @return [Integer]
      class InstanceSnapshot < Struct.new(
        :name,
        :arn,
        :support_code,
        :created_at,
        :location,
        :resource_type,
        :state,
        :progress,
        :from_instance_name,
        :from_instance_arn,
        :from_blueprint_id,
        :from_bundle_id,
        :size_in_gb)
        include Aws::Structure
      end

      # Describes the virtual private server (or *instance*) status.
      # @!attribute [rw] code
      #   The status code for the instance.
      #   @return [Integer]
      #
      # @!attribute [rw] name
      #   The state of the instance (e.g., `running` or `pending`).
      #   @return [String]
      class InstanceState < Struct.new(
        :code,
        :name)
        include Aws::Structure
      end

      # @api private
      class IsVpcPeeredRequest < Aws::EmptyStructure; end

      # @!attribute [rw] is_peered
      #   Returns `true` if the Lightsail VPC is peered; otherwise, `false`.
      #   @return [Boolean]
      class IsVpcPeeredResult < Struct.new(
        :is_peered)
        include Aws::Structure
      end

      # Describes the SSH key pair.
      # @!attribute [rw] name
      #   The friendly name of the SSH key pair.
      #   @return [String]
      #
      # @!attribute [rw] arn
      #   The Amazon Resource Name (ARN) of the key pair (e.g.,
      #   `arn:aws:lightsail:us-east-1:123456789101:KeyPair/05859e3d-331d-48ba-9034-12345EXAMPLE`).
      #   @return [String]
      #
      # @!attribute [rw] support_code
      #   The support code. Include this code in your email to support when
      #   you have questions about an instance or another resource in
      #   Lightsail. This code enables our support team to look up your
      #   Lightsail information more easily.
      #   @return [String]
      #
      # @!attribute [rw] created_at
      #   The timestamp when the key pair was created (e.g.,
      #   `1479816991.349`).
      #   @return [Time]
      #
      # @!attribute [rw] location
      #   The region name and Availability Zone where the key pair was
      #   created.
      #   @return [Types::ResourceLocation]
      #
      # @!attribute [rw] resource_type
      #   The resource type (usually `KeyPair`).
      #   @return [String]
      #
      # @!attribute [rw] fingerprint
      #   The RSA fingerprint of the key pair.
      #   @return [String]
      class KeyPair < Struct.new(
        :name,
        :arn,
        :support_code,
        :created_at,
        :location,
        :resource_type,
        :fingerprint)
        include Aws::Structure
      end

      # Describes the metric data point.
      # @!attribute [rw] average
      #   The average.
      #   @return [Float]
      #
      # @!attribute [rw] maximum
      #   The maximum.
      #   @return [Float]
      #
      # @!attribute [rw] minimum
      #   The minimum.
      #   @return [Float]
      #
      # @!attribute [rw] sample_count
      #   The sample count.
      #   @return [Float]
      #
      # @!attribute [rw] sum
      #   The sum.
      #   @return [Float]
      #
      # @!attribute [rw] timestamp
      #   The timestamp (e.g., `1479816991.349`).
      #   @return [Time]
      #
      # @!attribute [rw] unit
      #   The unit.
      #   @return [String]
      class MetricDatapoint < Struct.new(
        :average,
        :maximum,
        :minimum,
        :sample_count,
        :sum,
        :timestamp,
        :unit)
        include Aws::Structure
      end

      # Describes the monthly data transfer in and out of your virtual private
      # server (or *instance*).
      # @!attribute [rw] gb_per_month_allocated
      #   The amount allocated per month (in GB).
      #   @return [Integer]
      class MonthlyTransfer < Struct.new(
        :gb_per_month_allocated)
        include Aws::Structure
      end

      # @note When making an API call, pass OpenInstancePublicPortsRequest
      #   data as a hash:
      #
      #       {
      #         port_info: { # required
      #           from_port: 1,
      #           to_port: 1,
      #           protocol: "tcp", # accepts tcp, all, udp
      #         },
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] port_info
      #   An array of key-value pairs containing information about the port
      #   mappings.
      #   @return [Types::PortInfo]
      #
      # @!attribute [rw] instance_name
      #   The name of the instance for which you want to open the public
      #   ports.
      #   @return [String]
      class OpenInstancePublicPortsRequest < Struct.new(
        :port_info,
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the request
      #   operation.
      #   @return [Types::Operation]
      class OpenInstancePublicPortsResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # Describes the API operation.
      # @!attribute [rw] id
      #   The ID of the operation.
      #   @return [String]
      #
      # @!attribute [rw] resource_name
      #   The resource name.
      #   @return [String]
      #
      # @!attribute [rw] resource_type
      #   The resource type.
      #   @return [String]
      #
      # @!attribute [rw] created_at
      #   The timestamp when the operation was initialized (e.g.,
      #   `1479816991.349`).
      #   @return [Time]
      #
      # @!attribute [rw] location
      #   The region and Availability Zone.
      #   @return [Types::ResourceLocation]
      #
      # @!attribute [rw] is_terminal
      #   A Boolean value indicating whether the operation is terminal.
      #   @return [Boolean]
      #
      # @!attribute [rw] operation_details
      #   Details about the operation (e.g., `Debian-1GB-Virginia-1`).
      #   @return [String]
      #
      # @!attribute [rw] operation_type
      #   The type of operation.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   The status of the operation.
      #   @return [String]
      #
      # @!attribute [rw] status_changed_at
      #   The timestamp when the status was changed (e.g., `1479816991.349`).
      #   @return [Time]
      #
      # @!attribute [rw] error_code
      #   The error code.
      #   @return [String]
      #
      # @!attribute [rw] error_details
      #   The error details.
      #   @return [String]
      class Operation < Struct.new(
        :id,
        :resource_name,
        :resource_type,
        :created_at,
        :location,
        :is_terminal,
        :operation_details,
        :operation_type,
        :status,
        :status_changed_at,
        :error_code,
        :error_details)
        include Aws::Structure
      end

      # @api private
      class PeerVpcRequest < Aws::EmptyStructure; end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the request
      #   operation.
      #   @return [Types::Operation]
      class PeerVpcResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # Describes information about the ports on your virtual private server
      # (or *instance*).
      # @note When making an API call, pass PortInfo
      #   data as a hash:
      #
      #       {
      #         from_port: 1,
      #         to_port: 1,
      #         protocol: "tcp", # accepts tcp, all, udp
      #       }
      # @!attribute [rw] from_port
      #   The first port in the range.
      #   @return [Integer]
      #
      # @!attribute [rw] to_port
      #   The last port in the range.
      #   @return [Integer]
      #
      # @!attribute [rw] protocol
      #   The protocol.
      #   @return [String]
      class PortInfo < Struct.new(
        :from_port,
        :to_port,
        :protocol)
        include Aws::Structure
      end

      # @note When making an API call, pass RebootInstanceRequest
      #   data as a hash:
      #
      #       {
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the instance to reboot.
      #   @return [String]
      class RebootInstanceRequest < Struct.new(
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the request
      #   operation.
      #   @return [Array<Types::Operation>]
      class RebootInstanceResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # Describes the AWS Region.
      # @!attribute [rw] continent_code
      #   The continent code (e.g., `NA`, meaning North America).
      #   @return [String]
      #
      # @!attribute [rw] description
      #   The description of the AWS Region (e.g., `This region is recommended
      #   to serve users in the eastern United States and eastern Canada`).
      #   @return [String]
      #
      # @!attribute [rw] display_name
      #   The display name (e.g., `Virginia`).
      #   @return [String]
      #
      # @!attribute [rw] name
      #   The region name (e.g., `us-east-1`).
      #   @return [String]
      #
      # @!attribute [rw] availability_zones
      #   The Availability Zones.
      #   @return [Array<Types::AvailabilityZone>]
      class Region < Struct.new(
        :continent_code,
        :description,
        :display_name,
        :name,
        :availability_zones)
        include Aws::Structure
      end

      # @note When making an API call, pass ReleaseStaticIpRequest
      #   data as a hash:
      #
      #       {
      #         static_ip_name: "ResourceName", # required
      #       }
      # @!attribute [rw] static_ip_name
      #   The name of the static IP to delete.
      #   @return [String]
      class ReleaseStaticIpRequest < Struct.new(
        :static_ip_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the request
      #   operation.
      #   @return [Array<Types::Operation>]
      class ReleaseStaticIpResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # Describes the resource location.
      # @!attribute [rw] availability_zone
      #   The Availability Zone.
      #   @return [String]
      #
      # @!attribute [rw] region_name
      #   The AWS Region name.
      #   @return [String]
      class ResourceLocation < Struct.new(
        :availability_zone,
        :region_name)
        include Aws::Structure
      end

      # @note When making an API call, pass StartInstanceRequest
      #   data as a hash:
      #
      #       {
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the instance (a virtual private server) to start.
      #   @return [String]
      class StartInstanceRequest < Struct.new(
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the request
      #   operation.
      #   @return [Array<Types::Operation>]
      class StartInstanceResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # Describes the static IP.
      # @!attribute [rw] name
      #   The name of the static IP (e.g., `StaticIP-Virginia-EXAMPLE`).
      #   @return [String]
      #
      # @!attribute [rw] arn
      #   The Amazon Resource Name (ARN) of the static IP (e.g.,
      #   `arn:aws:lightsail:us-east-1:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE`).
      #   @return [String]
      #
      # @!attribute [rw] support_code
      #   The support code. Include this code in your email to support when
      #   you have questions about an instance or another resource in
      #   Lightsail. This code enables our support team to look up your
      #   Lightsail information more easily.
      #   @return [String]
      #
      # @!attribute [rw] created_at
      #   The timestamp when the static IP was created (e.g.,
      #   `1479735304.222`).
      #   @return [Time]
      #
      # @!attribute [rw] location
      #   The region and Availability Zone where the static IP was created.
      #   @return [Types::ResourceLocation]
      #
      # @!attribute [rw] resource_type
      #   The resource type (usually `StaticIp`).
      #   @return [String]
      #
      # @!attribute [rw] ip_address
      #   The static IP address.
      #   @return [String]
      #
      # @!attribute [rw] attached_to
      #   The instance where the static IP is attached (e.g.,
      #   `Amazon_Linux-1GB-Virginia-1`).
      #   @return [String]
      #
      # @!attribute [rw] is_attached
      #   A Boolean value indicating whether the static IP is attached.
      #   @return [Boolean]
      class StaticIp < Struct.new(
        :name,
        :arn,
        :support_code,
        :created_at,
        :location,
        :resource_type,
        :ip_address,
        :attached_to,
        :is_attached)
        include Aws::Structure
      end

      # @note When making an API call, pass StopInstanceRequest
      #   data as a hash:
      #
      #       {
      #         instance_name: "ResourceName", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the instance (a virtual private server) to stop.
      #   @return [String]
      class StopInstanceRequest < Struct.new(
        :instance_name)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the request
      #   operation.
      #   @return [Array<Types::Operation>]
      class StopInstanceResult < Struct.new(
        :operations)
        include Aws::Structure
      end

      # @api private
      class UnpeerVpcRequest < Aws::EmptyStructure; end

      # @!attribute [rw] operation
      #   An array of key-value pairs containing information about the request
      #   operation.
      #   @return [Types::Operation]
      class UnpeerVpcResult < Struct.new(
        :operation)
        include Aws::Structure
      end

      # @note When making an API call, pass UpdateDomainEntryRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         domain_entry: { # required
      #           id: "NonEmptyString",
      #           name: "DomainName",
      #           target: "string",
      #           type: "DomainEntryType",
      #           options: {
      #             "DomainEntryOptionsKeys" => "string",
      #           },
      #         },
      #       }
      # @!attribute [rw] domain_name
      #   The name of the domain recordset to update.
      #   @return [String]
      #
      # @!attribute [rw] domain_entry
      #   An array of key-value pairs containing information about the domain
      #   entry.
      #   @return [Types::DomainEntry]
      class UpdateDomainEntryRequest < Struct.new(
        :domain_name,
        :domain_entry)
        include Aws::Structure
      end

      # @!attribute [rw] operations
      #   An array of key-value pairs containing information about the request
      #   operation.
      #   @return [Array<Types::Operation>]
      class UpdateDomainEntryResult < Struct.new(
        :operations)
        include Aws::Structure
      end

    end
  end
end
