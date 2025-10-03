# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManagerUserSubscriptions
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an Active Directory identity provider.</p>
    # @!attribute directory_id
    #   <p>The directory ID for an Active Directory identity provider.</p>
    #   @return [String]
    # @!attribute active_directory_settings
    #   <p>The <code>ActiveDirectorySettings</code> resource contains details about the Active Directory, including network access details such as domain name and IP addresses, and the credential provider for user administration.</p>
    #   @return [Types::ActiveDirectorySettings]
    # @!attribute active_directory_type
    #   <p>The type of Active Directory – either a self-managed Active Directory or an Amazon Web Services Managed Active Directory.</p>
    #   @return [String]
    # @!attribute is_shared_active_directory
    #   <p>Whether this directory is shared from an Amazon Web Services Managed Active Directory. The default value is false.</p>
    #   @return [Boolean]
    class ActiveDirectoryIdentityProvider < Struct.new(
      :directory_id,
      :active_directory_settings,
      :active_directory_type,
      :is_shared_active_directory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains network access and credential details that are needed for user administration in the Active Directory.</p>
    # @!attribute domain_name
    #   <p>The domain name for the Active Directory.</p>
    #   @return [String]
    # @!attribute domain_ipv4_list
    #   <p>A list of domain IPv4 addresses that are used for the Active Directory.</p>
    #   @return [Array<String>]
    # @!attribute domain_credentials_provider
    #   <p>Points to the <code>CredentialsProvider</code> resource that contains information about the credential provider for user administration.</p>
    #   @return [Types::CredentialsProvider]
    # @!attribute domain_network_settings
    #   <p>The <code>DomainNetworkSettings</code> resource contains an array of subnets that apply for the Active Directory.</p>
    #   @return [Types::DomainNetworkSettings]
    class ActiveDirectorySettings < Struct.new(
      :domain_name,
      :domain_ipv4_list,
      :domain_credentials_provider,
      :domain_network_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute username
    #   <p>The user name from the identity provider.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the EC2 instance that provides the user-based subscription.</p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>The identity provider for the user.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute domain
    #   <p>The domain name of the Active Directory that contains information for the user to associate.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that apply for the user association.</p>
    #   @return [Hash<String, String>]
    class AssociateUserRequest < Struct.new(
      :username,
      :instance_id,
      :identity_provider,
      :domain,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_user_summary
    #   <p>Metadata that describes the associate user operation.</p>
    #   @return [Types::InstanceUserSummary]
    class AssociateUserResponse < Struct.new(
      :instance_user_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request couldn't be completed because it conflicted with the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the <code>IdentityProvider</code> resource that contains details about a registered identity provider. In the case of Active Directory, that can be a self-managed Active Directory or an Amazon Web Services Managed Active Directory that contains user identity details.</p>
    #   @return [String]
    # @!attribute license_server_settings
    #   <p>The <code>LicenseServerSettings</code> resource to create for the endpoint. The settings include the type of license server and the Secrets Manager secret that enables administrators to add or remove users associated with the license server.</p>
    #   @return [Types::LicenseServerSettings]
    # @!attribute tags
    #   <p>The tags that apply for the license server endpoint.</p>
    #   @return [Hash<String, String>]
    class CreateLicenseServerEndpointRequest < Struct.new(
      :identity_provider_arn,
      :license_server_settings,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the identity provider specified in the request.</p>
    #   @return [String]
    # @!attribute license_server_endpoint_arn
    #   <p>The ARN of the <code>LicenseServerEndpoint</code> resource.</p>
    #   @return [String]
    class CreateLicenseServerEndpointResponse < Struct.new(
      :identity_provider_arn,
      :license_server_endpoint_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the credential provider for user administration.</p>
    # @!attribute secrets_manager_credentials_provider
    #   <p>Identifies the Secrets Manager secret that contains credentials needed for user administration in the Active Directory.</p>
    #   @return [Types::SecretsManagerCredentialsProvider]
    class CredentialsProvider < Struct.new(
      :secrets_manager_credentials_provider,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SecretsManagerCredentialsProvider < CredentialsProvider; end
      class Unknown < CredentialsProvider; end
    end

    # @!attribute license_server_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the <code>LicenseServerEndpoint</code> resource to delete.</p>
    #   @return [String]
    # @!attribute server_type
    #   <p>The type of License Server that the delete request refers to.</p>
    #   @return [String]
    class DeleteLicenseServerEndpointRequest < Struct.new(
      :license_server_endpoint_arn,
      :server_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute license_server_endpoint
    #   <p>Shows details from the <code>LicenseServerEndpoint</code> resource that was deleted.</p>
    #   @return [Types::LicenseServerEndpoint]
    class DeleteLicenseServerEndpointResponse < Struct.new(
      :license_server_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider
    #   <p>An object that specifies details for the Active Directory identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    #   @return [String]
    # @!attribute identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the identity provider to deregister.</p>
    #   @return [String]
    class DeregisterIdentityProviderRequest < Struct.new(
      :identity_provider,
      :product,
      :identity_provider_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_summary
    #   <p>Metadata that describes the results of an identity provider operation.</p>
    #   @return [Types::IdentityProviderSummary]
    class DeregisterIdentityProviderResponse < Struct.new(
      :identity_provider_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute username
    #   <p>The user name from the Active Directory identity provider for the user.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the EC2 instance which provides user-based subscriptions.</p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>An object that specifies details for the Active Directory identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute instance_user_arn
    #   <p>The Amazon Resource Name (ARN) of the user to disassociate from the EC2 instance.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain name of the Active Directory that contains information for the user to disassociate.</p>
    #   @return [String]
    class DisassociateUserRequest < Struct.new(
      :username,
      :instance_id,
      :identity_provider,
      :instance_user_arn,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_user_summary
    #   <p>Metadata that describes the associate user operation.</p>
    #   @return [Types::InstanceUserSummary]
    class DisassociateUserResponse < Struct.new(
      :instance_user_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains network settings for the Active Directory domain.</p>
    # @!attribute subnets
    #   <p>Contains a list of subnets that apply for the Active Directory domain.</p>
    #   @return [Array<String>]
    class DomainNetworkSettings < Struct.new(
      :subnets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter name and value pair that is used to return more specific results from a describe or list operation. You can use filters can be used to match a set of resources by specific criteria, such as tags, attributes, or IDs.</p>
    # @!attribute attribute
    #   <p>The name of an attribute to use as a filter.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The type of search (For example, eq, geq, leq)</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the filter.</p>
    #   @return [String]
    class Filter < Struct.new(
      :attribute,
      :operation,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Refers to an identity provider.</p>
    # @!attribute active_directory_identity_provider
    #   <p>The <code>ActiveDirectoryIdentityProvider</code> resource contains settings and other details about a specific Active Directory identity provider.</p>
    #   @return [Types::ActiveDirectoryIdentityProvider]
    class IdentityProvider < Struct.new(
      :active_directory_identity_provider,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ActiveDirectoryIdentityProvider < IdentityProvider; end
      class Unknown < IdentityProvider; end
    end

    # <p>Describes an identity provider.</p>
    # @!attribute identity_provider
    #   <p>The <code>IdentityProvider</code> resource contains information about an identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute settings
    #   <p>The <code>Settings</code> resource contains details about the registered identity provider’s product related configuration settings, such as the subnets to provision VPC endpoints.</p>
    #   @return [Types::Settings]
    # @!attribute product
    #   <p>The name of the user-based subscription product.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the identity provider.</p>
    #   @return [String]
    # @!attribute identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the identity provider.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>The failure message associated with an identity provider.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The AWS Account ID of the owner of this resource.</p>
    #   @return [String]
    class IdentityProviderSummary < Struct.new(
      :identity_provider,
      :settings,
      :product,
      :status,
      :identity_provider_arn,
      :failure_message,
      :owner_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an EC2 instance providing user-based subscriptions.</p>
    # @!attribute instance_id
    #   <p>The ID of the EC2 instance, which provides user-based subscriptions.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of an EC2 instance resource.</p>
    #   @return [String]
    # @!attribute products
    #   <p>A list of provided user-based subscription products.</p>
    #   @return [Array<String>]
    # @!attribute last_status_check_date
    #   <p>The date of the last status check.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for an EC2 instance.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The AWS Account ID of the owner of this resource.</p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>The <code>IdentityProvider</code> resource specifies details about the identity provider.</p>
    #   @return [Types::IdentityProvider]
    class InstanceSummary < Struct.new(
      :instance_id,
      :status,
      :products,
      :last_status_check_date,
      :status_message,
      :owner_account_id,
      :identity_provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes users of an EC2 instance providing user-based subscriptions.</p>
    # @!attribute username
    #   <p>The user name from the identity provider for the user.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the EC2 instance that provides user-based subscriptions.</p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>The <code>IdentityProvider</code> resource specifies details about the identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute status
    #   <p>The status of a user associated with an EC2 instance.</p>
    #   @return [String]
    # @!attribute instance_user_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the instance user.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for users of an EC2 instance.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain name of the Active Directory that contains the user information for the product subscription.</p>
    #   @return [String]
    # @!attribute association_date
    #   <p>The date a user was associated with an EC2 instance.</p>
    #   @return [String]
    # @!attribute disassociation_date
    #   <p>The date a user was disassociated from an EC2 instance.</p>
    #   @return [String]
    class InstanceUserSummary < Struct.new(
      :username,
      :instance_id,
      :identity_provider,
      :status,
      :instance_user_arn,
      :status_message,
      :domain,
      :association_date,
      :disassociation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception occurred with the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Remote Desktop Services (RDS) license server.</p>
    # @!attribute provisioning_status
    #   <p>The current state of the provisioning process for the RDS license server.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p>The health status of the RDS license server.</p>
    #   @return [String]
    # @!attribute ipv4_address
    #   <p>A list of domain IPv4 addresses that are used for the RDS license server.</p>
    #   @return [String]
    class LicenseServer < Struct.new(
      :provisioning_status,
      :health_status,
      :ipv4_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a network endpoint for a Remote Desktop Services (RDS) license server.</p>
    # @!attribute identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the identity provider that's associated with the RDS license server endpoint.</p>
    #   @return [String]
    # @!attribute server_type
    #   <p>The type of license server.</p>
    #   @return [String]
    # @!attribute server_endpoint
    #   <p>The <code>ServerEndpoint</code> resource contains the network address of the RDS license server endpoint.</p>
    #   @return [Types::ServerEndpoint]
    # @!attribute status_message
    #   <p>The message associated with the provisioning status, if there is one.</p>
    #   @return [String]
    # @!attribute license_server_endpoint_id
    #   <p>The ID of the license server endpoint.</p>
    #   @return [String]
    # @!attribute license_server_endpoint_arn
    #   <p>The ARN of the <code>ServerEndpoint</code> resource for the RDS license server.</p>
    #   @return [String]
    # @!attribute license_server_endpoint_provisioning_status
    #   <p>The current state of the provisioning process for the RDS license server endpoint</p>
    #   @return [String]
    # @!attribute license_servers
    #   <p>An array of <code>LicenseServer</code> resources that represent the license servers that are accessed through this endpoint.</p>
    #   @return [Array<Types::LicenseServer>]
    # @!attribute creation_time
    #   <p>The timestamp when License Manager created the license server endpoint.</p>
    #   @return [Time]
    class LicenseServerEndpoint < Struct.new(
      :identity_provider_arn,
      :server_type,
      :server_endpoint,
      :status_message,
      :license_server_endpoint_id,
      :license_server_endpoint_arn,
      :license_server_endpoint_provisioning_status,
      :license_servers,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings to configure your license server.</p>
    # @!attribute server_type
    #   <p>The type of license server.</p>
    #   @return [String]
    # @!attribute server_settings
    #   <p>The <code>ServerSettings</code> resource contains the settings for your server.</p>
    #   @return [Types::ServerSettings]
    class LicenseServerSettings < Struct.new(
      :server_type,
      :server_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return from a single request.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>Product</p> </li> <li> <p>DirectoryId</p> </li> </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    #   @return [String]
    class ListIdentityProvidersRequest < Struct.new(
      :max_results,
      :filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_summaries
    #   <p>An array of <code>IdentityProviderSummary</code> resources that contain details about the Active Directory identity providers that meet the request criteria.</p>
    #   @return [Array<Types::IdentityProviderSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, there are additional elements that the service hasn't included in this request. Use this token with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListIdentityProvidersResponse < Struct.new(
      :identity_provider_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return from a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>Status</p> </li> <li> <p>InstanceId</p> </li> </ul>
    #   @return [Array<Types::Filter>]
    class ListInstancesRequest < Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_summaries
    #   <p>An array of <code>InstanceSummary</code> resources that contain details about the instances that provide user-based subscriptions and also meet the request criteria.</p>
    #   @return [Array<Types::InstanceSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, there are additional elements that the service hasn't included in this request. Use this token with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListInstancesResponse < Struct.new(
      :instance_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return from a single request.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>IdentityProviderArn</p> </li> </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    #   @return [String]
    class ListLicenseServerEndpointsRequest < Struct.new(
      :max_results,
      :filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute license_server_endpoints
    #   <p>An array of <code>LicenseServerEndpoint</code> resources that contain detailed information about the RDS License Servers that meet the request criteria.</p>
    #   @return [Array<Types::LicenseServerEndpoint>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, there are additional elements that the service hasn't included in this request. Use this token with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListLicenseServerEndpointsResponse < Struct.new(
      :license_server_endpoints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>An object that specifies details for the identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute max_results
    #   <p>The maximum number of results to return from a single request.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>Status</p> </li> <li> <p>Username</p> </li> <li> <p>Domain</p> </li> </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    #   @return [String]
    class ListProductSubscriptionsRequest < Struct.new(
      :product,
      :identity_provider,
      :max_results,
      :filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_user_summaries
    #   <p>Metadata that describes the list product subscriptions operation.</p>
    #   @return [Array<Types::ProductUserSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, there are additional elements that the service hasn't included in this request. Use this token with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListProductSubscriptionsResponse < Struct.new(
      :product_user_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the specified resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The ID of the EC2 instance, which provides user-based subscriptions.</p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>An object that specifies details for the identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute max_results
    #   <p>The maximum number of results to return from a single request.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>Status</p> </li> <li> <p>Username</p> </li> <li> <p>Domain</p> </li> </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    #   @return [String]
    class ListUserAssociationsRequest < Struct.new(
      :instance_id,
      :identity_provider,
      :max_results,
      :filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_user_summaries
    #   <p>Metadata that describes the list user association operation.</p>
    #   @return [Array<Types::InstanceUserSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, there are additional elements that the service hasn't included in this request. Use this token with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListUserAssociationsResponse < Struct.new(
      :instance_user_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the user-based subscription products for a specific user.</p>
    # @!attribute username
    #   <p>The user name from the identity provider for this product user.</p>
    #   @return [String]
    # @!attribute product
    #   <p>The name of the user-based subscription product.</p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>An object that specifies details for the identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute status
    #   <p>The status of a product for this user.</p>
    #   @return [String]
    # @!attribute product_user_arn
    #   <p>The Amazon Resource Name (ARN) for this product user.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for a product for this user.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain name of the Active Directory that contains the user information for the product subscription.</p>
    #   @return [String]
    # @!attribute subscription_start_date
    #   <p>The start date of a subscription.</p>
    #   @return [String]
    # @!attribute subscription_end_date
    #   <p>The end date of a subscription.</p>
    #   @return [String]
    class ProductUserSummary < Struct.new(
      :username,
      :product,
      :identity_provider,
      :status,
      :product_user_arn,
      :status_message,
      :domain,
      :subscription_start_date,
      :subscription_end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Server settings that are specific to a Remote Desktop Services (RDS) license server.</p>
    # @!attribute rds_sal_credentials_provider
    #   <p>The <code>CredentialsProvider</code> resource contains a reference to the credentials provider that's used for RDS license server user administration.</p>
    #   @return [Types::CredentialsProvider]
    class RdsSalSettings < Struct.new(
      :rds_sal_credentials_provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider
    #   <p>An object that specifies details for the identity provider to register.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    #   @return [String]
    # @!attribute settings
    #   <p>The registered identity provider’s product related configuration settings such as the subnets to provision VPC endpoints.</p>
    #   @return [Types::Settings]
    # @!attribute tags
    #   <p>The tags that apply to the identity provider's registration.</p>
    #   @return [Hash<String, String>]
    class RegisterIdentityProviderRequest < Struct.new(
      :identity_provider,
      :product,
      :settings,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_summary
    #   <p>Metadata that describes the results of an identity provider operation.</p>
    #   @return [Types::IdentityProviderSummary]
    class RegisterIdentityProviderResponse < Struct.new(
      :identity_provider_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource couldn't be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a credentials secret that's stored in Secrets Manager.</p>
    # @!attribute secret_id
    #   <p>The ID of the Secrets Manager secret that contains credentials.</p>
    #   @return [String]
    class SecretsManagerCredentialsProvider < Struct.new(
      :secret_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A network endpoint through which you can access one or more servers.</p>
    # @!attribute endpoint
    #   <p>The network address of the endpoint.</p>
    #   @return [String]
    class ServerEndpoint < Struct.new(
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains settings for a specific server.</p>
    # @!attribute rds_sal_settings
    #   <p>The <code>RdsSalSettings</code> resource contains settings to configure a specific Remote Desktop Services (RDS) license server.</p>
    #   @return [Types::RdsSalSettings]
    class ServerSettings < Struct.new(
      :rds_sal_settings,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RdsSalSettings < ServerSettings; end
      class Unknown < ServerSettings; end
    end

    # <p>The request failed because a service quota is exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The registered identity provider’s product related configuration settings such as the subnets to provision VPC endpoints, and the security group ID that is associated with the VPC endpoints. The security group should permit inbound TCP port 1688 communication from resources in the VPC.</p>
    # @!attribute subnets
    #   <p>The subnets defined for the registered identity provider.</p>
    #   @return [Array<String>]
    # @!attribute security_group_id
    #   <p>A security group ID that allows inbound TCP port 1688 communication between resources in your VPC and the VPC endpoint for activation servers.</p>
    #   @return [String]
    class Settings < Struct.new(
      :subnets,
      :security_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute username
    #   <p>The user name from the identity provider of the user.</p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>An object that specifies details for the identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain name of the Active Directory that contains the user for whom to start the product subscription.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that apply to the product subscription.</p>
    #   @return [Hash<String, String>]
    class StartProductSubscriptionRequest < Struct.new(
      :username,
      :identity_provider,
      :product,
      :domain,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_user_summary
    #   <p>Metadata that describes the start product subscription operation.</p>
    #   @return [Types::ProductUserSummary]
    class StartProductSubscriptionResponse < Struct.new(
      :product_user_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute username
    #   <p>The user name from the identity provider for the user.</p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>An object that specifies details for the identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    #   @return [String]
    # @!attribute product_user_arn
    #   <p>The Amazon Resource Name (ARN) of the product user.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain name of the Active Directory that contains the user for whom to stop the product subscription.</p>
    #   @return [String]
    class StopProductSubscriptionRequest < Struct.new(
      :username,
      :identity_provider,
      :product,
      :product_user_arn,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_user_summary
    #   <p>Metadata that describes the start product subscription operation.</p>
    #   @return [Types::ProductUserSummary]
    class StopProductSubscriptionResponse < Struct.new(
      :product_user_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the specified resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because of request throttling. Retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider
    #   <p>Refers to an identity provider.</p>
    #   @return [Types::IdentityProvider]
    # @!attribute product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    #   @return [String]
    # @!attribute identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the identity provider to update.</p>
    #   @return [String]
    # @!attribute update_settings
    #   <p>Updates the registered identity provider’s product related configuration settings. You can update any combination of settings in a single operation such as the:</p> <ul> <li> <p>Subnets which you want to add to provision VPC endpoints.</p> </li> <li> <p>Subnets which you want to remove the VPC endpoints from.</p> </li> <li> <p>Security group ID which permits traffic to the VPC endpoints.</p> </li> </ul>
    #   @return [Types::UpdateSettings]
    class UpdateIdentityProviderSettingsRequest < Struct.new(
      :identity_provider,
      :product,
      :identity_provider_arn,
      :update_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_summary
    #   <p>Describes an identity provider.</p>
    #   @return [Types::IdentityProviderSummary]
    class UpdateIdentityProviderSettingsResponse < Struct.new(
      :identity_provider_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the registered identity provider’s product related configuration settings such as the subnets to provision VPC endpoints.</p>
    # @!attribute add_subnets
    #   <p>The ID of one or more subnets in which License Manager will create a VPC endpoint for products that require connectivity to activation servers.</p>
    #   @return [Array<String>]
    # @!attribute remove_subnets
    #   <p>The ID of one or more subnets to remove.</p>
    #   @return [Array<String>]
    # @!attribute security_group_id
    #   <p>A security group ID that allows inbound TCP port 1688 communication between resources in your VPC and the VPC endpoints for activation servers.</p>
    #   @return [String]
    class UpdateSettings < Struct.new(
      :add_subnets,
      :remove_subnets,
      :security_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
