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
    #         role_arn: "__string",
    #       }
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Role arn you wish to associate with this group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateRoleToGroupRequest AWS API Documentation
    #
    class AssociateRoleToGroupRequest < Struct.new(
      :group_id,
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] associated_at
    #   Time the role arn was associated to your group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateRoleToGroupResponse AWS API Documentation
    #
    class AssociateRoleToGroupResponse < Struct.new(
      :associated_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateServiceRoleToAccountRequest
    #   data as a hash:
    #
    #       {
    #         role_arn: "__string",
    #       }
    #
    # @!attribute [rw] role_arn
    #   Role arn you wish to associate with this account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateServiceRoleToAccountRequest AWS API Documentation
    #
    class AssociateServiceRoleToAccountRequest < Struct.new(
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] associated_at
    #   Time when the service role was associated to the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateServiceRoleToAccountResponse AWS API Documentation
    #
    class AssociateServiceRoleToAccountResponse < Struct.new(
      :associated_at)
      include Aws::Structure
    end

    # Connectivity Info
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
    #   Endpoint for the GGC. Can be an IP address or DNS.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Element Id for this entry in the list.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata for this endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port_number
    #   Port of the GGC. Usually 8883.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ConnectivityInfo AWS API Documentation
    #
    class ConnectivityInfo < Struct.new(
      :host_address,
      :id,
      :metadata,
      :port_number)
      include Aws::Structure
    end

    # Information on the core
    #
    # @note When making an API call, you may pass Core
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "__string",
    #         id: "__string",
    #         sync_shadow: false,
    #         thing_arn: "__string",
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   Certificate arn of the core.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Element Id for this entry in the list.
    #   @return [String]
    #
    # @!attribute [rw] sync_shadow
    #   If true, the local shadow value automatically syncs with the
    #   cloud's shadow state.
    #   @return [Boolean]
    #
    # @!attribute [rw] thing_arn
    #   Thing arn of the core.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Core AWS API Documentation
    #
    class Core < Struct.new(
      :certificate_arn,
      :id,
      :sync_shadow,
      :thing_arn)
      include Aws::Structure
    end

    # Information on core definition version
    #
    # @note When making an API call, you may pass CoreDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         cores: [
    #           {
    #             certificate_arn: "__string",
    #             id: "__string",
    #             sync_shadow: false,
    #             thing_arn: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cores
    #   Cores in the definition version.
    #   @return [Array<Types::Core>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CoreDefinitionVersion AWS API Documentation
    #
    class CoreDefinitionVersion < Struct.new(
      :cores)
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
    #               certificate_arn: "__string",
    #               id: "__string",
    #               sync_shadow: false,
    #               thing_arn: "__string",
    #             },
    #           ],
    #         },
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information on core definition version
    #   @return [Types::CoreDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateCoreDefinitionRequest AWS API Documentation
    #
    class CreateCoreDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name)
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
    #             certificate_arn: "__string",
    #             id: "__string",
    #             sync_shadow: false,
    #             thing_arn: "__string",
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
      include Aws::Structure
    end

    # Information on Deployment
    #
    # @note When making an API call, you may pass CreateDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         deployment_id: "__string",
    #         deployment_type: "NewDeployment", # accepts NewDeployment, Redeployment
    #         group_id: "__string", # required
    #         group_version_id: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   Id of the deployment if you wish to redeploy a previous deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   Type of deployment
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   @return [String]
    #
    # @!attribute [rw] group_version_id
    #   Group Version you wish to deploy.
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
      include Aws::Structure
    end

    # @!attribute [rw] deployment_arn
    #   Arn of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   Id of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeploymentResponse AWS API Documentation
    #
    class CreateDeploymentResponse < Struct.new(
      :deployment_arn,
      :deployment_id)
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
    #               certificate_arn: "__string",
    #               id: "__string",
    #               sync_shadow: false,
    #               thing_arn: "__string",
    #             },
    #           ],
    #         },
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information on device definition version
    #   @return [Types::DeviceDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeviceDefinitionRequest AWS API Documentation
    #
    class CreateDeviceDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name)
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
    #             certificate_arn: "__string",
    #             id: "__string",
    #             sync_shadow: false,
    #             thing_arn: "__string",
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFunctionDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           functions: [
    #             {
    #               function_arn: "__string",
    #               function_configuration: {
    #                 environment: {
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
    #               id: "__string",
    #             },
    #           ],
    #         },
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information on the function definition version
    #   @return [Types::FunctionDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateFunctionDefinitionRequest AWS API Documentation
    #
    class CreateFunctionDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFunctionDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         function_definition_id: "__string", # required
    #         functions: [
    #           {
    #             function_arn: "__string",
    #             function_configuration: {
    #               environment: {
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
    #             id: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
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
      :function_definition_id,
      :functions)
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
      include Aws::Structure
    end

    # @!attribute [rw] group_certificate_authority_arn
    #   Arn of the group certificate authority.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupCertificateAuthorityResponse AWS API Documentation
    #
    class CreateGroupCertificateAuthorityResponse < Struct.new(
      :group_certificate_authority_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         initial_version: {
    #           core_definition_version_arn: "__string",
    #           device_definition_version_arn: "__string",
    #           function_definition_version_arn: "__string",
    #           logger_definition_version_arn: "__string",
    #           subscription_definition_version_arn: "__string",
    #         },
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information on group version
    #   @return [Types::GroupVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupVersionRequest
    #   data as a hash:
    #
    #       {
    #         amzn_client_token: "__string",
    #         core_definition_version_arn: "__string",
    #         device_definition_version_arn: "__string",
    #         function_definition_version_arn: "__string",
    #         group_id: "__string", # required
    #         logger_definition_version_arn: "__string",
    #         subscription_definition_version_arn: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
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
    # @!attribute [rw] subscription_definition_version_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupVersionRequest AWS API Documentation
    #
    class CreateGroupVersionRequest < Struct.new(
      :amzn_client_token,
      :core_definition_version_arn,
      :device_definition_version_arn,
      :function_definition_version_arn,
      :group_id,
      :logger_definition_version_arn,
      :subscription_definition_version_arn)
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
    #               component: "GreengrassSystem", # accepts GreengrassSystem, Lambda
    #               id: "__string",
    #               level: "DEBUG", # accepts DEBUG, INFO, WARN, ERROR, FATAL
    #               space: 1,
    #               type: "FileSystem", # accepts FileSystem, AWSCloudWatch
    #             },
    #           ],
    #         },
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information on logger definition version
    #   @return [Types::LoggerDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateLoggerDefinitionRequest AWS API Documentation
    #
    class CreateLoggerDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name)
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
    #             component: "GreengrassSystem", # accepts GreengrassSystem, Lambda
    #             id: "__string",
    #             level: "DEBUG", # accepts DEBUG, INFO, WARN, ERROR, FATAL
    #             space: 1,
    #             type: "FileSystem", # accepts FileSystem, AWSCloudWatch
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
    #               id: "__string",
    #               source: "__string",
    #               subject: "__string",
    #               target: "__string",
    #             },
    #           ],
    #         },
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] amzn_client_token
    #   @return [String]
    #
    # @!attribute [rw] initial_version
    #   Information on subscription definition version
    #   @return [Types::SubscriptionDefinitionVersion]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSubscriptionDefinitionRequest AWS API Documentation
    #
    class CreateSubscriptionDefinitionRequest < Struct.new(
      :amzn_client_token,
      :initial_version,
      :name)
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
    #             id: "__string",
    #             source: "__string",
    #             subject: "__string",
    #             target: "__string",
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
      include Aws::Structure
    end

    # Information on the Definition
    #
    # @!attribute [rw] arn
    #   Arn of the definition.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Timestamp of when the definition was created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Id of the definition.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   Last updated timestamp of the definition.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   Last version of the definition.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   Latest version arn of the definition.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the definition.
    #   @return [String]
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
      :name)
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteLoggerDefinitionResponse AWS API Documentation
    #
    class DeleteLoggerDefinitionResponse < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteSubscriptionDefinitionResponse AWS API Documentation
    #
    class DeleteSubscriptionDefinitionResponse < Aws::EmptyStructure; end

    # Information on the deployment
    #
    # @!attribute [rw] created_at
    #   Timestamp when the deployment was created.
    #   @return [String]
    #
    # @!attribute [rw] deployment_arn
    #   Arn of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   Id of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   Arn of the group for this deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Deployment AWS API Documentation
    #
    class Deployment < Struct.new(
      :created_at,
      :deployment_arn,
      :deployment_id,
      :group_arn)
      include Aws::Structure
    end

    # Information on a Device
    #
    # @note When making an API call, you may pass Device
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "__string",
    #         id: "__string",
    #         sync_shadow: false,
    #         thing_arn: "__string",
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   Certificate arn of the device.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Element Id for this entry in the list.
    #   @return [String]
    #
    # @!attribute [rw] sync_shadow
    #   If true, the local shadow value automatically syncs with the
    #   cloud's shadow state.
    #   @return [Boolean]
    #
    # @!attribute [rw] thing_arn
    #   Thing arn of the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Device AWS API Documentation
    #
    class Device < Struct.new(
      :certificate_arn,
      :id,
      :sync_shadow,
      :thing_arn)
      include Aws::Structure
    end

    # Information on device definition version
    #
    # @note When making an API call, you may pass DeviceDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         devices: [
    #           {
    #             certificate_arn: "__string",
    #             id: "__string",
    #             sync_shadow: false,
    #             thing_arn: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] devices
    #   Devices in the definition version.
    #   @return [Array<Types::Device>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeviceDefinitionVersion AWS API Documentation
    #
    class DeviceDefinitionVersion < Struct.new(
      :devices)
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
      include Aws::Structure
    end

    # @!attribute [rw] disassociated_at
    #   Time when the role was disassociated from the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateRoleFromGroupResponse AWS API Documentation
    #
    class DisassociateRoleFromGroupResponse < Struct.new(
      :disassociated_at)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateServiceRoleFromAccountRequest AWS API Documentation
    #
    class DisassociateServiceRoleFromAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] disassociated_at
    #   Time when the service role was disassociated from the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateServiceRoleFromAccountResponse AWS API Documentation
    #
    class DisassociateServiceRoleFromAccountResponse < Struct.new(
      :disassociated_at)
      include Aws::Structure
    end

    # Empty
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Empty AWS API Documentation
    #
    class Empty < Aws::EmptyStructure; end

    # ErrorDetail
    #
    # @!attribute [rw] detailed_error_code
    #   Detailed Error Code
    #   @return [String]
    #
    # @!attribute [rw] detailed_error_message
    #   Detailed Error Message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :detailed_error_code,
      :detailed_error_message)
      include Aws::Structure
    end

    # Information on function
    #
    # @note When making an API call, you may pass Function
    #   data as a hash:
    #
    #       {
    #         function_arn: "__string",
    #         function_configuration: {
    #           environment: {
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
    #         id: "__string",
    #       }
    #
    # @!attribute [rw] function_arn
    #   Arn of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] function_configuration
    #   Configuration of the function
    #   @return [Types::FunctionConfiguration]
    #
    # @!attribute [rw] id
    #   Id of the function in this version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Function AWS API Documentation
    #
    class Function < Struct.new(
      :function_arn,
      :function_configuration,
      :id)
      include Aws::Structure
    end

    # Configuration of the function
    #
    # @note When making an API call, you may pass FunctionConfiguration
    #   data as a hash:
    #
    #       {
    #         environment: {
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
    # @!attribute [rw] environment
    #   Environment of the function configuration
    #   @return [Types::FunctionConfigurationEnvironment]
    #
    # @!attribute [rw] exec_args
    #   Execution Arguments
    #   @return [String]
    #
    # @!attribute [rw] executable
    #   Executable
    #   @return [String]
    #
    # @!attribute [rw] memory_size
    #   The memory size, in KB, you configured for the function.
    #   @return [Integer]
    #
    # @!attribute [rw] pinned
    #   Whether the function is pinned or not. Pinned means the function is
    #   long-lived and starts when the core starts.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout
    #   The function execution time at which Lambda should terminate the
    #   function. This timeout still applies to pinned lambdas for each
    #   request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionConfiguration AWS API Documentation
    #
    class FunctionConfiguration < Struct.new(
      :environment,
      :exec_args,
      :executable,
      :memory_size,
      :pinned,
      :timeout)
      include Aws::Structure
    end

    # Environment of the function configuration
    #
    # @note When making an API call, you may pass FunctionConfigurationEnvironment
    #   data as a hash:
    #
    #       {
    #         variables: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] variables
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionConfigurationEnvironment AWS API Documentation
    #
    class FunctionConfigurationEnvironment < Struct.new(
      :variables)
      include Aws::Structure
    end

    # Information on the function definition version
    #
    # @note When making an API call, you may pass FunctionDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         functions: [
    #           {
    #             function_arn: "__string",
    #             function_configuration: {
    #               environment: {
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
    #             id: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] functions
    #   Lambda functions in this function definition version.
    #   @return [Array<Types::Function>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/FunctionDefinitionVersion AWS API Documentation
    #
    class FunctionDefinitionVersion < Struct.new(
      :functions)
      include Aws::Structure
    end

    # General Error
    #
    # @!attribute [rw] error_details
    #   Error Details
    #   @return [Array<Types::ErrorDetail>]
    #
    # @!attribute [rw] message
    #   Message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GeneralError AWS API Documentation
    #
    class GeneralError < Struct.new(
      :error_details,
      :message)
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
      include Aws::Structure
    end

    # @!attribute [rw] associated_at
    #   Time when the role was associated for the group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Arn of the role that is associated with the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetAssociatedRoleResponse AWS API Documentation
    #
    class GetAssociatedRoleResponse < Struct.new(
      :associated_at,
      :role_arn)
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
      include Aws::Structure
    end

    # connectivity info response
    #
    # @!attribute [rw] connectivity_info
    #   Connectivity info array
    #   @return [Array<Types::ConnectivityInfo>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetConnectivityInfoResponse AWS API Documentation
    #
    class GetConnectivityInfoResponse < Struct.new(
      :connectivity_info,
      :message)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinitionResponse AWS API Documentation
    #
    class GetCoreDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
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
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Arn of the core definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Timestamp of when the core definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information on definition
    #   @return [Types::CoreDefinitionVersion]
    #
    # @!attribute [rw] id
    #   Id of the core definition the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of the core definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinitionVersionResponse AWS API Documentation
    #
    class GetCoreDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version)
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
      include Aws::Structure
    end

    # The response body contains the status of a deployment for a group.
    #
    # @!attribute [rw] deployment_status
    #   Status of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error Message
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Last time the deployment status was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeploymentStatusResponse AWS API Documentation
    #
    class GetDeploymentStatusResponse < Struct.new(
      :deployment_status,
      :error_message,
      :updated_at)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinitionResponse AWS API Documentation
    #
    class GetDeviceDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeviceDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         device_definition_id: "__string", # required
    #         device_definition_version_id: "__string", # required
    #       }
    #
    # @!attribute [rw] device_definition_id
    #   @return [String]
    #
    # @!attribute [rw] device_definition_version_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinitionVersionRequest AWS API Documentation
    #
    class GetDeviceDefinitionVersionRequest < Struct.new(
      :device_definition_id,
      :device_definition_version_id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Arn of the device definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Timestamp of when the device definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Device definition version
    #   @return [Types::DeviceDefinitionVersion]
    #
    # @!attribute [rw] id
    #   Id of the device definition the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of the device definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinitionVersionResponse AWS API Documentation
    #
    class GetDeviceDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinitionResponse AWS API Documentation
    #
    class GetFunctionDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         function_definition_id: "__string", # required
    #         function_definition_version_id: "__string", # required
    #       }
    #
    # @!attribute [rw] function_definition_id
    #   @return [String]
    #
    # @!attribute [rw] function_definition_version_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinitionVersionRequest AWS API Documentation
    #
    class GetFunctionDefinitionVersionRequest < Struct.new(
      :function_definition_id,
      :function_definition_version_id)
      include Aws::Structure
    end

    # Function definition version
    #
    # @!attribute [rw] arn
    #   Arn of the function definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Timestamp when the funtion definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information on the definition
    #   @return [Types::FunctionDefinitionVersion]
    #
    # @!attribute [rw] id
    #   Id of the function definition the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of the function definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinitionVersionResponse AWS API Documentation
    #
    class GetFunctionDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version)
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
      include Aws::Structure
    end

    # Certificate authority for the group.
    #
    # @!attribute [rw] group_certificate_authority_arn
    #   Arn of the certificate authority for the group.
    #   @return [String]
    #
    # @!attribute [rw] group_certificate_authority_id
    #   Id of the certificate authority for the group.
    #   @return [String]
    #
    # @!attribute [rw] pem_encoded_certificate
    #   PEM encoded certificate for the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupCertificateAuthorityResponse AWS API Documentation
    #
    class GetGroupCertificateAuthorityResponse < Struct.new(
      :group_certificate_authority_arn,
      :group_certificate_authority_id,
      :pem_encoded_certificate)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupResponse AWS API Documentation
    #
    class GetGroupResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
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
      include Aws::Structure
    end

    # Information on the group version
    #
    # @!attribute [rw] arn
    #   Arn of the group version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Timestamp when the group version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information on the definition
    #   @return [Types::GroupVersion]
    #
    # @!attribute [rw] id
    #   Id of the group version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Unique Id for a version of the Group.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinitionResponse AWS API Documentation
    #
    class GetLoggerDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLoggerDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         logger_definition_id: "__string", # required
    #         logger_definition_version_id: "__string", # required
    #       }
    #
    # @!attribute [rw] logger_definition_id
    #   @return [String]
    #
    # @!attribute [rw] logger_definition_version_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinitionVersionRequest AWS API Documentation
    #
    class GetLoggerDefinitionVersionRequest < Struct.new(
      :logger_definition_id,
      :logger_definition_version_id)
      include Aws::Structure
    end

    # Information on logger definition version response
    #
    # @!attribute [rw] arn
    #   Arn of the logger definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Timestamp of when the logger definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information on definition
    #   @return [Types::LoggerDefinitionVersion]
    #
    # @!attribute [rw] id
    #   Id of the logger definition the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of the logger definition version.
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
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetServiceRoleForAccountRequest AWS API Documentation
    #
    class GetServiceRoleForAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] associated_at
    #   Time when the service role was associated to the account.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Role arn which is associated to the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetServiceRoleForAccountResponse AWS API Documentation
    #
    class GetServiceRoleForAccountResponse < Struct.new(
      :associated_at,
      :role_arn)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinitionResponse AWS API Documentation
    #
    class GetSubscriptionDefinitionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSubscriptionDefinitionVersionRequest
    #   data as a hash:
    #
    #       {
    #         subscription_definition_id: "__string", # required
    #         subscription_definition_version_id: "__string", # required
    #       }
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
      :subscription_definition_id,
      :subscription_definition_version_id)
      include Aws::Structure
    end

    # Information on the Subscription Definition Version
    #
    # @!attribute [rw] arn
    #   Arn of the subscription definition version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Timestamp of when the subscription definition version was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information on the definition
    #   @return [Types::SubscriptionDefinitionVersion]
    #
    # @!attribute [rw] id
    #   Id of the subscription definition the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of the subscription definition version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinitionVersionResponse AWS API Documentation
    #
    class GetSubscriptionDefinitionVersionResponse < Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version)
      include Aws::Structure
    end

    # Information on group certificate authority properties
    #
    # @!attribute [rw] group_certificate_authority_arn
    #   Arn of the certificate authority for the group.
    #   @return [String]
    #
    # @!attribute [rw] group_certificate_authority_id
    #   Id of the certificate authority for the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GroupCertificateAuthorityProperties AWS API Documentation
    #
    class GroupCertificateAuthorityProperties < Struct.new(
      :group_certificate_authority_arn,
      :group_certificate_authority_id)
      include Aws::Structure
    end

    # Information on the group certificate configuration
    #
    # @!attribute [rw] certificate_authority_expiry_in_milliseconds
    #   Amount of time when the certificate authority expires in
    #   milliseconds.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_in_milliseconds
    #   Amount of time when the certificate expires in milliseconds.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   Id of the group the certificate configuration belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GroupCertificateConfiguration AWS API Documentation
    #
    class GroupCertificateConfiguration < Struct.new(
      :certificate_authority_expiry_in_milliseconds,
      :certificate_expiry_in_milliseconds,
      :group_id)
      include Aws::Structure
    end

    # Information of a group
    #
    # @!attribute [rw] arn
    #   Arn of a group.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Timestamp of when the group was created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Id of a group.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   Last updated timestamp of the group.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   Last version of the group.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_arn
    #   Latest version arn of the group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a group.
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
      include Aws::Structure
    end

    # Information on group version
    #
    # @note When making an API call, you may pass GroupVersion
    #   data as a hash:
    #
    #       {
    #         core_definition_version_arn: "__string",
    #         device_definition_version_arn: "__string",
    #         function_definition_version_arn: "__string",
    #         logger_definition_version_arn: "__string",
    #         subscription_definition_version_arn: "__string",
    #       }
    #
    # @!attribute [rw] core_definition_version_arn
    #   Core definition version arn for this group.
    #   @return [String]
    #
    # @!attribute [rw] device_definition_version_arn
    #   Device definition version arn for this group.
    #   @return [String]
    #
    # @!attribute [rw] function_definition_version_arn
    #   Function definition version arn for this group.
    #   @return [String]
    #
    # @!attribute [rw] logger_definition_version_arn
    #   Logger definitionv ersion arn for this group.
    #   @return [String]
    #
    # @!attribute [rw] subscription_definition_version_arn
    #   Subscription definition version arn for this group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GroupVersion AWS API Documentation
    #
    class GroupVersion < Struct.new(
      :core_definition_version_arn,
      :device_definition_version_arn,
      :function_definition_version_arn,
      :logger_definition_version_arn,
      :subscription_definition_version_arn)
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
      include Aws::Structure
    end

    # List of definition response
    #
    # @!attribute [rw] definitions
    #   Definitions
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
      include Aws::Structure
    end

    # @!attribute [rw] deployments
    #   Information on deployments
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
      include Aws::Structure
    end

    # @!attribute [rw] group_certificate_authorities
    #   List of certificate authorities associated with the group.
    #   @return [Array<Types::GroupCertificateAuthorityProperties>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupCertificateAuthoritiesResponse AWS API Documentation
    #
    class ListGroupCertificateAuthoritiesResponse < Struct.new(
      :group_certificate_authorities)
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
      include Aws::Structure
    end

    # @!attribute [rw] groups
    #   Groups
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
      include Aws::Structure
    end

    # List of versions response
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or ''null'' if there are
    #   no additional results.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   Versions
    #   @return [Array<Types::VersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListVersionsResponse AWS API Documentation
    #
    class ListVersionsResponse < Struct.new(
      :next_token,
      :versions)
      include Aws::Structure
    end

    # Information on the Logger
    #
    # @note When making an API call, you may pass Logger
    #   data as a hash:
    #
    #       {
    #         component: "GreengrassSystem", # accepts GreengrassSystem, Lambda
    #         id: "__string",
    #         level: "DEBUG", # accepts DEBUG, INFO, WARN, ERROR, FATAL
    #         space: 1,
    #         type: "FileSystem", # accepts FileSystem, AWSCloudWatch
    #       }
    #
    # @!attribute [rw] component
    #   The component that will be subject to logs
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Element Id for this entry in the list.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The level of the logs
    #   @return [String]
    #
    # @!attribute [rw] space
    #   Amount of hardware space, in KB, to use if file system is used for
    #   logging purposes.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type which will be use for log output
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
      include Aws::Structure
    end

    # Information on logger definition version
    #
    # @note When making an API call, you may pass LoggerDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         loggers: [
    #           {
    #             component: "GreengrassSystem", # accepts GreengrassSystem, Lambda
    #             id: "__string",
    #             level: "DEBUG", # accepts DEBUG, INFO, WARN, ERROR, FATAL
    #             space: 1,
    #             type: "FileSystem", # accepts FileSystem, AWSCloudWatch
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] loggers
    #   List of loggers.
    #   @return [Array<Types::Logger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/LoggerDefinitionVersion AWS API Documentation
    #
    class LoggerDefinitionVersion < Struct.new(
      :loggers)
      include Aws::Structure
    end

    # Information on subscription
    #
    # @note When making an API call, you may pass Subscription
    #   data as a hash:
    #
    #       {
    #         id: "__string",
    #         source: "__string",
    #         subject: "__string",
    #         target: "__string",
    #       }
    #
    # @!attribute [rw] id
    #   Element Id for this entry in the list.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Source of the subscription. Can be a thing arn, lambda arn or word
    #   'cloud'
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   Subject of the message.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   Where the message is sent to. Can be a thing arn, lambda arn or word
    #   'cloud'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :id,
      :source,
      :subject,
      :target)
      include Aws::Structure
    end

    # Information on subscription definition version
    #
    # @note When making an API call, you may pass SubscriptionDefinitionVersion
    #   data as a hash:
    #
    #       {
    #         subscriptions: [
    #           {
    #             id: "__string",
    #             source: "__string",
    #             subject: "__string",
    #             target: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subscriptions
    #   Subscriptions in the version.
    #   @return [Array<Types::Subscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/SubscriptionDefinitionVersion AWS API Documentation
    #
    class SubscriptionDefinitionVersion < Struct.new(
      :subscriptions)
      include Aws::Structure
    end

    # Information on connectivity info
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
    #   Connectivity info array
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
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] version
    #   New Version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateConnectivityInfoResponse AWS API Documentation
    #
    class UpdateConnectivityInfoResponse < Struct.new(
      :message,
      :version)
      include Aws::Structure
    end

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
    #   Amount of time when the certificate expires in milliseconds.
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateLoggerDefinitionResponse AWS API Documentation
    #
    class UpdateLoggerDefinitionResponse < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateSubscriptionDefinitionResponse AWS API Documentation
    #
    class UpdateSubscriptionDefinitionResponse < Aws::EmptyStructure; end

    # Information on the version
    #
    # @!attribute [rw] arn
    #   Arn of the version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Timestamp of when the version was created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Id of the resource container.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Unique Id of a version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/VersionInformation AWS API Documentation
    #
    class VersionInformation < Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version)
      include Aws::Structure
    end

  end
end
