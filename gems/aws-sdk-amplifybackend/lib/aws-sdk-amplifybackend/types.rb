# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AmplifyBackend
  module Types

    # The authentication settings for accessing provisioned data models in
    # your Amplify project.
    #
    # @!attribute [rw] cognito_user_pool_id
    #   The Amazon Cognito user pool ID, if Amazon Cognito was used as an
    #   authentication setting to access your data models.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The API key description for API\_KEY, if it was used as an
    #   authentication mechanism to access your data models.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   The API key expiration time for API\_KEY, if it was used as an
    #   authentication mechanism to access your data models.
    #   @return [Float]
    #
    # @!attribute [rw] open_id_auth_ttl
    #   The expiry time for the OpenID authentication mechanism.
    #   @return [String]
    #
    # @!attribute [rw] open_id_client_id
    #   The clientID for openID, if openID was used as an authentication
    #   setting to access your data models.
    #   @return [String]
    #
    # @!attribute [rw] open_id_iat_ttl
    #   The expiry time for the OpenID authentication mechanism.
    #   @return [String]
    #
    # @!attribute [rw] open_id_issue_url
    #   The openID issuer URL, if openID was used as an authentication
    #   setting to access your data models.
    #   @return [String]
    #
    # @!attribute [rw] open_id_provider_name
    #   The OpenID provider name, if OpenID was used as an authentication
    #   mechanism to access your data models.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAPIAppSyncAuthSettings AWS API Documentation
    #
    class BackendAPIAppSyncAuthSettings < Struct.new(
      :cognito_user_pool_id,
      :description,
      :expiration_time,
      :open_id_auth_ttl,
      :open_id_client_id,
      :open_id_iat_ttl,
      :open_id_issue_url,
      :open_id_provider_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the auth types for your configured data models.
    #
    # @!attribute [rw] mode
    #   Describes the authentication mode.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Describes settings for the authentication mode.
    #   @return [Types::BackendAPIAppSyncAuthSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAPIAuthType AWS API Documentation
    #
    class BackendAPIAuthType < Struct.new(
      :mode,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] resource_name
    #   The name of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAPICodegenReqObj AWS API Documentation
    #
    class BackendAPICodegenReqObj < Struct.new(
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object sent when a backend is created.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAPICodegenRespObj AWS API Documentation
    #
    class BackendAPICodegenRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the conflict resolution configuration for your data model
    # configured in your Amplify project.
    #
    # @!attribute [rw] resolution_strategy
    #   The strategy for conflict resolution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAPIConflictResolution AWS API Documentation
    #
    class BackendAPIConflictResolution < Struct.new(
      :resolution_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] resource_config
    #   Defines the resource configuration for the data model in your
    #   Amplify project.
    #   @return [Types::BackendAPIResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAPIReqObj AWS API Documentation
    #
    class BackendAPIReqObj < Struct.new(
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource config for the data model, configured as a part of the
    # Amplify project.
    #
    # @!attribute [rw] additional_auth_types
    #   Additional authentication methods used to interact with your data
    #   models.
    #   @return [Array<Types::BackendAPIAuthType>]
    #
    # @!attribute [rw] api_name
    #   The API name used to interact with the data model, configured as a
    #   part of your Amplify project.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution
    #   The conflict resolution strategy for your data stored in the data
    #   models.
    #   @return [Types::BackendAPIConflictResolution]
    #
    # @!attribute [rw] default_auth_type
    #   The default authentication type for interacting with the configured
    #   data models in your Amplify project.
    #   @return [Types::BackendAPIAuthType]
    #
    # @!attribute [rw] service
    #   The service used to provision and interact with the data model.
    #   @return [String]
    #
    # @!attribute [rw] transform_schema
    #   The definition of the data model in the annotated transform of the
    #   GraphQL schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAPIResourceConfig AWS API Documentation
    #
    class BackendAPIResourceConfig < Struct.new(
      :additional_auth_types,
      :api_name,
      :conflict_resolution,
      :default_auth_type,
      :service,
      :transform_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object sent when a backend is created.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAPIRespObj AWS API Documentation
    #
    class BackendAPIRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes Apple social federation configurations for allowing your app
    # users to sign in using OAuth.
    #
    # @!attribute [rw] client_id
    #   Describes the client\_id (also called Services ID) that comes from
    #   Apple.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   Describes the key\_id that comes from Apple.
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   Describes the private\_key that comes from Apple.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   Describes the team\_id that comes from Apple.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAuthAppleProviderConfig AWS API Documentation
    #
    class BackendAuthAppleProviderConfig < Struct.new(
      :client_id,
      :key_id,
      :private_key,
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAuthRespObj AWS API Documentation
    #
    class BackendAuthRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes third-party social federation configurations for allowing
    # your app users to sign in using OAuth.
    #
    # @!attribute [rw] client_id
    #   Describes the client\_id, which can be obtained from the third-party
    #   social federation provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   Describes the client\_secret, which can be obtained from third-party
    #   social federation providers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendAuthSocialProviderConfig AWS API Documentation
    #
    class BackendAuthSocialProviderConfig < Struct.new(
      :client_id,
      :client_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_manager_app_id
    #   The app ID for the backend manager.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] login_auth_config
    #   Describes the Amazon Cognito configurations for the Admin UI auth
    #   resource to log in with.
    #   @return [Types::LoginAuthConfigReqObj]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendConfigRespObj AWS API Documentation
    #
    class BackendConfigRespObj < Struct.new(
      :app_id,
      :backend_manager_app_id,
      :error,
      :login_auth_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] operation
    #   Filters the list of response objects to include only those with the
    #   specified operation name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the list of response objects to include only those with the
    #   specified status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendJobReqObj AWS API Documentation
    #
    class BackendJobReqObj < Struct.new(
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the job was created.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time when the job was last updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendJobRespObj AWS API Documentation
    #
    class BackendJobRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :create_time,
      :error,
      :job_id,
      :operation,
      :status,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the read, write, and delete permissions users have against
    # your storage S3 bucket.
    #
    # @!attribute [rw] authenticated
    #   Lists all authenticated user read, write, and delete permissions for
    #   your S3 bucket.
    #   @return [Array<String>]
    #
    # @!attribute [rw] un_authenticated
    #   Lists all unauthenticated user read, write, and delete permissions
    #   for your S3 bucket.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendStoragePermissions AWS API Documentation
    #
    class BackendStoragePermissions < Struct.new(
      :authenticated,
      :un_authenticated)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BackendStorageRespObj AWS API Documentation
    #
    class BackendStorageRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error returned if a request is not formed properly.
    #
    # @!attribute [rw] message
    #   An error message to inform that the request failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] target_environment_name
    #   The name of the destination backend environment to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CloneBackendReqObj AWS API Documentation
    #
    class CloneBackendReqObj < Struct.new(
      :target_environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] target_environment_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CloneBackendRequest AWS API Documentation
    #
    class CloneBackendRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :target_environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object sent when a backend is created.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CloneBackendRespObj AWS API Documentation
    #
    class CloneBackendRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CloneBackendResponse AWS API Documentation
    #
    class CloneBackendResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for this request.
    #   @return [Types::BackendAPIResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAPIReqObj AWS API Documentation
    #
    class CreateBackendAPIReqObj < Struct.new(
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource config for the data model, configured as a part of the
    #   Amplify project.
    #   @return [Types::BackendAPIResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAPIRequest AWS API Documentation
    #
    class CreateBackendAPIRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAPIResponse AWS API Documentation
    #
    class CreateBackendAPIResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # **(DEPRECATED)** Describes the forgot password policy for
    # authenticating into the Amplify app.
    #
    # @!attribute [rw] delivery_method
    #   **(DEPRECATED)** Describes which mode to use (either SMS or email)
    #   to deliver messages to app users who want to recover their password.
    #   @return [String]
    #
    # @!attribute [rw] email_settings
    #   **(DEPRECATED)** The configuration for the email sent when an app
    #   user forgets their password.
    #   @return [Types::EmailSettings]
    #
    # @!attribute [rw] sms_settings
    #   **(DEPRECATED)** The configuration for the SMS message sent when an
    #   app user forgets their password.
    #   @return [Types::SmsSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthForgotPasswordConfig AWS API Documentation
    #
    class CreateBackendAuthForgotPasswordConfig < Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes authorization configurations for the auth resources,
    # configured as a part of your Amplify project.
    #
    # @!attribute [rw] identity_pool_name
    #   Name of the Amazon Cognito identity pool used for authorization.
    #   @return [String]
    #
    # @!attribute [rw] unauthenticated_login
    #   Set to true or false based on whether you want to enable guest
    #   authorization to your Amplify app.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthIdentityPoolConfig AWS API Documentation
    #
    class CreateBackendAuthIdentityPoolConfig < Struct.new(
      :identity_pool_name,
      :unauthenticated_login)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether to apply multi-factor authentication policies for
    # your Amazon Cognito user pool configured as a part of your Amplify
    # project.
    #
    # @!attribute [rw] mfa_mode
    #   Describes whether MFA should be \[ON, OFF, or OPTIONAL\] for
    #   authentication in your Amplify project.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Describes the configuration settings and methods for your Amplify
    #   app users to use MFA.
    #   @return [Types::Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthMFAConfig AWS API Documentation
    #
    class CreateBackendAuthMFAConfig < Struct.new(
      :mfa_mode,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates the OAuth configuration for your Amplify project.
    #
    # @!attribute [rw] domain_prefix
    #   The domain prefix for your Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_grant_type
    #   The OAuth grant type that you use to allow app users to authenticate
    #   from your Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_scopes
    #   List of OAuth-related flows used to allow your app users to
    #   authenticate from your Amplify app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] redirect_sign_in_ur_is
    #   The redirected URI for signing in to your Amplify app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] redirect_sign_out_ur_is
    #   Redirect URLs that OAuth uses when a user signs out of an Amplify
    #   app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] social_provider_settings
    #   The settings for using social providers to access your Amplify app.
    #   @return [Types::SocialProviderSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthOAuthConfig AWS API Documentation
    #
    class CreateBackendAuthOAuthConfig < Struct.new(
      :domain_prefix,
      :o_auth_grant_type,
      :o_auth_scopes,
      :redirect_sign_in_ur_is,
      :redirect_sign_out_ur_is,
      :social_provider_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The password policy configuration for the backend to your Amplify
    # project.
    #
    # @!attribute [rw] additional_constraints
    #   Additional constraints for the password used to access the backend
    #   of your Amplify project.
    #   @return [Array<String>]
    #
    # @!attribute [rw] minimum_length
    #   The minimum length of the password used to access the backend of
    #   your Amplify project.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthPasswordPolicyConfig AWS API Documentation
    #
    class CreateBackendAuthPasswordPolicyConfig < Struct.new(
      :additional_constraints,
      :minimum_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for this request object.
    #   @return [Types::CreateBackendAuthResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthReqObj AWS API Documentation
    #
    class CreateBackendAuthReqObj < Struct.new(
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   Defines the resource configuration when creating an auth resource in
    #   your Amplify project.
    #   @return [Types::CreateBackendAuthResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthRequest AWS API Documentation
    #
    class CreateBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the resource configuration when creating an auth resource in
    # your Amplify project.
    #
    # @!attribute [rw] auth_resources
    #   Defines whether you want to configure only authentication or both
    #   authentication and authorization settings.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_configs
    #   Describes the authorization configuration for the Amazon Cognito
    #   identity pool, provisioned as a part of your auth resource in the
    #   Amplify project.
    #   @return [Types::CreateBackendAuthIdentityPoolConfig]
    #
    # @!attribute [rw] service
    #   Defines the service name to use when configuring an authentication
    #   resource in your Amplify project.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_configs
    #   Describes authentication configuration for the Amazon Cognito user
    #   pool, provisioned as a part of your auth resource in the Amplify
    #   project.
    #   @return [Types::CreateBackendAuthUserPoolConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthResourceConfig AWS API Documentation
    #
    class CreateBackendAuthResourceConfig < Struct.new(
      :auth_resources,
      :identity_pool_configs,
      :service,
      :user_pool_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthResponse AWS API Documentation
    #
    class CreateBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon Cognito user pool configuration for the auth
    # resource to be configured for your Amplify project.
    #
    # @!attribute [rw] forgot_password
    #   **(DEPRECATED)** Describes the forgotten password policy for your
    #   Amazon Cognito user pool, configured as a part of your Amplify
    #   project.
    #   @return [Types::CreateBackendAuthForgotPasswordConfig]
    #
    # @!attribute [rw] mfa
    #   Describes whether to apply multi-factor authentication policies for
    #   your Amazon Cognito user pool configured as a part of your Amplify
    #   project.
    #   @return [Types::CreateBackendAuthMFAConfig]
    #
    # @!attribute [rw] o_auth
    #   Describes the OAuth policy and rules for your Amazon Cognito user
    #   pool, configured as a part of your Amplify project.
    #   @return [Types::CreateBackendAuthOAuthConfig]
    #
    # @!attribute [rw] password_policy
    #   Describes the password policy for your Amazon Cognito user pool,
    #   configured as a part of your Amplify project.
    #   @return [Types::CreateBackendAuthPasswordPolicyConfig]
    #
    # @!attribute [rw] required_sign_up_attributes
    #   The required attributes to sign up new users in the user pool.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sign_in_method
    #   Describes the sign-in methods that your Amplify app users use to log
    #   in using the Amazon Cognito user pool, configured as a part of your
    #   Amplify project.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_name
    #   The Amazon Cognito user pool name.
    #   @return [String]
    #
    # @!attribute [rw] verification_message
    #   Describes the email or SMS verification message for your Amazon
    #   Cognito user pool, configured as a part of your Amplify project.
    #   @return [Types::CreateBackendAuthVerificationMessageConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthUserPoolConfig AWS API Documentation
    #
    class CreateBackendAuthUserPoolConfig < Struct.new(
      :forgot_password,
      :mfa,
      :o_auth,
      :password_policy,
      :required_sign_up_attributes,
      :sign_in_method,
      :user_pool_name,
      :verification_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates an email or SMS verification message for the auth resource
    # configured for your Amplify project.
    #
    # @!attribute [rw] delivery_method
    #   The type of verification message to send.
    #   @return [String]
    #
    # @!attribute [rw] email_settings
    #   The settings for the email message.
    #   @return [Types::EmailSettings]
    #
    # @!attribute [rw] sms_settings
    #   The settings for the SMS message.
    #   @return [Types::SmsSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuthVerificationMessageConfig AWS API Documentation
    #
    class CreateBackendAuthVerificationMessageConfig < Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] backend_manager_app_id
    #   The app ID for the backend manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendConfigReqObj AWS API Documentation
    #
    class CreateBackendConfigReqObj < Struct.new(
      :backend_manager_app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_manager_app_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendConfigRequest AWS API Documentation
    #
    class CreateBackendConfigRequest < Struct.new(
      :app_id,
      :backend_manager_app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendConfigRespObj AWS API Documentation
    #
    class CreateBackendConfigRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendConfigResponse AWS API Documentation
    #
    class CreateBackendConfigResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] app_name
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for creating a backend.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendReqObj AWS API Documentation
    #
    class CreateBackendReqObj < Struct.new(
      :app_id,
      :app_name,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] app_name
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendRequest AWS API Documentation
    #
    class CreateBackendRequest < Struct.new(
      :app_id,
      :app_name,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object sent when a backend is created.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendRespObj AWS API Documentation
    #
    class CreateBackendRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendResponse AWS API Documentation
    #
    class CreateBackendResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for creating backend storage.
    #   @return [Types::CreateBackendStorageResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of the storage resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendStorageReqObj AWS API Documentation
    #
    class CreateBackendStorageReqObj < Struct.new(
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for creating backend storage.
    #   @return [Types::CreateBackendStorageResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendStorageRequest AWS API Documentation
    #
    class CreateBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource configuration for creating backend storage.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The authorization configuration for the storage S3 bucket.
    #   @return [Types::BackendStoragePermissions]
    #
    # @!attribute [rw] service_name
    #   The name of the storage service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendStorageResourceConfig AWS API Documentation
    #
    class CreateBackendStorageResourceConfig < Struct.new(
      :bucket_name,
      :permissions,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendStorageResponse AWS API Documentation
    #
    class CreateBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateTokenRequest AWS API Documentation
    #
    class CreateTokenRequest < Struct.new(
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] challenge_code
    #   One-time challenge code for authenticating into the Amplify Admin
    #   UI.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   A unique ID provided when creating a new challenge token.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The expiry time for the one-time generated token code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateTokenRespObj AWS API Documentation
    #
    class CreateTokenRespObj < Struct.new(
      :app_id,
      :challenge_code,
      :session_id,
      :ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] challenge_code
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateTokenResponse AWS API Documentation
    #
    class CreateTokenResponse < Struct.new(
      :app_id,
      :challenge_code,
      :session_id,
      :ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource config for the data model, configured as a part of the
    #   Amplify project.
    #   @return [Types::BackendAPIResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendAPIRequest AWS API Documentation
    #
    class DeleteBackendAPIRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendAPIResponse AWS API Documentation
    #
    class DeleteBackendAPIResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendAuthRequest AWS API Documentation
    #
    class DeleteBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendAuthResponse AWS API Documentation
    #
    class DeleteBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendRequest AWS API Documentation
    #
    class DeleteBackendRequest < Struct.new(
      :app_id,
      :backend_environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned object for a request to delete a backend.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendRespObj AWS API Documentation
    #
    class DeleteBackendRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendResponse AWS API Documentation
    #
    class DeleteBackendResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendStorageRequest AWS API Documentation
    #
    class DeleteBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendStorageResponse AWS API Documentation
    #
    class DeleteBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteTokenRequest AWS API Documentation
    #
    class DeleteTokenRequest < Struct.new(
      :app_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] is_success
    #   Indicates whether the request succeeded or failed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteTokenRespObj AWS API Documentation
    #
    class DeleteTokenRespObj < Struct.new(
      :is_success)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] is_success
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteTokenResponse AWS API Documentation
    #
    class DeleteTokenResponse < Struct.new(
      :is_success)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for the email message.
    #
    # @!attribute [rw] email_message
    #   The contents of the email message.
    #   @return [String]
    #
    # @!attribute [rw] email_subject
    #   The contents of the subject line of the email message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/EmailSettings AWS API Documentation
    #
    class EmailSettings < Struct.new(
      :email_message,
      :email_subject)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error returned if there's a temporary issue with the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GatewayTimeoutException AWS API Documentation
    #
    class GatewayTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GenerateBackendAPIModelsRequest AWS API Documentation
    #
    class GenerateBackendAPIModelsRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GenerateBackendAPIModelsResponse AWS API Documentation
    #
    class GenerateBackendAPIModelsResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAPIModelsRequest AWS API Documentation
    #
    class GetBackendAPIModelsRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] models
    #   Stringified JSON of the datastore model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @!attribute [rw] model_introspection_schema
    #   Stringified JSON of the model introspection schema for an existing
    #   backend API resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAPIModelsResponse AWS API Documentation
    #
    class GetBackendAPIModelsResponse < Struct.new(
      :models,
      :status,
      :model_introspection_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource config for the data model, configured as a part of the
    #   Amplify project.
    #   @return [Types::BackendAPIResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAPIRequest AWS API Documentation
    #
    class GetBackendAPIRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for this response object.
    #   @return [Types::BackendAPIResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAPIRespObj AWS API Documentation
    #
    class GetBackendAPIRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource config for the data model, configured as a part of the
    #   Amplify project.
    #   @return [Types::BackendAPIResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAPIResponse AWS API Documentation
    #
    class GetBackendAPIResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] resource_name
    #   The name of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAuthReqObj AWS API Documentation
    #
    class GetBackendAuthReqObj < Struct.new(
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAuthRequest AWS API Documentation
    #
    class GetBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for authorization requests to the backend
    #   of your Amplify project.
    #   @return [Types::CreateBackendAuthResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAuthRespObj AWS API Documentation
    #
    class GetBackendAuthRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   Defines the resource configuration when creating an auth resource in
    #   your Amplify project.
    #   @return [Types::CreateBackendAuthResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAuthResponse AWS API Documentation
    #
    class GetBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendJobRequest AWS API Documentation
    #
    class GetBackendJobRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendJobResponse AWS API Documentation
    #
    class GetBackendJobResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :create_time,
      :error,
      :job_id,
      :operation,
      :status,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendReqObj AWS API Documentation
    #
    class GetBackendReqObj < Struct.new(
      :backend_environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendRequest AWS API Documentation
    #
    class GetBackendRequest < Struct.new(
      :app_id,
      :backend_environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] amplify_feature_flags
    #   A stringified version of the cli.json file for your Amplify project.
    #   @return [String]
    #
    # @!attribute [rw] amplify_meta_config
    #   A stringified version of the current configs for your Amplify
    #   project.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] app_name
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_list
    #   A list of backend environments in an array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request failed, this is the returned error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendRespObj AWS API Documentation
    #
    class GetBackendRespObj < Struct.new(
      :amplify_feature_flags,
      :amplify_meta_config,
      :app_id,
      :app_name,
      :backend_environment_list,
      :backend_environment_name,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] amplify_feature_flags
    #   @return [String]
    #
    # @!attribute [rw] amplify_meta_config
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] app_name
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_list
    #   @return [Array<String>]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendResponse AWS API Documentation
    #
    class GetBackendResponse < Struct.new(
      :amplify_feature_flags,
      :amplify_meta_config,
      :app_id,
      :app_name,
      :backend_environment_list,
      :backend_environment_name,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] resource_name
    #   The name of the storage resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendStorageReqObj AWS API Documentation
    #
    class GetBackendStorageReqObj < Struct.new(
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendStorageRequest AWS API Documentation
    #
    class GetBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for a backend storage resource.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] imported
    #   Returns True if the storage resource has been imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] permissions
    #   The authorization configuration for the storage S3 bucket.
    #   @return [Types::BackendStoragePermissions]
    #
    # @!attribute [rw] service_name
    #   The name of the storage service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendStorageResourceConfig AWS API Documentation
    #
    class GetBackendStorageResourceConfig < Struct.new(
      :bucket_name,
      :imported,
      :permissions,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   The name of the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for the backend storage resource.
    #   @return [Types::GetBackendStorageResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of the storage resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendStorageRespObj AWS API Documentation
    #
    class GetBackendStorageRespObj < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The details for a backend storage resource.
    #   @return [Types::GetBackendStorageResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendStorageResponse AWS API Documentation
    #
    class GetBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetTokenRequest AWS API Documentation
    #
    class GetTokenRequest < Struct.new(
      :app_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] challenge_code
    #   The one-time challenge code for authenticating into the Amplify
    #   Admin UI.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   A unique ID provided when creating a new challenge token.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The expiry time for the one-time generated token code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetTokenRespObj AWS API Documentation
    #
    class GetTokenRespObj < Struct.new(
      :app_id,
      :challenge_code,
      :session_id,
      :ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] challenge_code
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetTokenResponse AWS API Documentation
    #
    class GetTokenResponse < Struct.new(
      :app_id,
      :challenge_code,
      :session_id,
      :ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] identity_pool_id
    #   The ID of the Amazon Cognito identity pool.
    #   @return [String]
    #
    # @!attribute [rw] native_client_id
    #   The ID of the Amazon Cognito native client.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the Amazon Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] web_client_id
    #   The ID of the Amazon Cognito web client.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ImportBackendAuthReqObj AWS API Documentation
    #
    class ImportBackendAuthReqObj < Struct.new(
      :identity_pool_id,
      :native_client_id,
      :user_pool_id,
      :web_client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   @return [String]
    #
    # @!attribute [rw] native_client_id
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   @return [String]
    #
    # @!attribute [rw] web_client_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ImportBackendAuthRequest AWS API Documentation
    #
    class ImportBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :identity_pool_id,
      :native_client_id,
      :user_pool_id,
      :web_client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ImportBackendAuthResponse AWS API Documentation
    #
    class ImportBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the storage service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ImportBackendStorageReqObj AWS API Documentation
    #
    class ImportBackendStorageReqObj < Struct.new(
      :bucket_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ImportBackendStorageRequest AWS API Documentation
    #
    class ImportBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :bucket_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ImportBackendStorageResponse AWS API Documentation
    #
    class ImportBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error returned if there's a temporary issue with the service.
    #
    # @!attribute [rw] message
    #   An error message to inform that the request failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error that is returned when a limit of a specific type has been
    # exceeded.
    #
    # @!attribute [rw] limit_type
    #   The type of limit that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An error message to inform that the request has failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :limit_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   Filters the list of response objects to include only those with the
    #   specified operation name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the list of response objects to include only those with the
    #   specified status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListBackendJobReqObj AWS API Documentation
    #
    class ListBackendJobReqObj < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned list of backend jobs.
    #
    # @!attribute [rw] jobs
    #   An array of jobs and their properties.
    #   @return [Array<Types::BackendJobRespObj>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListBackendJobRespObj AWS API Documentation
    #
    class ListBackendJobRespObj < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListBackendJobsRequest AWS API Documentation
    #
    class ListBackendJobsRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :max_results,
      :next_token,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   @return [Array<Types::BackendJobRespObj>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListBackendJobsResponse AWS API Documentation
    #
    class ListBackendJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListS3BucketsReqObj AWS API Documentation
    #
    class ListS3BucketsReqObj < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListS3BucketsRequest AWS API Documentation
    #
    class ListS3BucketsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] buckets
    #   The list of S3 buckets.
    #   @return [Array<Types::S3BucketInfo>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListS3BucketsRespObj AWS API Documentation
    #
    class ListS3BucketsRespObj < Struct.new(
      :buckets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] buckets
    #   @return [Array<Types::S3BucketInfo>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListS3BucketsResponse AWS API Documentation
    #
    class ListS3BucketsResponse < Struct.new(
      :buckets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] aws_cognito_identity_pool_id
    #   The Amazon Cognito identity pool ID used for the Amplify Admin UI
    #   login authorization.
    #   @return [String]
    #
    # @!attribute [rw] aws_cognito_region
    #   The AWS Region for the Amplify Admin UI login.
    #   @return [String]
    #
    # @!attribute [rw] aws_user_pools_id
    #   The Amazon Cognito user pool ID used for Amplify Admin UI login
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] aws_user_pools_web_client_id
    #   The web client ID for the Amazon Cognito user pools.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/LoginAuthConfigReqObj AWS API Documentation
    #
    class LoginAuthConfigReqObj < Struct.new(
      :aws_cognito_identity_pool_id,
      :aws_cognito_region,
      :aws_user_pools_id,
      :aws_user_pools_web_client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error returned when a specific resource type is not found.
    #
    # @!attribute [rw] message
    #   An error message to inform that the request has failed.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that is not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] clean_amplify_app
    #   Cleans up the Amplify Console app if this value is set to true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveAllBackendsReqObj AWS API Documentation
    #
    class RemoveAllBackendsReqObj < Struct.new(
      :clean_amplify_app)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] clean_amplify_app
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveAllBackendsRequest AWS API Documentation
    #
    class RemoveAllBackendsRequest < Struct.new(
      :app_id,
      :clean_amplify_app)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveAllBackendsRespObj AWS API Documentation
    #
    class RemoveAllBackendsRespObj < Struct.new(
      :app_id,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveAllBackendsResponse AWS API Documentation
    #
    class RemoveAllBackendsResponse < Struct.new(
      :app_id,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] resource_name
    #   The name of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveBackendAuthReqObj AWS API Documentation
    #
    class RemoveBackendAuthReqObj < Struct.new(
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveBackendConfigRequest AWS API Documentation
    #
    class RemoveBackendConfigRequest < Struct.new(
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] error
    #   If the request fails, this error is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveBackendConfigRespObj AWS API Documentation
    #
    class RemoveBackendConfigRespObj < Struct.new(
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveBackendConfigResponse AWS API Documentation
    #
    class RemoveBackendConfigResponse < Struct.new(
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] resource_name
    #   The name of the storage resource.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the storage service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveBackendStorageReqObj AWS API Documentation
    #
    class RemoveBackendStorageReqObj < Struct.new(
      :resource_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ResourceConfig AWS API Documentation
    #
    class ResourceConfig < Aws::EmptyStructure; end

    # Describes the metadata of the S3 bucket.
    #
    # @!attribute [rw] creation_date
    #   The creation date of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/S3BucketInfo AWS API Documentation
    #
    class S3BucketInfo < Struct.new(
      :creation_date,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mfa_types
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_message
    #   The body of the SMS message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/Settings AWS API Documentation
    #
    class Settings < Struct.new(
      :mfa_types,
      :sms_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for the SMS message.
    #
    # @!attribute [rw] sms_message
    #   The contents of the SMS message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/SmsSettings AWS API Documentation
    #
    class SmsSettings < Struct.new(
      :sms_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] facebook
    #   Describes third-party social federation configurations for allowing
    #   your app users to sign in using OAuth.
    #   @return [Types::BackendAuthSocialProviderConfig]
    #
    # @!attribute [rw] google
    #   Describes third-party social federation configurations for allowing
    #   your app users to sign in using OAuth.
    #   @return [Types::BackendAuthSocialProviderConfig]
    #
    # @!attribute [rw] login_with_amazon
    #   Describes third-party social federation configurations for allowing
    #   your app users to sign in using OAuth.
    #   @return [Types::BackendAuthSocialProviderConfig]
    #
    # @!attribute [rw] sign_in_with_apple
    #   Describes Apple social federation configurations for allowing your
    #   app users to sign in using OAuth.
    #   @return [Types::BackendAuthAppleProviderConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/SocialProviderSettings AWS API Documentation
    #
    class SocialProviderSettings < Struct.new(
      :facebook,
      :google,
      :login_with_amazon,
      :sign_in_with_apple)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error that is returned when a limit of a specific type has been
    # exceeded.
    #
    # @!attribute [rw] limit_type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :limit_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource config for the data model, configured as a part of the
    #   Amplify project.
    #   @return [Types::BackendAPIResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAPIRequest AWS API Documentation
    #
    class UpdateBackendAPIRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAPIResponse AWS API Documentation
    #
    class UpdateBackendAPIResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # **(DEPRECATED)** Describes the forgot password policy for
    # authenticating into the Amplify app.
    #
    # @!attribute [rw] delivery_method
    #   **(DEPRECATED)** Describes which mode to use (either SMS or email)
    #   to deliver messages to app users that want to recover their
    #   password.
    #   @return [String]
    #
    # @!attribute [rw] email_settings
    #   **(DEPRECATED)** The configuration for the email sent when an app
    #   user forgets their password.
    #   @return [Types::EmailSettings]
    #
    # @!attribute [rw] sms_settings
    #   **(DEPRECATED)** The configuration for the SMS message sent when an
    #   Amplify app user forgets their password.
    #   @return [Types::SmsSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthForgotPasswordConfig AWS API Documentation
    #
    class UpdateBackendAuthForgotPasswordConfig < Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the authorization configuration for the Amazon Cognito
    # identity pool, provisioned as a part of your auth resource in the
    # Amplify project.
    #
    # @!attribute [rw] unauthenticated_login
    #   A boolean value that can be set to allow or disallow guest-level
    #   authorization into your Amplify app.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthIdentityPoolConfig AWS API Documentation
    #
    class UpdateBackendAuthIdentityPoolConfig < Struct.new(
      :unauthenticated_login)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the multi-factor authentication (MFA) configuration for the
    # backend of your Amplify project.
    #
    # @!attribute [rw] mfa_mode
    #   The MFA mode for the backend of your Amplify project.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The settings of your MFA configuration for the backend of your
    #   Amplify project.
    #   @return [Types::Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthMFAConfig AWS API Documentation
    #
    class UpdateBackendAuthMFAConfig < Struct.new(
      :mfa_mode,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OAuth configurations for authenticating users into your Amplify
    # app.
    #
    # @!attribute [rw] domain_prefix
    #   The Amazon Cognito domain prefix used to create a hosted UI for
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_grant_type
    #   The OAuth grant type to allow app users to authenticate from your
    #   Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_scopes
    #   The list of OAuth-related flows that can allow users to authenticate
    #   from your Amplify app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] redirect_sign_in_ur_is
    #   Redirect URLs that OAuth uses when a user signs in to an Amplify
    #   app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] redirect_sign_out_ur_is
    #   Redirect URLs that OAuth uses when a user signs out of an Amplify
    #   app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] social_provider_settings
    #   Describes third-party social federation configurations for allowing
    #   your users to sign in with OAuth.
    #   @return [Types::SocialProviderSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthOAuthConfig AWS API Documentation
    #
    class UpdateBackendAuthOAuthConfig < Struct.new(
      :domain_prefix,
      :o_auth_grant_type,
      :o_auth_scopes,
      :redirect_sign_in_ur_is,
      :redirect_sign_out_ur_is,
      :social_provider_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the password policy for your Amazon Cognito user pool
    # configured as a part of your Amplify project.
    #
    # @!attribute [rw] additional_constraints
    #   Describes additional constraints on password requirements to sign in
    #   to the auth resource, configured as a part of your Amplify project.
    #   @return [Array<String>]
    #
    # @!attribute [rw] minimum_length
    #   Describes the minimum length of the password required to sign in to
    #   the auth resource, configured as a part of your Amplify project.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthPasswordPolicyConfig AWS API Documentation
    #
    class UpdateBackendAuthPasswordPolicyConfig < Struct.new(
      :additional_constraints,
      :minimum_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for this request object.
    #   @return [Types::UpdateBackendAuthResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthReqObj AWS API Documentation
    #
    class UpdateBackendAuthReqObj < Struct.new(
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   Defines the resource configuration when updating an authentication
    #   resource in your Amplify project.
    #   @return [Types::UpdateBackendAuthResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthRequest AWS API Documentation
    #
    class UpdateBackendAuthRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the resource configuration when updating an authentication
    # resource in your Amplify project.
    #
    # @!attribute [rw] auth_resources
    #   Defines the service name to use when configuring an authentication
    #   resource in your Amplify project.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_configs
    #   Describes the authorization configuration for the Amazon Cognito
    #   identity pool, provisioned as a part of your auth resource in the
    #   Amplify project.
    #   @return [Types::UpdateBackendAuthIdentityPoolConfig]
    #
    # @!attribute [rw] service
    #   Defines the service name to use when configuring an authentication
    #   resource in your Amplify project.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_configs
    #   Describes the authentication configuration for the Amazon Cognito
    #   user pool, provisioned as a part of your auth resource in the
    #   Amplify project.
    #   @return [Types::UpdateBackendAuthUserPoolConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthResourceConfig AWS API Documentation
    #
    class UpdateBackendAuthResourceConfig < Struct.new(
      :auth_resources,
      :identity_pool_configs,
      :service,
      :user_pool_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthResponse AWS API Documentation
    #
    class UpdateBackendAuthResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon Cognito user pool configuration for the
    # authorization resource to be configured for your Amplify project on an
    # update.
    #
    # @!attribute [rw] forgot_password
    #   **(DEPRECATED)** Describes the forgot password policy for your
    #   Amazon Cognito user pool, configured as a part of your Amplify
    #   project.
    #   @return [Types::UpdateBackendAuthForgotPasswordConfig]
    #
    # @!attribute [rw] mfa
    #   Describes whether to apply multi-factor authentication policies for
    #   your Amazon Cognito user pool configured as a part of your Amplify
    #   project.
    #   @return [Types::UpdateBackendAuthMFAConfig]
    #
    # @!attribute [rw] o_auth
    #   Describes the OAuth policy and rules for your Amazon Cognito user
    #   pool, configured as a part of your Amplify project.
    #   @return [Types::UpdateBackendAuthOAuthConfig]
    #
    # @!attribute [rw] password_policy
    #   Describes the password policy for your Amazon Cognito user pool,
    #   configured as a part of your Amplify project.
    #   @return [Types::UpdateBackendAuthPasswordPolicyConfig]
    #
    # @!attribute [rw] verification_message
    #   Describes the email or SMS verification message for your Amazon
    #   Cognito user pool, configured as a part of your Amplify project.
    #   @return [Types::UpdateBackendAuthVerificationMessageConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthUserPoolConfig AWS API Documentation
    #
    class UpdateBackendAuthUserPoolConfig < Struct.new(
      :forgot_password,
      :mfa,
      :o_auth,
      :password_policy,
      :verification_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the configuration of the email or SMS message for the auth
    # resource configured for your Amplify project.
    #
    # @!attribute [rw] delivery_method
    #   The type of verification message to send.
    #   @return [String]
    #
    # @!attribute [rw] email_settings
    #   The settings for the email message.
    #   @return [Types::EmailSettings]
    #
    # @!attribute [rw] sms_settings
    #   The settings for the SMS message.
    #   @return [Types::SmsSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuthVerificationMessageConfig AWS API Documentation
    #
    class UpdateBackendAuthVerificationMessageConfig < Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] login_auth_config
    #   Describes the Amazon Cognito configuration for Admin UI access.
    #   @return [Types::LoginAuthConfigReqObj]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendConfigReqObj AWS API Documentation
    #
    class UpdateBackendConfigReqObj < Struct.new(
      :login_auth_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] login_auth_config
    #   The request object for this operation.
    #   @return [Types::LoginAuthConfigReqObj]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendConfigRequest AWS API Documentation
    #
    class UpdateBackendConfigRequest < Struct.new(
      :app_id,
      :login_auth_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_manager_app_id
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] login_auth_config
    #   The request object for this operation.
    #   @return [Types::LoginAuthConfigReqObj]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendConfigResponse AWS API Documentation
    #
    class UpdateBackendConfigResponse < Struct.new(
      :app_id,
      :backend_manager_app_id,
      :error,
      :login_auth_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendJobRequest AWS API Documentation
    #
    class UpdateBackendJobRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :operation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendJobResponse AWS API Documentation
    #
    class UpdateBackendJobResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :create_time,
      :error,
      :job_id,
      :operation,
      :status,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for updating backend storage.
    #   @return [Types::UpdateBackendStorageResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   The name of the storage resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendStorageReqObj AWS API Documentation
    #
    class UpdateBackendStorageReqObj < Struct.new(
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration for updating backend storage.
    #   @return [Types::UpdateBackendStorageResourceConfig]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendStorageRequest AWS API Documentation
    #
    class UpdateBackendStorageRequest < Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource configuration for updating backend storage.
    #
    # @!attribute [rw] permissions
    #   The authorization configuration for the storage S3 bucket.
    #   @return [Types::BackendStoragePermissions]
    #
    # @!attribute [rw] service_name
    #   The name of the storage service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendStorageResourceConfig AWS API Documentation
    #
    class UpdateBackendStorageResourceConfig < Struct.new(
      :permissions,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_name
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendStorageResponse AWS API Documentation
    #
    class UpdateBackendStorageResponse < Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
