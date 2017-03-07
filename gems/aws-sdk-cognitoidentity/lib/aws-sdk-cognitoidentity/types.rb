# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CognitoIdentity
  module Types

    # A provider representing an Amazon Cognito Identity User Pool and its
    # client ID.
    #
    # @note When making an API call, you may pass CognitoIdentityProvider
    #   data as a hash:
    #
    #       {
    #         provider_name: "CognitoIdentityProviderName",
    #         client_id: "CognitoIdentityProviderClientId",
    #         server_side_token_check: false,
    #       }
    #
    # @!attribute [rw] provider_name
    #   The provider name for an Amazon Cognito Identity User Pool. For
    #   example, `cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789`.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID for the Amazon Cognito Identity User Pool.
    #   @return [String]
    #
    # @!attribute [rw] server_side_token_check
    #   TRUE if server-side token validation is enabled for the identity
    #   provider’s token.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/CognitoIdentityProvider AWS API Documentation
    #
    class CognitoIdentityProvider < Struct.new(
      :provider_name,
      :client_id,
      :server_side_token_check)
      include Aws::Structure
    end

    # Input to the CreateIdentityPool action.
    #
    # @note When making an API call, you may pass CreateIdentityPoolInput
    #   data as a hash:
    #
    #       {
    #         identity_pool_name: "IdentityPoolName", # required
    #         allow_unauthenticated_identities: false, # required
    #         supported_login_providers: {
    #           "IdentityProviderName" => "IdentityProviderId",
    #         },
    #         developer_provider_name: "DeveloperProviderName",
    #         open_id_connect_provider_arns: ["ARNString"],
    #         cognito_identity_providers: [
    #           {
    #             provider_name: "CognitoIdentityProviderName",
    #             client_id: "CognitoIdentityProviderClientId",
    #             server_side_token_check: false,
    #           },
    #         ],
    #         saml_provider_arns: ["ARNString"],
    #       }
    #
    # @!attribute [rw] identity_pool_name
    #   A string that you provide.
    #   @return [String]
    #
    # @!attribute [rw] allow_unauthenticated_identities
    #   TRUE if the identity pool supports unauthenticated logins.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_login_providers
    #   Optional key:value pairs mapping provider names to provider app IDs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] developer_provider_name
    #   The "domain" by which Cognito will refer to your users. This name
    #   acts as a placeholder that allows your backend and the Cognito
    #   service to communicate about the developer provider. For the
    #   `DeveloperProviderName`, you can use letters as well as period
    #   (`.`), underscore (`_`), and dash (`-`).
    #
    #   Once you have set a developer provider name, you cannot change it.
    #   Please take care in setting this parameter.
    #   @return [String]
    #
    # @!attribute [rw] open_id_connect_provider_arns
    #   A list of OpendID Connect provider ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cognito_identity_providers
    #   An array of Amazon Cognito Identity user pools and their client IDs.
    #   @return [Array<Types::CognitoIdentityProvider>]
    #
    # @!attribute [rw] saml_provider_arns
    #   An array of Amazon Resource Names (ARNs) of the SAML provider for
    #   your identity pool.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/CreateIdentityPoolInput AWS API Documentation
    #
    class CreateIdentityPoolInput < Struct.new(
      :identity_pool_name,
      :allow_unauthenticated_identities,
      :supported_login_providers,
      :developer_provider_name,
      :open_id_connect_provider_arns,
      :cognito_identity_providers,
      :saml_provider_arns)
      include Aws::Structure
    end

    # Credentials for the provided identity ID.
    #
    # @!attribute [rw] access_key_id
    #   The Access Key portion of the credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_key
    #   The Secret Access Key portion of the credentials
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The Session Token portion of the credentials
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The date at which these credentials will expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/Credentials AWS API Documentation
    #
    class Credentials < Struct.new(
      :access_key_id,
      :secret_key,
      :session_token,
      :expiration)
      include Aws::Structure
    end

    # Input to the `DeleteIdentities` action.
    #
    # @note When making an API call, you may pass DeleteIdentitiesInput
    #   data as a hash:
    #
    #       {
    #         identity_ids_to_delete: ["IdentityId"], # required
    #       }
    #
    # @!attribute [rw] identity_ids_to_delete
    #   A list of 1-60 identities that you want to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DeleteIdentitiesInput AWS API Documentation
    #
    class DeleteIdentitiesInput < Struct.new(
      :identity_ids_to_delete)
      include Aws::Structure
    end

    # Returned in response to a successful `DeleteIdentities` operation.
    #
    # @!attribute [rw] unprocessed_identity_ids
    #   An array of UnprocessedIdentityId objects, each of which contains an
    #   ErrorCode and IdentityId.
    #   @return [Array<Types::UnprocessedIdentityId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DeleteIdentitiesResponse AWS API Documentation
    #
    class DeleteIdentitiesResponse < Struct.new(
      :unprocessed_identity_ids)
      include Aws::Structure
    end

    # Input to the DeleteIdentityPool action.
    #
    # @note When making an API call, you may pass DeleteIdentityPoolInput
    #   data as a hash:
    #
    #       {
    #         identity_pool_id: "IdentityPoolId", # required
    #       }
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DeleteIdentityPoolInput AWS API Documentation
    #
    class DeleteIdentityPoolInput < Struct.new(
      :identity_pool_id)
      include Aws::Structure
    end

    # Input to the `DescribeIdentity` action.
    #
    # @note When making an API call, you may pass DescribeIdentityInput
    #   data as a hash:
    #
    #       {
    #         identity_id: "IdentityId", # required
    #       }
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DescribeIdentityInput AWS API Documentation
    #
    class DescribeIdentityInput < Struct.new(
      :identity_id)
      include Aws::Structure
    end

    # Input to the DescribeIdentityPool action.
    #
    # @note When making an API call, you may pass DescribeIdentityPoolInput
    #   data as a hash:
    #
    #       {
    #         identity_pool_id: "IdentityPoolId", # required
    #       }
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DescribeIdentityPoolInput AWS API Documentation
    #
    class DescribeIdentityPoolInput < Struct.new(
      :identity_pool_id)
      include Aws::Structure
    end

    # Input to the `GetCredentialsForIdentity` action.
    #
    # @note When making an API call, you may pass GetCredentialsForIdentityInput
    #   data as a hash:
    #
    #       {
    #         identity_id: "IdentityId", # required
    #         logins: {
    #           "IdentityProviderName" => "IdentityProviderToken",
    #         },
    #         custom_role_arn: "ARNString",
    #       }
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] logins
    #   A set of optional name-value pairs that map provider names to
    #   provider tokens.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] custom_role_arn
    #   The Amazon Resource Name (ARN) of the role to be assumed when
    #   multiple roles were received in the token from the identity
    #   provider. For example, a SAML-based identity provider. This
    #   parameter is optional for identity providers that do not support
    #   role customization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetCredentialsForIdentityInput AWS API Documentation
    #
    class GetCredentialsForIdentityInput < Struct.new(
      :identity_id,
      :logins,
      :custom_role_arn)
      include Aws::Structure
    end

    # Returned in response to a successful `GetCredentialsForIdentity`
    # operation.
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   Credentials for the provided identity ID.
    #   @return [Types::Credentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetCredentialsForIdentityResponse AWS API Documentation
    #
    class GetCredentialsForIdentityResponse < Struct.new(
      :identity_id,
      :credentials)
      include Aws::Structure
    end

    # Input to the GetId action.
    #
    # @note When making an API call, you may pass GetIdInput
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId",
    #         identity_pool_id: "IdentityPoolId", # required
    #         logins: {
    #           "IdentityProviderName" => "IdentityProviderToken",
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   A standard AWS account ID (9+ digits).
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] logins
    #   A set of optional name-value pairs that map provider names to
    #   provider tokens. The available provider names for `Logins` are as
    #   follows:
    #
    #   * Facebook: `graph.facebook.com`
    #
    #   * Amazon Cognito Identity Provider:
    #     `cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789`
    #
    #   * Google: `accounts.google.com`
    #
    #   * Amazon: `www.amazon.com`
    #
    #   * Twitter: `api.twitter.com`
    #
    #   * Digits: `www.digits.com`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetIdInput AWS API Documentation
    #
    class GetIdInput < Struct.new(
      :account_id,
      :identity_pool_id,
      :logins)
      include Aws::Structure
    end

    # Returned in response to a GetId request.
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetIdResponse AWS API Documentation
    #
    class GetIdResponse < Struct.new(
      :identity_id)
      include Aws::Structure
    end

    # Input to the `GetIdentityPoolRoles` action.
    #
    # @note When making an API call, you may pass GetIdentityPoolRolesInput
    #   data as a hash:
    #
    #       {
    #         identity_pool_id: "IdentityPoolId", # required
    #       }
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetIdentityPoolRolesInput AWS API Documentation
    #
    class GetIdentityPoolRolesInput < Struct.new(
      :identity_pool_id)
      include Aws::Structure
    end

    # Returned in response to a successful `GetIdentityPoolRoles` operation.
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] roles
    #   The map of roles associated with this pool. Currently only
    #   authenticated and unauthenticated roles are supported.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] role_mappings
    #   How users for a specific identity provider are to mapped to roles.
    #   This is a String-to-RoleMapping object map. The string identifies
    #   the identity provider, for example, "graph.facebook.com" or
    #   "cognito-idp-east-1.amazonaws.com/us-east-1\_abcdefghi:app\_client\_id".
    #   @return [Hash<String,Types::RoleMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetIdentityPoolRolesResponse AWS API Documentation
    #
    class GetIdentityPoolRolesResponse < Struct.new(
      :identity_pool_id,
      :roles,
      :role_mappings)
      include Aws::Structure
    end

    # Input to the `GetOpenIdTokenForDeveloperIdentity` action.
    #
    # @note When making an API call, you may pass GetOpenIdTokenForDeveloperIdentityInput
    #   data as a hash:
    #
    #       {
    #         identity_pool_id: "IdentityPoolId", # required
    #         identity_id: "IdentityId",
    #         logins: { # required
    #           "IdentityProviderName" => "IdentityProviderToken",
    #         },
    #         token_duration: 1,
    #       }
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] logins
    #   A set of optional name-value pairs that map provider names to
    #   provider tokens. Each name-value pair represents a user from a
    #   public provider or developer provider. If the user is from a
    #   developer provider, the name-value pair will follow the syntax
    #   `"developer_provider_name": "developer_user_identifier"`. The
    #   developer provider is the "domain" by which Cognito will refer to
    #   your users; you provided this domain while creating/updating the
    #   identity pool. The developer user identifier is an identifier from
    #   your backend that uniquely identifies a user. When you create an
    #   identity pool, you can specify the supported logins.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] token_duration
    #   The expiration time of the token, in seconds. You can specify a
    #   custom expiration time for the token so that you can cache it. If
    #   you don't provide an expiration time, the token is valid for 15
    #   minutes. You can exchange the token with Amazon STS for temporary
    #   AWS credentials, which are valid for a maximum of one hour. The
    #   maximum token duration you can set is 24 hours. You should take care
    #   in setting the expiration time for a token, as there are significant
    #   security implications: an attacker could use a leaked token to
    #   access your AWS resources for the token's duration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetOpenIdTokenForDeveloperIdentityInput AWS API Documentation
    #
    class GetOpenIdTokenForDeveloperIdentityInput < Struct.new(
      :identity_pool_id,
      :identity_id,
      :logins,
      :token_duration)
      include Aws::Structure
    end

    # Returned in response to a successful
    # `GetOpenIdTokenForDeveloperIdentity` request.
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   An OpenID token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetOpenIdTokenForDeveloperIdentityResponse AWS API Documentation
    #
    class GetOpenIdTokenForDeveloperIdentityResponse < Struct.new(
      :identity_id,
      :token)
      include Aws::Structure
    end

    # Input to the GetOpenIdToken action.
    #
    # @note When making an API call, you may pass GetOpenIdTokenInput
    #   data as a hash:
    #
    #       {
    #         identity_id: "IdentityId", # required
    #         logins: {
    #           "IdentityProviderName" => "IdentityProviderToken",
    #         },
    #       }
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] logins
    #   A set of optional name-value pairs that map provider names to
    #   provider tokens. When using graph.facebook.com and www.amazon.com,
    #   supply the access\_token returned from the provider's authflow. For
    #   accounts.google.com, an Amazon Cognito Identity Provider, or any
    #   other OpenId Connect provider, always include the `id_token`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetOpenIdTokenInput AWS API Documentation
    #
    class GetOpenIdTokenInput < Struct.new(
      :identity_id,
      :logins)
      include Aws::Structure
    end

    # Returned in response to a successful GetOpenIdToken request.
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID. Note that the
    #   IdentityId returned may not match the one passed on input.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   An OpenID token, valid for 15 minutes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetOpenIdTokenResponse AWS API Documentation
    #
    class GetOpenIdTokenResponse < Struct.new(
      :identity_id,
      :token)
      include Aws::Structure
    end

    # A description of the identity.
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] logins
    #   A set of optional name-value pairs that map provider names to
    #   provider tokens.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_date
    #   Date on which the identity was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   Date on which the identity was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/IdentityDescription AWS API Documentation
    #
    class IdentityDescription < Struct.new(
      :identity_id,
      :logins,
      :creation_date,
      :last_modified_date)
      include Aws::Structure
    end

    # An object representing an Amazon Cognito identity pool.
    #
    # @note When making an API call, you may pass IdentityPool
    #   data as a hash:
    #
    #       {
    #         identity_pool_id: "IdentityPoolId", # required
    #         identity_pool_name: "IdentityPoolName", # required
    #         allow_unauthenticated_identities: false, # required
    #         supported_login_providers: {
    #           "IdentityProviderName" => "IdentityProviderId",
    #         },
    #         developer_provider_name: "DeveloperProviderName",
    #         open_id_connect_provider_arns: ["ARNString"],
    #         cognito_identity_providers: [
    #           {
    #             provider_name: "CognitoIdentityProviderName",
    #             client_id: "CognitoIdentityProviderClientId",
    #             server_side_token_check: false,
    #           },
    #         ],
    #         saml_provider_arns: ["ARNString"],
    #       }
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_name
    #   A string that you provide.
    #   @return [String]
    #
    # @!attribute [rw] allow_unauthenticated_identities
    #   TRUE if the identity pool supports unauthenticated logins.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_login_providers
    #   Optional key:value pairs mapping provider names to provider app IDs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] developer_provider_name
    #   The "domain" by which Cognito will refer to your users.
    #   @return [String]
    #
    # @!attribute [rw] open_id_connect_provider_arns
    #   A list of OpendID Connect provider ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cognito_identity_providers
    #   A list representing an Amazon Cognito Identity User Pool and its
    #   client ID.
    #   @return [Array<Types::CognitoIdentityProvider>]
    #
    # @!attribute [rw] saml_provider_arns
    #   An array of Amazon Resource Names (ARNs) of the SAML provider for
    #   your identity pool.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/IdentityPool AWS API Documentation
    #
    class IdentityPool < Struct.new(
      :identity_pool_id,
      :identity_pool_name,
      :allow_unauthenticated_identities,
      :supported_login_providers,
      :developer_provider_name,
      :open_id_connect_provider_arns,
      :cognito_identity_providers,
      :saml_provider_arns)
      include Aws::Structure
    end

    # A description of the identity pool.
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_name
    #   A string that you provide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/IdentityPoolShortDescription AWS API Documentation
    #
    class IdentityPoolShortDescription < Struct.new(
      :identity_pool_id,
      :identity_pool_name)
      include Aws::Structure
    end

    # Input to the ListIdentities action.
    #
    # @note When making an API call, you may pass ListIdentitiesInput
    #   data as a hash:
    #
    #       {
    #         identity_pool_id: "IdentityPoolId", # required
    #         max_results: 1, # required
    #         next_token: "PaginationKey",
    #         hide_disabled: false,
    #       }
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of identities to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @!attribute [rw] hide_disabled
    #   An optional boolean parameter that allows you to hide disabled
    #   identities. If omitted, the ListIdentities API will include disabled
    #   identities in the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/ListIdentitiesInput AWS API Documentation
    #
    class ListIdentitiesInput < Struct.new(
      :identity_pool_id,
      :max_results,
      :next_token,
      :hide_disabled)
      include Aws::Structure
    end

    # The response to a ListIdentities request.
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   An object containing a set of identities and associated mappings.
    #   @return [Array<Types::IdentityDescription>]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/ListIdentitiesResponse AWS API Documentation
    #
    class ListIdentitiesResponse < Struct.new(
      :identity_pool_id,
      :identities,
      :next_token)
      include Aws::Structure
    end

    # Input to the ListIdentityPools action.
    #
    # @note When making an API call, you may pass ListIdentityPoolsInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1, # required
    #         next_token: "PaginationKey",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of identities to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/ListIdentityPoolsInput AWS API Documentation
    #
    class ListIdentityPoolsInput < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # The result of a successful ListIdentityPools action.
    #
    # @!attribute [rw] identity_pools
    #   The identity pools returned by the ListIdentityPools action.
    #   @return [Array<Types::IdentityPoolShortDescription>]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/ListIdentityPoolsResponse AWS API Documentation
    #
    class ListIdentityPoolsResponse < Struct.new(
      :identity_pools,
      :next_token)
      include Aws::Structure
    end

    # Input to the `LookupDeveloperIdentityInput` action.
    #
    # @note When making an API call, you may pass LookupDeveloperIdentityInput
    #   data as a hash:
    #
    #       {
    #         identity_pool_id: "IdentityPoolId", # required
    #         identity_id: "IdentityId",
    #         developer_user_identifier: "DeveloperUserIdentifier",
    #         max_results: 1,
    #         next_token: "PaginationKey",
    #       }
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] developer_user_identifier
    #   A unique ID used by your backend authentication process to identify
    #   a user. Typically, a developer identity provider would issue many
    #   developer user identifiers, in keeping with the number of users.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of identities to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token. The first call you make will have `NextToken`
    #   set to null. After that the service will return `NextToken` values
    #   as needed. For example, let's say you make a request with
    #   `MaxResults` set to 10, and there are 20 matches in the database.
    #   The service will return a pagination token as a part of the
    #   response. This token can be used to call the API again and get
    #   results starting from the 11th match.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/LookupDeveloperIdentityInput AWS API Documentation
    #
    class LookupDeveloperIdentityInput < Struct.new(
      :identity_pool_id,
      :identity_id,
      :developer_user_identifier,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Returned in response to a successful `LookupDeveloperIdentity` action.
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] developer_user_identifier_list
    #   This is the list of developer user identifiers associated with an
    #   identity ID. Cognito supports the association of multiple developer
    #   user identifiers with an identity ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. The first call you make will have `NextToken`
    #   set to null. After that the service will return `NextToken` values
    #   as needed. For example, let's say you make a request with
    #   `MaxResults` set to 10, and there are 20 matches in the database.
    #   The service will return a pagination token as a part of the
    #   response. This token can be used to call the API again and get
    #   results starting from the 11th match.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/LookupDeveloperIdentityResponse AWS API Documentation
    #
    class LookupDeveloperIdentityResponse < Struct.new(
      :identity_id,
      :developer_user_identifier_list,
      :next_token)
      include Aws::Structure
    end

    # A rule that maps a claim name, a claim value, and a match type to a
    # role ARN.
    #
    # @note When making an API call, you may pass MappingRule
    #   data as a hash:
    #
    #       {
    #         claim: "ClaimName", # required
    #         match_type: "Equals", # required, accepts Equals, Contains, StartsWith, NotEqual
    #         value: "ClaimValue", # required
    #         role_arn: "ARNString", # required
    #       }
    #
    # @!attribute [rw] claim
    #   The claim name that must be present in the token, for example,
    #   "isAdmin" or "paid".
    #   @return [String]
    #
    # @!attribute [rw] match_type
    #   The match condition that specifies how closely the claim value in
    #   the IdP token must match `Value`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A brief string that the claim must match, for example, "paid" or
    #   "yes".
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/MappingRule AWS API Documentation
    #
    class MappingRule < Struct.new(
      :claim,
      :match_type,
      :value,
      :role_arn)
      include Aws::Structure
    end

    # Input to the `MergeDeveloperIdentities` action.
    #
    # @note When making an API call, you may pass MergeDeveloperIdentitiesInput
    #   data as a hash:
    #
    #       {
    #         source_user_identifier: "DeveloperUserIdentifier", # required
    #         destination_user_identifier: "DeveloperUserIdentifier", # required
    #         developer_provider_name: "DeveloperProviderName", # required
    #         identity_pool_id: "IdentityPoolId", # required
    #       }
    #
    # @!attribute [rw] source_user_identifier
    #   User identifier for the source user. The value should be a
    #   `DeveloperUserIdentifier`.
    #   @return [String]
    #
    # @!attribute [rw] destination_user_identifier
    #   User identifier for the destination user. The value should be a
    #   `DeveloperUserIdentifier`.
    #   @return [String]
    #
    # @!attribute [rw] developer_provider_name
    #   The "domain" by which Cognito will refer to your users. This is a
    #   (pseudo) domain name that you provide while creating an identity
    #   pool. This name acts as a placeholder that allows your backend and
    #   the Cognito service to communicate about the developer provider. For
    #   the `DeveloperProviderName`, you can use letters as well as period
    #   (.), underscore (\_), and dash (-).
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/MergeDeveloperIdentitiesInput AWS API Documentation
    #
    class MergeDeveloperIdentitiesInput < Struct.new(
      :source_user_identifier,
      :destination_user_identifier,
      :developer_provider_name,
      :identity_pool_id)
      include Aws::Structure
    end

    # Returned in response to a successful `MergeDeveloperIdentities`
    # action.
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/MergeDeveloperIdentitiesResponse AWS API Documentation
    #
    class MergeDeveloperIdentitiesResponse < Struct.new(
      :identity_id)
      include Aws::Structure
    end

    # A role mapping.
    #
    # @note When making an API call, you may pass RoleMapping
    #   data as a hash:
    #
    #       {
    #         type: "Token", # required, accepts Token, Rules
    #         ambiguous_role_resolution: "AuthenticatedRole", # accepts AuthenticatedRole, Deny
    #         rules_configuration: {
    #           rules: [ # required
    #             {
    #               claim: "ClaimName", # required
    #               match_type: "Equals", # required, accepts Equals, Contains, StartsWith, NotEqual
    #               value: "ClaimValue", # required
    #               role_arn: "ARNString", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The role mapping type. Token will use `cognito:roles` and
    #   `cognito:preferred_role` claims from the Cognito identity provider
    #   token to map groups to roles. Rules will attempt to match claims
    #   from the token to map to a role.
    #   @return [String]
    #
    # @!attribute [rw] ambiguous_role_resolution
    #   If you specify Token or Rules as the `Type`,
    #   `AmbiguousRoleResolution` is required.
    #
    #   Specifies the action to be taken if either no rules match the claim
    #   value for the `Rules` type, or there is no `cognito:preferred_role`
    #   claim and there are multiple `cognito:roles` matches for the `Token`
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] rules_configuration
    #   The rules to be used for mapping users to roles.
    #
    #   If you specify Rules as the role mapping type, `RulesConfiguration`
    #   is required.
    #   @return [Types::RulesConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/RoleMapping AWS API Documentation
    #
    class RoleMapping < Struct.new(
      :type,
      :ambiguous_role_resolution,
      :rules_configuration)
      include Aws::Structure
    end

    # A container for rules.
    #
    # @note When making an API call, you may pass RulesConfigurationType
    #   data as a hash:
    #
    #       {
    #         rules: [ # required
    #           {
    #             claim: "ClaimName", # required
    #             match_type: "Equals", # required, accepts Equals, Contains, StartsWith, NotEqual
    #             value: "ClaimValue", # required
    #             role_arn: "ARNString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rules
    #   An array of rules. You can specify up to 25 rules per identity
    #   provider.
    #
    #   Rules are evaluated in order. The first one to match specifies the
    #   role.
    #   @return [Array<Types::MappingRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/RulesConfigurationType AWS API Documentation
    #
    class RulesConfigurationType < Struct.new(
      :rules)
      include Aws::Structure
    end

    # Input to the `SetIdentityPoolRoles` action.
    #
    # @note When making an API call, you may pass SetIdentityPoolRolesInput
    #   data as a hash:
    #
    #       {
    #         identity_pool_id: "IdentityPoolId", # required
    #         roles: { # required
    #           "RoleType" => "ARNString",
    #         },
    #         role_mappings: {
    #           "IdentityProviderName" => {
    #             type: "Token", # required, accepts Token, Rules
    #             ambiguous_role_resolution: "AuthenticatedRole", # accepts AuthenticatedRole, Deny
    #             rules_configuration: {
    #               rules: [ # required
    #                 {
    #                   claim: "ClaimName", # required
    #                   match_type: "Equals", # required, accepts Equals, Contains, StartsWith, NotEqual
    #                   value: "ClaimValue", # required
    #                   role_arn: "ARNString", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] roles
    #   The map of roles associated with this pool. For a given role, the
    #   key will be either "authenticated" or "unauthenticated" and the
    #   value will be the Role ARN.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] role_mappings
    #   How users for a specific identity provider are to mapped to roles.
    #   This is a string to RoleMapping object map. The string identifies
    #   the identity provider, for example, "graph.facebook.com" or
    #   "cognito-idp-east-1.amazonaws.com/us-east-1\_abcdefghi:app\_client\_id".
    #
    #   Up to 25 rules can be specified per identity provider.
    #   @return [Hash<String,Types::RoleMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/SetIdentityPoolRolesInput AWS API Documentation
    #
    class SetIdentityPoolRolesInput < Struct.new(
      :identity_pool_id,
      :roles,
      :role_mappings)
      include Aws::Structure
    end

    # Input to the `UnlinkDeveloperIdentity` action.
    #
    # @note When making an API call, you may pass UnlinkDeveloperIdentityInput
    #   data as a hash:
    #
    #       {
    #         identity_id: "IdentityId", # required
    #         identity_pool_id: "IdentityPoolId", # required
    #         developer_provider_name: "DeveloperProviderName", # required
    #         developer_user_identifier: "DeveloperUserIdentifier", # required
    #       }
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] developer_provider_name
    #   The "domain" by which Cognito will refer to your users.
    #   @return [String]
    #
    # @!attribute [rw] developer_user_identifier
    #   A unique ID used by your backend authentication process to identify
    #   a user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/UnlinkDeveloperIdentityInput AWS API Documentation
    #
    class UnlinkDeveloperIdentityInput < Struct.new(
      :identity_id,
      :identity_pool_id,
      :developer_provider_name,
      :developer_user_identifier)
      include Aws::Structure
    end

    # Input to the UnlinkIdentity action.
    #
    # @note When making an API call, you may pass UnlinkIdentityInput
    #   data as a hash:
    #
    #       {
    #         identity_id: "IdentityId", # required
    #         logins: { # required
    #           "IdentityProviderName" => "IdentityProviderToken",
    #         },
    #         logins_to_remove: ["IdentityProviderName"], # required
    #       }
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] logins
    #   A set of optional name-value pairs that map provider names to
    #   provider tokens.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] logins_to_remove
    #   Provider names to unlink from this identity.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/UnlinkIdentityInput AWS API Documentation
    #
    class UnlinkIdentityInput < Struct.new(
      :identity_id,
      :logins,
      :logins_to_remove)
      include Aws::Structure
    end

    # An array of UnprocessedIdentityId objects, each of which contains an
    # ErrorCode and IdentityId.
    #
    # @!attribute [rw] identity_id
    #   A unique identifier in the format REGION:GUID.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code indicating the type of error that occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/UnprocessedIdentityId AWS API Documentation
    #
    class UnprocessedIdentityId < Struct.new(
      :identity_id,
      :error_code)
      include Aws::Structure
    end

  end
end
