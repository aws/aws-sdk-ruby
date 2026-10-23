# frozen_string_literal: true

# This is generated code!

module Aws::Greengrass
  # This module contains the types returned by client operations.
  module Types

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    # @!attribute role_arn
    #   The ARN of the role you wish to associate with this group. The existence of the role is not validated.
    #   @return [String]
    class AssociateRoleToGroupRequest < Struct.new(
      nil,
      :group_id,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associated_at
    #   The time, in milliseconds since the epoch, when the role ARN was associated with the group.
    #   @return [String]
    class AssociateRoleToGroupResponse < Struct.new(
      nil,
      :associated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   The ARN of the service role you wish to associate with your account.
    #   @return [String]
    class AssociateServiceRoleToAccountRequest < Struct.new(
      nil,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associated_at
    #   The time when the service role was associated with the account.
    #   @return [String]
    class AssociateServiceRoleToAccountResponse < Struct.new(
      nil,
      :associated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # General error information.
    # @!attribute error_details
    #   Details about the error.
    #   @return [Array<Types::ErrorDetail>]
    # @!attribute message
    #   A message containing information about the error.
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :error_details,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a bulk deployment. You cannot start a new bulk deployment while another one is still running or in a non-terminal state.
    # @!attribute bulk_deployment_arn
    #   The ARN of the bulk deployment.
    #   @return [String]
    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #   @return [String]
    # @!attribute created_at
    #   The time, in ISO format, when the deployment was created.
    #   @return [String]
    class BulkDeployment < Struct.new(
      nil,
      :bulk_deployment_arn,
      :bulk_deployment_id,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Relevant metrics on input records processed during bulk deployment.
    # @!attribute invalid_input_records
    #   The total number of records that returned a non-retryable error. For example, this can occur if a group record from the input file uses an invalid format or specifies a nonexistent group version, or if the execution role doesn't grant permission to deploy a group or group version.
    #   @return [Integer]
    # @!attribute records_processed
    #   The total number of group records from the input file that have been processed so far, or attempted.
    #   @return [Integer]
    # @!attribute retry_attempts
    #   The total number of deployment attempts that returned a retryable error. For example, a retry is triggered if the attempt to deploy a group returns a throttling error. ''StartBulkDeployment'' retries a group deployment up to five times.
    #   @return [Integer]
    class BulkDeploymentMetrics < Struct.new(
      nil,
      :invalid_input_records,
      :records_processed,
      :retry_attempts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about an individual group deployment in a bulk deployment operation.
    # @!attribute created_at
    #   The time, in ISO format, when the deployment was created.
    #   @return [String]
    # @!attribute deployment_arn
    #   The ARN of the group deployment.
    #   @return [String]
    # @!attribute deployment_id
    #   The ID of the group deployment.
    #   @return [String]
    # @!attribute deployment_status
    #   The current status of the group deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''.
    #   @return [String]
    # @!attribute deployment_type
    #   The type of the deployment.
    #   @return [String]
    # @!attribute error_details
    #   Details about the error.
    #   @return [Array<Types::ErrorDetail>]
    # @!attribute error_message
    #   The error message for a failed deployment
    #   @return [String]
    # @!attribute group_arn
    #   The ARN of the Greengrass group.
    #   @return [String]
    class BulkDeploymentResult < Struct.new(
      nil,
      :created_at,
      :deployment_arn,
      :deployment_id,
      :deployment_status,
      :deployment_type,
      :error_details,
      :error_message,
      :group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a Greengrass core's connectivity.
    # @!attribute host_address
    #   The endpoint for the Greengrass core. Can be an IP address or DNS.
    #   @return [String]
    # @!attribute id
    #   The ID of the connectivity information.
    #   @return [String]
    # @!attribute metadata
    #   Metadata for this endpoint.
    #   @return [String]
    # @!attribute port_number
    #   The port of the Greengrass core. Usually 8883.
    #   @return [Integer]
    class ConnectivityInfo < Struct.new(
      nil,
      :host_address,
      :id,
      :metadata,
      :port_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a connector. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
    # @!attribute connector_arn
    #   The ARN of the connector.
    #   @return [String]
    # @!attribute id
    #   A descriptive or arbitrary ID for the connector. This value must be unique within the connector definition version. Max length is 128 characters with pattern [a-zA-Z0-9:_-]+.
    #   @return [String]
    # @!attribute parameters
    #   The parameters or configuration that the connector uses.
    #   @return [Hash<String, String>]
    class Connector < Struct.new(
      nil,
      :connector_arn,
      :id,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about the connector definition version, which is a container for connectors.
    # @!attribute connectors
    #   A list of references to connectors in this version, with their corresponding configuration settings.
    #   @return [Array<Types::Connector>]
    class ConnectorDefinitionVersion < Struct.new(
      nil,
      :connectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a core.
    # @!attribute certificate_arn
    #   The ARN of the certificate associated with the core.
    #   @return [String]
    # @!attribute id
    #   A descriptive or arbitrary ID for the core. This value must be unique within the core definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #   @return [String]
    # @!attribute sync_shadow
    #   If true, the core's local shadow is automatically synced with the cloud.
    #   @return [Boolean]
    # @!attribute thing_arn
    #   The ARN of the thing which is the core.
    #   @return [String]
    class Core < Struct.new(
      nil,
      :certificate_arn,
      :id,
      :sync_shadow,
      :thing_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a core definition version.
    # @!attribute cores
    #   A list of cores in the core definition version.
    #   @return [Array<Types::Core>]
    class CoreDefinitionVersion < Struct.new(
      nil,
      :cores,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute initial_version
    #   Information about the initial version of the connector definition.
    #   @return [Types::ConnectorDefinitionVersion]
    # @!attribute name
    #   The name of the connector definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #   @return [Hash<String, String>]
    class CreateConnectorDefinitionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class CreateConnectorDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #   @return [String]
    # @!attribute connectors
    #   A list of references to connectors in this version, with their corresponding configuration settings.
    #   @return [Array<Types::Connector>]
    class CreateConnectorDefinitionVersionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :connector_definition_id,
      :connectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the version.
    #   @return [String]
    class CreateConnectorDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information needed to create a core definition.
    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute initial_version
    #   Information about the initial version of the core definition.
    #   @return [Types::CoreDefinitionVersion]
    # @!attribute name
    #   The name of the core definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #   @return [Hash<String, String>]
    class CreateCoreDefinitionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class CreateCoreDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute core_definition_id
    #   The ID of the core definition.
    #   @return [String]
    # @!attribute cores
    #   A list of cores in the core definition version.
    #   @return [Array<Types::Core>]
    class CreateCoreDefinitionVersionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :core_definition_id,
      :cores,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the version.
    #   @return [String]
    class CreateCoreDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute deployment_id
    #   The ID of the deployment if you wish to redeploy a previous deployment.
    #   @return [String]
    # @!attribute deployment_type
    #   The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.
    #   @return [String]
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    # @!attribute group_version_id
    #   The ID of the group version to be deployed.
    #   @return [String]
    class CreateDeploymentRequest < Struct.new(
      nil,
      :amzn_client_token,
      :deployment_id,
      :deployment_type,
      :group_id,
      :group_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_arn
    #   The ARN of the deployment.
    #   @return [String]
    # @!attribute deployment_id
    #   The ID of the deployment.
    #   @return [String]
    class CreateDeploymentResponse < Struct.new(
      nil,
      :deployment_arn,
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute initial_version
    #   Information about the initial version of the device definition.
    #   @return [Types::DeviceDefinitionVersion]
    # @!attribute name
    #   The name of the device definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #   @return [Hash<String, String>]
    class CreateDeviceDefinitionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class CreateDeviceDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute device_definition_id
    #   The ID of the device definition.
    #   @return [String]
    # @!attribute devices
    #   A list of devices in the definition version.
    #   @return [Array<Types::Device>]
    class CreateDeviceDefinitionVersionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :device_definition_id,
      :devices,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the version.
    #   @return [String]
    class CreateDeviceDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute initial_version
    #   Information about the initial version of the function definition.
    #   @return [Types::FunctionDefinitionVersion]
    # @!attribute name
    #   The name of the function definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #   @return [Hash<String, String>]
    class CreateFunctionDefinitionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class CreateFunctionDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information needed to create a function definition version.
    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute default_config
    #   The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
    #   @return [Types::FunctionDefaultConfig]
    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #   @return [String]
    # @!attribute functions
    #   A list of Lambda functions in this function definition version.
    #   @return [Array<Types::Function>]
    class CreateFunctionDefinitionVersionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :default_config,
      :function_definition_id,
      :functions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the version.
    #   @return [String]
    class CreateFunctionDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class CreateGroupCertificateAuthorityRequest < Struct.new(
      nil,
      :amzn_client_token,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_certificate_authority_arn
    #   The ARN of the group certificate authority.
    #   @return [String]
    class CreateGroupCertificateAuthorityResponse < Struct.new(
      nil,
      :group_certificate_authority_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute initial_version
    #   Information about the initial version of the group.
    #   @return [Types::GroupVersion]
    # @!attribute name
    #   The name of the group.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #   @return [Hash<String, String>]
    class CreateGroupRequest < Struct.new(
      nil,
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class CreateGroupResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute connector_definition_version_arn
    #   The ARN of the connector definition version for this group.
    #   @return [String]
    # @!attribute core_definition_version_arn
    #   The ARN of the core definition version for this group.
    #   @return [String]
    # @!attribute device_definition_version_arn
    #   The ARN of the device definition version for this group.
    #   @return [String]
    # @!attribute function_definition_version_arn
    #   The ARN of the function definition version for this group.
    #   @return [String]
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    # @!attribute logger_definition_version_arn
    #   The ARN of the logger definition version for this group.
    #   @return [String]
    # @!attribute resource_definition_version_arn
    #   The ARN of the resource definition version for this group.
    #   @return [String]
    # @!attribute subscription_definition_version_arn
    #   The ARN of the subscription definition version for this group.
    #   @return [String]
    class CreateGroupVersionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :connector_definition_version_arn,
      :core_definition_version_arn,
      :device_definition_version_arn,
      :function_definition_version_arn,
      :group_id,
      :logger_definition_version_arn,
      :resource_definition_version_arn,
      :subscription_definition_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the version.
    #   @return [String]
    class CreateGroupVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute initial_version
    #   Information about the initial version of the logger definition.
    #   @return [Types::LoggerDefinitionVersion]
    # @!attribute name
    #   The name of the logger definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #   @return [Hash<String, String>]
    class CreateLoggerDefinitionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class CreateLoggerDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #   @return [String]
    # @!attribute loggers
    #   A list of loggers.
    #   @return [Array<Types::Logger>]
    class CreateLoggerDefinitionVersionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :logger_definition_id,
      :loggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the version.
    #   @return [String]
    class CreateLoggerDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute initial_version
    #   Information about the initial version of the resource definition.
    #   @return [Types::ResourceDefinitionVersion]
    # @!attribute name
    #   The name of the resource definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #   @return [Hash<String, String>]
    class CreateResourceDefinitionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class CreateResourceDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #   @return [String]
    # @!attribute resources
    #   A list of resources.
    #   @return [Array<Types::Resource>]
    class CreateResourceDefinitionVersionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :resource_definition_id,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the version.
    #   @return [String]
    class CreateResourceDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute s3_url_signer_role
    #   The IAM Role that Greengrass will use to create pre-signed URLs pointing towards the update artifact.
    #   @return [String]
    # @!attribute software_to_update
    #   The piece of software on the Greengrass core that will be updated.
    #   @return [String]
    # @!attribute update_agent_log_level
    #   The minimum level of log statements that should be logged by the OTA Agent during an update.
    #   @return [String]
    # @!attribute update_targets
    #   The ARNs of the targets (IoT things or IoT thing groups) that this update will be applied to.
    #   @return [Array<String>]
    # @!attribute update_targets_architecture
    #   The architecture of the cores which are the targets of an update.
    #   @return [String]
    # @!attribute update_targets_operating_system
    #   The operating system of the cores which are the targets of an update.
    #   @return [String]
    class CreateSoftwareUpdateJobRequest < Struct.new(
      nil,
      :amzn_client_token,
      :s3_url_signer_role,
      :software_to_update,
      :update_agent_log_level,
      :update_targets,
      :update_targets_architecture,
      :update_targets_operating_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute iot_job_arn
    #   The IoT Job ARN corresponding to this update.
    #   @return [String]
    # @!attribute iot_job_id
    #   The IoT Job Id corresponding to this update.
    #   @return [String]
    # @!attribute platform_software_version
    #   The software version installed on the device or devices after the update.
    #   @return [String]
    class CreateSoftwareUpdateJobResponse < Struct.new(
      nil,
      :iot_job_arn,
      :iot_job_id,
      :platform_software_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute initial_version
    #   Information about the initial version of the subscription definition.
    #   @return [Types::SubscriptionDefinitionVersion]
    # @!attribute name
    #   The name of the subscription definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #   @return [Hash<String, String>]
    class CreateSubscriptionDefinitionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class CreateSubscriptionDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #   @return [String]
    # @!attribute subscriptions
    #   A list of subscriptions.
    #   @return [Array<Types::Subscription>]
    class CreateSubscriptionDefinitionVersionRequest < Struct.new(
      nil,
      :amzn_client_token,
      :subscription_definition_id,
      :subscriptions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the version.
    #   @return [String]
    class CreateSubscriptionDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a definition.
    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class DefinitionInformation < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #   @return [String]
    class DeleteConnectorDefinitionRequest < Struct.new(
      nil,
      :connector_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteConnectorDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #   @return [String]
    class DeleteCoreDefinitionRequest < Struct.new(
      nil,
      :core_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCoreDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #   @return [String]
    class DeleteDeviceDefinitionRequest < Struct.new(
      nil,
      :device_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDeviceDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #   @return [String]
    class DeleteFunctionDefinitionRequest < Struct.new(
      nil,
      :function_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteFunctionDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class DeleteGroupRequest < Struct.new(
      nil,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #   @return [String]
    class DeleteLoggerDefinitionRequest < Struct.new(
      nil,
      :logger_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLoggerDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #   @return [String]
    class DeleteResourceDefinitionRequest < Struct.new(
      nil,
      :resource_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteResourceDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #   @return [String]
    class DeleteSubscriptionDefinitionRequest < Struct.new(
      nil,
      :subscription_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSubscriptionDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a deployment.
    # @!attribute created_at
    #   The time, in milliseconds since the epoch, when the deployment was created.
    #   @return [String]
    # @!attribute deployment_arn
    #   The ARN of the deployment.
    #   @return [String]
    # @!attribute deployment_id
    #   The ID of the deployment.
    #   @return [String]
    # @!attribute deployment_type
    #   The type of the deployment.
    #   @return [String]
    # @!attribute group_arn
    #   The ARN of the group for this deployment.
    #   @return [String]
    class Deployment < Struct.new(
      nil,
      :created_at,
      :deployment_arn,
      :deployment_id,
      :deployment_type,
      :group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a device.
    # @!attribute certificate_arn
    #   The ARN of the certificate associated with the device.
    #   @return [String]
    # @!attribute id
    #   A descriptive or arbitrary ID for the device. This value must be unique within the device definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #   @return [String]
    # @!attribute sync_shadow
    #   If true, the device's local shadow will be automatically synced with the cloud.
    #   @return [Boolean]
    # @!attribute thing_arn
    #   The thing ARN of the device.
    #   @return [String]
    class Device < Struct.new(
      nil,
      :certificate_arn,
      :id,
      :sync_shadow,
      :thing_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a device definition version.
    # @!attribute devices
    #   A list of devices in the definition version.
    #   @return [Array<Types::Device>]
    class DeviceDefinitionVersion < Struct.new(
      nil,
      :devices,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class DisassociateRoleFromGroupRequest < Struct.new(
      nil,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute disassociated_at
    #   The time, in milliseconds since the epoch, when the role was disassociated from the group.
    #   @return [String]
    class DisassociateRoleFromGroupResponse < Struct.new(
      nil,
      :disassociated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateServiceRoleFromAccountRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute disassociated_at
    #   The time when the service role was disassociated from the account.
    #   @return [String]
    class DisassociateServiceRoleFromAccountResponse < Struct.new(
      nil,
      :disassociated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Details about the error.
    # @!attribute detailed_error_code
    #   A detailed error code.
    #   @return [String]
    # @!attribute detailed_error_message
    #   A detailed error message.
    #   @return [String]
    class ErrorDetail < Struct.new(
      nil,
      :detailed_error_code,
      :detailed_error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a Lambda function.
    # @!attribute function_arn
    #   The ARN of the Lambda function.
    #   @return [String]
    # @!attribute function_configuration
    #   The configuration of the Lambda function.
    #   @return [Types::FunctionConfiguration]
    # @!attribute id
    #   A descriptive or arbitrary ID for the function. This value must be unique within the function definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #   @return [String]
    class Function < Struct.new(
      nil,
      :function_arn,
      :function_configuration,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The configuration of the Lambda function.
    # @!attribute encoding_type
    #   The expected encoding type of the input payload for the function. The default is ''json''.
    #   @return [String]
    # @!attribute environment
    #   The environment configuration of the function.
    #   @return [Types::FunctionConfigurationEnvironment]
    # @!attribute exec_args
    #   The execution arguments.
    #   @return [String]
    # @!attribute executable
    #   The name of the function executable.
    #   @return [String]
    # @!attribute memory_size
    #   The memory size, in KB, which the function requires. This setting is not applicable and should be cleared when you run the Lambda function without containerization.
    #   @return [Integer]
    # @!attribute pinned
    #   True if the function is pinned. Pinned means the function is long-lived and starts when the core starts.
    #   @return [Boolean]
    # @!attribute timeout
    #   The allowed function execution time, after which Lambda should terminate the function. This timeout still applies to pinned Lambda functions for each request.
    #   @return [Integer]
    # @!attribute function_runtime_override
    #   The Lambda runtime supported by Greengrass which is to be used instead of the one specified in the Lambda function.
    #   @return [String]
    class FunctionConfiguration < Struct.new(
      nil,
      :encoding_type,
      :environment,
      :exec_args,
      :executable,
      :memory_size,
      :pinned,
      :timeout,
      :function_runtime_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The environment configuration of the function.
    # @!attribute access_sysfs
    #   If true, the Lambda function is allowed to access the host's /sys folder. Use this when the Lambda function needs to read device information from /sys. This setting applies only when you run the Lambda function in a Greengrass container.
    #   @return [Boolean]
    # @!attribute execution
    #   Configuration related to executing the Lambda function
    #   @return [Types::FunctionExecutionConfig]
    # @!attribute resource_access_policies
    #   A list of the resources, with their permissions, to which the Lambda function will be granted access. A Lambda function can have at most 10 resources. ResourceAccessPolicies apply only when you run the Lambda function in a Greengrass container.
    #   @return [Array<Types::ResourceAccessPolicy>]
    # @!attribute variables
    #   Environment variables for the Lambda function's configuration.
    #   @return [Hash<String, String>]
    class FunctionConfigurationEnvironment < Struct.new(
      nil,
      :access_sysfs,
      :execution,
      :resource_access_policies,
      :variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The default configuration that applies to all Lambda functions in the group. Individual Lambda functions can override these settings.
    # @!attribute execution
    #   Configuration information that specifies how a Lambda function runs.
    #   @return [Types::FunctionDefaultExecutionConfig]
    class FunctionDefaultConfig < Struct.new(
      nil,
      :execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration information that specifies how a Lambda function runs.
    # @!attribute isolation_mode
    #   Specifies whether the Lambda function runs in a Greengrass container (default) or without containerization. Unless your scenario requires that you run without containerization, we recommend that you run in a Greengrass container. Omit this value to run the Lambda function with the default containerization for the group.
    #   @return [String]
    # @!attribute run_as
    #   Specifies the user and group whose permissions are used when running the Lambda function. You can specify one or both values to override the default values. We recommend that you avoid running as root unless absolutely necessary to minimize the risk of unintended changes or malicious attacks. To run as root, you must set ''IsolationMode'' to ''NoContainer'' and update config.json in ''greengrass-root/config'' to set ''allowFunctionsToRunAsRoot'' to ''yes''.
    #   @return [Types::FunctionRunAsConfig]
    class FunctionDefaultExecutionConfig < Struct.new(
      nil,
      :isolation_mode,
      :run_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a function definition version.
    # @!attribute default_config
    #   The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
    #   @return [Types::FunctionDefaultConfig]
    # @!attribute functions
    #   A list of Lambda functions in this function definition version.
    #   @return [Array<Types::Function>]
    class FunctionDefinitionVersion < Struct.new(
      nil,
      :default_config,
      :functions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration information that specifies how a Lambda function runs.
    # @!attribute isolation_mode
    #   Specifies whether the Lambda function runs in a Greengrass container (default) or without containerization. Unless your scenario requires that you run without containerization, we recommend that you run in a Greengrass container. Omit this value to run the Lambda function with the default containerization for the group.
    #   @return [String]
    # @!attribute run_as
    #   Specifies the user and group whose permissions are used when running the Lambda function. You can specify one or both values to override the default values. We recommend that you avoid running as root unless absolutely necessary to minimize the risk of unintended changes or malicious attacks. To run as root, you must set ''IsolationMode'' to ''NoContainer'' and update config.json in ''greengrass-root/config'' to set ''allowFunctionsToRunAsRoot'' to ''yes''.
    #   @return [Types::FunctionRunAsConfig]
    class FunctionExecutionConfig < Struct.new(
      nil,
      :isolation_mode,
      :run_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Specifies the user and group whose permissions are used when running the Lambda function. You can specify one or both values to override the default values. We recommend that you avoid running as root unless absolutely necessary to minimize the risk of unintended changes or malicious attacks. To run as root, you must set ''IsolationMode'' to ''NoContainer'' and update config.json in ''greengrass-root/config'' to set ''allowFunctionsToRunAsRoot'' to ''yes''.
    # @!attribute gid
    #   The group ID whose permissions are used to run a Lambda function.
    #   @return [Integer]
    # @!attribute uid
    #   The user ID whose permissions are used to run a Lambda function.
    #   @return [Integer]
    class FunctionRunAsConfig < Struct.new(
      nil,
      :gid,
      :uid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class GetAssociatedRoleRequest < Struct.new(
      nil,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associated_at
    #   The time when the role was associated with the group.
    #   @return [String]
    # @!attribute role_arn
    #   The ARN of the role that is associated with the group.
    #   @return [String]
    class GetAssociatedRoleResponse < Struct.new(
      nil,
      :associated_at,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #   @return [String]
    class GetBulkDeploymentStatusRequest < Struct.new(
      nil,
      :bulk_deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bulk_deployment_metrics
    #   Relevant metrics on input records processed during bulk deployment.
    #   @return [Types::BulkDeploymentMetrics]
    # @!attribute bulk_deployment_status
    #   The status of the bulk deployment.
    #   @return [String]
    # @!attribute created_at
    #   The time, in ISO format, when the deployment was created.
    #   @return [String]
    # @!attribute error_details
    #   Error details
    #   @return [Array<Types::ErrorDetail>]
    # @!attribute error_message
    #   Error message
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class GetBulkDeploymentStatusResponse < Struct.new(
      nil,
      :bulk_deployment_metrics,
      :bulk_deployment_status,
      :created_at,
      :error_details,
      :error_message,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   The thing name.
    #   @return [String]
    class GetConnectivityInfoRequest < Struct.new(
      nil,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connectivity_info
    #   Connectivity info list.
    #   @return [Array<Types::ConnectivityInfo>]
    # @!attribute message
    #   A message about the connectivity info request.
    #   @return [String]
    class GetConnectivityInfoResponse < Struct.new(
      nil,
      :connectivity_info,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #   @return [String]
    class GetConnectorDefinitionRequest < Struct.new(
      nil,
      :connector_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class GetConnectorDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #   @return [String]
    # @!attribute connector_definition_version_id
    #   The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class GetConnectorDefinitionVersionRequest < Struct.new(
      nil,
      :connector_definition_id,
      :connector_definition_version_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the connector definition version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the connector definition version was created.
    #   @return [String]
    # @!attribute definition
    #   Information about the connector definition version.
    #   @return [Types::ConnectorDefinitionVersion]
    # @!attribute id
    #   The ID of the connector definition version.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute version
    #   The version of the connector definition version.
    #   @return [String]
    class GetConnectorDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #   @return [String]
    class GetCoreDefinitionRequest < Struct.new(
      nil,
      :core_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class GetCoreDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #   @return [String]
    # @!attribute core_definition_version_id
    #   The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #   @return [String]
    class GetCoreDefinitionVersionRequest < Struct.new(
      nil,
      :core_definition_id,
      :core_definition_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the core definition version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the core definition version was created.
    #   @return [String]
    # @!attribute definition
    #   Information about the core definition version.
    #   @return [Types::CoreDefinitionVersion]
    # @!attribute id
    #   The ID of the core definition version.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute version
    #   The version of the core definition version.
    #   @return [String]
    class GetCoreDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   The ID of the deployment.
    #   @return [String]
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class GetDeploymentStatusRequest < Struct.new(
      nil,
      :deployment_id,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_status
    #   The status of the deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''.
    #   @return [String]
    # @!attribute deployment_type
    #   The type of the deployment.
    #   @return [String]
    # @!attribute error_details
    #   Error details
    #   @return [Array<Types::ErrorDetail>]
    # @!attribute error_message
    #   Error message
    #   @return [String]
    # @!attribute updated_at
    #   The time, in milliseconds since the epoch, when the deployment status was updated.
    #   @return [String]
    class GetDeploymentStatusResponse < Struct.new(
      nil,
      :deployment_status,
      :deployment_type,
      :error_details,
      :error_message,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #   @return [String]
    class GetDeviceDefinitionRequest < Struct.new(
      nil,
      :device_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class GetDeviceDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #   @return [String]
    # @!attribute device_definition_version_id
    #   The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class GetDeviceDefinitionVersionRequest < Struct.new(
      nil,
      :device_definition_id,
      :device_definition_version_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the device definition version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the device definition version was created.
    #   @return [String]
    # @!attribute definition
    #   Information about the device definition version.
    #   @return [Types::DeviceDefinitionVersion]
    # @!attribute id
    #   The ID of the device definition version.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute version
    #   The version of the device definition version.
    #   @return [String]
    class GetDeviceDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #   @return [String]
    class GetFunctionDefinitionRequest < Struct.new(
      nil,
      :function_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class GetFunctionDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #   @return [String]
    # @!attribute function_definition_version_id
    #   The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class GetFunctionDefinitionVersionRequest < Struct.new(
      nil,
      :function_definition_id,
      :function_definition_version_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the function definition version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the function definition version was created.
    #   @return [String]
    # @!attribute definition
    #   Information on the definition.
    #   @return [Types::FunctionDefinitionVersion]
    # @!attribute id
    #   The ID of the function definition version.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute version
    #   The version of the function definition version.
    #   @return [String]
    class GetFunctionDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_authority_id
    #   The ID of the certificate authority.
    #   @return [String]
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class GetGroupCertificateAuthorityRequest < Struct.new(
      nil,
      :certificate_authority_id,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_certificate_authority_arn
    #   The ARN of the certificate authority for the group.
    #   @return [String]
    # @!attribute group_certificate_authority_id
    #   The ID of the certificate authority for the group.
    #   @return [String]
    # @!attribute pem_encoded_certificate
    #   The PEM encoded certificate for the group.
    #   @return [String]
    class GetGroupCertificateAuthorityResponse < Struct.new(
      nil,
      :group_certificate_authority_arn,
      :group_certificate_authority_id,
      :pem_encoded_certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class GetGroupCertificateConfigurationRequest < Struct.new(
      nil,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_authority_expiry_in_milliseconds
    #   The amount of time remaining before the certificate authority expires, in milliseconds.
    #   @return [String]
    # @!attribute certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in milliseconds.
    #   @return [String]
    # @!attribute group_id
    #   The ID of the group certificate configuration.
    #   @return [String]
    class GetGroupCertificateConfigurationResponse < Struct.new(
      nil,
      :certificate_authority_expiry_in_milliseconds,
      :certificate_expiry_in_milliseconds,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class GetGroupRequest < Struct.new(
      nil,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class GetGroupResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    # @!attribute group_version_id
    #   The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object.
    #   @return [String]
    class GetGroupVersionRequest < Struct.new(
      nil,
      :group_id,
      :group_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the group version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the group version was created.
    #   @return [String]
    # @!attribute definition
    #   Information about the group version definition.
    #   @return [Types::GroupVersion]
    # @!attribute id
    #   The ID of the group that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the group version.
    #   @return [String]
    class GetGroupVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #   @return [String]
    class GetLoggerDefinitionRequest < Struct.new(
      nil,
      :logger_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class GetLoggerDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #   @return [String]
    # @!attribute logger_definition_version_id
    #   The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class GetLoggerDefinitionVersionRequest < Struct.new(
      nil,
      :logger_definition_id,
      :logger_definition_version_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the logger definition version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the logger definition version was created.
    #   @return [String]
    # @!attribute definition
    #   Information about the logger definition version.
    #   @return [Types::LoggerDefinitionVersion]
    # @!attribute id
    #   The ID of the logger definition version.
    #   @return [String]
    # @!attribute version
    #   The version of the logger definition version.
    #   @return [String]
    class GetLoggerDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #   @return [String]
    class GetResourceDefinitionRequest < Struct.new(
      nil,
      :resource_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class GetResourceDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #   @return [String]
    # @!attribute resource_definition_version_id
    #   The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #   @return [String]
    class GetResourceDefinitionVersionRequest < Struct.new(
      nil,
      :resource_definition_id,
      :resource_definition_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   Arn of the resource definition version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the resource definition version was created.
    #   @return [String]
    # @!attribute definition
    #   Information about the definition.
    #   @return [Types::ResourceDefinitionVersion]
    # @!attribute id
    #   The ID of the resource definition version.
    #   @return [String]
    # @!attribute version
    #   The version of the resource definition version.
    #   @return [String]
    class GetResourceDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetServiceRoleForAccountRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associated_at
    #   The time when the service role was associated with the account.
    #   @return [String]
    # @!attribute role_arn
    #   The ARN of the role which is associated with the account.
    #   @return [String]
    class GetServiceRoleForAccountResponse < Struct.new(
      nil,
      :associated_at,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #   @return [String]
    class GetSubscriptionDefinitionRequest < Struct.new(
      nil,
      :subscription_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the definition.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String, String>]
    class GetSubscriptionDefinitionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #   @return [String]
    # @!attribute subscription_definition_version_id
    #   The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #   @return [String]
    class GetSubscriptionDefinitionVersionRequest < Struct.new(
      nil,
      :next_token,
      :subscription_definition_id,
      :subscription_definition_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the subscription definition version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the subscription definition version was created.
    #   @return [String]
    # @!attribute definition
    #   Information about the subscription definition version.
    #   @return [Types::SubscriptionDefinitionVersion]
    # @!attribute id
    #   The ID of the subscription definition version.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute version
    #   The version of the subscription definition version.
    #   @return [String]
    class GetSubscriptionDefinitionVersionResponse < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   The thing name.
    #   @return [String]
    class GetThingRuntimeConfigurationRequest < Struct.new(
      nil,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_configuration
    #   Runtime configuration for a thing.
    #   @return [Types::RuntimeConfiguration]
    class GetThingRuntimeConfigurationResponse < Struct.new(
      nil,
      :runtime_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a certificate authority for a group.
    # @!attribute group_certificate_authority_arn
    #   The ARN of the certificate authority for the group.
    #   @return [String]
    # @!attribute group_certificate_authority_id
    #   The ID of the certificate authority for the group.
    #   @return [String]
    class GroupCertificateAuthorityProperties < Struct.new(
      nil,
      :group_certificate_authority_arn,
      :group_certificate_authority_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a group.
    # @!attribute arn
    #   The ARN of the group.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the group was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the group.
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the group was last updated.
    #   @return [String]
    # @!attribute latest_version
    #   The ID of the latest version associated with the group.
    #   @return [String]
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the group.
    #   @return [String]
    # @!attribute name
    #   The name of the group.
    #   @return [String]
    class GroupInformation < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Group owner related settings for local resources.
    # @!attribute auto_add_group_owner
    #   If true, AWS IoT Greengrass automatically adds the specified Linux OS group owner of the resource to the Lambda process privileges. Thus the Lambda process will have the file access permissions of the added Linux group.
    #   @return [Boolean]
    # @!attribute group_owner
    #   The name of the Linux OS group whose privileges will be added to the Lambda process. This field is optional.
    #   @return [String]
    class GroupOwnerSetting < Struct.new(
      nil,
      :auto_add_group_owner,
      :group_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a group version.
    # @!attribute connector_definition_version_arn
    #   The ARN of the connector definition version for this group.
    #   @return [String]
    # @!attribute core_definition_version_arn
    #   The ARN of the core definition version for this group.
    #   @return [String]
    # @!attribute device_definition_version_arn
    #   The ARN of the device definition version for this group.
    #   @return [String]
    # @!attribute function_definition_version_arn
    #   The ARN of the function definition version for this group.
    #   @return [String]
    # @!attribute logger_definition_version_arn
    #   The ARN of the logger definition version for this group.
    #   @return [String]
    # @!attribute resource_definition_version_arn
    #   The ARN of the resource definition version for this group.
    #   @return [String]
    # @!attribute subscription_definition_version_arn
    #   The ARN of the subscription definition version for this group.
    #   @return [String]
    class GroupVersion < Struct.new(
      nil,
      :connector_definition_version_arn,
      :core_definition_version_arn,
      :device_definition_version_arn,
      :function_definition_version_arn,
      :logger_definition_version_arn,
      :resource_definition_version_arn,
      :subscription_definition_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # General error information.
    # @!attribute error_details
    #   Details about the error.
    #   @return [Array<Types::ErrorDetail>]
    # @!attribute message
    #   A message containing information about the error.
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      nil,
      :error_details,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListBulkDeploymentDetailedReportsRequest < Struct.new(
      nil,
      :bulk_deployment_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployments
    #   A list of the individual group deployments in the bulk deployment operation.
    #   @return [Array<Types::BulkDeploymentResult>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListBulkDeploymentDetailedReportsResponse < Struct.new(
      nil,
      :deployments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListBulkDeploymentsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bulk_deployments
    #   A list of bulk deployments.
    #   @return [Array<Types::BulkDeployment>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListBulkDeploymentsResponse < Struct.new(
      nil,
      :bulk_deployments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListConnectorDefinitionVersionsRequest < Struct.new(
      nil,
      :connector_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute versions
    #   Information about a version.
    #   @return [Array<Types::VersionInformation>]
    class ListConnectorDefinitionVersionsResponse < Struct.new(
      nil,
      :next_token,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListConnectorDefinitionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #   @return [Array<Types::DefinitionInformation>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListConnectorDefinitionsResponse < Struct.new(
      nil,
      :definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListCoreDefinitionVersionsRequest < Struct.new(
      nil,
      :core_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute versions
    #   Information about a version.
    #   @return [Array<Types::VersionInformation>]
    class ListCoreDefinitionVersionsResponse < Struct.new(
      nil,
      :next_token,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListCoreDefinitionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #   @return [Array<Types::DefinitionInformation>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListCoreDefinitionsResponse < Struct.new(
      nil,
      :definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListDeploymentsRequest < Struct.new(
      nil,
      :group_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployments
    #   A list of deployments for the requested groups.
    #   @return [Array<Types::Deployment>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListDeploymentsResponse < Struct.new(
      nil,
      :deployments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListDeviceDefinitionVersionsRequest < Struct.new(
      nil,
      :device_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute versions
    #   Information about a version.
    #   @return [Array<Types::VersionInformation>]
    class ListDeviceDefinitionVersionsResponse < Struct.new(
      nil,
      :next_token,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListDeviceDefinitionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #   @return [Array<Types::DefinitionInformation>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListDeviceDefinitionsResponse < Struct.new(
      nil,
      :definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListFunctionDefinitionVersionsRequest < Struct.new(
      nil,
      :function_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute versions
    #   Information about a version.
    #   @return [Array<Types::VersionInformation>]
    class ListFunctionDefinitionVersionsResponse < Struct.new(
      nil,
      :next_token,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListFunctionDefinitionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #   @return [Array<Types::DefinitionInformation>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListFunctionDefinitionsResponse < Struct.new(
      nil,
      :definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class ListGroupCertificateAuthoritiesRequest < Struct.new(
      nil,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_certificate_authorities
    #   A list of certificate authorities associated with the group.
    #   @return [Array<Types::GroupCertificateAuthorityProperties>]
    class ListGroupCertificateAuthoritiesResponse < Struct.new(
      nil,
      :group_certificate_authorities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListGroupVersionsRequest < Struct.new(
      nil,
      :group_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute versions
    #   Information about a version.
    #   @return [Array<Types::VersionInformation>]
    class ListGroupVersionsResponse < Struct.new(
      nil,
      :next_token,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListGroupsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute groups
    #   Information about a group.
    #   @return [Array<Types::GroupInformation>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListGroupsResponse < Struct.new(
      nil,
      :groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListLoggerDefinitionVersionsRequest < Struct.new(
      nil,
      :logger_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute versions
    #   Information about a version.
    #   @return [Array<Types::VersionInformation>]
    class ListLoggerDefinitionVersionsResponse < Struct.new(
      nil,
      :next_token,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListLoggerDefinitionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #   @return [Array<Types::DefinitionInformation>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListLoggerDefinitionsResponse < Struct.new(
      nil,
      :definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #   @return [String]
    class ListResourceDefinitionVersionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :resource_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute versions
    #   Information about a version.
    #   @return [Array<Types::VersionInformation>]
    class ListResourceDefinitionVersionsResponse < Struct.new(
      nil,
      :next_token,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListResourceDefinitionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #   @return [Array<Types::DefinitionInformation>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListResourceDefinitionsResponse < Struct.new(
      nil,
      :definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #   @return [String]
    class ListSubscriptionDefinitionVersionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :subscription_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    # @!attribute versions
    #   Information about a version.
    #   @return [Array<Types::VersionInformation>]
    class ListSubscriptionDefinitionVersionsResponse < Struct.new(
      nil,
      :next_token,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #   @return [String]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListSubscriptionDefinitionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #   @return [Array<Types::DefinitionInformation>]
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #   @return [String]
    class ListSubscriptionDefinitionsResponse < Struct.new(
      nil,
      :definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Attributes that define a local device resource.
    # @!attribute group_owner_setting
    #   Group/owner related settings for local resources.
    #   @return [Types::GroupOwnerSetting]
    # @!attribute source_path
    #   The local absolute path of the device resource. The source path for a device resource can refer only to a character device or block device under ''/dev''.
    #   @return [String]
    class LocalDeviceResourceData < Struct.new(
      nil,
      :group_owner_setting,
      :source_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Attributes that define a local volume resource.
    # @!attribute destination_path
    #   The absolute local path of the resource inside the Lambda environment.
    #   @return [String]
    # @!attribute group_owner_setting
    #   Allows you to configure additional group privileges for the Lambda process. This field is optional.
    #   @return [Types::GroupOwnerSetting]
    # @!attribute source_path
    #   The local absolute path of the volume resource on the host. The source path for a volume resource type cannot start with ''/sys''.
    #   @return [String]
    class LocalVolumeResourceData < Struct.new(
      nil,
      :destination_path,
      :group_owner_setting,
      :source_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a logger
    # @!attribute component
    #   The component that will be subject to logging.
    #   @return [String]
    # @!attribute id
    #   A descriptive or arbitrary ID for the logger. This value must be unique within the logger definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #   @return [String]
    # @!attribute level
    #   The level of the logs.
    #   @return [String]
    # @!attribute space
    #   The amount of file space, in KB, to use if the local file system is used for logging purposes.
    #   @return [Integer]
    # @!attribute type
    #   The type of log output which will be used.
    #   @return [String]
    class Logger < Struct.new(
      nil,
      :component,
      :id,
      :level,
      :space,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a logger definition version.
    # @!attribute loggers
    #   A list of loggers.
    #   @return [Array<Types::Logger>]
    class LoggerDefinitionVersion < Struct.new(
      nil,
      :loggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information needed to reset deployments.
    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute force
    #   If true, performs a best-effort only core reset.
    #   @return [Boolean]
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class ResetDeploymentsRequest < Struct.new(
      nil,
      :amzn_client_token,
      :force,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_arn
    #   The ARN of the deployment.
    #   @return [String]
    # @!attribute deployment_id
    #   The ID of the deployment.
    #   @return [String]
    class ResetDeploymentsResponse < Struct.new(
      nil,
      :deployment_arn,
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a resource.
    # @!attribute id
    #   The resource ID, used to refer to a resource in the Lambda function configuration. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.
    #   @return [String]
    # @!attribute name
    #   The descriptive resource name, which is displayed on the AWS IoT Greengrass console. Max length 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.
    #   @return [String]
    # @!attribute resource_data_container
    #   A container of data for all resource types.
    #   @return [Types::ResourceDataContainer]
    class Resource < Struct.new(
      nil,
      :id,
      :name,
      :resource_data_container,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A policy used by the function to access a resource.
    # @!attribute permission
    #   The permissions that the Lambda function has to the resource. Can be one of ''rw'' (read/write) or ''ro'' (read-only).
    #   @return [String]
    # @!attribute resource_id
    #   The ID of the resource. (This ID is assigned to the resource when you create the resource definiton.)
    #   @return [String]
    class ResourceAccessPolicy < Struct.new(
      nil,
      :permission,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A container for resource data. The container takes only one of the following supported resource data types: ''LocalDeviceResourceData'', ''LocalVolumeResourceData'', ''SageMakerMachineLearningModelResourceData'', ''S3MachineLearningModelResourceData'', ''SecretsManagerSecretResourceData''.
    # @!attribute local_device_resource_data
    #   Attributes that define the local device resource.
    #   @return [Types::LocalDeviceResourceData]
    # @!attribute local_volume_resource_data
    #   Attributes that define the local volume resource.
    #   @return [Types::LocalVolumeResourceData]
    # @!attribute s3_machine_learning_model_resource_data
    #   Attributes that define an Amazon S3 machine learning resource.
    #   @return [Types::S3MachineLearningModelResourceData]
    # @!attribute sage_maker_machine_learning_model_resource_data
    #   Attributes that define an Amazon SageMaker machine learning resource.
    #   @return [Types::SageMakerMachineLearningModelResourceData]
    # @!attribute secrets_manager_secret_resource_data
    #   Attributes that define a secret resource, which references a secret from AWS Secrets Manager.
    #   @return [Types::SecretsManagerSecretResourceData]
    class ResourceDataContainer < Struct.new(
      nil,
      :local_device_resource_data,
      :local_volume_resource_data,
      :s3_machine_learning_model_resource_data,
      :sage_maker_machine_learning_model_resource_data,
      :secrets_manager_secret_resource_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a resource definition version.
    # @!attribute resources
    #   A list of resources.
    #   @return [Array<Types::Resource>]
    class ResourceDefinitionVersion < Struct.new(
      nil,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The owner setting for downloaded machine learning resources.
    # @!attribute group_owner
    #   The group owner of the resource. This is the name of an existing Linux OS group on the system or a GID. The group's permissions are added to the Lambda process.
    #   @return [String]
    # @!attribute group_permission
    #   The permissions that the group owner has to the resource. Valid values are ''rw'' (read/write) or ''ro'' (read-only).
    #   @return [String]
    class ResourceDownloadOwnerSetting < Struct.new(
      nil,
      :group_owner,
      :group_permission,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Runtime configuration for a thing.
    # @!attribute telemetry_configuration
    #   Configuration for telemetry service.
    #   @return [Types::TelemetryConfiguration]
    class RuntimeConfiguration < Struct.new(
      nil,
      :telemetry_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Attributes that define an Amazon S3 machine learning resource.
    # @!attribute destination_path
    #   The absolute local path of the resource inside the Lambda environment.
    #   @return [String]
    # @!attribute owner_setting
    #   The owner setting for downloaded machine learning resources.
    #   @return [Types::ResourceDownloadOwnerSetting]
    # @!attribute s3_uri
    #   The URI of the source model in an S3 bucket. The model package must be in tar.gz or .zip format.
    #   @return [String]
    class S3MachineLearningModelResourceData < Struct.new(
      nil,
      :destination_path,
      :owner_setting,
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Attributes that define an Amazon SageMaker machine learning resource.
    # @!attribute destination_path
    #   The absolute local path of the resource inside the Lambda environment.
    #   @return [String]
    # @!attribute owner_setting
    #   The owner setting for downloaded machine learning resources.
    #   @return [Types::ResourceDownloadOwnerSetting]
    # @!attribute sage_maker_job_arn
    #   The ARN of the Amazon SageMaker training job that represents the source model.
    #   @return [String]
    class SageMakerMachineLearningModelResourceData < Struct.new(
      nil,
      :destination_path,
      :owner_setting,
      :sage_maker_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Attributes that define a secret resource, which references a secret from AWS Secrets Manager. AWS IoT Greengrass stores a local, encrypted copy of the secret on the Greengrass core, where it can be securely accessed by connectors and Lambda functions.
    # @!attribute arn
    #   The ARN of the Secrets Manager secret to make available on the core. The value of the secret's latest version (represented by the ''AWSCURRENT'' staging label) is included by default.
    #   @return [String]
    # @!attribute additional_staging_labels_to_download
    #   Optional. The staging labels whose values you want to make available on the core, in addition to ''AWSCURRENT''.
    #   @return [Array<String>]
    class SecretsManagerSecretResourceData < Struct.new(
      nil,
      :arn,
      :additional_staging_labels_to_download,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #   @return [String]
    # @!attribute execution_role_arn
    #   The ARN of the execution role to associate with the bulk deployment operation. This IAM role must allow the ''greengrass:CreateDeployment'' action for all group versions that are listed in the input file. This IAM role must have access to the S3 bucket containing the input file.
    #   @return [String]
    # @!attribute input_file_uri
    #   The URI of the input file contained in the S3 bucket. The execution role must have ''getObject'' permissions on this bucket to access the input file. The input file is a JSON-serialized, line delimited file with UTF-8 encoding that provides a list of group and version IDs and the deployment type. This file must be less than 100 MB. Currently, AWS IoT Greengrass supports only ''NewDeployment'' deployment types.
    #   @return [String]
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #   @return [Hash<String, String>]
    class StartBulkDeploymentRequest < Struct.new(
      nil,
      :amzn_client_token,
      :execution_role_arn,
      :input_file_uri,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bulk_deployment_arn
    #   The ARN of the bulk deployment.
    #   @return [String]
    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #   @return [String]
    class StartBulkDeploymentResponse < Struct.new(
      nil,
      :bulk_deployment_arn,
      :bulk_deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #   @return [String]
    class StopBulkDeploymentRequest < Struct.new(
      nil,
      :bulk_deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopBulkDeploymentResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a subscription.
    # @!attribute id
    #   A descriptive or arbitrary ID for the subscription. This value must be unique within the subscription definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #   @return [String]
    # @!attribute source
    #   The source of the subscription. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'.
    #   @return [String]
    # @!attribute subject
    #   The MQTT topic used to route the message.
    #   @return [String]
    # @!attribute target
    #   Where the message is sent to. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'.
    #   @return [String]
    class Subscription < Struct.new(
      nil,
      :id,
      :source,
      :subject,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a subscription definition version.
    # @!attribute subscriptions
    #   A list of subscriptions.
    #   @return [Array<Types::Subscription>]
    class SubscriptionDefinitionVersion < Struct.new(
      nil,
      :subscriptions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A map of the key-value pairs for the resource tag.
    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    # @!attribute tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration settings for running telemetry.
    # @!attribute configuration_sync_status
    #   Synchronization status of the device reported configuration with the desired configuration.
    #   @return [String]
    # @!attribute telemetry
    #   Configure telemetry to be on or off.
    #   @return [String]
    class TelemetryConfiguration < Struct.new(
      nil,
      :configuration_sync_status,
      :telemetry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration settings for running telemetry.
    # @!attribute telemetry
    #   Configure telemetry to be on or off.
    #   @return [String]
    class TelemetryConfigurationUpdate < Struct.new(
      nil,
      :telemetry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    # @!attribute tag_keys
    #   An array of tag keys to delete
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Connectivity information.
    # @!attribute connectivity_info
    #   A list of connectivity info.
    #   @return [Array<Types::ConnectivityInfo>]
    # @!attribute thing_name
    #   The thing name.
    #   @return [String]
    class UpdateConnectivityInfoRequest < Struct.new(
      nil,
      :connectivity_info,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   A message about the connectivity info update request.
    #   @return [String]
    # @!attribute version
    #   The new version of the connectivity info.
    #   @return [String]
    class UpdateConnectivityInfoResponse < Struct.new(
      nil,
      :message,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class UpdateConnectorDefinitionRequest < Struct.new(
      nil,
      :connector_definition_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateConnectorDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class UpdateCoreDefinitionRequest < Struct.new(
      nil,
      :core_definition_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateCoreDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class UpdateDeviceDefinitionRequest < Struct.new(
      nil,
      :device_definition_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDeviceDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class UpdateFunctionDefinitionRequest < Struct.new(
      nil,
      :function_definition_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateFunctionDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in milliseconds.
    #   @return [String]
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    class UpdateGroupCertificateConfigurationRequest < Struct.new(
      nil,
      :certificate_expiry_in_milliseconds,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_authority_expiry_in_milliseconds
    #   The amount of time remaining before the certificate authority expires, in milliseconds.
    #   @return [String]
    # @!attribute certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in milliseconds.
    #   @return [String]
    # @!attribute group_id
    #   The ID of the group certificate configuration.
    #   @return [String]
    class UpdateGroupCertificateConfigurationResponse < Struct.new(
      nil,
      :certificate_authority_expiry_in_milliseconds,
      :certificate_expiry_in_milliseconds,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class UpdateGroupRequest < Struct.new(
      nil,
      :group_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #   @return [String]
    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    class UpdateLoggerDefinitionRequest < Struct.new(
      nil,
      :logger_definition_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateLoggerDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #   @return [String]
    class UpdateResourceDefinitionRequest < Struct.new(
      nil,
      :name,
      :resource_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateResourceDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the definition.
    #   @return [String]
    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #   @return [String]
    class UpdateSubscriptionDefinitionRequest < Struct.new(
      nil,
      :name,
      :subscription_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateSubscriptionDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute telemetry_configuration
    #   Configuration for telemetry service.
    #   @return [Types::TelemetryConfigurationUpdate]
    # @!attribute thing_name
    #   The thing name.
    #   @return [String]
    class UpdateThingRuntimeConfigurationRequest < Struct.new(
      nil,
      :telemetry_configuration,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateThingRuntimeConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about a version.
    # @!attribute arn
    #   The ARN of the version.
    #   @return [String]
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #   @return [String]
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    # @!attribute version
    #   The ID of the version.
    #   @return [String]
    class VersionInformation < Struct.new(
      nil,
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
