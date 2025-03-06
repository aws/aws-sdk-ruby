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
      :status)
      SENSITIVE = []
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
    #   The provisioning profile id..
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
      :serial_number_filter,
      :provisioning_status_filter,
      :next_token,
      :max_results)
      SENSITIVE = [:owner_filter, :serial_number_filter]
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
    class ResourceNotFoundException < Struct.new(
      :message)
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
    class SendManagedThingCommandRequest < Struct.new(
      :managed_thing_id,
      :endpoints,
      :connector_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_id
    #   The trace request identifier. This is specified by the device owner,
    #   but will be generated by IoT managed integrations if not provided by
    #   the device owner.
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

    # @!attribute [rw] discovery_type
    #   The discovery type supporting the type of device to be discovered in
    #   the device discovery job request.
    #   @return [String]
    #
    # @!attribute [rw] controller_identifier
    #   The id of the end-user's IoT hub.
    #   @return [String]
    #
    # @!attribute [rw] connector_association_identifier
    #   The id of the connector association.
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
      :controller_identifier,
      :connector_association_identifier,
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

