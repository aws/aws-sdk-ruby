# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PrivateNetworks
  module Types

    # You do not have permission to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] order_arn
    #   The Amazon Resource Name (ARN) of the order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/AcknowledgeOrderReceiptRequest AWS API Documentation
    #
    class AcknowledgeOrderReceiptRequest < Struct.new(
      :order_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] order
    #   Information about the order.
    #   @return [Types::Order]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/AcknowledgeOrderReceiptResponse AWS API Documentation
    #
    class AcknowledgeOrderReceiptResponse < Struct.new(
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] device_identifier_arn
    #   The Amazon Resource Name (ARN) of the device identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ActivateDeviceIdentifierRequest AWS API Documentation
    #
    class ActivateDeviceIdentifierRequest < Struct.new(
      :client_token,
      :device_identifier_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_identifier
    #   Information about the device identifier.
    #   @return [Types::DeviceIdentifier]
    #
    # @!attribute [rw] tags
    #   The tags on the device identifier.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ActivateDeviceIdentifierResponse AWS API Documentation
    #
    class ActivateDeviceIdentifierResponse < Struct.new(
      :device_identifier,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] commitment_configuration
    #   Determines the duration and renewal status of the commitment period
    #   for all pending radio units.
    #
    #   If you include `commitmentConfiguration` in the
    #   `ActivateNetworkSiteRequest` action, you must specify the following:
    #
    #   * The commitment period for the radio unit. You can choose a 60-day,
    #     1-year, or 3-year period.
    #
    #   * Whether you want your commitment period to automatically renew for
    #     one more year after your current commitment period expires.
    #
    #   For pricing, see [Amazon Web Services Private 5G Pricing][1].
    #
    #   If you do not include `commitmentConfiguration` in the
    #   `ActivateNetworkSiteRequest` action, the commitment period is set to
    #   60-days.
    #
    #
    #
    #   [1]: http://aws.amazon.com/private5g/pricing
    #   @return [Types::CommitmentConfiguration]
    #
    # @!attribute [rw] network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #   @return [String]
    #
    # @!attribute [rw] shipping_address
    #   The shipping address of the network site.
    #   @return [Types::Address]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ActivateNetworkSiteRequest AWS API Documentation
    #
    class ActivateNetworkSiteRequest < Struct.new(
      :client_token,
      :commitment_configuration,
      :network_site_arn,
      :shipping_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_site
    #   Information about the network site.
    #   @return [Types::NetworkSite]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ActivateNetworkSiteResponse AWS API Documentation
    #
    class ActivateNetworkSiteResponse < Struct.new(
      :network_site)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an address.
    #
    # @!attribute [rw] city
    #   The city for this address.
    #   @return [String]
    #
    # @!attribute [rw] company
    #   The company name for this address.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country for this address.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The recipient's email address.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The recipient's name for this address.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The recipient's phone number.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code for this address.
    #   @return [String]
    #
    # @!attribute [rw] state_or_province
    #   The state or province for this address.
    #   @return [String]
    #
    # @!attribute [rw] street1
    #   The first line of the street address.
    #   @return [String]
    #
    # @!attribute [rw] street2
    #   The second line of the street address.
    #   @return [String]
    #
    # @!attribute [rw] street3
    #   The third line of the street address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/Address AWS API Documentation
    #
    class Address < Struct.new(
      :city,
      :company,
      :country,
      :email_address,
      :name,
      :phone_number,
      :postal_code,
      :state_or_province,
      :street1,
      :street2,
      :street3)
      SENSITIVE = [:city, :company, :country, :email_address, :name, :phone_number, :postal_code, :state_or_province, :street1, :street2, :street3]
      include Aws::Structure
    end

    # Determines the duration and renewal status of the commitment period
    # for a radio unit.
    #
    # For pricing, see [Amazon Web Services Private 5G Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/private5g/pricing
    #
    # @!attribute [rw] automatic_renewal
    #   Determines whether the commitment period for a radio unit is set to
    #   automatically renew for an additional 1 year after your current
    #   commitment period expires.
    #
    #   Set to `True`, if you want your commitment period to automatically
    #   renew. Set to `False` if you do not want your commitment to
    #   automatically renew.
    #
    #   You can do the following:
    #
    #   * Set a 1-year commitment to automatically renew for an additional 1
    #     year. The hourly rate for the additional year will continue to be
    #     the same as your existing 1-year rate.
    #
    #   * Set a 3-year commitment to automatically renew for an additional 1
    #     year. The hourly rate for the additional year will continue to be
    #     the same as your existing 3-year rate.
    #
    #   * Turn off a previously-enabled automatic renewal on a 1-year or
    #     3-year commitment.
    #
    #   You cannot use the automatic-renewal option for a 60-day commitment.
    #   @return [Boolean]
    #
    # @!attribute [rw] commitment_length
    #   The duration of the commitment period for the radio unit. You can
    #   choose a 60-day, 1-year, or 3-year period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/CommitmentConfiguration AWS API Documentation
    #
    class CommitmentConfiguration < Struct.new(
      :automatic_renewal,
      :commitment_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # Shows the duration, the date and time that the contract started and
    # ends, and the renewal status of the commitment period for the radio
    # unit.
    #
    # @!attribute [rw] commitment_configuration
    #   The duration and renewal status of the commitment period for the
    #   radio unit.
    #   @return [Types::CommitmentConfiguration]
    #
    # @!attribute [rw] expires_on
    #   The date and time that the commitment period ends. If you do not
    #   cancel or renew the commitment before the expiration date, you will
    #   be billed at the 60-day-commitment rate.
    #   @return [Time]
    #
    # @!attribute [rw] start_at
    #   The date and time that the commitment period started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/CommitmentInformation AWS API Documentation
    #
    class CommitmentInformation < Struct.new(
      :commitment_configuration,
      :expires_on,
      :start_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_point_arn
    #   The Amazon Resource Name (ARN) of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] cpi_secret_key
    #   A Base64 encoded string of the CPI certificate associated with the
    #   CPI user who is certifying the coordinates of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] cpi_user_id
    #   The CPI user ID of the CPI user who is certifying the coordinates of
    #   the network resource.
    #   @return [String]
    #
    # @!attribute [rw] cpi_user_password
    #   The CPI password associated with the CPI certificate in
    #   `cpiSecretKey`.
    #   @return [String]
    #
    # @!attribute [rw] cpi_username
    #   The CPI user name of the CPI user who is certifying the coordinates
    #   of the radio unit.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position of the network resource.
    #   @return [Types::Position]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ConfigureAccessPointRequest AWS API Documentation
    #
    class ConfigureAccessPointRequest < Struct.new(
      :access_point_arn,
      :cpi_secret_key,
      :cpi_user_id,
      :cpi_user_password,
      :cpi_username,
      :position)
      SENSITIVE = [:cpi_secret_key, :cpi_user_id, :cpi_user_password, :cpi_username]
      include Aws::Structure
    end

    # @!attribute [rw] access_point
    #   Information about the network resource.
    #   @return [Types::NetworkResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ConfigureAccessPointResponse AWS API Documentation
    #
    class ConfigureAccessPointResponse < Struct.new(
      :access_point)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the network.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The name of the network. You can't change the name after you create
    #   the network.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the network.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/CreateNetworkRequest AWS API Documentation
    #
    class CreateNetworkRequest < Struct.new(
      :client_token,
      :description,
      :network_name,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] network
    #   Information about the network.
    #   @return [Types::Network]
    #
    # @!attribute [rw] tags
    #   The network tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/CreateNetworkResponse AWS API Documentation
    #
    class CreateNetworkResponse < Struct.new(
      :network,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] availability_zone
    #   The Availability Zone that is the parent of this site. You can't
    #   change the Availability Zone after you create the site.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The ID of the Availability Zone that is the parent of this site. You
    #   can't change the Availability Zone after you create the site.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the site.
    #   @return [String]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @!attribute [rw] network_site_name
    #   The name of the site. You can't change the name after you create
    #   the site.
    #   @return [String]
    #
    # @!attribute [rw] pending_plan
    #   Information about the pending plan for this site.
    #   @return [Types::SitePlan]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the network site.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/CreateNetworkSiteRequest AWS API Documentation
    #
    class CreateNetworkSiteRequest < Struct.new(
      :availability_zone,
      :availability_zone_id,
      :client_token,
      :description,
      :network_arn,
      :network_site_name,
      :pending_plan,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] network_site
    #   Information about the network site.
    #   @return [Types::NetworkSite]
    #
    # @!attribute [rw] tags
    #   The network site tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/CreateNetworkSiteResponse AWS API Documentation
    #
    class CreateNetworkSiteResponse < Struct.new(
      :network_site,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] device_identifier_arn
    #   The Amazon Resource Name (ARN) of the device identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeactivateDeviceIdentifierRequest AWS API Documentation
    #
    class DeactivateDeviceIdentifierRequest < Struct.new(
      :client_token,
      :device_identifier_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_identifier
    #   Information about the device identifier.
    #   @return [Types::DeviceIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeactivateDeviceIdentifierResponse AWS API Documentation
    #
    class DeactivateDeviceIdentifierResponse < Struct.new(
      :device_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeleteNetworkRequest AWS API Documentation
    #
    class DeleteNetworkRequest < Struct.new(
      :client_token,
      :network_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network
    #   Information about the network.
    #   @return [Types::Network]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeleteNetworkResponse AWS API Documentation
    #
    class DeleteNetworkResponse < Struct.new(
      :network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeleteNetworkSiteRequest AWS API Documentation
    #
    class DeleteNetworkSiteRequest < Struct.new(
      :client_token,
      :network_site_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_site
    #   Information about the network site.
    #   @return [Types::NetworkSite]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeleteNetworkSiteResponse AWS API Documentation
    #
    class DeleteNetworkSiteResponse < Struct.new(
      :network_site)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a subscriber of a device that can use a network.
    #
    # @!attribute [rw] created_at
    #   The creation time of this device identifier.
    #   @return [Time]
    #
    # @!attribute [rw] device_identifier_arn
    #   The Amazon Resource Name (ARN) of the device identifier.
    #   @return [String]
    #
    # @!attribute [rw] iccid
    #   The Integrated Circuit Card Identifier of the device identifier.
    #   @return [String]
    #
    # @!attribute [rw] imsi
    #   The International Mobile Subscriber Identity of the device
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network on which the device
    #   identifier appears.
    #   @return [String]
    #
    # @!attribute [rw] order_arn
    #   The Amazon Resource Name (ARN) of the order used to purchase the
    #   device identifier.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the device identifier.
    #   @return [String]
    #
    # @!attribute [rw] traffic_group_arn
    #   The Amazon Resource Name (ARN) of the traffic group to which the
    #   device identifier belongs.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The vendor of the device identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeviceIdentifier AWS API Documentation
    #
    class DeviceIdentifier < Struct.new(
      :created_at,
      :device_identifier_arn,
      :iccid,
      :imsi,
      :network_arn,
      :order_arn,
      :status,
      :traffic_group_arn,
      :vendor)
      SENSITIVE = [:imsi]
      include Aws::Structure
    end

    # @!attribute [rw] device_identifier_arn
    #   The Amazon Resource Name (ARN) of the device identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetDeviceIdentifierRequest AWS API Documentation
    #
    class GetDeviceIdentifierRequest < Struct.new(
      :device_identifier_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_identifier
    #   Information about the device identifier.
    #   @return [Types::DeviceIdentifier]
    #
    # @!attribute [rw] tags
    #   The device identifier tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetDeviceIdentifierResponse AWS API Documentation
    #
    class GetDeviceIdentifierResponse < Struct.new(
      :device_identifier,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetNetworkRequest AWS API Documentation
    #
    class GetNetworkRequest < Struct.new(
      :network_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_resource_arn
    #   The Amazon Resource Name (ARN) of the network resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetNetworkResourceRequest AWS API Documentation
    #
    class GetNetworkResourceRequest < Struct.new(
      :network_resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_resource
    #   Information about the network resource.
    #   @return [Types::NetworkResource]
    #
    # @!attribute [rw] tags
    #   The network resource tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetNetworkResourceResponse AWS API Documentation
    #
    class GetNetworkResourceResponse < Struct.new(
      :network_resource,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] network
    #   Information about the network.
    #   @return [Types::Network]
    #
    # @!attribute [rw] tags
    #   The network tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetNetworkResponse AWS API Documentation
    #
    class GetNetworkResponse < Struct.new(
      :network,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetNetworkSiteRequest AWS API Documentation
    #
    class GetNetworkSiteRequest < Struct.new(
      :network_site_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_site
    #   Information about the network site.
    #   @return [Types::NetworkSite]
    #
    # @!attribute [rw] tags
    #   The network site tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetNetworkSiteResponse AWS API Documentation
    #
    class GetNetworkSiteResponse < Struct.new(
      :network_site,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] order_arn
    #   The Amazon Resource Name (ARN) of the order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetOrderRequest AWS API Documentation
    #
    class GetOrderRequest < Struct.new(
      :order_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] order
    #   Information about the order.
    #   @return [Types::Order]
    #
    # @!attribute [rw] tags
    #   The order tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetOrderResponse AWS API Documentation
    #
    class GetOrderResponse < Struct.new(
      :order,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Information about an internal error.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filters.
    #
    #   * `ORDER` - The Amazon Resource Name (ARN) of the order.
    #
    #   * `STATUS` - The status (`ACTIVE` \| `INACTIVE`).
    #
    #   * `TRAFFIC_GROUP` - The Amazon Resource Name (ARN) of the traffic
    #     group.
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @!attribute [rw] start_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListDeviceIdentifiersRequest AWS API Documentation
    #
    class ListDeviceIdentifiersRequest < Struct.new(
      :filters,
      :max_results,
      :network_arn,
      :start_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_identifiers
    #   Information about the device identifiers.
    #   @return [Array<Types::DeviceIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListDeviceIdentifiersResponse AWS API Documentation
    #
    class ListDeviceIdentifiersResponse < Struct.new(
      :device_identifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filters.
    #
    #   * `ORDER` - The Amazon Resource Name (ARN) of the order.
    #
    #   * `STATUS` - The status (`AVAILABLE` \| `DELETED` \| `DELETING` \|
    #     `PENDING` \| `PENDING_RETURN` \| `PROVISIONING` \| `SHIPPED`).
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @!attribute [rw] start_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListNetworkResourcesRequest AWS API Documentation
    #
    class ListNetworkResourcesRequest < Struct.new(
      :filters,
      :max_results,
      :network_arn,
      :start_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_resources
    #   Information about network resources.
    #   @return [Array<Types::NetworkResource>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListNetworkResourcesResponse AWS API Documentation
    #
    class ListNetworkResourcesResponse < Struct.new(
      :network_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filters. Add filters to your request to return a more specific
    #   list of results. Use filters to match the status of the network
    #   sites.
    #
    #   * `STATUS` - The status (`AVAILABLE` \| `CREATED` \| `DELETED` \|
    #     `DEPROVISIONING` \| `PROVISIONING`).
    #
    #   ^
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @!attribute [rw] start_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListNetworkSitesRequest AWS API Documentation
    #
    class ListNetworkSitesRequest < Struct.new(
      :filters,
      :max_results,
      :network_arn,
      :start_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_sites
    #   Information about the network sites.
    #   @return [Array<Types::NetworkSite>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListNetworkSitesResponse AWS API Documentation
    #
    class ListNetworkSitesResponse < Struct.new(
      :network_sites,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filters.
    #
    #   * `STATUS` - The status (`AVAILABLE` \| `CREATED` \| `DELETED` \|
    #     `DEPROVISIONING` \| `PROVISIONING`).
    #
    #   ^
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] start_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListNetworksRequest AWS API Documentation
    #
    class ListNetworksRequest < Struct.new(
      :filters,
      :max_results,
      :start_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] networks
    #   The networks.
    #   @return [Array<Types::Network>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListNetworksResponse AWS API Documentation
    #
    class ListNetworksResponse < Struct.new(
      :networks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filters.
    #
    #   * `NETWORK_SITE` - The Amazon Resource Name (ARN) of the network
    #     site.
    #
    #   * `STATUS` - The status (`ACKNOWLEDGING` \| `ACKNOWLEDGED` \|
    #     `UNACKNOWLEDGED`).
    #
    #   Filter values are case sensitive. If you specify multiple values for
    #   a filter, the values are joined with an `OR`, and the request
    #   returns all results that match any of the specified values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @!attribute [rw] start_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListOrdersRequest AWS API Documentation
    #
    class ListOrdersRequest < Struct.new(
      :filters,
      :max_results,
      :network_arn,
      :start_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] orders
    #   Information about the orders.
    #   @return [Array<Types::Order>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListOrdersResponse AWS API Documentation
    #
    class ListOrdersResponse < Struct.new(
      :next_token,
      :orders)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListTagsForResourceRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Information about a name/value pair.
    #
    # @!attribute [rw] name
    #   The name of the pair.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/NameValuePair AWS API Documentation
    #
    class NameValuePair < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a network.
    #
    # @!attribute [rw] created_at
    #   The creation time of the network.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the network.
    #   @return [String]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The name of the network.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the network.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/Network AWS API Documentation
    #
    class Network < Struct.new(
      :created_at,
      :description,
      :network_arn,
      :network_name,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a network resource.
    #
    # @!attribute [rw] attributes
    #   The attributes of the network resource.
    #   @return [Array<Types::NameValuePair>]
    #
    # @!attribute [rw] commitment_information
    #   Information about the commitment period for the radio unit. Shows
    #   the duration, the date and time that the contract started and ends,
    #   and the renewal status of the commitment period.
    #   @return [Types::CommitmentInformation]
    #
    # @!attribute [rw] created_at
    #   The creation time of the network resource.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   The health of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network on which this network
    #   resource appears.
    #   @return [String]
    #
    # @!attribute [rw] network_resource_arn
    #   The Amazon Resource Name (ARN) of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] network_site_arn
    #   The Amazon Resource Name (ARN) of the network site on which this
    #   network resource appears.
    #   @return [String]
    #
    # @!attribute [rw] order_arn
    #   The Amazon Resource Name (ARN) of the order used to purchase this
    #   network resource.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position of the network resource.
    #   @return [Types::Position]
    #
    # @!attribute [rw] return_information
    #   Information about a request to return the network resource.
    #   @return [Types::ReturnInformation]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The vendor of the network resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/NetworkResource AWS API Documentation
    #
    class NetworkResource < Struct.new(
      :attributes,
      :commitment_information,
      :created_at,
      :description,
      :health,
      :model,
      :network_arn,
      :network_resource_arn,
      :network_site_arn,
      :order_arn,
      :position,
      :return_information,
      :serial_number,
      :status,
      :status_reason,
      :type,
      :vendor)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a network resource definition.
    #
    # @!attribute [rw] count
    #   The count in the network resource definition.
    #   @return [Integer]
    #
    # @!attribute [rw] options
    #   The options in the network resource definition.
    #   @return [Array<Types::NameValuePair>]
    #
    # @!attribute [rw] type
    #   The type in the network resource definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/NetworkResourceDefinition AWS API Documentation
    #
    class NetworkResourceDefinition < Struct.new(
      :count,
      :options,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a network site.
    #
    # @!attribute [rw] availability_zone
    #   The parent Availability Zone for the network site.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The parent Availability Zone ID for the network site.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The creation time of the network site.
    #   @return [Time]
    #
    # @!attribute [rw] current_plan
    #   The current plan of the network site.
    #   @return [Types::SitePlan]
    #
    # @!attribute [rw] description
    #   The description of the network site.
    #   @return [String]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network to which the network
    #   site belongs.
    #   @return [String]
    #
    # @!attribute [rw] network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #   @return [String]
    #
    # @!attribute [rw] network_site_name
    #   The name of the network site.
    #   @return [String]
    #
    # @!attribute [rw] pending_plan
    #   The pending plan of the network site.
    #   @return [Types::SitePlan]
    #
    # @!attribute [rw] status
    #   The status of the network site.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the network site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/NetworkSite AWS API Documentation
    #
    class NetworkSite < Struct.new(
      :availability_zone,
      :availability_zone_id,
      :created_at,
      :current_plan,
      :description,
      :network_arn,
      :network_site_arn,
      :network_site_name,
      :pending_plan,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an order.
    #
    # @!attribute [rw] acknowledgment_status
    #   The acknowledgement status of the order.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The creation time of the order.
    #   @return [Time]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network associated with this
    #   order.
    #   @return [String]
    #
    # @!attribute [rw] network_site_arn
    #   The Amazon Resource Name (ARN) of the network site associated with
    #   this order.
    #   @return [String]
    #
    # @!attribute [rw] order_arn
    #   The Amazon Resource Name (ARN) of the order.
    #   @return [String]
    #
    # @!attribute [rw] ordered_resources
    #   A list of the network resources placed in the order.
    #   @return [Array<Types::OrderedResourceDefinition>]
    #
    # @!attribute [rw] shipping_address
    #   The shipping address of the order.
    #   @return [Types::Address]
    #
    # @!attribute [rw] tracking_information
    #   The tracking information of the order.
    #   @return [Array<Types::TrackingInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/Order AWS API Documentation
    #
    class Order < Struct.new(
      :acknowledgment_status,
      :created_at,
      :network_arn,
      :network_site_arn,
      :order_arn,
      :ordered_resources,
      :shipping_address,
      :tracking_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the network resources in the order.
    #
    # @!attribute [rw] commitment_configuration
    #   The duration and renewal status of the commitment period for each
    #   radio unit in the order. Does not show details if the resource type
    #   is DEVICE\_IDENTIFIER.
    #   @return [Types::CommitmentConfiguration]
    #
    # @!attribute [rw] count
    #   The number of network resources in the order.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of network resource in the order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/OrderedResourceDefinition AWS API Documentation
    #
    class OrderedResourceDefinition < Struct.new(
      :commitment_configuration,
      :count,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Information about the health of the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/PingResponse AWS API Documentation
    #
    class PingResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a position.
    #
    # @!attribute [rw] elevation
    #   The elevation of the equipment at this position.
    #   @return [Float]
    #
    # @!attribute [rw] elevation_reference
    #   The reference point from which elevation is reported.
    #   @return [String]
    #
    # @!attribute [rw] elevation_unit
    #   The units used to measure the elevation of the position.
    #   @return [String]
    #
    # @!attribute [rw] latitude
    #   The latitude of the position.
    #   @return [Float]
    #
    # @!attribute [rw] longitude
    #   The longitude of the position.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/Position AWS API Documentation
    #
    class Position < Struct.new(
      :elevation,
      :elevation_reference,
      :elevation_unit,
      :latitude,
      :longitude)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource was not found.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the affected resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the affected resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a request to return a network resource.
    #
    # @!attribute [rw] replacement_order_arn
    #   The Amazon Resource Name (ARN) of the replacement order.
    #   @return [String]
    #
    # @!attribute [rw] return_reason
    #   The reason for the return. If the return request did not include a
    #   reason for the return, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] shipping_address
    #   The shipping address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] shipping_label
    #   The URL of the shipping label. The shipping label is available for
    #   download only if the status of the network resource is
    #   `PENDING_RETURN`. For more information, see [Return a radio
    #   unit][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/private-networks/latest/userguide/radio-units.html#return-radio-unit
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ReturnInformation AWS API Documentation
    #
    class ReturnInformation < Struct.new(
      :replacement_order_arn,
      :return_reason,
      :shipping_address,
      :shipping_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a site plan.
    #
    # @!attribute [rw] options
    #   The options of the plan.
    #   @return [Array<Types::NameValuePair>]
    #
    # @!attribute [rw] resource_definitions
    #   The resource definitions of the plan.
    #   @return [Array<Types::NetworkResourceDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/SitePlan AWS API Documentation
    #
    class SitePlan < Struct.new(
      :options,
      :resource_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commitment_configuration
    #   Use this action to extend and automatically renew the commitment
    #   period for the radio unit. You can do the following:
    #
    #   * Change a 60-day commitment to a 1-year or 3-year commitment. The
    #     change is immediate and the hourly rate decreases to the rate for
    #     the new commitment period.
    #
    #   * Change a 1-year commitment to a 3-year commitment. The change is
    #     immediate and the hourly rate decreases to the rate for the 3-year
    #     commitment period.
    #
    #   * Set a 1-year commitment to automatically renew for an additional 1
    #     year. The hourly rate for the additional year will continue to be
    #     the same as your existing 1-year rate.
    #
    #   * Set a 3-year commitment to automatically renew for an additional 1
    #     year. The hourly rate for the additional year will continue to be
    #     the same as your existing 3-year rate.
    #
    #   * Turn off a previously-enabled automatic renewal on a 1-year or
    #     3-year commitment. You cannot use the automatic-renewal option for
    #     a 60-day commitment.
    #
    #   For pricing, see [Amazon Web Services Private 5G Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/private5g/pricing
    #   @return [Types::CommitmentConfiguration]
    #
    # @!attribute [rw] network_resource_arn
    #   The Amazon Resource Name (ARN) of the network resource.
    #   @return [String]
    #
    # @!attribute [rw] return_reason
    #   The reason for the return. Providing a reason for a return is
    #   optional.
    #   @return [String]
    #
    # @!attribute [rw] shipping_address
    #   The shipping address. If you don't provide a shipping address when
    #   replacing or returning a network resource, we use the address from
    #   the original order for the network resource.
    #   @return [Types::Address]
    #
    # @!attribute [rw] update_type
    #   The update type.
    #
    #   * `REPLACE` - Submits a request to replace a defective radio unit.
    #     We provide a shipping label that you can use for the return
    #     process and we ship a replacement radio unit to you.
    #
    #   * `RETURN` - Submits a request to return a radio unit that you no
    #     longer need. We provide a shipping label that you can use for the
    #     return process.
    #
    #   * `COMMITMENT` - Submits a request to change or renew the commitment
    #     period. If you choose this value, then you must set [
    #     `commitmentConfiguration` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/private-networks/latest/APIReference/API_StartNetworkResourceUpdate.html#privatenetworks-StartNetworkResourceUpdate-request-commitmentConfiguration
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/StartNetworkResourceUpdateRequest AWS API Documentation
    #
    class StartNetworkResourceUpdateRequest < Struct.new(
      :commitment_configuration,
      :network_resource_arn,
      :return_reason,
      :shipping_address,
      :update_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_resource
    #   The network resource.
    #   @return [Types::NetworkResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/StartNetworkResourceUpdateResponse AWS API Documentation
    #
    class StartNetworkResourceUpdateResponse < Struct.new(
      :network_resource)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about tracking a shipment.
    #
    # @!attribute [rw] tracking_number
    #   The tracking number of the shipment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/TrackingInformation AWS API Documentation
    #
    class TrackingInformation < Struct.new(
      :tracking_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #   @return [String]
    #
    # @!attribute [rw] pending_plan
    #   The pending plan.
    #   @return [Types::SitePlan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/UpdateNetworkSitePlanRequest AWS API Documentation
    #
    class UpdateNetworkSitePlanRequest < Struct.new(
      :client_token,
      :network_site_arn,
      :pending_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/UpdateNetworkSiteRequest AWS API Documentation
    #
    class UpdateNetworkSiteRequest < Struct.new(
      :client_token,
      :description,
      :network_site_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_site
    #   Information about the network site.
    #   @return [Types::NetworkSite]
    #
    # @!attribute [rw] tags
    #   The network site tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/UpdateNetworkSiteResponse AWS API Documentation
    #
    class UpdateNetworkSiteResponse < Struct.new(
      :network_site,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # The request failed validation.
    #
    # @!attribute [rw] field_list
    #   The list of fields that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a field that failed validation.
    #
    # @!attribute [rw] message
    #   The message about the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The field name that failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
