# frozen_string_literal: true

# This is generated code!

module Aws::SSOOIDC
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be <code>access_denied</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a request to authorize a client with an access user session token is
    #       pending.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be
    #         <code>authorization_pending</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class AuthorizationPendingException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains Amazon Web Services-specific parameter extensions for the token endpoint
    #       responses and includes the identity context.</p>
    # @!attribute identity_context
    #   <p>STS context assertion that carries a user identifier to the Amazon Web Services service that it calls
    #         and can be used to obtain an identity-enhanced IAM role session. This value corresponds to
    #         the <code>sts:identity_context</code> claim in the ID token.</p>
    #   @return [String]
    class AwsAdditionalDetails < Struct.new(
      :identity_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_id
    #   <p>The unique identifier string for the client or application. This value comes from the
    #         result of the <a>RegisterClient</a> API.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>A secret string generated for the client. This value should come from the persisted result
    #         of the <a>RegisterClient</a> API.</p>
    #   @return [String]
    # @!attribute grant_type
    #   <p>Supports the following OAuth grant types: Authorization Code, Device Code, and Refresh
    #         Token. Specify one of the following values, depending on the grant type that you want:</p>
    #            <p>* Authorization Code - <code>authorization_code</code>
    #            </p>
    #            <p>* Device Code - <code>urn:ietf:params:oauth:grant-type:device_code</code>
    #            </p>
    #            <p>* Refresh Token - <code>refresh_token</code>
    #            </p>
    #   @return [String]
    # @!attribute device_code
    #   <p>Used only when calling this API for the Device Code grant type. This short-lived code is
    #         used to identify this authorization request. This comes from the result of the <a>StartDeviceAuthorization</a> API.</p>
    #   @return [String]
    # @!attribute code
    #   <p>Used only when calling this API for the Authorization Code grant type. The short-lived
    #         code is used to identify this authorization request.</p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p>Used only when calling this API for the Refresh Token grant type. This token is used to
    #         refresh short-lived tokens, such as the access token, that might expire.</p>
    #            <p>For more information about the features and limitations of the current IAM Identity Center OIDC
    #         implementation, see <i>Considerations for Using this Guide</i> in the <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html">IAM Identity Center
    #           OIDC API Reference</a>.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The list of scopes for which authorization is requested. The access token that is issued
    #         is limited to the scopes that are granted. If this value is not specified, IAM Identity Center authorizes
    #         all scopes that are configured for the client during the call to <a>RegisterClient</a>.</p>
    #   @return [Array<String>]
    # @!attribute redirect_uri
    #   <p>Used only when calling this API for the Authorization Code grant type. This value
    #         specifies the location of the client or application that has registered to receive the
    #         authorization code.</p>
    #   @return [String]
    # @!attribute code_verifier
    #   <p>Used only when calling this API for the Authorization Code grant type. This value is
    #         generated by the client and presented to validate the original code challenge value the client
    #         passed at authorization time.</p>
    #   @return [String]
    class CreateTokenRequest < Struct.new(
      :client_id,
      :client_secret,
      :grant_type,
      :device_code,
      :code,
      :refresh_token,
      :scope,
      :redirect_uri,
      :code_verifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>A bearer token to access Amazon Web Services accounts and applications assigned to a user.</p>
    #   @return [String]
    # @!attribute token_type
    #   <p>Used to notify the client that the returned token is an access token. The supported token
    #         type is <code>Bearer</code>.</p>
    #   @return [String]
    # @!attribute expires_in
    #   <p>Indicates the time in seconds when an access token will expire.</p>
    #   @return [Integer]
    # @!attribute refresh_token
    #   <p>A token that, if present, can be used to refresh a previously issued access token that
    #         might have expired.</p>
    #            <p>For more information about the features and limitations of the current IAM Identity Center OIDC
    #         implementation, see <i>Considerations for Using this Guide</i> in the <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html">IAM Identity Center
    #           OIDC API Reference</a>.</p>
    #   @return [String]
    # @!attribute id_token
    #   <p>The <code>idToken</code> is not implemented or supported. For more information about the
    #         features and limitations of the current IAM Identity Center OIDC implementation, see
    #           <i>Considerations for Using this Guide</i> in the <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html">IAM Identity Center
    #           OIDC API Reference</a>.</p>
    #            <p>A JSON Web Token (JWT) that identifies who is associated with the issued access token.
    #       </p>
    #   @return [String]
    class CreateTokenResponse < Struct.new(
      :access_token,
      :token_type,
      :expires_in,
      :refresh_token,
      :id_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:expires_in] = 0 unless options.key?(:expires_in)
        super
      end
    end

    # @!attribute client_id
    #   <p>The unique identifier string for the client or application. This value is an application
    #         ARN that has OAuth grants configured.</p>
    #   @return [String]
    # @!attribute grant_type
    #   <p>Supports the following OAuth grant types: Authorization Code, Refresh Token, JWT Bearer,
    #         and Token Exchange. Specify one of the following values, depending on the grant type that you
    #         want:</p>
    #            <p>* Authorization Code - <code>authorization_code</code>
    #            </p>
    #            <p>* Refresh Token - <code>refresh_token</code>
    #            </p>
    #            <p>* JWT Bearer - <code>urn:ietf:params:oauth:grant-type:jwt-bearer</code>
    #            </p>
    #            <p>* Token Exchange - <code>urn:ietf:params:oauth:grant-type:token-exchange</code>
    #            </p>
    #   @return [String]
    # @!attribute code
    #   <p>Used only when calling this API for the Authorization Code grant type. This short-lived
    #         code is used to identify this authorization request. The code is obtained through a redirect
    #         from IAM Identity Center to a redirect URI persisted in the Authorization Code GrantOptions for the
    #         application.</p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p>Used only when calling this API for the Refresh Token grant type. This token is used to
    #         refresh short-lived tokens, such as the access token, that might expire.</p>
    #            <p>For more information about the features and limitations of the current IAM Identity Center OIDC
    #         implementation, see <i>Considerations for Using this Guide</i> in the <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html">IAM Identity Center
    #           OIDC API Reference</a>.</p>
    #   @return [String]
    # @!attribute assertion
    #   <p>Used only when calling this API for the JWT Bearer grant type. This value specifies the
    #         JSON Web Token (JWT) issued by a trusted token issuer. To authorize a trusted token issuer,
    #         configure the JWT Bearer GrantOptions for the application.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The list of scopes for which authorization is requested. The access token that is issued
    #         is limited to the scopes that are granted. If the value is not specified, IAM Identity Center authorizes all
    #         scopes configured for the application, including the following default scopes:
    #           <code>openid</code>, <code>aws</code>, <code>sts:identity_context</code>.</p>
    #   @return [Array<String>]
    # @!attribute redirect_uri
    #   <p>Used only when calling this API for the Authorization Code grant type. This value
    #         specifies the location of the client or application that has registered to receive the
    #         authorization code. </p>
    #   @return [String]
    # @!attribute subject_token
    #   <p>Used only when calling this API for the Token Exchange grant type. This value specifies
    #         the subject of the exchange. The value of the subject token must be an access token issued by
    #         IAM Identity Center to a different client or application. The access token must have authorized scopes that
    #         indicate the requested application as a target audience.</p>
    #   @return [String]
    # @!attribute subject_token_type
    #   <p>Used only when calling this API for the Token Exchange grant type. This value specifies
    #         the type of token that is passed as the subject of the exchange. The following value is
    #         supported:</p>
    #            <p>* Access Token - <code>urn:ietf:params:oauth:token-type:access_token</code>
    #            </p>
    #   @return [String]
    # @!attribute requested_token_type
    #   <p>Used only when calling this API for the Token Exchange grant type. This value specifies
    #         the type of token that the requester can receive. The following values are supported:</p>
    #            <p>* Access Token - <code>urn:ietf:params:oauth:token-type:access_token</code>
    #            </p>
    #            <p>* Refresh Token - <code>urn:ietf:params:oauth:token-type:refresh_token</code>
    #            </p>
    #   @return [String]
    # @!attribute code_verifier
    #   <p>Used only when calling this API for the Authorization Code grant type. This value is
    #         generated by the client and presented to validate the original code challenge value the client
    #         passed at authorization time.</p>
    #   @return [String]
    class CreateTokenWithIAMRequest < Struct.new(
      :client_id,
      :grant_type,
      :code,
      :refresh_token,
      :assertion,
      :scope,
      :redirect_uri,
      :subject_token,
      :subject_token_type,
      :requested_token_type,
      :code_verifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>A bearer token to access Amazon Web Services accounts and applications assigned to a user.</p>
    #   @return [String]
    # @!attribute token_type
    #   <p>Used to notify the requester that the returned token is an access token. The supported
    #         token type is <code>Bearer</code>.</p>
    #   @return [String]
    # @!attribute expires_in
    #   <p>Indicates the time in seconds when an access token will expire.</p>
    #   @return [Integer]
    # @!attribute refresh_token
    #   <p>A token that, if present, can be used to refresh a previously issued access token that
    #         might have expired.</p>
    #            <p>For more information about the features and limitations of the current IAM Identity Center OIDC
    #         implementation, see <i>Considerations for Using this Guide</i> in the <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html">IAM Identity Center
    #           OIDC API Reference</a>.</p>
    #   @return [String]
    # @!attribute id_token
    #   <p>A JSON Web Token (JWT) that identifies the user associated with the issued access token.
    #       </p>
    #   @return [String]
    # @!attribute issued_token_type
    #   <p>Indicates the type of tokens that are issued by IAM Identity Center. The following values are supported: </p>
    #            <p>* Access Token - <code>urn:ietf:params:oauth:token-type:access_token</code>
    #            </p>
    #            <p>* Refresh Token - <code>urn:ietf:params:oauth:token-type:refresh_token</code>
    #            </p>
    #   @return [String]
    # @!attribute scope
    #   <p>The list of scopes for which authorization is granted. The access token that is issued is
    #         limited to the scopes that are granted.</p>
    #   @return [Array<String>]
    # @!attribute aws_additional_details
    #   <p>A structure containing information from the <code>idToken</code>. Only the
    #           <code>identityContext</code> is in it, which is a value extracted from the
    #           <code>idToken</code>. This provides direct access to identity information without requiring
    #         JWT parsing.</p>
    #   @return [Types::AwsAdditionalDetails]
    class CreateTokenWithIAMResponse < Struct.new(
      :access_token,
      :token_type,
      :expires_in,
      :refresh_token,
      :id_token,
      :issued_token_type,
      :scope,
      :aws_additional_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:expires_in] = 0 unless options.key?(:expires_in)
        super
      end
    end

    # <p>Indicates that the token issued by the service is expired and is no longer valid.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be <code>expired_token</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class ExpiredTokenException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that an error from the service occurred while trying to process a
    #       request.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be <code>server_error</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the <code>clientId</code> or <code>clientSecret</code> in the request is
    #       invalid. For example, this can occur when a client sends an incorrect <code>clientId</code> or
    #       an expired <code>clientSecret</code>.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be
    #         <code>invalid_client</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class InvalidClientException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the client information sent in the request during registration is
    #       invalid.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be
    #           <code>invalid_client_metadata</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class InvalidClientMetadataException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a request contains an invalid grant. This can occur if a client makes a
    #         <a>CreateToken</a> request with an invalid grant type.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be <code>invalid_grant</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class InvalidGrantException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that one or more redirect URI in the request is not supported for this
    #       operation.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be
    #         <code>invalid_redirect_uri</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class InvalidRedirectUriException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that something is wrong with the input to the request. For example, a required
    #       parameter might be missing or out of range.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be
    #         <code>invalid_request</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a token provided as input to the request was issued by and is only usable
    #       by calling IAM Identity Center endpoints in another region.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be
    #         <code>invalid_request</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>Indicates the IAM Identity Center endpoint which the requester may call with this token.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Indicates the region which the requester may call with this token.</p>
    #   @return [String]
    class InvalidRequestRegionException < Struct.new(
      :error,
      :error_description,
      :endpoint,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the scope provided in the request is invalid.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be <code>invalid_scope</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class InvalidScopeException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_name
    #   <p>The friendly name of the client.</p>
    #   @return [String]
    # @!attribute client_type
    #   <p>The type of client. The service supports only <code>public</code> as a client type.
    #         Anything other than public will be rejected by the service.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The list of scopes that are defined by the client. Upon authorization, this list is used
    #         to restrict permissions when granting an access token.</p>
    #   @return [Array<String>]
    # @!attribute redirect_uris
    #   <p>The list of redirect URI that are defined by the client. At completion of authorization,
    #         this list is used to restrict what locations the user agent can be redirected back to.</p>
    #   @return [Array<String>]
    # @!attribute grant_types
    #   <p>The list of OAuth 2.0 grant types that are defined by the client. This list is used to
    #         restrict the token granting flows available to the client. Supports the following OAuth 2.0
    #         grant types: Authorization Code, Device Code, and Refresh Token. </p>
    #            <p>* Authorization Code - <code>authorization_code</code>
    #            </p>
    #            <p>* Device Code - <code>urn:ietf:params:oauth:grant-type:device_code</code>
    #            </p>
    #            <p>* Refresh Token - <code>refresh_token</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute issuer_url
    #   <p>The IAM Identity Center Issuer URL associated with an instance of IAM Identity Center. This value is needed for user
    #         access to resources through the client.</p>
    #   @return [String]
    # @!attribute entitled_application_arn
    #   <p>This IAM Identity Center application ARN is used to define administrator-managed configuration for
    #         public client access to resources. At authorization, the scopes, grants, and redirect URI
    #         available to this client will be restricted by this application resource.</p>
    #   @return [String]
    class RegisterClientRequest < Struct.new(
      :client_name,
      :client_type,
      :scopes,
      :redirect_uris,
      :grant_types,
      :issuer_url,
      :entitled_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_id
    #   <p>The unique identifier string for each client. This client uses this identifier to get
    #         authenticated by the service in subsequent calls.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>A secret string generated for the client. The client will use this string to get
    #         authenticated by the service in subsequent calls.</p>
    #   @return [String]
    # @!attribute client_id_issued_at
    #   <p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> were
    #         issued.</p>
    #   @return [Integer]
    # @!attribute client_secret_expires_at
    #   <p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> will
    #         become invalid.</p>
    #   @return [Integer]
    # @!attribute authorization_endpoint
    #   <p>An endpoint that the client can use to request authorization.</p>
    #   @return [String]
    # @!attribute token_endpoint
    #   <p>An endpoint that the client can use to create tokens.</p>
    #   @return [String]
    class RegisterClientResponse < Struct.new(
      :client_id,
      :client_secret,
      :client_id_issued_at,
      :client_secret_expires_at,
      :authorization_endpoint,
      :token_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_id_issued_at] = 0 unless options.key?(:client_id_issued_at)
        options[:client_secret_expires_at] = 0 unless options.key?(:client_secret_expires_at)
        super
      end
    end

    # <p>Indicates that the client is making the request too frequently and is more than the
    #       service can handle. </p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be <code>slow_down</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class SlowDownException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_id
    #   <p>The unique identifier string for the client that is registered with IAM Identity Center. This value
    #         should come from the persisted result of the <a>RegisterClient</a> API
    #         operation.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>A secret string that is generated for the client. This value should come from the
    #         persisted result of the <a>RegisterClient</a> API operation.</p>
    #   @return [String]
    # @!attribute start_url
    #   <p>The URL for the Amazon Web Services access portal. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html">Using
    #           the Amazon Web Services access portal</a> in the <i>IAM Identity Center User Guide</i>.</p>
    #   @return [String]
    class StartDeviceAuthorizationRequest < Struct.new(
      :client_id,
      :client_secret,
      :start_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_code
    #   <p>The short-lived code that is used by the device when polling for a session token.</p>
    #   @return [String]
    # @!attribute user_code
    #   <p>A one-time user verification code. This is needed to authorize an in-use device.</p>
    #   @return [String]
    # @!attribute verification_uri
    #   <p>The URI of the verification page that takes the <code>userCode</code> to authorize the
    #         device.</p>
    #   @return [String]
    # @!attribute verification_uri_complete
    #   <p>An alternate URL that the client can use to automatically launch a browser. This process
    #         skips the manual step in which the user visits the verification page and enters their
    #         code.</p>
    #   @return [String]
    # @!attribute expires_in
    #   <p>Indicates the number of seconds in which the verification code will become invalid.</p>
    #   @return [Integer]
    # @!attribute interval
    #   <p>Indicates the number of seconds the client must wait between attempts when polling for a
    #         session.</p>
    #   @return [Integer]
    class StartDeviceAuthorizationResponse < Struct.new(
      :device_code,
      :user_code,
      :verification_uri,
      :verification_uri_complete,
      :expires_in,
      :interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:expires_in] = 0 unless options.key?(:expires_in)
        options[:interval] = 0 unless options.key?(:interval)
        super
      end
    end

    # <p>Indicates that the client is not currently authorized to make the request. This can happen
    #       when a <code>clientId</code> is not issued for a public client.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be
    #         <code>unauthorized_client</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class UnauthorizedClientException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the grant type in the request is not supported by the service.</p>
    # @!attribute error
    #   <p>Single error code. For this exception the value will be
    #           <code>unsupported_grant_type</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Human-readable text providing additional information, used to assist the client developer
    #         in understanding the error that occurred.</p>
    #   @return [String]
    class UnsupportedGrantTypeException < Struct.new(
      :error,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
