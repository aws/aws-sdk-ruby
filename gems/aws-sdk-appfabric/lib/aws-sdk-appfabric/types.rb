# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppFabric
  module Types

    # You are not authorized to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains API key credential information.
    #
    # @!attribute [rw] api_key
    #   An API key for an application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ApiKeyCredential AWS API Documentation
    #
    class ApiKeyCredential < Struct.new(
      :api_key)
      SENSITIVE = [:api_key]
      include Aws::Structure
    end

    # Contains information about an app authorization.
    #
    # @!attribute [rw] app_authorization_arn
    #   The Amazon Resource Name (ARN) of the app authorization.
    #   @return [String]
    #
    # @!attribute [rw] app_bundle_arn
    #   The Amazon Resource Name (ARN) of the app bundle for the app
    #   authorization.
    #   @return [String]
    #
    # @!attribute [rw] app
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] tenant
    #   Contains information about an application tenant, such as the
    #   application display name and identifier.
    #   @return [Types::Tenant]
    #
    # @!attribute [rw] auth_type
    #   The authorization type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of the app authorization.
    #
    #   The following states are possible:
    #
    #   * `PendingConnect`: The initial state of the app authorization. The
    #     app authorization is created but not yet connected.
    #
    #   * `Connected`: The app authorization is connected to the
    #     application, and is ready to be used.
    #
    #   * `ConnectionValidationFailed`: The app authorization received a
    #     validation exception when trying to connect to the application. If
    #     the app authorization is in this state, you should verify the
    #     configured credentials and try to connect the app authorization
    #     again.
    #
    #   * `TokenAutoRotationFailed`: AppFabric failed to refresh the access
    #     token. If the app authorization is in this state, you should try
    #     to reconnect the app authorization.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the app authorization was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the app authorization was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] persona
    #   The user persona of the app authorization.
    #
    #   This field should always be `admin`.
    #   @return [String]
    #
    # @!attribute [rw] auth_url
    #   The application URL for the OAuth flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/AppAuthorization AWS API Documentation
    #
    class AppAuthorization < Struct.new(
      :app_authorization_arn,
      :app_bundle_arn,
      :app,
      :tenant,
      :auth_type,
      :status,
      :created_at,
      :updated_at,
      :persona,
      :auth_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an app authorization.
    #
    # @!attribute [rw] app_authorization_arn
    #   The Amazon Resource Name (ARN) of the app authorization.
    #   @return [String]
    #
    # @!attribute [rw] app_bundle_arn
    #   The Amazon Resource Name (ARN) of the app bundle for the app
    #   authorization.
    #   @return [String]
    #
    # @!attribute [rw] app
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] tenant
    #   Contains information about an application tenant, such as the
    #   application display name and identifier.
    #   @return [Types::Tenant]
    #
    # @!attribute [rw] status
    #   The state of the app authorization.
    #
    #   The following states are possible:
    #
    #   * `PendingConnect`: The initial state of the app authorization. The
    #     app authorization is created but not yet connected.
    #
    #   * `Connected`: The app authorization is connected to the
    #     application, and is ready to be used.
    #
    #   * `ConnectionValidationFailed`: The app authorization received a
    #     validation exception when trying to connect to the application. If
    #     the app authorization is in this state, you should verify the
    #     configured credentials and try to connect the app authorization
    #     again.
    #
    #   * `TokenAutoRotationFailed`: AppFabric failed to refresh the access
    #     token. If the app authorization is in this state, you should try
    #     to reconnect the app authorization.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Timestamp for when the app authorization was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/AppAuthorizationSummary AWS API Documentation
    #
    class AppAuthorizationSummary < Struct.new(
      :app_authorization_arn,
      :app_bundle_arn,
      :app,
      :tenant,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an app bundle.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the app bundle.
    #   @return [String]
    #
    # @!attribute [rw] customer_managed_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service (KMS)
    #   key used to encrypt the application data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/AppBundle AWS API Documentation
    #
    class AppBundle < Struct.new(
      :arn,
      :customer_managed_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an app bundle.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the app bundle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/AppBundleSummary AWS API Documentation
    #
    class AppBundleSummary < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an audit log destination configuration.
    #
    # @!attribute [rw] destination
    #   Contains information about an audit log destination.
    #   @return [Types::Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/AuditLogDestinationConfiguration AWS API Documentation
    #
    class AuditLogDestinationConfiguration < Struct.new(
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an audit log processing configuration.
    #
    # @!attribute [rw] schema
    #   The event schema in which the audit logs need to be formatted.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format in which the audit logs need to be formatted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/AuditLogProcessingConfiguration AWS API Documentation
    #
    class AuditLogProcessingConfiguration < Struct.new(
      :schema,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains authorization request information, which is required for
    # Amazon Web Services AppFabric to get the OAuth2 access token for an
    # application.
    #
    # @!attribute [rw] redirect_uri
    #   The redirect URL that is specified in the AuthURL and the
    #   application client.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The authorization code returned by the application after permission
    #   is granted in the application OAuth page (after clicking on the
    #   AuthURL).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/AuthRequest AWS API Documentation
    #
    class AuthRequest < Struct.new(
      :redirect_uri,
      :code)
      SENSITIVE = [:code]
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] task_id_list
    #   The tasks IDs to use for the request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/BatchGetUserAccessTasksRequest AWS API Documentation
    #
    class BatchGetUserAccessTasksRequest < Struct.new(
      :app_bundle_identifier,
      :task_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_access_results_list
    #   Contains a list of user access results.
    #   @return [Array<Types::UserAccessResultItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/BatchGetUserAccessTasksResponse AWS API Documentation
    #
    class BatchGetUserAccessTasksResponse < Struct.new(
      :user_access_results_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has created a conflict. Check the request parameters and
    # try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle that contains the app authorization to use for the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] app_authorization_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app authorization to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] auth_request
    #   Contains OAuth2 authorization information.
    #
    #   This is required if the app authorization for the request is
    #   configured with an OAuth2 (`oauth2`) authorization type.
    #   @return [Types::AuthRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ConnectAppAuthorizationRequest AWS API Documentation
    #
    class ConnectAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app_authorization_identifier,
      :auth_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_authorization_summary
    #   Contains a summary of the app authorization.
    #   @return [Types::AppAuthorizationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ConnectAppAuthorizationResponse AWS API Documentation
    #
    class ConnectAppAuthorizationResponse < Struct.new(
      :app_authorization_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] app
    #   The name of the application.
    #
    #   Valid values are:
    #
    #   * `SLACK`
    #
    #   * `ASANA`
    #
    #   * `JIRA`
    #
    #   * `M365`
    #
    #   * `M365AUDITLOGS`
    #
    #   * `ZOOM`
    #
    #   * `ZENDESK`
    #
    #   * `OKTA`
    #
    #   * `GOOGLE`
    #
    #   * `DROPBOX`
    #
    #   * `SMARTSHEET`
    #
    #   * `CISCO`
    #   @return [String]
    #
    # @!attribute [rw] credential
    #   Contains credentials for the application, such as an API key or
    #   OAuth2 client ID and secret.
    #
    #   Specify credentials that match the authorization type for your
    #   request. For example, if the authorization type for your request is
    #   OAuth2 (`oauth2`), then you should provide only the OAuth2
    #   credentials.
    #   @return [Types::Credential]
    #
    # @!attribute [rw] tenant
    #   Contains information about an application tenant, such as the
    #   application display name and identifier.
    #   @return [Types::Tenant]
    #
    # @!attribute [rw] auth_type
    #   The authorization type for the app authorization.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateAppAuthorizationRequest AWS API Documentation
    #
    class CreateAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app,
      :credential,
      :tenant,
      :auth_type,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_authorization
    #   Contains information about an app authorization.
    #   @return [Types::AppAuthorization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateAppAuthorizationResponse AWS API Documentation
    #
    class CreateAppAuthorizationResponse < Struct.new(
      :app_authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] customer_managed_key_identifier
    #   The Amazon Resource Name (ARN) of the Key Management Service (KMS)
    #   key to use to encrypt the application data. If this is not
    #   specified, an Amazon Web Services owned key is used for encryption.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateAppBundleRequest AWS API Documentation
    #
    class CreateAppBundleRequest < Struct.new(
      :client_token,
      :customer_managed_key_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle
    #   Contains information about an app bundle.
    #   @return [Types::AppBundle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateAppBundleResponse AWS API Documentation
    #
    class CreateAppBundleResponse < Struct.new(
      :app_bundle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] processing_configuration
    #   Contains information about how ingested data is processed.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] destination_configuration
    #   Contains information about the destination of ingested data.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateIngestionDestinationRequest AWS API Documentation
    #
    class CreateIngestionDestinationRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :processing_configuration,
      :destination_configuration,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_destination
    #   Contains information about an ingestion destination.
    #   @return [Types::IngestionDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateIngestionDestinationResponse AWS API Documentation
    #
    class CreateIngestionDestinationResponse < Struct.new(
      :ingestion_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] app
    #   The name of the application.
    #
    #   Valid values are:
    #
    #   * `SLACK`
    #
    #   * `ASANA`
    #
    #   * `JIRA`
    #
    #   * `M365`
    #
    #   * `M365AUDITLOGS`
    #
    #   * `ZOOM`
    #
    #   * `ZENDESK`
    #
    #   * `OKTA`
    #
    #   * `GOOGLE`
    #
    #   * `DROPBOX`
    #
    #   * `SMARTSHEET`
    #
    #   * `CISCO`
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The ID of the application tenant.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_type
    #   The ingestion type.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateIngestionRequest AWS API Documentation
    #
    class CreateIngestionRequest < Struct.new(
      :app_bundle_identifier,
      :app,
      :tenant_id,
      :ingestion_type,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion
    #   Contains information about an ingestion.
    #   @return [Types::Ingestion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateIngestionResponse AWS API Documentation
    #
    class CreateIngestionResponse < Struct.new(
      :ingestion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains credential information for an application.
    #
    # @note Credential is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] oauth2_credential
    #   Contains OAuth2 client credential information.
    #   @return [Types::Oauth2Credential]
    #
    # @!attribute [rw] api_key_credential
    #   Contains API key credential information.
    #   @return [Types::ApiKeyCredential]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/Credential AWS API Documentation
    #
    class Credential < Struct.new(
      :oauth2_credential,
      :api_key_credential,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Oauth2Credential < Credential; end
      class ApiKeyCredential < Credential; end
      class Unknown < Credential; end
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] app_authorization_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app authorization to use for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteAppAuthorizationRequest AWS API Documentation
    #
    class DeleteAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app_authorization_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteAppAuthorizationResponse AWS API Documentation
    #
    class DeleteAppAuthorizationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_bundle_identifier
    #   The ID or Amazon Resource Name (ARN) of the app bundle that needs to
    #   be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteAppBundleRequest AWS API Documentation
    #
    class DeleteAppBundleRequest < Struct.new(
      :app_bundle_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteAppBundleResponse AWS API Documentation
    #
    class DeleteAppBundleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_destination_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion destination to use for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteIngestionDestinationRequest AWS API Documentation
    #
    class DeleteIngestionDestinationRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :ingestion_destination_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteIngestionDestinationResponse AWS API Documentation
    #
    class DeleteIngestionDestinationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteIngestionRequest AWS API Documentation
    #
    class DeleteIngestionRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteIngestionResponse AWS API Documentation
    #
    class DeleteIngestionResponse < Aws::EmptyStructure; end

    # Contains information about an audit log destination.
    #
    # @note Destination is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Destination is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Destination corresponding to the set member.
    #
    # @!attribute [rw] s3_bucket
    #   Contains information about an Amazon S3 bucket.
    #   @return [Types::S3Bucket]
    #
    # @!attribute [rw] firehose_stream
    #   Contains information about an Amazon Kinesis Data Firehose delivery
    #   stream.
    #   @return [Types::FirehoseStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :s3_bucket,
      :firehose_stream,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3Bucket < Destination; end
      class FirehoseStream < Destination; end
      class Unknown < Destination; end
    end

    # Contains information about the destination of ingested data.
    #
    # @note DestinationConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DestinationConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DestinationConfiguration corresponding to the set member.
    #
    # @!attribute [rw] audit_log
    #   Contains information about an audit log destination configuration.
    #   @return [Types::AuditLogDestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DestinationConfiguration AWS API Documentation
    #
    class DestinationConfiguration < Struct.new(
      :audit_log,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AuditLog < DestinationConfiguration; end
      class Unknown < DestinationConfiguration; end
    end

    # Contains information about an Amazon Kinesis Data Firehose delivery
    # stream.
    #
    # @!attribute [rw] stream_name
    #   The name of the Amazon Kinesis Data Firehose delivery stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/FirehoseStream AWS API Documentation
    #
    class FirehoseStream < Struct.new(
      :stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] app_authorization_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app authorization to use for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetAppAuthorizationRequest AWS API Documentation
    #
    class GetAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app_authorization_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_authorization
    #   Contains information about an app authorization.
    #   @return [Types::AppAuthorization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetAppAuthorizationResponse AWS API Documentation
    #
    class GetAppAuthorizationResponse < Struct.new(
      :app_authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetAppBundleRequest AWS API Documentation
    #
    class GetAppBundleRequest < Struct.new(
      :app_bundle_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle
    #   Contains information about an app bundle.
    #   @return [Types::AppBundle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetAppBundleResponse AWS API Documentation
    #
    class GetAppBundleResponse < Struct.new(
      :app_bundle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_destination_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion destination to use for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetIngestionDestinationRequest AWS API Documentation
    #
    class GetIngestionDestinationRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :ingestion_destination_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_destination
    #   Contains information about an ingestion destination.
    #   @return [Types::IngestionDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetIngestionDestinationResponse AWS API Documentation
    #
    class GetIngestionDestinationResponse < Struct.new(
      :ingestion_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetIngestionRequest AWS API Documentation
    #
    class GetIngestionRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion
    #   Contains information about an ingestion.
    #   @return [Types::Ingestion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetIngestionResponse AWS API Documentation
    #
    class GetIngestionResponse < Struct.new(
      :ingestion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an ingestion.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] app_bundle_arn
    #   The Amazon Resource Name (ARN) of the app bundle for the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] app
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The ID of the application tenant.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the ingestion was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ingestion was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The status of the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_type
    #   The type of the ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/Ingestion AWS API Documentation
    #
    class Ingestion < Struct.new(
      :arn,
      :app_bundle_arn,
      :app,
      :tenant_id,
      :created_at,
      :updated_at,
      :state,
      :ingestion_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an ingestion destination.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the ingestion destination.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_arn
    #   The Amazon Resource Name (ARN) of the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] processing_configuration
    #   Contains information about how ingested data is processed.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] destination_configuration
    #   Contains information about the destination of ingested data.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] status
    #   The state of the ingestion destination.
    #
    #   The following states are possible:
    #
    #   * `Active`: The ingestion destination is active and is ready to be
    #     used.
    #
    #   * `Failed`: The ingestion destination has failed. If the ingestion
    #     destination is in this state, you should verify the ingestion
    #     destination configuration and try again.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the ingestion destination.
    #
    #   Only present when the `status` of ingestion destination is `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the ingestion destination was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ingestion destination was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/IngestionDestination AWS API Documentation
    #
    class IngestionDestination < Struct.new(
      :arn,
      :ingestion_arn,
      :processing_configuration,
      :destination_configuration,
      :status,
      :status_reason,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an ingestion destination.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the ingestion destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/IngestionDestinationSummary AWS API Documentation
    #
    class IngestionDestinationSummary < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an ingestion.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] app
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The ID of the application tenant.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The status of the ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/IngestionSummary AWS API Documentation
    #
    class IngestionSummary < Struct.new(
      :arn,
      :app,
      :tenant_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure with an internal server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The period of time after which you should retry your request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListAppAuthorizationsRequest AWS API Documentation
    #
    class ListAppAuthorizationsRequest < Struct.new(
      :app_bundle_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_authorization_summary_list
    #   Contains a list of app authorization summaries.
    #   @return [Array<Types::AppAuthorizationSummary>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListAppAuthorizationsResponse AWS API Documentation
    #
    class ListAppAuthorizationsResponse < Struct.new(
      :app_authorization_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListAppBundlesRequest AWS API Documentation
    #
    class ListAppBundlesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_summary_list
    #   Contains a list of app bundle summaries.
    #   @return [Array<Types::AppBundleSummary>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListAppBundlesResponse AWS API Documentation
    #
    class ListAppBundlesResponse < Struct.new(
      :app_bundle_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListIngestionDestinationsRequest AWS API Documentation
    #
    class ListIngestionDestinationsRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_destinations
    #   Contains a list of ingestion destination summaries.
    #   @return [Array<Types::IngestionDestinationSummary>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListIngestionDestinationsResponse AWS API Documentation
    #
    class ListIngestionDestinationsResponse < Struct.new(
      :ingestion_destinations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListIngestionsRequest AWS API Documentation
    #
    class ListIngestionsRequest < Struct.new(
      :app_bundle_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestions
    #   Contains a list of ingestion summaries.
    #   @return [Array<Types::IngestionSummary>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListIngestionsResponse AWS API Documentation
    #
    class ListIngestionsResponse < Struct.new(
      :ingestions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   retrieve tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of the key-value pairs for the tag or tags assigned to the
    #   specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains OAuth2 client credential information.
    #
    # @!attribute [rw] client_id
    #   The client ID of the client application.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret of the client application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/Oauth2Credential AWS API Documentation
    #
    class Oauth2Credential < Struct.new(
      :client_id,
      :client_secret)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Contains information about how ingested data is processed.
    #
    # @note ProcessingConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProcessingConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProcessingConfiguration corresponding to the set member.
    #
    # @!attribute [rw] audit_log
    #   Contains information about an audit log processing configuration.
    #   @return [Types::AuditLogProcessingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ProcessingConfiguration AWS API Documentation
    #
    class ProcessingConfiguration < Struct.new(
      :audit_log,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AuditLog < ProcessingConfiguration; end
      class Unknown < ProcessingConfiguration; end
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an Amazon S3 bucket.
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The object key to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/S3Bucket AWS API Documentation
    #
    class S3Bucket < Struct.new(
      :bucket_name,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code of the service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the quota exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/StartIngestionRequest AWS API Documentation
    #
    class StartIngestionRequest < Struct.new(
      :ingestion_identifier,
      :app_bundle_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/StartIngestionResponse AWS API Documentation
    #
    class StartIngestionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the target user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/StartUserAccessTasksRequest AWS API Documentation
    #
    class StartUserAccessTasksRequest < Struct.new(
      :app_bundle_identifier,
      :email)
      SENSITIVE = [:email]
      include Aws::Structure
    end

    # @!attribute [rw] user_access_tasks_list
    #   Contains a list of user access task information.
    #   @return [Array<Types::UserAccessTaskItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/StartUserAccessTasksResponse AWS API Documentation
    #
    class StartUserAccessTasksResponse < Struct.new(
      :user_access_tasks_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/StopIngestionRequest AWS API Documentation
    #
    class StopIngestionRequest < Struct.new(
      :ingestion_identifier,
      :app_bundle_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/StopIngestionResponse AWS API Documentation
    #
    class StopIngestionResponse < Aws::EmptyStructure; end

    # The key or keys of the key-value pairs for the tag or tags assigned to
    # a resource.
    #
    # @!attribute [rw] key
    #   Tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Contains information about an error returned from a user access task.
    #
    # @!attribute [rw] error_code
    #   The code of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/TaskError AWS API Documentation
    #
    class TaskError < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an application tenant.
    #
    # @!attribute [rw] tenant_identifier
    #   The ID of the application tenant.
    #   @return [String]
    #
    # @!attribute [rw] tenant_display_name
    #   The display name of the tenant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/Tenant AWS API Documentation
    #
    class Tenant < Struct.new(
      :tenant_identifier,
      :tenant_display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request rate exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code of the service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the quota exceeded.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The period of time after which you should retry your request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the key-value pairs for the tag or tags you want to
    #   remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] app_authorization_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app authorization to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] credential
    #   Contains credentials for the application, such as an API key or
    #   OAuth2 client ID and secret.
    #
    #   Specify credentials that match the authorization type of the app
    #   authorization to update. For example, if the authorization type of
    #   the app authorization is OAuth2 (`oauth2`), then you should provide
    #   only the OAuth2 credentials.
    #   @return [Types::Credential]
    #
    # @!attribute [rw] tenant
    #   Contains information about an application tenant, such as the
    #   application display name and identifier.
    #   @return [Types::Tenant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UpdateAppAuthorizationRequest AWS API Documentation
    #
    class UpdateAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app_authorization_identifier,
      :credential,
      :tenant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_authorization
    #   Contains information about an app authorization.
    #   @return [Types::AppAuthorization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UpdateAppAuthorizationResponse AWS API Documentation
    #
    class UpdateAppAuthorizationResponse < Struct.new(
      :app_authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_destination_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion destination to use for the request.
    #   @return [String]
    #
    # @!attribute [rw] destination_configuration
    #   Contains information about the destination of ingested data.
    #   @return [Types::DestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UpdateIngestionDestinationRequest AWS API Documentation
    #
    class UpdateIngestionDestinationRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :ingestion_destination_identifier,
      :destination_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_destination
    #   Contains information about an ingestion destination.
    #   @return [Types::IngestionDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UpdateIngestionDestinationResponse AWS API Documentation
    #
    class UpdateIngestionDestinationResponse < Struct.new(
      :ingestion_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a user's access to an application.
    #
    # @!attribute [rw] app
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The ID of the application tenant.
    #   @return [String]
    #
    # @!attribute [rw] tenant_display_name
    #   The display name of the tenant.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique ID of the task.
    #   @return [String]
    #
    # @!attribute [rw] result_status
    #   The status of the user access result item.
    #
    #   The following states are possible:
    #
    #   * `IN_PROGRESS`: The user access task is in progress.
    #
    #   * `COMPLETED`: The user access task completed successfully.
    #
    #   * `FAILED`: The user access task failed.
    #
    #   * `EXPIRED`: The user access task expired.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the target user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique ID of user.
    #   @return [String]
    #
    # @!attribute [rw] user_full_name
    #   The full name of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_first_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_last_name
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_status
    #   The status of the user returned by the application.
    #   @return [String]
    #
    # @!attribute [rw] task_error
    #   Contains information about an error returned from a user access
    #   task.
    #   @return [Types::TaskError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UserAccessResultItem AWS API Documentation
    #
    class UserAccessResultItem < Struct.new(
      :app,
      :tenant_id,
      :tenant_display_name,
      :task_id,
      :result_status,
      :email,
      :user_id,
      :user_full_name,
      :user_first_name,
      :user_last_name,
      :user_status,
      :task_error)
      SENSITIVE = [:email, :user_id, :user_full_name, :user_first_name, :user_last_name]
      include Aws::Structure
    end

    # Contains information about a user access task.
    #
    # @!attribute [rw] app
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The ID of the application tenant.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique ID of the task.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Error from the task, if any.
    #   @return [Types::TaskError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UserAccessTaskItem AWS API Documentation
    #
    class UserAccessTaskItem < Struct.new(
      :app,
      :tenant_id,
      :task_id,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has invalid or missing parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The field list.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by the Amazon Web
    # Services service in a specified field.
    #
    # @!attribute [rw] name
    #   The field name where the invalid entry was detected.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message about the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
