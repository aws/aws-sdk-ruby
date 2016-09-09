# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CognitoIdentity
    module Types

      # A provider representing an Amazon Cognito Identity User Pool and its
      # client ID.
      # @note When making an API call, pass CognitoIdentityProvider
      #   data as a hash:
      #
      #       {
      #         provider_name: "CognitoIdentityProviderName",
      #         client_id: "CognitoIdentityProviderClientId",
      #       }
      class CognitoIdentityProvider < Aws::Structure.new(
        :provider_name,
        :client_id)

        # @!attribute [rw] provider_name
        #   The provider name for an Amazon Cognito Identity User Pool. For
        #   example, `cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789`.
        #   @return [String]

        # @!attribute [rw] client_id
        #   The client ID for the Amazon Cognito Identity User Pool.
        #   @return [String]

      end

      # Input to the CreateIdentityPool action.
      # @note When making an API call, pass CreateIdentityPoolInput
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
      #           },
      #         ],
      #         saml_provider_arns: ["ARNString"],
      #       }
      class CreateIdentityPoolInput < Aws::Structure.new(
        :identity_pool_name,
        :allow_unauthenticated_identities,
        :supported_login_providers,
        :developer_provider_name,
        :open_id_connect_provider_arns,
        :cognito_identity_providers,
        :saml_provider_arns)

        # @!attribute [rw] identity_pool_name
        #   A string that you provide.
        #   @return [String]

        # @!attribute [rw] allow_unauthenticated_identities
        #   TRUE if the identity pool supports unauthenticated logins.
        #   @return [Boolean]

        # @!attribute [rw] supported_login_providers
        #   Optional key:value pairs mapping provider names to provider app IDs.
        #   @return [Hash<String,String>]

        # @!attribute [rw] developer_provider_name
        #   The \"domain\" by which Cognito will refer to your users. This name
        #   acts as a placeholder that allows your backend and the Cognito
        #   service to communicate about the developer provider. For the
        #   `DeveloperProviderName`, you can use letters as well as period
        #   (`.`), underscore (`_`), and dash (`-`).
        #
        #   Once you have set a developer provider name, you cannot change it.
        #   Please take care in setting this parameter.
        #   @return [String]

        # @!attribute [rw] open_id_connect_provider_arns
        #   A list of OpendID Connect provider ARNs.
        #   @return [Array<String>]

        # @!attribute [rw] cognito_identity_providers
        #   An array of Amazon Cognito Identity user pools.
        #   @return [Array<Types::CognitoIdentityProvider>]

        # @!attribute [rw] saml_provider_arns
        #   An array of Amazon Resource Names (ARNs) of the SAML provider for
        #   your identity pool.
        #   @return [Array<String>]

      end

      # Credentials for the provided identity ID.
      class Credentials < Aws::Structure.new(
        :access_key_id,
        :secret_key,
        :session_token,
        :expiration)

        # @!attribute [rw] access_key_id
        #   The Access Key portion of the credentials.
        #   @return [String]

        # @!attribute [rw] secret_key
        #   The Secret Access Key portion of the credentials
        #   @return [String]

        # @!attribute [rw] session_token
        #   The Session Token portion of the credentials
        #   @return [String]

        # @!attribute [rw] expiration
        #   The date at which these credentials will expire.
        #   @return [Time]

      end

      # Input to the `DeleteIdentities` action.
      # @note When making an API call, pass DeleteIdentitiesInput
      #   data as a hash:
      #
      #       {
      #         identity_ids_to_delete: ["IdentityId"], # required
      #       }
      class DeleteIdentitiesInput < Aws::Structure.new(
        :identity_ids_to_delete)

        # @!attribute [rw] identity_ids_to_delete
        #   A list of 1-60 identities that you want to delete.
        #   @return [Array<String>]

      end

      # Returned in response to a successful `DeleteIdentities` operation.
      class DeleteIdentitiesResponse < Aws::Structure.new(
        :unprocessed_identity_ids)

        # @!attribute [rw] unprocessed_identity_ids
        #   An array of UnprocessedIdentityId objects, each of which contains an
        #   ErrorCode and IdentityId.
        #   @return [Array<Types::UnprocessedIdentityId>]

      end

      # Input to the DeleteIdentityPool action.
      # @note When making an API call, pass DeleteIdentityPoolInput
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #       }
      class DeleteIdentityPoolInput < Aws::Structure.new(
        :identity_pool_id)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

      end

      # Input to the `DescribeIdentity` action.
      # @note When making an API call, pass DescribeIdentityInput
      #   data as a hash:
      #
      #       {
      #         identity_id: "IdentityId", # required
      #       }
      class DescribeIdentityInput < Aws::Structure.new(
        :identity_id)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

      end

      # Input to the DescribeIdentityPool action.
      # @note When making an API call, pass DescribeIdentityPoolInput
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #       }
      class DescribeIdentityPoolInput < Aws::Structure.new(
        :identity_pool_id)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

      end

      # Input to the `GetCredentialsForIdentity` action.
      # @note When making an API call, pass GetCredentialsForIdentityInput
      #   data as a hash:
      #
      #       {
      #         identity_id: "IdentityId", # required
      #         logins: {
      #           "IdentityProviderName" => "IdentityProviderToken",
      #         },
      #         custom_role_arn: "ARNString",
      #       }
      class GetCredentialsForIdentityInput < Aws::Structure.new(
        :identity_id,
        :logins,
        :custom_role_arn)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] logins
        #   A set of optional name-value pairs that map provider names to
        #   provider tokens.
        #   @return [Hash<String,String>]

        # @!attribute [rw] custom_role_arn
        #   The Amazon Resource Name (ARN) of the role to be assumed when
        #   multiple roles were received in the token from the identity
        #   provider. For example, a SAML-based identity provider. This
        #   parameter is optional for identity providers that do not support
        #   role customization.
        #   @return [String]

      end

      # Returned in response to a successful `GetCredentialsForIdentity`
      # operation.
      class GetCredentialsForIdentityResponse < Aws::Structure.new(
        :identity_id,
        :credentials)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] credentials
        #   Credentials for the provided identity ID.
        #   @return [Types::Credentials]

      end

      # Input to the GetId action.
      # @note When making an API call, pass GetIdInput
      #   data as a hash:
      #
      #       {
      #         account_id: "AccountId",
      #         identity_pool_id: "IdentityPoolId", # required
      #         logins: {
      #           "IdentityProviderName" => "IdentityProviderToken",
      #         },
      #       }
      class GetIdInput < Aws::Structure.new(
        :account_id,
        :identity_pool_id,
        :logins)

        # @!attribute [rw] account_id
        #   A standard AWS account ID (9+ digits).
        #   @return [String]

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] logins
        #   A set of optional name-value pairs that map provider names to
        #   provider tokens.
        #
        #   The available provider names for `Logins` are as follows: *
        #   Facebook: `graph.facebook.com`
        #   * Google: `accounts.google.com`
        #   * Amazon: `www.amazon.com`
        #   * Twitter: `api.twitter.com`
        #   * Digits: `www.digits.com`
        #   @return [Hash<String,String>]

      end

      # Returned in response to a GetId request.
      class GetIdResponse < Aws::Structure.new(
        :identity_id)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

      end

      # Input to the `GetIdentityPoolRoles` action.
      # @note When making an API call, pass GetIdentityPoolRolesInput
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #       }
      class GetIdentityPoolRolesInput < Aws::Structure.new(
        :identity_pool_id)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

      end

      # Returned in response to a successful `GetIdentityPoolRoles` operation.
      class GetIdentityPoolRolesResponse < Aws::Structure.new(
        :identity_pool_id,
        :roles)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] roles
        #   The map of roles associated with this pool. Currently only
        #   authenticated and unauthenticated roles are supported.
        #   @return [Hash<String,String>]

      end

      # Input to the `GetOpenIdTokenForDeveloperIdentity` action.
      # @note When making an API call, pass GetOpenIdTokenForDeveloperIdentityInput
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
      class GetOpenIdTokenForDeveloperIdentityInput < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :logins,
        :token_duration)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] logins
        #   A set of optional name-value pairs that map provider names to
        #   provider tokens. Each name-value pair represents a user from a
        #   public provider or developer provider. If the user is from a
        #   developer provider, the name-value pair will follow the syntax
        #   `"developer_provider_name": "developer_user_identifier"`. The
        #   developer provider is the \"domain\" by which Cognito will refer to
        #   your users; you provided this domain while creating/updating the
        #   identity pool. The developer user identifier is an identifier from
        #   your backend that uniquely identifies a user. When you create an
        #   identity pool, you can specify the supported logins.
        #   @return [Hash<String,String>]

        # @!attribute [rw] token_duration
        #   The expiration time of the token, in seconds. You can specify a
        #   custom expiration time for the token so that you can cache it. If
        #   you don\'t provide an expiration time, the token is valid for 15
        #   minutes. You can exchange the token with Amazon STS for temporary
        #   AWS credentials, which are valid for a maximum of one hour. The
        #   maximum token duration you can set is 24 hours. You should take care
        #   in setting the expiration time for a token, as there are significant
        #   security implications: an attacker could use a leaked token to
        #   access your AWS resources for the token\'s duration.
        #   @return [Integer]

      end

      # Returned in response to a successful
      # `GetOpenIdTokenForDeveloperIdentity` request.
      class GetOpenIdTokenForDeveloperIdentityResponse < Aws::Structure.new(
        :identity_id,
        :token)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] token
        #   An OpenID token.
        #   @return [String]

      end

      # Input to the GetOpenIdToken action.
      # @note When making an API call, pass GetOpenIdTokenInput
      #   data as a hash:
      #
      #       {
      #         identity_id: "IdentityId", # required
      #         logins: {
      #           "IdentityProviderName" => "IdentityProviderToken",
      #         },
      #       }
      class GetOpenIdTokenInput < Aws::Structure.new(
        :identity_id,
        :logins)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] logins
        #   A set of optional name-value pairs that map provider names to
        #   provider tokens. When using graph.facebook.com and www.amazon.com,
        #   supply the access\_token returned from the provider\'s authflow. For
        #   accounts.google.com or any other OpenId Connect provider, always
        #   include the id\_token.
        #   @return [Hash<String,String>]

      end

      # Returned in response to a successful GetOpenIdToken request.
      class GetOpenIdTokenResponse < Aws::Structure.new(
        :identity_id,
        :token)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID. Note that the
        #   IdentityId returned may not match the one passed on input.
        #   @return [String]

        # @!attribute [rw] token
        #   An OpenID token, valid for 15 minutes.
        #   @return [String]

      end

      # A description of the identity.
      class IdentityDescription < Aws::Structure.new(
        :identity_id,
        :logins,
        :creation_date,
        :last_modified_date)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] logins
        #   A set of optional name-value pairs that map provider names to
        #   provider tokens.
        #   @return [Array<String>]

        # @!attribute [rw] creation_date
        #   Date on which the identity was created.
        #   @return [Time]

        # @!attribute [rw] last_modified_date
        #   Date on which the identity was last modified.
        #   @return [Time]

      end

      # An object representing a Cognito identity pool.
      # @note When making an API call, pass IdentityPool
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
      #           },
      #         ],
      #         saml_provider_arns: ["ARNString"],
      #       }
      class IdentityPool < Aws::Structure.new(
        :identity_pool_id,
        :identity_pool_name,
        :allow_unauthenticated_identities,
        :supported_login_providers,
        :developer_provider_name,
        :open_id_connect_provider_arns,
        :cognito_identity_providers,
        :saml_provider_arns)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] identity_pool_name
        #   A string that you provide.
        #   @return [String]

        # @!attribute [rw] allow_unauthenticated_identities
        #   TRUE if the identity pool supports unauthenticated logins.
        #   @return [Boolean]

        # @!attribute [rw] supported_login_providers
        #   Optional key:value pairs mapping provider names to provider app IDs.
        #   @return [Hash<String,String>]

        # @!attribute [rw] developer_provider_name
        #   The \"domain\" by which Cognito will refer to your users.
        #   @return [String]

        # @!attribute [rw] open_id_connect_provider_arns
        #   A list of OpendID Connect provider ARNs.
        #   @return [Array<String>]

        # @!attribute [rw] cognito_identity_providers
        #   A list representing an Amazon Cognito Identity User Pool and its
        #   client ID.
        #   @return [Array<Types::CognitoIdentityProvider>]

        # @!attribute [rw] saml_provider_arns
        #   An array of Amazon Resource Names (ARNs) of the SAML provider for
        #   your identity pool.
        #   @return [Array<String>]

      end

      # A description of the identity pool.
      class IdentityPoolShortDescription < Aws::Structure.new(
        :identity_pool_id,
        :identity_pool_name)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] identity_pool_name
        #   A string that you provide.
        #   @return [String]

      end

      # Input to the ListIdentities action.
      # @note When making an API call, pass ListIdentitiesInput
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         max_results: 1, # required
      #         next_token: "PaginationKey",
      #         hide_disabled: false,
      #       }
      class ListIdentitiesInput < Aws::Structure.new(
        :identity_pool_id,
        :max_results,
        :next_token,
        :hide_disabled)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of identities to return.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   A pagination token.
        #   @return [String]

        # @!attribute [rw] hide_disabled
        #   An optional boolean parameter that allows you to hide disabled
        #   identities. If omitted, the ListIdentities API will include disabled
        #   identities in the response.
        #   @return [Boolean]

      end

      # The response to a ListIdentities request.
      class ListIdentitiesResponse < Aws::Structure.new(
        :identity_pool_id,
        :identities,
        :next_token)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] identities
        #   An object containing a set of identities and associated mappings.
        #   @return [Array<Types::IdentityDescription>]

        # @!attribute [rw] next_token
        #   A pagination token.
        #   @return [String]

      end

      # Input to the ListIdentityPools action.
      # @note When making an API call, pass ListIdentityPoolsInput
      #   data as a hash:
      #
      #       {
      #         max_results: 1, # required
      #         next_token: "PaginationKey",
      #       }
      class ListIdentityPoolsInput < Aws::Structure.new(
        :max_results,
        :next_token)

        # @!attribute [rw] max_results
        #   The maximum number of identities to return.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   A pagination token.
        #   @return [String]

      end

      # The result of a successful ListIdentityPools action.
      class ListIdentityPoolsResponse < Aws::Structure.new(
        :identity_pools,
        :next_token)

        # @!attribute [rw] identity_pools
        #   The identity pools returned by the ListIdentityPools action.
        #   @return [Array<Types::IdentityPoolShortDescription>]

        # @!attribute [rw] next_token
        #   A pagination token.
        #   @return [String]

      end

      # Input to the `LookupDeveloperIdentityInput` action.
      # @note When making an API call, pass LookupDeveloperIdentityInput
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId",
      #         developer_user_identifier: "DeveloperUserIdentifier",
      #         max_results: 1,
      #         next_token: "PaginationKey",
      #       }
      class LookupDeveloperIdentityInput < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :developer_user_identifier,
        :max_results,
        :next_token)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] developer_user_identifier
        #   A unique ID used by your backend authentication process to identify
        #   a user. Typically, a developer identity provider would issue many
        #   developer user identifiers, in keeping with the number of users.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of identities to return.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   A pagination token. The first call you make will have `NextToken`
        #   set to null. After that the service will return `NextToken` values
        #   as needed. For example, let\'s say you make a request with
        #   `MaxResults` set to 10, and there are 20 matches in the database.
        #   The service will return a pagination token as a part of the
        #   response. This token can be used to call the API again and get
        #   results starting from the 11th match.
        #   @return [String]

      end

      # Returned in response to a successful `LookupDeveloperIdentity` action.
      class LookupDeveloperIdentityResponse < Aws::Structure.new(
        :identity_id,
        :developer_user_identifier_list,
        :next_token)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] developer_user_identifier_list
        #   This is the list of developer user identifiers associated with an
        #   identity ID. Cognito supports the association of multiple developer
        #   user identifiers with an identity ID.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   A pagination token. The first call you make will have `NextToken`
        #   set to null. After that the service will return `NextToken` values
        #   as needed. For example, let\'s say you make a request with
        #   `MaxResults` set to 10, and there are 20 matches in the database.
        #   The service will return a pagination token as a part of the
        #   response. This token can be used to call the API again and get
        #   results starting from the 11th match.
        #   @return [String]

      end

      # Input to the `MergeDeveloperIdentities` action.
      # @note When making an API call, pass MergeDeveloperIdentitiesInput
      #   data as a hash:
      #
      #       {
      #         source_user_identifier: "DeveloperUserIdentifier", # required
      #         destination_user_identifier: "DeveloperUserIdentifier", # required
      #         developer_provider_name: "DeveloperProviderName", # required
      #         identity_pool_id: "IdentityPoolId", # required
      #       }
      class MergeDeveloperIdentitiesInput < Aws::Structure.new(
        :source_user_identifier,
        :destination_user_identifier,
        :developer_provider_name,
        :identity_pool_id)

        # @!attribute [rw] source_user_identifier
        #   User identifier for the source user. The value should be a
        #   `DeveloperUserIdentifier`.
        #   @return [String]

        # @!attribute [rw] destination_user_identifier
        #   User identifier for the destination user. The value should be a
        #   `DeveloperUserIdentifier`.
        #   @return [String]

        # @!attribute [rw] developer_provider_name
        #   The \"domain\" by which Cognito will refer to your users. This is a
        #   (pseudo) domain name that you provide while creating an identity
        #   pool. This name acts as a placeholder that allows your backend and
        #   the Cognito service to communicate about the developer provider. For
        #   the `DeveloperProviderName`, you can use letters as well as period
        #   (.), underscore (\_), and dash (-).
        #   @return [String]

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

      end

      # Returned in response to a successful `MergeDeveloperIdentities`
      # action.
      class MergeDeveloperIdentitiesResponse < Aws::Structure.new(
        :identity_id)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

      end

      # Input to the `SetIdentityPoolRoles` action.
      # @note When making an API call, pass SetIdentityPoolRolesInput
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         roles: { # required
      #           "RoleType" => "ARNString",
      #         },
      #       }
      class SetIdentityPoolRolesInput < Aws::Structure.new(
        :identity_pool_id,
        :roles)

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] roles
        #   The map of roles associated with this pool. For a given role, the
        #   key will be either \"authenticated\" or \"unauthenticated\" and the
        #   value will be the Role ARN.
        #   @return [Hash<String,String>]

      end

      # Input to the `UnlinkDeveloperIdentity` action.
      # @note When making an API call, pass UnlinkDeveloperIdentityInput
      #   data as a hash:
      #
      #       {
      #         identity_id: "IdentityId", # required
      #         identity_pool_id: "IdentityPoolId", # required
      #         developer_provider_name: "DeveloperProviderName", # required
      #         developer_user_identifier: "DeveloperUserIdentifier", # required
      #       }
      class UnlinkDeveloperIdentityInput < Aws::Structure.new(
        :identity_id,
        :identity_pool_id,
        :developer_provider_name,
        :developer_user_identifier)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] identity_pool_id
        #   An identity pool ID in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] developer_provider_name
        #   The \"domain\" by which Cognito will refer to your users.
        #   @return [String]

        # @!attribute [rw] developer_user_identifier
        #   A unique ID used by your backend authentication process to identify
        #   a user.
        #   @return [String]

      end

      # Input to the UnlinkIdentity action.
      # @note When making an API call, pass UnlinkIdentityInput
      #   data as a hash:
      #
      #       {
      #         identity_id: "IdentityId", # required
      #         logins: { # required
      #           "IdentityProviderName" => "IdentityProviderToken",
      #         },
      #         logins_to_remove: ["IdentityProviderName"], # required
      #       }
      class UnlinkIdentityInput < Aws::Structure.new(
        :identity_id,
        :logins,
        :logins_to_remove)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] logins
        #   A set of optional name-value pairs that map provider names to
        #   provider tokens.
        #   @return [Hash<String,String>]

        # @!attribute [rw] logins_to_remove
        #   Provider names to unlink from this identity.
        #   @return [Array<String>]

      end

      # An array of UnprocessedIdentityId objects, each of which contains an
      # ErrorCode and IdentityId.
      class UnprocessedIdentityId < Aws::Structure.new(
        :identity_id,
        :error_code)

        # @!attribute [rw] identity_id
        #   A unique identifier in the format REGION:GUID.
        #   @return [String]

        # @!attribute [rw] error_code
        #   The error code indicating the type of error that occurred.
        #   @return [String]

      end

    end
  end
end
