# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lightsail
  module Types

    # @note When making an API call, you may pass AllocateStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AllocateStaticIpRequest AWS API Documentation
    #
    class AllocateStaticIpRequest < Struct.new(
      :static_ip_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the static
    #   IP address you allocated.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AllocateStaticIpResult AWS API Documentation
    #
    class AllocateStaticIpResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The instance name to which you want to attach the static IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachStaticIpRequest AWS API Documentation
    #
    class AttachStaticIpRequest < Struct.new(
      :static_ip_name,
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about your API
    #   operations.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachStaticIpResult AWS API Documentation
    #
    class AttachStaticIpResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes an Availability Zone.
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone. The format is `us-east-1a`
    #   (case-sensitive).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :zone_name,
      :state)
      include Aws::Structure
    end

    # Describes a blueprint (a virtual private server image).
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Blueprint AWS API Documentation
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Bundle AWS API Documentation
    #
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

    # @note When making an API call, you may pass CloseInstancePublicPortsRequest
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
    #
    # @!attribute [rw] port_info
    #   Information about the public port you are trying to close.
    #   @return [Types::PortInfo]
    #
    # @!attribute [rw] instance_name
    #   The name of the instance on which you're attempting to close the
    #   public ports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloseInstancePublicPortsRequest AWS API Documentation
    #
    class CloseInstancePublicPortsRequest < Struct.new(
      :port_info,
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of key-value pairs that contains information about the
    #   operation.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloseInstancePublicPortsResult AWS API Documentation
    #
    class CloseInstancePublicPortsResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDomainEntryRequest
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
    #
    # @!attribute [rw] domain_name
    #   The domain name (e.g., `example.com`) for which you want to create
    #   the domain entry.
    #   @return [String]
    #
    # @!attribute [rw] domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry request.
    #   @return [Types::DomainEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainEntryRequest AWS API Documentation
    #
    class CreateDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the
    #   operation.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainEntryResult AWS API Documentation
    #
    class CreateDomainEntryResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the domain
    #   resource you created.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainResult AWS API Documentation
    #
    class CreateDomainResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInstanceSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         instance_snapshot_name: "ResourceName", # required
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_snapshot_name
    #   The name for your new snapshot.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The Lightsail instance on which to base your snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstanceSnapshotRequest AWS API Documentation
    #
    class CreateInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name,
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the results
    #   of your create instances snapshot request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstanceSnapshotResult AWS API Documentation
    #
    class CreateInstanceSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInstancesFromSnapshotRequest
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
    #
    # @!attribute [rw] instance_names
    #   The names for your new instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where you want to create your instances. Use
    #   the following formatting: `us-east-1a` (case sensitive). You can get
    #   a list of availability zones by using the [get regions][1]
    #   operation. Be sure to add the `include availability zones` parameter
    #   to your request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesFromSnapshotRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesFromSnapshotResult AWS API Documentation
    #
    class CreateInstancesFromSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInstancesRequest
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
    #
    # @!attribute [rw] instance_names
    #   The names to use for your new Lightsail instances. Separate multiple
    #   values using quotation marks and commas, for example:
    #   `["MyFirstInstance","MySecondInstance"]`
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which to create your instance. Use the
    #   following format: `us-east-1a` (case sensitive). You can get a list
    #   of availability zones by using the [get regions][1] operation. Be
    #   sure to add the `include availability zones` parameter to your
    #   request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
    #   @return [String]
    #
    # @!attribute [rw] custom_image_name
    #   (Deprecated) The name for your custom image.
    #
    #   <note markdown="1"> In releases prior to June 12, 2017, this parameter was ignored by
    #   the API. It is now deprecated.
    #
    #    </note>
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesResult AWS API Documentation
    #
    class CreateInstancesResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_pair_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] key_pair_name
    #   The name for your new key pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateKeyPairRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateKeyPairResult AWS API Documentation
    #
    class CreateKeyPairResult < Struct.new(
      :key_pair,
      :public_key_base_64,
      :private_key_base_64,
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDomainEntryRequest
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
    #
    # @!attribute [rw] domain_name
    #   The name of the domain entry to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_entry
    #   An array of key-value pairs containing information about your domain
    #   entries.
    #   @return [Types::DomainEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainEntryRequest AWS API Documentation
    #
    class DeleteDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the results
    #   of your delete domain entry request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainEntryResult AWS API Documentation
    #
    class DeleteDomainEntryResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The specific domain name to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the results
    #   of your delete domain request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainResult AWS API Documentation
    #
    class DeleteDomainResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceRequest AWS API Documentation
    #
    class DeleteInstanceRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the results
    #   of your delete instance request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceResult AWS API Documentation
    #
    class DeleteInstanceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInstanceSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         instance_snapshot_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_snapshot_name
    #   The name of the snapshot to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceSnapshotRequest AWS API Documentation
    #
    class DeleteInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the results
    #   of your delete instance snapshot request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceSnapshotResult AWS API Documentation
    #
    class DeleteInstanceSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_pair_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] key_pair_name
    #   The name of the key pair to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKeyPairRequest AWS API Documentation
    #
    class DeleteKeyPairRequest < Struct.new(
      :key_pair_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the results
    #   of your delete key pair request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKeyPairResult AWS API Documentation
    #
    class DeleteKeyPairResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP to detach from the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachStaticIpRequest AWS API Documentation
    #
    class DetachStaticIpRequest < Struct.new(
      :static_ip_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the results
    #   of your detach static IP request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachStaticIpResult AWS API Documentation
    #
    class DetachStaticIpResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes the hard disk (an SSD).
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Disk AWS API Documentation
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Domain AWS API Documentation
    #
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
    #
    # @note When making an API call, you may pass DomainEntry
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DomainEntry AWS API Documentation
    #
    class DomainEntry < Struct.new(
      :id,
      :name,
      :target,
      :type,
      :options)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DownloadDefaultKeyPairRequest AWS API Documentation
    #
    class DownloadDefaultKeyPairRequest < Aws::EmptyStructure; end

    # @!attribute [rw] public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #   @return [String]
    #
    # @!attribute [rw] private_key_base_64
    #   A base64-encoded RSA private key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DownloadDefaultKeyPairResult AWS API Documentation
    #
    class DownloadDefaultKeyPairResult < Struct.new(
      :public_key_base_64,
      :private_key_base_64)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetActiveNamesRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   A token used for paginating results from your get active names
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetActiveNamesRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetActiveNamesResult AWS API Documentation
    #
    class GetActiveNamesResult < Struct.new(
      :active_names,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBlueprintsRequest
    #   data as a hash:
    #
    #       {
    #         include_inactive: false,
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] include_inactive
    #   A Boolean value indicating whether to include inactive results in
    #   your request.
    #   @return [Boolean]
    #
    # @!attribute [rw] page_token
    #   A token used for advancing to the next page of results from your get
    #   blueprints request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBlueprintsRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBlueprintsResult AWS API Documentation
    #
    class GetBlueprintsResult < Struct.new(
      :blueprints,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBundlesRequest
    #   data as a hash:
    #
    #       {
    #         include_inactive: false,
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] include_inactive
    #   A Boolean value that indicates whether to include inactive bundle
    #   results in your request.
    #   @return [Boolean]
    #
    # @!attribute [rw] page_token
    #   A token used for advancing to the next page of results from your get
    #   bundles request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBundlesRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBundlesResult AWS API Documentation
    #
    class GetBundlesResult < Struct.new(
      :bundles,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name for which your want to return information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainRequest AWS API Documentation
    #
    class GetDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   An array of key-value pairs containing information about your get
    #   domain request.
    #   @return [Types::Domain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainResult AWS API Documentation
    #
    class GetDomainResult < Struct.new(
      :domain)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDomainsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   A token used for advancing to the next page of results from your get
    #   domains request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainsRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainsResult AWS API Documentation
    #
    class GetDomainsResult < Struct.new(
      :domains,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceAccessDetailsRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #         protocol: "ssh", # accepts ssh, rdp
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance to access.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to use to connect to your instance. Defaults to `ssh`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceAccessDetailsRequest AWS API Documentation
    #
    class GetInstanceAccessDetailsRequest < Struct.new(
      :instance_name,
      :protocol)
      include Aws::Structure
    end

    # @!attribute [rw] access_details
    #   An array of key-value pairs containing information about a get
    #   instance access request.
    #   @return [Types::InstanceAccessDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceAccessDetailsResult AWS API Documentation
    #
    class GetInstanceAccessDetailsResult < Struct.new(
      :access_details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceMetricDataRequest
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceMetricDataRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceMetricDataResult AWS API Documentation
    #
    class GetInstanceMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstancePortStatesRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancePortStatesRequest AWS API Documentation
    #
    class GetInstancePortStatesRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] port_states
    #   Information about the port states resulting from your request.
    #   @return [Array<Types::InstancePortState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancePortStatesResult AWS API Documentation
    #
    class GetInstancePortStatesResult < Struct.new(
      :port_states)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceRequest AWS API Documentation
    #
    class GetInstanceRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] instance
    #   An array of key-value pairs containing information about the
    #   specified instance.
    #   @return [Types::Instance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceResult AWS API Documentation
    #
    class GetInstanceResult < Struct.new(
      :instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         instance_snapshot_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_snapshot_name
    #   The name of the snapshot for which you are requesting information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotRequest AWS API Documentation
    #
    class GetInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] instance_snapshot
    #   An array of key-value pairs containing information about the results
    #   of your get instance snapshot request.
    #   @return [Types::InstanceSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotResult AWS API Documentation
    #
    class GetInstanceSnapshotResult < Struct.new(
      :instance_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceSnapshotsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   A token used for advancing to the next page of results from your get
    #   instance snapshots request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotsRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotsResult AWS API Documentation
    #
    class GetInstanceSnapshotsResult < Struct.new(
      :instance_snapshots,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceStateRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance to get state information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceStateRequest AWS API Documentation
    #
    class GetInstanceStateRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The state of the instance.
    #   @return [Types::InstanceState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceStateResult AWS API Documentation
    #
    class GetInstanceStateResult < Struct.new(
      :state)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstancesRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   A token used for advancing to the next page of results from your get
    #   instances request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancesRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancesResult AWS API Documentation
    #
    class GetInstancesResult < Struct.new(
      :instances,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_pair_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] key_pair_name
    #   The name of the key pair for which you are requesting information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairRequest AWS API Documentation
    #
    class GetKeyPairRequest < Struct.new(
      :key_pair_name)
      include Aws::Structure
    end

    # @!attribute [rw] key_pair
    #   An array of key-value pairs containing information about the key
    #   pair.
    #   @return [Types::KeyPair]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairResult AWS API Documentation
    #
    class GetKeyPairResult < Struct.new(
      :key_pair)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetKeyPairsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   A token used for advancing to the next page of results from your get
    #   key pairs request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairsRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairsResult AWS API Documentation
    #
    class GetKeyPairsResult < Struct.new(
      :key_pairs,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOperationRequest
    #   data as a hash:
    #
    #       {
    #         operation_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] operation_id
    #   A GUID used to identify the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationRequest AWS API Documentation
    #
    class GetOperationRequest < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the results
    #   of your get operation request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationResult AWS API Documentation
    #
    class GetOperationResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOperationsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_name: "ResourceName", # required
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] resource_name
    #   The name of the resource for which you are requesting information.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   A token used for advancing to the next page of results from your get
    #   operations for resource request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsForResourceRequest AWS API Documentation
    #
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
    #   (Deprecated) Returns the number of pages of results that remain.
    #
    #   <note markdown="1"> In releases prior to June 12, 2017, this parameter returned `null`
    #   by the API. It is now deprecated, and the API returns the
    #   `nextPageToken` parameter instead.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsForResourceResult AWS API Documentation
    #
    class GetOperationsForResourceResult < Struct.new(
      :operations,
      :next_page_count,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOperationsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   A token used for advancing to the next page of results from your get
    #   operations request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsResult AWS API Documentation
    #
    class GetOperationsResult < Struct.new(
      :operations,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRegionsRequest
    #   data as a hash:
    #
    #       {
    #         include_availability_zones: false,
    #       }
    #
    # @!attribute [rw] include_availability_zones
    #   A Boolean value indicating whether to also include Availability
    #   Zones in your get regions request. Availability Zones are indicated
    #   with a letter: e.g., `us-east-1a`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRegionsRequest AWS API Documentation
    #
    class GetRegionsRequest < Struct.new(
      :include_availability_zones)
      include Aws::Structure
    end

    # @!attribute [rw] regions
    #   An array of key-value pairs containing information about your get
    #   regions request.
    #   @return [Array<Types::Region>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRegionsResult AWS API Documentation
    #
    class GetRegionsResult < Struct.new(
      :regions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP in Lightsail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpRequest AWS API Documentation
    #
    class GetStaticIpRequest < Struct.new(
      :static_ip_name)
      include Aws::Structure
    end

    # @!attribute [rw] static_ip
    #   An array of key-value pairs containing information about the
    #   requested static IP.
    #   @return [Types::StaticIp]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpResult AWS API Documentation
    #
    class GetStaticIpResult < Struct.new(
      :static_ip)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStaticIpsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   A token used for advancing to the next page of results from your get
    #   static IPs request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpsRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpsResult AWS API Documentation
    #
    class GetStaticIpsResult < Struct.new(
      :static_ips,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_pair_name: "ResourceName", # required
    #         public_key_base_64: "Base64", # required
    #       }
    #
    # @!attribute [rw] key_pair_name
    #   The name of the key pair for which you want to import the public
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ImportKeyPairRequest AWS API Documentation
    #
    class ImportKeyPairRequest < Struct.new(
      :key_pair_name,
      :public_key_base_64)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the request
    #   operation.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ImportKeyPairResult AWS API Documentation
    #
    class ImportKeyPairResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # Describes an instance (a virtual private server).
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Instance AWS API Documentation
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceAccessDetails AWS API Documentation
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceHardware AWS API Documentation
    #
    class InstanceHardware < Struct.new(
      :cpu_count,
      :disks,
      :ram_size_in_gb)
      include Aws::Structure
    end

    # Describes monthly data transfer rates and port information for an
    # instance.
    #
    # @!attribute [rw] monthly_transfer
    #   The amount of data in GB allocated for monthly data transfers.
    #   @return [Types::MonthlyTransfer]
    #
    # @!attribute [rw] ports
    #   An array of key-value pairs containing information about the ports
    #   on the instance.
    #   @return [Array<Types::InstancePortInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceNetworking AWS API Documentation
    #
    class InstanceNetworking < Struct.new(
      :monthly_transfer,
      :ports)
      include Aws::Structure
    end

    # Describes information about the instance ports.
    #
    # @!attribute [rw] from_port
    #   The first port in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol being used. Can be one of the following.
    #
    #   * `tcp` - Transmission Control Protocol (TCP) provides reliable,
    #     ordered, and error-checked delivery of streamed data between
    #     applications running on hosts communicating by an IP network. If
    #     you have an application that doesn't require reliable data stream
    #     service, use UDP instead.
    #
    #   * `all` - All transport layer protocol types. For more general
    #     information, see [Transport layer][1] on Wikipedia.
    #
    #   * `udp` - With User Datagram Protocol (UDP), computer applications
    #     can send messages (or datagrams) to other hosts on an Internet
    #     Protocol (IP) network. Prior communications are not required to
    #     set up transmission channels or data paths. Applications that
    #     don't require reliable data stream service can use UDP, which
    #     provides a connectionless datagram service that emphasizes reduced
    #     latency over reliability. If you do require reliable data stream
    #     service, use TCP instead.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Transport_layer
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstancePortInfo AWS API Documentation
    #
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

    # Describes the port state.
    #
    # @!attribute [rw] from_port
    #   The first port in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol being used. Can be one of the following.
    #
    #   * `tcp` - Transmission Control Protocol (TCP) provides reliable,
    #     ordered, and error-checked delivery of streamed data between
    #     applications running on hosts communicating by an IP network. If
    #     you have an application that doesn't require reliable data stream
    #     service, use UDP instead.
    #
    #   * `all` - All transport layer protocol types. For more general
    #     information, see [Transport layer][1] on Wikipedia.
    #
    #   * `udp` - With User Datagram Protocol (UDP), computer applications
    #     can send messages (or datagrams) to other hosts on an Internet
    #     Protocol (IP) network. Prior communications are not required to
    #     set up transmission channels or data paths. Applications that
    #     don't require reliable data stream service can use UDP, which
    #     provides a connectionless datagram service that emphasizes reduced
    #     latency over reliability. If you do require reliable data stream
    #     service, use TCP instead.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Transport_layer
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies whether the instance port is `open` or `closed`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstancePortState AWS API Documentation
    #
    class InstancePortState < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :state)
      include Aws::Structure
    end

    # Describes the snapshot of the virtual private server, or *instance*.
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceSnapshot AWS API Documentation
    #
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
    #
    # @!attribute [rw] code
    #   The status code for the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The state of the instance (e.g., `running` or `pending`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceState AWS API Documentation
    #
    class InstanceState < Struct.new(
      :code,
      :name)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/IsVpcPeeredRequest AWS API Documentation
    #
    class IsVpcPeeredRequest < Aws::EmptyStructure; end

    # @!attribute [rw] is_peered
    #   Returns `true` if the Lightsail VPC is peered; otherwise, `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/IsVpcPeeredResult AWS API Documentation
    #
    class IsVpcPeeredResult < Struct.new(
      :is_peered)
      include Aws::Structure
    end

    # Describes the SSH key pair.
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/KeyPair AWS API Documentation
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/MetricDatapoint AWS API Documentation
    #
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
    #
    # @!attribute [rw] gb_per_month_allocated
    #   The amount allocated per month (in GB).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/MonthlyTransfer AWS API Documentation
    #
    class MonthlyTransfer < Struct.new(
      :gb_per_month_allocated)
      include Aws::Structure
    end

    # @note When making an API call, you may pass OpenInstancePublicPortsRequest
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
    #
    # @!attribute [rw] port_info
    #   An array of key-value pairs containing information about the port
    #   mappings.
    #   @return [Types::PortInfo]
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which you want to open the public
    #   ports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OpenInstancePublicPortsRequest AWS API Documentation
    #
    class OpenInstancePublicPortsRequest < Struct.new(
      :port_info,
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the request
    #   operation.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OpenInstancePublicPortsResult AWS API Documentation
    #
    class OpenInstancePublicPortsResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # Describes the API operation.
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Operation AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PeerVpcRequest AWS API Documentation
    #
    class PeerVpcRequest < Aws::EmptyStructure; end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the request
    #   operation.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PeerVpcResult AWS API Documentation
    #
    class PeerVpcResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # Describes information about the ports on your virtual private server
    # (or *instance*).
    #
    # @note When making an API call, you may pass PortInfo
    #   data as a hash:
    #
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #         protocol: "tcp", # accepts tcp, all, udp
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PortInfo AWS API Documentation
    #
    class PortInfo < Struct.new(
      :from_port,
      :to_port,
      :protocol)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutInstancePublicPortsRequest
    #   data as a hash:
    #
    #       {
    #         port_infos: [ # required
    #           {
    #             from_port: 1,
    #             to_port: 1,
    #             protocol: "tcp", # accepts tcp, all, udp
    #           },
    #         ],
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] port_infos
    #   Specifies information about the public port(s).
    #   @return [Array<Types::PortInfo>]
    #
    # @!attribute [rw] instance_name
    #   The Lightsail instance name of the public port(s) you are setting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutInstancePublicPortsRequest AWS API Documentation
    #
    class PutInstancePublicPortsRequest < Struct.new(
      :port_infos,
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   Describes metadata about the operation you just executed.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutInstancePublicPortsResult AWS API Documentation
    #
    class PutInstancePublicPortsResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebootInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance to reboot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootInstanceRequest AWS API Documentation
    #
    class RebootInstanceRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the request
    #   operation.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootInstanceResult AWS API Documentation
    #
    class RebootInstanceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes the AWS Region.
    #
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
    #   The Availability Zones. Follows the format `us-east-1a`
    #   (case-sensitive).
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Region AWS API Documentation
    #
    class Region < Struct.new(
      :continent_code,
      :description,
      :display_name,
      :name,
      :availability_zones)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReleaseStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ReleaseStaticIpRequest AWS API Documentation
    #
    class ReleaseStaticIpRequest < Struct.new(
      :static_ip_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the request
    #   operation.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ReleaseStaticIpResult AWS API Documentation
    #
    class ReleaseStaticIpResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes the resource location.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone. Follows the format `us-east-1a`
    #   (case-sensitive).
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The AWS Region name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ResourceLocation AWS API Documentation
    #
    class ResourceLocation < Struct.new(
      :availability_zone,
      :region_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance (a virtual private server) to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartInstanceRequest AWS API Documentation
    #
    class StartInstanceRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the request
    #   operation.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartInstanceResult AWS API Documentation
    #
    class StartInstanceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes the static IP.
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StaticIp AWS API Documentation
    #
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

    # @note When making an API call, you may pass StopInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance (a virtual private server) to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstanceRequest AWS API Documentation
    #
    class StopInstanceRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the request
    #   operation.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstanceResult AWS API Documentation
    #
    class StopInstanceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnpeerVpcRequest AWS API Documentation
    #
    class UnpeerVpcRequest < Aws::EmptyStructure; end

    # @!attribute [rw] operation
    #   An array of key-value pairs containing information about the request
    #   operation.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnpeerVpcResult AWS API Documentation
    #
    class UnpeerVpcResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDomainEntryRequest
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
    #
    # @!attribute [rw] domain_name
    #   The name of the domain recordset to update.
    #   @return [String]
    #
    # @!attribute [rw] domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry.
    #   @return [Types::DomainEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDomainEntryRequest AWS API Documentation
    #
    class UpdateDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of key-value pairs containing information about the request
    #   operation.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDomainEntryResult AWS API Documentation
    #
    class UpdateDomainEntryResult < Struct.new(
      :operations)
      include Aws::Structure
    end

  end
end
