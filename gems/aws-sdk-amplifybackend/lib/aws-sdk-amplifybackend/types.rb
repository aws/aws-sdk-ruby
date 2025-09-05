# frozen_string_literal: true

# This is generated code!

module Aws::AmplifyBackend
  # This module contains the types returned by client operations.
  module Types

    # <p>The authentication settings for accessing provisioned data models in your Amplify project.</p>
    # @!attribute cognito_user_pool_id
    #   <p>The Amazon Cognito user pool ID, if Amazon Cognito was used as an authentication setting to access your data models.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The API key description for API_KEY, if it was used as an authentication mechanism to access your data models.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The API key expiration time for API_KEY, if it was used as an authentication mechanism to access your data models.</p>
    #   @return [Float]
    # @!attribute open_id_auth_ttl
    #   <p>The expiry time for the OpenID authentication mechanism.</p>
    #   @return [String]
    # @!attribute open_id_client_id
    #   <p>The clientID for openID, if openID was used as an authentication setting to access your data models.</p>
    #   @return [String]
    # @!attribute open_id_iat_ttl
    #   <p>The expiry time for the OpenID authentication mechanism.</p>
    #   @return [String]
    # @!attribute open_id_issue_url
    #   <p>The openID issuer URL, if openID was used as an authentication setting to access your data models.</p>
    #   @return [String]
    # @!attribute open_id_provider_name
    #   <p>The OpenID provider name, if OpenID was used as an authentication mechanism to access your data models.</p>
    #   @return [String]
    class BackendAPIAppSyncAuthSettings < Struct.new(
      :cognito_user_pool_id,
      :description,
      :expiration_time,
      :open_id_auth_ttl,
      :open_id_client_id,
      :open_id_iat_ttl,
      :open_id_issue_url,
      :open_id_provider_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the auth types for your configured data models.</p>
    # @!attribute mode
    #   <p>Describes the authentication mode.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>Describes settings for the authentication mode.</p>
    #   @return [Types::BackendAPIAppSyncAuthSettings]
    class BackendAPIAuthType < Struct.new(
      :mode,
      :settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the conflict resolution configuration for your data model configured in your Amplify project.</p>
    # @!attribute resolution_strategy
    #   <p>The strategy for conflict resolution.</p>
    #   @return [String]
    class BackendAPIConflictResolution < Struct.new(
      :resolution_strategy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource config for the data model, configured as a part of the Amplify project.</p>
    # @!attribute additional_auth_types
    #   <p>Additional authentication methods used to interact with your data models.</p>
    #   @return [Array<Types::BackendAPIAuthType>]
    # @!attribute api_name
    #   <p>The API name used to interact with the data model, configured as a part of your Amplify project.</p>
    #   @return [String]
    # @!attribute conflict_resolution
    #   <p>The conflict resolution strategy for your data stored in the data models.</p>
    #   @return [Types::BackendAPIConflictResolution]
    # @!attribute default_auth_type
    #   <p>The default authentication type for interacting with the configured data models in your Amplify project.</p>
    #   @return [Types::BackendAPIAuthType]
    # @!attribute service
    #   <p>The service used to provision and interact with the data model.</p>
    #   @return [String]
    # @!attribute transform_schema
    #   <p>The definition of the data model in the annotated transform of the GraphQL schema.</p>
    #   @return [String]
    class BackendAPIResourceConfig < Struct.new(
      :additional_auth_types,
      :api_name,
      :conflict_resolution,
      :default_auth_type,
      :service,
      :transform_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes Apple social federation configurations for allowing your app users to sign in using OAuth.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute client_id
    #   <p>Describes the client_id (also called Services ID) that comes from Apple.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>Describes the key_id that comes from Apple.</p>
    #   @return [String]
    # @!attribute private_key
    #   <p>Describes the private_key that comes from Apple.</p>
    #   @return [String]
    # @!attribute team_id
    #   <p>Describes the team_id that comes from Apple.</p>
    #   @return [String]
    class BackendAuthAppleProviderConfig < Struct.new(
      :client_id,
      :key_id,
      :private_key,
      :team_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute client_id
    #   <p>Describes the client_id, which can be obtained from the third-party social federation provider.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>Describes the client_secret, which can be obtained from third-party social federation providers.</p>
    #   @return [String]
    class BackendAuthSocialProviderConfig < Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for this operation.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the job was created.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time when the job was last updated.</p>
    #   @return [String]
    class BackendJobRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :create_time,
      :error,
      :job_id,
      :operation,
      :status,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the read, write, and delete permissions users have against your storage S3 bucket.</p>
    # @!attribute authenticated
    #   <p>Lists all authenticated user read, write, and delete permissions for your S3 bucket.</p>
    #   @return [Array<String>]
    # @!attribute un_authenticated
    #   <p>Lists all unauthenticated user read, write, and delete permissions for your S3 bucket.</p>
    #   @return [Array<String>]
    class BackendStoragePermissions < Struct.new(
      :authenticated,
      :un_authenticated,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An error returned if a request is not formed properly.</p>
    # @!attribute message
    #   <p>An error message to inform that the request failed.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for CloneBackend.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute target_environment_name
    #   <p>The name of the destination backend environment to be created.</p>
    #   @return [String]
    class CloneBackendRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :target_environment_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class CloneBackendResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for CreateBackendAPI.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration for this request.</p>
    #   @return [Types::BackendAPIResourceConfig]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class CreateBackendAPIRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class CreateBackendAPIResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p><b>(DEPRECATED)</b> Describes the forgot password policy for authenticating into the Amplify app.</p>
    # @!attribute delivery_method
    #   <p><b>(DEPRECATED)</b> Describes which mode to use (either SMS or email) to deliver messages to app users who want to recover their password.</p>
    #   @return [String]
    # @!attribute email_settings
    #   <p><b>(DEPRECATED)</b> The configuration for the email sent when an app user forgets their password.</p>
    #   @return [Types::EmailSettings]
    # @!attribute sms_settings
    #   <p><b>(DEPRECATED)</b> The configuration for the SMS message sent when an app user forgets their password.</p>
    #   @return [Types::SmsSettings]
    class CreateBackendAuthForgotPasswordConfig < Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes authorization configurations for the auth resources, configured as a part of your Amplify project.</p>
    # @!attribute identity_pool_name
    #   <p>Name of the Amazon Cognito identity pool used for authorization.</p>
    #   @return [String]
    # @!attribute unauthenticated_login
    #   <p>Set to true or false based on whether you want to enable guest authorization to your Amplify app.</p>
    #   @return [Boolean]
    class CreateBackendAuthIdentityPoolConfig < Struct.new(
      :identity_pool_name,
      :unauthenticated_login,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>
    # @!attribute mfa_mode
    #   <p>Describes whether MFA should be [ON, OFF, or OPTIONAL] for authentication in your Amplify project.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>Describes the configuration settings and methods for your Amplify app users to use MFA.</p>
    #   @return [Types::Settings]
    class CreateBackendAuthMFAConfig < Struct.new(
      :mfa_mode,
      :settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Creates the OAuth configuration for your Amplify project.</p>
    # @!attribute domain_prefix
    #   <p>The domain prefix for your Amplify app.</p>
    #   @return [String]
    # @!attribute o_auth_grant_type
    #   <p>The OAuth grant type that you use to allow app users to authenticate from your Amplify app.</p>
    #   @return [String]
    # @!attribute o_auth_scopes
    #   <p>List of OAuth-related flows used to allow your app users to authenticate from your Amplify app.</p>
    #   @return [Array<String>]
    # @!attribute redirect_sign_in_ur_is
    #   <p>The redirected URI for signing in to your Amplify app.</p>
    #   @return [Array<String>]
    # @!attribute redirect_sign_out_ur_is
    #   <p>Redirect URLs that OAuth uses when a user signs out of an Amplify app.</p>
    #   @return [Array<String>]
    # @!attribute social_provider_settings
    #   <p>The settings for using social providers to access your Amplify app.</p>
    #   @return [Types::SocialProviderSettings]
    class CreateBackendAuthOAuthConfig < Struct.new(
      :domain_prefix,
      :o_auth_grant_type,
      :o_auth_scopes,
      :redirect_sign_in_ur_is,
      :redirect_sign_out_ur_is,
      :social_provider_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The password policy configuration for the backend to your Amplify project.</p>
    # @!attribute additional_constraints
    #   <p>Additional constraints for the password used to access the backend of your Amplify project.</p>
    #   @return [Array<String>]
    # @!attribute minimum_length
    #   <p>The minimum length of the password used to access the backend of your Amplify project.</p>
    #   @return [Float]
    class CreateBackendAuthPasswordPolicyConfig < Struct.new(
      :additional_constraints,
      :minimum_length,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for CreateBackendAuth.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration for this request object.</p>
    #   @return [Types::CreateBackendAuthResourceConfig]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class CreateBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the resource configuration when creating an auth resource in your Amplify project.</p>
    # @!attribute auth_resources
    #   <p>Defines whether you want to configure only authentication or both authentication and authorization settings.</p>
    #   @return [String]
    # @!attribute identity_pool_configs
    #   <p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>
    #   @return [Types::CreateBackendAuthIdentityPoolConfig]
    # @!attribute service
    #   <p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>
    #   @return [String]
    # @!attribute user_pool_configs
    #   <p>Describes authentication configuration for the Amazon Cognito user pool, provisioned as a part of your auth resource in the Amplify project.</p>
    #   @return [Types::CreateBackendAuthUserPoolConfig]
    class CreateBackendAuthResourceConfig < Struct.new(
      :auth_resources,
      :identity_pool_configs,
      :service,
      :user_pool_configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class CreateBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon Cognito user pool configuration for the auth resource to be configured for your Amplify project.</p>
    # @!attribute forgot_password
    #   <p><b>(DEPRECATED)</b> Describes the forgotten password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #   @return [Types::CreateBackendAuthForgotPasswordConfig]
    # @!attribute mfa
    #   <p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>
    #   @return [Types::CreateBackendAuthMFAConfig]
    # @!attribute o_auth
    #   <p>Describes the OAuth policy and rules for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #   @return [Types::CreateBackendAuthOAuthConfig]
    # @!attribute password_policy
    #   <p>Describes the password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #   @return [Types::CreateBackendAuthPasswordPolicyConfig]
    # @!attribute required_sign_up_attributes
    #   <p>The required attributes to sign up new users in the user pool.</p>
    #   @return [Array<String>]
    # @!attribute sign_in_method
    #   <p>Describes the sign-in methods that your Amplify app users use to log in using the Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #   @return [String]
    # @!attribute user_pool_name
    #   <p>The Amazon Cognito user pool name.</p>
    #   @return [String]
    # @!attribute verification_message
    #   <p>Describes the email or SMS verification message for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #   @return [Types::CreateBackendAuthVerificationMessageConfig]
    class CreateBackendAuthUserPoolConfig < Struct.new(
      :forgot_password,
      :mfa,
      :o_auth,
      :password_policy,
      :required_sign_up_attributes,
      :sign_in_method,
      :user_pool_name,
      :verification_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Creates an email or SMS verification message for the auth resource configured for your Amplify project.</p>
    # @!attribute delivery_method
    #   <p>The type of verification message to send.</p>
    #   @return [String]
    # @!attribute email_settings
    #   <p>The settings for the email message.</p>
    #   @return [Types::EmailSettings]
    # @!attribute sms_settings
    #   <p>The settings for the SMS message.</p>
    #   @return [Types::SmsSettings]
    class CreateBackendAuthVerificationMessageConfig < Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for CreateBackendConfig.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_manager_app_id
    #   <p>The app ID for the backend manager.</p>
    #   @return [String]
    class CreateBackendConfigRequest < Struct.new(
      :app_id,
      :backend_manager_app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class CreateBackendConfigResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for CreateBackend.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute app_name
    #   <p>The name of the app.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration for creating a backend.</p>
    #   @return [Types::ResourceConfig]
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #   @return [String]
    class CreateBackendRequest < Struct.new(
      :app_id,
      :app_name,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class CreateBackendResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for CreateBackendStorage.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration for creating backend storage.</p>
    #   @return [Types::CreateBackendStorageResourceConfig]
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #   @return [String]
    class CreateBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource configuration for creating backend storage.</p>
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>The authorization configuration for the storage S3 bucket.</p>
    #   @return [Types::BackendStoragePermissions]
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #   @return [String]
    class CreateBackendStorageResourceConfig < Struct.new(
      :bucket_name,
      :permissions,
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class CreateBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    class CreateTokenRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute challenge_code
    #   <p>One-time challenge code for authenticating into the Amplify Admin UI.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>A unique ID provided when creating a new challenge token.</p>
    #   @return [String]
    # @!attribute ttl
    #   <p>The expiry time for the one-time generated token code.</p>
    #   @return [String]
    class CreateTokenResponse < Struct.new(
      :app_id,
      :challenge_code,
      :session_id,
      :ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for DeleteBackendAPI.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #   @return [Types::BackendAPIResourceConfig]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class DeleteBackendAPIRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class DeleteBackendAPIResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for DeleteBackendAuth.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class DeleteBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class DeleteBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    class DeleteBackendRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class DeleteBackendResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for DeleteBackendStorage.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #   @return [String]
    class DeleteBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class DeleteBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class DeleteTokenRequest < Struct.new(
      :app_id,
      :session_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_success
    #   <p>Indicates whether the request succeeded or failed.</p>
    #   @return [Boolean]
    class DeleteTokenResponse < Struct.new(
      :is_success,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the email sent when an app user forgets their password.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute email_message
    #   <p>The contents of the email message.</p>
    #   @return [String]
    # @!attribute email_subject
    #   <p>The contents of the subject line of the email message.</p>
    #   @return [String]
    class EmailSettings < Struct.new(
      :email_message,
      :email_subject,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An error returned if there's a temporary issue with the service.</p>
    # @!attribute message
    #   <p>An error message to inform that the request failed.</p>
    #   @return [String]
    class GatewayTimeoutException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for GenerateBackendAPIModels.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class GenerateBackendAPIModelsRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class GenerateBackendAPIModelsResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for GetBackendAPIModels.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class GetBackendAPIModelsRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute models
    #   <p>Stringified JSON of the datastore model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute model_introspection_schema
    #   <p>Stringified JSON of the model introspection schema for an existing backend API resource.</p>
    #   @return [String]
    class GetBackendAPIModelsResponse < Struct.new(
      :models,
      :status,
      :model_introspection_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for GetBackendAPI.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #   @return [Types::BackendAPIResourceConfig]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class GetBackendAPIRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration for this response object.</p>
    #   @return [Types::BackendAPIResourceConfig]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class GetBackendAPIResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for GetBackendAuth.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class GetBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration for authorization requests to the backend of your Amplify project.</p>
    #   @return [Types::CreateBackendAuthResourceConfig]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class GetBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    class GetBackendJobRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the job was created.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time when the job was last updated.</p>
    #   @return [String]
    class GetBackendJobResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :create_time,
      :error,
      :job_id,
      :operation,
      :status,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for GetBackend.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    class GetBackendRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute amplify_feature_flags
    #   <p>A stringified version of the cli.json file for your Amplify project.</p>
    #   @return [String]
    # @!attribute amplify_meta_config
    #   <p>A stringified version of the current configs for your Amplify project.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute app_name
    #   <p>The name of the app.</p>
    #   @return [String]
    # @!attribute backend_environment_list
    #   <p>A list of backend environments in an array.</p>
    #   @return [Array<String>]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request failed, this is the returned error.</p>
    #   @return [String]
    class GetBackendResponse < Struct.new(
      :amplify_feature_flags,
      :amplify_meta_config,
      :app_id,
      :app_name,
      :backend_environment_list,
      :backend_environment_name,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for GetBackendStorage.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #   @return [String]
    class GetBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details for a backend storage resource.</p>
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute imported
    #   <p>Returns True if the storage resource has been imported.</p>
    #   @return [Boolean]
    # @!attribute permissions
    #   <p>The authorization configuration for the storage S3 bucket.</p>
    #   @return [Types::BackendStoragePermissions]
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #   @return [String]
    class GetBackendStorageResourceConfig < Struct.new(
      :bucket_name,
      :imported,
      :permissions,
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration for the backend storage resource.</p>
    #   @return [Types::GetBackendStorageResourceConfig]
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #   @return [String]
    class GetBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class GetTokenRequest < Struct.new(
      :app_id,
      :session_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute challenge_code
    #   <p>The one-time challenge code for authenticating into the Amplify Admin UI.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>A unique ID provided when creating a new challenge token.</p>
    #   @return [String]
    # @!attribute ttl
    #   <p>The expiry time for the one-time generated token code.</p>
    #   @return [String]
    class GetTokenResponse < Struct.new(
      :app_id,
      :challenge_code,
      :session_id,
      :ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for ImportBackendAuth.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute identity_pool_id
    #   <p>The ID of the Amazon Cognito identity pool.</p>
    #   @return [String]
    # @!attribute native_client_id
    #   <p>The ID of the Amazon Cognito native client.</p>
    #   @return [String]
    # @!attribute user_pool_id
    #   <p>The ID of the Amazon Cognito user pool.</p>
    #   @return [String]
    # @!attribute web_client_id
    #   <p>The ID of the Amazon Cognito web client.</p>
    #   @return [String]
    class ImportBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :identity_pool_id,
      :native_client_id,
      :user_pool_id,
      :web_client_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class ImportBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for ImportBackendStorage.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #   @return [String]
    class ImportBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :bucket_name,
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class ImportBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for ListBackendJobs.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>Filters the list of response objects to include only those with the specified operation name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the list of response objects to include only those with the specified status.</p>
    #   @return [String]
    class ListBackendJobsRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :max_results,
      :next_token,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>An array of jobs and their properties.</p>
    #   @return [Array<Types::BackendJobRespObj>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListBackendJobsResponse < Struct.new(
      :jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for S3Buckets.</p>
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class ListS3BucketsRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute buckets
    #   <p>The list of S3 buckets.</p>
    #   @return [Array<Types::S3BucketInfo>]
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class ListS3BucketsResponse < Struct.new(
      :buckets,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for this operation.</p>
    # @!attribute aws_cognito_identity_pool_id
    #   <p>The Amazon Cognito identity pool ID used for the Amplify Admin UI login authorization.</p>
    #   @return [String]
    # @!attribute aws_cognito_region
    #   <p>The AWS Region for the Amplify Admin UI login.</p>
    #   @return [String]
    # @!attribute aws_user_pools_id
    #   <p>The Amazon Cognito user pool ID used for Amplify Admin UI login authentication.</p>
    #   @return [String]
    # @!attribute aws_user_pools_web_client_id
    #   <p>The web client ID for the Amazon Cognito user pools.</p>
    #   @return [String]
    class LoginAuthConfigReqObj < Struct.new(
      :aws_cognito_identity_pool_id,
      :aws_cognito_region,
      :aws_user_pools_id,
      :aws_user_pools_web_client_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An error returned when a specific resource type is not found.</p>
    # @!attribute message
    #   <p>An error message to inform that the request has failed.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that is not found.</p>
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for RemoveAllBackends.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute clean_amplify_app
    #   <p>Cleans up the Amplify Console app if this value is set to true.</p>
    #   @return [Boolean]
    class RemoveAllBackendsRequest < Struct.new(
      :app_id,
      :clean_amplify_app,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class RemoveAllBackendsResponse < Struct.new(
      :app_id,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    class RemoveBackendConfigRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    class RemoveBackendConfigResponse < Struct.new(
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the resource configuration for the data model in your Amplify project.</p>
    class ResourceConfig < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the metadata of the S3 bucket.</p>
    # @!attribute creation_date
    #   <p>The creation date of the S3 bucket.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    class S3BucketInfo < Struct.new(
      :creation_date,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The settings of your MFA configuration for the backend of your Amplify project.</p>
    # @!attribute mfa_types
    #   <p>The supported MFA types.</p>
    #   @return [Array<String>]
    # @!attribute sms_message
    #   <p>The body of the SMS message.</p>
    #   @return [String]
    class Settings < Struct.new(
      :mfa_types,
      :sms_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>SMS settings for authentication.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute sms_message
    #   <p>The contents of the SMS message.</p>
    #   @return [String]
    class SmsSettings < Struct.new(
      :sms_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for using the social identity providers for access to your Amplify app.</p>
    # @!attribute facebook
    #   <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    #   @return [Types::BackendAuthSocialProviderConfig]
    # @!attribute google
    #   <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    #   @return [Types::BackendAuthSocialProviderConfig]
    # @!attribute login_with_amazon
    #   <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    #   @return [Types::BackendAuthSocialProviderConfig]
    # @!attribute sign_in_with_apple
    #   <p>Describes Apple social federation configurations for allowing your app users to sign in using OAuth.</p>
    #   @return [Types::BackendAuthAppleProviderConfig]
    class SocialProviderSettings < Struct.new(
      :facebook,
      :google,
      :login_with_amazon,
      :sign_in_with_apple,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An error that is returned when a limit of a specific type has been exceeded.</p>
    # @!attribute limit_type
    #   <p>The type of limit that was exceeded.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An error message to inform that the request has failed.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :limit_type,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for UpdateBackendAPI.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #   @return [Types::BackendAPIResourceConfig]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class UpdateBackendAPIRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class UpdateBackendAPIResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p><b>(DEPRECATED)</b> Describes the forgot password policy for authenticating into the Amplify app.</p>
    # @!attribute delivery_method
    #   <p><b>(DEPRECATED)</b> Describes which mode to use (either SMS or email) to deliver messages to app users that want to recover their password.</p>
    #   @return [String]
    # @!attribute email_settings
    #   <p><b>(DEPRECATED)</b> The configuration for the email sent when an app user forgets their password.</p>
    #   @return [Types::EmailSettings]
    # @!attribute sms_settings
    #   <p><b>(DEPRECATED)</b> The configuration for the SMS message sent when an Amplify app user forgets their password.</p>
    #   @return [Types::SmsSettings]
    class UpdateBackendAuthForgotPasswordConfig < Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>
    # @!attribute unauthenticated_login
    #   <p>A boolean value that can be set to allow or disallow guest-level authorization into your Amplify app.</p>
    #   @return [Boolean]
    class UpdateBackendAuthIdentityPoolConfig < Struct.new(
      :unauthenticated_login,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the multi-factor authentication (MFA) configuration for the backend of your Amplify project.</p>
    # @!attribute mfa_mode
    #   <p>The MFA mode for the backend of your Amplify project.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>The settings of your MFA configuration for the backend of your Amplify project.</p>
    #   @return [Types::Settings]
    class UpdateBackendAuthMFAConfig < Struct.new(
      :mfa_mode,
      :settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The OAuth configurations for authenticating users into your Amplify app.</p>
    # @!attribute domain_prefix
    #   <p>The Amazon Cognito domain prefix used to create a hosted UI for authentication.</p>
    #   @return [String]
    # @!attribute o_auth_grant_type
    #   <p>The OAuth grant type to allow app users to authenticate from your Amplify app.</p>
    #   @return [String]
    # @!attribute o_auth_scopes
    #   <p>The list of OAuth-related flows that can allow users to authenticate from your Amplify app.</p>
    #   @return [Array<String>]
    # @!attribute redirect_sign_in_ur_is
    #   <p>Redirect URLs that OAuth uses when a user signs in to an Amplify app.</p>
    #   @return [Array<String>]
    # @!attribute redirect_sign_out_ur_is
    #   <p>Redirect URLs that OAuth uses when a user signs out of an Amplify app.</p>
    #   @return [Array<String>]
    # @!attribute social_provider_settings
    #   <p>Describes third-party social federation configurations for allowing your users to sign in with OAuth.</p>
    #   @return [Types::SocialProviderSettings]
    class UpdateBackendAuthOAuthConfig < Struct.new(
      :domain_prefix,
      :o_auth_grant_type,
      :o_auth_scopes,
      :redirect_sign_in_ur_is,
      :redirect_sign_out_ur_is,
      :social_provider_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the password policy for your Amazon Cognito user pool configured as a part of your Amplify project.</p>
    # @!attribute additional_constraints
    #   <p>Describes additional constraints on password requirements to sign in to the auth resource, configured as a part of your Amplify project.</p>
    #   @return [Array<String>]
    # @!attribute minimum_length
    #   <p>Describes the minimum length of the password required to sign in to the auth resource, configured as a part of your Amplify project.</p>
    #   @return [Float]
    class UpdateBackendAuthPasswordPolicyConfig < Struct.new(
      :additional_constraints,
      :minimum_length,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for UpdateBackendAuth.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration for this request object.</p>
    #   @return [Types::UpdateBackendAuthResourceConfig]
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #   @return [String]
    class UpdateBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the resource configuration when updating an authentication resource in your Amplify project.</p>
    # @!attribute auth_resources
    #   <p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>
    #   @return [String]
    # @!attribute identity_pool_configs
    #   <p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>
    #   @return [Types::UpdateBackendAuthIdentityPoolConfig]
    # @!attribute service
    #   <p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>
    #   @return [String]
    # @!attribute user_pool_configs
    #   <p>Describes the authentication configuration for the Amazon Cognito user pool, provisioned as a part of your auth resource in the Amplify project.</p>
    #   @return [Types::UpdateBackendAuthUserPoolConfig]
    class UpdateBackendAuthResourceConfig < Struct.new(
      :auth_resources,
      :identity_pool_configs,
      :service,
      :user_pool_configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class UpdateBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon Cognito user pool configuration for the authorization resource to be configured for your Amplify project on an update.</p>
    # @!attribute forgot_password
    #   <p><b>(DEPRECATED)</b> Describes the forgot password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #   @return [Types::UpdateBackendAuthForgotPasswordConfig]
    # @!attribute mfa
    #   <p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>
    #   @return [Types::UpdateBackendAuthMFAConfig]
    # @!attribute o_auth
    #   <p>Describes the OAuth policy and rules for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #   @return [Types::UpdateBackendAuthOAuthConfig]
    # @!attribute password_policy
    #   <p>Describes the password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #   @return [Types::UpdateBackendAuthPasswordPolicyConfig]
    # @!attribute verification_message
    #   <p>Describes the email or SMS verification message for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #   @return [Types::UpdateBackendAuthVerificationMessageConfig]
    class UpdateBackendAuthUserPoolConfig < Struct.new(
      :forgot_password,
      :mfa,
      :o_auth,
      :password_policy,
      :verification_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the configuration of the email or SMS message for the auth resource configured for your Amplify project.</p>
    # @!attribute delivery_method
    #   <p>The type of verification message to send.</p>
    #   @return [String]
    # @!attribute email_settings
    #   <p>The settings for the email message.</p>
    #   @return [Types::EmailSettings]
    # @!attribute sms_settings
    #   <p>The settings for the SMS message.</p>
    #   @return [Types::SmsSettings]
    class UpdateBackendAuthVerificationMessageConfig < Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for UpdateBackendConfig.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute login_auth_config
    #   <p>Describes the Amazon Cognito configuration for Admin UI access.</p>
    #   @return [Types::LoginAuthConfigReqObj]
    class UpdateBackendConfigRequest < Struct.new(
      :app_id,
      :login_auth_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_manager_app_id
    #   <p>The app ID for the backend manager.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute login_auth_config
    #   <p>Describes the Amazon Cognito configurations for the Admin UI auth resource to log in with.</p>
    #   @return [Types::LoginAuthConfigReqObj]
    class UpdateBackendConfigResponse < Struct.new(
      :app_id,
      :backend_manager_app_id,
      :error,
      :login_auth_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for GetBackendJob.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>Filters the list of response objects to include only those with the specified operation name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the list of response objects to include only those with the specified status.</p>
    #   @return [String]
    class UpdateBackendJobRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :operation,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the job was created.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time when the job was last updated.</p>
    #   @return [String]
    class UpdateBackendJobResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :create_time,
      :error,
      :job_id,
      :operation,
      :status,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request body for UpdateBackendStorage.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration for updating backend storage.</p>
    #   @return [Types::UpdateBackendStorageResourceConfig]
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #   @return [String]
    class UpdateBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource configuration for updating backend storage.</p>
    # @!attribute permissions
    #   <p>The authorization configuration for the storage S3 bucket.</p>
    #   @return [Types::BackendStoragePermissions]
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #   @return [String]
    class UpdateBackendStorageResourceConfig < Struct.new(
      :permissions,
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    class UpdateBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
