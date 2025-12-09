# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTManagedIntegrations
  module Types

    # Structure representing one abort config criteria.
    #
    # @!attribute [rw] action
    #   The action taken by the abort configuration.
    #   @return [String]
    #
    # @!attribute [rw] failure_type
    #   Over-the-air (OTA) task abort criteria failure type.
    #   @return [String]
    #
    # @!attribute [rw] min_number_of_executed_things
    #   The minimum number of things that must receive task execution
    #   notifications before the task can be aborted.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold_percentage
    #   The minimum percentage of over-the-air (OTA) task execution failures
    #   that must occur to initiate the last abort.
    #   @return [Float]
    #
    class AbortConfigCriteria < Struct.new(
      :action,
      :failure_type,
      :min_number_of_executed_things,
      :threshold_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # User is not authorized.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure containing information about an account association,
    # including its identifier, state, and related metadata.
    #
    # @!attribute [rw] account_association_id
    #   The unique identifier of the account association.
    #   @return [String]
    #
    # @!attribute [rw] association_state
    #   The current state of the account association, indicating its status
    #   in the association lifecycle.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message explaining any issues with the account
    #   association, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] connector_destination_id
    #   The identifier of the connector destination associated with this
    #   account association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the account association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the account association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account association.
    #   @return [String]
    #
    class AccountAssociationItem < Struct.new(
      :account_association_id,
      :association_state,
      :error_message,
      :connector_destination_id,
      :name,
      :description,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authentication configuration details for a connector destination,
    # including OAuth settings and other authentication parameters.
    #
    # @!attribute [rw] o_auth
    #   The OAuth configuration settings used for authentication with the
    #   third-party service.
    #   @return [Types::OAuthConfig]
    #
    class AuthConfig < Struct.new(
      :o_auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated authentication configuration details for a connector
    # destination.
    #
    # @!attribute [rw] o_auth_update
    #   The updated OAuth configuration settings for the authentication
    #   configuration.
    #   @return [Types::OAuthUpdate]
    #
    class AuthConfigUpdate < Struct.new(
      :o_auth_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Action for an Amazon Web Services capability, containing the action
    # parameters for control.
    #
    # @!attribute [rw] name
    #   Describe a capability action with a name.
    #   @return [String]
    #
    # @!attribute [rw] ref
    #   Describe a capability action with an reference.
    #   @return [String]
    #
    # @!attribute [rw] action_trace_id
    #   Describe a capability action with an `actionTraceId` for a response
    #   command.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Describe a capability action with a capability property.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    class CapabilityAction < Struct.new(
      :name,
      :ref,
      :action_trace_id,
      :parameters)
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # Report of all capabilities supported by the device.
    #
    # @!attribute [rw] version
    #   The version of the capability report.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The numeric identifier of the node.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The endpoints used in the capability report.
    #   @return [Array<Types::CapabilityReportEndpoint>]
    #
    class CapabilityReport < Struct.new(
      :version,
      :node_id,
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # The capability used in capability report.
    #
    # @!attribute [rw] id
    #   The id of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the capability.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the capability.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The capability properties used in the capability report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] actions
    #   The capability actions used in the capability report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] events
    #   The capability events used in the capability report.
    #   @return [Array<String>]
    #
    class CapabilityReportCapability < Struct.new(
      :id,
      :name,
      :version,
      :properties,
      :actions,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint used in the capability report.
    #
    # @!attribute [rw] id
    #   The id of the endpoint used in the capability report.
    #   @return [String]
    #
    # @!attribute [rw] device_types
    #   The type of device.
    #   @return [Array<String>]
    #
    # @!attribute [rw] capabilities
    #   The capabilities used in the capability report.
    #   @return [Array<Types::CapabilityReportCapability>]
    #
    class CapabilityReportEndpoint < Struct.new(
      :id,
      :device_types,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing a capability schema item that defines the
    # functionality and features supported by a managed thing.
    #
    # @!attribute [rw] format
    #   The format of the capability schema, which defines how the schema is
    #   structured and interpreted.
    #   @return [String]
    #
    # @!attribute [rw] capability_id
    #   The unique identifier of the capability defined in the schema.
    #   @return [String]
    #
    # @!attribute [rw] extrinsic_id
    #   The external identifier for the capability, used when referencing
    #   the capability outside of the AWS ecosystem.
    #   @return [String]
    #
    # @!attribute [rw] extrinsic_version
    #   The version of the external capability definition, used to track
    #   compatibility with external systems.
    #   @return [Integer]
    #
    # @!attribute [rw] schema
    #   The actual schema definition that describes the capability's
    #   properties, actions, and events.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    class CapabilitySchemaItem < Struct.new(
      :format,
      :capability_id,
      :extrinsic_id,
      :extrinsic_version,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The command capabilities added for the managed thing
    #
    # @!attribute [rw] id
    #   Describe the capability with an id.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Describe the capability with an name.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Describe the capability with a version.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   Describe the command capability with the actions it supports.
    #   @return [Array<Types::CapabilityAction>]
    #
    class CommandCapability < Struct.new(
      :id,
      :name,
      :version,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint for a managed thing when sending a command.
    #
    # @!attribute [rw] endpoint_id
    #   The id of the endpoint for a managed thing.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   Describe the endpoint with an id, a name, and the relevant
    #   capabilities for sending commands.
    #   @return [Array<Types::CommandCapability>]
    #
    class CommandEndpoint < Struct.new(
      :endpoint_id,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the default encryption configuration error update details.
    #
    # @!attribute [rw] code
    #   The error code returned when the default encryption configuration
    #   update fails.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message returned when the default encryption configuration
    #   update fails.
    #   @return [String]
    #
    class ConfigurationError < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the status of the default encryption configuration for an
    # Amazon Web Services account.
    #
    # @!attribute [rw] error
    #   The error details describing a failed default encryption
    #   configuration update.
    #   @return [Types::ConfigurationError]
    #
    # @!attribute [rw] state
    #   The status state describing the default encryption configuration
    #   update.
    #   @return [String]
    #
    class ConfigurationStatus < Struct.new(
      :error,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is a conflict with the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure containing summary information about a connector
    # destination, which defines how a cloud-to-cloud connector connects to
    # a customer's AWS account.
    #
    # @!attribute [rw] name
    #   The display name of the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] cloud_connector_id
    #   The identifier of the cloud connector associated with this connector
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the connector destination.
    #   @return [String]
    #
    class ConnectorDestinationSummary < Struct.new(
      :name,
      :description,
      :cloud_connector_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure describing a connector.
    #
    # @!attribute [rw] name
    #   The display name of the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_config
    #   The configuration details for the cloud connector endpoint,
    #   including connection parameters and authentication requirements.
    #   @return [Types::EndpointConfig]
    #
    # @!attribute [rw] description
    #   A description of the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint used for the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of cloud connector created.
    #   @return [String]
    #
    class ConnectorItem < Struct.new(
      :name,
      :endpoint_config,
      :description,
      :endpoint_type,
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] connector_destination_id
    #   The identifier of the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the destination for the new account association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the account association request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the account
    #   association.
    #   @return [Hash<String,String>]
    #
    class CreateAccountAssociationRequest < Struct.new(
      :client_token,
      :connector_destination_id,
      :name,
      :description,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] o_auth_authorization_url
    #   Third-party IoT platform OAuth authorization server URL backed with
    #   all the required parameters to perform end-user authentication.
    #   @return [String]
    #
    # @!attribute [rw] account_association_id
    #   The identifier for the account association request.
    #   @return [String]
    #
    # @!attribute [rw] association_state
    #   The current state of the account association request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account association.
    #   @return [String]
    #
    class CreateAccountAssociationResponse < Struct.new(
      :o_auth_authorization_url,
      :account_association_id,
      :association_state,
      :arn)
      SENSITIVE = [:o_auth_authorization_url]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The display name of the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_config
    #   The configuration details for the cloud connector endpoint,
    #   including connection parameters and authentication requirements.
    #   @return [Types::EndpointConfig]
    #
    # @!attribute [rw] description
    #   A description of the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint used for the cloud connector, which defines how
    #   the connector communicates with external services.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateCloudConnectorRequest < Struct.new(
      :name,
      :endpoint_config,
      :description,
      :endpoint_type,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier assigned to the newly created cloud connector.
    #   @return [String]
    #
    class CreateCloudConnectorResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The display name of the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] cloud_connector_id
    #   The identifier of the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type used for the connector destination, which
    #   determines how credentials and access are managed.
    #   @return [String]
    #
    # @!attribute [rw] auth_config
    #   The authentication configuration details for the connector
    #   destination, including OAuth settings and other authentication
    #   parameters.
    #   @return [Types::AuthConfig]
    #
    # @!attribute [rw] secrets_manager
    #   The AWS Secrets Manager configuration used to securely store and
    #   manage sensitive information for the connector destination.
    #   @return [Types::SecretsManager]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateConnectorDestinationRequest < Struct.new(
      :name,
      :description,
      :cloud_connector_id,
      :auth_type,
      :auth_config,
      :secrets_manager,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the C2C connector destination creation request.
    #   @return [String]
    #
    class CreateConnectorDestinationResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the credential locker.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the credential
    #   locker.
    #   @return [Hash<String,String>]
    #
    class CreateCredentialLockerRequest < Struct.new(
      :name,
      :client_token,
      :tags)
      SENSITIVE = [:name, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the credential locker creation request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the credential locker.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the credential locker request occurred.
    #   @return [Time]
    #
    class CreateCredentialLockerResponse < Struct.new(
      :id,
      :arn,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_destination_arn
    #   The Amazon Resource Name (ARN) of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_type
    #   The destination type for the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the delivery destination role.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the destination.
    #   @return [Hash<String,String>]
    #
    class CreateDestinationRequest < Struct.new(
      :delivery_destination_arn,
      :delivery_destination_type,
      :name,
      :role_arn,
      :client_token,
      :description,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the customer-managed destination.
    #   @return [String]
    #
    class CreateDestinationResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The type of resource for the event log configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource for the event log configuration.
    #   @return [String]
    #
    # @!attribute [rw] event_log_level
    #   The logging level for the event log configuration.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateEventLogConfigurationRequest < Struct.new(
      :resource_type,
      :resource_id,
      :event_log_level,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the event log configuration request.
    #   @return [String]
    #
    class CreateEventLogConfigurationResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role
    #   The type of device used. This will be the hub controller, cloud
    #   device, or AWS IoT device.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Owner of the device, usually an indication of whom the device
    #   belongs to. This value should not contain personal identifiable
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] credential_locker_id
    #   The identifier of the credential for the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] authentication_material
    #   The authentication material defining the device connectivity setup
    #   requests. The authentication materials used are the device bar code.
    #   @return [String]
    #
    # @!attribute [rw] authentication_material_type
    #   The type of authentication material used for device connectivity
    #   setup requests.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the device.
    #   @return [String]
    #
    # @!attribute [rw] brand
    #   The brand of the device.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the device.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed thing representing the physical device.
    #   @return [String]
    #
    # @!attribute [rw] capability_report
    #   A report of the capabilities for the managed thing.
    #   @return [Types::CapabilityReport]
    #
    # @!attribute [rw] capability_schemas
    #   The capability schemas that define the functionality and features
    #   supported by the managed thing, including device capabilities and
    #   their associated properties.
    #   @return [Array<Types::CapabilitySchemaItem>]
    #
    # @!attribute [rw] capabilities
    #   The capabilities of the device such as light bulb.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   The classification of the managed thing such as light bulb or
    #   thermostat.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the managed thing.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] meta_data
    #   The metadata for the managed thing.
    #
    #   <note markdown="1"> The `managedThing` `metadata` parameter is used for associating
    #   attributes with a `managedThing` that can be used for grouping
    #   over-the-air (OTA) tasks. Name value pairs in `metadata` can be used
    #   in the `OtaTargetQueryString` parameter for the `CreateOtaTask` API
    #   operation.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    class CreateManagedThingRequest < Struct.new(
      :role,
      :owner,
      :credential_locker_id,
      :authentication_material,
      :authentication_material_type,
      :serial_number,
      :brand,
      :model,
      :name,
      :capability_report,
      :capability_schemas,
      :capabilities,
      :client_token,
      :classification,
      :tags,
      :meta_data)
      SENSITIVE = [:owner, :authentication_material, :serial_number, :brand, :model, :classification, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The id of the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the device creation request occurred.
    #   @return [Time]
    #
    class CreateManagedThingResponse < Struct.new(
      :id,
      :arn,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the destination for the notification configuration.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the notification
    #   configuration.
    #   @return [Hash<String,String>]
    #
    class CreateNotificationConfigurationRequest < Struct.new(
      :event_type,
      :destination_name,
      :client_token,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #   @return [String]
    #
    class CreateNotificationConfigurationResponse < Struct.new(
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] push_config
    #   Describes the type of configuration used for the over-the-air (OTA)
    #   task.
    #   @return [Types::PushConfig]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateOtaTaskConfigurationRequest < Struct.new(
      :description,
      :name,
      :push_config,
      :client_token)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] task_configuration_id
    #   The identifier of the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    class CreateOtaTaskConfigurationResponse < Struct.new(
      :task_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   The URL to the Amazon S3 bucket where the over-the-air (OTA) task is
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The connection protocol the over-the-air (OTA) task uses to update
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The device targeted for the over-the-air (OTA) task.
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_configuration_id
    #   The identifier for the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    # @!attribute [rw] ota_mechanism
    #   The deployment mechanism for the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] ota_type
    #   The frequency type for the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] ota_target_query_string
    #   The query string to add things to the thing group.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] ota_scheduling_config
    #   Over-the-air (OTA) task scheduling config.
    #   @return [Types::OtaTaskSchedulingConfig]
    #
    # @!attribute [rw] ota_task_execution_retry_config
    #   Over-the-air (OTA) task retry config.
    #   @return [Types::OtaTaskExecutionRetryConfig]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the over-the-air
    #   (OTA) task.
    #   @return [Hash<String,String>]
    #
    class CreateOtaTaskRequest < Struct.new(
      :description,
      :s3_url,
      :protocol,
      :target,
      :task_configuration_id,
      :ota_mechanism,
      :ota_type,
      :ota_target_query_string,
      :client_token,
      :ota_scheduling_config,
      :ota_task_execution_retry_config,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The identifier of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the over-the-air (OTA) task.
    #   @return [String]
    #
    class CreateOtaTaskResponse < Struct.new(
      :task_id,
      :task_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provisioning_type
    #   The type of provisioning workflow the device uses for onboarding to
    #   IoT managed integrations.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate
    #   The id of the certificate authority (CA) certificate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the provisioning
    #   profile.
    #   @return [Hash<String,String>]
    #
    class CreateProvisioningProfileRequest < Struct.new(
      :provisioning_type,
      :ca_certificate,
      :name,
      :client_token,
      :tags)
      SENSITIVE = [:ca_certificate, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the provisioning template used in
    #   the provisioning profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_type
    #   The type of provisioning workflow the device uses for onboarding to
    #   IoT managed integrations.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the provisioning profile.
    #   @return [String]
    #
    # @!attribute [rw] claim_certificate
    #   The id of the claim certificate.
    #   @return [String]
    #
    # @!attribute [rw] claim_certificate_private_key
    #   The private key of the claim certificate. This is stored securely on
    #   the device for validating the connection endpoint with IoT managed
    #   integrations using the public key.
    #   @return [String]
    #
    class CreateProvisioningProfileResponse < Struct.new(
      :arn,
      :name,
      :provisioning_type,
      :id,
      :claim_certificate,
      :claim_certificate_private_key)
      SENSITIVE = [:claim_certificate, :claim_certificate_private_key]
      include Aws::Structure
    end

    # Structure describing one Credential Locker.
    #
    # @!attribute [rw] id
    #   The id of the credential locker.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the credential locker.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the credential locker.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestampe value of when the credential locker was created at.
    #   @return [Time]
    #
    class CredentialLockerSummary < Struct.new(
      :id,
      :arn,
      :name,
      :created_at)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] account_association_id
    #   The unique identifier of the account association to be deleted.
    #   @return [String]
    #
    class DeleteAccountAssociationRequest < Struct.new(
      :account_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the cloud connector.
    #   @return [String]
    #
    class DeleteCloudConnectorRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the connector destination.
    #   @return [String]
    #
    class DeleteConnectorDestinationRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the credential locker.
    #   @return [String]
    #
    class DeleteCredentialLockerRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The id of the customer-managed destination.
    #   @return [String]
    #
    class DeleteDestinationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the event log configuration.
    #   @return [String]
    #
    class DeleteEventLogConfigurationRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The id of the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   When set to `TRUE`, a forceful deteletion of the managed thing will
    #   occur. When set to `FALSE`, a non-forceful deletion of the managed
    #   thing will occur.
    #   @return [Boolean]
    #
    class DeleteManagedThingRequest < Struct.new(
      :identifier,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #   @return [String]
    #
    class DeleteNotificationConfigurationRequest < Struct.new(
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    class DeleteOtaTaskConfigurationRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the over-the-air (OTA) task.
    #   @return [String]
    #
    class DeleteOtaTaskRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The name of the provisioning template.
    #   @return [String]
    #
    class DeleteProvisioningProfileRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request for deregister a managed thing from account association
    #
    # @!attribute [rw] managed_thing_id
    #   The identifier of the managed thing to be deregistered from the
    #   account association.
    #   @return [String]
    #
    # @!attribute [rw] account_association_id
    #   The unique identifier of the account association to be deregistered.
    #   @return [String]
    #
    class DeregisterAccountAssociationRequest < Struct.new(
      :managed_thing_id,
      :account_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure describing a destination for IoT managed integrations to
    # deliver notifications for a device.
    #
    # @!attribute [rw] description
    #   The description of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_arn
    #   The Amazon Resource Name (ARN) of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_type
    #   The destination type for the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the delivery destination.
    #   @return [String]
    #
    class DestinationSummary < Struct.new(
      :description,
      :delivery_destination_arn,
      :delivery_destination_type,
      :name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describe the device using the relevant metadata and supported clusters
    # for device discovery.
    #
    # @!attribute [rw] connector_device_id
    #   The device id as defined by the connector.
    #
    #   <note markdown="1"> This parameter is used for cloud-to-cloud devices only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] connector_device_name
    #   The name of the device as defined by the connector.
    #   @return [String]
    #
    # @!attribute [rw] capability_report
    #   The capability report for the device.
    #   @return [Types::MatterCapabilityReport]
    #
    # @!attribute [rw] capability_schemas
    #   Report of all capabilities supported by the device.
    #   @return [Array<Types::CapabilitySchemaItem>]
    #
    # @!attribute [rw] device_metadata
    #   The metadata attributes for a device.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    class Device < Struct.new(
      :connector_device_id,
      :connector_device_name,
      :capability_report,
      :capability_schemas,
      :device_metadata)
      SENSITIVE = [:connector_device_id, :connector_device_name]
      include Aws::Structure
    end

    # Structure containing summary information about a device discovery job,
    # including its identifier, type, and status.
    #
    # @!attribute [rw] id
    #   The unique identifier of the device discovery job.
    #   @return [String]
    #
    # @!attribute [rw] discovery_type
    #   The type of discovery process used to find devices.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the device discovery job.
    #   @return [String]
    #
    class DeviceDiscoverySummary < Struct.new(
      :id,
      :discovery_type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure containing summary information about a device discovered
    # during a device discovery job.
    #
    # @!attribute [rw] connector_device_id
    #   The third-party device identifier as defined by the connector. This
    #   identifier must not contain personal identifiable information (PII).
    #   @return [String]
    #
    # @!attribute [rw] connector_device_name
    #   The name of the device as defined by the connector or third-party
    #   system.
    #   @return [String]
    #
    # @!attribute [rw] device_types
    #   The list of device types or categories that the discovered device
    #   belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] managed_thing_id
    #   The identifier of the managed thing created for this discovered
    #   device, if one exists.
    #   @return [String]
    #
    # @!attribute [rw] modification
    #   The status of the discovered device, indicating whether it has been
    #   added, removed, or modified since the last discovery.
    #   @return [String]
    #
    # @!attribute [rw] discovered_at
    #   The timestamp indicating when the device was discovered.
    #   @return [Time]
    #
    # @!attribute [rw] brand
    #   The brand of the discovered device.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the discovered device.
    #   @return [String]
    #
    # @!attribute [rw] authentication_material
    #   The authentication material required for connecting to the
    #   discovered device, such as credentials or tokens.
    #   @return [String]
    #
    class DiscoveredDeviceSummary < Struct.new(
      :connector_device_id,
      :connector_device_name,
      :device_types,
      :managed_thing_id,
      :modification,
      :discovered_at,
      :brand,
      :model,
      :authentication_material)
      SENSITIVE = [:connector_device_id, :connector_device_name, :brand, :model, :authentication_material]
      include Aws::Structure
    end

    # The configuration details for an endpoint, which defines how to
    # connect to and communicate with external services.
    #
    # @!attribute [rw] lambda
    #   The Lambda function configuration for the endpoint, used when the
    #   endpoint communicates through an AWS Lambda function.
    #   @return [Types::LambdaConfig]
    #
    class EndpointConfig < Struct.new(
      :lambda)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of event log configurations.
    #
    # @!attribute [rw] id
    #   The identifier of the event log configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource for the event log configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource for the event log configuration.
    #   @return [String]
    #
    # @!attribute [rw] event_log_level
    #   The logging level for the event log configuration.
    #   @return [String]
    #
    class EventLogConfigurationSummary < Struct.new(
      :id,
      :resource_type,
      :resource_id,
      :event_log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing exponential rate of rollout for an over-the-air
    # (OTA) task.
    #
    # @!attribute [rw] base_rate_per_minute
    #   The base rate per minute for the rollout of an over-the-air (OTA)
    #   task.
    #   @return [Integer]
    #
    # @!attribute [rw] increment_factor
    #   The incremental factor for increasing the rollout rate of an
    #   over-the-air (OTA) task.
    #   @return [Float]
    #
    # @!attribute [rw] rate_increase_criteria
    #   The criteria for increasing the rollout rate of an over-the-air
    #   (OTA) task.
    #   @return [Types::RolloutRateIncreaseCriteria]
    #
    class ExponentialRolloutRate < Struct.new(
      :base_rate_per_minute,
      :increment_factor,
      :rate_increase_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_association_id
    #   The unique identifier of the account association to retrieve.
    #   @return [String]
    #
    class GetAccountAssociationRequest < Struct.new(
      :account_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_association_id
    #   The unique identifier of the retrieved account association.
    #   @return [String]
    #
    # @!attribute [rw] association_state
    #   The current status state for the account association.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message explaining the current account association error.
    #   @return [String]
    #
    # @!attribute [rw] connector_destination_id
    #   The identifier of the connector destination associated with this
    #   account association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the account association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the account association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account association.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_authorization_url
    #   Third party IoT platform OAuth authorization server URL backed with
    #   all the required parameters to perform end-user authentication.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the account
    #   association.
    #   @return [Hash<String,String>]
    #
    class GetAccountAssociationResponse < Struct.new(
      :account_association_id,
      :association_state,
      :error_message,
      :connector_destination_id,
      :name,
      :description,
      :arn,
      :o_auth_authorization_url,
      :tags)
      SENSITIVE = [:o_auth_authorization_url, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the C2C connector.
    #   @return [String]
    #
    class GetCloudConnectorRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The display name of the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_config
    #   The configuration details for the cloud connector endpoint,
    #   including connection parameters and authentication requirements.
    #   @return [Types::EndpointConfig]
    #
    # @!attribute [rw] description
    #   A description of the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint used for the cloud connector, which defines how
    #   the connector communicates with external services.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the cloud connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of cloud connector created.
    #   @return [String]
    #
    class GetCloudConnectorResponse < Struct.new(
      :name,
      :endpoint_config,
      :description,
      :endpoint_type,
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the C2C connector destination.
    #   @return [String]
    #
    class GetConnectorDestinationRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The display name of the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] cloud_connector_id
    #   The identifier of the C2C connector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type used for the connector destination, which
    #   determines how credentials and access are managed.
    #   @return [String]
    #
    # @!attribute [rw] auth_config
    #   The authentication configuration details for the connector
    #   destination, including OAuth settings and other authentication
    #   parameters.
    #   @return [Types::AuthConfig]
    #
    # @!attribute [rw] secrets_manager
    #   The AWS Secrets Manager configuration used to securely store and
    #   manage sensitive information for the connector destination.
    #   @return [Types::SecretsManager]
    #
    # @!attribute [rw] o_auth_complete_redirect_url
    #   The URL where users are redirected after completing the OAuth
    #   authorization process for the connector destination.
    #   @return [String]
    #
    class GetConnectorDestinationResponse < Struct.new(
      :name,
      :description,
      :cloud_connector_id,
      :id,
      :auth_type,
      :auth_config,
      :secrets_manager,
      :o_auth_complete_redirect_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the credential locker.
    #   @return [String]
    #
    class GetCredentialLockerRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the credential locker.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the credential locker.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the credential locker.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the credential locker requset occurred.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the credential
    #   locker.
    #   @return [Hash<String,String>]
    #
    class GetCredentialLockerResponse < Struct.new(
      :id,
      :arn,
      :name,
      :created_at,
      :tags)
      SENSITIVE = [:name, :tags]
      include Aws::Structure
    end

    # @api private
    #
    class GetCustomEndpointRequest < Aws::EmptyStructure; end

    # @!attribute [rw] endpoint_address
    #   The IoT managed integrations dedicated, custom endpoint for the
    #   device to route traffic through.
    #   @return [String]
    #
    class GetCustomEndpointResponse < Struct.new(
      :endpoint_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetDefaultEncryptionConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] configuration_status
    #   Provides the status of the default encryption configuration for an
    #   Amazon Web Services account.
    #   @return [Types::ConfigurationStatus]
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption used for the encryption configuration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS
    #   encryption if you use `KMS_BASED_ENCRYPTION`.
    #   @return [String]
    #
    class GetDefaultEncryptionConfigurationResponse < Struct.new(
      :configuration_status,
      :encryption_type,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the customer-managed destination.
    #   @return [String]
    #
    class GetDestinationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_arn
    #   The Amazon Resource Name (ARN) of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_type
    #   The destination type for the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the delivery destination role.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the destination creation requset
    #   occurred.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp value of when the destination update requset occurred.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the
    #   customer-managed destination.
    #   @return [Hash<String,String>]
    #
    class GetDestinationResponse < Struct.new(
      :description,
      :delivery_destination_arn,
      :delivery_destination_type,
      :name,
      :role_arn,
      :created_at,
      :updated_at,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The id of the device discovery job request.
    #   @return [String]
    #
    class GetDeviceDiscoveryRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The id of the device discovery job request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the device discovery job request.
    #   @return [String]
    #
    # @!attribute [rw] discovery_type
    #   The discovery type supporting the type of device to be discovered in
    #   the device discovery job request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the device discovery job request.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp value for the start time of the device discovery.
    #   @return [Time]
    #
    # @!attribute [rw] controller_id
    #   The id of the end-user's IoT hub.
    #   @return [String]
    #
    # @!attribute [rw] connector_association_id
    #   The ID tracking the current discovery process for one connector
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] account_association_id
    #   The identifier of the account association used for the device
    #   discovery.
    #   @return [String]
    #
    # @!attribute [rw] finished_at
    #   The timestamp value for the completion time of the device discovery.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the device
    #   discovery request.
    #   @return [Hash<String,String>]
    #
    class GetDeviceDiscoveryResponse < Struct.new(
      :id,
      :arn,
      :discovery_type,
      :status,
      :started_at,
      :controller_id,
      :connector_association_id,
      :account_association_id,
      :finished_at,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the event log configuration.
    #   @return [String]
    #
    class GetEventLogConfigurationRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the event log configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource for the event log configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource for the event log configuration.
    #   @return [String]
    #
    # @!attribute [rw] event_log_level
    #   The logging level for the event log configuration.
    #   @return [String]
    #
    class GetEventLogConfigurationResponse < Struct.new(
      :id,
      :resource_type,
      :resource_id,
      :event_log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetHubConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] hub_token_timer_expiry_setting_in_seconds
    #   A user-defined integer value that represents the hub token timer
    #   expiry setting in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] updated_at
    #   The timestamp value of when the hub configuration was updated.
    #   @return [Time]
    #
    class GetHubConfigurationResponse < Struct.new(
      :hub_token_timer_expiry_setting_in_seconds,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The id of the device.
    #   @return [String]
    #
    class GetManagedThingCapabilitiesRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The id of the device.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The capabilities of the device such as light bulb.
    #   @return [String]
    #
    # @!attribute [rw] capability_report
    #   A report of the capabilities for the managed thing.
    #   @return [Types::CapabilityReport]
    #
    class GetManagedThingCapabilitiesResponse < Struct.new(
      :managed_thing_id,
      :capabilities,
      :capability_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the managed thing.
    #   @return [String]
    #
    class GetManagedThingCertificateRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The identifier of the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] certificate_pem
    #   The PEM-encoded certificate for the managed thing.
    #   @return [String]
    #
    class GetManagedThingCertificateResponse < Struct.new(
      :managed_thing_id,
      :certificate_pem)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of a managed thing.
    #   @return [String]
    #
    class GetManagedThingConnectivityDataRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The id of a managed thing.
    #   @return [String]
    #
    # @!attribute [rw] connected
    #   The connectivity status for a managed thing.
    #   @return [Boolean]
    #
    # @!attribute [rw] timestamp
    #   The timestamp value of when the connectivity status for a managed
    #   thing was last taken.
    #   @return [Time]
    #
    # @!attribute [rw] disconnect_reason
    #   The reason for the connectivity disconnect with the managed thing.
    #   @return [String]
    #
    class GetManagedThingConnectivityDataResponse < Struct.new(
      :managed_thing_id,
      :connected,
      :timestamp,
      :disconnect_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The managed thing id.
    #   @return [String]
    #
    class GetManagedThingMetaDataRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The managed thing id.
    #   @return [String]
    #
    # @!attribute [rw] meta_data
    #   The metadata for the managed thing.
    #   @return [Hash<String,String>]
    #
    class GetManagedThingMetaDataResponse < Struct.new(
      :managed_thing_id,
      :meta_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The id of the managed thing.
    #   @return [String]
    #
    class GetManagedThingRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The id of the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Owner of the device, usually an indication of whom the device
    #   belongs to. This value should not contain personal identifiable
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] credential_locker_id
    #   The identifier of the credential locker for the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] advertised_product_id
    #   The id of the advertised product.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The type of device used. This will be the Amazon Web Services hub
    #   controller, cloud device, or IoT device.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_status
    #   The provisioning status of the device in the provisioning workflow
    #   for onboarding to IoT managed integrations.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed thing representing the physical device.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the device.
    #   @return [String]
    #
    # @!attribute [rw] brand
    #   The brand of the device.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the device.
    #   @return [String]
    #
    # @!attribute [rw] universal_product_code
    #   The universal product code (UPC) of the device model. The UPC is
    #   typically used in the United States of America and Canada.
    #   @return [String]
    #
    # @!attribute [rw] international_article_number
    #   The unique 13 digit number that identifies the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] connector_policy_id
    #   The id of the connector policy.
    #
    #   <note markdown="1"> This parameter is used for cloud-to-cloud devices only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] connector_destination_id
    #   The identifier of the connector destination associated with this
    #   managed thing.
    #   @return [String]
    #
    # @!attribute [rw] connector_device_id
    #   The third-party device id as defined by the connector. This device
    #   id must not contain personal identifiable information (PII).
    #
    #   <note markdown="1"> This parameter is used for cloud-to-cloud devices only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] device_specific_key
    #   A Zwave device-specific key used during device activation.
    #
    #   <note markdown="1"> This parameter is used for Zwave devices only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The media access control (MAC) address for the device represented by
    #   the managed thing.
    #
    #   <note markdown="1"> This parameter is used for Zigbee devices only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parent_controller_id
    #   Id of the controller device used for the discovery job.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   The classification of the managed thing such as light bulb or
    #   thermostat.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the device creation request occurred.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp value of when the managed thing was last updated at.
    #   @return [Time]
    #
    # @!attribute [rw] activated_at
    #   The timestampe value of when the device was activated.
    #   @return [Time]
    #
    # @!attribute [rw] hub_network_mode
    #   The network mode for the hub-connected device.
    #   @return [String]
    #
    # @!attribute [rw] meta_data
    #   The metadata for the managed thing.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the managed thing.
    #   @return [Hash<String,String>]
    #
    class GetManagedThingResponse < Struct.new(
      :id,
      :arn,
      :owner,
      :credential_locker_id,
      :advertised_product_id,
      :role,
      :provisioning_status,
      :name,
      :model,
      :brand,
      :serial_number,
      :universal_product_code,
      :international_article_number,
      :connector_policy_id,
      :connector_destination_id,
      :connector_device_id,
      :device_specific_key,
      :mac_address,
      :parent_controller_id,
      :classification,
      :created_at,
      :updated_at,
      :activated_at,
      :hub_network_mode,
      :meta_data,
      :tags)
      SENSITIVE = [:owner, :model, :brand, :serial_number, :universal_product_code, :international_article_number, :connector_device_id, :device_specific_key, :mac_address, :classification, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The id of the device.
    #   @return [String]
    #
    class GetManagedThingStateRequest < Struct.new(
      :managed_thing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoints
    #   The device endpoint.
    #   @return [Array<Types::StateEndpoint>]
    #
    class GetManagedThingStateResponse < Struct.new(
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #   @return [String]
    #
    class GetNotificationConfigurationRequest < Struct.new(
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the destination for the notification configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the notification configuration was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp value of when the notification configuration was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the notification
    #   configuration.
    #   @return [Hash<String,String>]
    #
    class GetNotificationConfigurationResponse < Struct.new(
      :event_type,
      :destination_name,
      :created_at,
      :updated_at,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The over-the-air (OTA) task configuration id.
    #   @return [String]
    #
    class GetOtaTaskConfigurationRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_configuration_id
    #   The over-the-air (OTA) task configuration id.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    # @!attribute [rw] push_config
    #   Describes the type of configuration used for the over-the-air (OTA)
    #   task.
    #   @return [Types::PushConfig]
    #
    # @!attribute [rw] description
    #   A description of the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the over-the-air (OTA) task
    #   configuration was created at.
    #   @return [Time]
    #
    class GetOtaTaskConfigurationResponse < Struct.new(
      :task_configuration_id,
      :name,
      :push_config,
      :description,
      :created_at)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The over-the-air (OTA) task id.
    #   @return [String]
    #
    class GetOtaTaskRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The id of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the over-the-air (OTA) task
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   The URL to the Amazon S3 bucket where the over-the-air (OTA) task is
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The connection protocol the over-the-air (OTA) task uses to update
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] ota_type
    #   The frequency type for the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] ota_target_query_string
    #   The query string to add things to the thing group.
    #   @return [String]
    #
    # @!attribute [rw] ota_mechanism
    #   The deployment mechanism for the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The device targeted for the over-the-air (OTA) task.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the over-the-air (OTA) task was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp value of when the over-the-air (OTA) task was last
    #   updated at.
    #   @return [Time]
    #
    # @!attribute [rw] task_configuration_id
    #   The identifier for the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    # @!attribute [rw] task_processing_details
    #   The processing details of all over-the-air (OTA) tasks.
    #   @return [Types::TaskProcessingDetails]
    #
    # @!attribute [rw] ota_scheduling_config
    #   Over-the-air (OTA) task scheduling config.
    #   @return [Types::OtaTaskSchedulingConfig]
    #
    # @!attribute [rw] ota_task_execution_retry_config
    #   Over-the-air (OTA) task retry config.
    #   @return [Types::OtaTaskExecutionRetryConfig]
    #
    # @!attribute [rw] status
    #   The status of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the over-the-air
    #   (OTA) task.
    #   @return [Hash<String,String>]
    #
    class GetOtaTaskResponse < Struct.new(
      :task_id,
      :task_arn,
      :description,
      :s3_url,
      :protocol,
      :ota_type,
      :ota_target_query_string,
      :ota_mechanism,
      :target,
      :created_at,
      :last_updated_at,
      :task_configuration_id,
      :task_processing_details,
      :ota_scheduling_config,
      :ota_task_execution_retry_config,
      :status,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The provisioning template the device uses for the provisioning
    #   process.
    #   @return [String]
    #
    class GetProvisioningProfileRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the provisioning template used in
    #   the provisioning profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_type
    #   The type of provisioning workflow the device uses for onboarding to
    #   IoT managed integrations.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The provisioning profile id.
    #   @return [String]
    #
    # @!attribute [rw] claim_certificate
    #   The id of the claim certificate.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the provisioning
    #   profile.
    #   @return [Hash<String,String>]
    #
    class GetProvisioningProfileResponse < Struct.new(
      :arn,
      :name,
      :provisioning_type,
      :id,
      :claim_certificate,
      :tags)
      SENSITIVE = [:claim_certificate, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The id for a managed thing.
    #   @return [String]
    #
    class GetRuntimeLogConfigurationRequest < Struct.new(
      :managed_thing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The id for a managed thing.
    #   @return [String]
    #
    # @!attribute [rw] runtime_log_configurations
    #   The runtime log configuration for a managed thing.
    #   @return [Types::RuntimeLogConfigurations]
    #
    class GetRuntimeLogConfigurationResponse < Struct.new(
      :managed_thing_id,
      :runtime_log_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The type of schema version.
    #   @return [String]
    #
    # @!attribute [rw] schema_versioned_id
    #   Schema id with a version specified. If the version is missing, it
    #   defaults to latest version.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the schema version.
    #   @return [String]
    #
    class GetSchemaVersionRequest < Struct.new(
      :type,
      :schema_versioned_id,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   The id of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of schema version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The schema version. If this is left blank, it defaults to the latest
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema of the schema version.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    class GetSchemaVersionResponse < Struct.new(
      :schema_id,
      :type,
      :description,
      :namespace,
      :semantic_version,
      :visibility,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal error from the service that indicates an unexpected error or
    # that the service is unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details for an AWS Lambda function used as an endpoint
    # for a cloud connector.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Lambda function used as an
    #   endpoint.
    #   @return [String]
    #
    class LambdaConfig < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds a service limit or quota. Adjust your request
    # parameters and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_destination_id
    #   The identifier of the connector destination to filter account
    #   associations by.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of account associations to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results.
    #   @return [String]
    #
    class ListAccountAssociationsRequest < Struct.new(
      :connector_destination_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of account associations that match the specified criteria.
    #   @return [Array<Types::AccountAssociationItem>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results when there are more account
    #   associations than can be returned in a single response.
    #   @return [String]
    #
    class ListAccountAssociationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The type of cloud connectors to filter by when listing available
    #   connectors.
    #   @return [String]
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function to filter
    #   cloud connectors by.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListCloudConnectorsRequest < Struct.new(
      :type,
      :lambda_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of connectors.
    #   @return [Array<Types::ConnectorItem>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListCloudConnectorsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_connector_id
    #   The identifier of the cloud connector to filter connector
    #   destinations by.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of connector destinations to return in a single
    #   response.
    #   @return [Integer]
    #
    class ListConnectorDestinationsRequest < Struct.new(
      :cloud_connector_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_destination_list
    #   The list of connector destinations that match the specified
    #   criteria.
    #   @return [Array<Types::ConnectorDestinationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results when there are more connector
    #   destinations than can be returned in a single response.
    #   @return [String]
    #
    class ListConnectorDestinationsResponse < Struct.new(
      :connector_destination_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListCredentialLockersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of credential lockers.
    #   @return [Array<Types::CredentialLockerSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListCredentialLockersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListDestinationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_list
    #   The list of destinations.
    #   @return [Array<Types::DestinationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListDestinationsResponse < Struct.new(
      :destination_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token used for pagination of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of device discovery jobs to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] type_filter
    #   The discovery type to filter device discovery jobs by.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   The status to filter device discovery jobs by.
    #   @return [String]
    #
    class ListDeviceDiscoveriesRequest < Struct.new(
      :next_token,
      :max_results,
      :type_filter,
      :status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of device discovery jobs that match the specified criteria.
    #   @return [Array<Types::DeviceDiscoverySummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results when there are more device
    #   discovery jobs than can be returned in a single response.
    #   @return [String]
    #
    class ListDeviceDiscoveriesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the device discovery job to list discovered
    #   devices for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of discovered devices to return in a single
    #   response.
    #   @return [Integer]
    #
    class ListDiscoveredDevicesRequest < Struct.new(
      :identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of discovered devices that match the specified criteria.
    #   @return [Array<Types::DiscoveredDeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results when there are more
    #   discovered devices than can be returned in a single response.
    #   @return [String]
    #
    class ListDiscoveredDevicesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListEventLogConfigurationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_log_configuration_list
    #   A list of each event log configuration and pertinent information.
    #   @return [Array<Types::EventLogConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListEventLogConfigurationsResponse < Struct.new(
      :event_log_configuration_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The identifier of the managed thing to list account associations
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] account_association_id
    #   The identifier of the account association to filter results by. When
    #   specified, only associations with this account association ID will
    #   be returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of account associations to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results.
    #   @return [String]
    #
    class ListManagedThingAccountAssociationsRequest < Struct.new(
      :managed_thing_id,
      :account_association_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of managed thing associations that match the specified
    #   criteria, including the managed thing ID and account association ID
    #   for each association.
    #   @return [Array<Types::ManagedThingAssociation>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results when there are more account
    #   associations than can be returned in a single response.
    #   @return [String]
    #
    class ListManagedThingAccountAssociationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The managed thing id.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id_filter
    #   Filter on an endpoint id.
    #   @return [String]
    #
    # @!attribute [rw] capability_id_filter
    #   Filter on a capability id.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListManagedThingSchemasRequest < Struct.new(
      :identifier,
      :endpoint_id_filter,
      :capability_id_filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of managed thing schemas.
    #   @return [Array<Types::ManagedThingSchemaListItem>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListManagedThingSchemasResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] owner_filter
    #   Filter on device owners when listing managed things.
    #   @return [String]
    #
    # @!attribute [rw] credential_locker_filter
    #   Filter on a credential locker for a managed thing.
    #   @return [String]
    #
    # @!attribute [rw] role_filter
    #   Filter on the type of device used. This will be the Amazon Web
    #   Services hub controller, cloud device, or IoT device.
    #   @return [String]
    #
    # @!attribute [rw] parent_controller_identifier_filter
    #   Filter on a parent controller id for a managed thing.
    #   @return [String]
    #
    # @!attribute [rw] connector_policy_id_filter
    #   Filter on a connector policy id for a managed thing.
    #   @return [String]
    #
    # @!attribute [rw] connector_destination_id_filter
    #   Filter managed things by the connector destination ID they are
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] connector_device_id_filter
    #   Filter managed things by the connector device ID they are associated
    #   with. When specified, only managed things with this connector device
    #   ID will be returned.
    #   @return [String]
    #
    # @!attribute [rw] serial_number_filter
    #   Filter on the serial number of the device.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_status_filter
    #   Filter on the status of the device.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListManagedThingsRequest < Struct.new(
      :owner_filter,
      :credential_locker_filter,
      :role_filter,
      :parent_controller_identifier_filter,
      :connector_policy_id_filter,
      :connector_destination_id_filter,
      :connector_device_id_filter,
      :serial_number_filter,
      :provisioning_status_filter,
      :next_token,
      :max_results)
      SENSITIVE = [:owner_filter, :connector_device_id_filter, :serial_number_filter]
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of managed things.
    #   @return [Array<Types::ManagedThingSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListManagedThingsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListNotificationConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_configuration_list
    #   The list of notification configurations.
    #   @return [Array<Types::NotificationConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListNotificationConfigurationsResponse < Struct.new(
      :notification_configuration_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListOtaTaskConfigurationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of the over-the-air (OTA) task configurations.
    #   @return [Array<Types::OtaTaskConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListOtaTaskConfigurationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The over-the-air (OTA) task id.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListOtaTaskExecutionsRequest < Struct.new(
      :identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_summaries
    #   A list of all of the over-the-air (OTA) task executions.
    #   @return [Array<Types::OtaTaskExecutionSummaries>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListOtaTaskExecutionsResponse < Struct.new(
      :execution_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListOtaTasksRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   A list of all of the over-the-air (OTA) tasks.
    #   @return [Array<Types::OtaTaskSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListOtaTasksResponse < Struct.new(
      :tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListProvisioningProfilesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of provisioning profiles.
    #   @return [Array<Types::ProvisioningProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListProvisioningProfilesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   Filter on the type of schema version.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] schema_id
    #   Filter on the id of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   Filter on the name of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The schema version. If this is left blank, it defaults to the latest
    #   version.
    #   @return [String]
    #
    class ListSchemaVersionsRequest < Struct.new(
      :type,
      :max_results,
      :next_token,
      :schema_id,
      :namespace,
      :visibility,
      :semantic_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of schema versions.
    #   @return [Array<Types::SchemaVersionListItem>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results.
    #   @return [String]
    #
    class ListSchemaVersionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which to list tags.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the resource.
    #   @return [Hash<String,String>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Structure representing an association between a managed thing and an
    # account association, which connects a device to a third-party account.
    #
    # @!attribute [rw] managed_thing_id
    #   The identifier of the managed thing in the association.
    #   @return [String]
    #
    # @!attribute [rw] account_association_id
    #   The identifier of the account association in the association.
    #   @return [String]
    #
    class ManagedThingAssociation < Struct.new(
      :managed_thing_id,
      :account_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing one schema item associated with a managed
    # thing.
    #
    # @!attribute [rw] endpoint_id
    #   The id of the endpoint for a managed thing.
    #   @return [String]
    #
    # @!attribute [rw] capability_id
    #   The id of the capability for a managed thing.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The validation schema for one schema item associated with a managed
    #   thing.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    class ManagedThingSchemaListItem < Struct.new(
      :endpoint_id,
      :capability_id,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing one managed thing.
    #
    # @!attribute [rw] id
    #   The id of the device.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] advertised_product_id
    #   The id of the advertised product.
    #   @return [String]
    #
    # @!attribute [rw] brand
    #   The brand of the device.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   The classification of the managed thing such as light bulb or
    #   thermostat.
    #   @return [String]
    #
    # @!attribute [rw] connector_device_id
    #   The third-party device id as defined by the connector. This device
    #   id must not contain personal identifiable information (PII).
    #
    #   <note markdown="1"> This parameter is used for cloud-to-cloud devices only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] connector_policy_id
    #   The id of the connector policy.
    #
    #   <note markdown="1"> This parameter is used for cloud-to-cloud devices only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] connector_destination_id
    #   The identifier of the connector destination associated with this
    #   managed thing, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the device.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed thing representing the physical device.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Owner of the device, usually an indication of whom the device
    #   belongs to. This value should not contain personal identifiable
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] credential_locker_id
    #   The identifier of the credential locker for the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] parent_controller_id
    #   Id of the controller device used for the discovery job.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_status
    #   The provisioning status of the device in the provisioning workflow
    #   for onboarding to IoT managed integrations.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The type of device used. This will be the Amazon Web Services hub
    #   controller, cloud device, or IoT device.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the device.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the device creation request occurred.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp value of when the managed thing was last updated at.
    #   @return [Time]
    #
    # @!attribute [rw] activated_at
    #   The timestampe value of when the managed thing was activated at.
    #   @return [Time]
    #
    class ManagedThingSummary < Struct.new(
      :id,
      :arn,
      :advertised_product_id,
      :brand,
      :classification,
      :connector_device_id,
      :connector_policy_id,
      :connector_destination_id,
      :model,
      :name,
      :owner,
      :credential_locker_id,
      :parent_controller_id,
      :provisioning_status,
      :role,
      :serial_number,
      :created_at,
      :updated_at,
      :activated_at)
      SENSITIVE = [:brand, :classification, :connector_device_id, :model, :owner, :serial_number]
      include Aws::Structure
    end

    # Matter based capability report.
    #
    # @!attribute [rw] version
    #   The version of the capability report.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The numeric identifier of the node.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The endpoints used in the capability report.
    #   @return [Array<Types::MatterCapabilityReportEndpoint>]
    #
    class MatterCapabilityReport < Struct.new(
      :version,
      :node_id,
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Matter attribute used in capability report.
    #
    # @!attribute [rw] id
    #   The id of the Matter attribute.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the Amazon Web Services Matter capability report attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value for the Amazon Web Services Matter capability report
    #   attribute.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    class MatterCapabilityReportAttribute < Struct.new(
      :id,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Capability used in Matter capability report.
    #
    # @!attribute [rw] id
    #   The id of the Amazon Web Services Matter capability report cluster.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The id of the revision for the Amazon Web Services Matter capability
    #   report.
    #   @return [Integer]
    #
    # @!attribute [rw] public_id
    #   The id of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The capability name used in the Amazon Web Services Matter
    #   capability report.
    #   @return [String]
    #
    # @!attribute [rw] spec_version
    #   The spec version used in the Amazon Web Services Matter capability
    #   report.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes of the Amazon Web Services Matter capability report.
    #   @return [Array<Types::MatterCapabilityReportAttribute>]
    #
    # @!attribute [rw] commands
    #   The commands used with the Amazon Web Services Matter capability
    #   report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] events
    #   The events used with the Amazon Web Services Matter capability
    #   report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] feature_map
    #   32 bit-map used to indicate which features a cluster supports.
    #   @return [Integer]
    #
    # @!attribute [rw] generated_commands
    #   Matter clusters used in capability report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fabric_index
    #   The fabric index for the Amazon Web Services Matter capability
    #   report.
    #   @return [Integer]
    #
    class MatterCapabilityReportCluster < Struct.new(
      :id,
      :revision,
      :public_id,
      :name,
      :spec_version,
      :attributes,
      :commands,
      :events,
      :feature_map,
      :generated_commands,
      :fabric_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Matter endpoint used in capability report.
    #
    # @!attribute [rw] id
    #   The id of the Amazon Web Services Matter capability report endpoint.
    #   @return [String]
    #
    # @!attribute [rw] device_types
    #   The type of device.
    #   @return [Array<String>]
    #
    # @!attribute [rw] clusters
    #   Matter clusters used in capability report.
    #   @return [Array<Types::MatterCapabilityReportCluster>]
    #
    # @!attribute [rw] parts
    #   Heirachy of child endpoints contained in the given endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] semantic_tags
    #   Semantic information related to endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_clusters
    #   Semantic information related to endpoint.
    #   @return [Array<String>]
    #
    class MatterCapabilityReportEndpoint < Struct.new(
      :id,
      :device_types,
      :clusters,
      :parts,
      :semantic_tags,
      :client_clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describe a Matter cluster with an id, and the relevant attributes,
    # commands, and events.
    #
    # @!attribute [rw] id
    #   The cluster id.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The Matter attributes.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] commands
    #   Describe the Matter commands with the Matter command identifier
    #   mapped to the command fields.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] events
    #   Describe the Matter events with the Matter event identifier mapped
    #   to the event fields.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    class MatterCluster < Struct.new(
      :id,
      :attributes,
      :commands,
      :events)
      SENSITIVE = [:attributes, :commands, :events]
      include Aws::Structure
    end

    # Structure describing a managed thing.
    #
    # @!attribute [rw] id
    #   The Matter endpoint id.
    #   @return [String]
    #
    # @!attribute [rw] clusters
    #   A list of Matter clusters for a managed thing.
    #   @return [Array<Types::MatterCluster>]
    #
    class MatterEndpoint < Struct.new(
      :id,
      :clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure describing a notification configuration.
    #
    # @!attribute [rw] event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the destination for the notification configuration.
    #   @return [String]
    #
    class NotificationConfigurationSummary < Struct.new(
      :event_type,
      :destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details for OAuth authentication with a third-party
    # service.
    #
    # @!attribute [rw] auth_url
    #   The authorization URL for the OAuth service, where users are
    #   directed to authenticate and authorize access.
    #   @return [String]
    #
    # @!attribute [rw] token_url
    #   The token URL for the OAuth service, where authorization codes are
    #   exchanged for access tokens.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The OAuth scopes requested during authorization, which define the
    #   permissions granted to the application.
    #   @return [String]
    #
    # @!attribute [rw] token_endpoint_authentication_scheme
    #   The authentication scheme used when requesting tokens from the token
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_complete_redirect_url
    #   The URL where users are redirected after completing the OAuth
    #   authorization process.
    #   @return [String]
    #
    # @!attribute [rw] proactive_refresh_token_renewal
    #   Configuration for proactively refreshing OAuth tokens before they
    #   expire.
    #   @return [Types::ProactiveRefreshTokenRenewal]
    #
    class OAuthConfig < Struct.new(
      :auth_url,
      :token_url,
      :scope,
      :token_endpoint_authentication_scheme,
      :o_auth_complete_redirect_url,
      :proactive_refresh_token_renewal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure containing updated OAuth configuration settings.
    #
    # @!attribute [rw] o_auth_complete_redirect_url
    #   The updated URL where users are redirected after completing the
    #   OAuth authorization process.
    #   @return [String]
    #
    # @!attribute [rw] proactive_refresh_token_renewal
    #   Updated configuration for proactively refreshing OAuth tokens before
    #   they expire.
    #   @return [Types::ProactiveRefreshTokenRenewal]
    #
    class OAuthUpdate < Struct.new(
      :o_auth_complete_redirect_url,
      :proactive_refresh_token_renewal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Over-the-air (OTA) task abort config.
    #
    # @!attribute [rw] abort_config_criteria_list
    #   The list of criteria for the abort config.
    #   @return [Array<Types::AbortConfigCriteria>]
    #
    class OtaTaskAbortConfig < Struct.new(
      :abort_config_criteria_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing one over-the-air (OTA) task configuration.
    #
    # @!attribute [rw] task_configuration_id
    #   The id of the over-the-air (OTA) task configuration
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the over-the-air (OTA) task
    #   configuration was created at.
    #   @return [Time]
    #
    class OtaTaskConfigurationSummary < Struct.new(
      :task_configuration_id,
      :name,
      :created_at)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # Over-the-air (OTA) task retry config.
    #
    # @!attribute [rw] retry_config_criteria
    #   The list of retry config criteria.
    #   @return [Array<Types::RetryConfigCriteria>]
    #
    class OtaTaskExecutionRetryConfig < Struct.new(
      :retry_config_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Over-the-air (OTA) task rollout config.
    #
    # @!attribute [rw] exponential_rollout_rate
    #   Structure representing exponential rate of rollout for an
    #   over-the-air (OTA) task.
    #   @return [Types::ExponentialRolloutRate]
    #
    # @!attribute [rw] maximum_per_minute
    #   The maximum number of things that will be notified of a pending
    #   task, per minute.
    #   @return [Integer]
    #
    class OtaTaskExecutionRolloutConfig < Struct.new(
      :exponential_rollout_rate,
      :maximum_per_minute)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing one execution summary.
    #
    # @!attribute [rw] task_execution_summary
    #   Structure representing one over-the-air (OTA) task execution summary
    #   @return [Types::OtaTaskExecutionSummary]
    #
    # @!attribute [rw] managed_thing_id
    #   The id of a managed thing.
    #   @return [String]
    #
    class OtaTaskExecutionSummaries < Struct.new(
      :task_execution_summary,
      :managed_thing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing one over-the-air (OTA) task execution summary.
    #
    # @!attribute [rw] execution_number
    #   The execution number of the over-the-air (OTA) task execution
    #   summary.
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp value of when the over-the-air (OTA) task execution
    #   summary was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] queued_at
    #   The timestamp value of when the over-the-air (OTA) task execution
    #   summary is targeted to start.
    #   @return [Time]
    #
    # @!attribute [rw] retry_attempt
    #   The number of retry attempts for starting the over-the-air (OTA)
    #   task execution summary after a failed attempt.
    #   @return [Integer]
    #
    # @!attribute [rw] started_at
    #   The timestamp value of when the over-the-air (OTA) task execution
    #   summary started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the over-the-air (OTA) task execution summary.
    #   @return [String]
    #
    class OtaTaskExecutionSummary < Struct.new(
      :execution_number,
      :last_updated_at,
      :queued_at,
      :retry_attempt,
      :started_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Over-the-air (OTA) task scheduling config.
    #
    # @!attribute [rw] end_behavior
    #   Specifies the end behavior for all task executions after a task
    #   reaches the selected `endTime`. If `endTime` is not selected when
    #   creating the task, then `endBehavior` does not apply.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The time an over-the-air (OTA) task will stop.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_windows
    #   Maintenance window list for over-the-air (OTA) task scheduling
    #   config.
    #   @return [Array<Types::ScheduleMaintenanceWindow>]
    #
    # @!attribute [rw] start_time
    #   The time an over-the-air (OTA) task will start.
    #   @return [String]
    #
    class OtaTaskSchedulingConfig < Struct.new(
      :end_behavior,
      :end_time,
      :maintenance_windows,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing one over-the-air (OTA) task.
    #
    # @!attribute [rw] task_id
    #   The id of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp value of when the over-the-air (OTA) task was created
    #   at.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp value of when the over-the-air (OTA) task was last
    #   updated at.
    #   @return [Time]
    #
    # @!attribute [rw] task_configuration_id
    #   The identifier for the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the over-the-air (OTA) task summary.
    #   @return [String]
    #
    class OtaTaskSummary < Struct.new(
      :task_id,
      :task_arn,
      :created_at,
      :last_updated_at,
      :task_configuration_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Over-the-air (OTA) task timeout config.
    #
    # @!attribute [rw] in_progress_timeout_in_minutes
    #   Specifies the amount of time the device has to finish execution of
    #   this task. The timeout interval can be anywhere between 1 minute and
    #   7 days.
    #   @return [Integer]
    #
    class OtaTaskTimeoutConfig < Struct.new(
      :in_progress_timeout_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for proactively refreshing OAuth tokens before
    # they expire.
    #
    # @!attribute [rw] enabled
    #   Indicates whether proactive refresh token renewal is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] days_before_renewal
    #   The days before token expiration when the system should attempt to
    #   renew the token, specified in days.
    #   @return [Integer]
    #
    class ProactiveRefreshTokenRenewal < Struct.new(
      :enabled,
      :days_before_renewal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure describing a provisioning profile.
    #
    # @!attribute [rw] name
    #   The name of the provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the provisioning profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the provisioning template used in
    #   the provisioning profile.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_type
    #   The type of provisioning workflow the device uses for onboarding to
    #   IoT managed integrations.
    #   @return [String]
    #
    class ProvisioningProfileSummary < Struct.new(
      :name,
      :id,
      :arn,
      :provisioning_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing a push config.
    #
    # @!attribute [rw] abort_config
    #   Structure representing one abort config.
    #   @return [Types::OtaTaskAbortConfig]
    #
    # @!attribute [rw] rollout_config
    #   Structure representing one rollout config.
    #   @return [Types::OtaTaskExecutionRolloutConfig]
    #
    # @!attribute [rw] timeout_config
    #   Structure representing one timeout config.
    #   @return [Types::OtaTaskTimeoutConfig]
    #
    class PushConfig < Struct.new(
      :abort_config,
      :rollout_config,
      :timeout_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encryption_type
    #   The type of encryption used for the encryption configuration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS
    #   encryption if you use `KMS_BASED_ENCRYPTION`.
    #   @return [String]
    #
    class PutDefaultEncryptionConfigurationRequest < Struct.new(
      :encryption_type,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_status
    #   Provides the status of the default encryption configuration for an
    #   Amazon Web Services account.
    #   @return [Types::ConfigurationStatus]
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption used for the encryption configuration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS
    #   encryption if you use `KMS_BASED_ENCRYPTION`.
    #   @return [String]
    #
    class PutDefaultEncryptionConfigurationResponse < Struct.new(
      :configuration_status,
      :encryption_type,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hub_token_timer_expiry_setting_in_seconds
    #   A user-defined integer value that represents the hub token timer
    #   expiry setting in seconds.
    #   @return [Integer]
    #
    class PutHubConfigurationRequest < Struct.new(
      :hub_token_timer_expiry_setting_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hub_token_timer_expiry_setting_in_seconds
    #   A user-defined integer value that represents the hub token timer
    #   expiry setting in seconds.
    #   @return [Integer]
    #
    class PutHubConfigurationResponse < Struct.new(
      :hub_token_timer_expiry_setting_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The id for a managed thing.
    #   @return [String]
    #
    # @!attribute [rw] runtime_log_configurations
    #   The runtime log configuration for a managed thing.
    #   @return [Types::RuntimeLogConfigurations]
    #
    class PutRuntimeLogConfigurationRequest < Struct.new(
      :managed_thing_id,
      :runtime_log_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The identifier of the managed thing to register with the account
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] account_association_id
    #   The identifier of the account association to register with the
    #   managed thing.
    #   @return [String]
    #
    # @!attribute [rw] device_discovery_id
    #   The identifier of the device discovery job associated with this
    #   registration.
    #   @return [String]
    #
    class RegisterAccountAssociationRequest < Struct.new(
      :managed_thing_id,
      :account_association_id,
      :device_discovery_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_association_id
    #   The identifier of the account association that was registered.
    #   @return [String]
    #
    # @!attribute [rw] device_discovery_id
    #   The identifier of the device discovery job associated with this
    #   registration.
    #   @return [String]
    #
    # @!attribute [rw] managed_thing_id
    #   The identifier of the managed thing that was registered with the
    #   account association.
    #   @return [String]
    #
    class RegisterAccountAssociationResponse < Struct.new(
      :account_association_id,
      :device_discovery_id,
      :managed_thing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class RegisterCustomEndpointRequest < Aws::EmptyStructure; end

    # @!attribute [rw] endpoint_address
    #   The IoT managed integrations dedicated, custom endpoint for the
    #   device to route traffic through.
    #   @return [String]
    #
    class RegisterCustomEndpointResponse < Struct.new(
      :endpoint_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The id of a managed thing.
    #   @return [String]
    #
    class ResetRuntimeLogConfigurationRequest < Struct.new(
      :managed_thing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Id of the affected resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the affected resource
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing one retry config criteria.
    #
    # @!attribute [rw] failure_type
    #   Over-the-air (OTA) retry criteria failure type.
    #   @return [String]
    #
    # @!attribute [rw] min_number_of_retries
    #   The number of retries allowed for a failure type for the
    #   over-the-air (OTA) task.
    #   @return [Integer]
    #
    class RetryConfigCriteria < Struct.new(
      :failure_type,
      :min_number_of_retries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing rollout config criteria.
    #
    # @!attribute [rw] number_of_notified_things
    #   The threshold for number of notified things that will initiate the
    #   increase in rate of rollout.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_succeeded_things
    #   The threshold for number of succeeded things that will initiate the
    #   increase in rate of rollout.
    #   @return [Integer]
    #
    class RolloutRateIncreaseCriteria < Struct.new(
      :number_of_notified_things,
      :number_of_succeeded_things)
      SENSITIVE = []
      include Aws::Structure
    end

    # The different configurations for runtime logs.
    #
    # @!attribute [rw] log_level
    #   The different log levels available for configuration.
    #   @return [String]
    #
    # @!attribute [rw] log_flush_level
    #   The different log levels available for configuration.
    #   @return [String]
    #
    # @!attribute [rw] local_store_location
    #   Configuration of where to store runtime logs in the device.
    #   @return [String]
    #
    # @!attribute [rw] local_store_file_rotation_max_files
    #   Configuration to set the maximum number of runtime log files that
    #   can be stored on the device before the oldest files are deleted or
    #   overwritten.
    #   @return [Integer]
    #
    # @!attribute [rw] local_store_file_rotation_max_bytes
    #   Configuration to set the maximum bytes of runtime logs that can be
    #   stored on the device before the oldest logs are deleted or
    #   overwritten.
    #   @return [Integer]
    #
    # @!attribute [rw] upload_log
    #   Configuration to enable or disable uploading of runtime logs to the
    #   cloud.
    #   @return [Boolean]
    #
    # @!attribute [rw] upload_period_minutes
    #   Configuration to set the time interval in minutes between each batch
    #   of runtime logs that the device uploads to the cloud.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_local_store_after_upload
    #   Configuration to enable or disable deleting of runtime logs in the
    #   device once uploaded to the cloud.
    #   @return [Boolean]
    #
    class RuntimeLogConfigurations < Struct.new(
      :log_level,
      :log_flush_level,
      :local_store_location,
      :local_store_file_rotation_max_files,
      :local_store_file_rotation_max_bytes,
      :upload_log,
      :upload_period_minutes,
      :delete_local_store_after_upload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure representing scheduling maintenance window.
    #
    # @!attribute [rw] duration_in_minutes
    #   Displays the duration of the next maintenance window.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   Displays the start time of the next maintenance window.
    #   @return [String]
    #
    class ScheduleMaintenanceWindow < Struct.new(
      :duration_in_minutes,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # List item describing a schema version.
    #
    # @!attribute [rw] schema_id
    #   The identifier of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of schema version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The schema version. If this is left blank, it defaults to the latest
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the schema version.
    #   @return [String]
    #
    class SchemaVersionListItem < Struct.new(
      :schema_id,
      :type,
      :description,
      :namespace,
      :semantic_version,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for AWS Secrets Manager, used to securely store and
    # manage sensitive information for connector destinations.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID of the AWS Secrets Manager secret.
    #   @return [String]
    #
    class SecretsManager < Struct.new(
      :arn,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The id of the connector between the third-party cloud provider and
    #   IoT managed integrations.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The id of the third-party cloud provider.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The Open Connectivity Foundation (OCF) operation requested to be
    #   performed on the managed thing.
    #
    #   <note markdown="1"> The field op can have a value of "I" or "U". The field "cn"
    #   will contain the capability types.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] operation_version
    #   The Open Connectivity Foundation (OCF) security specification
    #   version for the operation being requested on the managed thing. For
    #   more information, see [OCF Security Specification][1].
    #
    #
    #
    #   [1]: https://openconnectivity.org/specs/OCF_Security_Specification_v1.0.0.pdf
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code of the Open Connectivity Foundation (OCF) operation
    #   being performed on the managed thing.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The device state change event payload.
    #
    #   This parameter will include the following three fields:
    #
    #   * `uri`: `schema auc://<PARTNER-DEVICE-ID>/ResourcePath` (The
    #     `Resourcepath` corresponds to an OCF resource.)
    #
    #   * `op`: For device state changes, this field must populate as `n+d`.
    #
    #   * `cn`: The content depends on the OCF resource referenced in
    #     `ResourcePath`.
    #   @return [String]
    #
    # @!attribute [rw] device_discovery_id
    #   The id for the device discovery job.
    #   @return [String]
    #
    # @!attribute [rw] connector_device_id
    #   The third-party device id as defined by the connector. This device
    #   id must not contain personal identifiable information (PII).
    #
    #   <note markdown="1"> This parameter is used for cloud-to-cloud devices only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The trace request identifier. This is generated by IoT managed
    #   integrations and can be used to trace this command and its related
    #   operations in CloudWatch.
    #   @return [String]
    #
    # @!attribute [rw] devices
    #   The list of devices.
    #   @return [Array<Types::Device>]
    #
    # @!attribute [rw] matter_endpoint
    #   The device endpoint.
    #   @return [Types::MatterEndpoint]
    #
    class SendConnectorEventRequest < Struct.new(
      :connector_id,
      :user_id,
      :operation,
      :operation_version,
      :status_code,
      :message,
      :device_discovery_id,
      :connector_device_id,
      :trace_id,
      :devices,
      :matter_endpoint)
      SENSITIVE = [:user_id, :operation_version, :status_code, :message, :connector_device_id]
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The id of the connector between the third-party cloud provider and
    #   IoT managed integrations.
    #   @return [String]
    #
    class SendConnectorEventResponse < Struct.new(
      :connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_thing_id
    #   The id of the device.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The device endpoint.
    #   @return [Array<Types::CommandEndpoint>]
    #
    # @!attribute [rw] connector_association_id
    #   The ID tracking the current discovery process for one connector
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] account_association_id
    #   The identifier of the account association to use when sending a
    #   command to a managed thing.
    #   @return [String]
    #
    class SendManagedThingCommandRequest < Struct.new(
      :managed_thing_id,
      :endpoints,
      :connector_association_id,
      :account_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_id
    #   The trace request identifier. This is generated by IoT managed
    #   integrations and can be used to trace this command and its related
    #   operations in CloudWatch.
    #   @return [String]
    #
    class SendManagedThingCommandResponse < Struct.new(
      :trace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service quota has been exceeded for this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_association_id
    #   The unique identifier of the account association to refresh.
    #   @return [String]
    #
    class StartAccountAssociationRefreshRequest < Struct.new(
      :account_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] o_auth_authorization_url
    #   Third-party IoT platform OAuth authorization server URL with all
    #   required parameters to perform end-user authentication during the
    #   refresh process.
    #   @return [String]
    #
    class StartAccountAssociationRefreshResponse < Struct.new(
      :o_auth_authorization_url)
      SENSITIVE = [:o_auth_authorization_url]
      include Aws::Structure
    end

    # @!attribute [rw] discovery_type
    #   The discovery type supporting the type of device to be discovered in
    #   the device discovery task request.
    #   @return [String]
    #
    # @!attribute [rw] custom_protocol_detail
    #   Additional protocol-specific details required for device discovery,
    #   which vary based on the discovery type.
    #
    #   <note markdown="1"> For a `DiscoveryType` of `CUSTOM`, the string-to-string map must
    #   have a key value of `Name` set to a non-empty-string.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] controller_identifier
    #   The id of the end-user's IoT hub.
    #   @return [String]
    #
    # @!attribute [rw] connector_association_identifier
    #   The id of the connector association.
    #   @return [String]
    #
    # @!attribute [rw] account_association_id
    #   The identifier of the cloud-to-cloud account association to use for
    #   discovery of third-party devices.
    #   @return [String]
    #
    # @!attribute [rw] authentication_material
    #   The authentication material required to start the local device
    #   discovery job request.
    #   @return [String]
    #
    # @!attribute [rw] authentication_material_type
    #   The type of authentication material used for device discovery jobs.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the device
    #   discovery request.
    #   @return [Hash<String,String>]
    #
    class StartDeviceDiscoveryRequest < Struct.new(
      :discovery_type,
      :custom_protocol_detail,
      :controller_identifier,
      :connector_association_identifier,
      :account_association_id,
      :authentication_material,
      :authentication_material_type,
      :client_token,
      :tags)
      SENSITIVE = [:authentication_material, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The id of the device discovery job request.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp value for the start time of the device discovery.
    #   @return [Time]
    #
    class StartDeviceDiscoveryResponse < Struct.new(
      :id,
      :started_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # State capabilities added for the managed thing.
    #
    # @!attribute [rw] id
    #   The id of the managed thing in the capability report.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the Amazon Web Services capability.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version for the Amazon Web Services capability.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   Describe the command capability with the properties it supports.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    class StateCapability < Struct.new(
      :id,
      :name,
      :version,
      :properties)
      SENSITIVE = [:properties]
      include Aws::Structure
    end

    # Describe the endpoint with an Id, a name, and the relevant
    # capabilities for reporting state
    #
    # @!attribute [rw] endpoint_id
    #   Numeric identifier of the endpoint
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   Describe the endpoint with an id, a name, and the relevant
    #   capabilities for the reporting state.
    #   @return [Array<Types::StateCapability>]
    #
    class StateEndpoint < Struct.new(
      :endpoint_id,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to which to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that are used to manage the resource
    #   @return [Hash<String,String>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # Details about the over-the-air (OTA) task process.
    #
    # @!attribute [rw] number_of_canceled_things
    #   The number of canceled things in an over-the-air (OTA) task.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_failed_things
    #   The number of failed things in an over-the-air (OTA) task.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_in_progress_things
    #   The number of in progress things in an over-the-air (OTA) task.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_queued_things
    #   The number of queued things in an over-the-air (OTA) task.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_rejected_things
    #   The number of rejected things in an over-the-air (OTA) task.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_removed_things
    #   The number of removed things in an over-the-air (OTA) task.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_succeeded_things
    #   The number of succeeded things in an over-the-air (OTA) task.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_timed_out_things
    #   The number of timed out things in an over-the-air (OTA) task.
    #   @return [Integer]
    #
    # @!attribute [rw] processing_targets
    #   The targets of the over-the-air (OTA) task.
    #   @return [Array<String>]
    #
    class TaskProcessingDetails < Struct.new(
      :number_of_canceled_things,
      :number_of_failed_things,
      :number_of_in_progress_things,
      :number_of_queued_things,
      :number_of_rejected_things,
      :number_of_removed_things,
      :number_of_succeeded_things,
      :number_of_timed_out_things,
      :processing_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rate exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to which to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_association_id
    #   The unique identifier of the account association to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name to assign to the account association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description to assign to the account association.
    #   @return [String]
    #
    class UpdateAccountAssociationRequest < Struct.new(
      :account_association_id,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the cloud connector to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new display name to assign to the cloud connector.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description to assign to the cloud connector.
    #   @return [String]
    #
    class UpdateCloudConnectorRequest < Struct.new(
      :identifier,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the connector destination to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description to assign to the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new display name to assign to the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The new authentication type to use for the connector destination.
    #   @return [String]
    #
    # @!attribute [rw] auth_config
    #   The updated authentication configuration details for the connector
    #   destination.
    #   @return [Types::AuthConfigUpdate]
    #
    # @!attribute [rw] secrets_manager
    #   The updated AWS Secrets Manager configuration for the connector
    #   destination.
    #   @return [Types::SecretsManager]
    #
    class UpdateConnectorDestinationRequest < Struct.new(
      :identifier,
      :description,
      :name,
      :auth_type,
      :auth_config,
      :secrets_manager)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_arn
    #   The Amazon Resource Name (ARN) of the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_type
    #   The destination type for the customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the delivery destination role.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the customer-managed destination.
    #   @return [String]
    #
    class UpdateDestinationRequest < Struct.new(
      :name,
      :delivery_destination_arn,
      :delivery_destination_type,
      :role_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The log configuration id.
    #   @return [String]
    #
    # @!attribute [rw] event_log_level
    #   The log level for the event in terms of severity.
    #   @return [String]
    #
    class UpdateEventLogConfigurationRequest < Struct.new(
      :id,
      :event_log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The id of the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Owner of the device, usually an indication of whom the device
    #   belongs to. This value should not contain personal identifiable
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] credential_locker_id
    #   The identifier of the credential for the managed thing.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the device.
    #   @return [String]
    #
    # @!attribute [rw] brand
    #   The brand of the device.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the device.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed thing representing the physical device.
    #   @return [String]
    #
    # @!attribute [rw] capability_report
    #   A report of the capabilities for the managed thing.
    #   @return [Types::CapabilityReport]
    #
    # @!attribute [rw] capability_schemas
    #   The updated capability schemas that define the functionality and
    #   features supported by the managed thing.
    #   @return [Array<Types::CapabilitySchemaItem>]
    #
    # @!attribute [rw] capabilities
    #   The capabilities of the device such as light bulb.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   The classification of the managed thing such as light bulb or
    #   thermostat.
    #   @return [String]
    #
    # @!attribute [rw] hub_network_mode
    #   The network mode for the hub-connected device.
    #   @return [String]
    #
    # @!attribute [rw] meta_data
    #   The metadata for the managed thing.
    #   @return [Hash<String,String>]
    #
    class UpdateManagedThingRequest < Struct.new(
      :identifier,
      :owner,
      :credential_locker_id,
      :serial_number,
      :brand,
      :model,
      :name,
      :capability_report,
      :capability_schemas,
      :capabilities,
      :classification,
      :hub_network_mode,
      :meta_data)
      SENSITIVE = [:owner, :serial_number, :brand, :model, :classification]
      include Aws::Structure
    end

    # @!attribute [rw] event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the destination for the notification configuration.
    #   @return [String]
    #
    class UpdateNotificationConfigurationRequest < Struct.new(
      :event_type,
      :destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The over-the-air (OTA) task id.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the over-the-air (OTA) task.
    #   @return [String]
    #
    # @!attribute [rw] task_configuration_id
    #   The identifier for the over-the-air (OTA) task configuration.
    #   @return [String]
    #
    class UpdateOtaTaskRequest < Struct.new(
      :identifier,
      :description,
      :task_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A validation error occurred when performing the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

