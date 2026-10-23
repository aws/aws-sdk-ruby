# frozen_string_literal: true

# This is generated code!

module Aws::Outposts
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have permission to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about an address. </p>
    # @!attribute contact_name
    #   <p>The name of the contact.</p>
    #   @return [String]
    # @!attribute contact_phone_number
    #   <p>The phone number of the contact.</p>
    #   @return [String]
    # @!attribute address_line1
    #   <p>The first line of the address.</p>
    #   @return [String]
    # @!attribute address_line2
    #   <p>The second line of the address.</p>
    #   @return [String]
    # @!attribute address_line3
    #   <p>The third line of the address.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city for the address.</p>
    #   @return [String]
    # @!attribute state_or_region
    #   <p>The state for the address.</p>
    #   @return [String]
    # @!attribute district_or_county
    #   <p>The district or county for the address.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>The postal code for the address.</p>
    #   @return [String]
    # @!attribute country_code
    #   <p>The ISO-3166 two-letter country code for the address.</p>
    #   @return [String]
    # @!attribute municipality
    #   <p>The municipality for the address.</p>
    #   @return [String]
    class Address < Struct.new(
      nil,
      :contact_name,
      :contact_phone_number,
      :address_line1,
      :address_line2,
      :address_line3,
      :city,
      :state_or_region,
      :district_or_county,
      :postal_code,
      :country_code,
      :municipality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about hardware assets. </p>
    # @!attribute asset_id
    #   <p> The ID of the asset. An Outpost asset can be a single server within an Outposts rack or
    #         an Outposts server configuration.</p>
    #   @return [String]
    # @!attribute rack_id
    #   <p> The rack ID of the asset. </p>
    #   @return [String]
    # @!attribute asset_type
    #   <p> The type of the asset. </p>
    #   @return [String]
    # @!attribute compute_attributes
    #   <p> Information about compute hardware assets. </p>
    #   @return [Types::ComputeAttributes]
    # @!attribute asset_location
    #   <p> The position of an asset in a rack. </p>
    #   @return [Types::AssetLocation]
    class AssetInfo < Struct.new(
      nil,
      :asset_id,
      :rack_id,
      :asset_type,
      :compute_attributes,
      :asset_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon EC2 instance.</p>
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset. An Outpost asset can be a single server within an Outposts rack or an
    #         Outposts server configuration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute aws_service_name
    #   <p>The Amazon Web Services service name of the instance.</p>
    #   @return [String]
    class AssetInstance < Struct.new(
      nil,
      :instance_id,
      :instance_type,
      :asset_id,
      :account_id,
      :aws_service_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The capacity for each instance type.</p>
    # @!attribute instance_type
    #   <p>The type of instance.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of each instance type.</p>
    #   @return [Integer]
    class AssetInstanceTypeCapacity < Struct.new(
      nil,
      :instance_type,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p> Information about the position of the asset in a rack. </p>
    # @!attribute rack_elevation
    #   <p> The position of an asset in a rack measured in rack units. </p>
    #   @return [Float]
    class AssetLocation < Struct.new(
      nil,
      :rack_elevation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A running Amazon EC2 instance that can be stopped to free up capacity needed to run the
    #       capacity task.</p>
    # @!attribute instance_id
    #   <p>The ID of the blocking instance.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute aws_service_name
    #   <p>The Amazon Web Services service name that owns the specified blocking instance.</p>
    #   @return [String]
    class BlockingInstance < Struct.new(
      nil,
      :instance_id,
      :account_id,
      :aws_service_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_task_id
    #   <p>ID of the capacity task that you want to cancel.</p>
    #   @return [String]
    # @!attribute outpost_identifier
    #   <p>ID or ARN of the Outpost associated with the capacity task that you want to cancel.</p>
    #   @return [String]
    class CancelCapacityTaskInput < Struct.new(
      nil,
      :capacity_task_id,
      :outpost_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelCapacityTaskOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute order_id
    #   <p> The ID of the order. </p>
    #   @return [String]
    class CancelOrderInput < Struct.new(
      nil,
      :order_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelOrderOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The capacity tasks that failed.</p>
    # @!attribute reason
    #   <p>The reason that the specified capacity task failed.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of failure.</p>
    #   @return [String]
    class CapacityTaskFailure < Struct.new(
      nil,
      :reason,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the capacity task.</p>
    # @!attribute capacity_task_id
    #   <p>The ID of the specified capacity task.</p>
    #   @return [String]
    # @!attribute outpost_id
    #   <p>The ID of the Outpost associated with the specified capacity task.</p>
    #   @return [String]
    # @!attribute order_id
    #   <p>The ID of the Amazon Web Services Outposts order of the host associated with the capacity task.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset. An Outpost asset can be a single server within an Outposts rack or an
    #         Outposts server configuration.</p>
    #   @return [String]
    # @!attribute capacity_task_status
    #   <p>The status of the capacity task.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date that the specified capacity task was created.</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date that the specified capacity task successfully ran.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date that the specified capacity was last modified.</p>
    #   @return [Time]
    class CapacityTaskSummary < Struct.new(
      nil,
      :capacity_task_id,
      :outpost_id,
      :order_id,
      :asset_id,
      :capacity_task_status,
      :creation_date,
      :completion_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about a catalog item. </p>
    # @!attribute catalog_item_id
    #   <p> The ID of the catalog item. </p>
    #   @return [String]
    # @!attribute item_status
    #   <p> The status of a catalog item. </p>
    #   @return [String]
    # @!attribute ec2_capacities
    #   <p> Information about the EC2 capacity of an item. </p>
    #   @return [Array<Types::EC2Capacity>]
    # @!attribute power_kva
    #   <p> Information about the power draw of an item. </p>
    #   @return [Float]
    # @!attribute weight_lbs
    #   <p> The weight of the item in pounds. </p>
    #   @return [Integer]
    # @!attribute supported_uplink_gbps
    #   <p> The uplink speed this catalog item requires for the connection to the Region. </p>
    #   @return [Array<Integer>]
    # @!attribute supported_storage
    #   <p> The supported storage options for the catalog item. </p>
    #   @return [Array<String>]
    class CatalogItem < Struct.new(
      nil,
      :catalog_item_id,
      :item_status,
      :ec2_capacities,
      :power_kva,
      :weight_lbs,
      :supported_uplink_gbps,
      :supported_storage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about compute hardware assets. </p>
    # @!attribute host_id
    #   <p> The host ID of the Dedicated Host on the asset. </p>
    #   @return [String]
    # @!attribute state
    #   <p>The state.</p>
    #            <ul>
    #               <li>
    #                  <p>ACTIVE - The asset is available and can provide capacity for new compute
    #             resources.</p>
    #               </li>
    #               <li>
    #                  <p>ISOLATED - The asset is undergoing maintenance and can't provide capacity for new
    #             compute resources. Existing compute resources on the asset are not affected.</p>
    #               </li>
    #               <li>
    #                  <p>RETIRING - The underlying hardware for the asset is degraded. Capacity for new compute
    #             resources is reduced. Amazon Web Services sends notifications for resources that must be stopped before
    #             the asset can be replaced.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute instance_families
    #   <p>A list of the names of instance families that are currently associated with a given
    #         asset.</p>
    #   @return [Array<String>]
    # @!attribute instance_type_capacities
    #   <p>The instance type capacities configured for this asset. This can be changed through a
    #         capacity task.</p>
    #   @return [Array<Types::AssetInstanceTypeCapacity>]
    # @!attribute max_vcpus
    #   <p>The maximum number of vCPUs possible for the specified asset.</p>
    #   @return [Integer]
    class ComputeAttributes < Struct.new(
      nil,
      :host_id,
      :state,
      :instance_families,
      :instance_type_capacities,
      :max_vcpus,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting this resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource causing the conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource causing the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about a connection. </p>
    # @!attribute client_public_key
    #   <p> The public key of the client. </p>
    #   @return [String]
    # @!attribute server_public_key
    #   <p> The public key of the server. </p>
    #   @return [String]
    # @!attribute server_endpoint
    #   <p> The endpoint for the server. </p>
    #   @return [String]
    # @!attribute client_tunnel_address
    #   <p> The client tunnel address. </p>
    #   @return [String]
    # @!attribute server_tunnel_address
    #   <p> The server tunnel address. </p>
    #   @return [String]
    # @!attribute allowed_ips
    #   <p> The allowed IP addresses. </p>
    #   @return [Array<String>]
    class ConnectionDetails < Struct.new(
      nil,
      :client_public_key,
      :server_public_key,
      :server_endpoint,
      :client_tunnel_address,
      :server_tunnel_address,
      :allowed_ips,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_identifier
    #   <p> The ID or the Amazon Resource Name (ARN) of the Outpost. </p>
    #   @return [String]
    # @!attribute line_items
    #   <p>The line items that make up the order.</p>
    #   @return [Array<Types::LineItemRequest>]
    # @!attribute payment_option
    #   <p>The payment option.</p>
    #   @return [String]
    # @!attribute payment_term
    #   <p>The payment terms.</p>
    #   @return [String]
    class CreateOrderInput < Struct.new(
      nil,
      :outpost_identifier,
      :line_items,
      :payment_option,
      :payment_term,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute order
    #   <p>Information about this order.</p>
    #   @return [Types::Order]
    class CreateOrderOutput < Struct.new(
      nil,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Outpost.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Outpost.</p>
    #   @return [String]
    # @!attribute site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The ID of the Availability Zone.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the Outpost.</p>
    #   @return [Hash<String, String>]
    # @!attribute supported_hardware_type
    #   <p> The type of hardware for this Outpost. </p>
    #   @return [String]
    class CreateOutpostInput < Struct.new(
      nil,
      :name,
      :description,
      :site_id,
      :availability_zone,
      :availability_zone_id,
      :tags,
      :supported_hardware_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost
    #   <p>Information about an Outpost.</p>
    #   @return [Types::Outpost]
    class CreateOutpostOutput < Struct.new(
      nil,
      :outpost,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the site.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the site.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>Additional information that you provide about site access requirements, electrician
    #         scheduling, personal protective equipment, or regulation of equipment materials that could
    #         affect your installation process. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags to apply to a site. </p>
    #   @return [Hash<String, String>]
    # @!attribute operating_address
    #   <p> The location to install and power on the hardware. This address might be different from
    #         the shipping address. </p>
    #   @return [Types::Address]
    # @!attribute shipping_address
    #   <p> The location to ship the hardware. This address might be different from the operating
    #         address. </p>
    #   @return [Types::Address]
    # @!attribute rack_physical_properties
    #   <p> Information about the physical and logistical details for the rack at this site.
    #         For more information
    #         about hardware requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist">Network 
    #           readiness checklist</a> in the Amazon Web Services Outposts User Guide.
    #           </p>
    #   @return [Types::RackPhysicalProperties]
    class CreateSiteInput < Struct.new(
      nil,
      :name,
      :description,
      :notes,
      :tags,
      :operating_address,
      :shipping_address,
      :rack_physical_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site
    #   <p>Information about a site.</p>
    #   @return [Types::Site]
    class CreateSiteOutput < Struct.new(
      nil,
      :site,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_id
    #   <p> The ID or ARN of the Outpost. </p>
    #   @return [String]
    class DeleteOutpostInput < Struct.new(
      nil,
      :outpost_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteOutpostOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    #   @return [String]
    class DeleteSiteInput < Struct.new(
      nil,
      :site_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSiteOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about EC2 capacity. </p>
    # @!attribute family
    #   <p> The family of the EC2 capacity. </p>
    #   @return [String]
    # @!attribute max_size
    #   <p> The maximum size of the EC2 capacity. </p>
    #   @return [String]
    # @!attribute quantity
    #   <p> The quantity of the EC2 capacity. </p>
    #   @return [String]
    class EC2Capacity < Struct.new(
      nil,
      :family,
      :max_size,
      :quantity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_task_id
    #   <p>ID of the capacity task.</p>
    #   @return [String]
    # @!attribute outpost_identifier
    #   <p>ID or ARN of the Outpost associated with the specified capacity task.</p>
    #   @return [String]
    class GetCapacityTaskInput < Struct.new(
      nil,
      :capacity_task_id,
      :outpost_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_task_id
    #   <p>ID of the capacity task.</p>
    #   @return [String]
    # @!attribute outpost_id
    #   <p>ID of the Outpost associated with the specified capacity task.</p>
    #   @return [String]
    # @!attribute order_id
    #   <p>ID of the Amazon Web Services Outposts order associated with the specified capacity task.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the Outpost asset. An Outpost asset can be a single server within an Outposts
    #         rack or an Outposts server configuration.</p>
    #   @return [String]
    # @!attribute requested_instance_pools
    #   <p>List of instance pools requested in the capacity task.</p>
    #   @return [Array<Types::InstanceTypeCapacity>]
    # @!attribute instances_to_exclude
    #   <p>Instances that the user specified they cannot stop in order to free up the capacity needed
    #         to run the capacity task.</p>
    #   @return [Types::InstancesToExclude]
    # @!attribute dry_run
    #   <p>Performs a dry run to determine if you are above or below instance capacity.</p>
    #   @return [Boolean]
    # @!attribute capacity_task_status
    #   <p>Status of the capacity task.</p>
    #            <p>A capacity task can have one of the following statuses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REQUESTED</code> - The capacity task was created and is awaiting the next step
    #             by Amazon Web Services Outposts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - The capacity task is running and cannot be
    #             cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The capacity task could not be completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - The capacity task has completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WAITING_FOR_EVACUATION</code> - The capacity task requires capacity to run. You
    #             must stop the recommended EC2 running instances to free up capacity for the task to
    #             run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLATION_IN_PROGRESS</code> - The capacity task has been cancelled and is in
    #             the process of cleaning up resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> - The capacity task is cancelled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failed
    #   <p>Reason why the capacity task failed.</p>
    #   @return [Types::CapacityTaskFailure]
    # @!attribute creation_date
    #   <p>The date the capacity task was created.</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date the capacity task ran successfully.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date the capacity task was last modified.</p>
    #   @return [Time]
    # @!attribute task_action_on_blocking_instances
    #   <p>User-specified option in case an instance is blocking the capacity task from running.
    #         Shows one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WAIT_FOR_EVACUATION</code> - Checks every 10 minutes over 48 hours to determine
    #             if instances have stopped and capacity is available to complete the task.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAIL_TASK</code> - The capacity task fails.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetCapacityTaskOutput < Struct.new(
      nil,
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
      :task_action_on_blocking_instances,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dry_run] = false unless options.key?(:dry_run)
        super
      end
    end

    # @!attribute catalog_item_id
    #   <p>The ID of the catalog item.</p>
    #   @return [String]
    class GetCatalogItemInput < Struct.new(
      nil,
      :catalog_item_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_item
    #   <p>Information about this catalog item.</p>
    #   @return [Types::CatalogItem]
    class GetCatalogItemOutput < Struct.new(
      nil,
      :catalog_item,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p> The ID of the connection. </p>
    #   @return [String]
    class GetConnectionRequest < Struct.new(
      nil,
      :connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p> The ID of the connection. </p>
    #   @return [String]
    # @!attribute connection_details
    #   <p> Information about the connection. </p>
    #   @return [Types::ConnectionDetails]
    class GetConnectionResponse < Struct.new(
      nil,
      :connection_id,
      :connection_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute order_id
    #   <p>The ID of the order.</p>
    #   @return [String]
    class GetOrderInput < Struct.new(
      nil,
      :order_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute order
    #   <p>Information about an order.</p>
    #   @return [Types::Order]
    class GetOrderOutput < Struct.new(
      nil,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute outpost_identifier
    #   <p>The ID or ARN of the Outpost.</p>
    #   @return [String]
    class GetOutpostBillingInformationInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :outpost_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute subscriptions
    #   <p>The subscription details for the specified Outpost.</p>
    #   @return [Array<Types::Subscription>]
    # @!attribute contract_end_date
    #   <p>The date the current contract term ends for the specified Outpost. You must start the renewal or
    #         decommission process at least 5 business days before the current term for your
    #         Amazon Web Services Outposts ends. Failing to complete these steps at least 5 business days before the
    #         current term ends might result in unanticipated charges.</p>
    #   @return [String]
    class GetOutpostBillingInformationOutput < Struct.new(
      nil,
      :next_token,
      :subscriptions,
      :contract_end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_id
    #   <p>The ID or ARN of the Outpost.</p>
    #   @return [String]
    class GetOutpostInput < Struct.new(
      nil,
      :outpost_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_id
    #   <p> The ID or ARN of the Outpost. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    class GetOutpostInstanceTypesInput < Struct.new(
      nil,
      :outpost_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_types
    #   <p>Information about the instance types.</p>
    #   @return [Array<Types::InstanceTypeItem>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute outpost_id
    #   <p> The ID of the Outpost. </p>
    #   @return [String]
    # @!attribute outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Outpost.</p>
    #   @return [String]
    class GetOutpostInstanceTypesOutput < Struct.new(
      nil,
      :instance_types,
      :next_token,
      :outpost_id,
      :outpost_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost
    #   <p>Information about an Outpost.</p>
    #   @return [Types::Outpost]
    class GetOutpostOutput < Struct.new(
      nil,
      :outpost,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_identifier
    #   <p>The ID or ARN of the Outpost.</p>
    #   @return [String]
    # @!attribute order_id
    #   <p>The ID for the Amazon Web Services Outposts order.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the Outpost asset. An Outpost asset can be a single server within an Outposts
    #         rack or an Outposts server configuration.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class GetOutpostSupportedInstanceTypesInput < Struct.new(
      nil,
      :outpost_identifier,
      :order_id,
      :asset_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_types
    #   <p>Information about the instance types.</p>
    #   @return [Array<Types::InstanceTypeItem>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class GetOutpostSupportedInstanceTypesOutput < Struct.new(
      nil,
      :instance_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    #   @return [String]
    # @!attribute address_type
    #   <p>The type of the address you request. </p>
    #   @return [String]
    class GetSiteAddressInput < Struct.new(
      nil,
      :site_id,
      :address_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    # @!attribute address_type
    #   <p>The type of the address you receive. </p>
    #   @return [String]
    # @!attribute address
    #   <p> Information about the address. </p>
    #   @return [Types::Address]
    class GetSiteAddressOutput < Struct.new(
      nil,
      :site_id,
      :address_type,
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    #   @return [String]
    class GetSiteInput < Struct.new(
      nil,
      :site_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site
    #   <p>Information about a site.</p>
    #   @return [Types::Site]
    class GetSiteOutput < Struct.new(
      nil,
      :site,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The instance type that you specify determines the combination of CPU, memory, storage, and
    #       networking capacity.</p>
    # @!attribute instance_type
    #   <p>The instance type of the hosts.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of instances for the specified instance type.</p>
    #   @return [Integer]
    class InstanceTypeCapacity < Struct.new(
      nil,
      :instance_type,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p>Information about an instance type.</p>
    # @!attribute instance_type
    #   <p>The instance type.</p>
    #   @return [String]
    # @!attribute vcp_us
    #   <p>The number of default VCPUs in an instance type.</p>
    #   @return [Integer]
    class InstanceTypeItem < Struct.new(
      nil,
      :instance_type,
      :vcp_us,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>User-specified instances that must not be stopped. These instances will not appear in the
    #       list of instances that Amazon Web Services recommends to stop in order to free up capacity.</p>
    # @!attribute instances
    #   <p>List of user-specified instances that must not be stopped.</p>
    #   @return [Array<String>]
    # @!attribute account_ids
    #   <p>IDs of the accounts that own each instance that must not be stopped.</p>
    #   @return [Array<String>]
    # @!attribute services
    #   <p>Names of the services that own each instance that must not be stopped in order to free up
    #         the capacity needed to run the capacity task.</p>
    #   @return [Array<String>]
    class InstancesToExclude < Struct.new(
      nil,
      :instances,
      :account_ids,
      :services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error has occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a line item.</p>
    # @!attribute catalog_item_id
    #   <p> The ID of the catalog item.</p>
    #   @return [String]
    # @!attribute line_item_id
    #   <p>The ID of the line item.</p>
    #   @return [String]
    # @!attribute quantity
    #   <p>The quantity of the line item.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the line item.</p>
    #   @return [String]
    # @!attribute shipment_information
    #   <p> Information about a line item shipment. </p>
    #   @return [Types::ShipmentInformation]
    # @!attribute asset_information_list
    #   <p> Information about assets. </p>
    #   @return [Array<Types::LineItemAssetInformation>]
    # @!attribute previous_line_item_id
    #   <p>The ID of the previous line item.</p>
    #   @return [String]
    # @!attribute previous_order_id
    #   <p>The ID of the previous order.</p>
    #   @return [String]
    class LineItem < Struct.new(
      nil,
      :catalog_item_id,
      :line_item_id,
      :quantity,
      :status,
      :shipment_information,
      :asset_information_list,
      :previous_line_item_id,
      :previous_order_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about a line item asset. </p>
    # @!attribute asset_id
    #   <p> The ID of the asset. An Outpost asset can be a single server within an Outposts rack or
    #         an Outposts server configuration.</p>
    #   @return [String]
    # @!attribute mac_address_list
    #   <p> The MAC addresses of the asset. </p>
    #   @return [Array<String>]
    class LineItemAssetInformation < Struct.new(
      nil,
      :asset_id,
      :mac_address_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a line item request.</p>
    # @!attribute catalog_item_id
    #   <p>The ID of the catalog item.</p>
    #   @return [String]
    # @!attribute quantity
    #   <p>The quantity of a line item request.</p>
    #   @return [Integer]
    class LineItemRequest < Struct.new(
      nil,
      :catalog_item_id,
      :quantity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_identifier
    #   <p>The ID of the Outpost.</p>
    #   @return [String]
    # @!attribute asset_id_filter
    #   <p>Filters the results by asset ID.</p>
    #   @return [Array<String>]
    # @!attribute instance_type_filter
    #   <p>Filters the results by instance ID.</p>
    #   @return [Array<String>]
    # @!attribute account_id_filter
    #   <p>Filters the results by account ID.</p>
    #   @return [Array<String>]
    # @!attribute aws_service_filter
    #   <p>Filters the results by Amazon Web Services service.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListAssetInstancesInput < Struct.new(
      nil,
      :outpost_identifier,
      :asset_id_filter,
      :instance_type_filter,
      :account_id_filter,
      :aws_service_filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_instances
    #   <p>List of instances owned by all accounts on the Outpost. Does not include Amazon EBS or Amazon S3
    #         instances.</p>
    #   @return [Array<Types::AssetInstance>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListAssetInstancesOutput < Struct.new(
      nil,
      :asset_instances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_identifier
    #   <p> The ID or the Amazon Resource Name (ARN) of the Outpost. </p>
    #   @return [String]
    # @!attribute host_id_filter
    #   <p>Filters the results by the host ID of a Dedicated Host.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute status_filter
    #   <p>Filters the results by state.</p>
    #   @return [Array<String>]
    class ListAssetsInput < Struct.new(
      nil,
      :outpost_identifier,
      :host_id_filter,
      :max_results,
      :next_token,
      :status_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assets
    #   <p>Information about the hardware assets.</p>
    #   @return [Array<Types::AssetInfo>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListAssetsOutput < Struct.new(
      nil,
      :assets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_identifier
    #   <p>The ID or ARN of the Outpost associated with the specified capacity task.</p>
    #   @return [String]
    # @!attribute capacity_task_id
    #   <p>The ID of the capacity task.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListBlockingInstancesForCapacityTaskInput < Struct.new(
      nil,
      :outpost_identifier,
      :capacity_task_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blocking_instances
    #   <p>A list of all running Amazon EC2 instances on the Outpost. Stopping one or more of these
    #         instances can free up the capacity needed to run the capacity task.</p>
    #   @return [Array<Types::BlockingInstance>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListBlockingInstancesForCapacityTaskOutput < Struct.new(
      nil,
      :blocking_instances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_identifier_filter
    #   <p>Filters the results by an Outpost ID or an Outpost ARN.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute capacity_task_status_filter
    #   <p>A list of statuses. For example, <code>REQUESTED</code> or
    #           <code>WAITING_FOR_EVACUATION</code>.</p>
    #   @return [Array<String>]
    class ListCapacityTasksInput < Struct.new(
      nil,
      :outpost_identifier_filter,
      :max_results,
      :next_token,
      :capacity_task_status_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_tasks
    #   <p>Lists all the capacity tasks.</p>
    #   @return [Array<Types::CapacityTaskSummary>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListCapacityTasksOutput < Struct.new(
      nil,
      :capacity_tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute item_class_filter
    #   <p>Filters the results by item class.</p>
    #   @return [Array<String>]
    # @!attribute supported_storage_filter
    #   <p>Filters the results by storage option.</p>
    #   @return [Array<String>]
    # @!attribute ec2_family_filter
    #   <p>Filters the results by EC2 family (for example, M5).</p>
    #   @return [Array<String>]
    class ListCatalogItemsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :item_class_filter,
      :supported_storage_filter,
      :ec2_family_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_items
    #   <p>Information about the catalog items.</p>
    #   @return [Array<Types::CatalogItem>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListCatalogItemsOutput < Struct.new(
      nil,
      :catalog_items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_identifier_filter
    #   <p> The ID or the Amazon Resource Name (ARN) of the Outpost. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    class ListOrdersInput < Struct.new(
      nil,
      :outpost_identifier_filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute orders
    #   <p> Information about the orders. </p>
    #   @return [Array<Types::OrderSummary>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListOrdersOutput < Struct.new(
      nil,
      :orders,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute life_cycle_status_filter
    #   <p>Filters the results by the lifecycle status.</p>
    #   @return [Array<String>]
    # @!attribute availability_zone_filter
    #   <p>Filters the results by Availability Zone (for example, <code>us-east-1a</code>).</p>
    #   @return [Array<String>]
    # @!attribute availability_zone_id_filter
    #   <p>Filters the results by AZ ID (for example, <code>use1-az1</code>).</p>
    #   @return [Array<String>]
    class ListOutpostsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :life_cycle_status_filter,
      :availability_zone_filter,
      :availability_zone_id_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outposts
    #   <p>Information about the Outposts.</p>
    #   @return [Array<Types::Outpost>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListOutpostsOutput < Struct.new(
      nil,
      :outposts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute operating_address_country_code_filter
    #   <p>Filters the results by country code.</p>
    #   @return [Array<String>]
    # @!attribute operating_address_state_or_region_filter
    #   <p>Filters the results by state or region.</p>
    #   @return [Array<String>]
    # @!attribute operating_address_city_filter
    #   <p>Filters the results by city.</p>
    #   @return [Array<String>]
    class ListSitesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :operating_address_country_code_filter,
      :operating_address_state_or_region_filter,
      :operating_address_city_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sites
    #   <p>Information about the sites.</p>
    #   @return [Array<Types::Site>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListSitesOutput < Struct.new(
      nil,
      :sites,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The resource tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified request is not valid.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an order.</p>
    # @!attribute outpost_id
    #   <p> The ID of the Outpost in the order. </p>
    #   @return [String]
    # @!attribute order_id
    #   <p>The ID of the order.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the order.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PREPARING</code> - Order is received and being prepared.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - Order is either being built or shipped. To get more
    #             details, see the line item status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELIVERED</code> - Order was delivered to the Outpost site.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - Order is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> - Order is cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - Customer should contact support.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The following status are deprecated: <code>RECEIVED</code>, <code>PENDING</code>,
    #             <code>PROCESSING</code>, <code>INSTALLING</code>, and <code>FULFILLED</code>. </p>
    #            </note>
    #   @return [String]
    # @!attribute line_items
    #   <p>The line items for the order</p>
    #   @return [Array<Types::LineItem>]
    # @!attribute payment_option
    #   <p>The payment option for the order.</p>
    #   @return [String]
    # @!attribute order_submission_date
    #   <p>The submission date for the order.</p>
    #   @return [Time]
    # @!attribute order_fulfilled_date
    #   <p>The fulfillment date of the order.</p>
    #   @return [Time]
    # @!attribute payment_term
    #   <p>The payment term.</p>
    #   @return [String]
    # @!attribute order_type
    #   <p>The type of order.</p>
    #   @return [String]
    class Order < Struct.new(
      nil,
      :outpost_id,
      :order_id,
      :status,
      :line_items,
      :payment_option,
      :order_submission_date,
      :order_fulfilled_date,
      :payment_term,
      :order_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A summary of line items in your order. </p>
    # @!attribute outpost_id
    #   <p> The ID of the Outpost. </p>
    #   @return [String]
    # @!attribute order_id
    #   <p> The ID of the order. </p>
    #   @return [String]
    # @!attribute order_type
    #   <p>The type of order.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the order.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PREPARING</code> - Order is received and is being prepared.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - Order is either being built, shipped, or installed. For
    #             more information, see the <code>LineItem</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - Order is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> - Order is cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - Customer should contact support.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The following statuses are deprecated: <code>RECEIVED</code>, <code>PENDING</code>,
    #             <code>PROCESSING</code>, <code>INSTALLING</code>, and <code>FULFILLED</code>. </p>
    #            </note>
    #   @return [String]
    # @!attribute line_item_counts_by_status
    #   <p> The status of all line items in the order. </p>
    #   @return [Hash<String, Integer>]
    # @!attribute order_submission_date
    #   <p> The submission date for the order. </p>
    #   @return [Time]
    # @!attribute order_fulfilled_date
    #   <p> The fulfilment date for the order. </p>
    #   @return [Time]
    class OrderSummary < Struct.new(
      nil,
      :outpost_id,
      :order_id,
      :order_type,
      :status,
      :line_item_counts_by_status,
      :order_submission_date,
      :order_fulfilled_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Outpost.</p>
    # @!attribute outpost_id
    #   <p> The ID of the Outpost. </p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the Outpost owner.</p>
    #   @return [String]
    # @!attribute outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Outpost.</p>
    #   @return [String]
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Outpost.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Outpost.</p>
    #   @return [String]
    # @!attribute life_cycle_status
    #   <p>The life cycle status.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The ID of the Availability Zone.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The Outpost tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute site_arn
    #   <p>The Amazon Resource Name (ARN) of the site.</p>
    #   @return [String]
    # @!attribute supported_hardware_type
    #   <p> The hardware type. </p>
    #   @return [String]
    class Outpost < Struct.new(
      nil,
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
      :supported_hardware_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about the physical and logistical details for racks at sites.
    #       For more information
    #       about hardware requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist">Network 
    #         readiness checklist</a> in the Amazon Web Services Outposts User Guide.
    #         </p>
    # @!attribute power_draw_kva
    #   <p>The power draw available at the hardware placement position for the rack. </p>
    #   @return [String]
    # @!attribute power_phase
    #   <p>The power option that you can provide for hardware.</p>
    #   @return [String]
    # @!attribute power_connector
    #   <p>The power connector for the hardware. </p>
    #   @return [String]
    # @!attribute power_feed_drop
    #   <p>The position of the power feed.</p>
    #   @return [String]
    # @!attribute uplink_gbps
    #   <p>The uplink speed the rack supports for the connection to the Region. </p>
    #   @return [String]
    # @!attribute uplink_count
    #   <p>The number of uplinks each Outpost network device.</p>
    #   @return [String]
    # @!attribute fiber_optic_cable_type
    #   <p>The type of fiber used to attach the Outpost to the network. </p>
    #   @return [String]
    # @!attribute optical_standard
    #   <p>The type of optical standard used to attach the Outpost to the network. This field is
    #         dependent on uplink speed, fiber type, and distance to the upstream device.
    #         For more information
    #         about networking requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking">Network</a> 
    #           in the Amazon Web Services Outposts User Guide.
    #           </p>
    #   @return [String]
    # @!attribute maximum_supported_weight_lbs
    #   <p>The maximum rack weight that this site can support. <code>NO_LIMIT</code> is over 2000 lbs
    #         (907 kg). </p>
    #   @return [String]
    class RackPhysicalProperties < Struct.new(
      nil,
      :power_draw_kva,
      :power_phase,
      :power_connector,
      :power_feed_drop,
      :uplink_gbps,
      :uplink_count,
      :fiber_optic_cable_type,
      :optical_standard,
      :maximum_supported_weight_lbs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about a line item shipment. </p>
    # @!attribute shipment_tracking_number
    #   <p> The tracking number of the shipment. </p>
    #   @return [String]
    # @!attribute shipment_carrier
    #   <p> The carrier of the shipment. </p>
    #   @return [String]
    class ShipmentInformation < Struct.new(
      nil,
      :shipment_tracking_number,
      :shipment_carrier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a site.</p>
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the site.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the site.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The site tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute site_arn
    #   <p>The Amazon Resource Name (ARN) of the site.</p>
    #   @return [String]
    # @!attribute notes
    #   <p> Notes about a site. </p>
    #   @return [String]
    # @!attribute operating_address_country_code
    #   <p> The ISO-3166 two-letter country code where the hardware is installed and powered on.
    #       </p>
    #   @return [String]
    # @!attribute operating_address_state_or_region
    #   <p> State or region where the hardware is installed and powered on. </p>
    #   @return [String]
    # @!attribute operating_address_city
    #   <p> City where the hardware is installed and powered on. </p>
    #   @return [String]
    # @!attribute rack_physical_properties
    #   <p> Information about the physical and logistical details for a rack at the site. </p>
    #   @return [Types::RackPhysicalProperties]
    class Site < Struct.new(
      nil,
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
      :rack_physical_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_identifier
    #   <p>The ID or ARN of the Outposts associated with the specified capacity task.</p>
    #   @return [String]
    # @!attribute order_id
    #   <p>The ID of the Amazon Web Services Outposts order associated with the specified capacity task.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the Outpost asset. An Outpost asset can be a single server within an Outposts
    #         rack or an Outposts server configuration.</p>
    #   @return [String]
    # @!attribute instance_pools
    #   <p>The instance pools specified in the capacity task.</p>
    #   @return [Array<Types::InstanceTypeCapacity>]
    # @!attribute instances_to_exclude
    #   <p>List of user-specified running instances that must not be stopped in order to free up the
    #         capacity needed to run the capacity task.</p>
    #   @return [Types::InstancesToExclude]
    # @!attribute dry_run
    #   <p>You can request a dry run to determine if the instance type and instance size changes is
    #         above or below available instance capacity. Requesting a dry run does not make any changes to
    #         your plan.</p>
    #   @return [Boolean]
    # @!attribute task_action_on_blocking_instances
    #   <p>Specify one of the following options in case an instance is blocking the capacity task
    #         from running.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WAIT_FOR_EVACUATION</code> - Checks every 10 minutes over 48 hours to determine
    #             if instances have stopped and capacity is available to complete the task.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAIL_TASK</code> - The capacity task fails.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StartCapacityTaskInput < Struct.new(
      nil,
      :outpost_identifier,
      :order_id,
      :asset_id,
      :instance_pools,
      :instances_to_exclude,
      :dry_run,
      :task_action_on_blocking_instances,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_task_id
    #   <p>ID of the capacity task that you want to start.</p>
    #   @return [String]
    # @!attribute outpost_id
    #   <p>ID of the Outpost associated with the capacity task.</p>
    #   @return [String]
    # @!attribute order_id
    #   <p>ID of the Amazon Web Services Outposts order of the host associated with the capacity task.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset. An Outpost asset can be a single server within an Outposts rack or an
    #         Outposts server configuration.</p>
    #   @return [String]
    # @!attribute requested_instance_pools
    #   <p>List of the instance pools requested in the specified capacity task.</p>
    #   @return [Array<Types::InstanceTypeCapacity>]
    # @!attribute instances_to_exclude
    #   <p>User-specified instances that must not be stopped in order to free up the capacity needed
    #         to run the capacity task.</p>
    #   @return [Types::InstancesToExclude]
    # @!attribute dry_run
    #   <p>Results of the dry run showing if the specified capacity task is above or below the
    #         available instance capacity.</p>
    #   @return [Boolean]
    # @!attribute capacity_task_status
    #   <p>Status of the specified capacity task.</p>
    #   @return [String]
    # @!attribute failed
    #   <p>Reason that the specified capacity task failed.</p>
    #   @return [Types::CapacityTaskFailure]
    # @!attribute creation_date
    #   <p>Date that the specified capacity task was created.</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>Date that the specified capacity task ran successfully.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>Date that the specified capacity task was last modified.</p>
    #   @return [Time]
    # @!attribute task_action_on_blocking_instances
    #   <p>User-specified option in case an instance is blocking the capacity task from
    #         running.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WAIT_FOR_EVACUATION</code> - Checks every 10 minutes over 48 hours to determine
    #             if instances have stopped and capacity is available to complete the task.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAIL_TASK</code> - The capacity task fails.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StartCapacityTaskOutput < Struct.new(
      nil,
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
      :task_action_on_blocking_instances,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dry_run] = false unless options.key?(:dry_run)
        super
      end
    end

    # @!attribute device_serial_number
    #   <p> The serial number of the dongle. </p>
    #   @return [String]
    # @!attribute asset_id
    #   <p> The ID of the Outpost server.</p>
    #   @return [String]
    # @!attribute client_public_key
    #   <p> The public key of the client. </p>
    #   @return [String]
    # @!attribute network_interface_device_index
    #   <p> The device index of the network interface on the Outpost server. </p>
    #   @return [Integer]
    class StartConnectionRequest < Struct.new(
      nil,
      :device_serial_number,
      :asset_id,
      :client_public_key,
      :network_interface_device_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p> The ID of the connection. </p>
    #   @return [String]
    # @!attribute underlay_ip_address
    #   <p> The underlay IP address. </p>
    #   @return [String]
    class StartConnectionResponse < Struct.new(
      nil,
      :connection_id,
      :underlay_ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about your Amazon Web Services Outposts subscriptions.</p>
    # @!attribute subscription_id
    #   <p>The ID of the subscription that appears on the Amazon Web Services Billing Center console.</p>
    #   @return [String]
    # @!attribute subscription_type
    #   <p>The type of subscription which can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ORIGINAL</b> - The first order on the Amazon Web Services Outposts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RENEWAL</b> - Renewal requests, both month to month and
    #             longer term.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CAPACITY_INCREASE</b> - Capacity scaling orders.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute subscription_status
    #   <p>The status of subscription which can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>INACTIVE</b> - Subscription requests that are
    #             inactive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> - Subscription requests that are in progress
    #             and have an end date in the future.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CANCELLED</b> - Subscription requests that are
    #             cancelled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute order_ids
    #   <p>The order ID for your subscription.</p>
    #   @return [Array<String>]
    # @!attribute begin_date
    #   <p>The date your subscription starts.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The date your subscription ends.</p>
    #   @return [Time]
    # @!attribute monthly_recurring_price
    #   <p>The amount you are billed each month in the subscription period.</p>
    #   @return [Float]
    # @!attribute upfront_price
    #   <p>The amount billed when the subscription is created. This is a one-time charge.</p>
    #   @return [Float]
    class Subscription < Struct.new(
      nil,
      :subscription_id,
      :subscription_type,
      :subscription_status,
      :order_ids,
      :begin_date,
      :end_date,
      :monthly_recurring_price,
      :upfront_price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_id
    #   <p> The ID or ARN of the Outpost. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Outpost.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Outpost.</p>
    #   @return [String]
    # @!attribute supported_hardware_type
    #   <p> The type of hardware for this Outpost. </p>
    #   @return [String]
    class UpdateOutpostInput < Struct.new(
      nil,
      :outpost_id,
      :name,
      :description,
      :supported_hardware_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost
    #   <p>Information about an Outpost.</p>
    #   @return [Types::Outpost]
    class UpdateOutpostOutput < Struct.new(
      nil,
      :outpost,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    #   @return [String]
    # @!attribute address_type
    #   <p> The type of the address. </p>
    #   @return [String]
    # @!attribute address
    #   <p> The address for the site. </p>
    #   @return [Types::Address]
    class UpdateSiteAddressInput < Struct.new(
      nil,
      :site_id,
      :address_type,
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_type
    #   <p> The type of the address. </p>
    #   @return [String]
    # @!attribute address
    #   <p> Information about an address. </p>
    #   @return [Types::Address]
    class UpdateSiteAddressOutput < Struct.new(
      nil,
      :address_type,
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the site.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the site.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>Notes about a site.</p>
    #   @return [String]
    class UpdateSiteInput < Struct.new(
      nil,
      :site_id,
      :name,
      :description,
      :notes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site
    #   <p>Information about a site.</p>
    #   @return [Types::Site]
    class UpdateSiteOutput < Struct.new(
      nil,
      :site,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    #   @return [String]
    # @!attribute power_draw_kva
    #   <p>The power draw, in kVA, available at the hardware placement position for the rack.</p>
    #   @return [String]
    # @!attribute power_phase
    #   <p>The power option that you can provide for hardware. </p>
    #            <ul>
    #               <li>
    #                  <p>Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz</p>
    #               </li>
    #               <li>
    #                  <p>Three-phase AC feed: 346 V to 480 V, 50 Hz or 60 Hz</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute power_connector
    #   <p>The power connector that Amazon Web Services should plan to provide for connections to the hardware.
    #         Note the correlation between <code>PowerPhase</code> and <code>PowerConnector</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>Single-phase AC feed</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>L6-30P</b> – (common in US); 30A; single phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>IEC309 (blue)</b> – P+N+E, 6hr; 32 A; single
    #                 phase</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Three-phase AC feed</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>AH530P7W (red)</b> – 3P+N+E, 7hr; 30A; three
    #                 phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>AH532P6W (red)</b> – 3P+N+E, 6hr; 32A; three
    #                 phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>CS8365C</b> – (common in US); 3P+E, 50A; three
    #                 phase</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute power_feed_drop
    #   <p>Indicates whether the power feed comes above or below the rack. </p>
    #   @return [String]
    # @!attribute uplink_gbps
    #   <p>The uplink speed the rack should support for the connection to the Region. </p>
    #   @return [String]
    # @!attribute uplink_count
    #   <p>Racks come with two Outpost network devices. Depending on the supported uplink speed at
    #         the site, the Outpost network devices provide a variable number of uplinks. Specify the number
    #         of uplinks for each Outpost network device that you intend to use to connect the rack to your
    #         network. Note the correlation between <code>UplinkGbps</code> and <code>UplinkCount</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>1Gbps - Uplinks available: 1, 2, 4, 6, 8</p>
    #               </li>
    #               <li>
    #                  <p>10Gbps - Uplinks available: 1, 2, 4, 8, 12, 16</p>
    #               </li>
    #               <li>
    #                  <p>40 and 100 Gbps- Uplinks available: 1, 2, 4</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute fiber_optic_cable_type
    #   <p>The type of fiber that you will use to attach the Outpost to your network. </p>
    #   @return [String]
    # @!attribute optical_standard
    #   <p>The type of optical standard that you will use to attach the Outpost to your network. This
    #         field is dependent on uplink speed, fiber type, and distance to the upstream device.
    #         For more information
    #         about networking requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking">Network</a> 
    #           in the Amazon Web Services Outposts User Guide.
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_SR</code>: 10GBASE-SR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_IR</code>: 10GBASE-IR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_LR</code>: 10GBASE-LR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_SR</code>: 40GBASE-SR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_ESR</code>: 40GBASE-ESR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_IR4_LR4L</code>: 40GBASE-IR (LR4L)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_LR4</code>: 40GBASE-LR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_SR4</code>: 100GBASE-SR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_CWDM4</code>: 100GBASE-CWDM4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_LR4</code>: 100GBASE-LR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100G_PSM4_MSA</code>: 100G PSM4 MSA</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_1000BASE_LX</code>: 1000Base-LX</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_1000BASE_SX</code> : 1000Base-SX</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute maximum_supported_weight_lbs
    #   <p>The maximum rack weight that this site can support. <code>NO_LIMIT</code> is over 2000lbs.
    #       </p>
    #   @return [String]
    class UpdateSiteRackPhysicalPropertiesInput < Struct.new(
      nil,
      :site_id,
      :power_draw_kva,
      :power_phase,
      :power_connector,
      :power_feed_drop,
      :uplink_gbps,
      :uplink_count,
      :fiber_optic_cable_type,
      :optical_standard,
      :maximum_supported_weight_lbs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site
    #   <p>Information about a site.</p>
    #   @return [Types::Site]
    class UpdateSiteRackPhysicalPropertiesOutput < Struct.new(
      nil,
      :site,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
