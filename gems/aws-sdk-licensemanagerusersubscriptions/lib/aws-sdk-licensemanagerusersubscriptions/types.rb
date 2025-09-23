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
    # @!attribute [rw] active_directory_settings
    #   The `ActiveDirectorySettings` resource contains details about the
    #   Active Directory, including network access details such as domain
    #   name and IP addresses, and the credential provider for user
    #   administration.
    #   @return [Types::ActiveDirectorySettings]
    #
    # @!attribute [rw] active_directory_type
    #   The type of Active Directory – either a self-managed Active
    #   Directory or an Amazon Web Services Managed Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] is_shared_active_directory
    #   Whether this directory is shared from an Amazon Web Services Managed
    #   Active Directory. The default value is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ActiveDirectoryIdentityProvider AWS API Documentation
    #
    class ActiveDirectoryIdentityProvider < Struct.new(
      :directory_id,
      :active_directory_settings,
      :active_directory_type,
      :is_shared_active_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains network access and credential details that are needed for
    # user administration in the Active Directory.
    #
    # @!attribute [rw] domain_name
    #   The domain name for the Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] domain_ipv_4_list
    #   A list of domain IPv4 addresses that are used for the Active
    #   Directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_credentials_provider
    #   Points to the `CredentialsProvider` resource that contains
    #   information about the credential provider for user administration.
    #   @return [Types::CredentialsProvider]
    #
    # @!attribute [rw] domain_network_settings
    #   The `DomainNetworkSettings` resource contains an array of subnets
    #   that apply for the Active Directory.
    #   @return [Types::DomainNetworkSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ActiveDirectorySettings AWS API Documentation
    #
    class ActiveDirectorySettings < Struct.new(
      :domain_name,
      :domain_ipv_4_list,
      :domain_credentials_provider,
      :domain_network_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] username
    #   The user name from the identity provider.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance that provides the user-based
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   The identity provider for the user.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] domain
    #   The domain name of the Active Directory that contains information
    #   for the user to associate.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that apply for the user association.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/AssociateUserRequest AWS API Documentation
    #
    class AssociateUserRequest < Struct.new(
      :username,
      :instance_id,
      :identity_provider,
      :domain,
      :tags)
      SENSITIVE = [:tags]
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

    # @!attribute [rw] identity_provider_arn
    #   The Amazon Resource Name (ARN) that identifies the
    #   `IdentityProvider` resource that contains details about a registered
    #   identity provider. In the case of Active Directory, that can be a
    #   self-managed Active Directory or an Amazon Web Services Managed
    #   Active Directory that contains user identity details.
    #   @return [String]
    #
    # @!attribute [rw] license_server_settings
    #   The `LicenseServerSettings` resource to create for the endpoint. The
    #   settings include the type of license server and the Secrets Manager
    #   secret that enables administrators to add or remove users associated
    #   with the license server.
    #   @return [Types::LicenseServerSettings]
    #
    # @!attribute [rw] tags
    #   The tags that apply for the license server endpoint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/CreateLicenseServerEndpointRequest AWS API Documentation
    #
    class CreateLicenseServerEndpointRequest < Struct.new(
      :identity_provider_arn,
      :license_server_settings,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_arn
    #   The Amazon Resource Name (ARN) of the identity provider specified in
    #   the request.
    #   @return [String]
    #
    # @!attribute [rw] license_server_endpoint_arn
    #   The ARN of the `LicenseServerEndpoint` resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/CreateLicenseServerEndpointResponse AWS API Documentation
    #
    class CreateLicenseServerEndpointResponse < Struct.new(
      :identity_provider_arn,
      :license_server_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the credential provider for user
    # administration.
    #
    # @note CredentialsProvider is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CredentialsProvider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CredentialsProvider corresponding to the set member.
    #
    # @!attribute [rw] secrets_manager_credentials_provider
    #   Identifies the Secrets Manager secret that contains credentials
    #   needed for user administration in the Active Directory.
    #   @return [Types::SecretsManagerCredentialsProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/CredentialsProvider AWS API Documentation
    #
    class CredentialsProvider < Struct.new(
      :secrets_manager_credentials_provider,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SecretsManagerCredentialsProvider < CredentialsProvider; end
      class Unknown < CredentialsProvider; end
    end

    # @!attribute [rw] license_server_endpoint_arn
    #   The Amazon Resource Name (ARN) that identifies the
    #   `LicenseServerEndpoint` resource to delete.
    #   @return [String]
    #
    # @!attribute [rw] server_type
    #   The type of License Server that the delete request refers to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DeleteLicenseServerEndpointRequest AWS API Documentation
    #
    class DeleteLicenseServerEndpointRequest < Struct.new(
      :license_server_endpoint_arn,
      :server_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_server_endpoint
    #   Shows details from the `LicenseServerEndpoint` resource that was
    #   deleted.
    #   @return [Types::LicenseServerEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DeleteLicenseServerEndpointResponse AWS API Documentation
    #
    class DeleteLicenseServerEndpointResponse < Struct.new(
      :license_server_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   An object that specifies details for the Active Directory identity
    #   provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_arn
    #   The Amazon Resource Name (ARN) that identifies the identity provider
    #   to deregister.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DeregisterIdentityProviderRequest AWS API Documentation
    #
    class DeregisterIdentityProviderRequest < Struct.new(
      :identity_provider,
      :product,
      :identity_provider_arn)
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

    # @!attribute [rw] username
    #   The user name from the Active Directory identity provider for the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance which provides user-based subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the Active Directory identity
    #   provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] instance_user_arn
    #   The Amazon Resource Name (ARN) of the user to disassociate from the
    #   EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain name of the Active Directory that contains information
    #   for the user to disassociate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DisassociateUserRequest AWS API Documentation
    #
    class DisassociateUserRequest < Struct.new(
      :username,
      :instance_id,
      :identity_provider,
      :instance_user_arn,
      :domain)
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

    # Contains network settings for the Active Directory domain.
    #
    # @!attribute [rw] subnets
    #   Contains a list of subnets that apply for the Active Directory
    #   domain.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DomainNetworkSettings AWS API Documentation
    #
    class DomainNetworkSettings < Struct.new(
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter name and value pair that is used to return more specific
    # results from a describe or list operation. You can use filters can be
    # used to match a set of resources by specific criteria, such as tags,
    # attributes, or IDs.
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

    # Refers to an identity provider.
    #
    # @note IdentityProvider is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IdentityProvider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IdentityProvider corresponding to the set member.
    #
    # @!attribute [rw] active_directory_identity_provider
    #   The `ActiveDirectoryIdentityProvider` resource contains settings and
    #   other details about a specific Active Directory identity provider.
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
    # @!attribute [rw] identity_provider
    #   The `IdentityProvider` resource contains information about an
    #   identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] settings
    #   The `Settings` resource contains details about the registered
    #   identity provider’s product related configuration settings, such as
    #   the subnets to provision VPC endpoints.
    #   @return [Types::Settings]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the identity provider.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_arn
    #   The Amazon Resource Name (ARN) of the identity provider.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   The failure message associated with an identity provider.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The AWS Account ID of the owner of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/IdentityProviderSummary AWS API Documentation
    #
    class IdentityProviderSummary < Struct.new(
      :identity_provider,
      :settings,
      :product,
      :status,
      :identity_provider_arn,
      :failure_message,
      :owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an EC2 instance providing user-based subscriptions.
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance, which provides user-based subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an EC2 instance resource.
    #   @return [String]
    #
    # @!attribute [rw] products
    #   A list of provided user-based subscription products.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_status_check_date
    #   The date of the last status check.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The AWS Account ID of the owner of this resource.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   The `IdentityProvider` resource specifies details about the identity
    #   provider.
    #   @return [Types::IdentityProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/InstanceSummary AWS API Documentation
    #
    class InstanceSummary < Struct.new(
      :instance_id,
      :status,
      :products,
      :last_status_check_date,
      :status_message,
      :owner_account_id,
      :identity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes users of an EC2 instance providing user-based subscriptions.
    #
    # @!attribute [rw] username
    #   The user name from the identity provider for the user.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance that provides user-based subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   The `IdentityProvider` resource specifies details about the identity
    #   provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] status
    #   The status of a user associated with an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_user_arn
    #   The Amazon Resource Name (ARN) that identifies the instance user.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for users of an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain name of the Active Directory that contains the user
    #   information for the product subscription.
    #   @return [String]
    #
    # @!attribute [rw] association_date
    #   The date a user was associated with an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] disassociation_date
    #   The date a user was disassociated from an EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/InstanceUserSummary AWS API Documentation
    #
    class InstanceUserSummary < Struct.new(
      :username,
      :instance_id,
      :identity_provider,
      :status,
      :instance_user_arn,
      :status_message,
      :domain,
      :association_date,
      :disassociation_date)
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

    # Information about a Remote Desktop Services (RDS) license server.
    #
    # @!attribute [rw] provisioning_status
    #   The current state of the provisioning process for the RDS license
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The health status of the RDS license server.
    #   @return [String]
    #
    # @!attribute [rw] ipv_4_address
    #   A list of domain IPv4 addresses that are used for the RDS license
    #   server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/LicenseServer AWS API Documentation
    #
    class LicenseServer < Struct.new(
      :provisioning_status,
      :health_status,
      :ipv_4_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a network endpoint for a Remote Desktop
    # Services (RDS) license server.
    #
    # @!attribute [rw] identity_provider_arn
    #   The Amazon Resource Name (ARN) of the identity provider that's
    #   associated with the RDS license server endpoint.
    #   @return [String]
    #
    # @!attribute [rw] server_type
    #   The type of license server.
    #   @return [String]
    #
    # @!attribute [rw] server_endpoint
    #   The `ServerEndpoint` resource contains the network address of the
    #   RDS license server endpoint.
    #   @return [Types::ServerEndpoint]
    #
    # @!attribute [rw] status_message
    #   The message associated with the provisioning status, if there is
    #   one.
    #   @return [String]
    #
    # @!attribute [rw] license_server_endpoint_id
    #   The ID of the license server endpoint.
    #   @return [String]
    #
    # @!attribute [rw] license_server_endpoint_arn
    #   The ARN of the `ServerEndpoint` resource for the RDS license server.
    #   @return [String]
    #
    # @!attribute [rw] license_server_endpoint_provisioning_status
    #   The current state of the provisioning process for the RDS license
    #   server endpoint
    #   @return [String]
    #
    # @!attribute [rw] license_servers
    #   An array of `LicenseServer` resources that represent the license
    #   servers that are accessed through this endpoint.
    #   @return [Array<Types::LicenseServer>]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when License Manager created the license server
    #   endpoint.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/LicenseServerEndpoint AWS API Documentation
    #
    class LicenseServerEndpoint < Struct.new(
      :identity_provider_arn,
      :server_type,
      :server_endpoint,
      :status_message,
      :license_server_endpoint_id,
      :license_server_endpoint_arn,
      :license_server_endpoint_provisioning_status,
      :license_servers,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings to configure your license server.
    #
    # @!attribute [rw] server_type
    #   The type of license server.
    #   @return [String]
    #
    # @!attribute [rw] server_settings
    #   The `ServerSettings` resource contains the settings for your server.
    #   @return [Types::ServerSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/LicenseServerSettings AWS API Documentation
    #
    class LicenseServerSettings < Struct.new(
      :server_type,
      :server_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return from a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   You can use the following filters to streamline results:
    #
    #   * Product
    #
    #   * DirectoryId
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListIdentityProvidersRequest AWS API Documentation
    #
    class ListIdentityProvidersRequest < Struct.new(
      :max_results,
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_summaries
    #   An array of `IdentityProviderSummary` resources that contain details
    #   about the Active Directory identity providers that meet the request
    #   criteria.
    #   @return [Array<Types::IdentityProviderSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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

    # @!attribute [rw] max_results
    #   The maximum number of results to return from a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   You can use the following filters to streamline results:
    #
    #   * Status
    #
    #   * InstanceId
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListInstancesRequest AWS API Documentation
    #
    class ListInstancesRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_summaries
    #   An array of `InstanceSummary` resources that contain details about
    #   the instances that provide user-based subscriptions and also meet
    #   the request criteria.
    #   @return [Array<Types::InstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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

    # @!attribute [rw] max_results
    #   The maximum number of results to return from a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   You can use the following filters to streamline results:
    #
    #   * IdentityProviderArn
    #
    #   ^
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListLicenseServerEndpointsRequest AWS API Documentation
    #
    class ListLicenseServerEndpointsRequest < Struct.new(
      :max_results,
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_server_endpoints
    #   An array of `LicenseServerEndpoint` resources that contain detailed
    #   information about the RDS License Servers that meet the request
    #   criteria.
    #   @return [Array<Types::LicenseServerEndpoint>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListLicenseServerEndpointsResponse AWS API Documentation
    #
    class ListLicenseServerEndpointsResponse < Struct.new(
      :license_server_endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   You can use the following filters to streamline results:
    #
    #   * Status
    #
    #   * Username
    #
    #   * Domain
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListProductSubscriptionsRequest AWS API Documentation
    #
    class ListProductSubscriptionsRequest < Struct.new(
      :product,
      :identity_provider,
      :max_results,
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_user_summaries
    #   Metadata that describes the list product subscriptions operation.
    #   @return [Array<Types::ProductUserSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListProductSubscriptionsResponse AWS API Documentation
    #
    class ListProductSubscriptionsResponse < Struct.new(
      :product_user_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want
    #   to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance, which provides user-based subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   You can use the following filters to streamline results:
    #
    #   * Status
    #
    #   * Username
    #
    #   * Domain
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListUserAssociationsRequest AWS API Documentation
    #
    class ListUserAssociationsRequest < Struct.new(
      :instance_id,
      :identity_provider,
      :max_results,
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_user_summaries
    #   Metadata that describes the list user association operation.
    #   @return [Array<Types::InstanceUserSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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

    # A summary of the user-based subscription products for a specific user.
    #
    # @!attribute [rw] username
    #   The user name from the identity provider for this product user.
    #   @return [String]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] status
    #   The status of a product for this user.
    #   @return [String]
    #
    # @!attribute [rw] product_user_arn
    #   The Amazon Resource Name (ARN) for this product user.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for a product for this user.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain name of the Active Directory that contains the user
    #   information for the product subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscription_start_date
    #   The start date of a subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscription_end_date
    #   The end date of a subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ProductUserSummary AWS API Documentation
    #
    class ProductUserSummary < Struct.new(
      :username,
      :product,
      :identity_provider,
      :status,
      :product_user_arn,
      :status_message,
      :domain,
      :subscription_start_date,
      :subscription_end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Server settings that are specific to a Remote Desktop Services (RDS)
    # license server.
    #
    # @!attribute [rw] rds_sal_credentials_provider
    #   The `CredentialsProvider` resource contains a reference to the
    #   credentials provider that's used for RDS license server user
    #   administration.
    #   @return [Types::CredentialsProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/RdsSalSettings AWS API Documentation
    #
    class RdsSalSettings < Struct.new(
      :rds_sal_credentials_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider to
    #   register.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The registered identity provider’s product related configuration
    #   settings such as the subnets to provision VPC endpoints.
    #   @return [Types::Settings]
    #
    # @!attribute [rw] tags
    #   The tags that apply to the identity provider's registration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/RegisterIdentityProviderRequest AWS API Documentation
    #
    class RegisterIdentityProviderRequest < Struct.new(
      :identity_provider,
      :product,
      :settings,
      :tags)
      SENSITIVE = [:tags]
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

    # Contains a credentials secret that's stored in Secrets Manager.
    #
    # @!attribute [rw] secret_id
    #   The ID of the Secrets Manager secret that contains credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/SecretsManagerCredentialsProvider AWS API Documentation
    #
    class SecretsManagerCredentialsProvider < Struct.new(
      :secret_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A network endpoint through which you can access one or more servers.
    #
    # @!attribute [rw] endpoint
    #   The network address of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ServerEndpoint AWS API Documentation
    #
    class ServerEndpoint < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains settings for a specific server.
    #
    # @note ServerSettings is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] rds_sal_settings
    #   The `RdsSalSettings` resource contains settings to configure a
    #   specific Remote Desktop Services (RDS) license server.
    #   @return [Types::RdsSalSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ServerSettings AWS API Documentation
    #
    class ServerSettings < Struct.new(
      :rds_sal_settings,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RdsSalSettings < ServerSettings; end
      class Unknown < ServerSettings; end
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
    # @!attribute [rw] subnets
    #   The subnets defined for the registered identity provider.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_id
    #   A security group ID that allows inbound TCP port 1688 communication
    #   between resources in your VPC and the VPC endpoint for activation
    #   servers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/Settings AWS API Documentation
    #
    class Settings < Struct.new(
      :subnets,
      :security_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] username
    #   The user name from the identity provider of the user.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain name of the Active Directory that contains the user for
    #   whom to start the product subscription.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that apply to the product subscription.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/StartProductSubscriptionRequest AWS API Documentation
    #
    class StartProductSubscriptionRequest < Struct.new(
      :username,
      :identity_provider,
      :product,
      :domain,
      :tags)
      SENSITIVE = [:tags]
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

    # @!attribute [rw] username
    #   The user name from the identity provider for the user.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   An object that specifies details for the identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #   @return [String]
    #
    # @!attribute [rw] product_user_arn
    #   The Amazon Resource Name (ARN) of the product user.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain name of the Active Directory that contains the user for
    #   whom to stop the product subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/StopProductSubscriptionRequest AWS API Documentation
    #
    class StopProductSubscriptionRequest < Struct.new(
      :username,
      :identity_provider,
      :product,
      :product_user_arn,
      :domain)
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identity_provider
    #   Refers to an identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @!attribute [rw] product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_arn
    #   The Amazon Resource Name (ARN) of the identity provider to update.
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
      :identity_provider_arn,
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

