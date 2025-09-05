# frozen_string_literal: true

# This is generated code!

module Aws::AppFabric
  # This module contains the types returned by client operations.
  module Types

    # <p>You are not authorized to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains API key credential information.</p>
    # @!attribute api_key
    #   <p>An API key for an application.</p>
    #   @return [String]
    class ApiKeyCredential < Struct.new(
      :api_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an app authorization.</p>
    # @!attribute app_authorization_arn
    #   <p>The Amazon Resource Name (ARN) of the app authorization.</p>
    #   @return [String]
    # @!attribute app_bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the app bundle for the app authorization.</p>
    #   @return [String]
    # @!attribute app
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute tenant
    #   <p>Contains information about an application tenant, such as the application display name
    #            and identifier.</p>
    #   @return [Types::Tenant]
    # @!attribute auth_type
    #   <p>The authorization type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The state of the app authorization.</p>
    #            <p>The following states are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PendingConnect</code>: The initial state of the app authorization. The app
    #                  authorization is created but not yet connected.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Connected</code>: The app authorization is connected to the application, and
    #                  is ready to be used.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConnectionValidationFailed</code>: The app authorization received a
    #                  validation exception when trying to connect to the application. If the app
    #                  authorization is in this state, you should verify the configured credentials and try
    #                  to connect the app authorization again.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TokenAutoRotationFailed</code>: AppFabric failed to refresh the access token. If
    #                  the app authorization is in this state, you should try to reconnect the app
    #                  authorization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the app authorization was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the app authorization was last updated.</p>
    #   @return [Time]
    # @!attribute persona
    #   <p>The user persona of the app authorization.</p>
    #            <p>This field should always be <code>admin</code>.</p>
    #   @return [String]
    # @!attribute auth_url
    #   <p>The application URL for the OAuth flow.</p>
    #   @return [String]
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
      :auth_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an app authorization.</p>
    # @!attribute app_authorization_arn
    #   <p>The Amazon Resource Name (ARN) of the app authorization.</p>
    #   @return [String]
    # @!attribute app_bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the app bundle for the app authorization.</p>
    #   @return [String]
    # @!attribute app
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute tenant
    #   <p>Contains information about an application tenant, such as the application display name
    #            and identifier.</p>
    #   @return [Types::Tenant]
    # @!attribute status
    #   <p>The state of the app authorization.</p>
    #            <p>The following states are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PendingConnect</code>: The initial state of the app authorization. The app
    #                  authorization is created but not yet connected.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Connected</code>: The app authorization is connected to the application, and
    #                  is ready to be used.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConnectionValidationFailed</code>: The app authorization received a
    #                  validation exception when trying to connect to the application. If the app
    #                  authorization is in this state, you should verify the configured credentials and try
    #                  to connect the app authorization again.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TokenAutoRotationFailed</code>: AppFabric failed to refresh the access token. If
    #                  the app authorization is in this state, you should try to reconnect the app
    #                  authorization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute updated_at
    #   <p>Timestamp for when the app authorization was last updated.</p>
    #   @return [Time]
    class AppAuthorizationSummary < Struct.new(
      :app_authorization_arn,
      :app_bundle_arn,
      :app,
      :tenant,
      :status,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an app bundle.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the app bundle.</p>
    #   @return [String]
    # @!attribute customer_managed_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key
    #            used to encrypt the application data.</p>
    #   @return [String]
    class AppBundle < Struct.new(
      :arn,
      :customer_managed_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an app bundle.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the app bundle.</p>
    #   @return [String]
    class AppBundleSummary < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an audit log destination configuration.</p>
    # @!attribute destination
    #   <p>Contains information about an audit log destination.</p>
    #   @return [Types::Destination]
    class AuditLogDestinationConfiguration < Struct.new(
      :destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an audit log processing configuration.</p>
    # @!attribute schema
    #   <p>The event schema in which the audit logs need to be formatted.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format in which the audit logs need to be formatted.</p>
    #   @return [String]
    class AuditLogProcessingConfiguration < Struct.new(
      :schema,
      :format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains authorization request information, which is required for Amazon Web Services AppFabric to get the
    #          OAuth2 access token for an application.</p>
    # @!attribute redirect_uri
    #   <p>The redirect URL that is specified in the AuthURL and the application client.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The authorization code returned by the application after permission is granted in the
    #            application OAuth page (after clicking on the AuthURL).</p>
    #   @return [String]
    class AuthRequest < Struct.new(
      :redirect_uri,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute task_id_list
    #   <p>The tasks IDs to use for the request.</p>
    #   @return [Array<String>]
    class BatchGetUserAccessTasksRequest < Struct.new(
      :app_bundle_identifier,
      :task_id_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_access_results_list
    #   <p>Contains a list of user access results.</p>
    #   @return [Array<Types::UserAccessResultItem>]
    class BatchGetUserAccessTasksResponse < Struct.new(
      :user_access_results_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request has created a conflict. Check the request parameters and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            that contains the app authorization to use for the request.</p>
    #   @return [String]
    # @!attribute app_authorization_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app
    #            authorization to use for the request.</p>
    #   @return [String]
    # @!attribute auth_request
    #   <p>Contains OAuth2 authorization information.</p>
    #            <p>This is required if the app authorization for the request is configured with an OAuth2
    #               (<code>oauth2</code>) authorization type.</p>
    #   @return [Types::AuthRequest]
    class ConnectAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app_authorization_identifier,
      :auth_request,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_authorization_summary
    #   <p>Contains a summary of the app authorization.</p>
    #   @return [Types::AppAuthorizationSummary]
    class ConnectAppAuthorizationResponse < Struct.new(
      :app_authorization_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute app
    #   <p>The name of the application.</p>
    #            <p>Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SLACK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASANA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JIRA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>M365</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>M365AUDITLOGS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZOOM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZENDESK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OKTA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GOOGLE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DROPBOX</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMARTSHEET</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CISCO</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute credential
    #   <p>Contains credentials for the application, such as an API key or OAuth2 client ID and
    #            secret.</p>
    #            <p>Specify credentials that match the authorization type for your request. For example, if
    #            the authorization type for your request is OAuth2 (<code>oauth2</code>), then you should
    #            provide only the OAuth2 credentials.</p>
    #   @return [Types::Credential]
    # @!attribute tenant
    #   <p>Contains information about an application tenant, such as the application display name
    #            and identifier.</p>
    #   @return [Types::Tenant]
    # @!attribute auth_type
    #   <p>The authorization type for the app authorization.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency
    #            of the request. This lets you safely retry the request without accidentally performing the
    #            same operation a second time. Passing the same value to a later call to an operation
    #            requires that you also pass the same value for all other parameters. We recommend that you
    #            use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #               value</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #            you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with different
    #            parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app,
      :credential,
      :tenant,
      :auth_type,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_authorization
    #   <p>Contains information about an app authorization.</p>
    #   @return [Types::AppAuthorization]
    class CreateAppAuthorizationResponse < Struct.new(
      :app_authorization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency
    #            of the request. This lets you safely retry the request without accidentally performing the
    #            same operation a second time. Passing the same value to a later call to an operation
    #            requires that you also pass the same value for all other parameters. We recommend that you
    #            use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #               value</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #            you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with different
    #            parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute customer_managed_key_identifier
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key to
    #            use to encrypt the application data. If this is not specified, an Amazon Web Services owned key is used for encryption.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateAppBundleRequest < Struct.new(
      :client_token,
      :customer_managed_key_identifier,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle
    #   <p>Contains information about an app bundle.</p>
    #   @return [Types::AppBundle]
    class CreateAppBundleResponse < Struct.new(
      :app_bundle,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    #   @return [String]
    # @!attribute processing_configuration
    #   <p>Contains information about how ingested data is processed.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute destination_configuration
    #   <p>Contains information about the destination of ingested data.</p>
    #   @return [Types::DestinationConfiguration]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency
    #            of the request. This lets you safely retry the request without accidentally performing the
    #            same operation a second time. Passing the same value to a later call to an operation
    #            requires that you also pass the same value for all other parameters. We recommend that you
    #            use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #               value</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #            you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with different
    #            parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateIngestionDestinationRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :processing_configuration,
      :destination_configuration,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion_destination
    #   <p>Contains information about an ingestion destination.</p>
    #   @return [Types::IngestionDestination]
    class CreateIngestionDestinationResponse < Struct.new(
      :ingestion_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute app
    #   <p>The name of the application.</p>
    #            <p>Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SLACK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASANA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JIRA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>M365</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>M365AUDITLOGS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZOOM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZENDESK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OKTA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GOOGLE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DROPBOX</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMARTSHEET</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CISCO</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The ID of the application tenant.</p>
    #   @return [String]
    # @!attribute ingestion_type
    #   <p>The ingestion type.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency
    #            of the request. This lets you safely retry the request without accidentally performing the
    #            same operation a second time. Passing the same value to a later call to an operation
    #            requires that you also pass the same value for all other parameters. We recommend that you
    #            use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #               value</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #            you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with different
    #            parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateIngestionRequest < Struct.new(
      :app_bundle_identifier,
      :app,
      :tenant_id,
      :ingestion_type,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion
    #   <p>Contains information about an ingestion.</p>
    #   @return [Types::Ingestion]
    class CreateIngestionResponse < Struct.new(
      :ingestion,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains credential information for an application.</p>
    # @!attribute oauth2_credential
    #   <p>Contains OAuth2 client credential information.</p>
    #   @return [Types::Oauth2Credential]
    # @!attribute api_key_credential
    #   <p>Contains API key credential information.</p>
    #   @return [Types::ApiKeyCredential]
    class Credential < Struct.new(
      :oauth2_credential,
      :api_key_credential,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Oauth2Credential < Credential; end
      class ApiKeyCredential < Credential; end
      class Unknown < Credential; end
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute app_authorization_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app
    #            authorization to use for the request.</p>
    #   @return [String]
    class DeleteAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app_authorization_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAppAuthorizationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The ID or Amazon Resource Name (ARN) of the app bundle that needs to be deleted.</p>
    #   @return [String]
    class DeleteAppBundleRequest < Struct.new(
      :app_bundle_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAppBundleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_destination_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion
    #            destination to use for the request.</p>
    #   @return [String]
    class DeleteIngestionDestinationRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :ingestion_destination_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIngestionDestinationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    #   @return [String]
    class DeleteIngestionRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIngestionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an audit log destination.</p>
    # @!attribute s3_bucket
    #   <p>Contains information about an Amazon S3 bucket.</p>
    #   @return [Types::S3Bucket]
    # @!attribute firehose_stream
    #   <p>Contains information about an Amazon Kinesis Data Firehose delivery stream.</p>
    #   @return [Types::FirehoseStream]
    class Destination < Struct.new(
      :s3_bucket,
      :firehose_stream,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class S3Bucket < Destination; end
      class FirehoseStream < Destination; end
      class Unknown < Destination; end
    end

    # <p>Contains information about the destination of ingested data.</p>
    # @!attribute audit_log
    #   <p>Contains information about an audit log destination configuration.</p>
    #   @return [Types::AuditLogDestinationConfiguration]
    class DestinationConfiguration < Struct.new(
      :audit_log,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AuditLog < DestinationConfiguration; end
      class Unknown < DestinationConfiguration; end
    end

    # <p>Contains information about an Amazon Kinesis Data Firehose delivery stream.</p>
    # @!attribute stream_name
    #   <p>The name of the Amazon Kinesis Data Firehose delivery stream.</p>
    #   @return [String]
    class FirehoseStream < Struct.new(
      :stream_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute app_authorization_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app
    #            authorization to use for the request.</p>
    #   @return [String]
    class GetAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app_authorization_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_authorization
    #   <p>Contains information about an app authorization.</p>
    #   @return [Types::AppAuthorization]
    class GetAppAuthorizationResponse < Struct.new(
      :app_authorization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    class GetAppBundleRequest < Struct.new(
      :app_bundle_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle
    #   <p>Contains information about an app bundle.</p>
    #   @return [Types::AppBundle]
    class GetAppBundleResponse < Struct.new(
      :app_bundle,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_destination_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion
    #            destination to use for the request.</p>
    #   @return [String]
    class GetIngestionDestinationRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :ingestion_destination_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion_destination
    #   <p>Contains information about an ingestion destination.</p>
    #   @return [Types::IngestionDestination]
    class GetIngestionDestinationResponse < Struct.new(
      :ingestion_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    #   @return [String]
    class GetIngestionRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion
    #   <p>Contains information about an ingestion.</p>
    #   @return [Types::Ingestion]
    class GetIngestionResponse < Struct.new(
      :ingestion,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an ingestion.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ingestion.</p>
    #   @return [String]
    # @!attribute app_bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the app bundle for the ingestion.</p>
    #   @return [String]
    # @!attribute app
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The ID of the application tenant.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the ingestion was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the ingestion was last updated.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The status of the ingestion.</p>
    #   @return [String]
    # @!attribute ingestion_type
    #   <p>The type of the ingestion.</p>
    #   @return [String]
    class Ingestion < Struct.new(
      :arn,
      :app_bundle_arn,
      :app,
      :tenant_id,
      :created_at,
      :updated_at,
      :state,
      :ingestion_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an ingestion destination.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ingestion destination.</p>
    #   @return [String]
    # @!attribute ingestion_arn
    #   <p>The Amazon Resource Name (ARN) of the ingestion.</p>
    #   @return [String]
    # @!attribute processing_configuration
    #   <p>Contains information about how ingested data is processed.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute destination_configuration
    #   <p>Contains information about the destination of ingested data.</p>
    #   @return [Types::DestinationConfiguration]
    # @!attribute status
    #   <p>The state of the ingestion destination.</p>
    #            <p>The following states are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Active</code>: The ingestion destination is active and is ready to be
    #                  used.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: The ingestion destination has failed. If the ingestion
    #                  destination is in this state, you should verify the ingestion destination
    #                  configuration and try again.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the ingestion destination.</p>
    #            <p>Only present when the <code>status</code> of ingestion destination is
    #               <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the ingestion destination was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the ingestion destination was last updated.</p>
    #   @return [Time]
    class IngestionDestination < Struct.new(
      :arn,
      :ingestion_arn,
      :processing_configuration,
      :destination_configuration,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an ingestion destination.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ingestion destination.</p>
    #   @return [String]
    class IngestionDestinationSummary < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an ingestion.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ingestion.</p>
    #   @return [String]
    # @!attribute app
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The ID of the application tenant.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The status of the ingestion.</p>
    #   @return [String]
    class IngestionSummary < Struct.new(
      :arn,
      :app,
      :tenant_id,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure
    #          with an internal server.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The period of time after which you should retry your request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>nextToken</code> to obtain further pages of results.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be
    #            fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListAppAuthorizationsRequest < Struct.new(
      :app_bundle_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_authorization_summary_list
    #   <p>Contains a list of app authorization summaries.</p>
    #   @return [Array<Types::AppAuthorizationSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListAppAuthorizationsResponse < Struct.new(
      :app_authorization_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>nextToken</code> to obtain further pages of results.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be
    #            fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListAppBundlesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_summary_list
    #   <p>Contains a list of app bundle summaries.</p>
    #   @return [Array<Types::AppBundleSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListAppBundlesResponse < Struct.new(
      :app_bundle_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>nextToken</code> to obtain further pages of results.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be
    #            fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListIngestionDestinationsRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion_destinations
    #   <p>Contains a list of ingestion destination summaries.</p>
    #   @return [Array<Types::IngestionDestinationSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListIngestionDestinationsResponse < Struct.new(
      :ingestion_destinations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>nextToken</code> to obtain further pages of results.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be
    #            fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListIngestionsRequest < Struct.new(
      :app_bundle_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestions
    #   <p>Contains a list of ingestion summaries.</p>
    #   @return [Array<Types::IngestionSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListIngestionsResponse < Struct.new(
      :ingestions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to retrieve
    #            tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains OAuth2 client credential information.</p>
    # @!attribute client_id
    #   <p>The client ID of the client application.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret of the client application.</p>
    #   @return [String]
    class Oauth2Credential < Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about how ingested data is processed.</p>
    # @!attribute audit_log
    #   <p>Contains information about an audit log processing configuration.</p>
    #   @return [Types::AuditLogProcessingConfiguration]
    class ProcessingConfiguration < Struct.new(
      :audit_log,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AuditLog < ProcessingConfiguration; end
      class Unknown < ProcessingConfiguration; end
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon S3 bucket.</p>
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The object key to use.</p>
    #   @return [String]
    class S3Bucket < Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code of the service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code for the quota exceeded.</p>
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

    # @!attribute ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    #   @return [String]
    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    class StartIngestionRequest < Struct.new(
      :ingestion_identifier,
      :app_bundle_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StartIngestionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the target user.</p>
    #   @return [String]
    class StartUserAccessTasksRequest < Struct.new(
      :app_bundle_identifier,
      :email,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_access_tasks_list
    #   <p>Contains a list of user access task information.</p>
    #   @return [Array<Types::UserAccessTaskItem>]
    class StartUserAccessTasksResponse < Struct.new(
      :user_access_tasks_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    #   @return [String]
    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    class StopIngestionRequest < Struct.new(
      :ingestion_identifier,
      :app_bundle_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopIngestionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The key or keys of the key-value pairs for the tag or tags assigned to a
    #          resource.</p>
    # @!attribute key
    #   <p>Tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Tag value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an error returned from a user access task.</p>
    # @!attribute error_code
    #   <p>The code of the error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The message of the error.</p>
    #   @return [String]
    class TaskError < Struct.new(
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an application tenant.</p>
    # @!attribute tenant_identifier
    #   <p>The ID of the application tenant.</p>
    #   @return [String]
    # @!attribute tenant_display_name
    #   <p>The display name of the tenant.</p>
    #   @return [String]
    class Tenant < Struct.new(
      :tenant_identifier,
      :tenant_display_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request rate exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The code of the service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code for the quota exceeded.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The period of time after which you should retry your request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the key-value pairs for the tag or tags you want to remove from the
    #            specified resource.</p>
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

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute app_authorization_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app
    #            authorization to use for the request.</p>
    #   @return [String]
    # @!attribute credential
    #   <p>Contains credentials for the application, such as an API key or OAuth2 client ID and
    #            secret.</p>
    #            <p>Specify credentials that match the authorization type of the app authorization to
    #            update. For example, if the authorization type of the app authorization is OAuth2
    #               (<code>oauth2</code>), then you should provide only the OAuth2 credentials.</p>
    #   @return [Types::Credential]
    # @!attribute tenant
    #   <p>Contains information about an application tenant, such as the application display name
    #            and identifier.</p>
    #   @return [Types::Tenant]
    class UpdateAppAuthorizationRequest < Struct.new(
      :app_bundle_identifier,
      :app_authorization_identifier,
      :credential,
      :tenant,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_authorization
    #   <p>Contains information about an app authorization.</p>
    #   @return [Types::AppAuthorization]
    class UpdateAppAuthorizationResponse < Struct.new(
      :app_authorization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    #   @return [String]
    # @!attribute ingestion_destination_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion
    #            destination to use for the request.</p>
    #   @return [String]
    # @!attribute destination_configuration
    #   <p>Contains information about the destination of ingested data.</p>
    #   @return [Types::DestinationConfiguration]
    class UpdateIngestionDestinationRequest < Struct.new(
      :app_bundle_identifier,
      :ingestion_identifier,
      :ingestion_destination_identifier,
      :destination_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion_destination
    #   <p>Contains information about an ingestion destination.</p>
    #   @return [Types::IngestionDestination]
    class UpdateIngestionDestinationResponse < Struct.new(
      :ingestion_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a user's access to an application.</p>
    # @!attribute app
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The ID of the application tenant.</p>
    #   @return [String]
    # @!attribute tenant_display_name
    #   <p>The display name of the tenant.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique ID of the task.</p>
    #   @return [String]
    # @!attribute result_status
    #   <p>The status of the user access result item.</p>
    #            <p>The following states are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>: The user access task is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>: The user access task completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The user access task failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPIRED</code>: The user access task expired.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the target user.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The unique ID of user.</p>
    #   @return [String]
    # @!attribute user_full_name
    #   <p>The full name of the user.</p>
    #   @return [String]
    # @!attribute user_first_name
    #   <p>The first name of the user.</p>
    #   @return [String]
    # @!attribute user_last_name
    #   <p>The last name of the user.</p>
    #   @return [String]
    # @!attribute user_status
    #   <p>The status of the user returned by the application.</p>
    #   @return [String]
    # @!attribute task_error
    #   <p>Contains information about an error returned from a user access task.</p>
    #   @return [Types::TaskError]
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
      :task_error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a user access task.</p>
    # @!attribute app
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The ID of the application tenant.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique ID of the task.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Error from the task, if any.</p>
    #   @return [Types::TaskError]
    class UserAccessTaskItem < Struct.new(
      :app,
      :tenant_id,
      :task_id,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request has invalid or missing parameters.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field list.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input failed to meet the constraints specified by the Amazon Web Services service in
    #          a specified field.</p>
    # @!attribute name
    #   <p>The field name where the invalid entry was detected.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message about the validation exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
