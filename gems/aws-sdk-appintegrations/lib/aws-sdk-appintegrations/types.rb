# frozen_string_literal: true

# This is generated code!

module Aws::AppIntegrations
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the Application Association.</p>
    # @!attribute application_association_arn
    #   <p>The Amazon Resource Name (ARN) of the Application Association.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The identifier for the client that is associated with the Application Association.</p>
    #   @return [String]
    class ApplicationAssociationSummary < Struct.new(
      nil,
      :application_association_arn,
      :application_arn,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for the application.</p>
    # @!attribute contact_handling
    #   <p>The contact handling configuration for the application.</p>
    #   @return [Types::ContactHandling]
    class ApplicationConfig < Struct.new(
      nil,
      :contact_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for where the application should be loaded from.</p>
    # @!attribute external_url_config
    #   <p>The external URL source for the application.</p>
    #   @return [Types::ExternalUrlConfig]
    class ApplicationSourceConfig < Struct.new(
      nil,
      :external_url_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the Application.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the Application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the application.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The time when the application was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time when the application was last modified.</p>
    #   @return [Time]
    # @!attribute is_service
    #   <p>Indicates whether the application is a service.</p>
    #   @deprecated
    #     IsService has been deprecated in favor of ApplicationType
    #     Since: 2025-12-01
    #   @return [Boolean]
    # @!attribute application_type
    #   <p>The type of application.</p>
    #   @return [String]
    class ApplicationSummary < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :namespace,
      :created_time,
      :last_modified_time,
      :is_service,
      :application_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_service] = false unless options.key?(:is_service)
        super
      end
    end

    # <p>Contains the authentication settings that Connect Customer uses to call an external application endpoint.</p>
    # @!attribute auth_type
    #   <p>The type of authentication that Connect Customer uses to call the external application endpoint. You must specify an authentication type for <code>A2A_SERVER</code> applications. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>API_KEY</code>: Connect Customer sends an API key that is stored in the Secrets Manager secret that you specify in <code>CredentialProviderIdentifier</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECT_JWT</code>: Connect Customer issues a short-lived, signed JSON Web Token (JWT). This authentication type doesn't require a stored credential.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute credential_provider_identifier
    #   <p>The ARN of the Secrets Manager secret that stores the credentials. The secret must be accessible to Connect Customer.</p>
    #            <p>You must specify this ARN when <code>AuthType</code> is <code>API_KEY</code>. Don't specify it when <code>AuthType</code> is <code>CONNECT_JWT</code>.</p>
    #   @return [String]
    # @!attribute audience_override
    #   <p>The value that Connect Customer uses as the audience (<code>aud</code>) claim of the JSON Web Token (JWT) that it issues. You can specify this parameter only when <code>AuthType</code> is <code>CONNECT_JWT</code>. If you don't specify it, the audience is the <code>AccessUrl</code> of the application. The value can't contain <code>connect.amazonaws.com</code>.</p>
    #   @return [String]
    class AuthConfig < Struct.new(
      nil,
      :auth_type,
      :credential_provider_identifier,
      :audience_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource. Verify the application's current state and retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The contact handling configuration for the application.</p>
    # @!attribute scope
    #   <p>Indicates whether the application refreshes for each contact or refreshes only with each new browser session.</p>
    #   @return [String]
    class ContactHandling < Struct.new(
      nil,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute application_source_config
    #   <p>The configuration for where the application should be loaded from.</p>
    #   @return [Types::ApplicationSourceConfig]
    # @!attribute subscriptions
    #   <p>The events that the application subscribes.</p>
    #   @deprecated
    #     Subscriptions has been replaced with Permissions
    #   @return [Array<Types::Subscription>]
    # @!attribute publications
    #   <p>The events that the application publishes.</p>
    #   @deprecated
    #     Publications has been replaced with Permissions
    #   @return [Array<Types::Publication>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute permissions
    #   <p>The configuration of events or requests that the application has access to.</p>
    #   @return [Array<String>]
    # @!attribute is_service
    #   <p>Indicates whether the application is a service.</p>
    #   @deprecated
    #     IsService has been deprecated in favor of ApplicationType
    #     Since: 2025-12-01
    #   @return [Boolean]
    # @!attribute initialization_timeout
    #   <p>The maximum time in milliseconds allowed to establish a connection with the workspace.</p>
    #   @return [Integer]
    # @!attribute application_config
    #   <p>The configuration settings for the application.</p>
    #   @return [Types::ApplicationConfig]
    # @!attribute iframe_config
    #   <p>The iframe configuration for the application.</p>
    #   @return [Types::IframeConfig]
    # @!attribute application_type
    #   <p>The type of application.</p>
    #   @return [String]
    # @!attribute auth_config
    #   <p>The authentication settings that Connect Customer uses when calling the external application.</p>
    #   @return [Types::AuthConfig]
    class CreateApplicationRequest < Struct.new(
      nil,
      :name,
      :namespace,
      :description,
      :application_source_config,
      :subscriptions,
      :publications,
      :client_token,
      :tags,
      :permissions,
      :is_service,
      :initialization_timeout,
      :application_config,
      :iframe_config,
      :application_type,
      :auth_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the Application.</p>
    #   @return [String]
    class CreateApplicationResponse < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The identifier for the client that is associated with the DataIntegration
    #         association.</p>
    #   @return [String]
    # @!attribute object_configuration
    #   <p>The configuration for what data should be pulled from the source.</p>
    #   @return [Hash<String, Hash<String, Array<String>>>]
    # @!attribute destination_uri
    #   <p>The URI of the data destination.</p>
    #   @return [String]
    # @!attribute client_association_metadata
    #   <p>The mapping of metadata to be extracted from the data.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute execution_configuration
    #   <p>The configuration for how the files should be pulled from the source.</p>
    #   @return [Types::ExecutionConfiguration]
    class CreateDataIntegrationAssociationRequest < Struct.new(
      nil,
      :data_integration_identifier,
      :client_id,
      :object_configuration,
      :destination_uri,
      :client_association_metadata,
      :client_token,
      :execution_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_integration_association_id
    #   <p>A unique identifier. for the DataIntegrationAssociation.</p>
    #   @return [String]
    # @!attribute data_integration_arn
    #   <p>The Amazon Resource Name (ARN) for the DataIntegration.</p>
    #   @return [String]
    class CreateDataIntegrationAssociationResponse < Struct.new(
      nil,
      :data_integration_association_id,
      :data_integration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the DataIntegration.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>The KMS key ARN for the DataIntegration.</p>
    #   @return [String]
    # @!attribute source_uri
    #   <p>The URI of the data source.</p>
    #   @return [String]
    # @!attribute schedule_config
    #   <p>The name of the data and how often it should be pulled from the source.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute file_configuration
    #   <p>The configuration for what files should be pulled from the source.</p>
    #   @return [Types::FileConfiguration]
    # @!attribute object_configuration
    #   <p>The configuration for what data should be pulled from the source.</p>
    #   @return [Hash<String, Hash<String, Array<String>>>]
    class CreateDataIntegrationRequest < Struct.new(
      nil,
      :name,
      :description,
      :kms_key,
      :source_uri,
      :schedule_config,
      :tags,
      :client_token,
      :file_configuration,
      :object_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN)</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the DataIntegration.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>The KMS key ARN for the DataIntegration.</p>
    #   @return [String]
    # @!attribute source_uri
    #   <p>The URI of the data source.</p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The name of the data and how often it should be pulled from the source.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute file_configuration
    #   <p>The configuration for what files should be pulled from the source.</p>
    #   @return [Types::FileConfiguration]
    # @!attribute object_configuration
    #   <p>The configuration for what data should be pulled from the source.</p>
    #   @return [Hash<String, Hash<String, Array<String>>>]
    class CreateDataIntegrationResponse < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :description,
      :kms_key,
      :source_uri,
      :schedule_configuration,
      :tags,
      :client_token,
      :file_configuration,
      :object_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event integration.</p>
    #   @return [String]
    # @!attribute event_filter
    #   <p>The event filter.</p>
    #   @return [Types::EventFilter]
    # @!attribute event_bridge_bus
    #   <p>The EventBridge bus.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateEventIntegrationRequest < Struct.new(
      nil,
      :name,
      :description,
      :event_filter,
      :event_bridge_bus,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the event integration. </p>
    #   @return [String]
    class CreateEventIntegrationResponse < Struct.new(
      nil,
      :event_integration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the DataIntegration association.</p>
    # @!attribute data_integration_association_arn
    #   <p>The Amazon Resource Name (ARN) of the DataIntegration association.</p>
    #   @return [String]
    # @!attribute data_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the DataIntegration.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The identifier for the client that is associated with the DataIntegration
    #         association.</p>
    #   @return [String]
    # @!attribute destination_uri
    #   <p>The URI of the data destination.</p>
    #   @return [String]
    # @!attribute last_execution_status
    #   <p>The execution status of the last job.</p>
    #   @return [Types::LastExecutionStatus]
    # @!attribute execution_configuration
    #   <p>The configuration for how the files should be pulled from the source.</p>
    #   @return [Types::ExecutionConfiguration]
    class DataIntegrationAssociationSummary < Struct.new(
      nil,
      :data_integration_association_arn,
      :data_integration_arn,
      :client_id,
      :destination_uri,
      :last_execution_status,
      :execution_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the DataIntegration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DataIntegration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #   @return [String]
    # @!attribute source_uri
    #   <p>The URI of the data source.</p>
    #   @return [String]
    class DataIntegrationSummary < Struct.new(
      nil,
      :arn,
      :name,
      :source_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    #   @return [String]
    # @!attribute force
    #   <p>Specifies whether to delete the application even if it still has application associations.
    #         If <code>true</code>, the operation removes the application and its associations. If
    #         <code>false</code> or absent, the delete fails when associations exist.</p>
    #            <important>
    #               <p>Setting this parameter to <code>true</code> permanently removes all of the
    #           application's associations. Doing so might impact other resources that rely on and
    #           reference the application. This action can't be undone.</p>
    #            </important>
    #   @return [Boolean]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :arn,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #   @return [String]
    class DeleteDataIntegrationRequest < Struct.new(
      nil,
      :data_integration_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDataIntegrationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration.</p>
    #   @return [String]
    class DeleteEventIntegrationRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEventIntegrationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource with the specified name already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateResourceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The event filter.</p>
    # @!attribute source
    #   <p>The source of the events.</p>
    #   @return [String]
    class EventFilter < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The event integration.</p>
    # @!attribute event_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the event integration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the event integration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The event integration description.</p>
    #   @return [String]
    # @!attribute event_filter
    #   <p>The event integration filter.</p>
    #   @return [Types::EventFilter]
    # @!attribute event_bridge_bus
    #   <p>The Amazon EventBridge bus for the event integration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class EventIntegration < Struct.new(
      nil,
      :event_integration_arn,
      :name,
      :description,
      :event_filter,
      :event_bridge_bus,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The event integration association.</p>
    # @!attribute event_integration_association_arn
    #   <p>The Amazon Resource Name (ARN) for the event integration association.</p>
    #   @return [String]
    # @!attribute event_integration_association_id
    #   <p>The identifier for the event integration association.</p>
    #   @return [String]
    # @!attribute event_integration_name
    #   <p>The name of the event integration.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The identifier for the client that is associated with the event integration.</p>
    #   @return [String]
    # @!attribute event_bridge_rule_name
    #   <p>The name of the EventBridge rule.</p>
    #   @return [String]
    # @!attribute client_association_metadata
    #   <p>The metadata associated with the client.</p>
    #   @return [Hash<String, String>]
    class EventIntegrationAssociation < Struct.new(
      nil,
      :event_integration_association_arn,
      :event_integration_association_id,
      :event_integration_name,
      :client_id,
      :event_bridge_rule_name,
      :client_association_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for how the files should be pulled from the source.</p>
    # @!attribute execution_mode
    #   <p>The mode for data import/export execution.</p>
    #   @return [String]
    # @!attribute on_demand_configuration
    #   <p>The start and end time for data pull from the source.</p>
    #   @return [Types::OnDemandConfiguration]
    # @!attribute schedule_configuration
    #   <p>The name of the data and how often it should be pulled from the source.</p>
    #   @return [Types::ScheduleConfiguration]
    class ExecutionConfiguration < Struct.new(
      nil,
      :execution_mode,
      :on_demand_configuration,
      :schedule_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The external URL source for the application.</p>
    # @!attribute access_url
    #   <p>The URL to access the application.</p>
    #   @return [String]
    # @!attribute approved_origins
    #   <p>Additional URLs to allow list if different than the access URL.</p>
    #   @return [Array<String>]
    class ExternalUrlConfig < Struct.new(
      nil,
      :access_url,
      :approved_origins,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for what files should be pulled from the source.</p>
    # @!attribute folders
    #   <p>Identifiers for the source folders to pull all files from recursively.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>Restrictions for what files should be pulled from the source.</p>
    #   @return [Hash<String, Array<String>>]
    class FileConfiguration < Struct.new(
      nil,
      :folders,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    #   @return [String]
    class GetApplicationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the Application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute application_source_config
    #   <p>The configuration for where the application should be loaded from.</p>
    #   @return [Types::ApplicationSourceConfig]
    # @!attribute subscriptions
    #   <p>The events that the application subscribes.</p>
    #   @deprecated
    #     Subscriptions has been replaced with Permissions
    #   @return [Array<Types::Subscription>]
    # @!attribute publications
    #   <p>The events that the application publishes.</p>
    #   @deprecated
    #     Publications has been replaced with Permissions
    #   @return [Array<Types::Publication>]
    # @!attribute created_time
    #   <p>The created time of the Application.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The last modified time of the Application.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute permissions
    #   <p>The configuration of events or requests that the application has access to.</p>
    #   @return [Array<String>]
    # @!attribute is_service
    #   <p>Indicates whether the application is a service.</p>
    #   @deprecated
    #     IsService has been deprecated in favor of ApplicationType
    #     Since: 2025-12-01
    #   @return [Boolean]
    # @!attribute initialization_timeout
    #   <p>The maximum time in milliseconds allowed to establish a connection with the workspace.</p>
    #   @return [Integer]
    # @!attribute application_config
    #   <p>The configuration settings for the application.</p>
    #   @return [Types::ApplicationConfig]
    # @!attribute iframe_config
    #   <p>The iframe configuration for the application.</p>
    #   @return [Types::IframeConfig]
    # @!attribute application_type
    #   <p>The type of application.</p>
    #   @return [String]
    # @!attribute auth_config
    #   <p>The authentication settings that Connect Customer uses when calling the external application.</p>
    #   @return [Types::AuthConfig]
    class GetApplicationResponse < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :namespace,
      :description,
      :application_source_config,
      :subscriptions,
      :publications,
      :created_time,
      :last_modified_time,
      :tags,
      :permissions,
      :is_service,
      :initialization_timeout,
      :application_config,
      :iframe_config,
      :application_type,
      :auth_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_service] = false unless options.key?(:is_service)
        super
      end
    end

    # @!attribute identifier
    #   <p>A unique identifier.</p>
    #   @return [String]
    class GetDataIntegrationRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the DataIntegration.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The KMS key ARN for the DataIntegration.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>The KMS key ARN for the DataIntegration.</p>
    #   @return [String]
    # @!attribute source_uri
    #   <p>The URI of the data source.</p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The name of the data and how often it should be pulled from the source.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute file_configuration
    #   <p>The configuration for what files should be pulled from the source.</p>
    #   @return [Types::FileConfiguration]
    # @!attribute object_configuration
    #   <p>The configuration for what data should be pulled from the source.</p>
    #   @return [Hash<String, Hash<String, Array<String>>>]
    class GetDataIntegrationResponse < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :description,
      :kms_key,
      :source_uri,
      :schedule_configuration,
      :tags,
      :file_configuration,
      :object_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration. </p>
    #   @return [String]
    class GetEventIntegrationRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event integration.</p>
    #   @return [String]
    # @!attribute event_integration_arn
    #   <p>The Amazon Resource Name (ARN) for the event integration.</p>
    #   @return [String]
    # @!attribute event_bridge_bus
    #   <p>The EventBridge bus.</p>
    #   @return [String]
    # @!attribute event_filter
    #   <p>The event filter.</p>
    #   @return [Types::EventFilter]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class GetEventIntegrationResponse < Struct.new(
      nil,
      :name,
      :description,
      :event_integration_arn,
      :event_bridge_bus,
      :event_filter,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The iframe configuration for the application.</p>
    # @!attribute allow
    #   <p>The list of features that are allowed in the iframe.</p>
    #   @return [Array<String>]
    # @!attribute sandbox
    #   <p>The list of sandbox attributes for the iframe.</p>
    #   @return [Array<String>]
    class IframeConfig < Struct.new(
      nil,
      :allow,
      :sandbox,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request processing failed due to an error or failure with the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not valid. </p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The execution status of the last job.</p>
    # @!attribute execution_status
    #   <p>The job status enum string.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of a job.</p>
    #   @return [String]
    class LastExecutionStatus < Struct.new(
      nil,
      :execution_status,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>A unique identifier for the Application.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListApplicationAssociationsRequest < Struct.new(
      nil,
      :application_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_associations
    #   <p>List of Application Associations for the Application.</p>
    #   @return [Array<Types::ApplicationAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListApplicationAssociationsResponse < Struct.new(
      nil,
      :application_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute application_type
    #   <p>The type of application.</p>
    #   @return [String]
    class ListApplicationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :application_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>The Applications associated with this account.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListApplicationsResponse < Struct.new(
      nil,
      :applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListDataIntegrationAssociationsRequest < Struct.new(
      nil,
      :data_integration_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_integration_associations
    #   <p>The Amazon Resource Name (ARN) and unique ID of the DataIntegration association.</p>
    #   @return [Array<Types::DataIntegrationAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListDataIntegrationAssociationsResponse < Struct.new(
      nil,
      :data_integration_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListDataIntegrationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_integrations
    #   <p>The DataIntegrations associated with this account.</p>
    #   @return [Array<Types::DataIntegrationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListDataIntegrationsResponse < Struct.new(
      nil,
      :data_integrations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_integration_name
    #   <p>The name of the event integration. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListEventIntegrationAssociationsRequest < Struct.new(
      nil,
      :event_integration_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_integration_associations
    #   <p>The event integration associations.</p>
    #   @return [Array<Types::EventIntegrationAssociation>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListEventIntegrationAssociationsResponse < Struct.new(
      nil,
      :event_integration_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListEventIntegrationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_integrations
    #   <p>The event integrations.</p>
    #   @return [Array<Types::EventIntegration>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListEventIntegrationsResponse < Struct.new(
      nil,
      :event_integrations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Information about the tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The start and end time for data pull from the source.</p>
    # @!attribute start_time
    #   <p>The start time for data pull from the source as an Unix/epoch string in
    #         milliseconds</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The end time for data pull from the source as an Unix/epoch string in
    #         milliseconds</p>
    #   @return [String]
    class OnDemandConfiguration < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an event that the application publishes.</p>
    # @!attribute event
    #   <p>The name of the publication.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The JSON schema of the publication event.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the publication.</p>
    #   @return [String]
    class Publication < Struct.new(
      nil,
      :event,
      :schema,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The allowed quota for the resource has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ResourceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the data and how often it should be pulled from the source.</p>
    # @!attribute first_execution_from
    #   <p>The start date for objects to import in the first flow run as an Unix/epoch timestamp in
    #         milliseconds or in ISO-8601 format.</p>
    #   @return [String]
    # @!attribute object
    #   <p>The name of the object to pull from the data source.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>How often the data should be pulled from data source.</p>
    #   @return [String]
    class ScheduleConfiguration < Struct.new(
      nil,
      :first_execution_from,
      :object,
      :schedule_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an event that the application subscribes.</p>
    # @!attribute event
    #   <p>The name of the subscription.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the subscription.</p>
    #   @return [String]
    class Subscription < Struct.new(
      nil,
      :event,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The throttling limit has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation is not supported.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute application_source_config
    #   <p>The configuration for where the application should be loaded from.</p>
    #   @return [Types::ApplicationSourceConfig]
    # @!attribute subscriptions
    #   <p>The events that the application subscribes.</p>
    #   @deprecated
    #     Subscriptions has been replaced with Permissions
    #   @return [Array<Types::Subscription>]
    # @!attribute publications
    #   <p>The events that the application publishes.</p>
    #   @deprecated
    #     Publications has been replaced with Permissions
    #   @return [Array<Types::Publication>]
    # @!attribute permissions
    #   <p>The configuration of events or requests that the application has access to.</p>
    #   @return [Array<String>]
    # @!attribute is_service
    #   <p>Indicates whether the application is a service.</p>
    #   @deprecated
    #     IsService has been deprecated in favor of ApplicationType
    #     Since: 2025-12-01
    #   @return [Boolean]
    # @!attribute initialization_timeout
    #   <p>The maximum time in milliseconds allowed to establish a connection with the workspace.</p>
    #   @return [Integer]
    # @!attribute application_config
    #   <p>The configuration settings for the application.</p>
    #   @return [Types::ApplicationConfig]
    # @!attribute iframe_config
    #   <p>The iframe configuration for the application.</p>
    #   @return [Types::IframeConfig]
    # @!attribute application_type
    #   <p>The type of application.</p>
    #   @return [String]
    # @!attribute auth_config
    #   <p>The authentication settings that Connect Customer uses when calling the external application.</p>
    #   @return [Types::AuthConfig]
    class UpdateApplicationRequest < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :application_source_config,
      :subscriptions,
      :publications,
      :permissions,
      :is_service,
      :initialization_timeout,
      :application_config,
      :iframe_config,
      :application_type,
      :auth_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateApplicationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #   @return [String]
    # @!attribute data_integration_association_identifier
    #   <p>A unique identifier. of the DataIntegrationAssociation resource</p>
    #   @return [String]
    # @!attribute execution_configuration
    #   <p>The configuration for how the files should be pulled from the source.</p>
    #   @return [Types::ExecutionConfiguration]
    class UpdateDataIntegrationAssociationRequest < Struct.new(
      nil,
      :data_integration_identifier,
      :data_integration_association_identifier,
      :execution_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDataIntegrationAssociationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the DataIntegration.</p>
    #   @return [String]
    class UpdateDataIntegrationRequest < Struct.new(
      nil,
      :identifier,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDataIntegrationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event integration.</p>
    #   @return [String]
    class UpdateEventIntegrationRequest < Struct.new(
      nil,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateEventIntegrationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
