# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LicenseManagerLinuxSubscriptions
  module Types

    # A filter object that is used to return more specific results from a
    # describe operation. Filters can be used to match a set of resources by
    # specific criteria.
    #
    # @!attribute [rw] name
    #   The type of name to filter by.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   An operator for filtering results.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more values for the name to filter by.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/GetServiceSettingsRequest AWS API Documentation
    #
    class GetServiceSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] home_regions
    #   The Region in which License Manager displays the aggregated data for
    #   Linux subscriptions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] linux_subscriptions_discovery
    #   Lists if discovery has been enabled for Linux subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] linux_subscriptions_discovery_settings
    #   Lists the settings defined for Linux subscriptions discovery. The
    #   settings include if Organizations integration has been enabled, and
    #   which Regions data will be aggregated from.
    #   @return [Types::LinuxSubscriptionsDiscoverySettings]
    #
    # @!attribute [rw] status
    #   Indicates the status of Linux subscriptions settings being applied.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message which details the Linux subscriptions service settings
    #   current status.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/GetServiceSettingsResponse AWS API Documentation
    #
    class GetServiceSettingsResponse < Struct.new(
      :home_regions,
      :linux_subscriptions_discovery,
      :linux_subscriptions_discovery_settings,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details discovered information about a running instance using Linux
    # subscriptions.
    #
    # @!attribute [rw] account_id
    #   The account ID which owns the instance.
    #   @return [String]
    #
    # @!attribute [rw] ami_id
    #   The AMI ID used to launch the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The time in which the last discovery updated the instance details.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The product code for the instance. For more information, see [Usage
    #   operation values][1] in the *License Manager User Guide* .
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/license-manager/latest/userguide/linux-subscriptions-usage-operation.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] region
    #   The Region the instance is running in.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the instance.
    #   @return [String]
    #
    # @!attribute [rw] subscription_name
    #   The name of the subscription being used by the instance.
    #   @return [String]
    #
    # @!attribute [rw] usage_operation
    #   The usage operation of the instance. For more information, see For
    #   more information, see [Usage operation values][1] in the *License
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/license-manager/latest/userguide/linux-subscriptions-usage-operation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :account_id,
      :ami_id,
      :instance_id,
      :instance_type,
      :last_updated_time,
      :product_code,
      :region,
      :status,
      :subscription_name,
      :usage_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception occurred with the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists the settings defined for discovering Linux subscriptions.
    #
    # @!attribute [rw] organization_integration
    #   Details if you have enabled resource discovery across your accounts
    #   in Organizations.
    #   @return [String]
    #
    # @!attribute [rw] source_regions
    #   The Regions in which to discover data for Linux subscriptions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/LinuxSubscriptionsDiscoverySettings AWS API Documentation
    #
    class LinuxSubscriptionsDiscoverySettings < Struct.new(
      :organization_integration,
      :source_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # NextToken length limit is half of ddb accepted limit. Increase this
    # limit if parameters in request increases.
    #
    # @!attribute [rw] filters
    #   An array of structures that you can use to filter the results to
    #   those that match one or more sets of key-value pairs that you
    #   specify. For example, you can filter by the name of `AmiID` with an
    #   optional operator to see subscriptions that match, partially match,
    #   or don't match a certain Amazon Machine Image (AMI) ID.
    #
    #   The valid names for this filter are:
    #
    #   * `AmiID`
    #
    #   * `InstanceID`
    #
    #   * `AccountID`
    #
    #   * `Status`
    #
    #   * `Region`
    #
    #   * `UsageOperation`
    #
    #   * `ProductCode`
    #
    #   * `InstanceType`
    #
    #   The valid Operators for this filter are:
    #
    #   * `contains`
    #
    #   * `equals`
    #
    #   * `Notequal`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ListLinuxSubscriptionInstancesRequest AWS API Documentation
    #
    class ListLinuxSubscriptionInstancesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   An array that contains instance objects.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ListLinuxSubscriptionInstancesResponse AWS API Documentation
    #
    class ListLinuxSubscriptionInstancesResponse < Struct.new(
      :instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # NextToken length limit is half of ddb accepted limit. Increase this
    # limit if parameters in request increases.
    #
    # @!attribute [rw] filters
    #   An array of structures that you can use to filter the results to
    #   those that match one or more sets of key-value pairs that you
    #   specify. For example, you can filter by the name of `Subscription`
    #   with an optional operator to see subscriptions that match, partially
    #   match, or don't match a certain subscription's name.
    #
    #   The valid names for this filter are:
    #
    #   * `Subscription`
    #
    #   ^
    #
    #   The valid Operators for this filter are:
    #
    #   * `contains`
    #
    #   * `equals`
    #
    #   * `Notequal`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ListLinuxSubscriptionsRequest AWS API Documentation
    #
    class ListLinuxSubscriptionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] subscriptions
    #   An array that contains subscription objects.
    #   @return [Array<Types::Subscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ListLinuxSubscriptionsResponse AWS API Documentation
    #
    class ListLinuxSubscriptionsResponse < Struct.new(
      :next_token,
      :subscriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which details a discovered Linux subscription.
    #
    # @!attribute [rw] instance_count
    #   The total amount of running instances using this subscription.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of subscription. The type can be subscription-included with
    #   Amazon EC2, Bring Your Own Subscription model (BYOS), or from the
    #   Amazon Web Services Marketplace. Certain subscriptions may use
    #   licensing from the Amazon Web Services Marketplace as well as OS
    #   licensing from Amazon EC2 or BYOS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :instance_count,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] allow_update
    #   Describes if updates are allowed to the service settings for Linux
    #   subscriptions. If you allow updates, you can aggregate Linux
    #   subscription data in more than one home Region.
    #   @return [Boolean]
    #
    # @!attribute [rw] linux_subscriptions_discovery
    #   Describes if the discovery of Linux subscriptions is enabled.
    #   @return [String]
    #
    # @!attribute [rw] linux_subscriptions_discovery_settings
    #   The settings defined for Linux subscriptions discovery. The settings
    #   include if Organizations integration has been enabled, and which
    #   Regions data will be aggregated from.
    #   @return [Types::LinuxSubscriptionsDiscoverySettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/UpdateServiceSettingsRequest AWS API Documentation
    #
    class UpdateServiceSettingsRequest < Struct.new(
      :allow_update,
      :linux_subscriptions_discovery,
      :linux_subscriptions_discovery_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] home_regions
    #   The Region in which License Manager displays the aggregated data for
    #   Linux subscriptions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] linux_subscriptions_discovery
    #   Lists if discovery has been enabled for Linux subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] linux_subscriptions_discovery_settings
    #   The settings defined for Linux subscriptions discovery. The settings
    #   include if Organizations integration has been enabled, and which
    #   Regions data will be aggregated from.
    #   @return [Types::LinuxSubscriptionsDiscoverySettings]
    #
    # @!attribute [rw] status
    #   Indicates the status of Linux subscriptions settings being applied.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message which details the Linux subscriptions service settings
    #   current status.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/UpdateServiceSettingsResponse AWS API Documentation
    #
    class UpdateServiceSettingsResponse < Struct.new(
      :home_regions,
      :linux_subscriptions_discovery,
      :linux_subscriptions_discovery_settings,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided input is not valid. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
