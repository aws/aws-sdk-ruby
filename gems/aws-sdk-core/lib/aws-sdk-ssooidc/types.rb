# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSOOIDC
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that a request to authorize a client with an access user
    # session token is pending.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/AuthorizationPendingException AWS API Documentation
    #
    class AuthorizationPendingException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_id
    #   The unique identifier string for each client. This value should come
    #   from the persisted result of the RegisterClient API.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   A secret string generated for the client. This value should come
    #   from the persisted result of the RegisterClient API.
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   Supports grant types for the authorization code, refresh token, and
    #   device code request. For device code requests, specify the following
    #   value:
    #
    #   `urn:ietf:params:oauth:grant-type:device_code `
    #
    #   For information about how to obtain the device code, see the
    #   StartDeviceAuthorization topic.
    #   @return [String]
    #
    # @!attribute [rw] device_code
    #   Used only when calling this API for the device code grant type. This
    #   short-term code is used to identify this authentication attempt.
    #   This should come from an in-memory reference to the result of the
    #   StartDeviceAuthorization API.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The authorization code received from the authorization service. This
    #   parameter is required to perform an authorization grant request to
    #   get access to a token.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   Currently, `refreshToken` is not yet implemented and is not
    #   supported. For more information about the features and limitations
    #   of the current IAM Identity Center OIDC implementation, see
    #   *Considerations for Using this Guide* in the [IAM Identity Center
    #   OIDC API Reference][1].
    #
    #   The token used to obtain an access token in the event that the
    #   access token is invalid or expired.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The list of scopes that is defined by the client. Upon
    #   authorization, this list is used to restrict permissions when
    #   granting an access token.
    #   @return [Array<String>]
    #
    # @!attribute [rw] redirect_uri
    #   The location of the application that will receive the authorization
    #   code. Users authorize the service to send the request to this
    #   location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/CreateTokenRequest AWS API Documentation
    #
    class CreateTokenRequest < Struct.new(
      :client_id,
      :client_secret,
      :grant_type,
      :device_code,
      :code,
      :refresh_token,
      :scope,
      :redirect_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   An opaque token to access IAM Identity Center resources assigned to
    #   a user.
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   Used to notify the client that the returned token is an access
    #   token. The supported type is `BearerToken`.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   Indicates the time in seconds when an access token will expire.
    #   @return [Integer]
    #
    # @!attribute [rw] refresh_token
    #   Currently, `refreshToken` is not yet implemented and is not
    #   supported. For more information about the features and limitations
    #   of the current IAM Identity Center OIDC implementation, see
    #   *Considerations for Using this Guide* in the [IAM Identity Center
    #   OIDC API Reference][1].
    #
    #   A token that, if present, can be used to refresh a previously issued
    #   access token that might have expired.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] id_token
    #   Currently, `idToken` is not yet implemented and is not supported.
    #   For more information about the features and limitations of the
    #   current IAM Identity Center OIDC implementation, see *Considerations
    #   for Using this Guide* in the [IAM Identity Center OIDC API
    #   Reference][1].
    #
    #   The identifier of the user that associated with the access token, if
    #   present.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/CreateTokenResponse AWS API Documentation
    #
    class CreateTokenResponse < Struct.new(
      :access_token,
      :token_type,
      :expires_in,
      :refresh_token,
      :id_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the token issued by the service is expired and is no
    # longer valid.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/ExpiredTokenException AWS API Documentation
    #
    class ExpiredTokenException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that an error from the service occurred while trying to
    # process a request.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the `clientId` or `clientSecret` in the request is
    # invalid. For example, this can occur when a client sends an incorrect
    # `clientId` or an expired `clientSecret`.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/InvalidClientException AWS API Documentation
    #
    class InvalidClientException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the client information sent in the request during
    # registration is invalid.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/InvalidClientMetadataException AWS API Documentation
    #
    class InvalidClientMetadataException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that a request contains an invalid grant. This can occur if
    # a client makes a CreateToken request with an invalid grant type.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/InvalidGrantException AWS API Documentation
    #
    class InvalidGrantException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that something is wrong with the input to the request. For
    # example, a required parameter might be missing or out of range.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the scope provided in the request is invalid.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/InvalidScopeException AWS API Documentation
    #
    class InvalidScopeException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_name
    #   The friendly name of the client.
    #   @return [String]
    #
    # @!attribute [rw] client_type
    #   The type of client. The service supports only `public` as a client
    #   type. Anything other than public will be rejected by the service.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The list of scopes that are defined by the client. Upon
    #   authorization, this list is used to restrict permissions when
    #   granting an access token.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/RegisterClientRequest AWS API Documentation
    #
    class RegisterClientRequest < Struct.new(
      :client_name,
      :client_type,
      :scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_id
    #   The unique identifier string for each client. This client uses this
    #   identifier to get authenticated by the service in subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   A secret string generated for the client. The client will use this
    #   string to get authenticated by the service in subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] client_id_issued_at
    #   Indicates the time at which the `clientId` and `clientSecret` were
    #   issued.
    #   @return [Integer]
    #
    # @!attribute [rw] client_secret_expires_at
    #   Indicates the time at which the `clientId` and `clientSecret` will
    #   become invalid.
    #   @return [Integer]
    #
    # @!attribute [rw] authorization_endpoint
    #   The endpoint where the client can request authorization.
    #   @return [String]
    #
    # @!attribute [rw] token_endpoint
    #   The endpoint where the client can get an access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/RegisterClientResponse AWS API Documentation
    #
    class RegisterClientResponse < Struct.new(
      :client_id,
      :client_secret,
      :client_id_issued_at,
      :client_secret_expires_at,
      :authorization_endpoint,
      :token_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the client is making the request too frequently and is
    # more than the service can handle.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/SlowDownException AWS API Documentation
    #
    class SlowDownException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_id
    #   The unique identifier string for the client that is registered with
    #   IAM Identity Center. This value should come from the persisted
    #   result of the RegisterClient API operation.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   A secret string that is generated for the client. This value should
    #   come from the persisted result of the RegisterClient API operation.
    #   @return [String]
    #
    # @!attribute [rw] start_url
    #   The URL for the AWS access portal. For more information, see [Using
    #   the AWS access portal][1] in the *IAM Identity Center User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/StartDeviceAuthorizationRequest AWS API Documentation
    #
    class StartDeviceAuthorizationRequest < Struct.new(
      :client_id,
      :client_secret,
      :start_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_code
    #   The short-lived code that is used by the device when polling for a
    #   session token.
    #   @return [String]
    #
    # @!attribute [rw] user_code
    #   A one-time user verification code. This is needed to authorize an
    #   in-use device.
    #   @return [String]
    #
    # @!attribute [rw] verification_uri
    #   The URI of the verification page that takes the `userCode` to
    #   authorize the device.
    #   @return [String]
    #
    # @!attribute [rw] verification_uri_complete
    #   An alternate URL that the client can use to automatically launch a
    #   browser. This process skips the manual step in which the user visits
    #   the verification page and enters their code.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   Indicates the number of seconds in which the verification code will
    #   become invalid.
    #   @return [Integer]
    #
    # @!attribute [rw] interval
    #   Indicates the number of seconds the client must wait between
    #   attempts when polling for a session.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/StartDeviceAuthorizationResponse AWS API Documentation
    #
    class StartDeviceAuthorizationResponse < Struct.new(
      :device_code,
      :user_code,
      :verification_uri,
      :verification_uri_complete,
      :expires_in,
      :interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the client is not currently authorized to make the
    # request. This can happen when a `clientId` is not issued for a public
    # client.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/UnauthorizedClientException AWS API Documentation
    #
    class UnauthorizedClientException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the grant type in the request is not supported by the
    # service.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-oidc-2019-06-10/UnsupportedGrantTypeException AWS API Documentation
    #
    class UnsupportedGrantTypeException < Struct.new(
      :error,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
