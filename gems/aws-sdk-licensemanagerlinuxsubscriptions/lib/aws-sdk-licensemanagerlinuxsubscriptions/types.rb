# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManagerLinuxSubscriptions
  # This module contains the types returned by client operations.
  module Types

    # @!attribute subscription_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the subscription provider resource to deregister.</p>
    #   @return [String]
    class DeregisterSubscriptionProviderRequest < Struct.new(
      :subscription_provider_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeregisterSubscriptionProviderResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter object that is used to return more specific results from a describe operation.
    #       Filters can be used to match a set of resources by specific criteria.</p>
    # @!attribute name
    #   <p>The type of name to filter by.</p>
    #   @return [String]
    # @!attribute values
    #   <p>One or more values for the name to filter by.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>An operator for filtering results.</p>
    #   @return [String]
    class Filter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the BYOL registration resource to get details for.</p>
    #   @return [String]
    class GetRegisteredSubscriptionProviderRequest < Struct.new(
      :subscription_provider_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_provider_arn
    #   <p>The Amazon Resource Name (ARN) for the BYOL registration resource specified in the request.</p>
    #   @return [String]
    # @!attribute subscription_provider_source
    #   <p>The subscription provider for the BYOL registration resource specified 
    #   			in the request.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the third-party access secret stored in Secrets Manager for the BYOL 
    #   			registration resource specified in the request.</p>
    #   @return [String]
    # @!attribute subscription_provider_status
    #   <p>The status of the Linux subscription provider access token from the last 
    #   			successful subscription data request.</p>
    #   @return [String]
    # @!attribute subscription_provider_status_message
    #   <p>The detailed message from your subscription provider token status.</p>
    #   @return [String]
    # @!attribute last_successful_data_retrieval_time
    #   <p>The timestamp from the last time License Manager retrieved subscription details 
    #   			from your registered third-party Linux subscription provider.</p>
    #   @return [String]
    class GetRegisteredSubscriptionProviderResponse < Struct.new(
      :subscription_provider_arn,
      :subscription_provider_source,
      :secret_arn,
      :subscription_provider_status,
      :subscription_provider_status_message,
      :last_successful_data_retrieval_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetServiceSettingsInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute linux_subscriptions_discovery
    #   <p>Lists if discovery has been enabled for Linux subscriptions.</p>
    #   @return [String]
    # @!attribute linux_subscriptions_discovery_settings
    #   <p>Lists the settings defined for Linux subscriptions discovery. The settings include if
    #         Organizations integration has been enabled, and which Regions data will be aggregated from.</p>
    #   @return [Types::LinuxSubscriptionsDiscoverySettings]
    # @!attribute status
    #   <p>Indicates the status of Linux subscriptions settings being applied.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message which details the Linux subscriptions service settings current status.</p>
    #   @return [Hash<String, String>]
    # @!attribute home_regions
    #   <p>The Region in which License Manager displays the aggregated data for Linux
    #         subscriptions.</p>
    #   @return [Array<String>]
    class GetServiceSettingsOutput < Struct.new(
      :linux_subscriptions_discovery,
      :linux_subscriptions_discovery_settings,
      :status,
      :status_message,
      :home_regions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details discovered information about a running instance using Linux subscriptions.</p>
    # @!attribute ami_id
    #   <p>The AMI ID used to launch the instance.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID of the resource.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type of the resource.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID which owns the instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the instance.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region the instance is running in.</p>
    #   @return [String]
    # @!attribute usage_operation
    #   <p>The usage operation of the instance. For more information, see For more information, see
    #           <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/linux-subscriptions-usage-operation.html">Usage
    #           operation values</a> in the <i>License Manager User Guide</i>.</p>
    #   @return [String]
    # @!attribute product_code
    #   <p>The product code for the instance. For more information, see <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/linux-subscriptions-usage-operation.html">Usage
    #           operation values</a> in the <i>License Manager User Guide</i> .</p>
    #   @return [Array<String>]
    # @!attribute last_updated_time
    #   <p>The time in which the last discovery updated the instance details.</p>
    #   @return [String]
    # @!attribute subscription_name
    #   <p>The name of the license subscription that the instance uses.</p>
    #   @return [String]
    # @!attribute os_version
    #   <p>The operating system software version that runs on your instance.</p>
    #   @return [String]
    # @!attribute subscription_provider_create_time
    #   <p>The timestamp when you registered the third-party Linux subscription 
    #   			provider for the subscription that the instance uses.</p>
    #   @return [String]
    # @!attribute subscription_provider_update_time
    #   <p>The timestamp from the last time that the instance synced with the registered 
    #   			third-party Linux subscription provider.</p>
    #   @return [String]
    # @!attribute dual_subscription
    #   <p>Indicates that you have two different license subscriptions for 
    #   			the same software on your instance.</p>
    #   @return [String]
    # @!attribute registered_with_subscription_provider
    #   <p>Indicates that your instance uses a BYOL license subscription from 
    #   			a third-party Linux subscription provider that you've registered with License Manager.</p>
    #   @return [String]
    class Instance < Struct.new(
      :ami_id,
      :instance_id,
      :instance_type,
      :account_id,
      :status,
      :region,
      :usage_operation,
      :product_code,
      :last_updated_time,
      :subscription_name,
      :os_version,
      :subscription_provider_create_time,
      :subscription_provider_update_time,
      :dual_subscription,
      :registered_with_subscription_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An exception occurred with the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lists the settings defined for discovering Linux subscriptions.</p>
    # @!attribute source_regions
    #   <p>The Regions in which to discover data for Linux subscriptions.</p>
    #   @return [Array<String>]
    # @!attribute organization_integration
    #   <p>Details if you have enabled resource discovery across your accounts in Organizations.</p>
    #   @return [String]
    class LinuxSubscriptionsDiscoverySettings < Struct.new(
      :source_regions,
      :organization_integration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # NextToken length limit is half of ddb accepted limit.
    # Increase this limit if parameters in request increases.
    # @!attribute filters
    #   <p>An array of structures that you can use to filter the results by your specified criteria. 
    #       	For example, you can specify <code>Region</code> in the <code>Name</code>, with the 
    #       	<code>contains</code> operator to list all subscriptions that match a partial string in the 
    #       	<code>Value</code>, such as <code>us-west</code>.</p>
    #            <p>For each filter, you can specify one of the following values for the <code>Name</code> key 
    #       	to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AccountID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmiID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DualSubscription</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceType</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProductCode</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Region</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageOperation</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For each filter, you can use one of the following <code>Operator</code> values to 
    #     		define the behavior of the filter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>contains</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>equals</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Notequal</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This 
    #   	is the nextToken from a previously truncated response.</p>
    #   @return [String]
    class ListLinuxSubscriptionInstancesInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instances
    #   <p>An array that contains instance objects.</p>
    #   @return [Array<Types::Instance>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this 
    #   	field isn't empty, there are additional elements that the service hasn't 
    #   	included in this request. Use this token with the next request to retrieve 
    #   	additional objects.</p>
    #   @return [String]
    class ListLinuxSubscriptionInstancesOutput < Struct.new(
      :instances,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # NextToken length limit is half of ddb accepted limit.
    # Increase this limit if parameters in request increases.
    # @!attribute filters
    #   <p>An array of structures that you can use to filter the results to those that match one or
    #         more sets of key-value pairs that you specify. For example, you can filter by the name of
    #           <code>Subscription</code> with an optional operator to see subscriptions that match,
    #         partially match, or don't match a certain subscription's name.</p>
    #            <p>The valid names for this filter are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Subscription</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The valid Operators for this filter are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>contains</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>equals</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Notequal</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This 
    #   	is the nextToken from a previously truncated response.</p>
    #   @return [String]
    class ListLinuxSubscriptionsInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriptions
    #   <p>An array that contains subscription objects.</p>
    #   @return [Array<Types::Subscription>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this 
    #   	field isn't empty, there are additional elements that the service hasn't 
    #   	included in this request. Use this token with the next request to retrieve 
    #   	additional objects.</p>
    #   @return [String]
    class ListLinuxSubscriptionsOutput < Struct.new(
      :subscriptions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_provider_sources
    #   <p>To filter your results, specify which subscription providers to return 
    #   			in the list.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This 
    #   	is the nextToken from a previously truncated response.</p>
    #   @return [String]
    class ListRegisteredSubscriptionProvidersRequest < Struct.new(
      :subscription_provider_sources,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registered_subscription_providers
    #   <p>The list of BYOL registration resources that fit the criteria 
    #   			you specified in the request.</p>
    #   @return [Array<Types::RegisteredSubscriptionProvider>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this 
    #   	field isn't empty, there are additional elements that the service hasn't 
    #   	included in this request. Use this token with the next request to retrieve 
    #   	additional objects.</p>
    #   @return [String]
    class ListRegisteredSubscriptionProvidersResponse < Struct.new(
      :registered_subscription_providers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list metadata tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The metadata tags for the requested resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_provider_source
    #   <p>The supported Linux subscription provider to register.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret where you've stored your subscription provider's access token. For 
    #   			RHEL subscriptions managed through the Red Hat Subscription Manager (RHSM), the secret contains 
    #   			your Red Hat Offline token.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The metadata tags to assign to your registered Linux subscription provider 
    #   			resource.</p>
    #   @return [Hash<String, String>]
    class RegisterSubscriptionProviderRequest < Struct.new(
      :subscription_provider_source,
      :secret_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_provider_source
    #   <p>The Linux subscription provider that you registered.</p>
    #   @return [String]
    # @!attribute subscription_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the Linux subscription provider resource that you registered.</p>
    #   @return [String]
    # @!attribute subscription_provider_status
    #   <p>Indicates the status of the registration action for the Linux subscription provider 
    #   			that you requested.</p>
    #   @return [String]
    class RegisterSubscriptionProviderResponse < Struct.new(
      :subscription_provider_source,
      :subscription_provider_arn,
      :subscription_provider_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A third-party provider for operating system (OS) platform software and license 
    # 			subscriptions, such as Red Hat. When you register a third-party Linux subscription 
    # 			provider, License Manager can get subscription data from the registered provider.</p>
    # @!attribute subscription_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the Linux subscription provider resource that you registered.</p>
    #   @return [String]
    # @!attribute subscription_provider_source
    #   <p>A supported third-party Linux subscription provider. License Manager currently supports 
    #   			Red Hat subscriptions.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret that stores your registered Linux subscription provider 
    #   			access token. For RHEL account subscriptions, this is the offline token.</p>
    #   @return [String]
    # @!attribute subscription_provider_status
    #   <p>Indicates the status of your registered Linux subscription provider access token 
    #   			from the last time License Manager retrieved subscription data. For RHEL account subscriptions, 
    #   			this is the status of the offline token.</p>
    #   @return [String]
    # @!attribute subscription_provider_status_message
    #   <p>A detailed message that's associated with your BYOL subscription 
    #   			provider token status.</p>
    #   @return [String]
    # @!attribute last_successful_data_retrieval_time
    #   <p>The timestamp from the last time that License Manager accessed third-party subscription data 
    #   			for your account from your registered Linux subscription provider.</p>
    #   @return [String]
    class RegisteredSubscriptionProvider < Struct.new(
      :subscription_provider_arn,
      :subscription_provider_source,
      :secret_arn,
      :subscription_provider_status,
      :subscription_provider_status_message,
      :last_successful_data_retrieval_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to find the requested Amazon Web Services resource.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object which details a discovered Linux subscription.</p>
    # @!attribute name
    #   <p>The name of the subscription.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of subscription. The type can be subscription-included with Amazon EC2, Bring Your Own
    #         Subscription model (BYOS), or from the Amazon Web Services Marketplace. Certain subscriptions may use licensing from the
    #         Amazon Web Services Marketplace as well as OS licensing from Amazon EC2 or BYOS.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>The total amount of running instances using this subscription.</p>
    #   @return [Integer]
    class Subscription < Struct.new(
      :name,
      :type,
      :instance_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services resource to which to add the specified 
    #   			metadata tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The metadata tags to assign to the Amazon Web Services resource. Tags are 
    #   			formatted as key value pairs.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services resource to remove the metadata tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of metadata tag keys to remove from the requested 
    #   			resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute linux_subscriptions_discovery
    #   <p>Describes if the discovery of Linux subscriptions is enabled.</p>
    #   @return [String]
    # @!attribute linux_subscriptions_discovery_settings
    #   <p>The settings defined for Linux subscriptions discovery. The settings include if Organizations
    #         integration has been enabled, and which Regions data will be aggregated from.</p>
    #   @return [Types::LinuxSubscriptionsDiscoverySettings]
    # @!attribute allow_update
    #   <p>Describes if updates are allowed to the service settings for Linux subscriptions. If you
    #         allow updates, you can aggregate Linux subscription data in more than one home Region.</p>
    #   @return [Boolean]
    class UpdateServiceSettingsInput < Struct.new(
      :linux_subscriptions_discovery,
      :linux_subscriptions_discovery_settings,
      :allow_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute linux_subscriptions_discovery
    #   <p>Lists if discovery has been enabled for Linux subscriptions.</p>
    #   @return [String]
    # @!attribute linux_subscriptions_discovery_settings
    #   <p>The settings defined for Linux subscriptions discovery. The settings include if Organizations
    #         integration has been enabled, and which Regions data will be aggregated from.</p>
    #   @return [Types::LinuxSubscriptionsDiscoverySettings]
    # @!attribute status
    #   <p>Indicates the status of Linux subscriptions settings being applied.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message which details the Linux subscriptions service settings current status.</p>
    #   @return [Hash<String, String>]
    # @!attribute home_regions
    #   <p>The Region in which License Manager displays the aggregated data for Linux
    #         subscriptions.</p>
    #   @return [Array<String>]
    class UpdateServiceSettingsOutput < Struct.new(
      :linux_subscriptions_discovery,
      :linux_subscriptions_discovery_settings,
      :status,
      :status_message,
      :home_regions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The provided input is not valid. Try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
