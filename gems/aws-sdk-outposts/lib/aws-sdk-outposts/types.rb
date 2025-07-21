# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Outposts
  module Types

    # You do not have permission to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an address.
    #
    # @!attribute [rw] contact_name
    #   The name of the contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_phone_number
    #   The phone number of the contact.
    #   @return [String]
    #
    # @!attribute [rw] address_line_1
    #   The first line of the address.
    #   @return [String]
    #
    # @!attribute [rw] address_line_2
    #   The second line of the address.
    #   @return [String]
    #
    # @!attribute [rw] address_line_3
    #   The third line of the address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city for the address.
    #   @return [String]
    #
    # @!attribute [rw] state_or_region
    #   The state for the address.
    #   @return [String]
    #
    # @!attribute [rw] district_or_county
    #   The district or county for the address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code for the address.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   The ISO-3166 two-letter country code for the address.
    #   @return [String]
    #
    # @!attribute [rw] municipality
    #   The municipality for the address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/Address AWS API Documentation
    #
    class Address < Struct.new(
      :contact_name,
      :contact_phone_number,
      :address_line_1,
      :address_line_2,
      :address_line_3,
      :city,
      :state_or_region,
      :district_or_county,
      :postal_code,
      :country_code,
      :municipality)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about hardware assets.
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset. An Outpost asset can be a single server within
    #   an Outposts rack or an Outposts server configuration.
    #   @return [String]
    #
    # @!attribute [rw] rack_id
    #   The rack ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of the asset.
    #   @return [String]
    #
    # @!attribute [rw] compute_attributes
    #   Information about compute hardware assets.
    #   @return [Types::ComputeAttributes]
    #
    # @!attribute [rw] asset_location
    #   The position of an asset in a rack.
    #   @return [Types::AssetLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/AssetInfo AWS API Documentation
    #
    class AssetInfo < Struct.new(
      :asset_id,
      :rack_id,
      :asset_type,
      :compute_attributes,
      :asset_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon EC2 instance.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset. An Outpost asset can be a single server within
    #   an Outposts rack or an Outposts server configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] aws_service_name
    #   The Amazon Web Services service name of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/AssetInstance AWS API Documentation
    #
    class AssetInstance < Struct.new(
      :instance_id,
      :instance_type,
      :asset_id,
      :account_id,
      :aws_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The capacity for each instance type.
    #
    # @!attribute [rw] instance_type
    #   The type of instance.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of each instance type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/AssetInstanceTypeCapacity AWS API Documentation
    #
    class AssetInstanceTypeCapacity < Struct.new(
      :instance_type,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the position of the asset in a rack.
    #
    # @!attribute [rw] rack_elevation
    #   The position of an asset in a rack measured in rack units.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/AssetLocation AWS API Documentation
    #
    class AssetLocation < Struct.new(
      :rack_elevation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A running Amazon EC2 instance that can be stopped to free up capacity
    # needed to run the capacity task.
    #
    # @!attribute [rw] instance_id
    #   The ID of the blocking instance.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] aws_service_name
    #   The Amazon Web Services service name that owns the specified
    #   blocking instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/BlockingInstance AWS API Documentation
    #
    class BlockingInstance < Struct.new(
      :instance_id,
      :account_id,
      :aws_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_task_id
    #   ID of the capacity task that you want to cancel.
    #   @return [String]
    #
    # @!attribute [rw] outpost_identifier
    #   ID or ARN of the Outpost associated with the capacity task that you
    #   want to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CancelCapacityTaskInput AWS API Documentation
    #
    class CancelCapacityTaskInput < Struct.new(
      :capacity_task_id,
      :outpost_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CancelCapacityTaskOutput AWS API Documentation
    #
    class CancelCapacityTaskOutput < Aws::EmptyStructure; end

    # @!attribute [rw] order_id
    #   The ID of the order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CancelOrderInput AWS API Documentation
    #
    class CancelOrderInput < Struct.new(
      :order_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CancelOrderOutput AWS API Documentation
    #
    class CancelOrderOutput < Aws::EmptyStructure; end

    # The capacity tasks that failed.
    #
    # @!attribute [rw] reason
    #   The reason that the specified capacity task failed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CapacityTaskFailure AWS API Documentation
    #
    class CapacityTaskFailure < Struct.new(
      :reason,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the capacity task.
    #
    # @!attribute [rw] capacity_task_id
    #   The ID of the specified capacity task.
    #   @return [String]
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost associated with the specified capacity task.
    #   @return [String]
    #
    # @!attribute [rw] order_id
    #   The ID of the Amazon Web Services Outposts order of the host
    #   associated with the capacity task.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset. An Outpost asset can be a single server within
    #   an Outposts rack or an Outposts server configuration.
    #   @return [String]
    #
    # @!attribute [rw] capacity_task_status
    #   The status of the capacity task.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date that the specified capacity task was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date that the specified capacity task successfully ran.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date that the specified capacity was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CapacityTaskSummary AWS API Documentation
    #
    class CapacityTaskSummary < Struct.new(
      :capacity_task_id,
      :outpost_id,
      :order_id,
      :asset_id,
      :capacity_task_status,
      :creation_date,
      :completion_date,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a catalog item.
    #
    # @!attribute [rw] catalog_item_id
    #   The ID of the catalog item.
    #   @return [String]
    #
    # @!attribute [rw] item_status
    #   The status of a catalog item.
    #   @return [String]
    #
    # @!attribute [rw] ec2_capacities
    #   Information about the EC2 capacity of an item.
    #   @return [Array<Types::EC2Capacity>]
    #
    # @!attribute [rw] power_kva
    #   Information about the power draw of an item.
    #   @return [Float]
    #
    # @!attribute [rw] weight_lbs
    #   The weight of the item in pounds.
    #   @return [Integer]
    #
    # @!attribute [rw] supported_uplink_gbps
    #   The uplink speed this catalog item requires for the connection to
    #   the Region.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] supported_storage
    #   The supported storage options for the catalog item.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CatalogItem AWS API Documentation
    #
    class CatalogItem < Struct.new(
      :catalog_item_id,
      :item_status,
      :ec2_capacities,
      :power_kva,
      :weight_lbs,
      :supported_uplink_gbps,
      :supported_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about compute hardware assets.
    #
    # @!attribute [rw] host_id
    #   The host ID of the Dedicated Host on the asset.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state.
    #
    #   * ACTIVE - The asset is available and can provide capacity for new
    #     compute resources.
    #
    #   * ISOLATED - The asset is undergoing maintenance and can't provide
    #     capacity for new compute resources. Existing compute resources on
    #     the asset are not affected.
    #
    #   * RETIRING - The underlying hardware for the asset is degraded.
    #     Capacity for new compute resources is reduced. Amazon Web Services
    #     sends notifications for resources that must be stopped before the
    #     asset can be replaced.
    #   @return [String]
    #
    # @!attribute [rw] instance_families
    #   A list of the names of instance families that are currently
    #   associated with a given asset.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type_capacities
    #   The instance type capacities configured for this asset. This can be
    #   changed through a capacity task.
    #   @return [Array<Types::AssetInstanceTypeCapacity>]
    #
    # @!attribute [rw] max_vcpus
    #   The maximum number of vCPUs possible for the specified asset.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ComputeAttributes AWS API Documentation
    #
    class ComputeAttributes < Struct.new(
      :host_id,
      :state,
      :instance_families,
      :instance_type_capacities,
      :max_vcpus)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting this resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource causing the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource causing the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a connection.
    #
    # @!attribute [rw] client_public_key
    #   The public key of the client.
    #   @return [String]
    #
    # @!attribute [rw] server_public_key
    #   The public key of the server.
    #   @return [String]
    #
    # @!attribute [rw] server_endpoint
    #   The endpoint for the server.
    #   @return [String]
    #
    # @!attribute [rw] client_tunnel_address
    #   The client tunnel address.
    #   @return [String]
    #
    # @!attribute [rw] server_tunnel_address
    #   The server tunnel address.
    #   @return [String]
    #
    # @!attribute [rw] allowed_ips
    #   The allowed IP addresses.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ConnectionDetails AWS API Documentation
    #
    class ConnectionDetails < Struct.new(
      :client_public_key,
      :server_public_key,
      :server_endpoint,
      :client_tunnel_address,
      :server_tunnel_address,
      :allowed_ips)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_identifier
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] line_items
    #   The line items that make up the order.
    #   @return [Array<Types::LineItemRequest>]
    #
    # @!attribute [rw] payment_option
    #   The payment option.
    #   @return [String]
    #
    # @!attribute [rw] payment_term
    #   The payment terms.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateOrderInput AWS API Documentation
    #
    class CreateOrderInput < Struct.new(
      :outpost_identifier,
      :line_items,
      :payment_option,
      :payment_term)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] order
    #   Information about this order.
    #   @return [Types::Order]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateOrderOutput AWS API Documentation
    #
    class CreateOrderOutput < Struct.new(
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The ID of the Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the Outpost.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] supported_hardware_type
    #   The type of hardware for this Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateOutpostInput AWS API Documentation
    #
    class CreateOutpostInput < Struct.new(
      :name,
      :description,
      :site_id,
      :availability_zone,
      :availability_zone_id,
      :tags,
      :supported_hardware_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost
    #   Information about an Outpost.
    #   @return [Types::Outpost]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateOutpostOutput AWS API Documentation
    #
    class CreateOutpostOutput < Struct.new(
      :outpost)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the site.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the site.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   Additional information that you provide about site access
    #   requirements, electrician scheduling, personal protective equipment,
    #   or regulation of equipment materials that could affect your
    #   installation process.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to a site.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] operating_address
    #   The location to install and power on the hardware. This address
    #   might be different from the shipping address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] shipping_address
    #   The location to ship the hardware. This address might be different
    #   from the operating address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] rack_physical_properties
    #   Information about the physical and logistical details for the rack
    #   at this site. For more information about hardware requirements for
    #   racks, see [Network readiness checklist][1] in the Amazon Web
    #   Services Outposts User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist
    #   @return [Types::RackPhysicalProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateSiteInput AWS API Documentation
    #
    class CreateSiteInput < Struct.new(
      :name,
      :description,
      :notes,
      :tags,
      :operating_address,
      :shipping_address,
      :rack_physical_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about a site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateSiteOutput AWS API Documentation
    #
    class CreateSiteOutput < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_id
    #   The ID or ARN of the Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteOutpostInput AWS API Documentation
    #
    class DeleteOutpostInput < Struct.new(
      :outpost_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteOutpostOutput AWS API Documentation
    #
    class DeleteOutpostOutput < Aws::EmptyStructure; end

    # @!attribute [rw] site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteSiteInput AWS API Documentation
    #
    class DeleteSiteInput < Struct.new(
      :site_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteSiteOutput AWS API Documentation
    #
    class DeleteSiteOutput < Aws::EmptyStructure; end

    # Information about EC2 capacity.
    #
    # @!attribute [rw] family
    #   The family of the EC2 capacity.
    #   @return [String]
    #
    # @!attribute [rw] max_size
    #   The maximum size of the EC2 capacity.
    #   @return [String]
    #
    # @!attribute [rw] quantity
    #   The quantity of the EC2 capacity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/EC2Capacity AWS API Documentation
    #
    class EC2Capacity < Struct.new(
      :family,
      :max_size,
      :quantity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_task_id
    #   ID of the capacity task.
    #   @return [String]
    #
    # @!attribute [rw] outpost_identifier
    #   ID or ARN of the Outpost associated with the specified capacity
    #   task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetCapacityTaskInput AWS API Documentation
    #
    class GetCapacityTaskInput < Struct.new(
      :capacity_task_id,
      :outpost_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_task_id
    #   ID of the capacity task.
    #   @return [String]
    #
    # @!attribute [rw] outpost_id
    #   ID of the Outpost associated with the specified capacity task.
    #   @return [String]
    #
    # @!attribute [rw] order_id
    #   ID of the Amazon Web Services Outposts order associated with the
    #   specified capacity task.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the Outpost asset. An Outpost asset can be a single server
    #   within an Outposts rack or an Outposts server configuration.
    #   @return [String]
    #
    # @!attribute [rw] requested_instance_pools
    #   List of instance pools requested in the capacity task.
    #   @return [Array<Types::InstanceTypeCapacity>]
    #
    # @!attribute [rw] instances_to_exclude
    #   Instances that the user specified they cannot stop in order to free
    #   up the capacity needed to run the capacity task.
    #   @return [Types::InstancesToExclude]
    #
    # @!attribute [rw] dry_run
    #   Performs a dry run to determine if you are above or below instance
    #   capacity.
    #   @return [Boolean]
    #
    # @!attribute [rw] capacity_task_status
    #   Status of the capacity task.
    #
    #   A capacity task can have one of the following statuses:
    #
    #   * `REQUESTED` - The capacity task was created and is awaiting the
    #     next step by Amazon Web Services Outposts.
    #
    #   * `IN_PROGRESS` - The capacity task is running and cannot be
    #     cancelled.
    #
    #   * `FAILED` - The capacity task could not be completed.
    #
    #   * `COMPLETED` - The capacity task has completed successfully.
    #
    #   * `WAITING_FOR_EVACUATION` - The capacity task requires capacity to
    #     run. You must stop the recommended EC2 running instances to free
    #     up capacity for the task to run.
    #
    #   * `CANCELLATION_IN_PROGRESS` - The capacity task has been cancelled
    #     and is in the process of cleaning up resources.
    #
    #   * `CANCELLED` - The capacity task is cancelled.
    #   @return [String]
    #
    # @!attribute [rw] failed
    #   Reason why the capacity task failed.
    #   @return [Types::CapacityTaskFailure]
    #
    # @!attribute [rw] creation_date
    #   The date the capacity task was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date the capacity task ran successfully.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date the capacity task was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] task_action_on_blocking_instances
    #   User-specified option in case an instance is blocking the capacity
    #   task from running. Shows one of the following options:
    #
    #   * `WAIT_FOR_EVACUATION` - Checks every 10 minutes over 48 hours to
    #     determine if instances have stopped and capacity is available to
    #     complete the task.
    #
    #   * `FAIL_TASK` - The capacity task fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetCapacityTaskOutput AWS API Documentation
    #
    class GetCapacityTaskOutput < Struct.new(
      :capacity_task_id,
      :outpost_id,
      :order_id,
      :asset_id,
      :requested_instance_pools,
      :instances_to_exclude,
      :dry_run,
      :capacity_task_status,
      :failed,
      :creation_date,
      :completion_date,
      :last_modified_date,
      :task_action_on_blocking_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_item_id
    #   The ID of the catalog item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetCatalogItemInput AWS API Documentation
    #
    class GetCatalogItemInput < Struct.new(
      :catalog_item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_item
    #   Information about this catalog item.
    #   @return [Types::CatalogItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetCatalogItemOutput AWS API Documentation
    #
    class GetCatalogItemOutput < Struct.new(
      :catalog_item)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetConnectionRequest AWS API Documentation
    #
    class GetConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_details
    #   Information about the connection.
    #   @return [Types::ConnectionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetConnectionResponse AWS API Documentation
    #
    class GetConnectionResponse < Struct.new(
      :connection_id,
      :connection_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] order_id
    #   The ID of the order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOrderInput AWS API Documentation
    #
    class GetOrderInput < Struct.new(
      :order_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] order
    #   Information about an order.
    #   @return [Types::Order]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOrderOutput AWS API Documentation
    #
    class GetOrderOutput < Struct.new(
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] outpost_identifier
    #   The ID or ARN of the Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostBillingInformationInput AWS API Documentation
    #
    class GetOutpostBillingInformationInput < Struct.new(
      :next_token,
      :max_results,
      :outpost_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] subscriptions
    #   The subscription details for the specified Outpost.
    #   @return [Array<Types::Subscription>]
    #
    # @!attribute [rw] contract_end_date
    #   The date the current contract term ends for the specified Outpost.
    #   You must start the renewal or decommission process at least 5
    #   business days before the current term for your Amazon Web Services
    #   Outposts ends. Failing to complete these steps at least 5 business
    #   days before the current term ends might result in unanticipated
    #   charges.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostBillingInformationOutput AWS API Documentation
    #
    class GetOutpostBillingInformationOutput < Struct.new(
      :next_token,
      :subscriptions,
      :contract_end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_id
    #   The ID or ARN of the Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostInput AWS API Documentation
    #
    class GetOutpostInput < Struct.new(
      :outpost_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_id
    #   The ID or ARN of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostInstanceTypesInput AWS API Documentation
    #
    class GetOutpostInstanceTypesInput < Struct.new(
      :outpost_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_types
    #   Information about the instance types.
    #   @return [Array<Types::InstanceTypeItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostInstanceTypesOutput AWS API Documentation
    #
    class GetOutpostInstanceTypesOutput < Struct.new(
      :instance_types,
      :next_token,
      :outpost_id,
      :outpost_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost
    #   Information about an Outpost.
    #   @return [Types::Outpost]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostOutput AWS API Documentation
    #
    class GetOutpostOutput < Struct.new(
      :outpost)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_identifier
    #   The ID or ARN of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] order_id
    #   The ID for the Amazon Web Services Outposts order.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the Outpost asset. An Outpost asset can be a single server
    #   within an Outposts rack or an Outposts server configuration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostSupportedInstanceTypesInput AWS API Documentation
    #
    class GetOutpostSupportedInstanceTypesInput < Struct.new(
      :outpost_identifier,
      :order_id,
      :asset_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_types
    #   Information about the instance types.
    #   @return [Array<Types::InstanceTypeItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostSupportedInstanceTypesOutput AWS API Documentation
    #
    class GetOutpostSupportedInstanceTypesOutput < Struct.new(
      :instance_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] address_type
    #   The type of the address you request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetSiteAddressInput AWS API Documentation
    #
    class GetSiteAddressInput < Struct.new(
      :site_id,
      :address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] address_type
    #   The type of the address you receive.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   Information about the address.
    #   @return [Types::Address]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetSiteAddressOutput AWS API Documentation
    #
    class GetSiteAddressOutput < Struct.new(
      :site_id,
      :address_type,
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetSiteInput AWS API Documentation
    #
    class GetSiteInput < Struct.new(
      :site_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about a site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetSiteOutput AWS API Documentation
    #
    class GetSiteOutput < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # The instance type that you specify determines the combination of CPU,
    # memory, storage, and networking capacity.
    #
    # @!attribute [rw] instance_type
    #   The instance type of the hosts.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of instances for the specified instance type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/InstanceTypeCapacity AWS API Documentation
    #
    class InstanceTypeCapacity < Struct.new(
      :instance_type,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an instance type.
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] vcp_us
    #   The number of default VCPUs in an instance type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/InstanceTypeItem AWS API Documentation
    #
    class InstanceTypeItem < Struct.new(
      :instance_type,
      :vcp_us)
      SENSITIVE = []
      include Aws::Structure
    end

    # User-specified instances that must not be stopped. These instances
    # will not appear in the list of instances that Amazon Web Services
    # recommends to stop in order to free up capacity.
    #
    # @!attribute [rw] instances
    #   List of user-specified instances that must not be stopped.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_ids
    #   IDs of the accounts that own each instance that must not be stopped.
    #   @return [Array<String>]
    #
    # @!attribute [rw] services
    #   Names of the services that own each instance that must not be
    #   stopped in order to free up the capacity needed to run the capacity
    #   task.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/InstancesToExclude AWS API Documentation
    #
    class InstancesToExclude < Struct.new(
      :instances,
      :account_ids,
      :services)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a line item.
    #
    # @!attribute [rw] catalog_item_id
    #   The ID of the catalog item.
    #   @return [String]
    #
    # @!attribute [rw] line_item_id
    #   The ID of the line item.
    #   @return [String]
    #
    # @!attribute [rw] quantity
    #   The quantity of the line item.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the line item.
    #   @return [String]
    #
    # @!attribute [rw] shipment_information
    #   Information about a line item shipment.
    #   @return [Types::ShipmentInformation]
    #
    # @!attribute [rw] asset_information_list
    #   Information about assets.
    #   @return [Array<Types::LineItemAssetInformation>]
    #
    # @!attribute [rw] previous_line_item_id
    #   The ID of the previous line item.
    #   @return [String]
    #
    # @!attribute [rw] previous_order_id
    #   The ID of the previous order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/LineItem AWS API Documentation
    #
    class LineItem < Struct.new(
      :catalog_item_id,
      :line_item_id,
      :quantity,
      :status,
      :shipment_information,
      :asset_information_list,
      :previous_line_item_id,
      :previous_order_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a line item asset.
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset. An Outpost asset can be a single server within
    #   an Outposts rack or an Outposts server configuration.
    #   @return [String]
    #
    # @!attribute [rw] mac_address_list
    #   The MAC addresses of the asset.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/LineItemAssetInformation AWS API Documentation
    #
    class LineItemAssetInformation < Struct.new(
      :asset_id,
      :mac_address_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a line item request.
    #
    # @!attribute [rw] catalog_item_id
    #   The ID of the catalog item.
    #   @return [String]
    #
    # @!attribute [rw] quantity
    #   The quantity of a line item request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/LineItemRequest AWS API Documentation
    #
    class LineItemRequest < Struct.new(
      :catalog_item_id,
      :quantity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_identifier
    #   The ID of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] asset_id_filter
    #   Filters the results by asset ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type_filter
    #   Filters the results by instance ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_id_filter
    #   Filters the results by account ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_service_filter
    #   Filters the results by Amazon Web Services service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListAssetInstancesInput AWS API Documentation
    #
    class ListAssetInstancesInput < Struct.new(
      :outpost_identifier,
      :asset_id_filter,
      :instance_type_filter,
      :account_id_filter,
      :aws_service_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_instances
    #   List of instances owned by all accounts on the Outpost. Does not
    #   include Amazon EBS or Amazon S3 instances.
    #   @return [Array<Types::AssetInstance>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListAssetInstancesOutput AWS API Documentation
    #
    class ListAssetInstancesOutput < Struct.new(
      :asset_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_identifier
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] host_id_filter
    #   Filters the results by the host ID of a Dedicated Host.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   Filters the results by state.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListAssetsInput AWS API Documentation
    #
    class ListAssetsInput < Struct.new(
      :outpost_identifier,
      :host_id_filter,
      :max_results,
      :next_token,
      :status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assets
    #   Information about the hardware assets.
    #   @return [Array<Types::AssetInfo>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListAssetsOutput AWS API Documentation
    #
    class ListAssetsOutput < Struct.new(
      :assets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_identifier
    #   The ID or ARN of the Outpost associated with the specified capacity
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] capacity_task_id
    #   The ID of the capacity task.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListBlockingInstancesForCapacityTaskInput AWS API Documentation
    #
    class ListBlockingInstancesForCapacityTaskInput < Struct.new(
      :outpost_identifier,
      :capacity_task_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blocking_instances
    #   A list of all running Amazon EC2 instances on the Outpost. Stopping
    #   one or more of these instances can free up the capacity needed to
    #   run the capacity task.
    #   @return [Array<Types::BlockingInstance>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListBlockingInstancesForCapacityTaskOutput AWS API Documentation
    #
    class ListBlockingInstancesForCapacityTaskOutput < Struct.new(
      :blocking_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_identifier_filter
    #   Filters the results by an Outpost ID or an Outpost ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] capacity_task_status_filter
    #   A list of statuses. For example, `REQUESTED` or
    #   `WAITING_FOR_EVACUATION`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListCapacityTasksInput AWS API Documentation
    #
    class ListCapacityTasksInput < Struct.new(
      :outpost_identifier_filter,
      :max_results,
      :next_token,
      :capacity_task_status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_tasks
    #   Lists all the capacity tasks.
    #   @return [Array<Types::CapacityTaskSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListCapacityTasksOutput AWS API Documentation
    #
    class ListCapacityTasksOutput < Struct.new(
      :capacity_tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] item_class_filter
    #   Filters the results by item class.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_storage_filter
    #   Filters the results by storage option.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_family_filter
    #   Filters the results by EC2 family (for example, M5).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListCatalogItemsInput AWS API Documentation
    #
    class ListCatalogItemsInput < Struct.new(
      :next_token,
      :max_results,
      :item_class_filter,
      :supported_storage_filter,
      :ec2_family_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_items
    #   Information about the catalog items.
    #   @return [Array<Types::CatalogItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListCatalogItemsOutput AWS API Documentation
    #
    class ListCatalogItemsOutput < Struct.new(
      :catalog_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_identifier_filter
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListOrdersInput AWS API Documentation
    #
    class ListOrdersInput < Struct.new(
      :outpost_identifier_filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] orders
    #   Information about the orders.
    #   @return [Array<Types::OrderSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListOrdersOutput AWS API Documentation
    #
    class ListOrdersOutput < Struct.new(
      :orders,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] life_cycle_status_filter
    #   Filters the results by the lifecycle status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone_filter
    #   Filters the results by Availability Zone (for example,
    #   `us-east-1a`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone_id_filter
    #   Filters the results by AZ ID (for example, `use1-az1`).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListOutpostsInput AWS API Documentation
    #
    class ListOutpostsInput < Struct.new(
      :next_token,
      :max_results,
      :life_cycle_status_filter,
      :availability_zone_filter,
      :availability_zone_id_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outposts
    #   Information about the Outposts.
    #   @return [Array<Types::Outpost>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListOutpostsOutput AWS API Documentation
    #
    class ListOutpostsOutput < Struct.new(
      :outposts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] operating_address_country_code_filter
    #   Filters the results by country code.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operating_address_state_or_region_filter
    #   Filters the results by state or region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operating_address_city_filter
    #   Filters the results by city.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListSitesInput AWS API Documentation
    #
    class ListSitesInput < Struct.new(
      :next_token,
      :max_results,
      :operating_address_country_code_filter,
      :operating_address_state_or_region_filter,
      :operating_address_city_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sites
    #   Information about the sites.
    #   @return [Array<Types::Site>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListSitesOutput AWS API Documentation
    #
    class ListSitesOutput < Struct.new(
      :sites,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The resource tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an order.
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost in the order.
    #   @return [String]
    #
    # @!attribute [rw] order_id
    #   The ID of the order.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the order.
    #
    #   * `PREPARING` - Order is received and being prepared.
    #
    #   * `IN_PROGRESS` - Order is either being built or shipped. To get
    #     more details, see the line item status.
    #
    #   * `DELIVERED` - Order was delivered to the Outpost site.
    #
    #   * `COMPLETED` - Order is complete.
    #
    #   * `CANCELLED` - Order is cancelled.
    #
    #   * `ERROR` - Customer should contact support.
    #
    #   <note markdown="1"> The following status are deprecated: `RECEIVED`, `PENDING`,
    #   `PROCESSING`, `INSTALLING`, and `FULFILLED`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] line_items
    #   The line items for the order
    #   @return [Array<Types::LineItem>]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the order.
    #   @return [String]
    #
    # @!attribute [rw] order_submission_date
    #   The submission date for the order.
    #   @return [Time]
    #
    # @!attribute [rw] order_fulfilled_date
    #   The fulfillment date of the order.
    #   @return [Time]
    #
    # @!attribute [rw] payment_term
    #   The payment term.
    #   @return [String]
    #
    # @!attribute [rw] order_type
    #   The type of order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/Order AWS API Documentation
    #
    class Order < Struct.new(
      :outpost_id,
      :order_id,
      :status,
      :line_items,
      :payment_option,
      :order_submission_date,
      :order_fulfilled_date,
      :payment_term,
      :order_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of line items in your order.
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] order_id
    #   The ID of the order.
    #   @return [String]
    #
    # @!attribute [rw] order_type
    #   The type of order.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the order.
    #
    #   * `PREPARING` - Order is received and is being prepared.
    #
    #   * `IN_PROGRESS` - Order is either being built, shipped, or
    #     installed. For more information, see the `LineItem` status.
    #
    #   * `COMPLETED` - Order is complete.
    #
    #   * `CANCELLED` - Order is cancelled.
    #
    #   * `ERROR` - Customer should contact support.
    #
    #   <note markdown="1"> The following statuses are deprecated: `RECEIVED`, `PENDING`,
    #   `PROCESSING`, `INSTALLING`, and `FULFILLED`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] line_item_counts_by_status
    #   The status of all line items in the order.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] order_submission_date
    #   The submission date for the order.
    #   @return [Time]
    #
    # @!attribute [rw] order_fulfilled_date
    #   The fulfilment date for the order.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/OrderSummary AWS API Documentation
    #
    class OrderSummary < Struct.new(
      :outpost_id,
      :order_id,
      :order_type,
      :status,
      :line_item_counts_by_status,
      :order_submission_date,
      :order_fulfilled_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Outpost.
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the Outpost owner.
    #   @return [String]
    #
    # @!attribute [rw] outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle_status
    #   The life cycle status.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The ID of the Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The Outpost tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] site_arn
    #   The Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] supported_hardware_type
    #   The hardware type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/Outpost AWS API Documentation
    #
    class Outpost < Struct.new(
      :outpost_id,
      :owner_id,
      :outpost_arn,
      :site_id,
      :name,
      :description,
      :life_cycle_status,
      :availability_zone,
      :availability_zone_id,
      :tags,
      :site_arn,
      :supported_hardware_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the physical and logistical details for racks at
    # sites. For more information about hardware requirements for racks, see
    # [Network readiness checklist][1] in the Amazon Web Services Outposts
    # User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist
    #
    # @!attribute [rw] power_draw_kva
    #   The power draw available at the hardware placement position for the
    #   rack.
    #   @return [String]
    #
    # @!attribute [rw] power_phase
    #   The power option that you can provide for hardware.
    #   @return [String]
    #
    # @!attribute [rw] power_connector
    #   The power connector for the hardware.
    #   @return [String]
    #
    # @!attribute [rw] power_feed_drop
    #   The position of the power feed.
    #   @return [String]
    #
    # @!attribute [rw] uplink_gbps
    #   The uplink speed the rack supports for the connection to the Region.
    #   @return [String]
    #
    # @!attribute [rw] uplink_count
    #   The number of uplinks each Outpost network device.
    #   @return [String]
    #
    # @!attribute [rw] fiber_optic_cable_type
    #   The type of fiber used to attach the Outpost to the network.
    #   @return [String]
    #
    # @!attribute [rw] optical_standard
    #   The type of optical standard used to attach the Outpost to the
    #   network. This field is dependent on uplink speed, fiber type, and
    #   distance to the upstream device. For more information about
    #   networking requirements for racks, see [Network][1] in the Amazon
    #   Web Services Outposts User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking
    #   @return [String]
    #
    # @!attribute [rw] maximum_supported_weight_lbs
    #   The maximum rack weight that this site can support. `NO_LIMIT` is
    #   over 2000 lbs (907 kg).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/RackPhysicalProperties AWS API Documentation
    #
    class RackPhysicalProperties < Struct.new(
      :power_draw_kva,
      :power_phase,
      :power_connector,
      :power_feed_drop,
      :uplink_gbps,
      :uplink_count,
      :fiber_optic_cable_type,
      :optical_standard,
      :maximum_supported_weight_lbs)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a line item shipment.
    #
    # @!attribute [rw] shipment_tracking_number
    #   The tracking number of the shipment.
    #   @return [String]
    #
    # @!attribute [rw] shipment_carrier
    #   The carrier of the shipment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ShipmentInformation AWS API Documentation
    #
    class ShipmentInformation < Struct.new(
      :shipment_tracking_number,
      :shipment_carrier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a site.
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the site.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the site.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The site tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] site_arn
    #   The Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   Notes about a site.
    #   @return [String]
    #
    # @!attribute [rw] operating_address_country_code
    #   The ISO-3166 two-letter country code where the hardware is installed
    #   and powered on.
    #   @return [String]
    #
    # @!attribute [rw] operating_address_state_or_region
    #   State or region where the hardware is installed and powered on.
    #   @return [String]
    #
    # @!attribute [rw] operating_address_city
    #   City where the hardware is installed and powered on.
    #   @return [String]
    #
    # @!attribute [rw] rack_physical_properties
    #   Information about the physical and logistical details for a rack at
    #   the site.
    #   @return [Types::RackPhysicalProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/Site AWS API Documentation
    #
    class Site < Struct.new(
      :site_id,
      :account_id,
      :name,
      :description,
      :tags,
      :site_arn,
      :notes,
      :operating_address_country_code,
      :operating_address_state_or_region,
      :operating_address_city,
      :rack_physical_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_identifier
    #   The ID or ARN of the Outposts associated with the specified capacity
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] order_id
    #   The ID of the Amazon Web Services Outposts order associated with the
    #   specified capacity task.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the Outpost asset. An Outpost asset can be a single server
    #   within an Outposts rack or an Outposts server configuration.
    #   @return [String]
    #
    # @!attribute [rw] instance_pools
    #   The instance pools specified in the capacity task.
    #   @return [Array<Types::InstanceTypeCapacity>]
    #
    # @!attribute [rw] instances_to_exclude
    #   List of user-specified running instances that must not be stopped in
    #   order to free up the capacity needed to run the capacity task.
    #   @return [Types::InstancesToExclude]
    #
    # @!attribute [rw] dry_run
    #   You can request a dry run to determine if the instance type and
    #   instance size changes is above or below available instance capacity.
    #   Requesting a dry run does not make any changes to your plan.
    #   @return [Boolean]
    #
    # @!attribute [rw] task_action_on_blocking_instances
    #   Specify one of the following options in case an instance is blocking
    #   the capacity task from running.
    #
    #   * `WAIT_FOR_EVACUATION` - Checks every 10 minutes over 48 hours to
    #     determine if instances have stopped and capacity is available to
    #     complete the task.
    #
    #   * `FAIL_TASK` - The capacity task fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/StartCapacityTaskInput AWS API Documentation
    #
    class StartCapacityTaskInput < Struct.new(
      :outpost_identifier,
      :order_id,
      :asset_id,
      :instance_pools,
      :instances_to_exclude,
      :dry_run,
      :task_action_on_blocking_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_task_id
    #   ID of the capacity task that you want to start.
    #   @return [String]
    #
    # @!attribute [rw] outpost_id
    #   ID of the Outpost associated with the capacity task.
    #   @return [String]
    #
    # @!attribute [rw] order_id
    #   ID of the Amazon Web Services Outposts order of the host associated
    #   with the capacity task.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset. An Outpost asset can be a single server within
    #   an Outposts rack or an Outposts server configuration.
    #   @return [String]
    #
    # @!attribute [rw] requested_instance_pools
    #   List of the instance pools requested in the specified capacity task.
    #   @return [Array<Types::InstanceTypeCapacity>]
    #
    # @!attribute [rw] instances_to_exclude
    #   User-specified instances that must not be stopped in order to free
    #   up the capacity needed to run the capacity task.
    #   @return [Types::InstancesToExclude]
    #
    # @!attribute [rw] dry_run
    #   Results of the dry run showing if the specified capacity task is
    #   above or below the available instance capacity.
    #   @return [Boolean]
    #
    # @!attribute [rw] capacity_task_status
    #   Status of the specified capacity task.
    #   @return [String]
    #
    # @!attribute [rw] failed
    #   Reason that the specified capacity task failed.
    #   @return [Types::CapacityTaskFailure]
    #
    # @!attribute [rw] creation_date
    #   Date that the specified capacity task was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   Date that the specified capacity task ran successfully.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   Date that the specified capacity task was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] task_action_on_blocking_instances
    #   User-specified option in case an instance is blocking the capacity
    #   task from running.
    #
    #   * `WAIT_FOR_EVACUATION` - Checks every 10 minutes over 48 hours to
    #     determine if instances have stopped and capacity is available to
    #     complete the task.
    #
    #   * `FAIL_TASK` - The capacity task fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/StartCapacityTaskOutput AWS API Documentation
    #
    class StartCapacityTaskOutput < Struct.new(
      :capacity_task_id,
      :outpost_id,
      :order_id,
      :asset_id,
      :requested_instance_pools,
      :instances_to_exclude,
      :dry_run,
      :capacity_task_status,
      :failed,
      :creation_date,
      :completion_date,
      :last_modified_date,
      :task_action_on_blocking_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_serial_number
    #   The serial number of the dongle.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the Outpost server.
    #   @return [String]
    #
    # @!attribute [rw] client_public_key
    #   The public key of the client.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_device_index
    #   The device index of the network interface on the Outpost server.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/StartConnectionRequest AWS API Documentation
    #
    class StartConnectionRequest < Struct.new(
      :device_serial_number,
      :asset_id,
      :client_public_key,
      :network_interface_device_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] underlay_ip_address
    #   The underlay IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/StartConnectionResponse AWS API Documentation
    #
    class StartConnectionResponse < Struct.new(
      :connection_id,
      :underlay_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about your Amazon Web Services Outposts
    # subscriptions.
    #
    # @!attribute [rw] subscription_id
    #   The ID of the subscription that appears on the Amazon Web Services
    #   Billing Center console.
    #   @return [String]
    #
    # @!attribute [rw] subscription_type
    #   The type of subscription which can be one of the following:
    #
    #   * **ORIGINAL** - The first order on the Amazon Web Services
    #     Outposts.
    #
    #   * **RENEWAL** - Renewal requests, both month to month and longer
    #     term.
    #
    #   * **CAPACITY\_INCREASE** - Capacity scaling orders.
    #   @return [String]
    #
    # @!attribute [rw] subscription_status
    #   The status of subscription which can be one of the following:
    #
    #   * **INACTIVE** - Subscription requests that are inactive.
    #
    #   * **ACTIVE** - Subscription requests that are in progress and have
    #     an end date in the future.
    #
    #   * **CANCELLED** - Subscription requests that are cancelled.
    #   @return [String]
    #
    # @!attribute [rw] order_ids
    #   The order ID for your subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] begin_date
    #   The date your subscription starts.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The date your subscription ends.
    #   @return [Time]
    #
    # @!attribute [rw] monthly_recurring_price
    #   The amount you are billed each month in the subscription period.
    #   @return [Float]
    #
    # @!attribute [rw] upfront_price
    #   The amount billed when the subscription is created. This is a
    #   one-time charge.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :subscription_id,
      :subscription_type,
      :subscription_status,
      :order_ids,
      :begin_date,
      :end_date,
      :monthly_recurring_price,
      :upfront_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] outpost_id
    #   The ID or ARN of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] supported_hardware_type
    #   The type of hardware for this Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateOutpostInput AWS API Documentation
    #
    class UpdateOutpostInput < Struct.new(
      :outpost_id,
      :name,
      :description,
      :supported_hardware_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost
    #   Information about an Outpost.
    #   @return [Types::Outpost]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateOutpostOutput AWS API Documentation
    #
    class UpdateOutpostOutput < Struct.new(
      :outpost)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] address_type
    #   The type of the address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The address for the site.
    #   @return [Types::Address]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateSiteAddressInput AWS API Documentation
    #
    class UpdateSiteAddressInput < Struct.new(
      :site_id,
      :address_type,
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address_type
    #   The type of the address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   Information about an address.
    #   @return [Types::Address]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateSiteAddressOutput AWS API Documentation
    #
    class UpdateSiteAddressOutput < Struct.new(
      :address_type,
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the site.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the site.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   Notes about a site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateSiteInput AWS API Documentation
    #
    class UpdateSiteInput < Struct.new(
      :site_id,
      :name,
      :description,
      :notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about a site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateSiteOutput AWS API Documentation
    #
    class UpdateSiteOutput < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] power_draw_kva
    #   The power draw, in kVA, available at the hardware placement position
    #   for the rack.
    #   @return [String]
    #
    # @!attribute [rw] power_phase
    #   The power option that you can provide for hardware.
    #
    #   * Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz
    #
    #   * Three-phase AC feed: 346 V to 480 V, 50 Hz or 60 Hz
    #   @return [String]
    #
    # @!attribute [rw] power_connector
    #   The power connector that Amazon Web Services should plan to provide
    #   for connections to the hardware. Note the correlation between
    #   `PowerPhase` and `PowerConnector`.
    #
    #   * Single-phase AC feed
    #
    #     * **L6-30P** – (common in US); 30A; single phase
    #
    #     * **IEC309 (blue)** – P+N+E, 6hr; 32 A; single phase
    #   * Three-phase AC feed
    #
    #     * **AH530P7W (red)** – 3P+N+E, 7hr; 30A; three phase
    #
    #     * **AH532P6W (red)** – 3P+N+E, 6hr; 32A; three phase
    #
    #     * **CS8365C** – (common in US); 3P+E, 50A; three phase
    #   @return [String]
    #
    # @!attribute [rw] power_feed_drop
    #   Indicates whether the power feed comes above or below the rack.
    #   @return [String]
    #
    # @!attribute [rw] uplink_gbps
    #   The uplink speed the rack should support for the connection to the
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] uplink_count
    #   Racks come with two Outpost network devices. Depending on the
    #   supported uplink speed at the site, the Outpost network devices
    #   provide a variable number of uplinks. Specify the number of uplinks
    #   for each Outpost network device that you intend to use to connect
    #   the rack to your network. Note the correlation between `UplinkGbps`
    #   and `UplinkCount`.
    #
    #   * 1Gbps - Uplinks available: 1, 2, 4, 6, 8
    #
    #   * 10Gbps - Uplinks available: 1, 2, 4, 8, 12, 16
    #
    #   * 40 and 100 Gbps- Uplinks available: 1, 2, 4
    #   @return [String]
    #
    # @!attribute [rw] fiber_optic_cable_type
    #   The type of fiber that you will use to attach the Outpost to your
    #   network.
    #   @return [String]
    #
    # @!attribute [rw] optical_standard
    #   The type of optical standard that you will use to attach the Outpost
    #   to your network. This field is dependent on uplink speed, fiber
    #   type, and distance to the upstream device. For more information
    #   about networking requirements for racks, see [Network][1] in the
    #   Amazon Web Services Outposts User Guide.
    #
    #   * `OPTIC_10GBASE_SR`: 10GBASE-SR
    #
    #   * `OPTIC_10GBASE_IR`: 10GBASE-IR
    #
    #   * `OPTIC_10GBASE_LR`: 10GBASE-LR
    #
    #   * `OPTIC_40GBASE_SR`: 40GBASE-SR
    #
    #   * `OPTIC_40GBASE_ESR`: 40GBASE-ESR
    #
    #   * `OPTIC_40GBASE_IR4_LR4L`: 40GBASE-IR (LR4L)
    #
    #   * `OPTIC_40GBASE_LR4`: 40GBASE-LR4
    #
    #   * `OPTIC_100GBASE_SR4`: 100GBASE-SR4
    #
    #   * `OPTIC_100GBASE_CWDM4`: 100GBASE-CWDM4
    #
    #   * `OPTIC_100GBASE_LR4`: 100GBASE-LR4
    #
    #   * `OPTIC_100G_PSM4_MSA`: 100G PSM4 MSA
    #
    #   * `OPTIC_1000BASE_LX`: 1000Base-LX
    #
    #   * `OPTIC_1000BASE_SX` : 1000Base-SX
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking
    #   @return [String]
    #
    # @!attribute [rw] maximum_supported_weight_lbs
    #   The maximum rack weight that this site can support. `NO_LIMIT` is
    #   over 2000lbs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateSiteRackPhysicalPropertiesInput AWS API Documentation
    #
    class UpdateSiteRackPhysicalPropertiesInput < Struct.new(
      :site_id,
      :power_draw_kva,
      :power_phase,
      :power_connector,
      :power_feed_drop,
      :uplink_gbps,
      :uplink_count,
      :fiber_optic_cable_type,
      :optical_standard,
      :maximum_supported_weight_lbs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about a site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateSiteRackPhysicalPropertiesOutput AWS API Documentation
    #
    class UpdateSiteRackPhysicalPropertiesOutput < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

