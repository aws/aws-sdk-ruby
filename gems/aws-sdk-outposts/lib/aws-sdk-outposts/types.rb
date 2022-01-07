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
    # @note When making an API call, you may pass Address
    #   data as a hash:
    #
    #       {
    #         contact_name: "ContactName",
    #         contact_phone_number: "ContactPhoneNumber",
    #         address_line_1: "AddressLine1", # required
    #         address_line_2: "AddressLine2",
    #         address_line_3: "AddressLine3",
    #         city: "City", # required
    #         state_or_region: "StateOrRegion", # required
    #         district_or_county: "DistrictOrCounty",
    #         postal_code: "PostalCode", # required
    #         country_code: "CountryCode", # required
    #         municipality: "Municipality",
    #       }
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

    # @note When making an API call, you may pass CancelOrderInput
    #   data as a hash:
    #
    #       {
    #         order_id: "OrderId", # required
    #       }
    #
    # @!attribute [rw] order_id
    #   The ID of the order to cancel.
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

    # @note When making an API call, you may pass CreateOrderInput
    #   data as a hash:
    #
    #       {
    #         outpost_identifier: "OutpostIdentifier", # required
    #         line_items: [ # required
    #           {
    #             catalog_item_id: "SkuCode",
    #             quantity: 1,
    #           },
    #         ],
    #         payment_option: "ALL_UPFRONT", # required, accepts ALL_UPFRONT, NO_UPFRONT, PARTIAL_UPFRONT
    #         payment_term: "THREE_YEARS", # accepts THREE_YEARS
    #       }
    #
    # @!attribute [rw] outpost_identifier
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] line_items
    #   The line items that make up the order.
    #   @return [Array<Types::LineItemRequest>]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the order.
    #   @return [String]
    #
    # @!attribute [rw] payment_term
    #   The payment terms for the order.
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

    # @note When making an API call, you may pass CreateOutpostInput
    #   data as a hash:
    #
    #       {
    #         name: "OutpostName", # required
    #         description: "OutpostDescription",
    #         site_id: "SiteId", # required
    #         availability_zone: "AvailabilityZone",
    #         availability_zone_id: "AvailabilityZoneId",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         supported_hardware_type: "RACK", # accepts RACK, SERVER
    #       }
    #
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

    # @note When making an API call, you may pass CreateSiteInput
    #   data as a hash:
    #
    #       {
    #         name: "SiteName", # required
    #         description: "SiteDescription",
    #         notes: "SiteNotes",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         operating_address: {
    #           contact_name: "ContactName",
    #           contact_phone_number: "ContactPhoneNumber",
    #           address_line_1: "AddressLine1", # required
    #           address_line_2: "AddressLine2",
    #           address_line_3: "AddressLine3",
    #           city: "City", # required
    #           state_or_region: "StateOrRegion", # required
    #           district_or_county: "DistrictOrCounty",
    #           postal_code: "PostalCode", # required
    #           country_code: "CountryCode", # required
    #           municipality: "Municipality",
    #         },
    #         shipping_address: {
    #           contact_name: "ContactName",
    #           contact_phone_number: "ContactPhoneNumber",
    #           address_line_1: "AddressLine1", # required
    #           address_line_2: "AddressLine2",
    #           address_line_3: "AddressLine3",
    #           city: "City", # required
    #           state_or_region: "StateOrRegion", # required
    #           district_or_county: "DistrictOrCounty",
    #           postal_code: "PostalCode", # required
    #           country_code: "CountryCode", # required
    #           municipality: "Municipality",
    #         },
    #         rack_physical_properties: {
    #           power_draw_kva: "POWER_5_KVA", # accepts POWER_5_KVA, POWER_10_KVA, POWER_15_KVA
    #           power_phase: "SINGLE_PHASE", # accepts SINGLE_PHASE, THREE_PHASE
    #           power_connector: "L6_30P", # accepts L6_30P, IEC309, AH530P7W, AH532P6W
    #           power_feed_drop: "ABOVE_RACK", # accepts ABOVE_RACK, BELOW_RACK
    #           uplink_gbps: "UPLINK_1G", # accepts UPLINK_1G, UPLINK_10G, UPLINK_40G, UPLINK_100G
    #           uplink_count: "UPLINK_COUNT_1", # accepts UPLINK_COUNT_1, UPLINK_COUNT_2, UPLINK_COUNT_3, UPLINK_COUNT_4, UPLINK_COUNT_5, UPLINK_COUNT_6, UPLINK_COUNT_7, UPLINK_COUNT_8, UPLINK_COUNT_12, UPLINK_COUNT_16
    #           fiber_optic_cable_type: "SINGLE_MODE", # accepts SINGLE_MODE, MULTI_MODE
    #           optical_standard: "OPTIC_10GBASE_SR", # accepts OPTIC_10GBASE_SR, OPTIC_10GBASE_IR, OPTIC_10GBASE_LR, OPTIC_40GBASE_SR, OPTIC_40GBASE_ESR, OPTIC_40GBASE_IR4_LR4L, OPTIC_40GBASE_LR4, OPTIC_100GBASE_SR4, OPTIC_100GBASE_CWDM4, OPTIC_100GBASE_LR4, OPTIC_100G_PSM4_MSA, OPTIC_1000BASE_LX, OPTIC_1000BASE_SX
    #           maximum_supported_weight_lbs: "NO_LIMIT", # accepts NO_LIMIT, MAX_1400_LBS, MAX_1600_LBS, MAX_1800_LBS, MAX_2000_LBS
    #         },
    #       }
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

    # @note When making an API call, you may pass DeleteOutpostInput
    #   data as a hash:
    #
    #       {
    #         outpost_id: "OutpostId", # required
    #       }
    #
    # @!attribute [rw] outpost_id
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
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

    # @note When making an API call, you may pass DeleteSiteInput
    #   data as a hash:
    #
    #       {
    #         site_id: "SiteId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetCatalogItemInput
    #   data as a hash:
    #
    #       {
    #         catalog_item_id: "SkuCode", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetOrderInput
    #   data as a hash:
    #
    #       {
    #         order_id: "OrderId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetOutpostInput
    #   data as a hash:
    #
    #       {
    #         outpost_id: "OutpostId", # required
    #       }
    #
    # @!attribute [rw] outpost_id
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostInput AWS API Documentation
    #
    class GetOutpostInput < Struct.new(
      :outpost_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOutpostInstanceTypesInput
    #   data as a hash:
    #
    #       {
    #         outpost_id: "OutpostId", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] outpost_id
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

    # @note When making an API call, you may pass GetSiteAddressInput
    #   data as a hash:
    #
    #       {
    #         site_id: "SiteId", # required
    #         address_type: "SHIPPING_ADDRESS", # required, accepts SHIPPING_ADDRESS, OPERATING_ADDRESS
    #       }
    #
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

    # @note When making an API call, you may pass GetSiteInput
    #   data as a hash:
    #
    #       {
    #         site_id: "SiteId", # required
    #       }
    #
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

    # Information about an instance type.
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/InstanceTypeItem AWS API Documentation
    #
    class InstanceTypeItem < Struct.new(
      :instance_type)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/LineItem AWS API Documentation
    #
    class LineItem < Struct.new(
      :catalog_item_id,
      :line_item_id,
      :quantity,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a line item request.
    #
    # @note When making an API call, you may pass LineItemRequest
    #   data as a hash:
    #
    #       {
    #         catalog_item_id: "SkuCode",
    #         quantity: 1,
    #       }
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

    # @note When making an API call, you may pass ListCatalogItemsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #         item_class_filter: ["RACK"], # accepts RACK, SERVER
    #         supported_storage_filter: ["EBS"], # accepts EBS, S3
    #         ec2_family_filter: ["Family"],
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] item_class_filter
    #   A filter for the class of items in the catalog.
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_storage_filter
    #   A filter for the storage options of items in the catalog.
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_family_filter
    #   A filter for EC2 family options for items in the catalog.
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
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

    # @note When making an API call, you may pass ListOrdersInput
    #   data as a hash:
    #
    #       {
    #         outpost_identifier_filter: "OutpostIdentifier",
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass ListOutpostsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #         life_cycle_status_filter: ["LifeCycleStatus"],
    #         availability_zone_filter: ["AvailabilityZone"],
    #         availability_zone_id_filter: ["AvailabilityZoneId"],
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] life_cycle_status_filter
    #   A filter for the lifecycle status of the Outpost.
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone_filter
    #   A filter for the Availability Zone (`us-east-1a`) of the Outpost.
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone_id_filter
    #   A filter for the AZ IDs (`use1-az1`) of the Outpost.
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
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

    # @note When making an API call, you may pass ListSitesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListSitesInput AWS API Documentation
    #
    class ListSitesInput < Struct.new(
      :next_token,
      :max_results)
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
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
    #   * `IN_PROGRESS` - Order is either being built, shipped, or
    #     installed. To get more details, see the `LineItem` status.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/Order AWS API Documentation
    #
    class Order < Struct.new(
      :outpost_id,
      :order_id,
      :status,
      :line_items,
      :payment_option,
      :order_submission_date,
      :order_fulfilled_date)
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
    #   Submission date for the order.
    #   @return [Time]
    #
    # @!attribute [rw] order_fulfilled_date
    #   Fulfilment date for the order.
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
    # @note When making an API call, you may pass RackPhysicalProperties
    #   data as a hash:
    #
    #       {
    #         power_draw_kva: "POWER_5_KVA", # accepts POWER_5_KVA, POWER_10_KVA, POWER_15_KVA
    #         power_phase: "SINGLE_PHASE", # accepts SINGLE_PHASE, THREE_PHASE
    #         power_connector: "L6_30P", # accepts L6_30P, IEC309, AH530P7W, AH532P6W
    #         power_feed_drop: "ABOVE_RACK", # accepts ABOVE_RACK, BELOW_RACK
    #         uplink_gbps: "UPLINK_1G", # accepts UPLINK_1G, UPLINK_10G, UPLINK_40G, UPLINK_100G
    #         uplink_count: "UPLINK_COUNT_1", # accepts UPLINK_COUNT_1, UPLINK_COUNT_2, UPLINK_COUNT_3, UPLINK_COUNT_4, UPLINK_COUNT_5, UPLINK_COUNT_6, UPLINK_COUNT_7, UPLINK_COUNT_8, UPLINK_COUNT_12, UPLINK_COUNT_16
    #         fiber_optic_cable_type: "SINGLE_MODE", # accepts SINGLE_MODE, MULTI_MODE
    #         optical_standard: "OPTIC_10GBASE_SR", # accepts OPTIC_10GBASE_SR, OPTIC_10GBASE_IR, OPTIC_10GBASE_LR, OPTIC_40GBASE_SR, OPTIC_40GBASE_ESR, OPTIC_40GBASE_IR4_LR4L, OPTIC_40GBASE_LR4, OPTIC_100GBASE_SR4, OPTIC_100GBASE_CWDM4, OPTIC_100GBASE_LR4, OPTIC_100G_PSM4_MSA, OPTIC_1000BASE_LX, OPTIC_1000BASE_SX
    #         maximum_supported_weight_lbs: "NO_LIMIT", # accepts NO_LIMIT, MAX_1400_LBS, MAX_1600_LBS, MAX_1800_LBS, MAX_2000_LBS
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateOutpostInput
    #   data as a hash:
    #
    #       {
    #         outpost_id: "OutpostId", # required
    #         name: "OutpostName",
    #         description: "OutpostDescription",
    #         supported_hardware_type: "RACK", # accepts RACK, SERVER
    #       }
    #
    # @!attribute [rw] outpost_id
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
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

    # @note When making an API call, you may pass UpdateSiteAddressInput
    #   data as a hash:
    #
    #       {
    #         site_id: "SiteId", # required
    #         address_type: "SHIPPING_ADDRESS", # required, accepts SHIPPING_ADDRESS, OPERATING_ADDRESS
    #         address: { # required
    #           contact_name: "ContactName",
    #           contact_phone_number: "ContactPhoneNumber",
    #           address_line_1: "AddressLine1", # required
    #           address_line_2: "AddressLine2",
    #           address_line_3: "AddressLine3",
    #           city: "City", # required
    #           state_or_region: "StateOrRegion", # required
    #           district_or_county: "DistrictOrCounty",
    #           postal_code: "PostalCode", # required
    #           country_code: "CountryCode", # required
    #           municipality: "Municipality",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass UpdateSiteInput
    #   data as a hash:
    #
    #       {
    #         site_id: "SiteId", # required
    #         name: "SiteName",
    #         description: "SiteDescription",
    #         notes: "SiteNotes",
    #       }
    #
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

    # @note When making an API call, you may pass UpdateSiteRackPhysicalPropertiesInput
    #   data as a hash:
    #
    #       {
    #         site_id: "SiteId", # required
    #         power_draw_kva: "POWER_5_KVA", # accepts POWER_5_KVA, POWER_10_KVA, POWER_15_KVA
    #         power_phase: "SINGLE_PHASE", # accepts SINGLE_PHASE, THREE_PHASE
    #         power_connector: "L6_30P", # accepts L6_30P, IEC309, AH530P7W, AH532P6W
    #         power_feed_drop: "ABOVE_RACK", # accepts ABOVE_RACK, BELOW_RACK
    #         uplink_gbps: "UPLINK_1G", # accepts UPLINK_1G, UPLINK_10G, UPLINK_40G, UPLINK_100G
    #         uplink_count: "UPLINK_COUNT_1", # accepts UPLINK_COUNT_1, UPLINK_COUNT_2, UPLINK_COUNT_3, UPLINK_COUNT_4, UPLINK_COUNT_5, UPLINK_COUNT_6, UPLINK_COUNT_7, UPLINK_COUNT_8, UPLINK_COUNT_12, UPLINK_COUNT_16
    #         fiber_optic_cable_type: "SINGLE_MODE", # accepts SINGLE_MODE, MULTI_MODE
    #         optical_standard: "OPTIC_10GBASE_SR", # accepts OPTIC_10GBASE_SR, OPTIC_10GBASE_IR, OPTIC_10GBASE_LR, OPTIC_40GBASE_SR, OPTIC_40GBASE_ESR, OPTIC_40GBASE_IR4_LR4L, OPTIC_40GBASE_LR4, OPTIC_100GBASE_SR4, OPTIC_100GBASE_CWDM4, OPTIC_100GBASE_LR4, OPTIC_100G_PSM4_MSA, OPTIC_1000BASE_LX, OPTIC_1000BASE_SX
    #         maximum_supported_weight_lbs: "NO_LIMIT", # accepts NO_LIMIT, MAX_1400_LBS, MAX_1600_LBS, MAX_1800_LBS, MAX_2000_LBS
    #       }
    #
    # @!attribute [rw] site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] power_draw_kva
    #   Specify in kVA the power draw available at the hardware placement
    #   position for the rack.
    #   @return [String]
    #
    # @!attribute [rw] power_phase
    #   Specify the power option that you can provide for hardware.
    #
    #   * Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz
    #
    #   * Three-phase AC feed: 346 V to 480 V, 50 Hz or 60 Hz
    #   @return [String]
    #
    # @!attribute [rw] power_connector
    #   Specify the power connector that Amazon Web Services should plan to
    #   provide for connections to the hardware. Note the correlation
    #   between `PowerPhase` and `PowerConnector`.
    #
    #   * Single-phase AC feed
    #
    #     * **L6-30P** – (common in US); 30A; single phase
    #
    #     * **IEC309 (blue)** – P+N+E, 6hr; 32 A; single phase
    #
    #   * Three-phase AC feed
    #
    #     * **AH530P7W (red)** – 3P+N+E, 7hr; 30A; three phase
    #
    #     * **AH532P6W (red)** – 3P+N+E, 6hr; 32A; three phase
    #   @return [String]
    #
    # @!attribute [rw] power_feed_drop
    #   Specify whether the power feed comes above or below the rack.
    #   @return [String]
    #
    # @!attribute [rw] uplink_gbps
    #   Specify the uplink speed the rack should support for the connection
    #   to the Region.
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
    #   Specify the type of fiber that you will use to attach the Outpost to
    #   your network.
    #   @return [String]
    #
    # @!attribute [rw] optical_standard
    #   Specify the type of optical standard that you will use to attach the
    #   Outpost to your network. This field is dependent on uplink speed,
    #   fiber type, and distance to the upstream device. For more
    #   information about networking requirements for racks, see
    #   [Network][1] in the Amazon Web Services Outposts User Guide.
    #
    #   * `OPTIC_10GBASE_SR`\: 10GBASE-SR
    #
    #   * `OPTIC_10GBASE_IR`\: 10GBASE-IR
    #
    #   * `OPTIC_10GBASE_LR`\: 10GBASE-LR
    #
    #   * `OPTIC_40GBASE_SR`\: 40GBASE-SR
    #
    #   * `OPTIC_40GBASE_ESR`\: 40GBASE-ESR
    #
    #   * `OPTIC_40GBASE_IR4_LR4L`\: 40GBASE-IR (LR4L)
    #
    #   * `OPTIC_40GBASE_LR4`\: 40GBASE-LR4
    #
    #   * `OPTIC_100GBASE_SR4`\: 100GBASE-SR4
    #
    #   * `OPTIC_100GBASE_CWDM4`\: 100GBASE-CWDM4
    #
    #   * `OPTIC_100GBASE_LR4`\: 100GBASE-LR4
    #
    #   * `OPTIC_100G_PSM4_MSA`\: 100G PSM4 MSA
    #
    #   * `OPTIC_1000BASE_LX`\: 1000Base-LX
    #
    #   * `OPTIC_1000BASE_SX`\: 1000Base-SX
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking
    #   @return [String]
    #
    # @!attribute [rw] maximum_supported_weight_lbs
    #   Specify the maximum rack weight that this site can support.
    #   `NO_LIMIT` is over 2000lbs.
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
