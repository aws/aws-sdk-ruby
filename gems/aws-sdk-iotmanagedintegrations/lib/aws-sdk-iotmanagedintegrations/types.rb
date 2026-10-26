# frozen_string_literal: true

# This is generated code!

module Aws::IoTManagedIntegrations
  # This module contains the types returned by client operations.
  module Types

    # <p>Structure representing one abort config criteria.</p>
    # @!attribute action
    #   <p>The action taken by the abort configuration.</p>
    #   @return [String]
    # @!attribute failure_type
    #   <p>Over-the-air (OTA) task abort criteria failure type.</p>
    #   @return [String]
    # @!attribute min_number_of_executed_things
    #   <p>The minimum number of things that must receive task execution notifications before the task can be aborted.</p>
    #   @return [Integer]
    # @!attribute threshold_percentage
    #   <p>The minimum percentage of over-the-air (OTA) task execution failures that must occur to initiate the last abort.</p>
    #   @return [Float]
    class AbortConfigCriteria < Struct.new(
      nil,
      :action,
      :failure_type,
      :min_number_of_executed_things,
      :threshold_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>User is not authorized.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure containing information about an account association, including its identifier, state, and related metadata.</p>
    # @!attribute account_association_id
    #   <p>The unique identifier of the account association.</p>
    #   @return [String]
    # @!attribute association_state
    #   <p>The current state of the account association, indicating its status in the association lifecycle.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message explaining any issues with the account association, if applicable.</p>
    #   @return [String]
    # @!attribute connector_destination_id
    #   <p>The identifier of the connector destination associated with this account association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the account association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the account association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account association.</p>
    #   @return [String]
    class AccountAssociationItem < Struct.new(
      nil,
      :account_association_id,
      :association_state,
      :error_message,
      :connector_destination_id,
      :name,
      :description,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authentication configuration details for a connector destination, including OAuth settings and other authentication parameters.</p>
    # @!attribute o_auth
    #   <p>The OAuth configuration settings used for authentication with the third-party service.</p>
    #   @return [Types::OAuthConfig]
    # @!attribute general_authorization
    #   <p>The authorization materials for General Authorization.</p>
    #   @return [Array<Types::AuthMaterial>]
    class AuthConfig < Struct.new(
      nil,
      :o_auth,
      :general_authorization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The updated authentication configuration details for a connector destination.</p>
    # @!attribute o_auth_update
    #   <p>The updated OAuth configuration settings for the authentication configuration.</p>
    #   @return [Types::OAuthUpdate]
    # @!attribute general_authorization_update
    #   <p>The General Authorization update information containing authorization materials to add or update.</p>
    #   @return [Types::GeneralAuthorizationUpdate]
    class AuthConfigUpdate < Struct.new(
      nil,
      :o_auth_update,
      :general_authorization_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authorization material containing the Secrets Manager arn and version.</p>
    # @!attribute secrets_manager
    #   <p>Configuration for AWS Secrets Manager, used to securely store and manage sensitive information for connector destinations.</p>
    #   @return [Types::SecretsManager]
    # @!attribute auth_material_name
    #   <p>The name of the authorization material.</p>
    #   @return [String]
    class AuthMaterial < Struct.new(
      nil,
      :secrets_manager,
      :auth_material_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Action for an Amazon Web Services capability, containing the action parameters for control.</p>
    # @!attribute name
    #   <p>Describe a capability action with a name.</p>
    #   @return [String]
    # @!attribute ref
    #   <p>Describe a capability action with an reference.</p>
    #   @return [String]
    # @!attribute action_trace_id
    #   <p>Describe a capability action with an <code>actionTraceId</code> for a response command.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Describe a capability action with a capability property.</p>
    #   @return [JSON]
    class CapabilityAction < Struct.new(
      nil,
      :name,
      :ref,
      :action_trace_id,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Report of all capabilities supported by the device.</p>
    # @!attribute version
    #   <p>The version of the capability report.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The numeric identifier of the node.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The endpoints used in the capability report.</p>
    #   @return [Array<Types::CapabilityReportEndpoint>]
    class CapabilityReport < Struct.new(
      nil,
      :version,
      :node_id,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The capability used in capability report.</p>
    # @!attribute id
    #   <p>The id of the schema version.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the capability.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the capability.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The capability properties used in the capability report.</p>
    #   @return [Array<String>]
    # @!attribute actions
    #   <p>The capability actions used in the capability report.</p>
    #   @return [Array<String>]
    # @!attribute events
    #   <p>The capability events used in the capability report.</p>
    #   @return [Array<String>]
    class CapabilityReportCapability < Struct.new(
      nil,
      :id,
      :name,
      :version,
      :properties,
      :actions,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint used in the capability report.</p>
    # @!attribute id
    #   <p>The id of the endpoint used in the capability report.</p>
    #   @return [String]
    # @!attribute device_types
    #   <p>The type of device.</p>
    #   @return [Array<String>]
    # @!attribute capabilities
    #   <p>The capabilities used in the capability report.</p>
    #   @return [Array<Types::CapabilityReportCapability>]
    class CapabilityReportEndpoint < Struct.new(
      nil,
      :id,
      :device_types,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing a capability schema item that defines the functionality and features supported by a managed thing.</p>
    # @!attribute format
    #   <p>The format of the capability schema, which defines how the schema is structured and interpreted.</p>
    #   @return [String]
    # @!attribute capability_id
    #   <p>The unique identifier of the capability defined in the schema.</p>
    #   @return [String]
    # @!attribute extrinsic_id
    #   <p>The external identifier for the capability, used when referencing the capability outside of the AWS ecosystem.</p>
    #   @return [String]
    # @!attribute extrinsic_version
    #   <p>The version of the external capability definition, used to track compatibility with external systems.</p>
    #   @return [Integer]
    # @!attribute schema
    #   <p>The actual schema definition that describes the capability's properties, actions, and events.</p>
    #   @return [JSON]
    class CapabilitySchemaItem < Struct.new(
      nil,
      :format,
      :capability_id,
      :extrinsic_id,
      :extrinsic_version,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The command capabilities added for the managed thing</p>
    # @!attribute id
    #   <p>Describe the capability with an id.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Describe the capability with an name.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Describe the capability with a version.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>Describe the command capability with the actions it supports.</p>
    #   @return [Array<Types::CapabilityAction>]
    class CommandCapability < Struct.new(
      nil,
      :id,
      :name,
      :version,
      :actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint for a managed thing when sending a command.</p>
    # @!attribute endpoint_id
    #   <p>The id of the endpoint for a managed thing.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>Describe the endpoint with an id, a name, and the relevant capabilities for sending commands.</p>
    #   @return [Array<Types::CommandCapability>]
    class CommandEndpoint < Struct.new(
      nil,
      :endpoint_id,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the default encryption configuration error update details.</p>
    # @!attribute code
    #   <p>The error code returned when the default encryption configuration update fails.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message returned when the default encryption configuration update fails.</p>
    #   @return [String]
    class ConfigurationError < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the status of the default encryption configuration for an Amazon Web Services account.</p>
    # @!attribute error
    #   <p>The error details describing a failed default encryption configuration update.</p>
    #   @return [Types::ConfigurationError]
    # @!attribute state
    #   <p>The status state describing the default encryption configuration update.</p>
    #   @return [String]
    class ConfigurationStatus < Struct.new(
      nil,
      :error,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There is a conflict with the request.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure containing summary information about a connector destination, which defines how a cloud-to-cloud connector connects to a customer's AWS account.</p>
    # @!attribute name
    #   <p>The display name of the connector destination.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the connector destination.</p>
    #   @return [String]
    # @!attribute cloud_connector_id
    #   <p>The identifier of the cloud connector associated with this connector destination.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the connector destination.</p>
    #   @return [String]
    class ConnectorDestinationSummary < Struct.new(
      nil,
      :name,
      :description,
      :cloud_connector_id,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure describing a connector.</p>
    # @!attribute name
    #   <p>The display name of the C2C connector.</p>
    #   @return [String]
    # @!attribute endpoint_config
    #   <p>The configuration details for the cloud connector endpoint, including connection parameters and authentication requirements.</p>
    #   @return [Types::EndpointConfig]
    # @!attribute description
    #   <p>A description of the C2C connector.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint used for the C2C connector.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the C2C connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of cloud connector created.</p>
    #   @return [String]
    class ConnectorItem < Struct.new(
      nil,
      :name,
      :endpoint_config,
      :description,
      :endpoint_type,
      :id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    # @!attribute connector_destination_id
    #   <p>The identifier of the connector destination.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the destination for the new account association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the account association request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the account association.</p>
    #   @return [Hash<String, String>]
    # @!attribute general_authorization
    #   <p>The General Authorization reference by authorization material name.</p>
    #   @return [Types::GeneralAuthorizationName]
    class CreateAccountAssociationRequest < Struct.new(
      nil,
      :client_token,
      :connector_destination_id,
      :name,
      :description,
      :tags,
      :general_authorization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute o_auth_authorization_url
    #   <p>Third-party IoT platform OAuth authorization server URL backed with all the required parameters to perform end-user authentication. This field will be empty when using General Authorization flows that do not require OAuth.</p>
    #   @return [String]
    # @!attribute account_association_id
    #   <p>The identifier for the account association request.</p>
    #   @return [String]
    # @!attribute association_state
    #   <p>The current state of the account association request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account association.</p>
    #   @return [String]
    class CreateAccountAssociationResponse < Struct.new(
      nil,
      :o_auth_authorization_url,
      :account_association_id,
      :association_state,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:o_auth_authorization_url] = '' unless options.key?(:o_auth_authorization_url)
        super
      end
    end

    # @!attribute name
    #   <p>The display name of the C2C connector.</p>
    #   @return [String]
    # @!attribute endpoint_config
    #   <p>The configuration details for the cloud connector endpoint, including connection parameters and authentication requirements.</p>
    #   @return [Types::EndpointConfig]
    # @!attribute description
    #   <p>A description of the C2C connector.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint used for the cloud connector, which defines how the connector communicates with external services.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    class CreateCloudConnectorRequest < Struct.new(
      nil,
      :name,
      :endpoint_config,
      :description,
      :endpoint_type,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier assigned to the newly created cloud connector.</p>
    #   @return [String]
    class CreateCloudConnectorResponse < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The display name of the connector destination.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the connector destination.</p>
    #   @return [String]
    # @!attribute cloud_connector_id
    #   <p>The identifier of the C2C connector.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authentication type used for the connector destination, which determines how credentials and access are managed.</p>
    #   @return [String]
    # @!attribute auth_config
    #   <p>The authentication configuration details for the connector destination, including OAuth settings and other authentication parameters.</p>
    #   @return [Types::AuthConfig]
    # @!attribute secrets_manager
    #   <p>The AWS Secrets Manager configuration used to securely store and manage sensitive information for the connector destination.</p>
    #   @return [Types::SecretsManager]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    class CreateConnectorDestinationRequest < Struct.new(
      nil,
      :name,
      :description,
      :cloud_connector_id,
      :auth_type,
      :auth_config,
      :secrets_manager,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the C2C connector destination creation request.</p>
    #   @return [String]
    class CreateConnectorDestinationResponse < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the credential locker.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the credential locker.</p>
    #   @return [Hash<String, String>]
    class CreateCredentialLockerRequest < Struct.new(
      nil,
      :name,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the credential locker creation request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the credential locker.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the credential locker request occurred.</p>
    #   @return [Time]
    class CreateCredentialLockerResponse < Struct.new(
      nil,
      :id,
      :arn,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute delivery_destination_type
    #   <p>The destination type for the customer-managed destination.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery destination role.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the destination.</p>
    #   @deprecated
    #     Tags have been deprecated from this api
    #     Since: 06-25-2025
    #   @return [Hash<String, String>]
    class CreateDestinationRequest < Struct.new(
      nil,
      :delivery_destination_arn,
      :delivery_destination_type,
      :name,
      :role_arn,
      :client_token,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the customer-managed destination.</p>
    #   @return [String]
    class CreateDestinationResponse < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>The type of resource for the event log configuration.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource for the event log configuration.</p>
    #   @return [String]
    # @!attribute event_log_level
    #   <p>The logging level for the event log configuration.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    class CreateEventLogConfigurationRequest < Struct.new(
      nil,
      :resource_type,
      :resource_id,
      :event_log_level,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the event log configuration request.</p>
    #   @return [String]
    class CreateEventLogConfigurationResponse < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role
    #   <p>The type of device used. This will be the hub controller, cloud device, or AWS IoT device.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>Owner of the device, usually an indication of whom the device belongs to. This value should not contain personal identifiable information.</p>
    #   @return [String]
    # @!attribute credential_locker_id
    #   <p>The identifier of the credential for the managed thing.</p>
    #   @return [String]
    # @!attribute authentication_material
    #   <p>The authentication material defining the device connectivity setup requests. The authorization materials used are the device bar code.</p>
    #   @return [String]
    # @!attribute authentication_material_type
    #   <p>The type of authentication material used for device connectivity setup requests.</p>
    #   @return [String]
    # @!attribute wi_fi_simple_setup_configuration
    #   <p>The Wi-Fi Simple Setup configuration for the managed thing, which defines provisioning capabilities and timeout settings.</p>
    #   @return [Types::WiFiSimpleSetupConfiguration]
    # @!attribute serial_number
    #   <p>The serial number of the device.</p>
    #   @return [String]
    # @!attribute brand
    #   <p>The brand of the device.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of the device.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the managed thing representing the physical device.</p>
    #   @return [String]
    # @!attribute capability_report
    #   <p>A report of the capabilities for the managed thing.</p>
    #   @return [Types::CapabilityReport]
    # @!attribute capability_schemas
    #   <p>The capability schemas that define the functionality and features supported by the managed thing, including device capabilities and their associated properties.</p>
    #   @return [Array<Types::CapabilitySchemaItem>]
    # @!attribute capabilities
    #   <p>The capabilities of the device such as light bulb.</p>
    #   @deprecated
    #     Capabilities has been deprecated, use CapabilityReport instead
    #     Since: 06-25-2025
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    # @!attribute classification
    #   <p>The classification of the managed thing such as light bulb or thermostat.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the managed thing.</p>
    #   @return [Hash<String, String>]
    # @!attribute meta_data
    #   <p>The metadata for the managed thing.</p> <note> <p>The <code>managedThing</code> <code>metadata</code> parameter is used for associating attributes with a <code>managedThing</code> that can be used for grouping over-the-air (OTA) tasks. Name value pairs in <code>metadata</code> can be used in the <code>OtaTargetQueryString</code> parameter for the <code>CreateOtaTask</code> API operation.</p> </note>
    #   @return [Hash<String, String>]
    class CreateManagedThingRequest < Struct.new(
      nil,
      :role,
      :owner,
      :credential_locker_id,
      :authentication_material,
      :authentication_material_type,
      :wi_fi_simple_setup_configuration,
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
      :meta_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The id of the managed thing.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the managed thing.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the device creation request occurred.</p>
    #   @return [Time]
    class CreateManagedThingResponse < Struct.new(
      nil,
      :id,
      :arn,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the destination for the notification configuration.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the notification configuration.</p>
    #   @deprecated
    #     Tags has been deprecated from this api
    #     Since: 06-25-2025
    #   @return [Hash<String, String>]
    class CreateNotificationConfigurationRequest < Struct.new(
      nil,
      :event_type,
      :destination_name,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    #   @return [String]
    class CreateNotificationConfigurationResponse < Struct.new(
      nil,
      :event_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A description of the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute push_config
    #   <p>Describes the type of configuration used for the over-the-air (OTA) task.</p>
    #   @return [Types::PushConfig]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    class CreateOtaTaskConfigurationRequest < Struct.new(
      nil,
      :description,
      :name,
      :push_config,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_configuration_id
    #   <p>The identifier of the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    class CreateOtaTaskConfigurationResponse < Struct.new(
      nil,
      :task_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute s3_url
    #   <p>The URL to the Amazon S3 bucket where the over-the-air (OTA) task is stored.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The connection protocol the over-the-air (OTA) task uses to update the device.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The device targeted for the over-the-air (OTA) task.</p>
    #   @return [Array<String>]
    # @!attribute task_configuration_id
    #   <p>The identifier for the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    # @!attribute ota_mechanism
    #   <p>The deployment mechanism for the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute ota_type
    #   <p>The frequency type for the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute ota_target_query_string
    #   <p>The query string to add things to the thing group.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    # @!attribute ota_scheduling_config
    #   <p>Over-the-air (OTA) task scheduling config.</p>
    #   @return [Types::OtaTaskSchedulingConfig]
    # @!attribute ota_task_execution_retry_config
    #   <p>Over-the-air (OTA) task retry config.</p>
    #   @return [Types::OtaTaskExecutionRetryConfig]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the over-the-air (OTA) task.</p>
    #   @return [Hash<String, String>]
    class CreateOtaTaskRequest < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The identifier of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the over-the-air (OTA) task.</p>
    #   @return [String]
    class CreateOtaTaskResponse < Struct.new(
      nil,
      :task_id,
      :task_arn,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioning_type
    #   <p>The type of provisioning workflow the device uses for onboarding to IoT managed integrations.</p>
    #   @return [String]
    # @!attribute ca_certificate
    #   <p>The body of the PEM-encoded certificate authority (CA) certificate.</p>
    #   @return [String]
    # @!attribute claim_certificate
    #   <p>The body of the PEM-encoded claim certificate. If a claim certificate is provided, it will be used for the provisioning profile. Otherwise, a claim certificate will be generated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the provisioning profile.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the provisioning profile.</p>
    #   @return [Hash<String, String>]
    class CreateProvisioningProfileRequest < Struct.new(
      nil,
      :provisioning_type,
      :ca_certificate,
      :claim_certificate,
      :name,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the provisioning profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the provisioning profile.</p>
    #   @return [String]
    # @!attribute provisioning_type
    #   <p>The type of provisioning workflow the device uses for onboarding to IoT managed integrations.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the provisioning profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a provisioning profile.</p>
    #   @return [String]
    # @!attribute claim_certificate
    #   <p>The body of the PEM-encoded claim certificate.</p>
    #   @return [String]
    # @!attribute claim_certificate_private_key
    #   <p>The private key of the claim certificate. This may be stored securely on the device for validating the connection endpoint with IoT managed integrations using the public key.</p>
    #   @return [String]
    class CreateProvisioningProfileResponse < Struct.new(
      nil,
      :arn,
      :name,
      :provisioning_type,
      :id,
      :status,
      :claim_certificate,
      :claim_certificate_private_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure describing one Credential Locker.</p>
    # @!attribute id
    #   <p>The id of the credential locker.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the credential locker.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the credential locker.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestampe value of when the credential locker was created at.</p>
    #   @return [Time]
    class CredentialLockerSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_association_id
    #   <p>The unique identifier of the account association to be deleted.</p>
    #   @return [String]
    class DeleteAccountAssociationRequest < Struct.new(
      nil,
      :account_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the cloud connector.</p>
    #   @return [String]
    class DeleteCloudConnectorRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the connector destination.</p>
    #   @return [String]
    class DeleteConnectorDestinationRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the credential locker.</p>
    #   @return [String]
    class DeleteCredentialLockerRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The id of the customer-managed destination.</p>
    #   @return [String]
    class DeleteDestinationRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the event log configuration.</p>
    #   @return [String]
    class DeleteEventLogConfigurationRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the managed thing.</p>
    #   @return [String]
    # @!attribute force
    #   <p>When set to <code>TRUE</code>, a forceful deteletion of the managed thing will occur. When set to <code>FALSE</code>, a non-forceful deletion of the managed thing will occur.</p>
    #   @return [Boolean]
    class DeleteManagedThingRequest < Struct.new(
      nil,
      :identifier,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    #   @return [String]
    class DeleteNotificationConfigurationRequest < Struct.new(
      nil,
      :event_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    class DeleteOtaTaskConfigurationRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the over-the-air (OTA) task.</p>
    #   @return [String]
    class DeleteOtaTaskRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the provisioning profile.</p>
    #   @return [String]
    class DeleteProvisioningProfileRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Request for deregister a managed thing from account association
    # @!attribute managed_thing_id
    #   <p>The identifier of the managed thing to be deregistered from the account association.</p>
    #   @return [String]
    # @!attribute account_association_id
    #   <p>The unique identifier of the account association to be deregistered.</p>
    #   @return [String]
    class DeregisterAccountAssociationRequest < Struct.new(
      nil,
      :managed_thing_id,
      :account_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure describing a destination for IoT managed integrations to deliver notifications for a device.</p>
    # @!attribute description
    #   <p>The description of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute delivery_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute delivery_destination_type
    #   <p>The destination type for the customer-managed destination.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery destination.</p>
    #   @return [String]
    class DestinationSummary < Struct.new(
      nil,
      :description,
      :delivery_destination_arn,
      :delivery_destination_type,
      :name,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describe the device using the relevant metadata and supported clusters for device discovery.</p>
    # @!attribute connector_device_id
    #   <p>The device id as defined by the connector.</p> <note> <p>This parameter is used for cloud-to-cloud devices only.</p> </note>
    #   @return [String]
    # @!attribute connector_device_name
    #   <p>The name of the device as defined by the connector.</p>
    #   @return [String]
    # @!attribute capability_report
    #   <p>The capability report for the device.</p>
    #   @return [Types::MatterCapabilityReport]
    # @!attribute capability_schemas
    #   <p>Report of all capabilities supported by the device.</p>
    #   @return [Array<Types::CapabilitySchemaItem>]
    # @!attribute device_metadata
    #   <p>The metadata attributes for a device.</p>
    #   @return [JSON]
    class Device < Struct.new(
      nil,
      :connector_device_id,
      :connector_device_name,
      :capability_report,
      :capability_schemas,
      :device_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure containing summary information about a device discovery job, including its identifier, type, and status.</p>
    # @!attribute id
    #   <p>The unique identifier of the device discovery job.</p>
    #   @return [String]
    # @!attribute discovery_type
    #   <p>The type of discovery process used to find devices.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the device discovery job.</p>
    #   @return [String]
    class DeviceDiscoverySummary < Struct.new(
      nil,
      :id,
      :discovery_type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure containing summary information about a device discovered during a device discovery job.</p>
    # @!attribute connector_device_id
    #   <p>The third-party device identifier as defined by the connector. This identifier must not contain personal identifiable information (PII).</p>
    #   @return [String]
    # @!attribute connector_device_name
    #   <p>The name of the device as defined by the connector or third-party system.</p>
    #   @return [String]
    # @!attribute device_types
    #   <p>The list of device types or categories that the discovered device belongs to.</p>
    #   @return [Array<String>]
    # @!attribute managed_thing_id
    #   <p>The identifier of the managed thing created for this discovered device, if one exists.</p>
    #   @return [String]
    # @!attribute modification
    #   <p>The status of the discovered device, indicating whether it has been added, removed, or modified since the last discovery.</p>
    #   @return [String]
    # @!attribute discovered_at
    #   <p>The timestamp indicating when the device was discovered.</p>
    #   @return [Time]
    # @!attribute brand
    #   <p>The brand of the discovered device.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of the discovered device.</p>
    #   @return [String]
    # @!attribute authentication_material
    #   <p>The authentication material required for connecting to the discovered device, such as credentials or tokens.</p>
    #   @return [String]
    class DiscoveredDeviceSummary < Struct.new(
      nil,
      :connector_device_id,
      :connector_device_name,
      :device_types,
      :managed_thing_id,
      :modification,
      :discovered_at,
      :brand,
      :model,
      :authentication_material,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for an endpoint, which defines how to connect to and communicate with external services.</p>
    # @!attribute lambda
    #   <p>The Lambda function configuration for the endpoint, used when the endpoint communicates through an AWS Lambda function.</p>
    #   @return [Types::LambdaConfig]
    class EndpointConfig < Struct.new(
      nil,
      :lambda,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List of event log configurations.</p>
    # @!attribute id
    #   <p>The identifier of the event log configuration.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource for the event log configuration.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource for the event log configuration.</p>
    #   @return [String]
    # @!attribute event_log_level
    #   <p>The logging level for the event log configuration.</p>
    #   @return [String]
    class EventLogConfigurationSummary < Struct.new(
      nil,
      :id,
      :resource_type,
      :resource_id,
      :event_log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing exponential rate of rollout for an over-the-air (OTA) task.</p>
    # @!attribute base_rate_per_minute
    #   <p>The base rate per minute for the rollout of an over-the-air (OTA) task.</p>
    #   @return [Integer]
    # @!attribute increment_factor
    #   <p>The incremental factor for increasing the rollout rate of an over-the-air (OTA) task.</p>
    #   @return [Float]
    # @!attribute rate_increase_criteria
    #   <p>The criteria for increasing the rollout rate of an over-the-air (OTA) task.</p>
    #   @return [Types::RolloutRateIncreaseCriteria]
    class ExponentialRolloutRate < Struct.new(
      nil,
      :base_rate_per_minute,
      :increment_factor,
      :rate_increase_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The General Authorization reference by authorization material name.</p>
    # @!attribute auth_material_name
    #   <p>The name of the authorization material.</p>
    #   @return [String]
    class GeneralAuthorizationName < Struct.new(
      nil,
      :auth_material_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The General Authorization update information containing authorization materials to add or update.</p>
    # @!attribute auth_materials_to_add
    #   <p>The authorization materials to add.</p>
    #   @return [Array<Types::AuthMaterial>]
    # @!attribute auth_materials_to_update
    #   <p>The authorization materials to update.</p>
    #   @return [Array<Types::AuthMaterial>]
    class GeneralAuthorizationUpdate < Struct.new(
      nil,
      :auth_materials_to_add,
      :auth_materials_to_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_association_id
    #   <p>The unique identifier of the account association to retrieve.</p>
    #   @return [String]
    class GetAccountAssociationRequest < Struct.new(
      nil,
      :account_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_association_id
    #   <p>The unique identifier of the retrieved account association.</p>
    #   @return [String]
    # @!attribute association_state
    #   <p>The current status state for the account association.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message explaining the current account association error.</p>
    #   @return [String]
    # @!attribute connector_destination_id
    #   <p>The identifier of the connector destination associated with this account association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the account association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the account association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account association.</p>
    #   @return [String]
    # @!attribute o_auth_authorization_url
    #   <p>Third party IoT platform OAuth authorization server URL backed with all the required parameters to perform end-user authentication. This field will be empty when using General Authorization flows that do not require OAuth.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the account association.</p>
    #   @return [Hash<String, String>]
    # @!attribute general_authorization
    #   <p>The General Authorization reference by authorization material name.</p>
    #   @return [Types::GeneralAuthorizationName]
    class GetAccountAssociationResponse < Struct.new(
      nil,
      :account_association_id,
      :association_state,
      :error_message,
      :connector_destination_id,
      :name,
      :description,
      :arn,
      :o_auth_authorization_url,
      :tags,
      :general_authorization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:o_auth_authorization_url] = '' unless options.key?(:o_auth_authorization_url)
        super
      end
    end

    # @!attribute identifier
    #   <p>The identifier of the C2C connector.</p>
    #   @return [String]
    class GetCloudConnectorRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The display name of the C2C connector.</p>
    #   @return [String]
    # @!attribute endpoint_config
    #   <p>The configuration details for the cloud connector endpoint, including connection parameters and authentication requirements.</p>
    #   @return [Types::EndpointConfig]
    # @!attribute description
    #   <p>A description of the C2C connector.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint used for the cloud connector, which defines how the connector communicates with external services.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the cloud connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of cloud connector created.</p>
    #   @return [String]
    class GetCloudConnectorResponse < Struct.new(
      nil,
      :name,
      :endpoint_config,
      :description,
      :endpoint_type,
      :id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the C2C connector destination.</p>
    #   @return [String]
    class GetConnectorDestinationRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The display name of the connector destination.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the connector destination.</p>
    #   @return [String]
    # @!attribute cloud_connector_id
    #   <p>The identifier of the C2C connector.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the connector destination.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authentication type used for the connector destination, which determines how credentials and access are managed.</p>
    #   @return [String]
    # @!attribute auth_config
    #   <p>The authentication configuration details for the connector destination, including OAuth settings and other authentication parameters.</p>
    #   @return [Types::AuthConfig]
    # @!attribute secrets_manager
    #   <p>The AWS Secrets Manager configuration used to securely store and manage sensitive information for the connector destination.</p>
    #   @return [Types::SecretsManager]
    # @!attribute o_auth_complete_redirect_url
    #   <p>The URL where users are redirected after completing the OAuth authorization process for the connector destination.</p>
    #   @return [String]
    class GetConnectorDestinationResponse < Struct.new(
      nil,
      :name,
      :description,
      :cloud_connector_id,
      :id,
      :auth_type,
      :auth_config,
      :secrets_manager,
      :o_auth_complete_redirect_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the credential locker.</p>
    #   @return [String]
    class GetCredentialLockerRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the credential locker.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the credential locker.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the credential locker.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the credential locker requset occurred.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the credential locker.</p>
    #   @return [Hash<String, String>]
    class GetCredentialLockerResponse < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :created_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetCustomEndpointRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_address
    #   <p>The IoT managed integrations dedicated, custom endpoint for the device to route traffic through.</p>
    #   @return [String]
    class GetCustomEndpointResponse < Struct.new(
      nil,
      :endpoint_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetDefaultEncryptionConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_status
    #   <p>Provides the status of the default encryption configuration for an Amazon Web Services account.</p>
    #   @return [Types::ConfigurationStatus]
    # @!attribute encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS encryption if you use <code>KMS_BASED_ENCRYPTION</code>.</p>
    #   @return [String]
    class GetDefaultEncryptionConfigurationResponse < Struct.new(
      nil,
      :configuration_status,
      :encryption_type,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the customer-managed destination.</p>
    #   @return [String]
    class GetDestinationRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute delivery_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute delivery_destination_type
    #   <p>The destination type for the customer-managed destination.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery destination role.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the destination creation requset occurred.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp value of when the destination update requset occurred.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the customer-managed destination.</p>
    #   @deprecated
    #     Tags has been deprecated from this api
    #     Since: 06-25-2025
    #   @return [Hash<String, String>]
    class GetDestinationResponse < Struct.new(
      nil,
      :description,
      :delivery_destination_arn,
      :delivery_destination_type,
      :name,
      :role_arn,
      :created_at,
      :updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the device discovery job request.</p>
    #   @return [String]
    class GetDeviceDiscoveryRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The id of the device discovery job request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the device discovery job request.</p>
    #   @return [String]
    # @!attribute discovery_type
    #   <p>The discovery type supporting the type of device to be discovered in the device discovery job request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the device discovery job request.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp value for the start time of the device discovery.</p>
    #   @return [Time]
    # @!attribute controller_id
    #   <p>The id of the end-user's IoT hub.</p>
    #   @return [String]
    # @!attribute connector_association_id
    #   <p>The ID tracking the current discovery process for one connector association.</p>
    #   @deprecated
    #     ConnectorAssociationId has been deprecated
    #     Since: 2025-06-25
    #   @return [String]
    # @!attribute account_association_id
    #   <p>The identifier of the account association used for the device discovery.</p>
    #   @return [String]
    # @!attribute finished_at
    #   <p>The timestamp value for the completion time of the device discovery.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the device discovery request.</p>
    #   @deprecated
    #     Tags have been deprecated from this api
    #     Since: 06-25-2025
    #   @return [Hash<String, String>]
    class GetDeviceDiscoveryResponse < Struct.new(
      nil,
      :id,
      :arn,
      :discovery_type,
      :status,
      :started_at,
      :controller_id,
      :connector_association_id,
      :account_association_id,
      :finished_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the event log configuration.</p>
    #   @return [String]
    class GetEventLogConfigurationRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the event log configuration.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource for the event log configuration.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource for the event log configuration.</p>
    #   @return [String]
    # @!attribute event_log_level
    #   <p>The logging level for the event log configuration.</p>
    #   @return [String]
    class GetEventLogConfigurationResponse < Struct.new(
      nil,
      :id,
      :resource_type,
      :resource_id,
      :event_log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetHubConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute hub_token_timer_expiry_setting_in_seconds
    #   <p>A user-defined integer value that represents the hub token timer expiry setting in seconds.</p>
    #   @return [Integer]
    # @!attribute updated_at
    #   <p>The timestamp value of when the hub configuration was updated.</p>
    #   @return [Time]
    class GetHubConfigurationResponse < Struct.new(
      nil,
      :hub_token_timer_expiry_setting_in_seconds,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the device.</p>
    #   @return [String]
    class GetManagedThingCapabilitiesRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The id of the device.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The capabilities of the device such as light bulb.</p>
    #   @deprecated
    #     Capabilities has been deprecated, use CapabilityReport instead
    #     Since: 06-25-2025
    #   @return [String]
    # @!attribute capability_report
    #   <p>A report of the capabilities for the managed thing.</p>
    #   @return [Types::CapabilityReport]
    class GetManagedThingCapabilitiesResponse < Struct.new(
      nil,
      :managed_thing_id,
      :capabilities,
      :capability_report,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the managed thing.</p>
    #   @return [String]
    class GetManagedThingCertificateRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The identifier of the managed thing.</p>
    #   @return [String]
    # @!attribute certificate_pem
    #   <p>The PEM-encoded certificate for the managed thing.</p>
    #   @return [String]
    class GetManagedThingCertificateResponse < Struct.new(
      nil,
      :managed_thing_id,
      :certificate_pem,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of a managed thing.</p>
    #   @return [String]
    class GetManagedThingConnectivityDataRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The id of a managed thing.</p>
    #   @return [String]
    # @!attribute connected
    #   <p>The connectivity status for a managed thing.</p>
    #   @return [Boolean]
    # @!attribute timestamp
    #   <p>The timestamp value of when the connectivity status for a managed thing was last taken.</p>
    #   @return [Time]
    # @!attribute disconnect_reason
    #   <p>The reason for the connectivity disconnect with the managed thing.</p>
    #   @return [String]
    class GetManagedThingConnectivityDataResponse < Struct.new(
      nil,
      :managed_thing_id,
      :connected,
      :timestamp,
      :disconnect_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The managed thing id.</p>
    #   @return [String]
    class GetManagedThingMetaDataRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The managed thing id.</p>
    #   @return [String]
    # @!attribute meta_data
    #   <p>The metadata for the managed thing.</p>
    #   @return [Hash<String, String>]
    class GetManagedThingMetaDataResponse < Struct.new(
      nil,
      :managed_thing_id,
      :meta_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the managed thing.</p>
    #   @return [String]
    class GetManagedThingRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The id of the managed thing.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the managed thing.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>Owner of the device, usually an indication of whom the device belongs to. This value should not contain personal identifiable information.</p>
    #   @return [String]
    # @!attribute credential_locker_id
    #   <p>The identifier of the credential locker for the managed thing.</p>
    #   @return [String]
    # @!attribute advertised_product_id
    #   <p>The id of the advertised product.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The type of device used. This will be the Amazon Web Services hub controller, cloud device, or IoT device.</p>
    #   @return [String]
    # @!attribute provisioning_status
    #   <p>The provisioning status of the device in the provisioning workflow for onboarding to IoT managed integrations. For more information, see <a href="https://docs.aws.amazon.com/iot-mi/latest/devguide/device-provisioning.html">Device Provisioning</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the managed thing representing the physical device.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of the device.</p>
    #   @return [String]
    # @!attribute brand
    #   <p>The brand of the device.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number of the device.</p>
    #   @return [String]
    # @!attribute universal_product_code
    #   <p>The universal product code (UPC) of the device model. The UPC is typically used in the United States of America and Canada.</p>
    #   @return [String]
    # @!attribute international_article_number
    #   <p>The unique 13 digit number that identifies the managed thing.</p>
    #   @return [String]
    # @!attribute connector_policy_id
    #   <p>The id of the connector policy.</p> <note> <p>This parameter is used for cloud-to-cloud devices only.</p> </note>
    #   @deprecated
    #     ConnectorPolicyId is deprecated
    #     Since: 2025-06-25
    #   @return [String]
    # @!attribute connector_destination_id
    #   <p>The identifier of the connector destination associated with this managed thing.</p>
    #   @return [String]
    # @!attribute connector_device_id
    #   <p>The third-party device id as defined by the connector. This device id must not contain personal identifiable information (PII).</p> <note> <p>This parameter is used for cloud-to-cloud devices only.</p> </note>
    #   @return [String]
    # @!attribute device_specific_key
    #   <p>A Zwave device-specific key used during device activation.</p> <note> <p>This parameter is used for Zwave devices only.</p> </note>
    #   @return [String]
    # @!attribute mac_address
    #   <p>The media access control (MAC) address for the device represented by the managed thing.</p> <note> <p>This parameter is used for Zigbee devices only.</p> </note>
    #   @return [String]
    # @!attribute parent_controller_id
    #   <p>Id of the controller device used for the discovery job.</p>
    #   @return [String]
    # @!attribute classification
    #   <p>The classification of the managed thing such as light bulb or thermostat.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the device creation request occurred.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp value of when the managed thing was last updated at.</p>
    #   @return [Time]
    # @!attribute activated_at
    #   <p>The timestampe value of when the device was activated.</p>
    #   @return [Time]
    # @!attribute hub_network_mode
    #   <p>The network mode for the hub-connected device.</p>
    #   @return [String]
    # @!attribute meta_data
    #   <p>The metadata for the managed thing.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the managed thing.</p>
    #   @return [Hash<String, String>]
    # @!attribute wi_fi_simple_setup_configuration
    #   <p>The Wi-Fi Simple Setup configuration for the managed thing, which defines provisioning capabilities and timeout settings.</p>
    #   @return [Types::WiFiSimpleSetupConfiguration]
    class GetManagedThingResponse < Struct.new(
      nil,
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
      :tags,
      :wi_fi_simple_setup_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The id of the device.</p>
    #   @return [String]
    class GetManagedThingStateRequest < Struct.new(
      nil,
      :managed_thing_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoints
    #   <p>The device endpoint.</p>
    #   @return [Array<Types::StateEndpoint>]
    class GetManagedThingStateResponse < Struct.new(
      nil,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    #   @return [String]
    class GetNotificationConfigurationRequest < Struct.new(
      nil,
      :event_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the destination for the notification configuration.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the notification configuration was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp value of when the notification configuration was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the notification configuration.</p>
    #   @deprecated
    #     Tags has been deprecated for this api
    #     Since: 06-25-2025
    #   @return [Hash<String, String>]
    class GetNotificationConfigurationResponse < Struct.new(
      nil,
      :event_type,
      :destination_name,
      :created_at,
      :updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The over-the-air (OTA) task configuration id.</p>
    #   @return [String]
    class GetOtaTaskConfigurationRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_configuration_id
    #   <p>The over-the-air (OTA) task configuration id.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    # @!attribute push_config
    #   <p>Describes the type of configuration used for the over-the-air (OTA) task.</p>
    #   @return [Types::PushConfig]
    # @!attribute description
    #   <p>A description of the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the over-the-air (OTA) task configuration was created at.</p>
    #   @return [Time]
    class GetOtaTaskConfigurationResponse < Struct.new(
      nil,
      :task_configuration_id,
      :name,
      :push_config,
      :description,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The over-the-air (OTA) task id.</p>
    #   @return [String]
    class GetOtaTaskRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The id of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the over-the-air (OTA) task</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute s3_url
    #   <p>The URL to the Amazon S3 bucket where the over-the-air (OTA) task is stored.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The connection protocol the over-the-air (OTA) task uses to update the device.</p>
    #   @return [String]
    # @!attribute ota_type
    #   <p>The frequency type for the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute ota_target_query_string
    #   <p>The query string to add things to the thing group.</p>
    #   @return [String]
    # @!attribute ota_mechanism
    #   <p>The deployment mechanism for the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The device targeted for the over-the-air (OTA) task.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The timestamp value of when the over-the-air (OTA) task was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp value of when the over-the-air (OTA) task was last updated at.</p>
    #   @return [Time]
    # @!attribute task_configuration_id
    #   <p>The identifier for the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    # @!attribute task_processing_details
    #   <p>The processing details of all over-the-air (OTA) tasks.</p>
    #   @return [Types::TaskProcessingDetails]
    # @!attribute ota_scheduling_config
    #   <p>Over-the-air (OTA) task scheduling config.</p>
    #   @return [Types::OtaTaskSchedulingConfig]
    # @!attribute ota_task_execution_retry_config
    #   <p>Over-the-air (OTA) task retry config.</p>
    #   @return [Types::OtaTaskExecutionRetryConfig]
    # @!attribute status
    #   <p>The status of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the over-the-air (OTA) task.</p>
    #   @return [Hash<String, String>]
    class GetOtaTaskResponse < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of a provisioning profile.</p>
    #   @return [String]
    class GetProvisioningProfileRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the provisioning profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the provisioning profile.</p>
    #   @return [String]
    # @!attribute provisioning_type
    #   <p>The type of provisioning workflow the device uses for onboarding to IoT managed integrations.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The provisioning profile id.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a provisioning profile.</p>
    #   @return [String]
    # @!attribute claim_certificate
    #   <p>The body of the PEM-encoded claim certificate.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the provisioning profile.</p>
    #   @return [Hash<String, String>]
    class GetProvisioningProfileResponse < Struct.new(
      nil,
      :arn,
      :name,
      :provisioning_type,
      :id,
      :status,
      :claim_certificate,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The id for a managed thing.</p>
    #   @return [String]
    class GetRuntimeLogConfigurationRequest < Struct.new(
      nil,
      :managed_thing_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The id for a managed thing.</p>
    #   @return [String]
    # @!attribute runtime_log_configurations
    #   <p>The runtime log configuration for a managed thing.</p>
    #   @return [Types::RuntimeLogConfigurations]
    class GetRuntimeLogConfigurationResponse < Struct.new(
      nil,
      :managed_thing_id,
      :runtime_log_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of schema version.</p>
    #   @return [String]
    # @!attribute schema_versioned_id
    #   <p>Schema id with a version specified. If the version is missing, it defaults to latest version.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the schema version.</p>
    #   @return [String]
    class GetSchemaVersionRequest < Struct.new(
      nil,
      :type,
      :schema_versioned_id,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>The id of the schema version.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of schema version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the schema version.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the schema version.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The schema version. If this is left blank, it defaults to the latest version.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility of the schema version.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema of the schema version.</p>
    #   @return [JSON]
    class GetSchemaVersionResponse < Struct.new(
      nil,
      :schema_id,
      :type,
      :description,
      :namespace,
      :semantic_version,
      :visibility,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error has occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Internal error from the service that indicates an unexpected error or that the service is unavailable.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for an AWS Lambda function used as an endpoint for a cloud connector.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function used as an endpoint.</p>
    #   @return [String]
    class LambdaConfig < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds a service limit or quota. Adjust your request parameters and try again.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_destination_id
    #   <p>The identifier of the connector destination to filter account associations by.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of account associations to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination of results.</p>
    #   @return [String]
    class ListAccountAssociationsRequest < Struct.new(
      nil,
      :connector_destination_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of account associations that match the specified criteria.</p>
    #   @return [Array<Types::AccountAssociationItem>]
    # @!attribute next_token
    #   <p>A token used for pagination of results when there are more account associations than can be returned in a single response.</p>
    #   @return [String]
    class ListAccountAssociationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of cloud connectors to filter by when listing available connectors.</p>
    #   @return [String]
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function to filter cloud connectors by.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListCloudConnectorsRequest < Struct.new(
      nil,
      :type,
      :lambda_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of connectors.</p>
    #   @return [Array<Types::ConnectorItem>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListCloudConnectorsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cloud_connector_id
    #   <p>The identifier of the cloud connector to filter connector destinations by.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token used for pagination of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of connector destinations to return in a single response.</p>
    #   @return [Integer]
    class ListConnectorDestinationsRequest < Struct.new(
      nil,
      :cloud_connector_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_destination_list
    #   <p>The list of connector destinations that match the specified criteria.</p>
    #   @return [Array<Types::ConnectorDestinationSummary>]
    # @!attribute next_token
    #   <p>A token used for pagination of results when there are more connector destinations than can be returned in a single response.</p>
    #   @return [String]
    class ListConnectorDestinationsResponse < Struct.new(
      nil,
      :connector_destination_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListCredentialLockersRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of credential lockers.</p>
    #   @return [Array<Types::CredentialLockerSummary>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListCredentialLockersResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListDestinationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_list
    #   <p>The list of destinations.</p>
    #   @return [Array<Types::DestinationSummary>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListDestinationsResponse < Struct.new(
      nil,
      :destination_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token used for pagination of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of device discovery jobs to return in a single response.</p>
    #   @return [Integer]
    # @!attribute type_filter
    #   <p>The discovery type to filter device discovery jobs by.</p>
    #   @return [String]
    # @!attribute status_filter
    #   <p>The status to filter device discovery jobs by.</p>
    #   @return [String]
    class ListDeviceDiscoveriesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :type_filter,
      :status_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of device discovery jobs that match the specified criteria.</p>
    #   @return [Array<Types::DeviceDiscoverySummary>]
    # @!attribute next_token
    #   <p>A token used for pagination of results when there are more device discovery jobs than can be returned in a single response.</p>
    #   @return [String]
    class ListDeviceDiscoveriesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the device discovery job to list discovered devices for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token used for pagination of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of discovered devices to return in a single response.</p>
    #   @return [Integer]
    class ListDiscoveredDevicesRequest < Struct.new(
      nil,
      :identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of discovered devices that match the specified criteria.</p>
    #   @return [Array<Types::DiscoveredDeviceSummary>]
    # @!attribute next_token
    #   <p>A token used for pagination of results when there are more discovered devices than can be returned in a single response.</p>
    #   @return [String]
    class ListDiscoveredDevicesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListEventLogConfigurationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_log_configuration_list
    #   <p>A list of each event log configuration and pertinent information.</p>
    #   @return [Array<Types::EventLogConfigurationSummary>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListEventLogConfigurationsResponse < Struct.new(
      nil,
      :event_log_configuration_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The identifier of the managed thing to list account associations for.</p>
    #   @return [String]
    # @!attribute account_association_id
    #   <p>The identifier of the account association to filter results by. When specified, only associations with this account association ID will be returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of account associations to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination of results.</p>
    #   @return [String]
    class ListManagedThingAccountAssociationsRequest < Struct.new(
      nil,
      :managed_thing_id,
      :account_association_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of managed thing associations that match the specified criteria, including the managed thing ID and account association ID for each association.</p>
    #   @return [Array<Types::ManagedThingAssociation>]
    # @!attribute next_token
    #   <p>A token used for pagination of results when there are more account associations than can be returned in a single response.</p>
    #   @return [String]
    class ListManagedThingAccountAssociationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The managed thing id.</p>
    #   @return [String]
    # @!attribute endpoint_id_filter
    #   <p>Filter on an endpoint id.</p>
    #   @return [String]
    # @!attribute capability_id_filter
    #   <p>Filter on a capability id.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListManagedThingSchemasRequest < Struct.new(
      nil,
      :identifier,
      :endpoint_id_filter,
      :capability_id_filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of managed thing schemas.</p>
    #   @return [Array<Types::ManagedThingSchemaListItem>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListManagedThingSchemasResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner_filter
    #   <p>Filter on device owners when listing managed things.</p>
    #   @return [String]
    # @!attribute credential_locker_filter
    #   <p>Filter on a credential locker for a managed thing.</p>
    #   @return [String]
    # @!attribute role_filter
    #   <p>Filter on the type of device used. This will be the Amazon Web Services hub controller, cloud device, or IoT device.</p>
    #   @return [String]
    # @!attribute parent_controller_identifier_filter
    #   <p>Filter on a parent controller id for a managed thing.</p>
    #   @return [String]
    # @!attribute connector_policy_id_filter
    #   <p>Filter on a connector policy id for a managed thing.</p>
    #   @deprecated
    #     ConnectorPolicyIdFilter is deprecated
    #     Since: 06-25-2025
    #   @return [String]
    # @!attribute connector_destination_id_filter
    #   <p>Filter managed things by the connector destination ID they are associated with.</p>
    #   @return [String]
    # @!attribute connector_device_id_filter
    #   <p>Filter managed things by the connector device ID they are associated with. When specified, only managed things with this connector device ID will be returned.</p>
    #   @return [String]
    # @!attribute serial_number_filter
    #   <p>Filter on the serial number of the device.</p>
    #   @return [String]
    # @!attribute provisioning_status_filter
    #   <p>Filter on the status of the device. For more information, see <a href="https://docs.aws.amazon.com/iot-mi/latest/devguide/device-provisioning.html">Device Provisioning</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListManagedThingsRequest < Struct.new(
      nil,
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
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of managed things.</p>
    #   @return [Array<Types::ManagedThingSummary>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListManagedThingsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListNotificationConfigurationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_configuration_list
    #   <p>The list of notification configurations.</p>
    #   @return [Array<Types::NotificationConfigurationSummary>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListNotificationConfigurationsResponse < Struct.new(
      nil,
      :notification_configuration_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListOtaTaskConfigurationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of the over-the-air (OTA) task configurations.</p>
    #   @return [Array<Types::OtaTaskConfigurationSummary>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListOtaTaskConfigurationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The over-the-air (OTA) task id.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListOtaTaskExecutionsRequest < Struct.new(
      nil,
      :identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_summaries
    #   <p>A list of all of the over-the-air (OTA) task executions.</p>
    #   @return [Array<Types::OtaTaskExecutionSummaries>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListOtaTaskExecutionsResponse < Struct.new(
      nil,
      :execution_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListOtaTasksRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tasks
    #   <p>A list of all of the over-the-air (OTA) tasks.</p>
    #   @return [Array<Types::OtaTaskSummary>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListOtaTasksResponse < Struct.new(
      nil,
      :tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListProvisioningProfilesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of provisioning profiles.</p>
    #   @return [Array<Types::ProvisioningProfileSummary>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListProvisioningProfilesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>Filter on the type of schema version.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute schema_id
    #   <p>Filter on the id of the schema version.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>Filter on the name of the schema version.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility of the schema version.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The schema version. If this is left blank, it defaults to the latest version.</p>
    #   @return [String]
    class ListSchemaVersionsRequest < Struct.new(
      nil,
      :type,
      :max_results,
      :next_token,
      :schema_id,
      :namespace,
      :visibility,
      :semantic_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of schema versions.</p>
    #   @return [Array<Types::SchemaVersionListItem>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    #   @return [String]
    class ListSchemaVersionsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing an association between a managed thing and an account association, which connects a device to a third-party account.</p>
    # @!attribute managed_thing_id
    #   <p>The identifier of the managed thing in the association.</p>
    #   @return [String]
    # @!attribute account_association_id
    #   <p>The identifier of the account association in the association.</p>
    #   @return [String]
    # @!attribute managed_thing_association_status
    #   <p>The status of the registration between the managed thing and the account association. Indicates whether the device is pre-associated or fully associated with the account association.</p>
    #   @return [String]
    class ManagedThingAssociation < Struct.new(
      nil,
      :managed_thing_id,
      :account_association_id,
      :managed_thing_association_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing one schema item associated with a managed thing.</p>
    # @!attribute endpoint_id
    #   <p>The id of the endpoint for a managed thing.</p>
    #   @return [String]
    # @!attribute capability_id
    #   <p>The id of the capability for a managed thing.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The validation schema for one schema item associated with a managed thing.</p>
    #   @return [JSON]
    class ManagedThingSchemaListItem < Struct.new(
      nil,
      :endpoint_id,
      :capability_id,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing one managed thing.</p>
    # @!attribute id
    #   <p>The id of the device.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the managed thing.</p>
    #   @return [String]
    # @!attribute advertised_product_id
    #   <p>The id of the advertised product.</p>
    #   @return [String]
    # @!attribute brand
    #   <p>The brand of the device.</p>
    #   @return [String]
    # @!attribute classification
    #   <p>The classification of the managed thing such as light bulb or thermostat.</p>
    #   @return [String]
    # @!attribute connector_device_id
    #   <p>The third-party device id as defined by the connector. This device id must not contain personal identifiable information (PII).</p> <note> <p>This parameter is used for cloud-to-cloud devices only.</p> </note>
    #   @return [String]
    # @!attribute connector_policy_id
    #   <p>The id of the connector policy.</p> <note> <p>This parameter is used for cloud-to-cloud devices only.</p> </note>
    #   @deprecated
    #     ConnectorPolicyId has been deprecated
    #     Since: 06-25-2025
    #   @return [String]
    # @!attribute connector_destination_id
    #   <p>The identifier of the connector destination associated with this managed thing, if applicable.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of the device.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the managed thing representing the physical device.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>Owner of the device, usually an indication of whom the device belongs to. This value should not contain personal identifiable information.</p>
    #   @return [String]
    # @!attribute credential_locker_id
    #   <p>The identifier of the credential locker for the managed thing.</p>
    #   @return [String]
    # @!attribute parent_controller_id
    #   <p>Id of the controller device used for the discovery job.</p>
    #   @return [String]
    # @!attribute provisioning_status
    #   <p>The provisioning status of the device in the provisioning workflow for onboarding to IoT managed integrations. For more information, see <a href="https://docs.aws.amazon.com/iot-mi/latest/devguide/device-provisioning.html">Device Provisioning</a>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The type of device used. This will be the Amazon Web Services hub controller, cloud device, or IoT device.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number of the device.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the device creation request occurred.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp value of when the managed thing was last updated at.</p>
    #   @return [Time]
    # @!attribute activated_at
    #   <p>The timestampe value of when the managed thing was activated at.</p>
    #   @return [Time]
    class ManagedThingSummary < Struct.new(
      nil,
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
      :activated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Matter based capability report.</p>
    # @!attribute version
    #   <p>The version of the capability report.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The numeric identifier of the node.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The endpoints used in the capability report.</p>
    #   @return [Array<Types::MatterCapabilityReportEndpoint>]
    class MatterCapabilityReport < Struct.new(
      nil,
      :version,
      :node_id,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Matter attribute used in capability report.</p>
    # @!attribute id
    #   <p>The id of the Matter attribute.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the Amazon Web Services Matter capability report attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value for the Amazon Web Services Matter capability report attribute.</p>
    #   @return [JSON]
    class MatterCapabilityReportAttribute < Struct.new(
      nil,
      :id,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Capability used in Matter capability report.</p>
    # @!attribute id
    #   <p>The id of the Amazon Web Services Matter capability report cluster.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The id of the revision for the Amazon Web Services Matter capability report.</p>
    #   @return [Integer]
    # @!attribute public_id
    #   <p>The id of the schema version.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The capability name used in the Amazon Web Services Matter capability report.</p>
    #   @return [String]
    # @!attribute spec_version
    #   <p>The spec version used in the Amazon Web Services Matter capability report.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The attributes of the Amazon Web Services Matter capability report.</p>
    #   @return [Array<Types::MatterCapabilityReportAttribute>]
    # @!attribute commands
    #   <p>The commands used with the Amazon Web Services Matter capability report.</p>
    #   @return [Array<String>]
    # @!attribute events
    #   <p>The events used with the Amazon Web Services Matter capability report.</p>
    #   @return [Array<String>]
    # @!attribute feature_map
    #   <p>32 bit-map used to indicate which features a cluster supports.</p>
    #   @return [Integer]
    # @!attribute generated_commands
    #   <p>Matter clusters used in capability report.</p>
    #   @return [Array<String>]
    # @!attribute fabric_index
    #   <p>The fabric index for the Amazon Web Services Matter capability report.</p>
    #   @return [Integer]
    class MatterCapabilityReportCluster < Struct.new(
      nil,
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
      :fabric_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Matter endpoint used in capability report.</p>
    # @!attribute id
    #   <p>The id of the Amazon Web Services Matter capability report endpoint.</p>
    #   @return [String]
    # @!attribute device_types
    #   <p>The type of device.</p>
    #   @return [Array<String>]
    # @!attribute clusters
    #   <p>Matter clusters used in capability report.</p>
    #   @return [Array<Types::MatterCapabilityReportCluster>]
    # @!attribute parts
    #   <p>Heirachy of child endpoints contained in the given endpoint.</p>
    #   @return [Array<String>]
    # @!attribute semantic_tags
    #   <p>Semantic information related to endpoint.</p>
    #   @return [Array<String>]
    # @!attribute client_clusters
    #   <p>Semantic information related to endpoint.</p>
    #   @return [Array<String>]
    class MatterCapabilityReportEndpoint < Struct.new(
      nil,
      :id,
      :device_types,
      :clusters,
      :parts,
      :semantic_tags,
      :client_clusters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describe a Matter cluster with an id, and the relevant attributes, commands, and events.</p>
    # @!attribute id
    #   <p>The cluster id.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The Matter attributes.</p>
    #   @return [JSON]
    # @!attribute commands
    #   <p>Describe the Matter commands with the Matter command identifier mapped to the command fields.</p>
    #   @return [Hash<String, JSON>]
    # @!attribute events
    #   <p>Describe the Matter events with the Matter event identifier mapped to the event fields.</p>
    #   @return [Hash<String, JSON>]
    class MatterCluster < Struct.new(
      nil,
      :id,
      :attributes,
      :commands,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure describing a managed thing.</p>
    # @!attribute id
    #   <p>The Matter endpoint id.</p>
    #   @return [String]
    # @!attribute clusters
    #   <p>A list of Matter clusters for a managed thing.</p>
    #   @return [Array<Types::MatterCluster>]
    class MatterEndpoint < Struct.new(
      nil,
      :id,
      :clusters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure describing a notification configuration.</p>
    # @!attribute event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the destination for the notification configuration.</p>
    #   @return [String]
    class NotificationConfigurationSummary < Struct.new(
      nil,
      :event_type,
      :destination_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for OAuth authentication with a third-party service.</p>
    # @!attribute auth_url
    #   <p>The authorization URL for the OAuth service, where users are directed to authenticate and authorize access.</p>
    #   @return [String]
    # @!attribute token_url
    #   <p>The token URL for the OAuth service, where authorization codes are exchanged for access tokens.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The OAuth scopes requested during authorization, which define the permissions granted to the application.</p>
    #   @return [String]
    # @!attribute token_endpoint_authentication_scheme
    #   <p>The authentication scheme used when requesting tokens from the token endpoint.</p>
    #   @return [String]
    # @!attribute o_auth_complete_redirect_url
    #   <p>The URL where users are redirected after completing the OAuth authorization process.</p>
    #   @return [String]
    # @!attribute proactive_refresh_token_renewal
    #   <p>Configuration for proactively refreshing OAuth tokens before they expire.</p>
    #   @return [Types::ProactiveRefreshTokenRenewal]
    class OAuthConfig < Struct.new(
      nil,
      :auth_url,
      :token_url,
      :scope,
      :token_endpoint_authentication_scheme,
      :o_auth_complete_redirect_url,
      :proactive_refresh_token_renewal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure containing updated OAuth configuration settings.</p>
    # @!attribute o_auth_complete_redirect_url
    #   <p>The updated URL where users are redirected after completing the OAuth authorization process.</p>
    #   @return [String]
    # @!attribute proactive_refresh_token_renewal
    #   <p>Updated configuration for proactively refreshing OAuth tokens before they expire.</p>
    #   @return [Types::ProactiveRefreshTokenRenewal]
    class OAuthUpdate < Struct.new(
      nil,
      :o_auth_complete_redirect_url,
      :proactive_refresh_token_renewal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Over-the-air (OTA) task abort config.</p>
    # @!attribute abort_config_criteria_list
    #   <p>The list of criteria for the abort config.</p>
    #   @return [Array<Types::AbortConfigCriteria>]
    class OtaTaskAbortConfig < Struct.new(
      nil,
      :abort_config_criteria_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing one over-the-air (OTA) task configuration.</p>
    # @!attribute task_configuration_id
    #   <p>The id of the over-the-air (OTA) task configuration</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the over-the-air (OTA) task configuration was created at.</p>
    #   @return [Time]
    class OtaTaskConfigurationSummary < Struct.new(
      nil,
      :task_configuration_id,
      :name,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Over-the-air (OTA) task retry config.</p>
    # @!attribute retry_config_criteria
    #   <p>The list of retry config criteria.</p>
    #   @return [Array<Types::RetryConfigCriteria>]
    class OtaTaskExecutionRetryConfig < Struct.new(
      nil,
      :retry_config_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Over-the-air (OTA) task rollout config.</p>
    # @!attribute exponential_rollout_rate
    #   <p>Structure representing exponential rate of rollout for an over-the-air (OTA) task.</p>
    #   @return [Types::ExponentialRolloutRate]
    # @!attribute maximum_per_minute
    #   <p>The maximum number of things that will be notified of a pending task, per minute.</p>
    #   @return [Integer]
    class OtaTaskExecutionRolloutConfig < Struct.new(
      nil,
      :exponential_rollout_rate,
      :maximum_per_minute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing one execution summary.</p>
    # @!attribute task_execution_summary
    #   <p>Structure representing one over-the-air (OTA) task execution summary</p>
    #   @return [Types::OtaTaskExecutionSummary]
    # @!attribute managed_thing_id
    #   <p>The id of a managed thing.</p>
    #   @return [String]
    class OtaTaskExecutionSummaries < Struct.new(
      nil,
      :task_execution_summary,
      :managed_thing_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing one over-the-air (OTA) task execution summary.</p>
    # @!attribute execution_number
    #   <p>The execution number of the over-the-air (OTA) task execution summary.</p>
    #   @return [Integer]
    # @!attribute last_updated_at
    #   <p>The timestamp value of when the over-the-air (OTA) task execution summary was last updated.</p>
    #   @return [Time]
    # @!attribute queued_at
    #   <p>The timestamp value of when the over-the-air (OTA) task execution summary is targeted to start.</p>
    #   @return [Time]
    # @!attribute retry_attempt
    #   <p>The number of retry attempts for starting the over-the-air (OTA) task execution summary after a failed attempt.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The timestamp value of when the over-the-air (OTA) task execution summary started.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the over-the-air (OTA) task execution summary.</p>
    #   @return [String]
    class OtaTaskExecutionSummary < Struct.new(
      nil,
      :execution_number,
      :last_updated_at,
      :queued_at,
      :retry_attempt,
      :started_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Over-the-air (OTA) task scheduling config.</p>
    # @!attribute end_behavior
    #   <p>Specifies the end behavior for all task executions after a task reaches the selected <code>endTime</code>. If <code>endTime</code> is not selected when creating the task, then <code>endBehavior</code> does not apply.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The time an over-the-air (OTA) task will stop.</p>
    #   @return [String]
    # @!attribute maintenance_windows
    #   <p>Maintenance window list for over-the-air (OTA) task scheduling config.</p>
    #   @return [Array<Types::ScheduleMaintenanceWindow>]
    # @!attribute start_time
    #   <p>The time an over-the-air (OTA) task will start.</p>
    #   @return [String]
    class OtaTaskSchedulingConfig < Struct.new(
      nil,
      :end_behavior,
      :end_time,
      :maintenance_windows,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing one over-the-air (OTA) task.</p>
    # @!attribute task_id
    #   <p>The id of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp value of when the over-the-air (OTA) task was created at.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp value of when the over-the-air (OTA) task was last updated at.</p>
    #   @return [Time]
    # @!attribute task_configuration_id
    #   <p>The identifier for the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the over-the-air (OTA) task summary.</p>
    #   @return [String]
    class OtaTaskSummary < Struct.new(
      nil,
      :task_id,
      :task_arn,
      :created_at,
      :last_updated_at,
      :task_configuration_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Over-the-air (OTA) task timeout config.</p>
    # @!attribute in_progress_timeout_in_minutes
    #   <p>Specifies the amount of time the device has to finish execution of this task. The timeout interval can be anywhere between 1 minute and 7 days.</p>
    #   @return [Integer]
    class OtaTaskTimeoutConfig < Struct.new(
      nil,
      :in_progress_timeout_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for proactively refreshing OAuth tokens before they expire.</p>
    # @!attribute enabled
    #   <p>Indicates whether proactive refresh token renewal is enabled.</p>
    #   @return [Boolean]
    # @!attribute days_before_renewal
    #   <p>The days before token expiration when the system should attempt to renew the token, specified in days.</p>
    #   @return [Integer]
    class ProactiveRefreshTokenRenewal < Struct.new(
      nil,
      :enabled,
      :days_before_renewal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure describing a provisioning profile. </p>
    # @!attribute name
    #   <p>The name of the provisioning profile.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the provisioning profile.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the provisioning profile.</p>
    #   @return [String]
    # @!attribute provisioning_type
    #   <p>The type of provisioning workflow the device uses for onboarding to IoT managed integrations.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a provisioning profile.</p>
    #   @return [String]
    class ProvisioningProfileSummary < Struct.new(
      nil,
      :name,
      :id,
      :arn,
      :provisioning_type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing a push config.</p>
    # @!attribute abort_config
    #   <p>Structure representing one abort config.</p>
    #   @return [Types::OtaTaskAbortConfig]
    # @!attribute rollout_config
    #   <p>Structure representing one rollout config.</p>
    #   @return [Types::OtaTaskExecutionRolloutConfig]
    # @!attribute timeout_config
    #   <p>Structure representing one timeout config.</p>
    #   @return [Types::OtaTaskTimeoutConfig]
    class PushConfig < Struct.new(
      nil,
      :abort_config,
      :rollout_config,
      :timeout_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS encryption if you use <code>KMS_BASED_ENCRYPTION</code>.</p>
    #   @return [String]
    class PutDefaultEncryptionConfigurationRequest < Struct.new(
      nil,
      :encryption_type,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_status
    #   <p>Provides the status of the default encryption configuration for an Amazon Web Services account.</p>
    #   @return [Types::ConfigurationStatus]
    # @!attribute encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS encryption if you use <code>KMS_BASED_ENCRYPTION</code>.</p>
    #   @return [String]
    class PutDefaultEncryptionConfigurationResponse < Struct.new(
      nil,
      :configuration_status,
      :encryption_type,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute hub_token_timer_expiry_setting_in_seconds
    #   <p>A user-defined integer value that represents the hub token timer expiry setting in seconds.</p>
    #   @return [Integer]
    class PutHubConfigurationRequest < Struct.new(
      nil,
      :hub_token_timer_expiry_setting_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute hub_token_timer_expiry_setting_in_seconds
    #   <p>A user-defined integer value that represents the hub token timer expiry setting in seconds.</p>
    #   @return [Integer]
    class PutHubConfigurationResponse < Struct.new(
      nil,
      :hub_token_timer_expiry_setting_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The id for a managed thing.</p>
    #   @return [String]
    # @!attribute runtime_log_configurations
    #   <p>The runtime log configuration for a managed thing.</p>
    #   @return [Types::RuntimeLogConfigurations]
    class PutRuntimeLogConfigurationRequest < Struct.new(
      nil,
      :managed_thing_id,
      :runtime_log_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The identifier of the managed thing to register with the account association.</p>
    #   @return [String]
    # @!attribute account_association_id
    #   <p>The identifier of the account association to register with the managed thing.</p>
    #   @return [String]
    # @!attribute device_discovery_id
    #   <p>The identifier of the device discovery job associated with this registration.</p>
    #   @return [String]
    class RegisterAccountAssociationRequest < Struct.new(
      nil,
      :managed_thing_id,
      :account_association_id,
      :device_discovery_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_association_id
    #   <p>The identifier of the account association that was registered.</p>
    #   @return [String]
    # @!attribute device_discovery_id
    #   <p>The identifier of the device discovery job associated with this registration.</p>
    #   @return [String]
    # @!attribute managed_thing_id
    #   <p>The identifier of the managed thing that was registered with the account association.</p>
    #   @return [String]
    class RegisterAccountAssociationResponse < Struct.new(
      nil,
      :account_association_id,
      :device_discovery_id,
      :managed_thing_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RegisterCustomEndpointRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_address
    #   <p>The IoT managed integrations dedicated, custom endpoint for the device to route traffic through.</p>
    #   @return [String]
    class RegisterCustomEndpointResponse < Struct.new(
      nil,
      :endpoint_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The id of a managed thing.</p>
    #   @return [String]
    class ResetRuntimeLogConfigurationRequest < Struct.new(
      nil,
      :managed_thing_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   Id of the affected resource
    #   @return [String]
    # @!attribute resource_type
    #   Type of the affected resource
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing one retry config criteria.</p>
    # @!attribute failure_type
    #   <p>Over-the-air (OTA) retry criteria failure type.</p>
    #   @return [String]
    # @!attribute min_number_of_retries
    #   <p>The number of retries allowed for a failure type for the over-the-air (OTA) task.</p>
    #   @return [Integer]
    class RetryConfigCriteria < Struct.new(
      nil,
      :failure_type,
      :min_number_of_retries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing rollout config criteria.</p>
    # @!attribute number_of_notified_things
    #   <p>The threshold for number of notified things that will initiate the increase in rate of rollout.</p>
    #   @return [Integer]
    # @!attribute number_of_succeeded_things
    #   <p>The threshold for number of succeeded things that will initiate the increase in rate of rollout.</p>
    #   @return [Integer]
    class RolloutRateIncreaseCriteria < Struct.new(
      nil,
      :number_of_notified_things,
      :number_of_succeeded_things,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The different configurations for runtime logs.</p>
    # @!attribute log_level
    #   <p>The different log levels available for configuration.</p>
    #   @return [String]
    # @!attribute log_flush_level
    #   <p>The different log levels available for configuration.</p>
    #   @return [String]
    # @!attribute local_store_location
    #   <p>Configuration of where to store runtime logs in the device.</p>
    #   @return [String]
    # @!attribute local_store_file_rotation_max_files
    #   <p>Configuration to set the maximum number of runtime log files that can be stored on the device before the oldest files are deleted or overwritten.</p>
    #   @return [Integer]
    # @!attribute local_store_file_rotation_max_bytes
    #   <p>Configuration to set the maximum bytes of runtime logs that can be stored on the device before the oldest logs are deleted or overwritten.</p>
    #   @return [Integer]
    # @!attribute upload_log
    #   <p>Configuration to enable or disable uploading of runtime logs to the cloud.</p>
    #   @return [Boolean]
    # @!attribute upload_period_minutes
    #   <p>Configuration to set the time interval in minutes between each batch of runtime logs that the device uploads to the cloud.</p>
    #   @return [Integer]
    # @!attribute delete_local_store_after_upload
    #   <p>Configuration to enable or disable deleting of runtime logs in the device once uploaded to the cloud.</p>
    #   @return [Boolean]
    class RuntimeLogConfigurations < Struct.new(
      nil,
      :log_level,
      :log_flush_level,
      :local_store_location,
      :local_store_file_rotation_max_files,
      :local_store_file_rotation_max_bytes,
      :upload_log,
      :upload_period_minutes,
      :delete_local_store_after_upload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure representing scheduling maintenance window.</p>
    # @!attribute duration_in_minutes
    #   <p>Displays the duration of the next maintenance window.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>Displays the start time of the next maintenance window.</p>
    #   @return [String]
    class ScheduleMaintenanceWindow < Struct.new(
      nil,
      :duration_in_minutes,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List item describing a schema version.</p>
    # @!attribute schema_id
    #   <p>The identifier of the schema version.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of schema version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema version.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the schema version.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The schema version. If this is left blank, it defaults to the latest version.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility of the schema version.</p>
    #   @return [String]
    class SchemaVersionListItem < Struct.new(
      nil,
      :schema_id,
      :type,
      :description,
      :namespace,
      :semantic_version,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for AWS Secrets Manager, used to securely store and manage sensitive information for connector destinations.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the AWS Secrets Manager secret.</p>
    #   @return [String]
    class SecretsManager < Struct.new(
      nil,
      :arn,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The id of the connector between the third-party cloud provider and IoT managed integrations.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The id of the third-party cloud provider.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The Open Connectivity Foundation (OCF) operation requested to be performed on the managed thing.</p> <note> <p>The field op can have a value of "I" or "U". The field "cn" will contain the capability types.</p> </note>
    #   @return [String]
    # @!attribute operation_version
    #   <p>The Open Connectivity Foundation (OCF) security specification version for the operation being requested on the managed thing. For more information, see <a href="https://openconnectivity.org/specs/OCF_Security_Specification_v1.0.0.pdf">OCF Security Specification</a>.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The status code of the Open Connectivity Foundation (OCF) operation being performed on the managed thing.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>The device state change event payload.</p> <p>This parameter will include the following three fields:</p> <ul> <li> <p> <code>uri</code>: <code>schema auc://&lt;PARTNER-DEVICE-ID&gt;/ResourcePath</code> (The <code>Resourcepath</code> corresponds to an OCF resource.)</p> </li> <li> <p> <code>op</code>: For device state changes, this field must populate as <code>n+d</code>.</p> </li> <li> <p> <code>cn</code>: The content depends on the OCF resource referenced in <code>ResourcePath</code>.</p> </li> </ul>
    #   @return [String]
    # @!attribute device_discovery_id
    #   <p>The id for the device discovery job.</p>
    #   @return [String]
    # @!attribute connector_device_id
    #   <p>The third-party device id as defined by the connector. This device id must not contain personal identifiable information (PII).</p> <note> <p>This parameter is used for cloud-to-cloud devices only.</p> </note>
    #   @return [String]
    # @!attribute trace_id
    #   <p>The trace request identifier. This is generated by IoT managed integrations and can be used to trace this command and its related operations in CloudWatch.</p>
    #   @return [String]
    # @!attribute devices
    #   <p>The list of devices.</p>
    #   @return [Array<Types::Device>]
    # @!attribute matter_endpoint
    #   <p>The device endpoint.</p>
    #   @return [Types::MatterEndpoint]
    class SendConnectorEventRequest < Struct.new(
      nil,
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
      :matter_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The id of the connector between the third-party cloud provider and IoT managed integrations.</p>
    #   @return [String]
    class SendConnectorEventResponse < Struct.new(
      nil,
      :connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_thing_id
    #   <p>The id of the device.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The device endpoint.</p>
    #   @return [Array<Types::CommandEndpoint>]
    # @!attribute connector_association_id
    #   <p>The ID tracking the current discovery process for one connector association.</p>
    #   @deprecated
    #     ConnectorAssociationId has been deprecated
    #     Since: 06-25-2025
    #   @return [String]
    # @!attribute account_association_id
    #   <p>The identifier of the account association to use when sending a command to a managed thing.</p>
    #   @return [String]
    class SendManagedThingCommandRequest < Struct.new(
      nil,
      :managed_thing_id,
      :endpoints,
      :connector_association_id,
      :account_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_id
    #   <p>The trace request identifier. This is generated by IoT managed integrations and can be used to trace this command and its related operations in CloudWatch.</p>
    #   @return [String]
    class SendManagedThingCommandResponse < Struct.new(
      nil,
      :trace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service quota has been exceeded for this request.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is temporarily unavailable.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_association_id
    #   <p>The unique identifier of the account association to refresh.</p>
    #   @return [String]
    class StartAccountAssociationRefreshRequest < Struct.new(
      nil,
      :account_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute o_auth_authorization_url
    #   <p>Third-party IoT platform OAuth authorization server URL with all required parameters to perform end-user authentication during the refresh process. This field will be empty when using General Authorization flows that do not require OAuth.</p>
    #   @return [String]
    class StartAccountAssociationRefreshResponse < Struct.new(
      nil,
      :o_auth_authorization_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:o_auth_authorization_url] = '' unless options.key?(:o_auth_authorization_url)
        super
      end
    end

    # @!attribute discovery_type
    #   <p>The discovery type supporting the type of device to be discovered in the device discovery task request.</p>
    #   @return [String]
    # @!attribute custom_protocol_detail
    #   <p>Additional protocol-specific details required for device discovery, which vary based on the discovery type.</p> <note> <p>For a <code>DiscoveryType</code> of <code>CUSTOM</code>, the string-to-string map must have a key value of <code>Name</code> set to a non-empty-string.</p> </note>
    #   @return [Hash<String, String>]
    # @!attribute controller_identifier
    #   <p>The id of the end-user's IoT hub.</p>
    #   @return [String]
    # @!attribute connector_association_identifier
    #   <p>The id of the connector association.</p>
    #   @deprecated
    #     ConnectorAssociationIdentifier is deprecated
    #     Since: 06-25-2025
    #   @return [String]
    # @!attribute account_association_id
    #   <p>The identifier of the cloud-to-cloud account association to use for discovery of third-party devices.</p>
    #   @return [String]
    # @!attribute authentication_material
    #   <p>The authentication material required to start the local device discovery job request.</p>
    #   @return [String]
    # @!attribute authentication_material_type
    #   <p>The type of authentication material used for device discovery jobs.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the device discovery request.</p>
    #   @deprecated
    #     Tags have been deprecated from this api
    #     Since: 06-25-2025
    #   @return [Hash<String, String>]
    # @!attribute connector_device_id_list
    #   <p>Used as a filter for PLA discoveries.</p>
    #   @return [Array<String>]
    # @!attribute protocol
    #   <p>The protocol type for capability rediscovery (ZWAVE, ZIGBEE, or CUSTOM).</p> <note> <p>This parameter is only available when the discovery type is CONTROLLER_CAPABILITY_REDISCOVERY.</p> </note>
    #   @return [String]
    # @!attribute end_device_identifier
    #   <p>The unique id of the end device for capability rediscovery.</p> <note> <p>This parameter is only available when the discovery type is CONTROLLER_CAPABILITY_REDISCOVERY.</p> </note>
    #   @return [String]
    class StartDeviceDiscoveryRequest < Struct.new(
      nil,
      :discovery_type,
      :custom_protocol_detail,
      :controller_identifier,
      :connector_association_identifier,
      :account_association_id,
      :authentication_material,
      :authentication_material_type,
      :client_token,
      :tags,
      :connector_device_id_list,
      :protocol,
      :end_device_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The id of the device discovery job request.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp value for the start time of the device discovery.</p>
    #   @return [Time]
    class StartDeviceDiscoveryResponse < Struct.new(
      nil,
      :id,
      :started_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>State capabilities added for the managed thing.</p>
    # @!attribute id
    #   <p>The id of the managed thing in the capability report.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the Amazon Web Services capability.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version for the Amazon Web Services capability.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>Describe the command capability with the properties it supports.</p>
    #   @return [JSON]
    class StateCapability < Struct.new(
      nil,
      :id,
      :name,
      :version,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describe the endpoint with an Id, a name, and the relevant capabilities for reporting state</p>
    # @!attribute endpoint_id
    #   <p>Numeric identifier of the endpoint</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>Describe the endpoint with an id, a name, and the relevant capabilities for the reporting state.</p>
    #   @return [Array<Types::StateCapability>]
    class StateEndpoint < Struct.new(
      nil,
      :endpoint_id,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which to add tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that are used to manage the resource.</p>
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

    # <p>Details about the over-the-air (OTA) task process.</p>
    # @!attribute number_of_canceled_things
    #   <p>The number of canceled things in an over-the-air (OTA) task.</p>
    #   @return [Integer]
    # @!attribute number_of_failed_things
    #   <p>The number of failed things in an over-the-air (OTA) task.</p>
    #   @return [Integer]
    # @!attribute number_of_in_progress_things
    #   <p>The number of in progress things in an over-the-air (OTA) task.</p>
    #   @return [Integer]
    # @!attribute number_of_queued_things
    #   <p>The number of queued things in an over-the-air (OTA) task.</p>
    #   @return [Integer]
    # @!attribute number_of_rejected_things
    #   <p>The number of rejected things in an over-the-air (OTA) task.</p>
    #   @return [Integer]
    # @!attribute number_of_removed_things
    #   <p>The number of removed things in an over-the-air (OTA) task.</p>
    #   @return [Integer]
    # @!attribute number_of_succeeded_things
    #   <p>The number of succeeded things in an over-the-air (OTA) task.</p>
    #   @return [Integer]
    # @!attribute number_of_timed_out_things
    #   <p>The number of timed out things in an over-the-air (OTA) task.</p>
    #   @return [Integer]
    # @!attribute processing_targets
    #   <p>The targets of the over-the-air (OTA) task.</p>
    #   @return [Array<String>]
    class TaskProcessingDetails < Struct.new(
      nil,
      :number_of_canceled_things,
      :number_of_failed_things,
      :number_of_in_progress_things,
      :number_of_queued_things,
      :number_of_rejected_things,
      :number_of_removed_things,
      :number_of_succeeded_things,
      :number_of_timed_out_things,
      :processing_targets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rate exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You are not authorized to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
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

    # @!attribute account_association_id
    #   <p>The unique identifier of the account association to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name to assign to the account association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description to assign to the account association.</p>
    #   @return [String]
    class UpdateAccountAssociationRequest < Struct.new(
      nil,
      :account_association_id,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the cloud connector to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new display name to assign to the cloud connector.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description to assign to the cloud connector.</p>
    #   @return [String]
    class UpdateCloudConnectorRequest < Struct.new(
      nil,
      :identifier,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the connector destination to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description to assign to the connector destination.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new display name to assign to the connector destination.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The new authentication type to use for the connector destination.</p>
    #   @return [String]
    # @!attribute auth_config
    #   <p>The updated authentication configuration details for the connector destination.</p>
    #   @return [Types::AuthConfigUpdate]
    # @!attribute secrets_manager
    #   <p>The updated AWS Secrets Manager configuration for the connector destination.</p>
    #   @return [Types::SecretsManager]
    class UpdateConnectorDestinationRequest < Struct.new(
      nil,
      :identifier,
      :description,
      :name,
      :auth_type,
      :auth_config,
      :secrets_manager,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute delivery_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the customer-managed destination.</p>
    #   @return [String]
    # @!attribute delivery_destination_type
    #   <p>The destination type for the customer-managed destination.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery destination role.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the customer-managed destination.</p>
    #   @return [String]
    class UpdateDestinationRequest < Struct.new(
      nil,
      :name,
      :delivery_destination_arn,
      :delivery_destination_type,
      :role_arn,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The log configuration id.</p>
    #   @return [String]
    # @!attribute event_log_level
    #   <p>The log level for the event in terms of severity.</p>
    #   @return [String]
    class UpdateEventLogConfigurationRequest < Struct.new(
      nil,
      :id,
      :event_log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the managed thing.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>Owner of the device, usually an indication of whom the device belongs to. This value should not contain personal identifiable information.</p>
    #   @return [String]
    # @!attribute credential_locker_id
    #   <p>The identifier of the credential for the managed thing.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number of the device.</p>
    #   @return [String]
    # @!attribute wi_fi_simple_setup_configuration
    #   <p>The Wi-Fi Simple Setup configuration for the managed thing, which defines provisioning capabilities and timeout settings.</p>
    #   @return [Types::WiFiSimpleSetupConfiguration]
    # @!attribute brand
    #   <p>The brand of the device.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of the device.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the managed thing representing the physical device.</p>
    #   @return [String]
    # @!attribute capability_report
    #   <p>A report of the capabilities for the managed thing.</p>
    #   @return [Types::CapabilityReport]
    # @!attribute capability_schemas
    #   <p>The updated capability schemas that define the functionality and features supported by the managed thing.</p>
    #   @return [Array<Types::CapabilitySchemaItem>]
    # @!attribute capabilities
    #   <p>The capabilities of the device such as light bulb.</p>
    #   @deprecated
    #     Capabilities has been deprecated, use CapabilityReport instead
    #     Since: 06-25-2025
    #   @return [String]
    # @!attribute classification
    #   <p>The classification of the managed thing such as light bulb or thermostat.</p>
    #   @return [String]
    # @!attribute hub_network_mode
    #   <p>The network mode for the hub-connected device.</p>
    #   @return [String]
    # @!attribute meta_data
    #   <p>The metadata for the managed thing.</p>
    #   @return [Hash<String, String>]
    class UpdateManagedThingRequest < Struct.new(
      nil,
      :identifier,
      :owner,
      :credential_locker_id,
      :serial_number,
      :wi_fi_simple_setup_configuration,
      :brand,
      :model,
      :name,
      :capability_report,
      :capability_schemas,
      :capabilities,
      :classification,
      :hub_network_mode,
      :meta_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the destination for the notification configuration.</p>
    #   @return [String]
    class UpdateNotificationConfigurationRequest < Struct.new(
      nil,
      :event_type,
      :destination_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The over-the-air (OTA) task id.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the over-the-air (OTA) task.</p>
    #   @return [String]
    # @!attribute task_configuration_id
    #   <p>The identifier for the over-the-air (OTA) task configuration.</p>
    #   @return [String]
    class UpdateOtaTaskRequest < Struct.new(
      nil,
      :identifier,
      :description,
      :task_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A validation error occurred when performing the API request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Wi-Fi Simple Setup configuration for the managed thing, which defines provisioning capabilities and timeout settings.</p>
    # @!attribute enable_as_provisioner
    #   <p>Indicates whether the device can act as a provisioner in Wi-Fi Simple Setup, allowing it to configure other devices.</p>
    #   @return [Boolean]
    # @!attribute enable_as_provisionee
    #   <p>Indicates whether the device can act as a provisionee in Wi-Fi Simple Setup, allowing it to be configured by other devices.</p>
    #   @return [Boolean]
    # @!attribute timeout_in_minutes
    #   <p>The timeout duration in minutes for Wi-Fi Simple Setup. Valid range is 5 to 15 minutes.</p>
    #   @return [Integer]
    class WiFiSimpleSetupConfiguration < Struct.new(
      nil,
      :enable_as_provisioner,
      :enable_as_provisionee,
      :timeout_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
