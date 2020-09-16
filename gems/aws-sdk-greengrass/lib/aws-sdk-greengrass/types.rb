# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Greengrass
  module Types

    # @note When making an API call, you may pass AssociateRoleToGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #         role_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role you wish to associate with this group. The
    #   existence of the role is not validated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateRoleToGroupRequest AWS API Documentation
    #
    class AssociateRoleToGroupRequest < Struct.new(
      :group_id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associated_at
    #   The time, in milliseconds since the epoch, when the role ARN was
    #   associated with the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateRoleToGroupResponse AWS API Documentation
    #
    class AssociateRoleToGroupResponse < Struct.new(
      :associated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateServiceRoleToAccountRequest
    #   data as a hash:
    #
    #       {
    #         role_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the service role you wish to associate with your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateServiceRoleToAccountRequest AWS API Documentation
    #
    class AssociateServiceRoleToAccountRequest < Struct.new(
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associated_at
    #   The time when the service role was associated with the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateServiceRoleToAccountResponse AWS API Documentation
    #
    class AssociateServiceRoleToAccountResponse < Struct.new(
      :associated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # General error information.
    #
    # @!attribute [rw] error_details
    #   A list of error details.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :error_details,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a bulk deployment. You cannot start a new bulk
    # deployment while another one is still running or in a non-terminal
    # state.
    #
    # @!attribute [rw] bulk_deployment_arn
    #   The ARN of the bulk deployment.
    #   @return [String]
    #
    # @!attribute [rw] bulk_deployment_id
    #   The ID of the bulk deployment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in ISO format, when the deployment was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/BulkDeployment AWS API Documentation
    #
    class BulkDeployment < Struct.new(
      :bulk_deployment_arn,
      :bulk_deployment_id,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Relevant metrics on input records processed during bulk deployment.
    #
    # @!attribute [rw] invalid_input_records
    #   The total number of records that returned a non-retryable error. For
    #   example, this can occur if a group record from the input file uses
    #   an invalid format or specifies a nonexistent group version, or if
    #   the execution role doesn't grant permission to deploy a group or
    #   group version.
    #   @return [Integer]
    #
    # @!attribute [rw] records_processed
    #   The total number of group records from the input file that have been
    #   processed so far, or attempted.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_attempts
    #   The total number of deployment attempts that returned a retryable
    #   error. For example, a retry is triggered if the attempt to deploy a
    #   group returns a throttling error. ''StartBulkDeployment''
    #   retries a group deployment up to five times.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/BulkDeploymentMetrics AWS API Documentation
    #
    class BulkDeploymentMetrics < Struct.new(
      :invalid_input_records,
      :records_processed,
      :retry_attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an individual group deployment in a bulk deployment
    # operation.
    #
    # @!attribute [rw] created_at
    #   The time, in ISO format, when the deployment was created.
    #   @return [String]
    #
    # @!attribute [rw] deployment_arn
    #   The ARN of the group deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The ID of the group deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   The current status of the group deployment: ''InProgress'',
    #   ''Building'', ''Success'', or ''Failure''.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   The type of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Details about the error.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @!attribute [rw] error_message
    #   The error message for a failed deployment
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The ARN of the Greengrass group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/BulkDeploymentResult AWS API Documentation
    #
    class BulkDeploymentResult < Struct.new(
      :created_at,
      :deployment_arn,
      :deployment_id,
      :deployment_status,
      :deployment_type,
      :error_details,
      :error_message,
      :group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Greengrass core's connectivity.
    #
    # @note When making an API call, you may pass ConnectivityInfo
    #   data as a hash:
    #
    #       {
    #         host_address: "__string",
    #         id: "__string",
    #         metadata: "__string",
    #         port_number: 1,
    #       }
    #
    # @!attribute [rw] host_address
    #   The endpoint for the Greengrass core. Can be an IP address or DNS.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the connectivity information.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata for this endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port_number
    #   The port of the Greengrass core. Usually 8883.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ConnectivityInfo AWS API Documentation
    #
    class ConnectivityInfo < Struct.new(
      :host_address,
      :id,
      :metadata,
      :port_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a connector. Connectors run on the Greengrass core
    # and contain built-in integration with local infrastructure, device
    # protocols, AWS, and other cloud services.
    #
    # @note When making an API call, you may pass Connector
    #   data as a hash:
    #
    #       {
    #         connector_arn: "__string", # required
    #         id: "__string", # required
    #         parameters: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] connector_arn
    #   The ARN of the connector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A descriptive or arbitrary ID for the connector. This value must be
    #   unique within the connector definition version. Max length is 128
    #   characters with pattern \[a-zA-Z0-9:\_-\]+.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters or configuration that the connector uses.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Connector AWS API Documentation
    #
    class Connector < Struct.new(
      :connector_arn,
      :id,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the connector definition version, which is a
    # container for connectors.
    #
    # @note When making an API call, you may pass ConnectorDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         connectors: [
    #           {
    #             connector_arn: "__string", # required
    #             id: "__string", # required
    #             parameters: {
    #               "__string" => "__string",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] connectors
    #   A list of references to connectors in this version, with their
    #   corresponding configuration settings.
    #   @return [Array<Types::Connector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ConnectorDefinitionVersion AWS API Documentation
    #
    class ConnectorDefinitionVersion < Struct.new(
      :connectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a core.
    #
    # @note When making an API call, you may pass Core
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "__string", # required
    #         id: "__string", # required
    #         sync_shadow: false,
    #         thing_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the certificate associated with the core.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A descriptive or arbitrary ID for the core. This value must be
    #   unique within the core definition version. Max length is 128
    #   characters with pattern ''\[a-zA-Z0-9:\_-\]+''.
    #   @return [String]
    #
    # @!attribute [rw] sync_shadow
    #   If true, the core's local shadow is automatically synced with the
    #   cloud.
    #   @return [Boolean]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing which is the core.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Core AWS API Documentation
    #
    class Core < Struct.new(
      :certificate_arn,
      :id,
      :sync_shadow,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a core definition version.
    #
    # @note When making an API call, you may pass CoreDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         cores: [
    #           {
    #             certificate_arn: "__string", # required
    #             id: "__string", # required
    #             sync_shadow: false,
    #             thing_arn: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cores
    #   A list of cores in the core definition version.
    #   @return [Array<Types::Core>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CoreDefinitionVersion AWS API Documentation
    #
    class CoreDefinitionVersion < Struct.new(
      :cores)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConnectorDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           connectors: [
    #             {
    #               connector_arn: "__string", # required
    #               id: "__string", # required
    #               parameters: {
    #                 "__string" => "__string",
    #               },
    #             },
    #           ],
    #         },
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information about the connector definition version, which is a
    #   container for connectors.
    #   @return [Types::ConnectorDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateConnectorDefinitionRequest AWS API Documentation
    #
    class CreateConnectorDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateConnectorDefinitionResponse AWS API Documentation
    #
    class CreateConnectorDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConnectorDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         connector_definition_id: "__string", # required
    #         connectors: [
    #           {
    #             connector_arn: "__string", # required
    #             id: "__string", # required
    #             parameters: {
    #               "__string" => "__string",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] connector_definition_id
    #   @return [String]
    #
    # @!attribute [rw] connectors
    #   @return [Array<Types::Connector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateConnectorDefinitionVersionRequest AWS API Documentation
    #
    class CreateConnectorDefinitionVersionRequest < Struct.new(
      :amzn_client_token,
      :connector_definition_id,
      :connectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateConnectorDefinitionVersionResponse AWS API Documentation
    #
    class CreateConnectorDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCoreDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           cores: [
    #             {
    #               certificate_arn: "__string", # required
    #               id: "__string", # required
    #               sync_shadow: false,
    #               thing_arn: "__string", # required
    #             },
    #           ],
    #         },
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information about a core definition version.
    #   @return [Types::CoreDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateCoreDefinitionRequest AWS API Documentation
    #
    class CreateCoreDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateCoreDefinitionResponse AWS API Documentation
    #
    class CreateCoreDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCoreDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         core_definition_id: "__string", # required
    #         cores: [
    #           {
    #             certificate_arn: "__string", # required
    #             id: "__string", # required
    #             sync_shadow: false,
    #             thing_arn: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] core_definition_id
    #   @return [String]
    #
    # @!attribute [rw] cores
    #   @return [Array<Types::Core>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateCoreDefinitionVersionRequest AWS API Documentation
    #
    class CreateCoreDefinitionVersionRequest < Struct.new(
      :amzn_client_token,
      :core_definition_id,
      :cores)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateCoreDefinitionVersionResponse AWS API Documentation
    #
    class CreateCoreDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a deployment.
    #
    # @note When making an API call, you may pass CreateDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         deployment_id: "__string",
    #         deployment_type: "NewDeployment", # required, accepts NewDeployment, Redeployment, ResetDeployment, ForceResetDeployment
    #         group_id: "__string", # required
    #         group_version_id: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The ID of the deployment if you wish to redeploy a previous
    #   deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   The type of deployment. When used for ''CreateDeployment'', only
    #   ''NewDeployment'' and ''Redeployment'' are valid.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @!attribute [rw] group_version_id
    #   The ID of the group version to be deployed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeploymentRequest AWS API Documentation
    #
    class CreateDeploymentRequest < Struct.new(
      :amzn_client_token,
      :deployment_id,
      :deployment_type,
      :group_id,
      :group_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_arn
    #   The ARN of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeploymentResponse AWS API Documentation
    #
    class CreateDeploymentResponse < Struct.new(
      :deployment_arn,
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDeviceDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           devices: [
    #             {
    #               certificate_arn: "__string", # required
    #               id: "__string", # required
    #               sync_shadow: false,
    #               thing_arn: "__string", # required
    #             },
    #           ],
    #         },
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information about a device definition version.
    #   @return [Types::DeviceDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeviceDefinitionRequest AWS API Documentation
    #
    class CreateDeviceDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeviceDefinitionResponse AWS API Documentation
    #
    class CreateDeviceDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDeviceDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         device_definition_id: "__string", # required
    #         devices: [
    #           {
    #             certificate_arn: "__string", # required
    #             id: "__string", # required
    #             sync_shadow: false,
    #             thing_arn: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] device_definition_id
    #   @return [String]
    #
    # @!attribute [rw] devices
    #   @return [Array<Types::Device>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeviceDefinitionVersionRequest AWS API Documentation
    #
    class CreateDeviceDefinitionVersionRequest < Struct.new(
      :amzn_client_token,
      :device_definition_id,
      :devices)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeviceDefinitionVersionResponse AWS API Documentation
    #
    class CreateDeviceDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFunctionDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           default_config: {
    #             execution: {
    #               isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #               run_as: {
    #                 gid: 1,
    #                 uid: 1,
    #               },
    #             },
    #           },
    #           functions: [
    #             {
    #               function_arn: "__string",
    #               function_configuration: {
    #                 encoding_type: "binary", # accepts binary, json
    #                 environment: {
    #                   access_sysfs: false,
    #                   execution: {
    #                     isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #                     run_as: {
    #                       gid: 1,
    #                       uid: 1,
    #                     },
    #                   },
    #                   resource_access_policies: [
    #                     {
    #                       permission: "ro", # accepts ro, rw
    #                       resource_id: "__string", # required
    #                     },
    #                   ],
    #                   variables: {
    #                     "__string" => "__string",
    #                   },
    #                 },
    #                 exec_args: "__string",
    #                 executable: "__string",
    #                 memory_size: 1,
    #                 pinned: false,
    #                 timeout: 1,
    #               },
    #               id: "__string", # required
    #             },
    #           ],
    #         },
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information about a function definition version.
    #   @return [Types::FunctionDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateFunctionDefinitionRequest AWS API Documentation
    #
    class CreateFunctionDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateFunctionDefinitionResponse AWS API Documentation
    #
    class CreateFunctionDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFunctionDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         default_config: {
    #           execution: {
    #             isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #             run_as: {
    #               gid: 1,
    #               uid: 1,
    #             },
    #           },
    #         },
    #         function_definition_id: "__string", # required
    #         functions: [
    #           {
    #             function_arn: "__string",
    #             function_configuration: {
    #               encoding_type: "binary", # accepts binary, json
    #               environment: {
    #                 access_sysfs: false,
    #                 execution: {
    #                   isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #                   run_as: {
    #                     gid: 1,
    #                     uid: 1,
    #                   },
    #                 },
    #                 resource_access_policies: [
    #                   {
    #                     permission: "ro", # accepts ro, rw
    #                     resource_id: "__string", # required
    #                   },
    #                 ],
    #                 variables: {
    #                   "__string" => "__string",
    #                 },
    #               },
    #               exec_args: "__string",
    #               executable: "__string",
    #               memory_size: 1,
    #               pinned: false,
    #               timeout: 1,
    #             },
    #             id: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] default_config
    #   The default configuration that applies to all Lambda functions in
    #   the group. Individual Lambda functions can override these settings.
    #   @return [Types::FunctionDefaultConfig]
    #
    # @!attribute [rw] function_definition_id
    #   @return [String]
    #
    # @!attribute [rw] functions
    #   @return [Array<Types::Function>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateFunctionDefinitionVersionRequest AWS API Documentation
    #
    class CreateFunctionDefinitionVersionRequest < Struct.new(
      :amzn_client_token,
      :default_config,
      :function_definition_id,
      :functions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateFunctionDefinitionVersionResponse AWS API Documentation
    #
    class CreateFunctionDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupCertificateAuthorityRequest AWS API Documentation
    #
    class CreateGroupCertificateAuthorityRequest < Struct.new(
      :amzn_client_token,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_certificate_authority_arn
    #   The ARN of the group certificate authority.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupCertificateAuthorityResponse AWS API Documentation
    #
    class CreateGroupCertificateAuthorityResponse < Struct.new(
      :group_certificate_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           connector_definition_version_arn: "__string",
    #           core_definition_version_arn: "__string",
    #           device_definition_version_arn: "__string",
    #           function_definition_version_arn: "__string",
    #           logger_definition_version_arn: "__string",
    #           resource_definition_version_arn: "__string",
    #           subscription_definition_version_arn: "__string",
    #         },
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information about a group version.
    #   @return [Types::GroupVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         connector_definition_version_arn: "__string",
    #         core_definition_version_arn: "__string",
    #         device_definition_version_arn: "__string",
    #         function_definition_version_arn: "__string",
    #         group_id: "__string", # required
    #         logger_definition_version_arn: "__string",
    #         resource_definition_version_arn: "__string",
    #         subscription_definition_version_arn: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] connector_definition_version_arn
    #   @return [String]
    #
    # @!attribute [rw] core_definition_version_arn
    #   @return [String]
    #
    # @!attribute [rw] device_definition_version_arn
    #   @return [String]
    #
    # @!attribute [rw] function_definition_version_arn
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @!attribute [rw] logger_definition_version_arn
    #   @return [String]
    #
    # @!attribute [rw] resource_definition_version_arn
    #   @return [String]
    #
    # @!attribute [rw] subscription_definition_version_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupVersionRequest AWS API Documentation
    #
    class CreateGroupVersionRequest < Struct.new(
      :amzn_client_token,
      :connector_definition_version_arn,
      :core_definition_version_arn,
      :device_definition_version_arn,
      :function_definition_version_arn,
      :group_id,
      :logger_definition_version_arn,
      :resource_definition_version_arn,
      :subscription_definition_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupVersionResponse AWS API Documentation
    #
    class CreateGroupVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLoggerDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           loggers: [
    #             {
    #               component: "GreengrassSystem", # required, accepts GreengrassSystem, Lambda
    #               id: "__string", # required
    #               level: "DEBUG", # required, accepts DEBUG, INFO, WARN, ERROR, FATAL
    #               space: 1,
    #               type: "FileSystem", # required, accepts FileSystem, AWSCloudWatch
    #             },
    #           ],
    #         },
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information about a logger definition version.
    #   @return [Types::LoggerDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateLoggerDefinitionRequest AWS API Documentation
    #
    class CreateLoggerDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateLoggerDefinitionResponse AWS API Documentation
    #
    class CreateLoggerDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLoggerDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         logger_definition_id: "__string", # required
    #         loggers: [
    #           {
    #             component: "GreengrassSystem", # required, accepts GreengrassSystem, Lambda
    #             id: "__string", # required
    #             level: "DEBUG", # required, accepts DEBUG, INFO, WARN, ERROR, FATAL
    #             space: 1,
    #             type: "FileSystem", # required, accepts FileSystem, AWSCloudWatch
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] logger_definition_id
    #   @return [String]
    #
    # @!attribute [rw] loggers
    #   @return [Array<Types::Logger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateLoggerDefinitionVersionRequest AWS API Documentation
    #
    class CreateLoggerDefinitionVersionRequest < Struct.new(
      :amzn_client_token,
      :logger_definition_id,
      :loggers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateLoggerDefinitionVersionResponse AWS API Documentation
    #
    class CreateLoggerDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResourceDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           resources: [
    #             {
    #               id: "__string", # required
    #               name: "__string", # required
    #               resource_data_container: { # required
    #                 local_device_resource_data: {
    #                   group_owner_setting: {
    #                     auto_add_group_owner: false,
    #                     group_owner: "__string",
    #                   },
    #                   source_path: "__string",
    #                 },
    #                 local_volume_resource_data: {
    #                   destination_path: "__string",
    #                   group_owner_setting: {
    #                     auto_add_group_owner: false,
    #                     group_owner: "__string",
    #                   },
    #                   source_path: "__string",
    #                 },
    #                 s3_machine_learning_model_resource_data: {
    #                   destination_path: "__string",
    #                   owner_setting: {
    #                     group_owner: "__string", # required
    #                     group_permission: "ro", # required, accepts ro, rw
    #                   },
    #                   s3_uri: "__string",
    #                 },
    #                 sage_maker_machine_learning_model_resource_data: {
    #                   destination_path: "__string",
    #                   owner_setting: {
    #                     group_owner: "__string", # required
    #                     group_permission: "ro", # required, accepts ro, rw
    #                   },
    #                   sage_maker_job_arn: "__string",
    #                 },
    #                 secrets_manager_secret_resource_data: {
    #                   arn: "__string",
    #                   additional_staging_labels_to_download: ["__string"],
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information about a resource definition version.
    #   @return [Types::ResourceDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateResourceDefinitionRequest AWS API Documentation
    #
    class CreateResourceDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateResourceDefinitionResponse AWS API Documentation
    #
    class CreateResourceDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResourceDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         resource_definition_id: "__string", # required
    #         resources: [
    #           {
    #             id: "__string", # required
    #             name: "__string", # required
    #             resource_data_container: { # required
    #               local_device_resource_data: {
    #                 group_owner_setting: {
    #                   auto_add_group_owner: false,
    #                   group_owner: "__string",
    #                 },
    #                 source_path: "__string",
    #               },
    #               local_volume_resource_data: {
    #                 destination_path: "__string",
    #                 group_owner_setting: {
    #                   auto_add_group_owner: false,
    #                   group_owner: "__string",
    #                 },
    #                 source_path: "__string",
    #               },
    #               s3_machine_learning_model_resource_data: {
    #                 destination_path: "__string",
    #                 owner_setting: {
    #                   group_owner: "__string", # required
    #                   group_permission: "ro", # required, accepts ro, rw
    #                 },
    #                 s3_uri: "__string",
    #               },
    #               sage_maker_machine_learning_model_resource_data: {
    #                 destination_path: "__string",
    #                 owner_setting: {
    #                   group_owner: "__string", # required
    #                   group_permission: "ro", # required, accepts ro, rw
    #                 },
    #                 sage_maker_job_arn: "__string",
    #               },
    #               secrets_manager_secret_resource_data: {
    #                 arn: "__string",
    #                 additional_staging_labels_to_download: ["__string"],
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] resource_definition_id
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   @return [Array<Types::Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateResourceDefinitionVersionRequest AWS API Documentation
    #
    class CreateResourceDefinitionVersionRequest < Struct.new(
      :amzn_client_token,
      :resource_definition_id,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateResourceDefinitionVersionResponse AWS API Documentation
    #
    class CreateResourceDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request for the CreateSoftwareUpdateJob API.
    #
    # @note When making an API call, you may pass CreateSoftwareUpdateJobRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         s3_url_signer_role: "S3UrlSignerRole", # required
    #         software_to_update: "core", # required, accepts core, ota_agent
    #         update_agent_log_level: "NONE", # accepts NONE, TRACE, DEBUG, VERBOSE, INFO, WARN, ERROR, FATAL
    #         update_targets: ["__string"], # required
    #         update_targets_architecture: "armv6l", # required, accepts armv6l, armv7l, x86_64, aarch64
    #         update_targets_operating_system: "ubuntu", # required, accepts ubuntu, raspbian, amazon_linux, openwrt
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] s3_url_signer_role
    #   The IAM Role that Greengrass will use to create pre-signed URLs
    #   pointing towards the update artifact.
    #   @return [String]
    #
    # @!attribute [rw] software_to_update
    #   The piece of software on the Greengrass core that will be updated.
    #   @return [String]
    #
    # @!attribute [rw] update_agent_log_level
    #   The minimum level of log statements that should be logged by the OTA
    #   Agent during an update.
    #   @return [String]
    #
    # @!attribute [rw] update_targets
    #   The ARNs of the targets (IoT things or IoT thing groups) that this
    #   update will be applied to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] update_targets_architecture
    #   The architecture of the cores which are the targets of an update.
    #   @return [String]
    #
    # @!attribute [rw] update_targets_operating_system
    #   The operating system of the cores which are the targets of an
    #   update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSoftwareUpdateJobRequest AWS API Documentation
    #
    class CreateSoftwareUpdateJobRequest < Struct.new(
      :amzn_client_token,
      :s3_url_signer_role,
      :software_to_update,
      :update_agent_log_level,
      :update_targets,
      :update_targets_architecture,
      :update_targets_operating_system)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iot_job_arn
    #   The IoT Job ARN corresponding to this update.
    #   @return [String]
    #
    # @!attribute [rw] iot_job_id
    #   The IoT Job Id corresponding to this update.
    #   @return [String]
    #
    # @!attribute [rw] platform_software_version
    #   The software version installed on the device or devices after the
    #   update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSoftwareUpdateJobResponse AWS API Documentation
    #
    class CreateSoftwareUpdateJobResponse < Struct.new(
      :iot_job_arn,
      :iot_job_id,
      :platform_software_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSubscriptionDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           subscriptions: [
    #             {
    #               id: "__string", # required
    #               source: "__string", # required
    #               subject: "__string", # required
    #               target: "__string", # required
    #             },
    #           ],
    #         },
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information about a subscription definition version.
    #   @return [Types::SubscriptionDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSubscriptionDefinitionRequest AWS API Documentation
    #
    class CreateSubscriptionDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSubscriptionDefinitionResponse AWS API Documentation
    #
    class CreateSubscriptionDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSubscriptionDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         subscription_definition_id: "__string", # required
    #         subscriptions: [
    #           {
    #             id: "__string", # required
    #             source: "__string", # required
    #             subject: "__string", # required
    #             target: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] subscription_definition_id
    #   @return [String]
    #
    # @!attribute [rw] subscriptions
    #   @return [Array<Types::Subscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSubscriptionDefinitionVersionRequest AWS API Documentation
    #
    class CreateSubscriptionDefinitionVersionRequest < Struct.new(
      :amzn_client_token,
      :subscription_definition_id,
      :subscriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSubscriptionDefinitionVersionResponse AWS API Documentation
    #
    class CreateSubscriptionDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a definition.
    #
    # @!attribute [rw] arn
    #   The ARN of the definition.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the definition.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was
    #   last updated.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The ID of the latest version associated with the definition.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the definition.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag(s) attached to the resource arn.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DefinitionInformation AWS API Documentation
    #
    class DefinitionInformation < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConnectorDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         connector_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] connector_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteConnectorDefinitionRequest AWS API Documentation
    #
    class DeleteConnectorDefinitionRequest < Struct.new(
      :connector_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteConnectorDefinitionResponse AWS API Documentation
    #
    class DeleteConnectorDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteCoreDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         core_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] core_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteCoreDefinitionRequest AWS API Documentation
    #
    class DeleteCoreDefinitionRequest < Struct.new(
      :core_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteCoreDefinitionResponse AWS API Documentation
    #
    class DeleteCoreDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDeviceDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         device_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] device_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteDeviceDefinitionRequest AWS API Documentation
    #
    class DeleteDeviceDefinitionRequest < Struct.new(
      :device_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteDeviceDefinitionResponse AWS API Documentation
    #
    class DeleteDeviceDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteFunctionDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         function_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] function_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteFunctionDefinitionRequest AWS API Documentation
    #
    class DeleteFunctionDefinitionRequest < Struct.new(
      :function_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteFunctionDefinitionResponse AWS API Documentation
    #
    class DeleteFunctionDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteGroupResponse AWS API Documentation
    #
    class DeleteGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteLoggerDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         logger_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] logger_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteLoggerDefinitionRequest AWS API Documentation
    #
    class DeleteLoggerDefinitionRequest < Struct.new(
      :logger_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteLoggerDefinitionResponse AWS API Documentation
    #
    class DeleteLoggerDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteResourceDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         resource_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteResourceDefinitionRequest AWS API Documentation
    #
    class DeleteResourceDefinitionRequest < Struct.new(
      :resource_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteResourceDefinitionResponse AWS API Documentation
    #
    class DeleteResourceDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSubscriptionDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         subscription_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] subscription_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteSubscriptionDefinitionRequest AWS API Documentation
    #
    class DeleteSubscriptionDefinitionRequest < Struct.new(
      :subscription_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteSubscriptionDefinitionResponse AWS API Documentation
    #
    class DeleteSubscriptionDefinitionResponse < Aws::EmptyStructure; end

    # Information about a deployment.
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the deployment was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] deployment_arn
    #   The ARN of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   The type of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The ARN of the group for this deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Deployment AWS API Documentation
    #
    class Deployment < Struct.new(
      :created_at,
      :deployment_arn,
      :deployment_id,
      :deployment_type,
      :group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a device.
    #
    # @note When making an API call, you may pass Device
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "__string", # required
    #         id: "__string", # required
    #         sync_shadow: false,
    #         thing_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the certificate associated with the device.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A descriptive or arbitrary ID for the device. This value must be
    #   unique within the device definition version. Max length is 128
    #   characters with pattern ''\[a-zA-Z0-9:\_-\]+''.
    #   @return [String]
    #
    # @!attribute [rw] sync_shadow
    #   If true, the device's local shadow will be automatically synced
    #   with the cloud.
    #   @return [Boolean]
    #
    # @!attribute [rw] thing_arn
    #   The thing ARN of the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Device AWS API Documentation
    #
    class Device < Struct.new(
      :certificate_arn,
      :id,
      :sync_shadow,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a device definition version.
    #
    # @note When making an API call, you may pass DeviceDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         devices: [
    #           {
    #             certificate_arn: "__string", # required
    #             id: "__string", # required
    #             sync_shadow: false,
    #             thing_arn: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] devices
    #   A list of devices in the definition version.
    #   @return [Array<Types::Device>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeviceDefinitionVersion AWS API Documentation
    #
    class DeviceDefinitionVersion < Struct.new(
      :devices)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateRoleFromGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateRoleFromGroupRequest AWS API Documentation
    #
    class DisassociateRoleFromGroupRequest < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disassociated_at
    #   The time, in milliseconds since the epoch, when the role was
    #   disassociated from the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateRoleFromGroupResponse AWS API Documentation
    #
    class DisassociateRoleFromGroupResponse < Struct.new(
      :disassociated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateServiceRoleFromAccountRequest AWS API Documentation
    #
    class DisassociateServiceRoleFromAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] disassociated_at
    #   The time when the service role was disassociated from the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateServiceRoleFromAccountResponse AWS API Documentation
    #
    class DisassociateServiceRoleFromAccountResponse < Struct.new(
      :disassociated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Empty
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Empty AWS API Documentation
    #
    class Empty < Aws::EmptyStructure; end

    # Details about the error.
    #
    # @!attribute [rw] detailed_error_code
    #   A detailed error code.
    #   @return [String]
    #
    # @!attribute [rw] detailed_error_message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :detailed_error_code,
      :detailed_error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Lambda function.
    #
    # @note When making an API call, you may pass Function
    #   data as a hash:
    #
    #       {
    #         function_arn: "__string",
    #         function_configuration: {
    #           encoding_type: "binary", # accepts binary, json
    #           environment: {
    #             access_sysfs: false,
    #             execution: {
    #               isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #               run_as: {
    #                 gid: 1,
    #                 uid: 1,
    #               },
    #             },
    #             resource_access_policies: [
    #               {
    #                 permission: "ro", # accepts ro, rw
    #                 resource_id: "__string", # required
    #               },
    #             ],
    #             variables: {
    #               "__string" => "__string",
    #             },
    #           },
    #           exec_args: "__string",
    #           executable: "__string",
    #           memory_size: 1,
    #           pinned: false,
    #           timeout: 1,
    #         },
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] function_arn
    #   The ARN of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] function_configuration
    #   The configuration of the Lambda function.
    #   @return [Types::FunctionConfiguration]
    #
    # @!attribute [rw] id
    #   A descriptive or arbitrary ID for the function. This value must be
    #   unique within the function definition version. Max length is 128
    #   characters with pattern ''\[a-zA-Z0-9:\_-\]+''.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Function AWS API Documentation
    #
    class Function < Struct.new(
      :function_arn,
      :function_configuration,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the Lambda function.
    #
    # @note When making an API call, you may pass FunctionConfiguration
    #   data as a hash:
    #
    #       {
    #         encoding_type: "binary", # accepts binary, json
    #         environment: {
    #           access_sysfs: false,
    #           execution: {
    #             isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #             run_as: {
    #               gid: 1,
    #               uid: 1,
    #             },
    #           },
    #           resource_access_policies: [
    #             {
    #               permission: "ro", # accepts ro, rw
    #               resource_id: "__string", # required
    #             },
    #           ],
    #           variables: {
    #             "__string" => "__string",
    #           },
    #         },
    #         exec_args: "__string",
    #         executable: "__string",
    #         memory_size: 1,
    #         pinned: false,
    #         timeout: 1,
    #       }
    #
    # @!attribute [rw] encoding_type
    #   The expected encoding type of the input payload for the function.
    #   The default is ''json''.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment configuration of the function.
    #   @return [Types::FunctionConfigurationEnvironment]
    #
    # @!attribute [rw] exec_args
    #   The execution arguments.
    #   @return [String]
    #
    # @!attribute [rw] executable
    #   The name of the function executable.
    #   @return [String]
    #
    # @!attribute [rw] memory_size
    #   The memory size, in KB, which the function requires. This setting is
    #   not applicable and should be cleared when you run the Lambda
    #   function without containerization.
    #   @return [Integer]
    #
    # @!attribute [rw] pinned
    #   True if the function is pinned. Pinned means the function is
    #   long-lived and starts when the core starts.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout
    #   The allowed function execution time, after which Lambda should
    #   terminate the function. This timeout still applies to pinned Lambda
    #   functions for each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionConfiguration AWS API Documentation
    #
    class FunctionConfiguration < Struct.new(
      :encoding_type,
      :environment,
      :exec_args,
      :executable,
      :memory_size,
      :pinned,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # The environment configuration of the function.
    #
    # @note When making an API call, you may pass FunctionConfigurationEnvironment
    #   data as a hash:
    #
    #       {
    #         access_sysfs: false,
    #         execution: {
    #           isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #           run_as: {
    #             gid: 1,
    #             uid: 1,
    #           },
    #         },
    #         resource_access_policies: [
    #           {
    #             permission: "ro", # accepts ro, rw
    #             resource_id: "__string", # required
    #           },
    #         ],
    #         variables: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] access_sysfs
    #   If true, the Lambda function is allowed to access the host's /sys
    #   folder. Use this when the Lambda function needs to read device
    #   information from /sys. This setting applies only when you run the
    #   Lambda function in a Greengrass container.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution
    #   Configuration related to executing the Lambda function
    #   @return [Types::FunctionExecutionConfig]
    #
    # @!attribute [rw] resource_access_policies
    #   A list of the resources, with their permissions, to which the Lambda
    #   function will be granted access. A Lambda function can have at most
    #   10 resources. ResourceAccessPolicies apply only when you run the
    #   Lambda function in a Greengrass container.
    #   @return [Array<Types::ResourceAccessPolicy>]
    #
    # @!attribute [rw] variables
    #   Environment variables for the Lambda function's configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionConfigurationEnvironment AWS API Documentation
    #
    class FunctionConfigurationEnvironment < Struct.new(
      :access_sysfs,
      :execution,
      :resource_access_policies,
      :variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default configuration that applies to all Lambda functions in the
    # group. Individual Lambda functions can override these settings.
    #
    # @note When making an API call, you may pass FunctionDefaultConfig
    #   data as a hash:
    #
    #       {
    #         execution: {
    #           isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #           run_as: {
    #             gid: 1,
    #             uid: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] execution
    #   Configuration information that specifies how a Lambda function runs.
    #   @return [Types::FunctionDefaultExecutionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionDefaultConfig AWS API Documentation
    #
    class FunctionDefaultConfig < Struct.new(
      :execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information that specifies how a Lambda function runs.
    #
    # @note When making an API call, you may pass FunctionDefaultExecutionConfig
    #   data as a hash:
    #
    #       {
    #         isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #         run_as: {
    #           gid: 1,
    #           uid: 1,
    #         },
    #       }
    #
    # @!attribute [rw] isolation_mode
    #   Specifies whether the Lambda function runs in a Greengrass container
    #   (default) or without containerization. Unless your scenario requires
    #   that you run without containerization, we recommend that you run in
    #   a Greengrass container. Omit this value to run the Lambda function
    #   with the default containerization for the group.
    #   @return [String]
    #
    # @!attribute [rw] run_as
    #   Specifies the user and group whose permissions are used when running
    #   the Lambda function. You can specify one or both values to override
    #   the default values. We recommend that you avoid running as root
    #   unless absolutely necessary to minimize the risk of unintended
    #   changes or malicious attacks. To run as root, you must set
    #   ''IsolationMode'' to ''NoContainer'' and update config.json
    #   in ''greengrass-root/config'' to set
    #   ''allowFunctionsToRunAsRoot'' to ''yes''.
    #   @return [Types::FunctionRunAsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionDefaultExecutionConfig AWS API Documentation
    #
    class FunctionDefaultExecutionConfig < Struct.new(
      :isolation_mode,
      :run_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a function definition version.
    #
    # @note When making an API call, you may pass FunctionDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         default_config: {
    #           execution: {
    #             isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #             run_as: {
    #               gid: 1,
    #               uid: 1,
    #             },
    #           },
    #         },
    #         functions: [
    #           {
    #             function_arn: "__string",
    #             function_configuration: {
    #               encoding_type: "binary", # accepts binary, json
    #               environment: {
    #                 access_sysfs: false,
    #                 execution: {
    #                   isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #                   run_as: {
    #                     gid: 1,
    #                     uid: 1,
    #                   },
    #                 },
    #                 resource_access_policies: [
    #                   {
    #                     permission: "ro", # accepts ro, rw
    #                     resource_id: "__string", # required
    #                   },
    #                 ],
    #                 variables: {
    #                   "__string" => "__string",
    #                 },
    #               },
    #               exec_args: "__string",
    #               executable: "__string",
    #               memory_size: 1,
    #               pinned: false,
    #               timeout: 1,
    #             },
    #             id: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] default_config
    #   The default configuration that applies to all Lambda functions in
    #   this function definition version. Individual Lambda functions can
    #   override these settings.
    #   @return [Types::FunctionDefaultConfig]
    #
    # @!attribute [rw] functions
    #   A list of Lambda functions in this function definition version.
    #   @return [Array<Types::Function>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionDefinitionVersion AWS API Documentation
    #
    class FunctionDefinitionVersion < Struct.new(
      :default_config,
      :functions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information that specifies how a Lambda function runs.
    #
    # @note When making an API call, you may pass FunctionExecutionConfig
    #   data as a hash:
    #
    #       {
    #         isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #         run_as: {
    #           gid: 1,
    #           uid: 1,
    #         },
    #       }
    #
    # @!attribute [rw] isolation_mode
    #   Specifies whether the Lambda function runs in a Greengrass container
    #   (default) or without containerization. Unless your scenario requires
    #   that you run without containerization, we recommend that you run in
    #   a Greengrass container. Omit this value to run the Lambda function
    #   with the default containerization for the group.
    #   @return [String]
    #
    # @!attribute [rw] run_as
    #   Specifies the user and group whose permissions are used when running
    #   the Lambda function. You can specify one or both values to override
    #   the default values. We recommend that you avoid running as root
    #   unless absolutely necessary to minimize the risk of unintended
    #   changes or malicious attacks. To run as root, you must set
    #   ''IsolationMode'' to ''NoContainer'' and update config.json
    #   in ''greengrass-root/config'' to set
    #   ''allowFunctionsToRunAsRoot'' to ''yes''.
    #   @return [Types::FunctionRunAsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionExecutionConfig AWS API Documentation
    #
    class FunctionExecutionConfig < Struct.new(
      :isolation_mode,
      :run_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the user and group whose permissions are used when running
    # the Lambda function. You can specify one or both values to override
    # the default values. We recommend that you avoid running as root unless
    # absolutely necessary to minimize the risk of unintended changes or
    # malicious attacks. To run as root, you must set ''IsolationMode''
    # to ''NoContainer'' and update config.json in
    # ''greengrass-root/config'' to set
    # ''allowFunctionsToRunAsRoot'' to ''yes''.
    #
    # @note When making an API call, you may pass FunctionRunAsConfig
    #   data as a hash:
    #
    #       {
    #         gid: 1,
    #         uid: 1,
    #       }
    #
    # @!attribute [rw] gid
    #   The group ID whose permissions are used to run a Lambda function.
    #   @return [Integer]
    #
    # @!attribute [rw] uid
    #   The user ID whose permissions are used to run a Lambda function.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionRunAsConfig AWS API Documentation
    #
    class FunctionRunAsConfig < Struct.new(
      :gid,
      :uid)
      SENSITIVE = []
      include Aws::Structure
    end

    # General error information.
    #
    # @!attribute [rw] error_details
    #   Details about the error.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @!attribute [rw] message
    #   A message containing information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GeneralError AWS API Documentation
    #
    class GeneralError < Struct.new(
      :error_details,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssociatedRoleRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetAssociatedRoleRequest AWS API Documentation
    #
    class GetAssociatedRoleRequest < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associated_at
    #   The time when the role was associated with the group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that is associated with the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetAssociatedRoleResponse AWS API Documentation
    #
    class GetAssociatedRoleResponse < Struct.new(
      :associated_at,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBulkDeploymentStatusRequest
    #   data as a hash:
    #
    #       {
    #         bulk_deployment_id: "__string", # required
    #       }
    #
    # @!attribute [rw] bulk_deployment_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetBulkDeploymentStatusRequest AWS API Documentation
    #
    class GetBulkDeploymentStatusRequest < Struct.new(
      :bulk_deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the status of a bulk deployment at the time of the
    # request.
    #
    # @!attribute [rw] bulk_deployment_metrics
    #   Relevant metrics on input records processed during bulk deployment.
    #   @return [Types::BulkDeploymentMetrics]
    #
    # @!attribute [rw] bulk_deployment_status
    #   The status of the bulk deployment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in ISO format, when the deployment was created.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Error details
    #   @return [Array<Types::ErrorDetail>]
    #
    # @!attribute [rw] error_message
    #   Error message
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetBulkDeploymentStatusResponse AWS API Documentation
    #
    class GetBulkDeploymentStatusResponse < Struct.new(
      :bulk_deployment_metrics,
      :bulk_deployment_status,
      :created_at,
      :error_details,
      :error_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectivityInfoRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "__string", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetConnectivityInfoRequest AWS API Documentation
    #
    class GetConnectivityInfoRequest < Struct.new(
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Greengrass core's connectivity.
    #
    # @!attribute [rw] connectivity_info
    #   Connectivity info list.
    #   @return [Array<Types::ConnectivityInfo>]
    #
    # @!attribute [rw] message
    #   A message about the connectivity info request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetConnectivityInfoResponse AWS API Documentation
    #
    class GetConnectivityInfoResponse < Struct.new(
      :connectivity_info,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectorDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         connector_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] connector_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetConnectorDefinitionRequest AWS API Documentation
    #
    class GetConnectorDefinitionRequest < Struct.new(
      :connector_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetConnectorDefinitionResponse AWS API Documentation
    #
    class GetConnectorDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectorDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         connector_definition_id: "__string", # required
    #         connector_definition_version_id: "__string", # required
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] connector_definition_id
    #   @return [String]
    #
    # @!attribute [rw] connector_definition_version_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetConnectorDefinitionVersionRequest AWS API Documentation
    #
    class GetConnectorDefinitionVersionRequest < Struct.new(
      :connector_definition_id,
      :connector_definition_version_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a connector definition version.
    #
    # @!attribute [rw] arn
    #   The ARN of the connector definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the connector
    #   definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information about the connector definition version.
    #   @return [Types::ConnectorDefinitionVersion]
    #
    # @!attribute [rw] id
    #   The ID of the connector definition version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the connector definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetConnectorDefinitionVersionResponse AWS API Documentation
    #
    class GetConnectorDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCoreDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         core_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] core_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinitionRequest AWS API Documentation
    #
    class GetCoreDefinitionRequest < Struct.new(
      :core_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinitionResponse AWS API Documentation
    #
    class GetCoreDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCoreDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         core_definition_id: "__string", # required
    #         core_definition_version_id: "__string", # required
    #       }
    #
    # @!attribute [rw] core_definition_id
    #   @return [String]
    #
    # @!attribute [rw] core_definition_version_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinitionVersionRequest AWS API Documentation
    #
    class GetCoreDefinitionVersionRequest < Struct.new(
      :core_definition_id,
      :core_definition_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the core definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the core definition
    #   version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information about the core definition version.
    #   @return [Types::CoreDefinitionVersion]
    #
    # @!attribute [rw] id
    #   The ID of the core definition version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the core definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinitionVersionResponse AWS API Documentation
    #
    class GetCoreDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeploymentStatusRequest
    #   data as a hash:
    #
    #       {
    #         deployment_id: "__string", # required
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] deployment_id
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeploymentStatusRequest AWS API Documentation
    #
    class GetDeploymentStatusRequest < Struct.new(
      :deployment_id,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the status of a deployment for a group.
    #
    # @!attribute [rw] deployment_status
    #   The status of the deployment: ''InProgress'', ''Building'',
    #   ''Success'', or ''Failure''.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   The type of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Error details
    #   @return [Array<Types::ErrorDetail>]
    #
    # @!attribute [rw] error_message
    #   Error message
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time, in milliseconds since the epoch, when the deployment
    #   status was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeploymentStatusResponse AWS API Documentation
    #
    class GetDeploymentStatusResponse < Struct.new(
      :deployment_status,
      :deployment_type,
      :error_details,
      :error_message,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeviceDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         device_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] device_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinitionRequest AWS API Documentation
    #
    class GetDeviceDefinitionRequest < Struct.new(
      :device_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinitionResponse AWS API Documentation
    #
    class GetDeviceDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeviceDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         device_definition_id: "__string", # required
    #         device_definition_version_id: "__string", # required
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] device_definition_id
    #   @return [String]
    #
    # @!attribute [rw] device_definition_version_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinitionVersionRequest AWS API Documentation
    #
    class GetDeviceDefinitionVersionRequest < Struct.new(
      :device_definition_id,
      :device_definition_version_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the device definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the device
    #   definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information about the device definition version.
    #   @return [Types::DeviceDefinitionVersion]
    #
    # @!attribute [rw] id
    #   The ID of the device definition version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the device definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinitionVersionResponse AWS API Documentation
    #
    class GetDeviceDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         function_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] function_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinitionRequest AWS API Documentation
    #
    class GetFunctionDefinitionRequest < Struct.new(
      :function_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinitionResponse AWS API Documentation
    #
    class GetFunctionDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         function_definition_id: "__string", # required
    #         function_definition_version_id: "__string", # required
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] function_definition_id
    #   @return [String]
    #
    # @!attribute [rw] function_definition_version_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinitionVersionRequest AWS API Documentation
    #
    class GetFunctionDefinitionVersionRequest < Struct.new(
      :function_definition_id,
      :function_definition_version_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a function definition version.
    #
    # @!attribute [rw] arn
    #   The ARN of the function definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the function
    #   definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information on the definition.
    #   @return [Types::FunctionDefinitionVersion]
    #
    # @!attribute [rw] id
    #   The ID of the function definition version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the function definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinitionVersionResponse AWS API Documentation
    #
    class GetFunctionDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_id: "__string", # required
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] certificate_authority_id
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupCertificateAuthorityRequest AWS API Documentation
    #
    class GetGroupCertificateAuthorityRequest < Struct.new(
      :certificate_authority_id,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a certificate authority for a group.
    #
    # @!attribute [rw] group_certificate_authority_arn
    #   The ARN of the certificate authority for the group.
    #   @return [String]
    #
    # @!attribute [rw] group_certificate_authority_id
    #   The ID of the certificate authority for the group.
    #   @return [String]
    #
    # @!attribute [rw] pem_encoded_certificate
    #   The PEM encoded certificate for the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupCertificateAuthorityResponse AWS API Documentation
    #
    class GetGroupCertificateAuthorityResponse < Struct.new(
      :group_certificate_authority_arn,
      :group_certificate_authority_id,
      :pem_encoded_certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupCertificateConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupCertificateConfigurationRequest AWS API Documentation
    #
    class GetGroupCertificateConfigurationRequest < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_authority_expiry_in_milliseconds
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_in_milliseconds
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupCertificateConfigurationResponse AWS API Documentation
    #
    class GetGroupCertificateConfigurationResponse < Struct.new(
      :certificate_authority_expiry_in_milliseconds,
      :certificate_expiry_in_milliseconds,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupRequest AWS API Documentation
    #
    class GetGroupRequest < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupResponse AWS API Documentation
    #
    class GetGroupResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupVersionRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #         group_version_id: "__string", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @!attribute [rw] group_version_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupVersionRequest AWS API Documentation
    #
    class GetGroupVersionRequest < Struct.new(
      :group_id,
      :group_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a group version.
    #
    # @!attribute [rw] arn
    #   The ARN of the group version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the group version
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information about the group version definition.
    #   @return [Types::GroupVersion]
    #
    # @!attribute [rw] id
    #   The ID of the group that the version is associated with.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The ID of the group version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupVersionResponse AWS API Documentation
    #
    class GetGroupVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLoggerDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         logger_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] logger_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinitionRequest AWS API Documentation
    #
    class GetLoggerDefinitionRequest < Struct.new(
      :logger_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinitionResponse AWS API Documentation
    #
    class GetLoggerDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLoggerDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         logger_definition_id: "__string", # required
    #         logger_definition_version_id: "__string", # required
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] logger_definition_id
    #   @return [String]
    #
    # @!attribute [rw] logger_definition_version_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinitionVersionRequest AWS API Documentation
    #
    class GetLoggerDefinitionVersionRequest < Struct.new(
      :logger_definition_id,
      :logger_definition_version_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a logger definition version.
    #
    # @!attribute [rw] arn
    #   The ARN of the logger definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the logger
    #   definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information about the logger definition version.
    #   @return [Types::LoggerDefinitionVersion]
    #
    # @!attribute [rw] id
    #   The ID of the logger definition version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the logger definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinitionVersionResponse AWS API Documentation
    #
    class GetLoggerDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         resource_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetResourceDefinitionRequest AWS API Documentation
    #
    class GetResourceDefinitionRequest < Struct.new(
      :resource_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetResourceDefinitionResponse AWS API Documentation
    #
    class GetResourceDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         resource_definition_id: "__string", # required
    #         resource_definition_version_id: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_definition_id
    #   @return [String]
    #
    # @!attribute [rw] resource_definition_version_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetResourceDefinitionVersionRequest AWS API Documentation
    #
    class GetResourceDefinitionVersionRequest < Struct.new(
      :resource_definition_id,
      :resource_definition_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a resource definition version.
    #
    # @!attribute [rw] arn
    #   Arn of the resource definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the resource
    #   definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information about the definition.
    #   @return [Types::ResourceDefinitionVersion]
    #
    # @!attribute [rw] id
    #   The ID of the resource definition version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetResourceDefinitionVersionResponse AWS API Documentation
    #
    class GetResourceDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetServiceRoleForAccountRequest AWS API Documentation
    #
    class GetServiceRoleForAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] associated_at
    #   The time when the service role was associated with the account.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role which is associated with the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetServiceRoleForAccountResponse AWS API Documentation
    #
    class GetServiceRoleForAccountResponse < Struct.new(
      :associated_at,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSubscriptionDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         subscription_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] subscription_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinitionRequest AWS API Documentation
    #
    class GetSubscriptionDefinitionRequest < Struct.new(
      :subscription_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinitionResponse AWS API Documentation
    #
    class GetSubscriptionDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSubscriptionDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "__string",
    #         subscription_definition_id: "__string", # required
    #         subscription_definition_version_id: "__string", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] subscription_definition_id
    #   @return [String]
    #
    # @!attribute [rw] subscription_definition_version_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinitionVersionRequest AWS API Documentation
    #
    class GetSubscriptionDefinitionVersionRequest < Struct.new(
      :next_token,
      :subscription_definition_id,
      :subscription_definition_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a subscription definition version.
    #
    # @!attribute [rw] arn
    #   The ARN of the subscription definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the subscription
    #   definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information about the subscription definition version.
    #   @return [Types::SubscriptionDefinitionVersion]
    #
    # @!attribute [rw] id
    #   The ID of the subscription definition version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the subscription definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinitionVersionResponse AWS API Documentation
    #
    class GetSubscriptionDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetThingRuntimeConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "__string", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetThingRuntimeConfigurationRequest AWS API Documentation
    #
    class GetThingRuntimeConfigurationRequest < Struct.new(
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The runtime configuration for a thing.
    #
    # @!attribute [rw] runtime_configuration
    #   Runtime configuration for a thing.
    #   @return [Types::RuntimeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetThingRuntimeConfigurationResponse AWS API Documentation
    #
    class GetThingRuntimeConfigurationResponse < Struct.new(
      :runtime_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a certificate authority for a group.
    #
    # @!attribute [rw] group_certificate_authority_arn
    #   The ARN of the certificate authority for the group.
    #   @return [String]
    #
    # @!attribute [rw] group_certificate_authority_id
    #   The ID of the certificate authority for the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GroupCertificateAuthorityProperties AWS API Documentation
    #
    class GroupCertificateAuthorityProperties < Struct.new(
      :group_certificate_authority_arn,
      :group_certificate_authority_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a group certificate configuration.
    #
    # @!attribute [rw] certificate_authority_expiry_in_milliseconds
    #   The amount of time remaining before the certificate authority
    #   expires, in milliseconds.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in
    #   milliseconds.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the group certificate configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GroupCertificateConfiguration AWS API Documentation
    #
    class GroupCertificateConfiguration < Struct.new(
      :certificate_authority_expiry_in_milliseconds,
      :certificate_expiry_in_milliseconds,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a group.
    #
    # @!attribute [rw] arn
    #   The ARN of the group.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the group was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the group.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the group was last
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The ID of the latest version associated with the group.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   The ARN of the latest version associated with the group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GroupInformation AWS API Documentation
    #
    class GroupInformation < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Group owner related settings for local resources.
    #
    # @note When making an API call, you may pass GroupOwnerSetting
    #   data as a hash:
    #
    #       {
    #         auto_add_group_owner: false,
    #         group_owner: "__string",
    #       }
    #
    # @!attribute [rw] auto_add_group_owner
    #   If true, AWS IoT Greengrass automatically adds the specified Linux
    #   OS group owner of the resource to the Lambda process privileges.
    #   Thus the Lambda process will have the file access permissions of the
    #   added Linux group.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_owner
    #   The name of the Linux OS group whose privileges will be added to the
    #   Lambda process. This field is optional.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GroupOwnerSetting AWS API Documentation
    #
    class GroupOwnerSetting < Struct.new(
      :auto_add_group_owner,
      :group_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a group version.
    #
    # @note When making an API call, you may pass GroupVersion
    #   data as a hash:
    #
    #       {
    #         connector_definition_version_arn: "__string",
    #         core_definition_version_arn: "__string",
    #         device_definition_version_arn: "__string",
    #         function_definition_version_arn: "__string",
    #         logger_definition_version_arn: "__string",
    #         resource_definition_version_arn: "__string",
    #         subscription_definition_version_arn: "__string",
    #       }
    #
    # @!attribute [rw] connector_definition_version_arn
    #   The ARN of the connector definition version for this group.
    #   @return [String]
    #
    # @!attribute [rw] core_definition_version_arn
    #   The ARN of the core definition version for this group.
    #   @return [String]
    #
    # @!attribute [rw] device_definition_version_arn
    #   The ARN of the device definition version for this group.
    #   @return [String]
    #
    # @!attribute [rw] function_definition_version_arn
    #   The ARN of the function definition version for this group.
    #   @return [String]
    #
    # @!attribute [rw] logger_definition_version_arn
    #   The ARN of the logger definition version for this group.
    #   @return [String]
    #
    # @!attribute [rw] resource_definition_version_arn
    #   The ARN of the resource definition version for this group.
    #   @return [String]
    #
    # @!attribute [rw] subscription_definition_version_arn
    #   The ARN of the subscription definition version for this group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GroupVersion AWS API Documentation
    #
    class GroupVersion < Struct.new(
      :connector_definition_version_arn,
      :core_definition_version_arn,
      :device_definition_version_arn,
      :function_definition_version_arn,
      :logger_definition_version_arn,
      :resource_definition_version_arn,
      :subscription_definition_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # General error information.
    #
    # @!attribute [rw] error_details
    #   A list of error details.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :error_details,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBulkDeploymentDetailedReportsRequest
    #   data as a hash:
    #
    #       {
    #         bulk_deployment_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] bulk_deployment_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListBulkDeploymentDetailedReportsRequest AWS API Documentation
    #
    class ListBulkDeploymentDetailedReportsRequest < Struct.new(
      :bulk_deployment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployments
    #   A list of the individual group deployments in the bulk deployment
    #   operation.
    #   @return [Array<Types::BulkDeploymentResult>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListBulkDeploymentDetailedReportsResponse AWS API Documentation
    #
    class ListBulkDeploymentDetailedReportsResponse < Struct.new(
      :deployments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBulkDeploymentsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListBulkDeploymentsRequest AWS API Documentation
    #
    class ListBulkDeploymentsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bulk_deployments
    #   A list of bulk deployments.
    #   @return [Array<Types::BulkDeployment>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListBulkDeploymentsResponse AWS API Documentation
    #
    class ListBulkDeploymentsResponse < Struct.new(
      :bulk_deployments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConnectorDefinitionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         connector_definition_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] connector_definition_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListConnectorDefinitionVersionsRequest AWS API Documentation
    #
    class ListConnectorDefinitionVersionsRequest < Struct.new(
      :connector_definition_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListConnectorDefinitionVersionsResponse AWS API Documentation
    #
    class ListConnectorDefinitionVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConnectorDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListConnectorDefinitionsRequest AWS API Documentation
    #
    class ListConnectorDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] definitions
    #   @return [Array<Types::DefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListConnectorDefinitionsResponse AWS API Documentation
    #
    class ListConnectorDefinitionsResponse < Struct.new(
      :definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCoreDefinitionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         core_definition_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] core_definition_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListCoreDefinitionVersionsRequest AWS API Documentation
    #
    class ListCoreDefinitionVersionsRequest < Struct.new(
      :core_definition_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListCoreDefinitionVersionsResponse AWS API Documentation
    #
    class ListCoreDefinitionVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCoreDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListCoreDefinitionsRequest AWS API Documentation
    #
    class ListCoreDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] definitions
    #   @return [Array<Types::DefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListCoreDefinitionsResponse AWS API Documentation
    #
    class ListCoreDefinitionsResponse < Struct.new(
      :definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of definitions.
    #
    # @!attribute [rw] definitions
    #   Information about a definition.
    #   @return [Array<Types::DefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDefinitionsResponse AWS API Documentation
    #
    class ListDefinitionsResponse < Struct.new(
      :definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeploymentsRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeploymentsRequest AWS API Documentation
    #
    class ListDeploymentsRequest < Struct.new(
      :group_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployments
    #   A list of deployments for the requested groups.
    #   @return [Array<Types::Deployment>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeploymentsResponse AWS API Documentation
    #
    class ListDeploymentsResponse < Struct.new(
      :deployments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeviceDefinitionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         device_definition_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] device_definition_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeviceDefinitionVersionsRequest AWS API Documentation
    #
    class ListDeviceDefinitionVersionsRequest < Struct.new(
      :device_definition_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeviceDefinitionVersionsResponse AWS API Documentation
    #
    class ListDeviceDefinitionVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeviceDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeviceDefinitionsRequest AWS API Documentation
    #
    class ListDeviceDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] definitions
    #   @return [Array<Types::DefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeviceDefinitionsResponse AWS API Documentation
    #
    class ListDeviceDefinitionsResponse < Struct.new(
      :definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFunctionDefinitionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         function_definition_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] function_definition_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListFunctionDefinitionVersionsRequest AWS API Documentation
    #
    class ListFunctionDefinitionVersionsRequest < Struct.new(
      :function_definition_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListFunctionDefinitionVersionsResponse AWS API Documentation
    #
    class ListFunctionDefinitionVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFunctionDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListFunctionDefinitionsRequest AWS API Documentation
    #
    class ListFunctionDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] definitions
    #   @return [Array<Types::DefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListFunctionDefinitionsResponse AWS API Documentation
    #
    class ListFunctionDefinitionsResponse < Struct.new(
      :definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupCertificateAuthoritiesRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupCertificateAuthoritiesRequest AWS API Documentation
    #
    class ListGroupCertificateAuthoritiesRequest < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_certificate_authorities
    #   A list of certificate authorities associated with the group.
    #   @return [Array<Types::GroupCertificateAuthorityProperties>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupCertificateAuthoritiesResponse AWS API Documentation
    #
    class ListGroupCertificateAuthoritiesResponse < Struct.new(
      :group_certificate_authorities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupVersionsRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupVersionsRequest AWS API Documentation
    #
    class ListGroupVersionsRequest < Struct.new(
      :group_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupVersionsResponse AWS API Documentation
    #
    class ListGroupVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] groups
    #   Information about a group.
    #   @return [Array<Types::GroupInformation>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLoggerDefinitionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         logger_definition_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] logger_definition_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListLoggerDefinitionVersionsRequest AWS API Documentation
    #
    class ListLoggerDefinitionVersionsRequest < Struct.new(
      :logger_definition_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListLoggerDefinitionVersionsResponse AWS API Documentation
    #
    class ListLoggerDefinitionVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLoggerDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListLoggerDefinitionsRequest AWS API Documentation
    #
    class ListLoggerDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] definitions
    #   @return [Array<Types::DefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListLoggerDefinitionsResponse AWS API Documentation
    #
    class ListLoggerDefinitionsResponse < Struct.new(
      :definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourceDefinitionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #         resource_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resource_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListResourceDefinitionVersionsRequest AWS API Documentation
    #
    class ListResourceDefinitionVersionsRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListResourceDefinitionVersionsResponse AWS API Documentation
    #
    class ListResourceDefinitionVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourceDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListResourceDefinitionsRequest AWS API Documentation
    #
    class ListResourceDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] definitions
    #   @return [Array<Types::DefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListResourceDefinitionsResponse AWS API Documentation
    #
    class ListResourceDefinitionsResponse < Struct.new(
      :definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSubscriptionDefinitionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #         subscription_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] subscription_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListSubscriptionDefinitionVersionsRequest AWS API Documentation
    #
    class ListSubscriptionDefinitionVersionsRequest < Struct.new(
      :max_results,
      :next_token,
      :subscription_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListSubscriptionDefinitionVersionsResponse AWS API Documentation
    #
    class ListSubscriptionDefinitionVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSubscriptionDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListSubscriptionDefinitionsRequest AWS API Documentation
    #
    class ListSubscriptionDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] definitions
    #   @return [Array<Types::DefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListSubscriptionDefinitionsResponse AWS API Documentation
    #
    class ListSubscriptionDefinitionsResponse < Struct.new(
      :definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of versions.
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   Information about a version.
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListVersionsResponse AWS API Documentation
    #
    class ListVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes that define a local device resource.
    #
    # @note When making an API call, you may pass LocalDeviceResourceData
    #   data as a hash:
    #
    #       {
    #         group_owner_setting: {
    #           auto_add_group_owner: false,
    #           group_owner: "__string",
    #         },
    #         source_path: "__string",
    #       }
    #
    # @!attribute [rw] group_owner_setting
    #   Group/owner related settings for local resources.
    #   @return [Types::GroupOwnerSetting]
    #
    # @!attribute [rw] source_path
    #   The local absolute path of the device resource. The source path for
    #   a device resource can refer only to a character device or block
    #   device under ''/dev''.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/LocalDeviceResourceData AWS API Documentation
    #
    class LocalDeviceResourceData < Struct.new(
      :group_owner_setting,
      :source_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes that define a local volume resource.
    #
    # @note When making an API call, you may pass LocalVolumeResourceData
    #   data as a hash:
    #
    #       {
    #         destination_path: "__string",
    #         group_owner_setting: {
    #           auto_add_group_owner: false,
    #           group_owner: "__string",
    #         },
    #         source_path: "__string",
    #       }
    #
    # @!attribute [rw] destination_path
    #   The absolute local path of the resource inside the Lambda
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] group_owner_setting
    #   Allows you to configure additional group privileges for the Lambda
    #   process. This field is optional.
    #   @return [Types::GroupOwnerSetting]
    #
    # @!attribute [rw] source_path
    #   The local absolute path of the volume resource on the host. The
    #   source path for a volume resource type cannot start with
    #   ''/sys''.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/LocalVolumeResourceData AWS API Documentation
    #
    class LocalVolumeResourceData < Struct.new(
      :destination_path,
      :group_owner_setting,
      :source_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a logger
    #
    # @note When making an API call, you may pass Logger
    #   data as a hash:
    #
    #       {
    #         component: "GreengrassSystem", # required, accepts GreengrassSystem, Lambda
    #         id: "__string", # required
    #         level: "DEBUG", # required, accepts DEBUG, INFO, WARN, ERROR, FATAL
    #         space: 1,
    #         type: "FileSystem", # required, accepts FileSystem, AWSCloudWatch
    #       }
    #
    # @!attribute [rw] component
    #   The component that will be subject to logging.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A descriptive or arbitrary ID for the logger. This value must be
    #   unique within the logger definition version. Max length is 128
    #   characters with pattern ''\[a-zA-Z0-9:\_-\]+''.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The level of the logs.
    #   @return [String]
    #
    # @!attribute [rw] space
    #   The amount of file space, in KB, to use if the local file system is
    #   used for logging purposes.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of log output which will be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Logger AWS API Documentation
    #
    class Logger < Struct.new(
      :component,
      :id,
      :level,
      :space,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a logger definition version.
    #
    # @note When making an API call, you may pass LoggerDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         loggers: [
    #           {
    #             component: "GreengrassSystem", # required, accepts GreengrassSystem, Lambda
    #             id: "__string", # required
    #             level: "DEBUG", # required, accepts DEBUG, INFO, WARN, ERROR, FATAL
    #             space: 1,
    #             type: "FileSystem", # required, accepts FileSystem, AWSCloudWatch
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] loggers
    #   A list of loggers.
    #   @return [Array<Types::Logger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/LoggerDefinitionVersion AWS API Documentation
    #
    class LoggerDefinitionVersion < Struct.new(
      :loggers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a group reset request.
    #
    # @note When making an API call, you may pass ResetDeploymentsRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         force: false,
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If true, performs a best-effort only core reset.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ResetDeploymentsRequest AWS API Documentation
    #
    class ResetDeploymentsRequest < Struct.new(
      :amzn_client_token,
      :force,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_arn
    #   The ARN of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ResetDeploymentsResponse AWS API Documentation
    #
    class ResetDeploymentsResponse < Struct.new(
      :deployment_arn,
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a resource.
    #
    # @note When making an API call, you may pass Resource
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #         name: "__string", # required
    #         resource_data_container: { # required
    #           local_device_resource_data: {
    #             group_owner_setting: {
    #               auto_add_group_owner: false,
    #               group_owner: "__string",
    #             },
    #             source_path: "__string",
    #           },
    #           local_volume_resource_data: {
    #             destination_path: "__string",
    #             group_owner_setting: {
    #               auto_add_group_owner: false,
    #               group_owner: "__string",
    #             },
    #             source_path: "__string",
    #           },
    #           s3_machine_learning_model_resource_data: {
    #             destination_path: "__string",
    #             owner_setting: {
    #               group_owner: "__string", # required
    #               group_permission: "ro", # required, accepts ro, rw
    #             },
    #             s3_uri: "__string",
    #           },
    #           sage_maker_machine_learning_model_resource_data: {
    #             destination_path: "__string",
    #             owner_setting: {
    #               group_owner: "__string", # required
    #               group_permission: "ro", # required, accepts ro, rw
    #             },
    #             sage_maker_job_arn: "__string",
    #           },
    #           secrets_manager_secret_resource_data: {
    #             arn: "__string",
    #             additional_staging_labels_to_download: ["__string"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The resource ID, used to refer to a resource in the Lambda function
    #   configuration. Max length is 128 characters with pattern
    #   ''\[a-zA-Z0-9:\_-\]+''. This must be unique within a Greengrass
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive resource name, which is displayed on the AWS IoT
    #   Greengrass console. Max length 128 characters with pattern
    #   ''\[a-zA-Z0-9:\_-\]+''. This must be unique within a Greengrass
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] resource_data_container
    #   A container of data for all resource types.
    #   @return [Types::ResourceDataContainer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :id,
      :name,
      :resource_data_container)
      SENSITIVE = []
      include Aws::Structure
    end

    # A policy used by the function to access a resource.
    #
    # @note When making an API call, you may pass ResourceAccessPolicy
    #   data as a hash:
    #
    #       {
    #         permission: "ro", # accepts ro, rw
    #         resource_id: "__string", # required
    #       }
    #
    # @!attribute [rw] permission
    #   The permissions that the Lambda function has to the resource. Can be
    #   one of ''rw'' (read/write) or ''ro'' (read-only).
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource. (This ID is assigned to the resource when
    #   you create the resource definiton.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ResourceAccessPolicy AWS API Documentation
    #
    class ResourceAccessPolicy < Struct.new(
      :permission,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for resource data. The container takes only one of the
    # following supported resource data types:
    # ''LocalDeviceResourceData'', ''LocalVolumeResourceData'',
    # ''SageMakerMachineLearningModelResourceData'',
    # ''S3MachineLearningModelResourceData'',
    # ''SecretsManagerSecretResourceData''.
    #
    # @note When making an API call, you may pass ResourceDataContainer
    #   data as a hash:
    #
    #       {
    #         local_device_resource_data: {
    #           group_owner_setting: {
    #             auto_add_group_owner: false,
    #             group_owner: "__string",
    #           },
    #           source_path: "__string",
    #         },
    #         local_volume_resource_data: {
    #           destination_path: "__string",
    #           group_owner_setting: {
    #             auto_add_group_owner: false,
    #             group_owner: "__string",
    #           },
    #           source_path: "__string",
    #         },
    #         s3_machine_learning_model_resource_data: {
    #           destination_path: "__string",
    #           owner_setting: {
    #             group_owner: "__string", # required
    #             group_permission: "ro", # required, accepts ro, rw
    #           },
    #           s3_uri: "__string",
    #         },
    #         sage_maker_machine_learning_model_resource_data: {
    #           destination_path: "__string",
    #           owner_setting: {
    #             group_owner: "__string", # required
    #             group_permission: "ro", # required, accepts ro, rw
    #           },
    #           sage_maker_job_arn: "__string",
    #         },
    #         secrets_manager_secret_resource_data: {
    #           arn: "__string",
    #           additional_staging_labels_to_download: ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] local_device_resource_data
    #   Attributes that define the local device resource.
    #   @return [Types::LocalDeviceResourceData]
    #
    # @!attribute [rw] local_volume_resource_data
    #   Attributes that define the local volume resource.
    #   @return [Types::LocalVolumeResourceData]
    #
    # @!attribute [rw] s3_machine_learning_model_resource_data
    #   Attributes that define an Amazon S3 machine learning resource.
    #   @return [Types::S3MachineLearningModelResourceData]
    #
    # @!attribute [rw] sage_maker_machine_learning_model_resource_data
    #   Attributes that define an Amazon SageMaker machine learning
    #   resource.
    #   @return [Types::SageMakerMachineLearningModelResourceData]
    #
    # @!attribute [rw] secrets_manager_secret_resource_data
    #   Attributes that define a secret resource, which references a secret
    #   from AWS Secrets Manager.
    #   @return [Types::SecretsManagerSecretResourceData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ResourceDataContainer AWS API Documentation
    #
    class ResourceDataContainer < Struct.new(
      :local_device_resource_data,
      :local_volume_resource_data,
      :s3_machine_learning_model_resource_data,
      :sage_maker_machine_learning_model_resource_data,
      :secrets_manager_secret_resource_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a resource definition version.
    #
    # @note When making an API call, you may pass ResourceDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         resources: [
    #           {
    #             id: "__string", # required
    #             name: "__string", # required
    #             resource_data_container: { # required
    #               local_device_resource_data: {
    #                 group_owner_setting: {
    #                   auto_add_group_owner: false,
    #                   group_owner: "__string",
    #                 },
    #                 source_path: "__string",
    #               },
    #               local_volume_resource_data: {
    #                 destination_path: "__string",
    #                 group_owner_setting: {
    #                   auto_add_group_owner: false,
    #                   group_owner: "__string",
    #                 },
    #                 source_path: "__string",
    #               },
    #               s3_machine_learning_model_resource_data: {
    #                 destination_path: "__string",
    #                 owner_setting: {
    #                   group_owner: "__string", # required
    #                   group_permission: "ro", # required, accepts ro, rw
    #                 },
    #                 s3_uri: "__string",
    #               },
    #               sage_maker_machine_learning_model_resource_data: {
    #                 destination_path: "__string",
    #                 owner_setting: {
    #                   group_owner: "__string", # required
    #                   group_permission: "ro", # required, accepts ro, rw
    #                 },
    #                 sage_maker_job_arn: "__string",
    #               },
    #               secrets_manager_secret_resource_data: {
    #                 arn: "__string",
    #                 additional_staging_labels_to_download: ["__string"],
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resources
    #   A list of resources.
    #   @return [Array<Types::Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ResourceDefinitionVersion AWS API Documentation
    #
    class ResourceDefinitionVersion < Struct.new(
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The owner setting for downloaded machine learning resources.
    #
    # @note When making an API call, you may pass ResourceDownloadOwnerSetting
    #   data as a hash:
    #
    #       {
    #         group_owner: "__string", # required
    #         group_permission: "ro", # required, accepts ro, rw
    #       }
    #
    # @!attribute [rw] group_owner
    #   The group owner of the resource. This is the name of an existing
    #   Linux OS group on the system or a GID. The group's permissions are
    #   added to the Lambda process.
    #   @return [String]
    #
    # @!attribute [rw] group_permission
    #   The permissions that the group owner has to the resource. Valid
    #   values are ''rw'' (read/write) or ''ro'' (read-only).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ResourceDownloadOwnerSetting AWS API Documentation
    #
    class ResourceDownloadOwnerSetting < Struct.new(
      :group_owner,
      :group_permission)
      SENSITIVE = []
      include Aws::Structure
    end

    # Runtime configuration for a thing.
    #
    # @!attribute [rw] telemetry_configuration
    #   Configuration for telemetry service.
    #   @return [Types::TelemetryConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/RuntimeConfiguration AWS API Documentation
    #
    class RuntimeConfiguration < Struct.new(
      :telemetry_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Runtime configuration for a thing.
    #
    # @!attribute [rw] telemetry_configuration
    #   Configuration for telemetry service.
    #   @return [Types::TelemetryConfigurationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/RuntimeConfigurationUpdate AWS API Documentation
    #
    class RuntimeConfigurationUpdate < Struct.new(
      :telemetry_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes that define an Amazon S3 machine learning resource.
    #
    # @note When making an API call, you may pass S3MachineLearningModelResourceData
    #   data as a hash:
    #
    #       {
    #         destination_path: "__string",
    #         owner_setting: {
    #           group_owner: "__string", # required
    #           group_permission: "ro", # required, accepts ro, rw
    #         },
    #         s3_uri: "__string",
    #       }
    #
    # @!attribute [rw] destination_path
    #   The absolute local path of the resource inside the Lambda
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] owner_setting
    #   The owner setting for downloaded machine learning resources.
    #   @return [Types::ResourceDownloadOwnerSetting]
    #
    # @!attribute [rw] s3_uri
    #   The URI of the source model in an S3 bucket. The model package must
    #   be in tar.gz or .zip format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/S3MachineLearningModelResourceData AWS API Documentation
    #
    class S3MachineLearningModelResourceData < Struct.new(
      :destination_path,
      :owner_setting,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes that define an Amazon SageMaker machine learning resource.
    #
    # @note When making an API call, you may pass SageMakerMachineLearningModelResourceData
    #   data as a hash:
    #
    #       {
    #         destination_path: "__string",
    #         owner_setting: {
    #           group_owner: "__string", # required
    #           group_permission: "ro", # required, accepts ro, rw
    #         },
    #         sage_maker_job_arn: "__string",
    #       }
    #
    # @!attribute [rw] destination_path
    #   The absolute local path of the resource inside the Lambda
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] owner_setting
    #   The owner setting for downloaded machine learning resources.
    #   @return [Types::ResourceDownloadOwnerSetting]
    #
    # @!attribute [rw] sage_maker_job_arn
    #   The ARN of the Amazon SageMaker training job that represents the
    #   source model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/SageMakerMachineLearningModelResourceData AWS API Documentation
    #
    class SageMakerMachineLearningModelResourceData < Struct.new(
      :destination_path,
      :owner_setting,
      :sage_maker_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes that define a secret resource, which references a secret
    # from AWS Secrets Manager. AWS IoT Greengrass stores a local, encrypted
    # copy of the secret on the Greengrass core, where it can be securely
    # accessed by connectors and Lambda functions.
    #
    # @note When making an API call, you may pass SecretsManagerSecretResourceData
    #   data as a hash:
    #
    #       {
    #         arn: "__string",
    #         additional_staging_labels_to_download: ["__string"],
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the Secrets Manager secret to make available on the core.
    #   The value of the secret's latest version (represented by the
    #   ''AWSCURRENT'' staging label) is included by default.
    #   @return [String]
    #
    # @!attribute [rw] additional_staging_labels_to_download
    #   Optional. The staging labels whose values you want to make available
    #   on the core, in addition to ''AWSCURRENT''.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/SecretsManagerSecretResourceData AWS API Documentation
    #
    class SecretsManagerSecretResourceData < Struct.new(
      :arn,
      :additional_staging_labels_to_download)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a bulk deployment. You cannot start a new bulk
    # deployment while another one is still running or in a non-terminal
    # state.
    #
    # @note When making an API call, you may pass StartBulkDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         execution_role_arn: "__string", # required
    #         input_file_uri: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the execution role to associate with the bulk deployment
    #   operation. This IAM role must allow the
    #   ''greengrass:CreateDeployment'' action for all group versions
    #   that are listed in the input file. This IAM role must have access to
    #   the S3 bucket containing the input file.
    #   @return [String]
    #
    # @!attribute [rw] input_file_uri
    #   The URI of the input file contained in the S3 bucket. The execution
    #   role must have ''getObject'' permissions on this bucket to
    #   access the input file. The input file is a JSON-serialized, line
    #   delimited file with UTF-8 encoding that provides a list of group and
    #   version IDs and the deployment type. This file must be less than 100
    #   MB. Currently, AWS IoT Greengrass supports only
    #   ''NewDeployment'' deployment types.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/StartBulkDeploymentRequest AWS API Documentation
    #
    class StartBulkDeploymentRequest < Struct.new(
      :amzn_client_token,
      :execution_role_arn,
      :input_file_uri,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bulk_deployment_arn
    #   The ARN of the bulk deployment.
    #   @return [String]
    #
    # @!attribute [rw] bulk_deployment_id
    #   The ID of the bulk deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/StartBulkDeploymentResponse AWS API Documentation
    #
    class StartBulkDeploymentResponse < Struct.new(
      :bulk_deployment_arn,
      :bulk_deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopBulkDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         bulk_deployment_id: "__string", # required
    #       }
    #
    # @!attribute [rw] bulk_deployment_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/StopBulkDeploymentRequest AWS API Documentation
    #
    class StopBulkDeploymentRequest < Struct.new(
      :bulk_deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/StopBulkDeploymentResponse AWS API Documentation
    #
    class StopBulkDeploymentResponse < Aws::EmptyStructure; end

    # Information about a subscription.
    #
    # @note When making an API call, you may pass Subscription
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #         source: "__string", # required
    #         subject: "__string", # required
    #         target: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   A descriptive or arbitrary ID for the subscription. This value must
    #   be unique within the subscription definition version. Max length is
    #   128 characters with pattern ''\[a-zA-Z0-9:\_-\]+''.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the subscription. Can be a thing ARN, a Lambda
    #   function ARN, a connector ARN, 'cloud' (which represents the AWS
    #   IoT cloud), or 'GGShadowService'.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The MQTT topic used to route the message.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   Where the message is sent to. Can be a thing ARN, a Lambda function
    #   ARN, a connector ARN, 'cloud' (which represents the AWS IoT
    #   cloud), or 'GGShadowService'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :id,
      :source,
      :subject,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a subscription definition version.
    #
    # @note When making an API call, you may pass SubscriptionDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         subscriptions: [
    #           {
    #             id: "__string", # required
    #             source: "__string", # required
    #             subject: "__string", # required
    #             target: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subscriptions
    #   A list of subscriptions.
    #   @return [Array<Types::Subscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/SubscriptionDefinitionVersion AWS API Documentation
    #
    class SubscriptionDefinitionVersion < Struct.new(
      :subscriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for running telemetry.
    #
    # @!attribute [rw] configuration_sync_status
    #   Synchronization status of the device reported configuration with the
    #   desired configuration.
    #   @return [String]
    #
    # @!attribute [rw] telemetry
    #   Configure telemetry to be on or off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/TelemetryConfiguration AWS API Documentation
    #
    class TelemetryConfiguration < Struct.new(
      :configuration_sync_status,
      :telemetry)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for running telemetry.
    #
    # @note When making an API call, you may pass TelemetryConfigurationUpdate
    #   data as a hash:
    #
    #       {
    #         telemetry: "On", # required, accepts On, Off
    #       }
    #
    # @!attribute [rw] telemetry
    #   Configure telemetry to be on or off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/TelemetryConfigurationUpdate AWS API Documentation
    #
    class TelemetryConfigurationUpdate < Struct.new(
      :telemetry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to update a Greengrass core's connectivity.
    #
    # @note When making an API call, you may pass UpdateConnectivityInfoRequest
    #   data as a hash:
    #
    #       {
    #         connectivity_info: [
    #           {
    #             host_address: "__string",
    #             id: "__string",
    #             metadata: "__string",
    #             port_number: 1,
    #           },
    #         ],
    #         thing_name: "__string", # required
    #       }
    #
    # @!attribute [rw] connectivity_info
    #   A list of connectivity info.
    #   @return [Array<Types::ConnectivityInfo>]
    #
    # @!attribute [rw] thing_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateConnectivityInfoRequest AWS API Documentation
    #
    class UpdateConnectivityInfoRequest < Struct.new(
      :connectivity_info,
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message about the connectivity info update request.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The new version of the connectivity info.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateConnectivityInfoResponse AWS API Documentation
    #
    class UpdateConnectivityInfoResponse < Struct.new(
      :message,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateConnectorDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         connector_definition_id: "__string", # required
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] connector_definition_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateConnectorDefinitionRequest AWS API Documentation
    #
    class UpdateConnectorDefinitionRequest < Struct.new(
      :connector_definition_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateConnectorDefinitionResponse AWS API Documentation
    #
    class UpdateConnectorDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateCoreDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         core_definition_id: "__string", # required
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] core_definition_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateCoreDefinitionRequest AWS API Documentation
    #
    class UpdateCoreDefinitionRequest < Struct.new(
      :core_definition_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateCoreDefinitionResponse AWS API Documentation
    #
    class UpdateCoreDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDeviceDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         device_definition_id: "__string", # required
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] device_definition_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateDeviceDefinitionRequest AWS API Documentation
    #
    class UpdateDeviceDefinitionRequest < Struct.new(
      :device_definition_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateDeviceDefinitionResponse AWS API Documentation
    #
    class UpdateDeviceDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateFunctionDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         function_definition_id: "__string", # required
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] function_definition_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateFunctionDefinitionRequest AWS API Documentation
    #
    class UpdateFunctionDefinitionRequest < Struct.new(
      :function_definition_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateFunctionDefinitionResponse AWS API Documentation
    #
    class UpdateFunctionDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateGroupCertificateConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         certificate_expiry_in_milliseconds: "__string",
    #         group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in
    #   milliseconds.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateGroupCertificateConfigurationRequest AWS API Documentation
    #
    class UpdateGroupCertificateConfigurationRequest < Struct.new(
      :certificate_expiry_in_milliseconds,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_authority_expiry_in_milliseconds
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_in_milliseconds
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateGroupCertificateConfigurationResponse AWS API Documentation
    #
    class UpdateGroupCertificateConfigurationResponse < Struct.new(
      :certificate_authority_expiry_in_milliseconds,
      :certificate_expiry_in_milliseconds,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "__string", # required
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateGroupRequest AWS API Documentation
    #
    class UpdateGroupRequest < Struct.new(
      :group_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateGroupResponse AWS API Documentation
    #
    class UpdateGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateLoggerDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         logger_definition_id: "__string", # required
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] logger_definition_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateLoggerDefinitionRequest AWS API Documentation
    #
    class UpdateLoggerDefinitionRequest < Struct.new(
      :logger_definition_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateLoggerDefinitionResponse AWS API Documentation
    #
    class UpdateLoggerDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateResourceDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string",
    #         resource_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] resource_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateResourceDefinitionRequest AWS API Documentation
    #
    class UpdateResourceDefinitionRequest < Struct.new(
      :name,
      :resource_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateResourceDefinitionResponse AWS API Documentation
    #
    class UpdateResourceDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateSubscriptionDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string",
    #         subscription_definition_id: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] subscription_definition_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateSubscriptionDefinitionRequest AWS API Documentation
    #
    class UpdateSubscriptionDefinitionRequest < Struct.new(
      :name,
      :subscription_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateSubscriptionDefinitionResponse AWS API Documentation
    #
    class UpdateSubscriptionDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateThingRuntimeConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         telemetry_configuration: {
    #           telemetry: "On", # required, accepts On, Off
    #         },
    #         thing_name: "__string", # required
    #       }
    #
    # @!attribute [rw] telemetry_configuration
    #   Configuration settings for running telemetry.
    #   @return [Types::TelemetryConfigurationUpdate]
    #
    # @!attribute [rw] thing_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateThingRuntimeConfigurationRequest AWS API Documentation
    #
    class UpdateThingRuntimeConfigurationRequest < Struct.new(
      :telemetry_configuration,
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateThingRuntimeConfigurationResponse AWS API Documentation
    #
    class UpdateThingRuntimeConfigurationResponse < Aws::EmptyStructure; end

    # Information about a version.
    #
    # @!attribute [rw] arn
    #   The ARN of the version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the parent definition that the version is associated with.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The ID of the version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/VersionInformation AWS API Documentation
    #
    class VersionInformation < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
