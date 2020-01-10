# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppConfig
  module Types

    # @!attribute [rw] id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The application name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Application AWS API Documentation
    #
    class Application < Struct.new(
      :id,
      :name,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::Application>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Applications AWS API Documentation
    #
    class Applications < Struct.new(
      :items,
      :next_token)
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content of the configuration or the configuration data.
    #   @return [String]
    #
    # @!attribute [rw] configuration_version
    #   The configuration version.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A standard MIME type describing the format of the configuration
    #   content. For more information, see [Content-Type][1].
    #
    #
    #
    #   [1]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Configuration AWS API Documentation
    #
    class Configuration < Struct.new(
      :content,
      :configuration_version,
      :content_type)
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The configuration profile ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configuration profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The configuration profile description.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URI location of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] retrieval_role_arn
    #   The ARN of an IAM role with permission to access the configuration
    #   at the specified LocationUri.
    #   @return [String]
    #
    # @!attribute [rw] validators
    #   A list of methods for validating the configuration.
    #   @return [Array<Types::Validator>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ConfigurationProfile AWS API Documentation
    #
    class ConfigurationProfile < Struct.new(
      :application_id,
      :id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators)
      include Aws::Structure
    end

    # A summary of a configuration profile.
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the configuration profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configuration profile.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URI location of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] validator_types
    #   The types of validators in the configuration profile.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ConfigurationProfileSummary AWS API Documentation
    #
    class ConfigurationProfileSummary < Struct.new(
      :application_id,
      :id,
      :name,
      :location_uri,
      :validator_types)
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::ConfigurationProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ConfigurationProfiles AWS API Documentation
    #
    class ConfigurationProfiles < Struct.new(
      :items,
      :next_token)
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   A name for the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata to assign to the application. Tags help organize and
    #   categorize your AppConfig resources. Each tag consists of a key and
    #   an optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :name,
      :description,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConfigurationProfileRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         name: "Name", # required
    #         description: "Description",
    #         location_uri: "Uri", # required
    #         retrieval_role_arn: "Arn", # required
    #         validators: [
    #           {
    #             type: "JSON_SCHEMA", # required, accepts JSON_SCHEMA, LAMBDA
    #             content: "StringWithLengthBetween0And32768", # required
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the configuration profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the configuration profile.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   A URI to locate the configuration. You can specify either a Systems
    #   Manager (SSM) document or an SSM Parameter Store parameter. For an
    #   SSM document, specify either the document name in the format
    #   `ssm-document://<Document name>` or the Amazon Resource Name (ARN).
    #   For a parameter, specify either the parameter name in the format
    #   `ssm-parameter://<Parameter name>` or the ARN.
    #   @return [String]
    #
    # @!attribute [rw] retrieval_role_arn
    #   The ARN of an IAM role with permission to access the configuration
    #   at the specified LocationUri.
    #   @return [String]
    #
    # @!attribute [rw] validators
    #   A list of methods for validating the configuration.
    #   @return [Array<Types::Validator>]
    #
    # @!attribute [rw] tags
    #   Metadata to assign to the configuration profile. Tags help organize
    #   and categorize your AppConfig resources. Each tag consists of a key
    #   and an optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateConfigurationProfileRequest AWS API Documentation
    #
    class CreateConfigurationProfileRequest < Struct.new(
      :application_id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDeploymentStrategyRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         deployment_duration_in_minutes: 1, # required
    #         final_bake_time_in_minutes: 1,
    #         growth_factor: 1.0, # required
    #         growth_type: "LINEAR", # accepts LINEAR
    #         replicate_to: "NONE", # required, accepts NONE, SSM_DOCUMENT
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   A name for the deployment strategy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the deployment strategy.
    #   @return [String]
    #
    # @!attribute [rw] deployment_duration_in_minutes
    #   Total amount of time for a deployment to last.
    #   @return [Integer]
    #
    # @!attribute [rw] final_bake_time_in_minutes
    #   The amount of time AppConfig monitors for alarms before considering
    #   the deployment to be complete and no longer eligible for automatic
    #   roll back.
    #   @return [Integer]
    #
    # @!attribute [rw] growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #   @return [Float]
    #
    # @!attribute [rw] growth_type
    #   The algorithm used to define how percentage grows over time.
    #   @return [String]
    #
    # @!attribute [rw] replicate_to
    #   Save the deployment strategy to a Systems Manager (SSM) document.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata to assign to the deployment strategy. Tags help organize
    #   and categorize your AppConfig resources. Each tag consists of a key
    #   and an optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateDeploymentStrategyRequest AWS API Documentation
    #
    class CreateDeploymentStrategyRequest < Struct.new(
      :name,
      :description,
      :deployment_duration_in_minutes,
      :final_bake_time_in_minutes,
      :growth_factor,
      :growth_type,
      :replicate_to,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         name: "Name", # required
    #         description: "Description",
    #         monitors: [
    #           {
    #             alarm_arn: "Arn",
    #             alarm_role_arn: "Arn",
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] monitors
    #   Amazon CloudWatch alarms to monitor during the deployment process.
    #   @return [Array<Types::Monitor>]
    #
    # @!attribute [rw] tags
    #   Metadata to assign to the environment. Tags help organize and
    #   categorize your AppConfig resources. Each tag consists of a key and
    #   an optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateEnvironmentRequest AWS API Documentation
    #
    class CreateEnvironmentRequest < Struct.new(
      :application_id,
      :name,
      :description,
      :monitors,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The ID of the application to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConfigurationProfileRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         configuration_profile_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID that includes the configuration profile you want
    #   to delete.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The ID of the configuration profile you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteConfigurationProfileRequest AWS API Documentation
    #
    class DeleteConfigurationProfileRequest < Struct.new(
      :application_id,
      :configuration_profile_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDeploymentStrategyRequest
    #   data as a hash:
    #
    #       {
    #         deployment_strategy_id: "DeploymentStrategyId", # required
    #       }
    #
    # @!attribute [rw] deployment_strategy_id
    #   The ID of the deployment strategy you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteDeploymentStrategyRequest AWS API Documentation
    #
    class DeleteDeploymentStrategyRequest < Struct.new(
      :deployment_strategy_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         environment_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID that includes the environment you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :application_id,
      :environment_id)
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application that was deployed.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment that was deployed.
    #   @return [String]
    #
    # @!attribute [rw] deployment_strategy_id
    #   The ID of the deployment strategy that was deployed.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The ID of the configuration profile that was deployed.
    #   @return [String]
    #
    # @!attribute [rw] deployment_number
    #   The sequence number of the deployment.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration_location_uri
    #   Information about the source location of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration_version
    #   The configuration version that was deployed.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_duration_in_minutes
    #   Total amount of time the deployment lasted.
    #   @return [Integer]
    #
    # @!attribute [rw] growth_type
    #   The algorithm used to define how percentage grew over time.
    #   @return [String]
    #
    # @!attribute [rw] growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #   @return [Float]
    #
    # @!attribute [rw] final_bake_time_in_minutes
    #   The amount of time AppConfig monitored for alarms before considering
    #   the deployment to be complete and no longer eligible for automatic
    #   roll back.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] percentage_complete
    #   The percentage of targets for which the deployment is available.
    #   @return [Float]
    #
    # @!attribute [rw] started_at
    #   The time the deployment started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The time the deployment completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Deployment AWS API Documentation
    #
    class Deployment < Struct.new(
      :application_id,
      :environment_id,
      :deployment_strategy_id,
      :configuration_profile_id,
      :deployment_number,
      :configuration_name,
      :configuration_location_uri,
      :configuration_version,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :state,
      :percentage_complete,
      :started_at,
      :completed_at)
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::DeploymentStrategy>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeploymentStrategies AWS API Documentation
    #
    class DeploymentStrategies < Struct.new(
      :items,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The deployment strategy ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the deployment strategy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deployment strategy.
    #   @return [String]
    #
    # @!attribute [rw] deployment_duration_in_minutes
    #   Total amount of time the deployment lasted.
    #   @return [Integer]
    #
    # @!attribute [rw] growth_type
    #   The algorithm used to define how percentage grew over time.
    #   @return [String]
    #
    # @!attribute [rw] growth_factor
    #   The percentage of targets that received a deployed configuration
    #   during each interval.
    #   @return [Float]
    #
    # @!attribute [rw] final_bake_time_in_minutes
    #   The amount of time AppConfig monitored for alarms before considering
    #   the deployment to be complete and no longer eligible for automatic
    #   roll back.
    #   @return [Integer]
    #
    # @!attribute [rw] replicate_to
    #   Save the deployment strategy to a Systems Manager (SSM) document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeploymentStrategy AWS API Documentation
    #
    class DeploymentStrategy < Struct.new(
      :id,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :replicate_to)
      include Aws::Structure
    end

    # Information about the deployment.
    #
    # @!attribute [rw] deployment_number
    #   The sequence number of the deployment.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration_version
    #   The version of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] deployment_duration_in_minutes
    #   Total amount of time the deployment lasted.
    #   @return [Integer]
    #
    # @!attribute [rw] growth_type
    #   The algorithm used to define how percentage grows over time.
    #   @return [String]
    #
    # @!attribute [rw] growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #   @return [Float]
    #
    # @!attribute [rw] final_bake_time_in_minutes
    #   The amount of time AppConfig monitors for alarms before considering
    #   the deployment to be complete and no longer eligible for automatic
    #   roll back.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] percentage_complete
    #   The percentage of targets for which the deployment is available.
    #   @return [Float]
    #
    # @!attribute [rw] started_at
    #   Time the deployment started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   Time the deployment completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeploymentSummary AWS API Documentation
    #
    class DeploymentSummary < Struct.new(
      :deployment_number,
      :configuration_name,
      :configuration_version,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :state,
      :percentage_complete,
      :started_at,
      :completed_at)
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::DeploymentSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Deployments AWS API Documentation
    #
    class Deployments < Struct.new(
      :items,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The environment ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the environment. An environment can be in one of the
    #   following states: `READY_FOR_DEPLOYMENT`, `DEPLOYING`,
    #   `ROLLING_BACK`, or `ROLLED_BACK`
    #   @return [String]
    #
    # @!attribute [rw] monitors
    #   Amazon CloudWatch alarms monitored during the deployment.
    #   @return [Array<Types::Monitor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :application_id,
      :id,
      :name,
      :description,
      :state,
      :monitors)
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::Environment>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Environments AWS API Documentation
    #
    class Environments < Struct.new(
      :items,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The ID of the application you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConfigurationProfileRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         configuration_profile_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The ID of the application that includes the configuration profile
    #   you want to get.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The ID of the configuration profile you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetConfigurationProfileRequest AWS API Documentation
    #
    class GetConfigurationProfileRequest < Struct.new(
      :application_id,
      :configuration_profile_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         application: "StringWithLengthBetween1And64", # required
    #         environment: "StringWithLengthBetween1And64", # required
    #         configuration: "StringWithLengthBetween1And64", # required
    #         client_id: "StringWithLengthBetween1And64", # required
    #         client_configuration_version: "Version",
    #       }
    #
    # @!attribute [rw] application
    #   The application to get.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment to get.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration to get.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   A unique ID to identify the client for the configuration. This ID
    #   enables AppConfig to deploy the configuration in intervals, as
    #   defined in the deployment strategy.
    #   @return [String]
    #
    # @!attribute [rw] client_configuration_version
    #   The configuration version returned in the most recent
    #   GetConfiguration response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetConfigurationRequest AWS API Documentation
    #
    class GetConfigurationRequest < Struct.new(
      :application,
      :environment,
      :configuration,
      :client_id,
      :client_configuration_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         environment_id: "Id", # required
    #         deployment_number: 1, # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The ID of the application that includes the deployment you want to
    #   get.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment that includes the deployment you want to
    #   get.
    #   @return [String]
    #
    # @!attribute [rw] deployment_number
    #   The sequence number of the deployment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetDeploymentRequest AWS API Documentation
    #
    class GetDeploymentRequest < Struct.new(
      :application_id,
      :environment_id,
      :deployment_number)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeploymentStrategyRequest
    #   data as a hash:
    #
    #       {
    #         deployment_strategy_id: "DeploymentStrategyId", # required
    #       }
    #
    # @!attribute [rw] deployment_strategy_id
    #   The ID of the deployment strategy to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetDeploymentStrategyRequest AWS API Documentation
    #
    class GetDeploymentStrategyRequest < Struct.new(
      :deployment_strategy_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         environment_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The ID of the application that includes the environment you want to
    #   get.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment you wnat to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetEnvironmentRequest AWS API Documentation
    #
    class GetEnvironmentRequest < Struct.new(
      :application_id,
      :environment_id)
      include Aws::Structure
    end

    # There was an internal failure in the AppConfig service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConfigurationProfilesRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListConfigurationProfilesRequest AWS API Documentation
    #
    class ListConfigurationProfilesRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeploymentStrategiesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListDeploymentStrategiesRequest AWS API Documentation
    #
    class ListDeploymentStrategiesRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeploymentsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         environment_id: "Id", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListDeploymentsRequest AWS API Documentation
    #
    class ListDeploymentsRequest < Struct.new(
      :application_id,
      :environment_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListEnvironmentsRequest AWS API Documentation
    #
    class ListEnvironmentsRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # Amazon CloudWatch alarms to monitor during the deployment process.
    #
    # @note When making an API call, you may pass Monitor
    #   data as a hash:
    #
    #       {
    #         alarm_arn: "Arn",
    #         alarm_role_arn: "Arn",
    #       }
    #
    # @!attribute [rw] alarm_arn
    #   ARN of the Amazon CloudWatch alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_role_arn
    #   ARN of an IAM role for AppConfig to monitor `AlarmArn`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Monitor AWS API Documentation
    #
    class Monitor < Struct.new(
      :alarm_arn,
      :alarm_role_arn)
      include Aws::Structure
    end

    # The requested resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Metadata to assign to AppConfig resources. Tags help organize and
    #   categorize your AppConfig resources. Each tag consists of a key and
    #   an optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ResourceTags AWS API Documentation
    #
    class ResourceTags < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         environment_id: "Id", # required
    #         deployment_strategy_id: "DeploymentStrategyId", # required
    #         configuration_profile_id: "Id", # required
    #         configuration_version: "Version", # required
    #         description: "Description",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @!attribute [rw] deployment_strategy_id
    #   The deployment strategy ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The configuration profile ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_version
    #   The configuration version to deploy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata to assign to the deployment. Tags help organize and
    #   categorize your AppConfig resources. Each tag consists of a key and
    #   an optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/StartDeploymentRequest AWS API Documentation
    #
    class StartDeploymentRequest < Struct.new(
      :application_id,
      :environment_id,
      :deployment_strategy_id,
      :configuration_profile_id,
      :configuration_version,
      :description,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         environment_id: "Id", # required
    #         deployment_number: 1, # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @!attribute [rw] deployment_number
    #   The sequence number of the deployment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/StopDeploymentRequest AWS API Documentation
    #
    class StopDeploymentRequest < Struct.new(
      :application_id,
      :environment_id,
      :deployment_number)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which to retrieve tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value string map. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which to remove tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         name: "Name",
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :name,
      :description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateConfigurationProfileRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         configuration_profile_id: "Id", # required
    #         name: "Name",
    #         description: "Description",
    #         retrieval_role_arn: "Arn",
    #         validators: [
    #           {
    #             type: "JSON_SCHEMA", # required, accepts JSON_SCHEMA, LAMBDA
    #             content: "StringWithLengthBetween0And32768", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The ID of the configuration profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configuration profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the configuration profile.
    #   @return [String]
    #
    # @!attribute [rw] retrieval_role_arn
    #   The ARN of an IAM role with permission to access the configuration
    #   at the specified LocationUri.
    #   @return [String]
    #
    # @!attribute [rw] validators
    #   A list of methods for validating the configuration.
    #   @return [Array<Types::Validator>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateConfigurationProfileRequest AWS API Documentation
    #
    class UpdateConfigurationProfileRequest < Struct.new(
      :application_id,
      :configuration_profile_id,
      :name,
      :description,
      :retrieval_role_arn,
      :validators)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDeploymentStrategyRequest
    #   data as a hash:
    #
    #       {
    #         deployment_strategy_id: "DeploymentStrategyId", # required
    #         description: "Description",
    #         deployment_duration_in_minutes: 1,
    #         final_bake_time_in_minutes: 1,
    #         growth_factor: 1.0,
    #         growth_type: "LINEAR", # accepts LINEAR
    #       }
    #
    # @!attribute [rw] deployment_strategy_id
    #   The deployment strategy ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the deployment strategy.
    #   @return [String]
    #
    # @!attribute [rw] deployment_duration_in_minutes
    #   Total amount of time for a deployment to last.
    #   @return [Integer]
    #
    # @!attribute [rw] final_bake_time_in_minutes
    #   The amount of time AppConfig monitors for alarms before considering
    #   the deployment to be complete and no longer eligible for automatic
    #   roll back.
    #   @return [Integer]
    #
    # @!attribute [rw] growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #   @return [Float]
    #
    # @!attribute [rw] growth_type
    #   The algorithm used to define how percentage grows over time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateDeploymentStrategyRequest AWS API Documentation
    #
    class UpdateDeploymentStrategyRequest < Struct.new(
      :deployment_strategy_id,
      :description,
      :deployment_duration_in_minutes,
      :final_bake_time_in_minutes,
      :growth_factor,
      :growth_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         environment_id: "Id", # required
    #         name: "Name",
    #         description: "Description",
    #         monitors: [
    #           {
    #             alarm_arn: "Arn",
    #             alarm_role_arn: "Arn",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] monitors
    #   Amazon CloudWatch alarms to monitor during the deployment process.
    #   @return [Array<Types::Monitor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateEnvironmentRequest AWS API Documentation
    #
    class UpdateEnvironmentRequest < Struct.new(
      :application_id,
      :environment_id,
      :name,
      :description,
      :monitors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ValidateConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "Id", # required
    #         configuration_profile_id: "Id", # required
    #         configuration_version: "Version", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The configuration profile ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_version
    #   The version of the configuration to validate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ValidateConfigurationRequest AWS API Documentation
    #
    class ValidateConfigurationRequest < Struct.new(
      :application_id,
      :configuration_profile_id,
      :configuration_version)
      include Aws::Structure
    end

    # A validator provides a syntactic or semantic check to ensure the
    # configuration you want to deploy functions as intended. To validate
    # your application configuration data, you provide a schema or a Lambda
    # function that runs against the configuration. The configuration
    # deployment or update can only proceed when the configuration data is
    # valid.
    #
    # @note When making an API call, you may pass Validator
    #   data as a hash:
    #
    #       {
    #         type: "JSON_SCHEMA", # required, accepts JSON_SCHEMA, LAMBDA
    #         content: "StringWithLengthBetween0And32768", # required
    #       }
    #
    # @!attribute [rw] type
    #   AppConfig supports validators of type `JSON_SCHEMA` and `LAMBDA`
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Either the JSON Schema content or an AWS Lambda function name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Validator AWS API Documentation
    #
    class Validator < Struct.new(
      :type,
      :content)
      include Aws::Structure
    end

  end
end
