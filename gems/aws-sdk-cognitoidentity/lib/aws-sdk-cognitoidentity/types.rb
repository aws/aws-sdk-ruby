# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentity
  # This module contains the types returned by client operations.
  module Types

    # <p>A provider representing an Amazon Cognito user pool and its client ID.</p>
    # @!attribute provider_name
    #   <p>The provider name for an Amazon Cognito user pool. For example,
    #               <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789</code>.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The client ID for the Amazon Cognito user pool.</p>
    #   @return [String]
    # @!attribute server_side_token_check
    #   <p>TRUE if server-side token validation is enabled for the identity provider’s
    #            token.</p>
    #            <p>Once you set <code>ServerSideTokenCheck</code> to TRUE for an identity pool, that
    #            identity pool will check with the integrated user pools to make sure that the user has not
    #            been globally signed out or deleted before the identity pool provides an OIDC token or
    #               Amazon Web Services credentials for the user.</p>
    #            <p>If the user is signed out or deleted, the identity pool will return a 400 Not
    #            Authorized error.</p>
    #   @return [Boolean]
    class CognitoIdentityProvider < Struct.new(
      :provider_name,
      :client_id,
      :server_side_token_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:server_side_token_check] = nil unless options.key?(:server_side_token_check)
        super
      end
    end

    # <p>Thrown if there are parallel requests to modify a resource.</p>
    # @!attribute message
    #   <p>The message returned by a ConcurrentModificationException.</p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the CreateIdentityPool action.</p>
    # @!attribute identity_pool_name
    #   <p>A string that you provide.</p>
    #   @return [String]
    # @!attribute allow_unauthenticated_identities
    #   <p>TRUE if the identity pool supports unauthenticated logins.</p>
    #   @return [Boolean]
    # @!attribute allow_classic_flow
    #   <p>Enables or disables the Basic (Classic) authentication flow. For more information, see
    #               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity Pools (Federated Identities) Authentication Flow</a> in the
    #               <i>Amazon Cognito Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute supported_login_providers
    #   <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
    #   @return [Hash<String, String>]
    # @!attribute developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users. This name acts as a
    #            placeholder that allows your backend and the Cognito service to communicate about the
    #            developer provider. For the <code>DeveloperProviderName</code>, you can use letters as well
    #            as period (<code>.</code>), underscore (<code>_</code>), and dash
    #            (<code>-</code>).</p>
    #            <p>Once you have set a developer provider name, you cannot change it. Please take care
    #            in setting this parameter.</p>
    #   @return [String]
    # @!attribute open_id_connect_provider_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the OpenID Connect providers.</p>
    #   @return [Array<String>]
    # @!attribute cognito_identity_providers
    #   <p>An array of Amazon Cognito user pools and their client IDs.</p>
    #   @return [Array<Types::CognitoIdentityProvider>]
    # @!attribute saml_provider_ar_ns
    #   <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
    #            pool.</p>
    #   @return [Array<String>]
    # @!attribute identity_pool_tags
    #   <p>Tags to assign to the identity pool. A tag is a label that you can apply to identity
    #            pools to categorize and manage them in different ways, such as by purpose, owner,
    #            environment, or other criteria.</p>
    #   @return [Hash<String, String>]
    class CreateIdentityPoolInput < Struct.new(
      :identity_pool_name,
      :allow_unauthenticated_identities,
      :allow_classic_flow,
      :supported_login_providers,
      :developer_provider_name,
      :open_id_connect_provider_ar_ns,
      :cognito_identity_providers,
      :saml_provider_ar_ns,
      :identity_pool_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an Amazon Cognito identity pool.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute identity_pool_name
    #   <p>A string that you provide.</p>
    #   @return [String]
    # @!attribute allow_unauthenticated_identities
    #   <p>TRUE if the identity pool supports unauthenticated logins.</p>
    #   @return [Boolean]
    # @!attribute allow_classic_flow
    #   <p>Enables or disables the Basic (Classic) authentication flow. For more information, see
    #               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity Pools (Federated Identities) Authentication Flow</a> in the
    #               <i>Amazon Cognito Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute supported_login_providers
    #   <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
    #   @return [Hash<String, String>]
    # @!attribute developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users.</p>
    #   @return [String]
    # @!attribute open_id_connect_provider_ar_ns
    #   <p>The ARNs of the OpenID Connect providers.</p>
    #   @return [Array<String>]
    # @!attribute cognito_identity_providers
    #   <p>A list representing an Amazon Cognito user pool and its client ID.</p>
    #   @return [Array<Types::CognitoIdentityProvider>]
    # @!attribute saml_provider_ar_ns
    #   <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
    #            pool.</p>
    #   @return [Array<String>]
    # @!attribute identity_pool_tags
    #   <p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
    #            identity pools to categorize and manage them in different ways, such as by purpose, owner,
    #            environment, or other criteria.</p>
    #   @return [Hash<String, String>]
    class CreateIdentityPoolOutput < Struct.new(
      :identity_pool_id,
      :identity_pool_name,
      :allow_unauthenticated_identities,
      :allow_classic_flow,
      :supported_login_providers,
      :developer_provider_name,
      :open_id_connect_provider_ar_ns,
      :cognito_identity_providers,
      :saml_provider_ar_ns,
      :identity_pool_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_unauthenticated_identities] = false unless options.key?(:allow_unauthenticated_identities)
        super
      end
    end

    # <p>Credentials for the provided identity ID.</p>
    # @!attribute access_key_id
    #   <p>The Access Key portion of the credentials.</p>
    #   @return [String]
    # @!attribute secret_key
    #   <p>The Secret Access Key portion of the credentials</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The Session Token portion of the credentials</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The date at which these credentials will expire.</p>
    #   @return [Time]
    class Credentials < Struct.new(
      :access_key_id,
      :secret_key,
      :session_token,
      :expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the <code>DeleteIdentities</code> action.</p>
    # @!attribute identity_ids_to_delete
    #   <p>A list of 1-60 identities that you want to delete.</p>
    #   @return [Array<String>]
    class DeleteIdentitiesInput < Struct.new(
      :identity_ids_to_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned in response to a successful <code>DeleteIdentities</code>
    #          operation.</p>
    # @!attribute unprocessed_identity_ids
    #   <p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and
    #            IdentityId.</p>
    #   @return [Array<Types::UnprocessedIdentityId>]
    class DeleteIdentitiesResponse < Struct.new(
      :unprocessed_identity_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the DeleteIdentityPool action.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    class DeleteIdentityPoolInput < Struct.new(
      :identity_pool_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the <code>DescribeIdentity</code> action.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    class DescribeIdentityInput < Struct.new(
      :identity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the identity.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute logins
    #   <p>The provider names.</p>
    #   @return [Array<String>]
    # @!attribute creation_date
    #   <p>Date on which the identity was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>Date on which the identity was last modified.</p>
    #   @return [Time]
    class DescribeIdentityOutput < Struct.new(
      :identity_id,
      :logins,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the DescribeIdentityPool action.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    class DescribeIdentityPoolInput < Struct.new(
      :identity_pool_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an Amazon Cognito identity pool.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute identity_pool_name
    #   <p>A string that you provide.</p>
    #   @return [String]
    # @!attribute allow_unauthenticated_identities
    #   <p>TRUE if the identity pool supports unauthenticated logins.</p>
    #   @return [Boolean]
    # @!attribute allow_classic_flow
    #   <p>Enables or disables the Basic (Classic) authentication flow. For more information, see
    #               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity Pools (Federated Identities) Authentication Flow</a> in the
    #               <i>Amazon Cognito Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute supported_login_providers
    #   <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
    #   @return [Hash<String, String>]
    # @!attribute developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users.</p>
    #   @return [String]
    # @!attribute open_id_connect_provider_ar_ns
    #   <p>The ARNs of the OpenID Connect providers.</p>
    #   @return [Array<String>]
    # @!attribute cognito_identity_providers
    #   <p>A list representing an Amazon Cognito user pool and its client ID.</p>
    #   @return [Array<Types::CognitoIdentityProvider>]
    # @!attribute saml_provider_ar_ns
    #   <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
    #            pool.</p>
    #   @return [Array<String>]
    # @!attribute identity_pool_tags
    #   <p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
    #            identity pools to categorize and manage them in different ways, such as by purpose, owner,
    #            environment, or other criteria.</p>
    #   @return [Hash<String, String>]
    class DescribeIdentityPoolOutput < Struct.new(
      :identity_pool_id,
      :identity_pool_name,
      :allow_unauthenticated_identities,
      :allow_classic_flow,
      :supported_login_providers,
      :developer_provider_name,
      :open_id_connect_provider_ar_ns,
      :cognito_identity_providers,
      :saml_provider_ar_ns,
      :identity_pool_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_unauthenticated_identities] = false unless options.key?(:allow_unauthenticated_identities)
        super
      end
    end

    # <p>The provided developer user identifier is already registered with Cognito under a
    #          different identity ID.</p>
    # @!attribute message
    #   <p>This developer user identifier is already registered with Cognito.</p>
    #   @return [String]
    class DeveloperUserAlreadyRegisteredException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception thrown when a dependent service such as Facebook or Twitter is not
    #          responding</p>
    # @!attribute message
    #   <p>The message returned by an ExternalServiceException</p>
    #   @return [String]
    class ExternalServiceException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the <code>GetCredentialsForIdentity</code> action.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. The
    #            name-value pair will follow the syntax "provider_name":
    #            "provider_user_identifier".</p>
    #            <p>Logins should not be specified when trying to get credentials for an unauthenticated
    #            identity.</p>
    #            <p>The Logins parameter is required when using identities associated with external
    #            identity providers such as Facebook. For examples of <code>Logins</code> maps, see the code
    #            examples in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html">External Identity
    #               Providers</a> section of the Amazon Cognito Developer Guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute custom_role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were
    #            received in the token from the identity provider. For example, a SAML-based identity
    #            provider. This parameter is optional for identity providers that do not support role
    #            customization.</p>
    #   @return [String]
    class GetCredentialsForIdentityInput < Struct.new(
      :identity_id,
      :logins,
      :custom_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned in response to a successful <code>GetCredentialsForIdentity</code>
    #          operation.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>Credentials for the provided identity ID.</p>
    #   @return [Types::Credentials]
    class GetCredentialsForIdentityResponse < Struct.new(
      :identity_id,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the GetId action.</p>
    # @!attribute account_id
    #   <p>A standard Amazon Web Services account ID (9+ digits).</p>
    #   @return [String]
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. The
    #            available provider names for <code>Logins</code> are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Facebook: <code>graph.facebook.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Cognito user pool:
    #                     <code>cognito-idp.<region>.amazonaws.com/<YOUR_USER_POOL_ID></code>,
    #                  for example, <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789</code>.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>Google: <code>accounts.google.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon: <code>www.amazon.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Twitter: <code>api.twitter.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Digits: <code>www.digits.com</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class GetIdInput < Struct.new(
      :account_id,
      :identity_pool_id,
      :logins,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned in response to a GetId request.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    class GetIdResponse < Struct.new(
      :identity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the <code>GetIdentityPoolRoles</code> action.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    class GetIdentityPoolRolesInput < Struct.new(
      :identity_pool_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned in response to a successful <code>GetIdentityPoolRoles</code>
    #          operation.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute roles
    #   <p>The map of roles associated with this pool. Currently only authenticated and
    #            unauthenticated roles are supported.</p>
    #   @return [Hash<String, String>]
    # @!attribute role_mappings
    #   <p>How users for a specific identity provider are to mapped to roles. This is a
    #               String-to-<a>RoleMapping</a> object map. The string identifies the identity
    #            provider, for example, <code>graph.facebook.com</code> or
    #               <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id</code>.</p>
    #   @return [Hash<String, Types::RoleMapping>]
    class GetIdentityPoolRolesResponse < Struct.new(
      :identity_pool_id,
      :roles,
      :role_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the <code>GetOpenIdTokenForDeveloperIdentity</code> action.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. Each
    #            name-value pair represents a user from a public provider or developer provider. If the user
    #            is from a developer provider, the name-value pair will follow the syntax
    #               <code>"developer_provider_name": "developer_user_identifier"</code>. The developer
    #            provider is the "domain" by which Cognito will refer to your users; you provided this
    #            domain while creating/updating the identity pool. The developer user identifier is an
    #            identifier from your backend that uniquely identifies a user. When you create an identity
    #            pool, you can specify the supported logins.</p>
    #   @return [Hash<String, String>]
    # @!attribute principal_tags
    #   <p>Use this operation to configure attribute mappings for custom providers. </p>
    #   @return [Hash<String, String>]
    # @!attribute token_duration
    #   <p>The expiration time of the token, in seconds. You can specify a custom expiration
    #            time for the token so that you can cache it. If you don't provide an expiration time, the
    #            token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary
    #               Amazon Web Services credentials, which are valid for a maximum of one hour. The maximum
    #            token duration you can set is 24 hours. You should take care in setting the expiration time
    #            for a token, as there are significant security implications: an attacker could use a leaked
    #            token to access your Amazon Web Services resources for the token's duration.</p>
    #            <note>
    #               <p>Please provide for a small grace period, usually no more than 5 minutes, to
    #               account for clock skew.</p>
    #            </note>
    #   @return [Integer]
    class GetOpenIdTokenForDeveloperIdentityInput < Struct.new(
      :identity_pool_id,
      :identity_id,
      :logins,
      :principal_tags,
      :token_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned in response to a successful <code>GetOpenIdTokenForDeveloperIdentity</code>
    #          request.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute token
    #   <p>An OpenID token.</p>
    #   @return [String]
    class GetOpenIdTokenForDeveloperIdentityResponse < Struct.new(
      :identity_id,
      :token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the GetOpenIdToken action.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. When
    #            using graph.facebook.com and www.amazon.com, supply the access_token returned from the
    #            provider's authflow. For accounts.google.com, an Amazon Cognito user pool provider, or any
    #            other OpenID Connect provider, always include the <code>id_token</code>.</p>
    #   @return [Hash<String, String>]
    class GetOpenIdTokenInput < Struct.new(
      :identity_id,
      :logins,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned in response to a successful GetOpenIdToken request.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID. Note that the IdentityId returned may
    #            not match the one passed on input.</p>
    #   @return [String]
    # @!attribute token
    #   <p>An OpenID token, valid for 10 minutes.</p>
    #   @return [String]
    class GetOpenIdTokenResponse < Struct.new(
      :identity_id,
      :token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_pool_id
    #   <p>You can use this operation to get the ID of the Identity Pool you setup attribute
    #            mappings for.</p>
    #   @return [String]
    # @!attribute identity_provider_name
    #   <p>You can use this operation to get the provider name.</p>
    #   @return [String]
    class GetPrincipalTagAttributeMapInput < Struct.new(
      :identity_pool_id,
      :identity_provider_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_pool_id
    #   <p>You can use this operation to get the ID of the Identity Pool you setup attribute
    #            mappings for.</p>
    #   @return [String]
    # @!attribute identity_provider_name
    #   <p>You can use this operation to get the provider name.</p>
    #   @return [String]
    # @!attribute use_defaults
    #   <p>You can use this operation to list </p>
    #   @return [Boolean]
    # @!attribute principal_tags
    #   <p>You can use this operation to add principal tags. The
    #            <code>PrincipalTags</code>operation enables you to reference user attributes in your
    #               IAM permissions policy.</p>
    #   @return [Hash<String, String>]
    class GetPrincipalTagAttributeMapResponse < Struct.new(
      :identity_pool_id,
      :identity_provider_name,
      :use_defaults,
      :principal_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the identity.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute logins
    #   <p>The provider names.</p>
    #   @return [Array<String>]
    # @!attribute creation_date
    #   <p>Date on which the identity was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>Date on which the identity was last modified.</p>
    #   @return [Time]
    class IdentityDescription < Struct.new(
      :identity_id,
      :logins,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the identity pool.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute identity_pool_name
    #   <p>A string that you provide.</p>
    #   @return [String]
    class IdentityPoolShortDescription < Struct.new(
      :identity_pool_id,
      :identity_pool_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when the service encounters an error during processing the request.</p>
    # @!attribute message
    #   <p>The message returned by an InternalErrorException.</p>
    #   @return [String]
    class InternalErrorException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If you provided authentication information in the request, the identity pool has no
    #          authenticated role configured, or STS returned an error response to the
    #          request to assume the authenticated role from the identity pool. If you provided no
    #          authentication information in the request, the identity pool has no unauthenticated role
    #          configured, or STS returned an error response to the request to assume the
    #          unauthenticated role from the identity pool.</p>
    #          <p>Your role trust policy must grant <code>AssumeRoleWithWebIdentity</code> permissions to <code>cognito-identity.amazonaws.com</code>.</p>
    # @!attribute message
    #   <p>The message returned for an <code>InvalidIdentityPoolConfigurationException</code>
    #            </p>
    #   @return [String]
    class InvalidIdentityPoolConfigurationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown for missing or bad input parameter(s).</p>
    # @!attribute message
    #   <p>The message returned by an InvalidParameterException.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when the total number of user pools has exceeded a preset limit.</p>
    # @!attribute message
    #   <p>The message returned by a LimitExceededException.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the ListIdentities action.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of identities to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    # @!attribute hide_disabled
    #   <p>An optional boolean parameter that allows you to hide disabled identities. If
    #            omitted, the ListIdentities API will include disabled identities in the response.</p>
    #   @return [Boolean]
    class ListIdentitiesInput < Struct.new(
      :identity_pool_id,
      :max_results,
      :next_token,
      :hide_disabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response to a ListIdentities request.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute identities
    #   <p>An object containing a set of identities and associated mappings.</p>
    #   @return [Array<Types::IdentityDescription>]
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    class ListIdentitiesResponse < Struct.new(
      :identity_pool_id,
      :identities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the ListIdentityPools action.</p>
    # @!attribute max_results
    #   <p>The maximum number of identities to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    class ListIdentityPoolsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a successful ListIdentityPools action.</p>
    # @!attribute identity_pools
    #   <p>The identity pools returned by the ListIdentityPools action.</p>
    #   @return [Array<Types::IdentityPoolShortDescription>]
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    class ListIdentityPoolsResponse < Struct.new(
      :identity_pools,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the identity pool that the tags are assigned
    #            to.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags that are assigned to the identity pool.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the <code>LookupDeveloperIdentityInput</code> action.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute developer_user_identifier
    #   <p>A unique ID used by your backend authentication process to identify a user.
    #            Typically, a developer identity provider would issue many developer user identifiers, in
    #            keeping with the number of users.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of identities to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token. The first call you make will have <code>NextToken</code> set to
    #            null. After that the service will return <code>NextToken</code> values as needed. For
    #            example, let's say you make a request with <code>MaxResults</code> set to 10, and there are
    #            20 matches in the database. The service will return a pagination token as a part of the
    #            response. This token can be used to call the API again and get results starting from the
    #            11th match.</p>
    #   @return [String]
    class LookupDeveloperIdentityInput < Struct.new(
      :identity_pool_id,
      :identity_id,
      :developer_user_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned in response to a successful <code>LookupDeveloperIdentity</code>
    #          action.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute developer_user_identifier_list
    #   <p>This is the list of developer user identifiers associated with an identity ID.
    #            Cognito supports the association of multiple developer user identifiers with an identity
    #            ID.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A pagination token. The first call you make will have <code>NextToken</code> set to
    #            null. After that the service will return <code>NextToken</code> values as needed. For
    #            example, let's say you make a request with <code>MaxResults</code> set to 10, and there are
    #            20 matches in the database. The service will return a pagination token as a part of the
    #            response. This token can be used to call the API again and get results starting from the
    #            11th match.</p>
    #   @return [String]
    class LookupDeveloperIdentityResponse < Struct.new(
      :identity_id,
      :developer_user_identifier_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule that maps a claim name, a claim value, and a match type to a role
    #          ARN.</p>
    # @!attribute claim
    #   <p>The claim name that must be present in the token, for example, "isAdmin" or
    #            "paid".</p>
    #   @return [String]
    # @!attribute match_type
    #   <p>The match condition that specifies how closely the claim value in the IdP token must
    #            match <code>Value</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A brief string that the claim must match, for example, "paid" or "yes".</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role ARN.</p>
    #   @return [String]
    class MappingRule < Struct.new(
      :claim,
      :match_type,
      :value,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the <code>MergeDeveloperIdentities</code> action.</p>
    # @!attribute source_user_identifier
    #   <p>User identifier for the source user. The value should be a
    #               <code>DeveloperUserIdentifier</code>.</p>
    #   @return [String]
    # @!attribute destination_user_identifier
    #   <p>User identifier for the destination user. The value should be a
    #               <code>DeveloperUserIdentifier</code>.</p>
    #   @return [String]
    # @!attribute developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users. This is a (pseudo) domain
    #            name that you provide while creating an identity pool. This name acts as a placeholder that
    #            allows your backend and the Cognito service to communicate about the developer provider.
    #            For the <code>DeveloperProviderName</code>, you can use letters as well as period (.),
    #            underscore (_), and dash (-).</p>
    #   @return [String]
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    class MergeDeveloperIdentitiesInput < Struct.new(
      :source_user_identifier,
      :destination_user_identifier,
      :developer_provider_name,
      :identity_pool_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned in response to a successful <code>MergeDeveloperIdentities</code>
    #          action.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    class MergeDeveloperIdentitiesResponse < Struct.new(
      :identity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when a user is not authorized to access the requested resource.</p>
    # @!attribute message
    #   <p>The message returned by a NotAuthorizedException</p>
    #   @return [String]
    class NotAuthorizedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when a user tries to use a login which is already linked to another
    #          account.</p>
    # @!attribute message
    #   <p>The message returned by a ResourceConflictException.</p>
    #   @return [String]
    class ResourceConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when the requested resource (for example, a dataset or record) does not
    #          exist.</p>
    # @!attribute message
    #   <p>The message returned by a ResourceNotFoundException.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A role mapping.</p>
    # @!attribute type
    #   <p>The role mapping type. Token will use <code>cognito:roles</code> and
    #               <code>cognito:preferred_role</code> claims from the Cognito identity provider token to
    #            map groups to roles. Rules will attempt to match claims from the token to map to a
    #            role.</p>
    #   @return [String]
    # @!attribute ambiguous_role_resolution
    #   <p>If you specify Token or Rules as the <code>Type</code>,
    #               <code>AmbiguousRoleResolution</code> is required.</p>
    #            <p>Specifies the action to be taken if either no rules match the claim value for the
    #               <code>Rules</code> type, or there is no <code>cognito:preferred_role</code> claim and
    #            there are multiple <code>cognito:roles</code> matches for the <code>Token</code>
    #            type.</p>
    #   @return [String]
    # @!attribute rules_configuration
    #   <p>The rules to be used for mapping users to roles.</p>
    #            <p>If you specify Rules as the role mapping type, <code>RulesConfiguration</code> is
    #            required.</p>
    #   @return [Types::RulesConfigurationType]
    class RoleMapping < Struct.new(
      :type,
      :ambiguous_role_resolution,
      :rules_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for rules.</p>
    # @!attribute rules
    #   <p>An array of rules. You can specify up to 25 rules per identity provider.</p>
    #            <p>Rules are evaluated in order. The first one to match specifies the role.</p>
    #   @return [Array<Types::MappingRule>]
    class RulesConfigurationType < Struct.new(
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the <code>SetIdentityPoolRoles</code> action.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute roles
    #   <p>The map of roles associated with this pool. For a given role, the key will be either
    #            "authenticated" or "unauthenticated" and the value will be the Role ARN.</p>
    #   @return [Hash<String, String>]
    # @!attribute role_mappings
    #   <p>How users for a specific identity provider are to mapped to roles. This is a string
    #            to <a>RoleMapping</a> object map. The string identifies the identity provider,
    #            for example, <code>graph.facebook.com</code> or
    #               <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id</code>.</p>
    #            <p>Up to 25 rules can be specified per identity provider.</p>
    #   @return [Hash<String, Types::RoleMapping>]
    class SetIdentityPoolRolesInput < Struct.new(
      :identity_pool_id,
      :roles,
      :role_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_pool_id
    #   <p>The ID of the Identity Pool you want to set attribute mappings for.</p>
    #   @return [String]
    # @!attribute identity_provider_name
    #   <p>The provider name you want to use for attribute mappings.</p>
    #   @return [String]
    # @!attribute use_defaults
    #   <p>You can use this operation to use default (username and clientID) attribute
    #            mappings.</p>
    #   @return [Boolean]
    # @!attribute principal_tags
    #   <p>You can use this operation to add principal tags.</p>
    #   @return [Hash<String, String>]
    class SetPrincipalTagAttributeMapInput < Struct.new(
      :identity_pool_id,
      :identity_provider_name,
      :use_defaults,
      :principal_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_pool_id
    #   <p>The ID of the Identity Pool you want to set attribute mappings for.</p>
    #   @return [String]
    # @!attribute identity_provider_name
    #   <p>The provider name you want to use for attribute mappings.</p>
    #   @return [String]
    # @!attribute use_defaults
    #   <p>You can use this operation to select default (username and clientID) attribute
    #            mappings.</p>
    #   @return [Boolean]
    # @!attribute principal_tags
    #   <p>You can use this operation to add principal tags. The
    #            <code>PrincipalTags</code>operation enables you to reference user attributes in your
    #               IAM permissions policy.</p>
    #   @return [Hash<String, String>]
    class SetPrincipalTagAttributeMapResponse < Struct.new(
      :identity_pool_id,
      :identity_provider_name,
      :use_defaults,
      :principal_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the identity pool.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the identity pool.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
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

    # <p>Thrown when a request is throttled.</p>
    # @!attribute message
    #   <p>Message returned by a TooManyRequestsException</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the <code>UnlinkDeveloperIdentity</code> action.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users.</p>
    #   @return [String]
    # @!attribute developer_user_identifier
    #   <p>A unique ID used by your backend authentication process to identify a user.</p>
    #   @return [String]
    class UnlinkDeveloperIdentityInput < Struct.new(
      :identity_id,
      :identity_pool_id,
      :developer_provider_name,
      :developer_user_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input to the UnlinkIdentity action.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute logins
    #   <p>A set of optional name-value pairs that map provider names to provider
    #            tokens.</p>
    #   @return [Hash<String, String>]
    # @!attribute logins_to_remove
    #   <p>Provider names to unlink from this identity.</p>
    #   @return [Array<String>]
    class UnlinkIdentityInput < Struct.new(
      :identity_id,
      :logins,
      :logins_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and
    #          IdentityId.</p>
    # @!attribute identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code indicating the type of error that occurred.</p>
    #   @return [String]
    class UnprocessedIdentityId < Struct.new(
      :identity_id,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the identity pool.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove from the user pool.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
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

    # <p>An object representing an Amazon Cognito identity pool.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute identity_pool_name
    #   <p>A string that you provide.</p>
    #   @return [String]
    # @!attribute allow_unauthenticated_identities
    #   <p>TRUE if the identity pool supports unauthenticated logins.</p>
    #   @return [Boolean]
    # @!attribute allow_classic_flow
    #   <p>Enables or disables the Basic (Classic) authentication flow. For more information, see
    #               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity Pools (Federated Identities) Authentication Flow</a> in the
    #               <i>Amazon Cognito Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute supported_login_providers
    #   <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
    #   @return [Hash<String, String>]
    # @!attribute developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users.</p>
    #   @return [String]
    # @!attribute open_id_connect_provider_ar_ns
    #   <p>The ARNs of the OpenID Connect providers.</p>
    #   @return [Array<String>]
    # @!attribute cognito_identity_providers
    #   <p>A list representing an Amazon Cognito user pool and its client ID.</p>
    #   @return [Array<Types::CognitoIdentityProvider>]
    # @!attribute saml_provider_ar_ns
    #   <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
    #            pool.</p>
    #   @return [Array<String>]
    # @!attribute identity_pool_tags
    #   <p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
    #            identity pools to categorize and manage them in different ways, such as by purpose, owner,
    #            environment, or other criteria.</p>
    #   @return [Hash<String, String>]
    class UpdateIdentityPoolInput < Struct.new(
      :identity_pool_id,
      :identity_pool_name,
      :allow_unauthenticated_identities,
      :allow_classic_flow,
      :supported_login_providers,
      :developer_provider_name,
      :open_id_connect_provider_ar_ns,
      :cognito_identity_providers,
      :saml_provider_ar_ns,
      :identity_pool_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an Amazon Cognito identity pool.</p>
    # @!attribute identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #   @return [String]
    # @!attribute identity_pool_name
    #   <p>A string that you provide.</p>
    #   @return [String]
    # @!attribute allow_unauthenticated_identities
    #   <p>TRUE if the identity pool supports unauthenticated logins.</p>
    #   @return [Boolean]
    # @!attribute allow_classic_flow
    #   <p>Enables or disables the Basic (Classic) authentication flow. For more information, see
    #               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity Pools (Federated Identities) Authentication Flow</a> in the
    #               <i>Amazon Cognito Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute supported_login_providers
    #   <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
    #   @return [Hash<String, String>]
    # @!attribute developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users.</p>
    #   @return [String]
    # @!attribute open_id_connect_provider_ar_ns
    #   <p>The ARNs of the OpenID Connect providers.</p>
    #   @return [Array<String>]
    # @!attribute cognito_identity_providers
    #   <p>A list representing an Amazon Cognito user pool and its client ID.</p>
    #   @return [Array<Types::CognitoIdentityProvider>]
    # @!attribute saml_provider_ar_ns
    #   <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
    #            pool.</p>
    #   @return [Array<String>]
    # @!attribute identity_pool_tags
    #   <p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
    #            identity pools to categorize and manage them in different ways, such as by purpose, owner,
    #            environment, or other criteria.</p>
    #   @return [Hash<String, String>]
    class UpdateIdentityPoolOutput < Struct.new(
      :identity_pool_id,
      :identity_pool_name,
      :allow_unauthenticated_identities,
      :allow_classic_flow,
      :supported_login_providers,
      :developer_provider_name,
      :open_id_connect_provider_ar_ns,
      :cognito_identity_providers,
      :saml_provider_ar_ns,
      :identity_pool_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_unauthenticated_identities] = false unless options.key?(:allow_unauthenticated_identities)
        super
      end
    end

  end
end
