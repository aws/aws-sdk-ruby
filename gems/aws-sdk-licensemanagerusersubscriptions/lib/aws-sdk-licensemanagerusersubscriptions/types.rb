# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LicenseManagerUserSubscriptions
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Active Directory identity provider.
    #
    # @!attribute [rw] directory_id
    #   The directory ID for an Active Directory identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ActiveDirectoryIdentityProvider AWS API Documentation
    #
    class ActiveDirectoryIdentityProvider < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The domain name of the user.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   The identity provider of the user.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance, which provides user-based subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name from the identity provider for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/AssociateUserRequest AWS API Documentation
    #
    class AssociateUserRequest < Struct.new(
      :domain,
      :identity_provider,
      :instance_id,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_user_summary
    #   Metadata that describes the associate user operation.
    #   @return [Types::InstanceUserSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/AssociateUserResponse AWS API Documentation
    #
    class AssociateUserResponse < Struct.new(
      :instance_user_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request couldn't be completed because it conflicted with the
    # current state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DeregisterIdentityProviderRequest AWS API Documentation
    #
    class DeregisterIdentityProviderRequest < Struct.new(
      :identity_provider,
      :product)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_summary
    #   Metadata that describes the results of an identity provider
    #   operation.
    #   @return [Types::IdentityProviderSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DeregisterIdentityProviderResponse AWS API Documentation
    #
    class DeregisterIdentityProviderResponse < Struct.new(
      :identity_provider_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The domain name of the user.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance, which provides user-based subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name from the identity provider for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DisassociateUserRequest AWS API Documentation
    #
    class DisassociateUserRequest < Struct.new(
      :domain,
      :identity_provider,
      :instance_id,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_user_summary
    #   Metadata that describes the associate user operation.
    #   @return [Types::InstanceUserSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DisassociateUserResponse AWS API Documentation
    #
    class DisassociateUserResponse < Struct.new(
      :instance_user_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter name and value pair that is used to return more specific
    # results from a describe operation. Filters can be used to match a set
    # of resources by specific criteria, such as tags, attributes, or IDs.
    #
    # @!attribute [rw] attribute
    #   The name of an attribute to use as a filter.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The type of search (For example, eq, geq, leq)
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :attribute,
      :operation,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an identity provider.
    #
    # @note IdentityProvider is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IdentityProvider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IdentityProvider corresponding to the set member.
    #
    # @!attribute [rw] active_directory_identity_provider
    #   An object that details an Active Directory identity provider.
    #   @return [Types::ActiveDirectoryIdentityProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/IdentityProvider AWS API Documentation
    #
    class IdentityProvider < Struct.new(
      :active_directory_identity_provider,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ActiveDirectoryIdentityProvider < IdentityProvider; end
      class Unknown < IdentityProvider; end
    end

    # Describes an identity provider.
    #
    # @!attribute [rw] failure_message
    #   The failure message associated with an identity provider.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   An object that details the registered identity provider’s product
    #   related configuration settings such as the subnets to provision VPC
    #   endpoints.
    #   @return [Types::Settings]
    #
    # @!attribute [rw] status
    #   The status of an identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/IdentityProviderSummary AWS API Documentation
    #
    class IdentityProviderSummary < Struct.new(
      :failure_message,
      :identity_provider,
      :product,
      :settings,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an EC2 instance providing user-based subscriptions.
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance, which provides user-based subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] last_status_check_date
    #   The date of the last status check.
    #   @return [String]
    #
    # @!attribute [rw] products
    #   A list of provided user-based subscription products.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of an EC2 instance resource.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for an EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/InstanceSummary AWS API Documentation
    #
    class InstanceSummary < Struct.new(
      :instance_id,
      :last_status_check_date,
      :products,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes users of an EC2 instance providing user-based subscriptions.
    #
    # @!attribute [rw] association_date
    #   The date a user was associated with an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] disassociation_date
    #   The date a user was disassociated from an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain name of the user.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance, which provides user-based subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a user associated with an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for users of an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name from the identity provider for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/InstanceUserSummary AWS API Documentation
    #
    class InstanceUserSummary < Struct.new(
      :association_date,
      :disassociation_date,
      :domain,
      :identity_provider,
      :instance_id,
      :status,
      :status_message,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception occurred with the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListIdentityProvidersRequest AWS API Documentation
    #
    class ListIdentityProvidersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_summaries
    #   Metadata that describes the list identity providers operation.
    #   @return [Array<Types::IdentityProviderSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListIdentityProvidersResponse AWS API Documentation
    #
    class ListIdentityProvidersResponse < Struct.new(
      :identity_provider_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   An array of structures that you can use to filter the results to
    #   those that match one or more sets of key-value pairs that you
    #   specify.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListInstancesRequest AWS API Documentation
    #
    class ListInstancesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_summaries
    #   Metadata that describes the list instances operation.
    #   @return [Array<Types::InstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListInstancesResponse AWS API Documentation
    #
    class ListInstancesResponse < Struct.new(
      :instance_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   An array of structures that you can use to filter the results to
    #   those that match one or more sets of key-value pairs that you
    #   specify.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListProductSubscriptionsRequest AWS API Documentation
    #
    class ListProductSubscriptionsRequest < Struct.new(
      :filters,
      :identity_provider,
      :max_results,
      :next_token,
      :product)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] product_user_summaries
    #   Metadata that describes the list product subscriptions operation.
    #   @return [Array<Types::ProductUserSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListProductSubscriptionsResponse AWS API Documentation
    #
    class ListProductSubscriptionsResponse < Struct.new(
      :next_token,
      :product_user_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   An array of structures that you can use to filter the results to
    #   those that match one or more sets of key-value pairs that you
    #   specify.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance, which provides user-based subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListUserAssociationsRequest AWS API Documentation
    #
    class ListUserAssociationsRequest < Struct.new(
      :filters,
      :identity_provider,
      :instance_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_user_summaries
    #   Metadata that describes the list user association operation.
    #   @return [Array<Types::InstanceUserSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListUserAssociationsResponse AWS API Documentation
    #
    class ListUserAssociationsResponse < Struct.new(
      :instance_user_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the user-based subscription products for a user.
    #
    # @!attribute [rw] domain
    #   The domain name of the user.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a product for a user.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for a product for a user.
    #   @return [String]
    #
    # @!attribute [rw] subscription_end_date
    #   The end date of a subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscription_start_date
    #   The start date of a subscription.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name from the identity provider of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ProductUserSummary AWS API Documentation
    #
    class ProductUserSummary < Struct.new(
      :domain,
      :identity_provider,
      :product,
      :status,
      :status_message,
      :subscription_end_date,
      :subscription_start_date,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The registered identity provider’s product related configuration
    #   settings such as the subnets to provision VPC endpoints.
    #   @return [Types::Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/RegisterIdentityProviderRequest AWS API Documentation
    #
    class RegisterIdentityProviderRequest < Struct.new(
      :identity_provider,
      :product,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_summary
    #   Metadata that describes the results of an identity provider
    #   operation.
    #   @return [Types::IdentityProviderSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/RegisterIdentityProviderResponse AWS API Documentation
    #
    class RegisterIdentityProviderResponse < Struct.new(
      :identity_provider_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource couldn't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because a service quota is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The registered identity provider’s product related configuration
    # settings such as the subnets to provision VPC endpoints, and the
    # security group ID that is associated with the VPC endpoints. The
    # security group should permit inbound TCP port 1688 communication from
    # resources in the VPC.
    #
    # @!attribute [rw] security_group_id
    #   A security group ID that allows inbound TCP port 1688 communication
    #   between resources in your VPC and the VPC endpoint for activation
    #   servers.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The subnets defined for the registered identity provider.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/Settings AWS API Documentation
    #
    class Settings < Struct.new(
      :security_group_id,
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The domain name of the user.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name from the identity provider of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/StartProductSubscriptionRequest AWS API Documentation
    #
    class StartProductSubscriptionRequest < Struct.new(
      :domain,
      :identity_provider,
      :product,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_user_summary
    #   Metadata that describes the start product subscription operation.
    #   @return [Types::ProductUserSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/StartProductSubscriptionResponse AWS API Documentation
    #
    class StartProductSubscriptionResponse < Struct.new(
      :product_user_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The domain name of the user.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name from the identity provider for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/StopProductSubscriptionRequest AWS API Documentation
    #
    class StopProductSubscriptionRequest < Struct.new(
      :domain,
      :identity_provider,
      :product,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_user_summary
    #   Metadata that describes the start product subscription operation.
    #   @return [Types::ProductUserSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/StopProductSubscriptionResponse AWS API Documentation
    #
    class StopProductSubscriptionResponse < Struct.new(
      :product_user_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because of request throttling. Retry the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   Details about an identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @!attribute [rw] update_settings
    #   Updates the registered identity provider’s product related
    #   configuration settings. You can update any combination of settings
    #   in a single operation such as the:
    #
    #   * Subnets which you want to add to provision VPC endpoints.
    #
    #   * Subnets which you want to remove the VPC endpoints from.
    #
    #   * Security group ID which permits traffic to the VPC endpoints.
    #   @return [Types::UpdateSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/UpdateIdentityProviderSettingsRequest AWS API Documentation
    #
    class UpdateIdentityProviderSettingsRequest < Struct.new(
      :identity_provider,
      :product,
      :update_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_summary
    #   Describes an identity provider.
    #   @return [Types::IdentityProviderSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/UpdateIdentityProviderSettingsResponse AWS API Documentation
    #
    class UpdateIdentityProviderSettingsResponse < Struct.new(
      :identity_provider_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the registered identity provider’s product related
    # configuration settings such as the subnets to provision VPC endpoints.
    #
    # @!attribute [rw] add_subnets
    #   The ID of one or more subnets in which License Manager will create a
    #   VPC endpoint for products that require connectivity to activation
    #   servers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] remove_subnets
    #   The ID of one or more subnets to remove.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_id
    #   A security group ID that allows inbound TCP port 1688 communication
    #   between resources in your VPC and the VPC endpoints for activation
    #   servers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/UpdateSettings AWS API Documentation
    #
    class UpdateSettings < Struct.new(
      :add_subnets,
      :remove_subnets,
      :security_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
