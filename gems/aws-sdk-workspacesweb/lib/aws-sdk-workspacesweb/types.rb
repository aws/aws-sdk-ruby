# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpacesWeb
  # This module contains the types returned by client operations.
  module Types

    # <p>Access is denied.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #   @return [String]
    class AssociateBrowserSettingsRequest < Struct.new(
      :portal_arn,
      :browser_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #   @return [String]
    class AssociateBrowserSettingsResponse < Struct.new(
      :portal_arn,
      :browser_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    #   @return [String]
    class AssociateDataProtectionSettingsRequest < Struct.new(
      :portal_arn,
      :data_protection_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings resource.</p>
    #   @return [String]
    class AssociateDataProtectionSettingsResponse < Struct.new(
      :portal_arn,
      :data_protection_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    #   @return [String]
    class AssociateIpAccessSettingsRequest < Struct.new(
      :portal_arn,
      :ip_access_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute ip_access_settings_arn
    #   <p>The ARN of the IP access settings resource.</p>
    #   @return [String]
    class AssociateIpAccessSettingsResponse < Struct.new(
      :portal_arn,
      :ip_access_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #   @return [String]
    class AssociateNetworkSettingsRequest < Struct.new(
      :portal_arn,
      :network_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #   @return [String]
    class AssociateNetworkSettingsResponse < Struct.new(
      :portal_arn,
      :network_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the portal to associate to the session logger ARN.</p>
    #   @return [String]
    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger to associate to the portal ARN.</p>
    #   @return [String]
    class AssociateSessionLoggerRequest < Struct.new(
      :portal_arn,
      :session_logger_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the portal.</p>
    #   @return [String]
    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger.</p>
    #   @return [String]
    class AssociateSessionLoggerResponse < Struct.new(
      :portal_arn,
      :session_logger_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    class AssociateTrustStoreRequest < Struct.new(
      :portal_arn,
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    class AssociateTrustStoreResponse < Struct.new(
      :portal_arn,
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    #   @return [String]
    class AssociateUserAccessLoggingSettingsRequest < Struct.new(
      :portal_arn,
      :user_access_logging_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    #   @return [String]
    class AssociateUserAccessLoggingSettingsResponse < Struct.new(
      :portal_arn,
      :user_access_logging_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #   @return [String]
    class AssociateUserSettingsRequest < Struct.new(
      :portal_arn,
      :user_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #   @return [String]
    class AssociateUserSettingsResponse < Struct.new(
      :portal_arn,
      :user_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The browser settings resource that can be associated with a web portal. Once associated
    #          with a web portal, browser settings control how the browser will behave once a user starts
    #          a streaming session for the web portal. </p>
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #   @return [String]
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this browser settings is associated with.</p>
    #   @return [Array<String>]
    # @!attribute browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions.</p>
    #   @return [String]
    # @!attribute customer_managed_key
    #   <p>The customer managed key used to encrypt sensitive information in the browser
    #            settings.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the browser settings.</p>
    #   @return [Hash<String, String>]
    class BrowserSettings < Struct.new(
      :browser_settings_arn,
      :associated_portal_arns,
      :browser_policy,
      :customer_managed_key,
      :additional_encryption_context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary for browser settings.</p>
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #   @return [String]
    class BrowserSettingsSummary < Struct.new(
      :browser_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate.</p>
    # @!attribute thumbprint
    #   <p>A hexadecimal identifier for the certificate.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The entity the certificate belongs to.</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>The entity that issued the certificate.</p>
    #   @return [String]
    # @!attribute not_valid_before
    #   <p>The certificate is not valid before this date.</p>
    #   @return [Time]
    # @!attribute not_valid_after
    #   <p>The certificate is not valid after this date.</p>
    #   @return [Time]
    # @!attribute body
    #   <p>The body of the certificate.</p>
    #   @return [String]
    class Certificate < Struct.new(
      :thumbprint,
      :subject,
      :issuer,
      :not_valid_before,
      :not_valid_after,
      :body,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the certificate.</p>
    # @!attribute thumbprint
    #   <p>A hexadecimal identifier for the certificate.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The entity the certificate belongs to.</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>The entity that issued the certificate.</p>
    #   @return [String]
    # @!attribute not_valid_before
    #   <p>The certificate is not valid before this date.</p>
    #   @return [Time]
    # @!attribute not_valid_after
    #   <p>The certificate is not valid after this date.</p>
    #   @return [Time]
    class CertificateSummary < Struct.new(
      :thumbprint,
      :subject,
      :issuer,
      :not_valid_before,
      :not_valid_after,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There is a conflict.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a single cookie or set of cookies in an end user's browser.</p>
    # @!attribute domain
    #   <p>The domain of the cookie.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the cookie.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of the cookie.</p>
    #   @return [String]
    class CookieSpecification < Struct.new(
      :domain,
      :name,
      :path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that specifies which cookies should be synchronized from the end
    #          user's local browser to the remote browser.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute allowlist
    #   <p>The list of cookie specifications that are allowed to be synchronized to the remote
    #            browser.</p>
    #   @return [Array<Types::CookieSpecification>]
    # @!attribute blocklist
    #   <p>The list of cookie specifications that are blocked from being synchronized to the remote
    #            browser.</p>
    #   @return [Array<Types::CookieSpecification>]
    class CookieSynchronizationConfiguration < Struct.new(
      :allowlist,
      :blocklist,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags to add to the browser settings resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute customer_managed_key
    #   <p>The custom managed key of the browser settings.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>Additional encryption context of the browser settings.</p>
    #   @return [Hash<String, String>]
    # @!attribute browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK.
    #         </p>
    #   @return [String]
    class CreateBrowserSettingsRequest < Struct.new(
      :tags,
      :customer_managed_key,
      :additional_encryption_context,
      :browser_policy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #   @return [String]
    class CreateBrowserSettingsResponse < Struct.new(
      :browser_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute display_name
    #   <p>The display name of the data protection settings.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data protection settings.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the data protection settings resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute customer_managed_key
    #   <p>The custom managed key of the data protection settings.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>Additional encryption context of the data protection settings.</p>
    #   @return [Hash<String, String>]
    # @!attribute inline_redaction_configuration
    #   <p>The inline redaction configuration of the data protection settings that will be applied to all sessions.</p>
    #   @return [Types::InlineRedactionConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class CreateDataProtectionSettingsRequest < Struct.new(
      :display_name,
      :description,
      :tags,
      :customer_managed_key,
      :additional_encryption_context,
      :inline_redaction_configuration,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings resource.</p>
    #   @return [String]
    class CreateDataProtectionSettingsResponse < Struct.new(
      :data_protection_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute identity_provider_name
    #   <p>The identity provider name.</p>
    #   @return [String]
    # @!attribute identity_provider_type
    #   <p>The identity provider type.</p>
    #   @return [String]
    # @!attribute identity_provider_details
    #   <p>The identity provider details. The following list describes the provider detail keys for
    #            each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPInit</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RequestSigningAlgorithm</code> (string) <i>optional</i>
    #                        - Only accepts <code>rsa-sha256</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EncryptedResponses</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the identity provider resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    class CreateIdentityProviderRequest < Struct.new(
      :portal_arn,
      :identity_provider_name,
      :identity_provider_type,
      :identity_provider_details,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #   @return [String]
    class CreateIdentityProviderResponse < Struct.new(
      :identity_provider_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute display_name
    #   <p>The display name of the IP access settings.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the IP access settings.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the IP access settings resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute customer_managed_key
    #   <p>The custom managed key of the IP access settings.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>Additional encryption context of the IP access settings.</p>
    #   @return [Hash<String, String>]
    # @!attribute ip_rules
    #   <p>The IP rules of the IP access settings.</p>
    #   @return [Array<Types::IpRule>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class CreateIpAccessSettingsRequest < Struct.new(
      :display_name,
      :description,
      :tags,
      :customer_managed_key,
      :additional_encryption_context,
      :ip_rules,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_access_settings_arn
    #   <p>The ARN of the IP access settings resource.</p>
    #   @return [String]
    class CreateIpAccessSettingsResponse < Struct.new(
      :ip_access_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to
    #            your VPC. At least two of these subnets must be in different availability zones.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your
    #            VPC.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to add to the network settings resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class CreateNetworkSettingsRequest < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #   @return [String]
    class CreateNetworkSettingsResponse < Struct.new(
      :network_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute display_name
    #   <p>The name of the web portal. This is not visible to users who log into the web
    #            portal.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the web portal. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute customer_managed_key
    #   <p>The customer managed key of the web portal.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the portal.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The type of authentication integration points used when signing into the web portal.
    #            Defaults to <code>Standard</code>.</p>
    #            <p>
    #               <code>Standard</code> web portals are authenticated directly through your identity
    #            provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity
    #            provider with your web portal. User and group access to your web portal is controlled
    #            through your identity provider.</p>
    #            <p>
    #               <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources
    #            (including external identity provider integration), plus user and group access to your web
    #            portal, can be configured in the IAM Identity Center.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type and resources of the underlying instance.</p>
    #   @return [String]
    # @!attribute max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for the portal.</p>
    #   @return [Integer]
    class CreatePortalRequest < Struct.new(
      :display_name,
      :tags,
      :customer_managed_key,
      :additional_encryption_context,
      :client_token,
      :authentication_type,
      :instance_type,
      :max_concurrent_sessions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute portal_endpoint
    #   <p>The endpoint URL of the web portal that users access in order to start streaming
    #            sessions.</p>
    #   @return [String]
    class CreatePortalResponse < Struct.new(
      :portal_arn,
      :portal_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_filter
    #   <p>The filter that specifies the events to monitor.</p>
    #   @return [Types::EventFilter]
    # @!attribute log_configuration
    #   <p>The configuration that specifies where logs are delivered.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute display_name
    #   <p>The human-readable display name for the session logger resource.</p>
    #   @return [String]
    # @!attribute customer_managed_key
    #   <p>The custom managed key of the session logger.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the session logger.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags to add to the session logger.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, subsequent retries with the same client token returns the result from the original successful request. If you do not specify a client token, one is automatically generated by the AWS SDK.</p>
    #   @return [String]
    class CreateSessionLoggerRequest < Struct.new(
      :event_filter,
      :log_configuration,
      :display_name,
      :customer_managed_key,
      :additional_encryption_context,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger.</p>
    #   @return [String]
    class CreateSessionLoggerResponse < Struct.new(
      :session_logger_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_list
    #   <p>A list of CA certificates to be added to the trust store.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to add to the trust store. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class CreateTrustStoreRequest < Struct.new(
      :certificate_list,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    class CreateTrustStoreResponse < Struct.new(
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute kinesis_stream_arn
    #   <p>The ARN of the Kinesis stream.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the user settings resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class CreateUserAccessLoggingSettingsRequest < Struct.new(
      :kinesis_stream_arn,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    #   @return [String]
    class CreateUserAccessLoggingSettingsResponse < Struct.new(
      :user_access_logging_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #   @return [String]
    # @!attribute paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #   @return [String]
    # @!attribute download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #   @return [String]
    # @!attribute upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #   @return [String]
    # @!attribute print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the user settings resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users
    #            disconnect.</p>
    #   @return [Integer]
    # @!attribute idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from
    #            their streaming session and the disconnect timeout interval begins.</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    # @!attribute cookie_synchronization_configuration
    #   <p>The configuration that specifies which cookies should be synchronized from the end
    #            user's local browser to the remote browser.</p>
    #   @return [Types::CookieSynchronizationConfiguration]
    # @!attribute customer_managed_key
    #   <p>The customer managed key used to encrypt sensitive information in the user
    #            settings.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the user settings.</p>
    #   @return [Hash<String, String>]
    # @!attribute deep_link_allowed
    #   <p>Specifies whether the user can use deep links that open automatically when connecting to
    #            a session.</p>
    #   @return [String]
    # @!attribute toolbar_configuration
    #   <p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>
    #   @return [Types::ToolbarConfiguration]
    class CreateUserSettingsRequest < Struct.new(
      :copy_allowed,
      :paste_allowed,
      :download_allowed,
      :upload_allowed,
      :print_allowed,
      :tags,
      :disconnect_timeout_in_minutes,
      :idle_disconnect_timeout_in_minutes,
      :client_token,
      :cookie_synchronization_configuration,
      :customer_managed_key,
      :additional_encryption_context,
      :deep_link_allowed,
      :toolbar_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #   @return [String]
    class CreateUserSettingsResponse < Struct.new(
      :user_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The pattern configuration for redacting custom data types in session.</p>
    # @!attribute pattern_name
    #   <p>The pattern name for the custom pattern.</p>
    #   @return [String]
    # @!attribute pattern_regex
    #   <p>The pattern regex for the customer pattern. The format must follow JavaScript regex format. The pattern must be enclosed between slashes, and can have flags behind the second slash. For example: “/ab+c/gi”.</p>
    #   @return [String]
    # @!attribute pattern_description
    #   <p>The pattern description for the customer pattern.</p>
    #   @return [String]
    # @!attribute keyword_regex
    #   <p>The keyword regex for the customer pattern. After there is a match to the pattern regex, the keyword regex is used to search within the proximity of the match. If there is a keyword match, then the match is confirmed. If no keyword regex is provided, the pattern regex match will automatically be confirmed. The format must follow JavaScript regex format. The pattern must be enclosed between slashes, and can have flags behind the second slash. For example, “/ab+c/gi”</p>
    #   @return [String]
    class CustomPattern < Struct.new(
      :pattern_name,
      :pattern_regex,
      :pattern_description,
      :keyword_regex,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data protection settings resource that can be associated with a web portal.</p>
    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings resource.</p>
    #   @return [String]
    # @!attribute inline_redaction_configuration
    #   <p>The inline redaction configuration for the data protection settings.</p>
    #   @return [Types::InlineRedactionConfiguration]
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this data protection settings resource is associated
    #            with.</p>
    #   @return [Array<String>]
    # @!attribute display_name
    #   <p>The display name of the data protection settings.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data protection settings.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date timestamp of the data protection settings.</p>
    #   @return [Time]
    # @!attribute customer_managed_key
    #   <p>The customer managed key used to encrypt sensitive information in the data protection
    #            settings.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the data protection settings.</p>
    #   @return [Hash<String, String>]
    class DataProtectionSettings < Struct.new(
      :data_protection_settings_arn,
      :inline_redaction_configuration,
      :associated_portal_arns,
      :display_name,
      :description,
      :creation_date,
      :customer_managed_key,
      :additional_encryption_context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the data protection settings.</p>
    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the data protection settings.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data protection settings.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date timestamp of the data protection settings.</p>
    #   @return [Time]
    class DataProtectionSettingsSummary < Struct.new(
      :data_protection_settings_arn,
      :display_name,
      :description,
      :creation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #   @return [String]
    class DeleteBrowserSettingsRequest < Struct.new(
      :browser_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteBrowserSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    #   @return [String]
    class DeleteDataProtectionSettingsRequest < Struct.new(
      :data_protection_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteDataProtectionSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #   @return [String]
    class DeleteIdentityProviderRequest < Struct.new(
      :identity_provider_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIdentityProviderResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    #   @return [String]
    class DeleteIpAccessSettingsRequest < Struct.new(
      :ip_access_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIpAccessSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #   @return [String]
    class DeleteNetworkSettingsRequest < Struct.new(
      :network_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteNetworkSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class DeletePortalRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePortalResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger.</p>
    #   @return [String]
    class DeleteSessionLoggerRequest < Struct.new(
      :session_logger_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSessionLoggerResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    class DeleteTrustStoreRequest < Struct.new(
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTrustStoreResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    #   @return [String]
    class DeleteUserAccessLoggingSettingsRequest < Struct.new(
      :user_access_logging_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteUserAccessLoggingSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #   @return [String]
    class DeleteUserSettingsRequest < Struct.new(
      :user_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteUserSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class DisassociateBrowserSettingsRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateBrowserSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class DisassociateDataProtectionSettingsRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateDataProtectionSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class DisassociateIpAccessSettingsRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateIpAccessSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class DisassociateNetworkSettingsRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateNetworkSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the portal to disassociate from the a session logger.</p>
    #   @return [String]
    class DisassociateSessionLoggerRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateSessionLoggerResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class DisassociateTrustStoreRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateTrustStoreResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class DisassociateUserAccessLoggingSettingsRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateUserAccessLoggingSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class DisassociateUserSettingsRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateUserSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The filter that specifies the events to monitor.</p>
    # @!attribute all
    #   <p>The filter that monitors all of the available events, including any new events emitted in the future.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute include
    #   <p>The filter that monitors only the listed set of events. New events are not auto-monitored.</p>
    #   @return [Array<String>]
    class EventFilter < Struct.new(
      :all,
      :include,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class All < EventFilter; end
      class Include < EventFilter; end
      class Unknown < EventFilter; end
    end

    # @!attribute portal_id
    #   <p>The ID of the web portal for the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session to expire.</p>
    #   @return [String]
    class ExpireSessionRequest < Struct.new(
      :portal_id,
      :session_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ExpireSessionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #   @return [String]
    class GetBrowserSettingsRequest < Struct.new(
      :browser_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_settings
    #   <p>The browser settings.</p>
    #   @return [Types::BrowserSettings]
    class GetBrowserSettingsResponse < Struct.new(
      :browser_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    #   @return [String]
    class GetDataProtectionSettingsRequest < Struct.new(
      :data_protection_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_protection_settings
    #   <p>The data protection settings.</p>
    #   @return [Types::DataProtectionSettings]
    class GetDataProtectionSettingsResponse < Struct.new(
      :data_protection_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #   @return [String]
    class GetIdentityProviderRequest < Struct.new(
      :identity_provider_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider
    #   <p>The identity provider.</p>
    #   @return [Types::IdentityProvider]
    class GetIdentityProviderResponse < Struct.new(
      :identity_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    #   @return [String]
    class GetIpAccessSettingsRequest < Struct.new(
      :ip_access_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_access_settings
    #   <p>The IP access settings.</p>
    #   @return [Types::IpAccessSettings]
    class GetIpAccessSettingsResponse < Struct.new(
      :ip_access_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #   @return [String]
    class GetNetworkSettingsRequest < Struct.new(
      :network_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_settings
    #   <p>The network settings.</p>
    #   @return [Types::NetworkSettings]
    class GetNetworkSettingsResponse < Struct.new(
      :network_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class GetPortalRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal
    #   <p>The web portal.</p>
    #   @return [Types::Portal]
    class GetPortalResponse < Struct.new(
      :portal,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class GetPortalServiceProviderMetadataRequest < Struct.new(
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute service_provider_saml_metadata
    #   <p>The service provider SAML metadata.</p>
    #   @return [String]
    class GetPortalServiceProviderMetadataResponse < Struct.new(
      :portal_arn,
      :service_provider_saml_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger.</p>
    #   @return [String]
    class GetSessionLoggerRequest < Struct.new(
      :session_logger_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_logger
    #   <p>The session logger details.</p>
    #   @return [Types::SessionLogger]
    class GetSessionLoggerResponse < Struct.new(
      :session_logger,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the web portal for the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #   @return [String]
    class GetSessionRequest < Struct.new(
      :portal_id,
      :session_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session
    #   <p>The sessions in a list.</p>
    #   @return [Types::Session]
    class GetSessionResponse < Struct.new(
      :session,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store certificate.</p>
    #   @return [String]
    # @!attribute thumbprint
    #   <p>The thumbprint of the trust store certificate.</p>
    #   @return [String]
    class GetTrustStoreCertificateRequest < Struct.new(
      :trust_store_arn,
      :thumbprint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store certificate.</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>The certificate of the trust store certificate.</p>
    #   @return [Types::Certificate]
    class GetTrustStoreCertificateResponse < Struct.new(
      :trust_store_arn,
      :certificate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    class GetTrustStoreRequest < Struct.new(
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store
    #   <p>The trust store.</p>
    #   @return [Types::TrustStore]
    class GetTrustStoreResponse < Struct.new(
      :trust_store,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    #   @return [String]
    class GetUserAccessLoggingSettingsRequest < Struct.new(
      :user_access_logging_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_access_logging_settings
    #   <p>The user access logging settings.</p>
    #   @return [Types::UserAccessLoggingSettings]
    class GetUserAccessLoggingSettingsResponse < Struct.new(
      :user_access_logging_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #   @return [String]
    class GetUserSettingsRequest < Struct.new(
      :user_settings_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_settings
    #   <p>The user settings.</p>
    #   @return [Types::UserSettings]
    class GetUserSettingsResponse < Struct.new(
      :user_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The identity provider.</p>
    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #   @return [String]
    # @!attribute identity_provider_name
    #   <p>The identity provider name.</p>
    #   @return [String]
    # @!attribute identity_provider_type
    #   <p>The identity provider type.</p>
    #   @return [String]
    # @!attribute identity_provider_details
    #   <p>The identity provider details. The following list describes the provider detail keys for
    #            each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by oidc_issuer
    #                           key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by oidc_issuer
    #                           key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by oidc_issuer
    #                           key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by oidc_issuer
    #                           key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPInit</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RequestSigningAlgorithm</code> (string) <i>optional</i>
    #                        - Only accepts <code>rsa-sha256</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EncryptedResponses</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class IdentityProvider < Struct.new(
      :identity_provider_arn,
      :identity_provider_name,
      :identity_provider_type,
      :identity_provider_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the identity provider.</p>
    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #   @return [String]
    # @!attribute identity_provider_name
    #   <p>The identity provider name.</p>
    #   @return [String]
    # @!attribute identity_provider_type
    #   <p>The identity provider type.</p>
    #   @return [String]
    class IdentityProviderSummary < Struct.new(
      :identity_provider_arn,
      :identity_provider_name,
      :identity_provider_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for in-session inline redaction.</p>
    # @!attribute inline_redaction_patterns
    #   <p>The inline redaction patterns to be enabled for the inline redaction configuration.</p>
    #   @return [Array<Types::InlineRedactionPattern>]
    # @!attribute global_enforced_urls
    #   <p>The global enforced URL configuration for the inline redaction configuration. This is applied to patterns that do not have a pattern-level enforced URL list.</p>
    #   @return [Array<String>]
    # @!attribute global_exempt_urls
    #   <p>The global exempt URL configuration for the inline redaction configuration. This is applied to patterns that do not have a pattern-level exempt URL list.</p>
    #   @return [Array<String>]
    # @!attribute global_confidence_level
    #   <p>The global confidence level for the inline redaction configuration. This indicates the
    #            certainty of data type matches in the redaction process. Confidence level 3 means high
    #            confidence, and requires a formatted text pattern match in order for content to be
    #            redacted. Confidence level 2 means medium confidence, and redaction considers both
    #            formatted and unformatted text, and adds keyword associate to the logic. Confidence level 1
    #            means low confidence, and redaction is enforced for both formatted pattern + unformatted
    #            pattern without keyword. This is applied to patterns that do not have a pattern-level
    #            confidence level. Defaults to confidence level 2.</p>
    #   @return [Integer]
    class InlineRedactionConfiguration < Struct.new(
      :inline_redaction_patterns,
      :global_enforced_urls,
      :global_exempt_urls,
      :global_confidence_level,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The set of patterns that determine the data types redacted in session.</p>
    # @!attribute built_in_pattern_id
    #   <p>The built-in pattern from the list of preconfigured patterns. Either a customPattern or builtInPatternId is required.</p>
    #   @return [String]
    # @!attribute custom_pattern
    #   <p>&gt;The configuration for a custom pattern. Either a customPattern or builtInPatternId is required.</p>
    #   @return [Types::CustomPattern]
    # @!attribute redaction_place_holder
    #   <p>The redaction placeholder that will replace the redacted text in session for the inline redaction pattern.</p>
    #   @return [Types::RedactionPlaceHolder]
    # @!attribute enforced_urls
    #   <p>The enforced URL configuration for the inline redaction pattern. This will override the global enforced URL configuration.</p>
    #   @return [Array<String>]
    # @!attribute exempt_urls
    #   <p>The exempt URL configuration for the inline redaction pattern. This will override the global exempt URL configuration for the inline redaction pattern.</p>
    #   @return [Array<String>]
    # @!attribute confidence_level
    #   <p>The confidence level for inline redaction pattern. This indicates the certainty of data
    #            type matches in the redaction process. Confidence level 3 means high confidence, and
    #            requires a formatted text pattern match in order for content to be redacted. Confidence
    #            level 2 means medium confidence, and redaction considers both formatted and unformatted
    #            text, and adds keyword associate to the logic. Confidence level 1 means low confidence, and
    #            redaction is enforced for both formatted pattern + unformatted pattern without keyword.
    #            This overrides the global confidence level.</p>
    #   @return [Integer]
    class InlineRedactionPattern < Struct.new(
      :built_in_pattern_id,
      :custom_pattern,
      :redaction_place_holder,
      :enforced_urls,
      :exempt_urls,
      :confidence_level,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There is an internal server error.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Advice to clients on when the call can be safely retried.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>The IP access settings resource that can be associated with a web portal. </p>
    # @!attribute ip_access_settings_arn
    #   <p>The ARN of the IP access settings resource.</p>
    #   @return [String]
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this IP access settings resource is associated
    #            with.</p>
    #   @return [Array<String>]
    # @!attribute ip_rules
    #   <p>The IP rules of the IP access settings.</p>
    #   @return [Array<Types::IpRule>]
    # @!attribute display_name
    #   <p> The display name of the IP access settings.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the IP access settings.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date timestamp of the IP access settings.</p>
    #   @return [Time]
    # @!attribute customer_managed_key
    #   <p>The customer managed key used to encrypt sensitive information in the IP access
    #            settings.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the IP access settings.</p>
    #   @return [Hash<String, String>]
    class IpAccessSettings < Struct.new(
      :ip_access_settings_arn,
      :associated_portal_arns,
      :ip_rules,
      :display_name,
      :description,
      :creation_date,
      :customer_managed_key,
      :additional_encryption_context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of IP access settings.</p>
    # @!attribute ip_access_settings_arn
    #   <p>The ARN of IP access settings.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the IP access settings.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the IP access settings.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date timestamp of the IP access settings.</p>
    #   @return [Time]
    class IpAccessSettingsSummary < Struct.new(
      :ip_access_settings_arn,
      :display_name,
      :description,
      :creation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The IP rules of the IP access settings.</p>
    # @!attribute ip_range
    #   <p>The IP range of the IP rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the IP rule.</p>
    #   @return [String]
    class IpRule < Struct.new(
      :ip_range,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListBrowserSettingsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_settings
    #   <p>The browser settings.</p>
    #   @return [Array<Types::BrowserSettingsSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListBrowserSettingsResponse < Struct.new(
      :browser_settings,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListDataProtectionSettingsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_protection_settings
    #   <p>The data protection settings.</p>
    #   @return [Array<Types::DataProtectionSettingsSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListDataProtectionSettingsResponse < Struct.new(
      :data_protection_settings,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    class ListIdentityProvidersRequest < Struct.new(
      :next_token,
      :max_results,
      :portal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute identity_providers
    #   <p>The identity providers.</p>
    #   @return [Array<Types::IdentityProviderSummary>]
    class ListIdentityProvidersResponse < Struct.new(
      :next_token,
      :identity_providers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListIpAccessSettingsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_access_settings
    #   <p>The IP access settings.</p>
    #   @return [Array<Types::IpAccessSettingsSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListIpAccessSettingsResponse < Struct.new(
      :ip_access_settings,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListNetworkSettingsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_settings
    #   <p>The network settings.</p>
    #   @return [Array<Types::NetworkSettingsSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListNetworkSettingsResponse < Struct.new(
      :network_settings,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.
    #         </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListPortalsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portals
    #   <p>The portals in the list.</p>
    #   @return [Array<Types::PortalSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.
    #         </p>
    #   @return [String]
    class ListPortalsResponse < Struct.new(
      :portals,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListSessionLoggersRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_loggers
    #   <p>The list of session loggers, including summaries of their details.</p>
    #   @return [Array<Types::SessionLoggerSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #   @return [String]
    class ListSessionLoggersResponse < Struct.new(
      :session_loggers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the web portal for the sessions.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The method in which the returned sessions should be sorted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the session.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListSessionsRequest < Struct.new(
      :portal_id,
      :username,
      :session_id,
      :sort_by,
      :status,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sessions
    #   <p>The sessions in a list.</p>
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListSessionsResponse < Struct.new(
      :sessions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags of the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListTrustStoreCertificatesRequest < Struct.new(
      :trust_store_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_list
    #   <p>The certificate list.</p>
    #   @return [Array<Types::CertificateSummary>]
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.&gt;</p>
    #   @return [String]
    class ListTrustStoreCertificatesResponse < Struct.new(
      :certificate_list,
      :trust_store_arn,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListTrustStoresRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_stores
    #   <p>The trust stores.</p>
    #   @return [Array<Types::TrustStoreSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListTrustStoresResponse < Struct.new(
      :trust_stores,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListUserAccessLoggingSettingsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_access_logging_settings
    #   <p>The user access logging settings.</p>
    #   @return [Array<Types::UserAccessLoggingSettingsSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListUserAccessLoggingSettingsResponse < Struct.new(
      :user_access_logging_settings,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.
    #         </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    class ListUserSettingsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_settings
    #   <p>The user settings.</p>
    #   @return [Array<Types::UserSettingsSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.
    #         </p>
    #   @return [String]
    class ListUserSettingsResponse < Struct.new(
      :user_settings,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the log.</p>
    # @!attribute s3
    #   <p>The configuration for delivering the logs to S3.</p>
    #   @return [Types::S3LogConfiguration]
    class LogConfiguration < Struct.new(
      :s3,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A network settings resource that can be associated with a web portal. Once associated
    #          with a web portal, network settings define how streaming instances will connect with your
    #          specified VPC. </p>
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #   @return [String]
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this network settings is associated with.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to
    #            your VPC. At least two of these subnets must be in different availability zones.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your VPC.
    #         </p>
    #   @return [Array<String>]
    class NetworkSettings < Struct.new(
      :network_settings_arn,
      :associated_portal_arns,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of network settings.</p>
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID of the network settings.</p>
    #   @return [String]
    class NetworkSettingsSummary < Struct.new(
      :network_settings_arn,
      :vpc_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The web portal.</p>
    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute renderer_type
    #   <p>The renderer that is used in streaming sessions.</p>
    #   @return [String]
    # @!attribute browser_type
    #   <p>The browser that users see when using a streaming session.</p>
    #   @return [String]
    # @!attribute portal_status
    #   <p>The status of the web portal.</p>
    #   @return [String]
    # @!attribute portal_endpoint
    #   <p>The endpoint URL of the web portal that users access in order to start streaming
    #            sessions.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the web portal.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date of the web portal.</p>
    #   @return [Time]
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings that is associated with this web portal.</p>
    #   @return [String]
    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    #   @return [String]
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings that is associated with the web portal.</p>
    #   @return [String]
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings that is associated with the web portal.</p>
    #   @return [String]
    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger that is assocaited with the portal.</p>
    #   @return [String]
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store that is associated with the web portal.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A message that explains why the web portal is in its current status.</p>
    #   @return [String]
    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings that is associated with the web
    #            portal.</p>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The type of authentication integration points used when signing into the web portal.
    #            Defaults to <code>Standard</code>.</p>
    #            <p>
    #               <code>Standard</code> web portals are authenticated directly through your identity
    #            provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity
    #            provider with your web portal. User and group access to your web portal is controlled
    #            through your identity provider.</p>
    #            <p>
    #               <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources
    #            (including external identity provider integration), plus user and group access to your web
    #            portal, can be configured in the IAM Identity Center.</p>
    #   @return [String]
    # @!attribute ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    #   @return [String]
    # @!attribute customer_managed_key
    #   <p>The customer managed key used to encrypt sensitive information in the portal.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the portal.</p>
    #   @return [Hash<String, String>]
    # @!attribute instance_type
    #   <p>The type and resources of the underlying instance.</p>
    #   @return [String]
    # @!attribute max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for the portal.</p>
    #   @return [Integer]
    class Portal < Struct.new(
      :portal_arn,
      :renderer_type,
      :browser_type,
      :portal_status,
      :portal_endpoint,
      :display_name,
      :creation_date,
      :browser_settings_arn,
      :data_protection_settings_arn,
      :user_settings_arn,
      :network_settings_arn,
      :session_logger_arn,
      :trust_store_arn,
      :status_reason,
      :user_access_logging_settings_arn,
      :authentication_type,
      :ip_access_settings_arn,
      :customer_managed_key,
      :additional_encryption_context,
      :instance_type,
      :max_concurrent_sessions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the portal.</p>
    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute renderer_type
    #   <p>The renderer that is used in streaming sessions.</p>
    #   @return [String]
    # @!attribute browser_type
    #   <p>The browser type of the web portal.</p>
    #   @return [String]
    # @!attribute portal_status
    #   <p>The status of the web portal.</p>
    #   @return [String]
    # @!attribute portal_endpoint
    #   <p>The endpoint URL of the web portal that users access in order to start streaming
    #            sessions.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the web portal.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date of the web portal.</p>
    #   @return [Time]
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings that is associated with the web portal.</p>
    #   @return [String]
    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    #   @return [String]
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings that is associated with the web portal.</p>
    #   @return [String]
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings that is associated with the web portal.</p>
    #   @return [String]
    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger that is assocaited with the portal.</p>
    #   @return [String]
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust that is associated with this web portal.</p>
    #   @return [String]
    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings that is associated with the web
    #            portal.</p>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The type of authentication integration points used when signing into the web portal.
    #            Defaults to <code>Standard</code>.</p>
    #            <p>
    #               <code>Standard</code> web portals are authenticated directly through your identity
    #            provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity
    #            provider with your web portal. User and group access to your web portal is controlled
    #            through your identity provider.</p>
    #            <p>
    #               <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources
    #            (including external identity provider integration), plus user and group access to your web
    #            portal, can be configured in the IAM Identity Center.</p>
    #   @return [String]
    # @!attribute ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type and resources of the underlying instance.</p>
    #   @return [String]
    # @!attribute max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for the portal.</p>
    #   @return [Integer]
    class PortalSummary < Struct.new(
      :portal_arn,
      :renderer_type,
      :browser_type,
      :portal_status,
      :portal_endpoint,
      :display_name,
      :creation_date,
      :browser_settings_arn,
      :data_protection_settings_arn,
      :user_settings_arn,
      :network_settings_arn,
      :session_logger_arn,
      :trust_store_arn,
      :user_access_logging_settings_arn,
      :authentication_type,
      :ip_access_settings_arn,
      :instance_type,
      :max_concurrent_sessions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The redaction placeholder that will replace the redacted text in session.</p>
    # @!attribute redaction_place_holder_type
    #   <p>The redaction placeholder type that will replace the redacted text in session.</p>
    #   @return [String]
    # @!attribute redaction_place_holder_text
    #   <p>The redaction placeholder text that will replace the redacted text in session for the custom text redaction placeholder type.</p>
    #   @return [String]
    class RedactionPlaceHolder < Struct.new(
      :redaction_place_holder_type,
      :redaction_place_holder_text,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource cannot be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Hypothetical identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Hypothetical type of the resource affected.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 log configuration.</p>
    # @!attribute bucket
    #   <p>The S3 bucket name where logs are delivered.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The S3 path prefix that determines where log files are stored.</p>
    #   @return [String]
    # @!attribute bucket_owner
    #   <p>The expected bucket owner of the target S3 bucket. The caller must have permissions to write to the target bucket.</p>
    #   @return [String]
    # @!attribute log_file_format
    #   <p>The format of the LogFile that is written to S3.</p>
    #   @return [String]
    # @!attribute folder_structure
    #   <p>The folder structure that defines the organizational structure for log files in S3.</p>
    #   @return [String]
    class S3LogConfiguration < Struct.new(
      :bucket,
      :key_prefix,
      :bucket_owner,
      :log_file_format,
      :folder_structure,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service quota has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> Type of the resource affected.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The originating quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a secure browser session.</p>
    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the session.</p>
    #   @return [String]
    # @!attribute client_ip_addresses
    #   <p>The IP address of the client.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the session.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the session.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the session.</p>
    #   @return [Time]
    class Session < Struct.new(
      :portal_arn,
      :session_id,
      :username,
      :client_ip_addresses,
      :status,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The session logger resource.</p>
    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger resource.</p>
    #   @return [String]
    # @!attribute event_filter
    #   <p>The filter that specifies which events to monitor.</p>
    #   @return [Types::EventFilter]
    # @!attribute log_configuration
    #   <p>The configuration that specifies where logs are fowarded.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute customer_managed_key
    #   <p>The custom managed key of the session logger.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the session logger.</p>
    #   @return [Hash<String, String>]
    # @!attribute associated_portal_arns
    #   <p>The associated portal ARN.</p>
    #   @return [Array<String>]
    # @!attribute display_name
    #   <p>The human-readable display name.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the session logger resource was created.</p>
    #   @return [Time]
    class SessionLogger < Struct.new(
      :session_logger_arn,
      :event_filter,
      :log_configuration,
      :customer_managed_key,
      :additional_encryption_context,
      :associated_portal_arns,
      :display_name,
      :creation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the session logger resource.</p>
    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger resource.</p>
    #   @return [String]
    # @!attribute log_configuration
    #   <p>The configuration that specifies where the logs are fowarded.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute display_name
    #   <p>The human-readable display name.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the session logger resource was created.</p>
    #   @return [Time]
    class SessionLoggerSummary < Struct.new(
      :session_logger_arn,
      :log_configuration,
      :display_name,
      :creation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a secure browser session.</p>
    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the session.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the session.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the session.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the session.</p>
    #   @return [Time]
    class SessionSummary < Struct.new(
      :portal_arn,
      :session_id,
      :username,
      :status,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tag.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There is a throttling error.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The originating quota.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Advice to clients on when the call can be safely retried.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>There are too many tags.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>Name of the resource affected.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>
    # @!attribute toolbar_type
    #   <p>The type of toolbar displayed during the session.</p>
    #   @return [String]
    # @!attribute visual_mode
    #   <p>The visual mode of the toolbar.</p>
    #   @return [String]
    # @!attribute hidden_toolbar_items
    #   <p>The list of toolbar items to be hidden.</p>
    #   @return [Array<String>]
    # @!attribute max_display_resolution
    #   <p>The maximum display resolution that is allowed for the session.</p>
    #   @return [String]
    class ToolbarConfiguration < Struct.new(
      :toolbar_type,
      :visual_mode,
      :hidden_toolbar_items,
      :max_display_resolution,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A trust store that can be associated with a web portal. A trust store contains
    #          certificate authority (CA) certificates. Once associated with a web portal, the browser in
    #          a streaming session will recognize certificates that have been issued using any of the CAs
    #          in the trust store. If your organization has internal websites that use certificates issued
    #          by private CAs, you should add the private CA certificate to the trust store. </p>
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this trust store is associated with.</p>
    #   @return [Array<String>]
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    class TrustStore < Struct.new(
      :associated_portal_arns,
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the trust store.</p>
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    class TrustStoreSummary < Struct.new(
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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

    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #   @return [String]
    # @!attribute browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class UpdateBrowserSettingsRequest < Struct.new(
      :browser_settings_arn,
      :browser_policy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_settings
    #   <p>The browser settings.</p>
    #   @return [Types::BrowserSettings]
    class UpdateBrowserSettingsResponse < Struct.new(
      :browser_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    #   @return [String]
    # @!attribute inline_redaction_configuration
    #   <p>The inline redaction configuration of the data protection settings that will be applied to all sessions.</p>
    #   @return [Types::InlineRedactionConfiguration]
    # @!attribute display_name
    #   <p>The display name of the data protection settings.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data protection settings.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class UpdateDataProtectionSettingsRequest < Struct.new(
      :data_protection_settings_arn,
      :inline_redaction_configuration,
      :display_name,
      :description,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_protection_settings
    #   <p>The data protection settings.</p>
    #   @return [Types::DataProtectionSettings]
    class UpdateDataProtectionSettingsResponse < Struct.new(
      :data_protection_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #   @return [String]
    # @!attribute identity_provider_name
    #   <p>The name of the identity provider.</p>
    #   @return [String]
    # @!attribute identity_provider_type
    #   <p>The type of the identity provider.</p>
    #   @return [String]
    # @!attribute identity_provider_details
    #   <p>The details of the identity provider. The following list describes the provider detail
    #            keys for each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPInit</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RequestSigningAlgorithm</code> (string) <i>optional</i>
    #                        - Only accepts <code>rsa-sha256</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EncryptedResponses</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class UpdateIdentityProviderRequest < Struct.new(
      :identity_provider_arn,
      :identity_provider_name,
      :identity_provider_type,
      :identity_provider_details,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider
    #   <p>The identity provider.</p>
    #   @return [Types::IdentityProvider]
    class UpdateIdentityProviderResponse < Struct.new(
      :identity_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the IP access settings.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the IP access settings.</p>
    #   @return [String]
    # @!attribute ip_rules
    #   <p>The updated IP rules of the IP access settings.</p>
    #   @return [Array<Types::IpRule>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class UpdateIpAccessSettingsRequest < Struct.new(
      :ip_access_settings_arn,
      :display_name,
      :description,
      :ip_rules,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_access_settings
    #   <p>The IP access settings.</p>
    #   @return [Types::IpAccessSettings]
    class UpdateIpAccessSettingsResponse < Struct.new(
      :ip_access_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to
    #            your VPC. At least two of these subnets must be in different availability zones.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your
    #            VPC.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class UpdateNetworkSettingsRequest < Struct.new(
      :network_settings_arn,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_settings
    #   <p>The network settings.</p>
    #   @return [Types::NetworkSettings]
    class UpdateNetworkSettingsResponse < Struct.new(
      :network_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the web portal. This is not visible to users who log into the web
    #            portal.</p>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The type of authentication integration points used when signing into the web portal.
    #            Defaults to <code>Standard</code>.</p>
    #            <p>
    #               <code>Standard</code> web portals are authenticated directly through your identity
    #            provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity
    #            provider with your web portal. User and group access to your web portal is controlled
    #            through your identity provider.</p>
    #            <p>
    #               <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources
    #            (including external identity provider integration), plus user and group access to your web
    #            portal, can be configured in the IAM Identity Center.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type and resources of the underlying instance.</p>
    #   @return [String]
    # @!attribute max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for the portal.</p>
    #   @return [Integer]
    class UpdatePortalRequest < Struct.new(
      :portal_arn,
      :display_name,
      :authentication_type,
      :instance_type,
      :max_concurrent_sessions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal
    #   <p>The web portal.</p>
    #   @return [Types::Portal]
    class UpdatePortalResponse < Struct.new(
      :portal,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_logger_arn
    #   <p>The ARN of the session logger to update.</p>
    #   @return [String]
    # @!attribute event_filter
    #   <p>The updated eventFilter.</p>
    #   @return [Types::EventFilter]
    # @!attribute log_configuration
    #   <p>The updated logConfiguration.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute display_name
    #   <p>The updated display name.</p>
    #   @return [String]
    class UpdateSessionLoggerRequest < Struct.new(
      :session_logger_arn,
      :event_filter,
      :log_configuration,
      :display_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_logger
    #   <p>The updated details of the session logger.</p>
    #   @return [Types::SessionLogger]
    class UpdateSessionLoggerResponse < Struct.new(
      :session_logger,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    # @!attribute certificates_to_add
    #   <p>A list of CA certificates to add to the trust store.</p>
    #   @return [Array<String>]
    # @!attribute certificates_to_delete
    #   <p>A list of CA certificates to delete from a trust store.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class UpdateTrustStoreRequest < Struct.new(
      :trust_store_arn,
      :certificates_to_add,
      :certificates_to_delete,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #   @return [String]
    class UpdateTrustStoreResponse < Struct.new(
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    #   @return [String]
    # @!attribute kinesis_stream_arn
    #   <p>The ARN of the Kinesis stream.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    class UpdateUserAccessLoggingSettingsRequest < Struct.new(
      :user_access_logging_settings_arn,
      :kinesis_stream_arn,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_access_logging_settings
    #   <p>The user access logging settings.</p>
    #   @return [Types::UserAccessLoggingSettings]
    class UpdateUserAccessLoggingSettingsResponse < Struct.new(
      :user_access_logging_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #   @return [String]
    # @!attribute copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #   @return [String]
    # @!attribute paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #   @return [String]
    # @!attribute download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #   @return [String]
    # @!attribute upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #   @return [String]
    # @!attribute print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #   @return [String]
    # @!attribute disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users
    #            disconnect.</p>
    #   @return [Integer]
    # @!attribute idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from
    #            their streaming session and the disconnect timeout interval begins.</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #   @return [String]
    # @!attribute cookie_synchronization_configuration
    #   <p>The configuration that specifies which cookies should be synchronized from the end
    #            user's local browser to the remote browser.</p>
    #            <p>If the allowlist and blocklist are empty, the configuration becomes null.</p>
    #   @return [Types::CookieSynchronizationConfiguration]
    # @!attribute deep_link_allowed
    #   <p>Specifies whether the user can use deep links that open automatically when connecting to
    #            a session.</p>
    #   @return [String]
    # @!attribute toolbar_configuration
    #   <p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>
    #   @return [Types::ToolbarConfiguration]
    class UpdateUserSettingsRequest < Struct.new(
      :user_settings_arn,
      :copy_allowed,
      :paste_allowed,
      :download_allowed,
      :upload_allowed,
      :print_allowed,
      :disconnect_timeout_in_minutes,
      :idle_disconnect_timeout_in_minutes,
      :client_token,
      :cookie_synchronization_configuration,
      :deep_link_allowed,
      :toolbar_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_settings
    #   <p>The user settings.</p>
    #   @return [Types::UserSettings]
    class UpdateUserSettingsResponse < Struct.new(
      :user_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A user access logging settings resource that can be associated with a web portal.</p>
    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    #   @return [String]
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this user access logging settings is associated
    #            with.</p>
    #   @return [Array<String>]
    # @!attribute kinesis_stream_arn
    #   <p>The ARN of the Kinesis stream.</p>
    #   @return [String]
    class UserAccessLoggingSettings < Struct.new(
      :user_access_logging_settings_arn,
      :associated_portal_arns,
      :kinesis_stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of user access logging settings.</p>
    # @!attribute user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    #   @return [String]
    # @!attribute kinesis_stream_arn
    #   <p>The ARN of the Kinesis stream.</p>
    #   @return [String]
    class UserAccessLoggingSettingsSummary < Struct.new(
      :user_access_logging_settings_arn,
      :kinesis_stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A user settings resource that can be associated with a web portal. Once associated with
    #          a web portal, user settings control how users can transfer data between a streaming session
    #          and the their local devices. </p>
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #   @return [String]
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this user settings is associated with.</p>
    #   @return [Array<String>]
    # @!attribute copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #   @return [String]
    # @!attribute paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #   @return [String]
    # @!attribute download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #   @return [String]
    # @!attribute upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #   @return [String]
    # @!attribute print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #   @return [String]
    # @!attribute disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users
    #            disconnect.</p>
    #   @return [Integer]
    # @!attribute idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from
    #            their streaming session and the disconnect timeout interval begins.</p>
    #   @return [Integer]
    # @!attribute cookie_synchronization_configuration
    #   <p>The configuration that specifies which cookies should be synchronized from the end
    #            user's local browser to the remote browser.</p>
    #   @return [Types::CookieSynchronizationConfiguration]
    # @!attribute customer_managed_key
    #   <p>The customer managed key used to encrypt sensitive information in the user
    #            settings.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the user settings.</p>
    #   @return [Hash<String, String>]
    # @!attribute deep_link_allowed
    #   <p>Specifies whether the user can use deep links that open automatically when connecting to
    #            a session.</p>
    #   @return [String]
    # @!attribute toolbar_configuration
    #   <p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>
    #   @return [Types::ToolbarConfiguration]
    class UserSettings < Struct.new(
      :user_settings_arn,
      :associated_portal_arns,
      :copy_allowed,
      :paste_allowed,
      :download_allowed,
      :upload_allowed,
      :print_allowed,
      :disconnect_timeout_in_minutes,
      :idle_disconnect_timeout_in_minutes,
      :cookie_synchronization_configuration,
      :customer_managed_key,
      :additional_encryption_context,
      :deep_link_allowed,
      :toolbar_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disconnect_timeout_in_minutes] = nil unless options.key?(:disconnect_timeout_in_minutes)
        options[:idle_disconnect_timeout_in_minutes] = nil unless options.key?(:idle_disconnect_timeout_in_minutes)
        super
      end
    end

    # <p>The summary of user settings.</p>
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #   @return [String]
    # @!attribute copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #   @return [String]
    # @!attribute paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #   @return [String]
    # @!attribute download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #   @return [String]
    # @!attribute upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #   @return [String]
    # @!attribute print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #   @return [String]
    # @!attribute disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users
    #            disconnect.</p>
    #   @return [Integer]
    # @!attribute idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from
    #            their streaming session and the disconnect timeout interval begins.</p>
    #   @return [Integer]
    # @!attribute cookie_synchronization_configuration
    #   <p>The configuration that specifies which cookies should be synchronized from the end
    #            user's local browser to the remote browser.</p>
    #   @return [Types::CookieSynchronizationConfiguration]
    # @!attribute deep_link_allowed
    #   <p>Specifies whether the user can use deep links that open automatically when connecting to
    #            a session.</p>
    #   @return [String]
    # @!attribute toolbar_configuration
    #   <p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>
    #   @return [Types::ToolbarConfiguration]
    class UserSettingsSummary < Struct.new(
      :user_settings_arn,
      :copy_allowed,
      :paste_allowed,
      :download_allowed,
      :upload_allowed,
      :print_allowed,
      :disconnect_timeout_in_minutes,
      :idle_disconnect_timeout_in_minutes,
      :cookie_synchronization_configuration,
      :deep_link_allowed,
      :toolbar_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disconnect_timeout_in_minutes] = nil unless options.key?(:disconnect_timeout_in_minutes)
        options[:idle_disconnect_timeout_in_minutes] = nil unless options.key?(:idle_disconnect_timeout_in_minutes)
        super
      end
    end

    # <p>There is a validation error.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>Reason the request failed validation</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field that caused the error.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a field passed inside a request that resulted in an exception.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message describing why the field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
