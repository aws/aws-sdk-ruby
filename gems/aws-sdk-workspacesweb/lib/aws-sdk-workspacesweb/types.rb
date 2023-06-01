# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkSpacesWeb
  module Types

    # Access is denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateBrowserSettingsRequest AWS API Documentation
    #
    class AssociateBrowserSettingsRequest < Struct.new(
      :browser_settings_arn,
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateBrowserSettingsResponse AWS API Documentation
    #
    class AssociateBrowserSettingsResponse < Struct.new(
      :browser_settings_arn,
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateIpAccessSettingsRequest AWS API Documentation
    #
    class AssociateIpAccessSettingsRequest < Struct.new(
      :ip_access_settings_arn,
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of the IP access settings resource.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateIpAccessSettingsResponse AWS API Documentation
    #
    class AssociateIpAccessSettingsResponse < Struct.new(
      :ip_access_settings_arn,
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateNetworkSettingsRequest AWS API Documentation
    #
    class AssociateNetworkSettingsRequest < Struct.new(
      :network_settings_arn,
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateNetworkSettingsResponse AWS API Documentation
    #
    class AssociateNetworkSettingsResponse < Struct.new(
      :network_settings_arn,
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateTrustStoreRequest AWS API Documentation
    #
    class AssociateTrustStoreRequest < Struct.new(
      :portal_arn,
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateTrustStoreResponse AWS API Documentation
    #
    class AssociateTrustStoreResponse < Struct.new(
      :portal_arn,
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateUserAccessLoggingSettingsRequest AWS API Documentation
    #
    class AssociateUserAccessLoggingSettingsRequest < Struct.new(
      :portal_arn,
      :user_access_logging_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateUserAccessLoggingSettingsResponse AWS API Documentation
    #
    class AssociateUserAccessLoggingSettingsResponse < Struct.new(
      :portal_arn,
      :user_access_logging_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateUserSettingsRequest AWS API Documentation
    #
    class AssociateUserSettingsRequest < Struct.new(
      :portal_arn,
      :user_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateUserSettingsResponse AWS API Documentation
    #
    class AssociateUserSettingsResponse < Struct.new(
      :portal_arn,
      :user_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The browser settings resource that can be associated with a web
    # portal. Once associated with a web portal, browser settings control
    # how the browser will behave once a user starts a streaming session for
    # the web portal.
    #
    # @!attribute [rw] associated_portal_arns
    #   A list of web portal ARNs that this browser settings is associated
    #   with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] browser_policy
    #   A JSON string containing Chrome Enterprise policies that will be
    #   applied to all streaming sessions.
    #   @return [String]
    #
    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/BrowserSettings AWS API Documentation
    #
    class BrowserSettings < Struct.new(
      :associated_portal_arns,
      :browser_policy,
      :browser_settings_arn)
      SENSITIVE = [:browser_policy]
      include Aws::Structure
    end

    # The summary for browser settings.
    #
    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/BrowserSettingsSummary AWS API Documentation
    #
    class BrowserSettingsSummary < Struct.new(
      :browser_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate.
    #
    # @!attribute [rw] body
    #   The body of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The entity that issued the certificate.
    #   @return [String]
    #
    # @!attribute [rw] not_valid_after
    #   The certificate is not valid after this date.
    #   @return [Time]
    #
    # @!attribute [rw] not_valid_before
    #   The certificate is not valid before this date.
    #   @return [Time]
    #
    # @!attribute [rw] subject
    #   The entity the certificate belongs to.
    #   @return [String]
    #
    # @!attribute [rw] thumbprint
    #   A hexadecimal identifier for the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :body,
      :issuer,
      :not_valid_after,
      :not_valid_before,
      :subject,
      :thumbprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the certificate.
    #
    # @!attribute [rw] issuer
    #   The entity that issued the certificate.
    #   @return [String]
    #
    # @!attribute [rw] not_valid_after
    #   The certificate is not valid after this date.
    #   @return [Time]
    #
    # @!attribute [rw] not_valid_before
    #   The certificate is not valid before this date.
    #   @return [Time]
    #
    # @!attribute [rw] subject
    #   The entity the certificate belongs to.
    #   @return [String]
    #
    # @!attribute [rw] thumbprint
    #   A hexadecimal identifier for the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CertificateSummary AWS API Documentation
    #
    class CertificateSummary < Struct.new(
      :issuer,
      :not_valid_after,
      :not_valid_before,
      :subject,
      :thumbprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_encryption_context
    #   Additional encryption context of the browser settings.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] browser_policy
    #   A JSON string containing Chrome Enterprise policies that will be
    #   applied to all streaming sessions.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful
    #   request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] customer_managed_key
    #   The custom managed key of the browser settings.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the browser settings resource. A tag is a
    #   key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateBrowserSettingsRequest AWS API Documentation
    #
    class CreateBrowserSettingsRequest < Struct.new(
      :additional_encryption_context,
      :browser_policy,
      :client_token,
      :customer_managed_key,
      :tags)
      SENSITIVE = [:browser_policy]
      include Aws::Structure
    end

    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateBrowserSettingsResponse AWS API Documentation
    #
    class CreateBrowserSettingsResponse < Struct.new(
      :browser_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful
    #   request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   The identity provider details. The following list describes the
    #   provider detail keys for each identity provider type.
    #
    #   * For Google and Login with Amazon:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #   * For Facebook:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #     * `api_version`
    #
    #   * For Sign in with Apple:
    #
    #     * `client_id`
    #
    #     * `team_id`
    #
    #     * `key_id`
    #
    #     * `private_key`
    #
    #     * `authorize_scopes`
    #
    #   * For OIDC providers:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `attributes_request_method`
    #
    #     * `oidc_issuer`
    #
    #     * `authorize_scopes`
    #
    #     * `authorize_url` *if not available from discovery URL specified
    #       by `oidc_issuer` key*
    #
    #     * `token_url` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #     * `attributes_url` *if not available from discovery URL specified
    #       by `oidc_issuer` key*
    #
    #     * `jwks_uri` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #   * For SAML providers:
    #
    #     * `MetadataFile` OR `MetadataURL`
    #
    #     * `IDPSignout` (boolean) *optional*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] identity_provider_name
    #   The identity provider name.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   The identity provider type.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateIdentityProviderRequest AWS API Documentation
    #
    class CreateIdentityProviderRequest < Struct.new(
      :client_token,
      :identity_provider_details,
      :identity_provider_name,
      :identity_provider_type,
      :portal_arn)
      SENSITIVE = [:identity_provider_details, :identity_provider_name]
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_arn
    #   The ARN of the identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateIdentityProviderResponse AWS API Documentation
    #
    class CreateIdentityProviderResponse < Struct.new(
      :identity_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_encryption_context
    #   Additional encryption context of the IP access settings.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful
    #   request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] customer_managed_key
    #   The custom managed key of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] ip_rules
    #   The IP rules of the IP access settings.
    #   @return [Array<Types::IpRule>]
    #
    # @!attribute [rw] tags
    #   The tags to add to the browser settings resource. A tag is a
    #   key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateIpAccessSettingsRequest AWS API Documentation
    #
    class CreateIpAccessSettingsRequest < Struct.new(
      :additional_encryption_context,
      :client_token,
      :customer_managed_key,
      :description,
      :display_name,
      :ip_rules,
      :tags)
      SENSITIVE = [:description, :display_name, :ip_rules]
      include Aws::Structure
    end

    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of the IP access settings resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateIpAccessSettingsResponse AWS API Documentation
    #
    class CreateIpAccessSettingsResponse < Struct.new(
      :ip_access_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful
    #   request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   One or more security groups used to control access from streaming
    #   instances to your VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   The subnets in which network interfaces are created to connect
    #   streaming instances to your VPC. At least two of these subnets must
    #   be in different availability zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to add to the network settings resource. A tag is a
    #   key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_id
    #   The VPC that streaming instances will connect to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateNetworkSettingsRequest AWS API Documentation
    #
    class CreateNetworkSettingsRequest < Struct.new(
      :client_token,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateNetworkSettingsResponse AWS API Documentation
    #
    class CreateNetworkSettingsResponse < Struct.new(
      :network_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_encryption_context
    #   The additional encryption context of the portal.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_type
    #   The type of authentication integration points used when signing into
    #   the web portal. Defaults to `Standard`.
    #
    #   `Standard` web portals are authenticated directly through your
    #   identity provider. You need to call `CreateIdentityProvider` to
    #   integrate your identity provider with your web portal. User and
    #   group access to your web portal is controlled through your identity
    #   provider.
    #
    #   `IAM_Identity_Center` web portals are authenticated through AWS IAM
    #   Identity Center (successor to AWS Single Sign-On). They provide
    #   additional features, such as IdP-initiated authentication. Identity
    #   sources (including external identity provider integration), plus
    #   user and group access to your web portal, can be configured in the
    #   IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful
    #   request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] customer_managed_key
    #   The customer managed key of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the web portal. This is not visible to users who log
    #   into the web portal.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the web portal. A tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreatePortalRequest AWS API Documentation
    #
    class CreatePortalRequest < Struct.new(
      :additional_encryption_context,
      :authentication_type,
      :client_token,
      :customer_managed_key,
      :display_name,
      :tags)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_endpoint
    #   The endpoint URL of the web portal that users access in order to
    #   start streaming sessions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreatePortalResponse AWS API Documentation
    #
    class CreatePortalResponse < Struct.new(
      :portal_arn,
      :portal_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_list
    #   A list of CA certificates to be added to the trust store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful
    #   request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the trust store. A tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateTrustStoreRequest AWS API Documentation
    #
    class CreateTrustStoreRequest < Struct.new(
      :certificate_list,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateTrustStoreResponse AWS API Documentation
    #
    class CreateTrustStoreResponse < Struct.new(
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful
    #   request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_stream_arn
    #   The ARN of the Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the user settings resource. A tag is a key-value
    #   pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateUserAccessLoggingSettingsRequest AWS API Documentation
    #
    class CreateUserAccessLoggingSettingsRequest < Struct.new(
      :client_token,
      :kinesis_stream_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateUserAccessLoggingSettingsResponse AWS API Documentation
    #
    class CreateUserAccessLoggingSettingsResponse < Struct.new(
      :user_access_logging_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful
    #   request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] copy_allowed
    #   Specifies whether the user can copy text from the streaming session
    #   to the local device.
    #   @return [String]
    #
    # @!attribute [rw] disconnect_timeout_in_minutes
    #   The amount of time that a streaming session remains active after
    #   users disconnect.
    #   @return [Integer]
    #
    # @!attribute [rw] download_allowed
    #   Specifies whether the user can download files from the streaming
    #   session to the local device.
    #   @return [String]
    #
    # @!attribute [rw] idle_disconnect_timeout_in_minutes
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the disconnect timeout
    #   interval begins.
    #   @return [Integer]
    #
    # @!attribute [rw] paste_allowed
    #   Specifies whether the user can paste text from the local device to
    #   the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] print_allowed
    #   Specifies whether the user can print to the local device.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the user settings resource. A tag is a key-value
    #   pair.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] upload_allowed
    #   Specifies whether the user can upload files from the local device to
    #   the streaming session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateUserSettingsRequest AWS API Documentation
    #
    class CreateUserSettingsRequest < Struct.new(
      :client_token,
      :copy_allowed,
      :disconnect_timeout_in_minutes,
      :download_allowed,
      :idle_disconnect_timeout_in_minutes,
      :paste_allowed,
      :print_allowed,
      :tags,
      :upload_allowed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateUserSettingsResponse AWS API Documentation
    #
    class CreateUserSettingsResponse < Struct.new(
      :user_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteBrowserSettingsRequest AWS API Documentation
    #
    class DeleteBrowserSettingsRequest < Struct.new(
      :browser_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteBrowserSettingsResponse AWS API Documentation
    #
    class DeleteBrowserSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identity_provider_arn
    #   The ARN of the identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteIdentityProviderRequest AWS API Documentation
    #
    class DeleteIdentityProviderRequest < Struct.new(
      :identity_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteIdentityProviderResponse AWS API Documentation
    #
    class DeleteIdentityProviderResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of the IP access settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteIpAccessSettingsRequest AWS API Documentation
    #
    class DeleteIpAccessSettingsRequest < Struct.new(
      :ip_access_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteIpAccessSettingsResponse AWS API Documentation
    #
    class DeleteIpAccessSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteNetworkSettingsRequest AWS API Documentation
    #
    class DeleteNetworkSettingsRequest < Struct.new(
      :network_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteNetworkSettingsResponse AWS API Documentation
    #
    class DeleteNetworkSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeletePortalRequest AWS API Documentation
    #
    class DeletePortalRequest < Struct.new(
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeletePortalResponse AWS API Documentation
    #
    class DeletePortalResponse < Aws::EmptyStructure; end

    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteTrustStoreRequest AWS API Documentation
    #
    class DeleteTrustStoreRequest < Struct.new(
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteTrustStoreResponse AWS API Documentation
    #
    class DeleteTrustStoreResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteUserAccessLoggingSettingsRequest AWS API Documentation
    #
    class DeleteUserAccessLoggingSettingsRequest < Struct.new(
      :user_access_logging_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteUserAccessLoggingSettingsResponse AWS API Documentation
    #
    class DeleteUserAccessLoggingSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteUserSettingsRequest AWS API Documentation
    #
    class DeleteUserSettingsRequest < Struct.new(
      :user_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteUserSettingsResponse AWS API Documentation
    #
    class DeleteUserSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateBrowserSettingsRequest AWS API Documentation
    #
    class DisassociateBrowserSettingsRequest < Struct.new(
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateBrowserSettingsResponse AWS API Documentation
    #
    class DisassociateBrowserSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateIpAccessSettingsRequest AWS API Documentation
    #
    class DisassociateIpAccessSettingsRequest < Struct.new(
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateIpAccessSettingsResponse AWS API Documentation
    #
    class DisassociateIpAccessSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateNetworkSettingsRequest AWS API Documentation
    #
    class DisassociateNetworkSettingsRequest < Struct.new(
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateNetworkSettingsResponse AWS API Documentation
    #
    class DisassociateNetworkSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateTrustStoreRequest AWS API Documentation
    #
    class DisassociateTrustStoreRequest < Struct.new(
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateTrustStoreResponse AWS API Documentation
    #
    class DisassociateTrustStoreResponse < Aws::EmptyStructure; end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateUserAccessLoggingSettingsRequest AWS API Documentation
    #
    class DisassociateUserAccessLoggingSettingsRequest < Struct.new(
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateUserAccessLoggingSettingsResponse AWS API Documentation
    #
    class DisassociateUserAccessLoggingSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateUserSettingsRequest AWS API Documentation
    #
    class DisassociateUserSettingsRequest < Struct.new(
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateUserSettingsResponse AWS API Documentation
    #
    class DisassociateUserSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetBrowserSettingsRequest AWS API Documentation
    #
    class GetBrowserSettingsRequest < Struct.new(
      :browser_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_settings
    #   The browser settings.
    #   @return [Types::BrowserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetBrowserSettingsResponse AWS API Documentation
    #
    class GetBrowserSettingsResponse < Struct.new(
      :browser_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_arn
    #   The ARN of the identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetIdentityProviderRequest AWS API Documentation
    #
    class GetIdentityProviderRequest < Struct.new(
      :identity_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetIdentityProviderResponse AWS API Documentation
    #
    class GetIdentityProviderResponse < Struct.new(
      :identity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of the IP access settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetIpAccessSettingsRequest AWS API Documentation
    #
    class GetIpAccessSettingsRequest < Struct.new(
      :ip_access_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ip_access_settings
    #   The IP access settings.
    #   @return [Types::IpAccessSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetIpAccessSettingsResponse AWS API Documentation
    #
    class GetIpAccessSettingsResponse < Struct.new(
      :ip_access_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetNetworkSettingsRequest AWS API Documentation
    #
    class GetNetworkSettingsRequest < Struct.new(
      :network_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_settings
    #   The network settings.
    #   @return [Types::NetworkSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetNetworkSettingsResponse AWS API Documentation
    #
    class GetNetworkSettingsResponse < Struct.new(
      :network_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetPortalRequest AWS API Documentation
    #
    class GetPortalRequest < Struct.new(
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal
    #   The web portal.
    #   @return [Types::Portal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetPortalResponse AWS API Documentation
    #
    class GetPortalResponse < Struct.new(
      :portal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetPortalServiceProviderMetadataRequest AWS API Documentation
    #
    class GetPortalServiceProviderMetadataRequest < Struct.new(
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] service_provider_saml_metadata
    #   The service provider SAML metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetPortalServiceProviderMetadataResponse AWS API Documentation
    #
    class GetPortalServiceProviderMetadataResponse < Struct.new(
      :portal_arn,
      :service_provider_saml_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thumbprint
    #   The thumbprint of the trust store certificate.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetTrustStoreCertificateRequest AWS API Documentation
    #
    class GetTrustStoreCertificateRequest < Struct.new(
      :thumbprint,
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The certificate of the trust store certificate.
    #   @return [Types::Certificate]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetTrustStoreCertificateResponse AWS API Documentation
    #
    class GetTrustStoreCertificateResponse < Struct.new(
      :certificate,
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetTrustStoreRequest AWS API Documentation
    #
    class GetTrustStoreRequest < Struct.new(
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trust_store
    #   The trust store.
    #   @return [Types::TrustStore]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetTrustStoreResponse AWS API Documentation
    #
    class GetTrustStoreResponse < Struct.new(
      :trust_store)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetUserAccessLoggingSettingsRequest AWS API Documentation
    #
    class GetUserAccessLoggingSettingsRequest < Struct.new(
      :user_access_logging_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_access_logging_settings
    #   The user access logging settings.
    #   @return [Types::UserAccessLoggingSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetUserAccessLoggingSettingsResponse AWS API Documentation
    #
    class GetUserAccessLoggingSettingsResponse < Struct.new(
      :user_access_logging_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetUserSettingsRequest AWS API Documentation
    #
    class GetUserSettingsRequest < Struct.new(
      :user_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_settings
    #   The user settings.
    #   @return [Types::UserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetUserSettingsResponse AWS API Documentation
    #
    class GetUserSettingsResponse < Struct.new(
      :user_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identity provider.
    #
    # @!attribute [rw] identity_provider_arn
    #   The ARN of the identity provider.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   The identity provider details. The following list describes the
    #   provider detail keys for each identity provider type.
    #
    #   * For Google and Login with Amazon:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #   * For Facebook:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #     * `api_version`
    #
    #   * For Sign in with Apple:
    #
    #     * `client_id`
    #
    #     * `team_id`
    #
    #     * `key_id`
    #
    #     * `private_key`
    #
    #     * `authorize_scopes`
    #
    #   * For OIDC providers:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `attributes_request_method`
    #
    #     * `oidc_issuer`
    #
    #     * `authorize_scopes`
    #
    #     * `authorize_url` *if not available from discovery URL specified
    #       by oidc\_issuer key*
    #
    #     * `token_url` *if not available from discovery URL specified by
    #       oidc\_issuer key*
    #
    #     * `attributes_url` *if not available from discovery URL specified
    #       by oidc\_issuer key*
    #
    #     * `jwks_uri` *if not available from discovery URL specified by
    #       oidc\_issuer key*
    #
    #   * For SAML providers:
    #
    #     * `MetadataFile` OR `MetadataURL`
    #
    #     * `IDPSignout` *optional*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] identity_provider_name
    #   The identity provider name.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   The identity provider type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/IdentityProvider AWS API Documentation
    #
    class IdentityProvider < Struct.new(
      :identity_provider_arn,
      :identity_provider_details,
      :identity_provider_name,
      :identity_provider_type)
      SENSITIVE = [:identity_provider_details, :identity_provider_name]
      include Aws::Structure
    end

    # The summary of the identity provider.
    #
    # @!attribute [rw] identity_provider_arn
    #   The ARN of the identity provider.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_name
    #   The identity provider name.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   The identity provider type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/IdentityProviderSummary AWS API Documentation
    #
    class IdentityProviderSummary < Struct.new(
      :identity_provider_arn,
      :identity_provider_name,
      :identity_provider_type)
      SENSITIVE = [:identity_provider_name]
      include Aws::Structure
    end

    # There is an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IP access settings resource that can be associated with a web
    # portal.
    #
    # @!attribute [rw] associated_portal_arns
    #   A list of web portal ARNs that this IP access settings resource is
    #   associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_date
    #   The creation date timestamp of the IP access settings.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of the IP access settings resource.
    #   @return [String]
    #
    # @!attribute [rw] ip_rules
    #   The IP rules of the IP access settings.
    #   @return [Array<Types::IpRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/IpAccessSettings AWS API Documentation
    #
    class IpAccessSettings < Struct.new(
      :associated_portal_arns,
      :creation_date,
      :description,
      :display_name,
      :ip_access_settings_arn,
      :ip_rules)
      SENSITIVE = [:description, :display_name, :ip_rules]
      include Aws::Structure
    end

    # The summary of IP access settings.
    #
    # @!attribute [rw] creation_date
    #   The creation date timestamp of the IP access settings.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of IP access settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/IpAccessSettingsSummary AWS API Documentation
    #
    class IpAccessSettingsSummary < Struct.new(
      :creation_date,
      :description,
      :display_name,
      :ip_access_settings_arn)
      SENSITIVE = [:description, :display_name]
      include Aws::Structure
    end

    # The IP rules of the IP access settings.
    #
    # @!attribute [rw] description
    #   The description of the IP rule.
    #   @return [String]
    #
    # @!attribute [rw] ip_range
    #   The IP range of the IP rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/IpRule AWS API Documentation
    #
    class IpRule < Struct.new(
      :description,
      :ip_range)
      SENSITIVE = [:description, :ip_range]
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListBrowserSettingsRequest AWS API Documentation
    #
    class ListBrowserSettingsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_settings
    #   The browser settings.
    #   @return [Array<Types::BrowserSettingsSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListBrowserSettingsResponse AWS API Documentation
    #
    class ListBrowserSettingsResponse < Struct.new(
      :browser_settings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListIdentityProvidersRequest AWS API Documentation
    #
    class ListIdentityProvidersRequest < Struct.new(
      :max_results,
      :next_token,
      :portal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_providers
    #   The identity providers.
    #   @return [Array<Types::IdentityProviderSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListIdentityProvidersResponse AWS API Documentation
    #
    class ListIdentityProvidersResponse < Struct.new(
      :identity_providers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListIpAccessSettingsRequest AWS API Documentation
    #
    class ListIpAccessSettingsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ip_access_settings
    #   The IP access settings.
    #   @return [Array<Types::IpAccessSettingsSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListIpAccessSettingsResponse AWS API Documentation
    #
    class ListIpAccessSettingsResponse < Struct.new(
      :ip_access_settings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListNetworkSettingsRequest AWS API Documentation
    #
    class ListNetworkSettingsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_settings
    #   The network settings.
    #   @return [Array<Types::NetworkSettingsSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListNetworkSettingsResponse AWS API Documentation
    #
    class ListNetworkSettingsResponse < Struct.new(
      :network_settings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListPortalsRequest AWS API Documentation
    #
    class ListPortalsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @!attribute [rw] portals
    #   The portals in the list.
    #   @return [Array<Types::PortalSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListPortalsResponse AWS API Documentation
    #
    class ListPortalsResponse < Struct.new(
      :next_token,
      :portals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags of the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListTrustStoreCertificatesRequest AWS API Documentation
    #
    class ListTrustStoreCertificatesRequest < Struct.new(
      :max_results,
      :next_token,
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_list
    #   The certificate list.
    #   @return [Array<Types::CertificateSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.&gt;
    #   @return [String]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListTrustStoreCertificatesResponse AWS API Documentation
    #
    class ListTrustStoreCertificatesResponse < Struct.new(
      :certificate_list,
      :next_token,
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListTrustStoresRequest AWS API Documentation
    #
    class ListTrustStoresRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @!attribute [rw] trust_stores
    #   The trust stores.
    #   @return [Array<Types::TrustStoreSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListTrustStoresResponse AWS API Documentation
    #
    class ListTrustStoresResponse < Struct.new(
      :next_token,
      :trust_stores)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListUserAccessLoggingSettingsRequest AWS API Documentation
    #
    class ListUserAccessLoggingSettingsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @!attribute [rw] user_access_logging_settings
    #   The user access logging settings.
    #   @return [Array<Types::UserAccessLoggingSettingsSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListUserAccessLoggingSettingsResponse AWS API Documentation
    #
    class ListUserAccessLoggingSettingsResponse < Struct.new(
      :next_token,
      :user_access_logging_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListUserSettingsRequest AWS API Documentation
    #
    class ListUserSettingsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #   @return [String]
    #
    # @!attribute [rw] user_settings
    #   The user settings.
    #   @return [Array<Types::UserSettingsSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListUserSettingsResponse AWS API Documentation
    #
    class ListUserSettingsResponse < Struct.new(
      :next_token,
      :user_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A network settings resource that can be associated with a web portal.
    # Once associated with a web portal, network settings define how
    # streaming instances will connect with your specified VPC.
    #
    # @!attribute [rw] associated_portal_arns
    #   A list of web portal ARNs that this network settings is associated
    #   with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   One or more security groups used to control access from streaming
    #   instances to your VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   The subnets in which network interfaces are created to connect
    #   streaming instances to your VPC. At least two of these subnets must
    #   be in different availability zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The VPC that streaming instances will connect to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/NetworkSettings AWS API Documentation
    #
    class NetworkSettings < Struct.new(
      :associated_portal_arns,
      :network_settings_arn,
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of network settings.
    #
    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the network settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/NetworkSettingsSummary AWS API Documentation
    #
    class NetworkSettingsSummary < Struct.new(
      :network_settings_arn,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The web portal.
    #
    # @!attribute [rw] authentication_type
    #   The type of authentication integration points used when signing into
    #   the web portal. Defaults to `Standard`.
    #
    #   `Standard` web portals are authenticated directly through your
    #   identity provider. You need to call `CreateIdentityProvider` to
    #   integrate your identity provider with your web portal. User and
    #   group access to your web portal is controlled through your identity
    #   provider.
    #
    #   `IAM_Identity_Center` web portals are authenticated through AWS IAM
    #   Identity Center (successor to AWS Single Sign-On). They provide
    #   additional features, such as IdP-initiated authentication. Identity
    #   sources (including external identity provider integration), plus
    #   user and group access to your web portal, can be configured in the
    #   IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings that is associated with this web
    #   portal.
    #   @return [String]
    #
    # @!attribute [rw] browser_type
    #   The browser that users see when using a streaming session.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The creation date of the web portal.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The name of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings that is associated with the web
    #   portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_endpoint
    #   The endpoint URL of the web portal that users access in order to
    #   start streaming sessions.
    #   @return [String]
    #
    # @!attribute [rw] portal_status
    #   The status of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] renderer_type
    #   The renderer that is used in streaming sessions.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A message that explains why the web portal is in its current status.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store that is associated with the web portal.
    #   @return [String]
    #
    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings that is associated with
    #   the web portal.
    #   @return [String]
    #
    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings that is associated with the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/Portal AWS API Documentation
    #
    class Portal < Struct.new(
      :authentication_type,
      :browser_settings_arn,
      :browser_type,
      :creation_date,
      :display_name,
      :ip_access_settings_arn,
      :network_settings_arn,
      :portal_arn,
      :portal_endpoint,
      :portal_status,
      :renderer_type,
      :status_reason,
      :trust_store_arn,
      :user_access_logging_settings_arn,
      :user_settings_arn)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # The summary of the portal.
    #
    # @!attribute [rw] authentication_type
    #   The type of authentication integration points used when signing into
    #   the web portal. Defaults to `Standard`.
    #
    #   `Standard` web portals are authenticated directly through your
    #   identity provider. You need to call `CreateIdentityProvider` to
    #   integrate your identity provider with your web portal. User and
    #   group access to your web portal is controlled through your identity
    #   provider.
    #
    #   `IAM_Identity_Center` web portals are authenticated through AWS IAM
    #   Identity Center (successor to AWS Single Sign-On). They provide
    #   additional features, such as IdP-initiated authentication. Identity
    #   sources (including external identity provider integration), plus
    #   user and group access to your web portal, can be configured in the
    #   IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings that is associated with the web
    #   portal.
    #   @return [String]
    #
    # @!attribute [rw] browser_type
    #   The browser type of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The creation date of the web portal.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The name of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings that is associated with the web
    #   portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_endpoint
    #   The endpoint URL of the web portal that users access in order to
    #   start streaming sessions.
    #   @return [String]
    #
    # @!attribute [rw] portal_status
    #   The status of the web portal.
    #   @return [String]
    #
    # @!attribute [rw] renderer_type
    #   The renderer that is used in streaming sessions.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust that is associated with this web portal.
    #   @return [String]
    #
    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings that is associated with
    #   the web portal.
    #   @return [String]
    #
    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings that is associated with the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/PortalSummary AWS API Documentation
    #
    class PortalSummary < Struct.new(
      :authentication_type,
      :browser_settings_arn,
      :browser_type,
      :creation_date,
      :display_name,
      :ip_access_settings_arn,
      :network_settings_arn,
      :portal_arn,
      :portal_endpoint,
      :portal_status,
      :renderer_type,
      :trust_store_arn,
      :user_access_logging_settings_arn,
      :user_settings_arn)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # The resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Hypothetical identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Hypothetical type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service quota has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The originating quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag.
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful
    #   request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :client_token,
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # There is a throttling error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The originating quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # There are too many tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Name of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A trust store that can be associated with a web portal. A trust store
    # contains certificate authority (CA) certificates. Once associated with
    # a web portal, the browser in a streaming session will recognize
    # certificates that have been issued using any of the CAs in the trust
    # store. If your organization has internal websites that use
    # certificates issued by private CAs, you should add the private CA
    # certificate to the trust store.
    #
    # @!attribute [rw] associated_portal_arns
    #   A list of web portal ARNs that this trust store is associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/TrustStore AWS API Documentation
    #
    class TrustStore < Struct.new(
      :associated_portal_arns,
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the trust store.
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/TrustStoreSummary AWS API Documentation
    #
    class TrustStoreSummary < Struct.new(
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] browser_policy
    #   A JSON string containing Chrome Enterprise policies that will be
    #   applied to all streaming sessions.
    #   @return [String]
    #
    # @!attribute [rw] browser_settings_arn
    #   The ARN of the browser settings.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateBrowserSettingsRequest AWS API Documentation
    #
    class UpdateBrowserSettingsRequest < Struct.new(
      :browser_policy,
      :browser_settings_arn,
      :client_token)
      SENSITIVE = [:browser_policy]
      include Aws::Structure
    end

    # @!attribute [rw] browser_settings
    #   The browser settings.
    #   @return [Types::BrowserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateBrowserSettingsResponse AWS API Documentation
    #
    class UpdateBrowserSettingsResponse < Struct.new(
      :browser_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_arn
    #   The ARN of the identity provider.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   The details of the identity provider. The following list describes
    #   the provider detail keys for each identity provider type.
    #
    #   * For Google and Login with Amazon:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #   * For Facebook:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #     * `api_version`
    #
    #   * For Sign in with Apple:
    #
    #     * `client_id`
    #
    #     * `team_id`
    #
    #     * `key_id`
    #
    #     * `private_key`
    #
    #     * `authorize_scopes`
    #
    #   * For OIDC providers:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `attributes_request_method`
    #
    #     * `oidc_issuer`
    #
    #     * `authorize_scopes`
    #
    #     * `authorize_url` *if not available from discovery URL specified
    #       by `oidc_issuer` key*
    #
    #     * `token_url` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #     * `attributes_url` *if not available from discovery URL specified
    #       by `oidc_issuer` key*
    #
    #     * `jwks_uri` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #   * For SAML providers:
    #
    #     * `MetadataFile` OR `MetadataURL`
    #
    #     * `IDPSignout` (boolean) *optional*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] identity_provider_name
    #   The name of the identity provider.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   The type of the identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateIdentityProviderRequest AWS API Documentation
    #
    class UpdateIdentityProviderRequest < Struct.new(
      :client_token,
      :identity_provider_arn,
      :identity_provider_details,
      :identity_provider_name,
      :identity_provider_type)
      SENSITIVE = [:identity_provider_details, :identity_provider_name]
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The identity provider.
    #   @return [Types::IdentityProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateIdentityProviderResponse AWS API Documentation
    #
    class UpdateIdentityProviderResponse < Struct.new(
      :identity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] ip_access_settings_arn
    #   The ARN of the IP access settings.
    #   @return [String]
    #
    # @!attribute [rw] ip_rules
    #   The updated IP rules of the IP access settings.
    #   @return [Array<Types::IpRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateIpAccessSettingsRequest AWS API Documentation
    #
    class UpdateIpAccessSettingsRequest < Struct.new(
      :client_token,
      :description,
      :display_name,
      :ip_access_settings_arn,
      :ip_rules)
      SENSITIVE = [:description, :display_name, :ip_rules]
      include Aws::Structure
    end

    # @!attribute [rw] ip_access_settings
    #   The IP access settings.
    #   @return [Types::IpAccessSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateIpAccessSettingsResponse AWS API Documentation
    #
    class UpdateIpAccessSettingsResponse < Struct.new(
      :ip_access_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] network_settings_arn
    #   The ARN of the network settings.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   One or more security groups used to control access from streaming
    #   instances to your VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   The subnets in which network interfaces are created to connect
    #   streaming instances to your VPC. At least two of these subnets must
    #   be in different availability zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The VPC that streaming instances will connect to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateNetworkSettingsRequest AWS API Documentation
    #
    class UpdateNetworkSettingsRequest < Struct.new(
      :client_token,
      :network_settings_arn,
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_settings
    #   The network settings.
    #   @return [Types::NetworkSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateNetworkSettingsResponse AWS API Documentation
    #
    class UpdateNetworkSettingsResponse < Struct.new(
      :network_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_type
    #   The type of authentication integration points used when signing into
    #   the web portal. Defaults to `Standard`.
    #
    #   `Standard` web portals are authenticated directly through your
    #   identity provider. You need to call `CreateIdentityProvider` to
    #   integrate your identity provider with your web portal. User and
    #   group access to your web portal is controlled through your identity
    #   provider.
    #
    #   `IAM_Identity_Center` web portals are authenticated through AWS IAM
    #   Identity Center (successor to AWS Single Sign-On). They provide
    #   additional features, such as IdP-initiated authentication. Identity
    #   sources (including external identity provider integration), plus
    #   user and group access to your web portal, can be configured in the
    #   IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the web portal. This is not visible to users who log
    #   into the web portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The ARN of the web portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdatePortalRequest AWS API Documentation
    #
    class UpdatePortalRequest < Struct.new(
      :authentication_type,
      :display_name,
      :portal_arn)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # @!attribute [rw] portal
    #   The web portal.
    #   @return [Types::Portal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdatePortalResponse AWS API Documentation
    #
    class UpdatePortalResponse < Struct.new(
      :portal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificates_to_add
    #   A list of CA certificates to add to the trust store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] certificates_to_delete
    #   A list of CA certificates to delete from a trust store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateTrustStoreRequest AWS API Documentation
    #
    class UpdateTrustStoreRequest < Struct.new(
      :certificates_to_add,
      :certificates_to_delete,
      :client_token,
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trust_store_arn
    #   The ARN of the trust store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateTrustStoreResponse AWS API Documentation
    #
    class UpdateTrustStoreResponse < Struct.new(
      :trust_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_stream_arn
    #   The ARN of the Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateUserAccessLoggingSettingsRequest AWS API Documentation
    #
    class UpdateUserAccessLoggingSettingsRequest < Struct.new(
      :client_token,
      :kinesis_stream_arn,
      :user_access_logging_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_access_logging_settings
    #   The user access logging settings.
    #   @return [Types::UserAccessLoggingSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateUserAccessLoggingSettingsResponse AWS API Documentation
    #
    class UpdateUserAccessLoggingSettingsResponse < Struct.new(
      :user_access_logging_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] copy_allowed
    #   Specifies whether the user can copy text from the streaming session
    #   to the local device.
    #   @return [String]
    #
    # @!attribute [rw] disconnect_timeout_in_minutes
    #   The amount of time that a streaming session remains active after
    #   users disconnect.
    #   @return [Integer]
    #
    # @!attribute [rw] download_allowed
    #   Specifies whether the user can download files from the streaming
    #   session to the local device.
    #   @return [String]
    #
    # @!attribute [rw] idle_disconnect_timeout_in_minutes
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the disconnect timeout
    #   interval begins.
    #   @return [Integer]
    #
    # @!attribute [rw] paste_allowed
    #   Specifies whether the user can paste text from the local device to
    #   the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] print_allowed
    #   Specifies whether the user can print to the local device.
    #   @return [String]
    #
    # @!attribute [rw] upload_allowed
    #   Specifies whether the user can upload files from the local device to
    #   the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateUserSettingsRequest AWS API Documentation
    #
    class UpdateUserSettingsRequest < Struct.new(
      :client_token,
      :copy_allowed,
      :disconnect_timeout_in_minutes,
      :download_allowed,
      :idle_disconnect_timeout_in_minutes,
      :paste_allowed,
      :print_allowed,
      :upload_allowed,
      :user_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_settings
    #   The user settings.
    #   @return [Types::UserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateUserSettingsResponse AWS API Documentation
    #
    class UpdateUserSettingsResponse < Struct.new(
      :user_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user access logging settings resource that can be associated with a
    # web portal.
    #
    # @!attribute [rw] associated_portal_arns
    #   A list of web portal ARNs that this user access logging settings is
    #   associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kinesis_stream_arn
    #   The ARN of the Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UserAccessLoggingSettings AWS API Documentation
    #
    class UserAccessLoggingSettings < Struct.new(
      :associated_portal_arns,
      :kinesis_stream_arn,
      :user_access_logging_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of user access logging settings.
    #
    # @!attribute [rw] kinesis_stream_arn
    #   The ARN of the Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UserAccessLoggingSettingsSummary AWS API Documentation
    #
    class UserAccessLoggingSettingsSummary < Struct.new(
      :kinesis_stream_arn,
      :user_access_logging_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user settings resource that can be associated with a web portal.
    # Once associated with a web portal, user settings control how users can
    # transfer data between a streaming session and the their local devices.
    #
    # @!attribute [rw] associated_portal_arns
    #   A list of web portal ARNs that this user settings is associated
    #   with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] copy_allowed
    #   Specifies whether the user can copy text from the streaming session
    #   to the local device.
    #   @return [String]
    #
    # @!attribute [rw] disconnect_timeout_in_minutes
    #   The amount of time that a streaming session remains active after
    #   users disconnect.
    #   @return [Integer]
    #
    # @!attribute [rw] download_allowed
    #   Specifies whether the user can download files from the streaming
    #   session to the local device.
    #   @return [String]
    #
    # @!attribute [rw] idle_disconnect_timeout_in_minutes
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the disconnect timeout
    #   interval begins.
    #   @return [Integer]
    #
    # @!attribute [rw] paste_allowed
    #   Specifies whether the user can paste text from the local device to
    #   the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] print_allowed
    #   Specifies whether the user can print to the local device.
    #   @return [String]
    #
    # @!attribute [rw] upload_allowed
    #   Specifies whether the user can upload files from the local device to
    #   the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UserSettings AWS API Documentation
    #
    class UserSettings < Struct.new(
      :associated_portal_arns,
      :copy_allowed,
      :disconnect_timeout_in_minutes,
      :download_allowed,
      :idle_disconnect_timeout_in_minutes,
      :paste_allowed,
      :print_allowed,
      :upload_allowed,
      :user_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of user settings.
    #
    # @!attribute [rw] copy_allowed
    #   Specifies whether the user can copy text from the streaming session
    #   to the local device.
    #   @return [String]
    #
    # @!attribute [rw] disconnect_timeout_in_minutes
    #   The amount of time that a streaming session remains active after
    #   users disconnect.
    #   @return [Integer]
    #
    # @!attribute [rw] download_allowed
    #   Specifies whether the user can download files from the streaming
    #   session to the local device.
    #   @return [String]
    #
    # @!attribute [rw] idle_disconnect_timeout_in_minutes
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the disconnect timeout
    #   interval begins.
    #   @return [Integer]
    #
    # @!attribute [rw] paste_allowed
    #   Specifies whether the user can paste text from the local device to
    #   the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] print_allowed
    #   Specifies whether the user can print to the local device.
    #   @return [String]
    #
    # @!attribute [rw] upload_allowed
    #   Specifies whether the user can upload files from the local device to
    #   the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] user_settings_arn
    #   The ARN of the user settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UserSettingsSummary AWS API Documentation
    #
    class UserSettingsSummary < Struct.new(
      :copy_allowed,
      :disconnect_timeout_in_minutes,
      :download_allowed,
      :idle_disconnect_timeout_in_minutes,
      :paste_allowed,
      :print_allowed,
      :upload_allowed,
      :user_settings_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is a validation error.
    #
    # @!attribute [rw] field_list
    #   The field that caused the error.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed validation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a field passed inside a request that resulted in an
    # exception.
    #
    # @!attribute [rw] message
    #   The message describing why the field failed validation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
