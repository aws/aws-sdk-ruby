# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LicenseManagerLinuxSubscriptions
  module Types

    # @!attribute [rw] subscription_provider_arn
    #   The Amazon Resource Name (ARN) of the subscription provider resource
    #   to deregister.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/DeregisterSubscriptionProviderRequest AWS API Documentation
    #
    class DeregisterSubscriptionProviderRequest < Struct.new(
      :subscription_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/DeregisterSubscriptionProviderResponse AWS API Documentation
    #
    class DeregisterSubscriptionProviderResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] subscription_provider_arn
    #   The Amazon Resource Name (ARN) of the BYOL registration resource to
    #   get details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/GetRegisteredSubscriptionProviderRequest AWS API Documentation
    #
    class GetRegisteredSubscriptionProviderRequest < Struct.new(
      :subscription_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] last_successful_data_retrieval_time
    #   The timestamp from the last time License Manager retrieved
    #   subscription details from your registered third-party Linux
    #   subscription provider.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the third-party access secret
    #   stored in Secrets Manager for the BYOL registration resource
    #   specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_arn
    #   The Amazon Resource Name (ARN) for the BYOL registration resource
    #   specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_source
    #   The subscription provider for the BYOL registration resource
    #   specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_status
    #   The status of the Linux subscription provider access token from the
    #   last successful subscription data request.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_status_message
    #   The detailed message from your subscription provider token status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/GetRegisteredSubscriptionProviderResponse AWS API Documentation
    #
    class GetRegisteredSubscriptionProviderResponse < Struct.new(
      :last_successful_data_retrieval_time,
      :secret_arn,
      :subscription_provider_arn,
      :subscription_provider_source,
      :subscription_provider_status,
      :subscription_provider_status_message)
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
    # @!attribute [rw] dual_subscription
    #   Indicates that you have two different license subscriptions for the
    #   same software on your instance.
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
    # @!attribute [rw] os_version
    #   The operating system software version that runs on your instance.
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
    # @!attribute [rw] registered_with_subscription_provider
    #   Indicates that your instance uses a BYOL license subscription from a
    #   third-party Linux subscription provider that you've registered with
    #   License Manager.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the instance.
    #   @return [String]
    #
    # @!attribute [rw] subscription_name
    #   The name of the license subscription that the instance uses.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_create_time
    #   The timestamp when you registered the third-party Linux subscription
    #   provider for the subscription that the instance uses.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_update_time
    #   The timestamp from the last time that the instance synced with the
    #   registered third-party Linux subscription provider.
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
      :dual_subscription,
      :instance_id,
      :instance_type,
      :last_updated_time,
      :os_version,
      :product_code,
      :region,
      :registered_with_subscription_provider,
      :status,
      :subscription_name,
      :subscription_provider_create_time,
      :subscription_provider_update_time,
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
    #   An array of structures that you can use to filter the results by
    #   your specified criteria. For example, you can specify `Region` in
    #   the `Name`, with the `contains` operator to list all subscriptions
    #   that match a partial string in the `Value`, such as `us-west`.
    #
    #   For each filter, you can specify one of the following values for the
    #   `Name` key to streamline results:
    #
    #   * `AccountID`
    #
    #   * `AmiID`
    #
    #   * `DualSubscription`
    #
    #   * `InstanceID`
    #
    #   * `InstanceType`
    #
    #   * `ProductCode`
    #
    #   * `Region`
    #
    #   * `Status`
    #
    #   * `UsageOperation`
    #
    #   For each filter, you can use one of the following `Operator` values
    #   to define the behavior of the filter:
    #
    #   * `contains`
    #
    #   * `equals`
    #
    #   * `Notequal`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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

    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_sources
    #   To filter your results, specify which subscription providers to
    #   return in the list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ListRegisteredSubscriptionProvidersRequest AWS API Documentation
    #
    class ListRegisteredSubscriptionProvidersRequest < Struct.new(
      :max_results,
      :next_token,
      :subscription_provider_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @!attribute [rw] registered_subscription_providers
    #   The list of BYOL registration resources that fit the criteria you
    #   specified in the request.
    #   @return [Array<Types::RegisteredSubscriptionProvider>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ListRegisteredSubscriptionProvidersResponse AWS API Documentation
    #
    class ListRegisteredSubscriptionProvidersResponse < Struct.new(
      :next_token,
      :registered_subscription_providers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list
    #   metadata tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The metadata tags for the requested resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the secret where you've stored
    #   your subscription provider's access token. For RHEL subscriptions
    #   managed through the Red Hat Subscription Manager (RHSM), the secret
    #   contains your Red Hat Offline token.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_source
    #   The supported Linux subscription provider to register.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata tags to assign to your registered Linux subscription
    #   provider resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/RegisterSubscriptionProviderRequest AWS API Documentation
    #
    class RegisterSubscriptionProviderRequest < Struct.new(
      :secret_arn,
      :subscription_provider_source,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] subscription_provider_arn
    #   The Amazon Resource Name (ARN) of the Linux subscription provider
    #   resource that you registered.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_source
    #   The Linux subscription provider that you registered.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_status
    #   Indicates the status of the registration action for the Linux
    #   subscription provider that you requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/RegisterSubscriptionProviderResponse AWS API Documentation
    #
    class RegisterSubscriptionProviderResponse < Struct.new(
      :subscription_provider_arn,
      :subscription_provider_source,
      :subscription_provider_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A third-party provider for operating system (OS) platform software and
    # license subscriptions, such as Red Hat. When you register a
    # third-party Linux subscription provider, License Manager can get
    # subscription data from the registered provider.
    #
    # @!attribute [rw] last_successful_data_retrieval_time
    #   The timestamp from the last time that License Manager accessed
    #   third-party subscription data for your account from your registered
    #   Linux subscription provider.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret that
    #   stores your registered Linux subscription provider access token. For
    #   RHEL account subscriptions, this is the offline token.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_arn
    #   The Amazon Resource Name (ARN) of the Linux subscription provider
    #   resource that you registered.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_source
    #   A supported third-party Linux subscription provider. License Manager
    #   currently supports Red Hat subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_status
    #   Indicates the status of your registered Linux subscription provider
    #   access token from the last time License Manager retrieved
    #   subscription data. For RHEL account subscriptions, this is the
    #   status of the offline token.
    #   @return [String]
    #
    # @!attribute [rw] subscription_provider_status_message
    #   A detailed message that's associated with your BYOL subscription
    #   provider token status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/RegisteredSubscriptionProvider AWS API Documentation
    #
    class RegisteredSubscriptionProvider < Struct.new(
      :last_successful_data_retrieval_time,
      :secret_arn,
      :subscription_provider_arn,
      :subscription_provider_source,
      :subscription_provider_status,
      :subscription_provider_status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to find the requested Amazon Web Services resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services resource
    #   to which to add the specified metadata tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata tags to assign to the Amazon Web Services resource.
    #   Tags are formatted as key value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services resource
    #   to remove the metadata tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of metadata tag keys to remove from the requested resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

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

