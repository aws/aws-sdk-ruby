# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppConfig
  module Types

    # An action defines the tasks that the extension performs during the
    # AppConfig workflow. Each action includes an action point such as
    # `ON_CREATE_HOSTED_CONFIGURATION`, `PRE_DEPLOYMENT`, or
    # `ON_DEPLOYMENT`. Each action also includes a name, a URI to an Lambda
    # function, and an Amazon Resource Name (ARN) for an Identity and Access
    # Management assume role. You specify the name, URI, and ARN for each
    # *action point* defined in the extension. You can specify the following
    # actions for an extension:
    #
    # * `PRE_CREATE_HOSTED_CONFIGURATION_VERSION`
    #
    # * `PRE_START_DEPLOYMENT`
    #
    # * `ON_DEPLOYMENT_START`
    #
    # * `ON_DEPLOYMENT_STEP`
    #
    # * `ON_DEPLOYMENT_BAKING`
    #
    # * `ON_DEPLOYMENT_COMPLETE`
    #
    # * `ON_DEPLOYMENT_ROLLED_BACK`
    #
    # @!attribute [rw] name
    #   The action name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the action.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The extension URI associated to the action point in the extension
    #   definition. The URI can be an Amazon Resource Name (ARN) for one of
    #   the following: an Lambda function, an Amazon Simple Queue Service
    #   queue, an Amazon Simple Notification Service topic, or the Amazon
    #   EventBridge default event bus.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An Amazon Resource Name (ARN) for an Identity and Access Management
    #   assume role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Action AWS API Documentation
    #
    class Action < Struct.new(
      :name,
      :description,
      :uri,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An extension that was invoked as part of a deployment event.
    #
    # @!attribute [rw] extension_identifier
    #   The name, the ID, or the Amazon Resource Name (ARN) of the
    #   extension.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   The name of the action.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The extension URI associated to the action point in the extension
    #   definition. The URI can be an Amazon Resource Name (ARN) for one of
    #   the following: an Lambda function, an Amazon Simple Queue Service
    #   queue, an Amazon Simple Notification Service topic, or the Amazon
    #   EventBridge default event bus.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An Amazon Resource Name (ARN) for an Identity and Access Management
    #   assume role.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message when an extension invocation fails.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code when an extension invocation fails.
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   A system-generated ID for this invocation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ActionInvocation AWS API Documentation
    #
    class ActionInvocation < Struct.new(
      :extension_identifier,
      :action_name,
      :uri,
      :role_arn,
      :error_message,
      :error_code,
      :invocation_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An extension that was invoked during a deployment.
    #
    # @!attribute [rw] extension_id
    #   The system-generated ID of the extension.
    #   @return [String]
    #
    # @!attribute [rw] extension_association_id
    #   The system-generated ID for the association.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The extension version number.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   One or more parameters for the actions called by the extension.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/AppliedExtension AWS API Documentation
    #
    class AppliedExtension < Struct.new(
      :extension_id,
      :extension_association_id,
      :version_number,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the input that failed to satisfy the
    # constraints specified by a call.
    #
    # @!attribute [rw] invalid_configuration
    #   Detailed information about the bad request exception error when
    #   creating a hosted configuration version.
    #   @return [Array<Types::InvalidConfigurationDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/BadRequestDetails AWS API Documentation
    #
    class BadRequestDetails < Struct.new(
      :invalid_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class InvalidConfiguration < BadRequestDetails; end
      class Unknown < BadRequestDetails; end
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Detailed information about the input that failed to satisfy the
    #   constraints specified by a call.
    #   @return [Types::BadRequestDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message,
      :reason,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content of the configuration or the configuration data.
    #
    #   The `Content` attribute only contains data if the system finds new
    #   or updated configuration data. If there is no new or updated data
    #   and `ClientConfigurationVersion` matches the version of the current
    #   configuration, AppConfig returns a `204 No Content` HTTP response
    #   code and the `Content` value will be empty.
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
      SENSITIVE = [:content]
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
    #   at the specified `LocationUri`.
    #   @return [String]
    #
    # @!attribute [rw] validators
    #   A list of methods for validating the configuration.
    #   @return [Array<Types::Validator>]
    #
    # @!attribute [rw] type
    #   The type of configurations contained in the profile. AppConfig
    #   supports `feature flags` and `freeform` configurations. We recommend
    #   you create feature flag configurations to enable or disable new
    #   features and freeform configurations to distribute configurations to
    #   an application. When calling this API, enter one of the following
    #   values for `Type`:
    #
    #   `AWS.AppConfig.FeatureFlags`
    #
    #   `AWS.Freeform`
    #   @return [String]
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
      :validators,
      :type)
      SENSITIVE = []
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
    # @!attribute [rw] type
    #   The type of configurations contained in the profile. AppConfig
    #   supports `feature flags` and `freeform` configurations. We recommend
    #   you create feature flag configurations to enable or disable new
    #   features and freeform configurations to distribute configurations to
    #   an application. When calling this API, enter one of the following
    #   values for `Type`:
    #
    #   `AWS.AppConfig.FeatureFlags`
    #
    #   `AWS.Freeform`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ConfigurationProfileSummary AWS API Documentation
    #
    class ConfigurationProfileSummary < Struct.new(
      :application_id,
      :id,
      :name,
      :location_uri,
      :validator_types,
      :type)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   A URI to locate the configuration. You can specify the following:
    #
    #   * For the AppConfig hosted configuration store and for feature
    #     flags, specify `hosted`.
    #
    #   * For an Amazon Web Services Systems Manager Parameter Store
    #     parameter, specify either the parameter name in the format
    #     `ssm-parameter://<parameter name>` or the ARN.
    #
    #   * For an Secrets Manager secret, specify the URI in the following
    #     format: `secrets-manager`://&lt;secret name&gt;.
    #
    #   * For an Amazon S3 object, specify the URI in the following format:
    #     `s3://<bucket>/<objectKey> `. Here is an example:
    #     `s3://my-bucket/my-app/us-east-1/my-config.json`
    #
    #   * For an SSM document, specify either the document name in the
    #     format `ssm-document://<document name>` or the Amazon Resource
    #     Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] retrieval_role_arn
    #   The ARN of an IAM role with permission to access the configuration
    #   at the specified `LocationUri`.
    #
    #   A retrieval role ARN is not required for configurations stored in
    #   the AppConfig hosted configuration store. It is required for all
    #   other sources that store your configuration.
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
    # @!attribute [rw] type
    #   The type of configurations contained in the profile. AppConfig
    #   supports `feature flags` and `freeform` configurations. We recommend
    #   you create feature flag configurations to enable or disable new
    #   features and freeform configurations to distribute configurations to
    #   an application. When calling this API, enter one of the following
    #   values for `Type`:
    #
    #   `AWS.AppConfig.FeatureFlags`
    #
    #   `AWS.Freeform`
    #   @return [String]
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
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Specifies the amount of time AppConfig monitors for Amazon
    #   CloudWatch alarms after the configuration has been deployed to 100%
    #   of its targets, before considering the deployment to be complete. If
    #   an alarm is triggered during this time, AppConfig rolls back the
    #   deployment. You must configure permissions for AppConfig to roll
    #   back based on CloudWatch alarms. For more information, see
    #   [Configuring permissions for rollback based on Amazon CloudWatch
    #   alarms][1] in the *AppConfig User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/getting-started-with-appconfig-cloudwatch-alarms-permissions.html
    #   @return [Integer]
    #
    # @!attribute [rw] growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #   @return [Float]
    #
    # @!attribute [rw] growth_type
    #   The algorithm used to define how percentage grows over time.
    #   AppConfig supports the following growth types:
    #
    #   **Linear**: For this type, AppConfig processes the deployment by
    #   dividing the total number of targets by the value specified for
    #   `Step percentage`. For example, a linear deployment that uses a
    #   `Step percentage` of 10 deploys the configuration to 10 percent of
    #   the hosts. After those deployments are complete, the system deploys
    #   the configuration to the next 10 percent. This continues until 100%
    #   of the targets have successfully received the configuration.
    #
    #   **Exponential**: For this type, AppConfig processes the deployment
    #   exponentially using the following formula: `G*(2^N)`. In this
    #   formula, `G` is the growth factor specified by the user and `N` is
    #   the number of steps until the configuration is deployed to all
    #   targets. For example, if you specify a growth factor of 2, then the
    #   system rolls out the configuration as follows:
    #
    #   `2*(2^0)`
    #
    #   `2*(2^1)`
    #
    #   `2*(2^2)`
    #
    #   Expressed numerically, the deployment rolls out as follows: 2% of
    #   the targets, 4% of the targets, 8% of the targets, and continues
    #   until the configuration has been deployed to all targets.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_identifier
    #   The name, the ID, or the Amazon Resource Name (ARN) of the
    #   extension.
    #   @return [String]
    #
    # @!attribute [rw] extension_version_number
    #   The version number of the extension. If not specified, AppConfig
    #   uses the maximum version of the extension.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_identifier
    #   The ARN of an application, configuration profile, or environment.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameter names and values defined in the extensions. Extension
    #   parameters marked `Required` must be entered for this field.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Adds one or more tags for the specified extension association. Tags
    #   are metadata that help you categorize resources in different ways,
    #   for example, by purpose, owner, or environment. Each tag consists of
    #   a key and an optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateExtensionAssociationRequest AWS API Documentation
    #
    class CreateExtensionAssociationRequest < Struct.new(
      :extension_identifier,
      :extension_version_number,
      :resource_identifier,
      :parameters,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the extension. Each extension name in your account must
    #   be unique. Extension versions use the same name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the extension.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions defined in the extension.
    #   @return [Hash<String,Array<Types::Action>>]
    #
    # @!attribute [rw] parameters
    #   The parameters accepted by the extension. You specify parameter
    #   values when you associate the extension to an AppConfig resource by
    #   using the `CreateExtensionAssociation` API action. For Lambda
    #   extension actions, these parameters are included in the Lambda
    #   request object.
    #   @return [Hash<String,Types::Parameter>]
    #
    # @!attribute [rw] tags
    #   Adds one or more tags for the specified extension. Tags are metadata
    #   that help you categorize resources in different ways, for example,
    #   by purpose, owner, or environment. Each tag consists of a key and an
    #   optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] latest_version_number
    #   You can omit this field when you create an extension. When you
    #   create a new version, specify the most recent current version
    #   number. For example, you create version 3, enter 2 for this field.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateExtensionRequest AWS API Documentation
    #
    class CreateExtensionRequest < Struct.new(
      :name,
      :description,
      :actions,
      :parameters,
      :tags,
      :latest_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The configuration profile ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the configuration or the configuration data.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A standard MIME type describing the format of the configuration
    #   content. For more information, see [Content-Type][1].
    #
    #
    #
    #   [1]: https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17
    #   @return [String]
    #
    # @!attribute [rw] latest_version_number
    #   An optional locking token used to prevent race conditions from
    #   overwriting configuration updates when creating a new version. To
    #   ensure your data is not overwritten when creating multiple hosted
    #   configuration versions in rapid succession, specify the version
    #   number of the latest hosted configuration version.
    #   @return [Integer]
    #
    # @!attribute [rw] version_label
    #   An optional, user-defined label for the AppConfig hosted
    #   configuration version. This value must contain at least one
    #   non-numeric character. For example, "v2.2.0".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateHostedConfigurationVersionRequest AWS API Documentation
    #
    class CreateHostedConfigurationVersionRequest < Struct.new(
      :application_id,
      :configuration_profile_id,
      :description,
      :content,
      :content_type,
      :latest_version_number,
      :version_label)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_strategy_id
    #   The ID of the deployment strategy you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteDeploymentStrategyRequest AWS API Documentation
    #
    class DeleteDeploymentStrategyRequest < Struct.new(
      :deployment_strategy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application ID that includes the environment that you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :application_id,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_association_id
    #   The ID of the extension association to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteExtensionAssociationRequest AWS API Documentation
    #
    class DeleteExtensionAssociationRequest < Struct.new(
      :extension_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_identifier
    #   The name, ID, or Amazon Resource Name (ARN) of the extension you
    #   want to delete.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   A specific version of an extension to delete. If omitted, the
    #   highest version is deleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteExtensionRequest AWS API Documentation
    #
    class DeleteExtensionRequest < Struct.new(
      :extension_identifier,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The configuration profile ID.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The versions number to delete.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteHostedConfigurationVersionRequest AWS API Documentation
    #
    class DeleteHostedConfigurationVersionRequest < Struct.new(
      :application_id,
      :configuration_profile_id,
      :version_number)
      SENSITIVE = []
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
    #   The amount of time that AppConfig monitored for alarms before
    #   considering the deployment to be complete and no longer eligible for
    #   automatic rollback.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] event_log
    #   A list containing all events related to a deployment. The most
    #   recent events are displayed first.
    #   @return [Array<Types::DeploymentEvent>]
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
    # @!attribute [rw] applied_extensions
    #   A list of extensions that were processed as part of the deployment.
    #   The extensions that were previously associated to the configuration
    #   profile, environment, or the application when `StartDeployment` was
    #   called.
    #   @return [Array<Types::AppliedExtension>]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name of the Key Management Service key used to
    #   encrypt configuration data. You can encrypt secrets stored in
    #   Secrets Manager, Amazon Simple Storage Service (Amazon S3) objects
    #   encrypted with SSE-KMS, or secure string parameters stored in Amazon
    #   Web Services Systems Manager Parameter Store.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The KMS key identifier (key ID, key alias, or key ARN). AppConfig
    #   uses this ID to encrypt the configuration data using a customer
    #   managed key.
    #   @return [String]
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
      :event_log,
      :percentage_complete,
      :started_at,
      :completed_at,
      :applied_extensions,
      :kms_key_arn,
      :kms_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes a deployment event.
    #
    # @!attribute [rw] event_type
    #   The type of deployment event. Deployment event types include the
    #   start, stop, or completion of a deployment; a percentage update; the
    #   start or stop of a bake period; and the start or completion of a
    #   rollback.
    #   @return [String]
    #
    # @!attribute [rw] triggered_by
    #   The entity that triggered the deployment event. Events can be
    #   triggered by a user, AppConfig, an Amazon CloudWatch alarm, or an
    #   internal error.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the deployment event. Descriptions include, but are
    #   not limited to, the user account or the Amazon CloudWatch alarm ARN
    #   that initiated a rollback, the percentage of hosts that received the
    #   deployment, or in the case of an internal error, a recommendation to
    #   attempt a new deployment.
    #   @return [String]
    #
    # @!attribute [rw] action_invocations
    #   The list of extensions that were invoked as part of the deployment.
    #   @return [Array<Types::ActionInvocation>]
    #
    # @!attribute [rw] occurred_at
    #   The date and time the event occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeploymentEvent AWS API Documentation
    #
    class DeploymentEvent < Struct.new(
      :event_type,
      :triggered_by,
      :description,
      :action_invocations,
      :occurred_at)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The amount of time that AppConfig monitored for alarms before
    #   considering the deployment to be complete and no longer eligible for
    #   automatic rollback.
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
      SENSITIVE = []
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
    #   The amount of time that AppConfig monitors for alarms before
    #   considering the deployment to be complete and no longer eligible for
    #   automatic rollback.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The system-generated ID of the extension.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The extension name.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The extension version number.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The system-generated Amazon Resource Name (ARN) for the extension.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the extension.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions defined in the extension.
    #   @return [Hash<String,Array<Types::Action>>]
    #
    # @!attribute [rw] parameters
    #   The parameters accepted by the extension. You specify parameter
    #   values when you associate the extension to an AppConfig resource by
    #   using the `CreateExtensionAssociation` API action. For Lambda
    #   extension actions, these parameters are included in the Lambda
    #   request object.
    #   @return [Hash<String,Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Extension AWS API Documentation
    #
    class Extension < Struct.new(
      :id,
      :name,
      :version_number,
      :arn,
      :description,
      :actions,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The system-generated ID for the association.
    #   @return [String]
    #
    # @!attribute [rw] extension_arn
    #   The ARN of the extension defined in the association.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARNs of applications, configuration profiles, or environments
    #   defined in the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The system-generated Amazon Resource Name (ARN) for the extension.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameter names and values defined in the association.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] extension_version_number
    #   The version number for the extension defined in the association.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ExtensionAssociation AWS API Documentation
    #
    class ExtensionAssociation < Struct.new(
      :id,
      :extension_arn,
      :resource_arn,
      :arn,
      :parameters,
      :extension_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an association between an extension and an AppConfig
    # resource such as an application, environment, or configuration
    # profile. Call `GetExtensionAssociation` to get more information about
    # an association.
    #
    # @!attribute [rw] id
    #   The extension association ID. This ID is used to call other
    #   `ExtensionAssociation` API actions such as `GetExtensionAssociation`
    #   or `DeleteExtensionAssociation`.
    #   @return [String]
    #
    # @!attribute [rw] extension_arn
    #   The system-generated Amazon Resource Name (ARN) for the extension.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARNs of applications, configuration profiles, or environments
    #   defined in the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ExtensionAssociationSummary AWS API Documentation
    #
    class ExtensionAssociationSummary < Struct.new(
      :id,
      :extension_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of extension associations. Each item represents an
    #   extension association to an application, environment, or
    #   configuration profile.
    #   @return [Array<Types::ExtensionAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ExtensionAssociations AWS API Documentation
    #
    class ExtensionAssociations < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an extension. Call `GetExtension` to get more
    # information about an extension.
    #
    # @!attribute [rw] id
    #   The system-generated ID of the extension.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The extension name.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The extension version number.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The system-generated Amazon Resource Name (ARN) for the extension.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ExtensionSummary AWS API Documentation
    #
    class ExtensionSummary < Struct.new(
      :id,
      :name,
      :version_number,
      :arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of available extensions. The list includes Amazon Web
    #   Services authored and user-created extensions.
    #   @return [Array<Types::ExtensionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Extensions AWS API Documentation
    #
    class Extensions < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application that includes the configuration profile
    #   you want to get.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The ID of the configuration profile that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetConfigurationProfileRequest AWS API Documentation
    #
    class GetConfigurationProfileRequest < Struct.new(
      :application_id,
      :configuration_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application
    #   The application to get. Specify either the application name or the
    #   application ID.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment to get. Specify either the environment name or the
    #   environment ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration to get. Specify either the configuration name or
    #   the configuration ID.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The clientId parameter in the following command is a unique,
    #   user-specified ID to identify the client for the configuration. This
    #   ID enables AppConfig to deploy the configuration in intervals, as
    #   defined in the deployment strategy.
    #   @return [String]
    #
    # @!attribute [rw] client_configuration_version
    #   The configuration version returned in the most recent
    #   `GetConfiguration` response.
    #
    #   AppConfig uses the value of the `ClientConfigurationVersion`
    #   parameter to identify the configuration version on your clients. If
    #   you don’t send `ClientConfigurationVersion` with each call to
    #   `GetConfiguration`, your clients receive the current configuration.
    #   You are charged each time your clients receive a configuration.
    #
    #    To avoid excess charges, we recommend you use the
    #   [StartConfigurationSession][1] and [GetLatestConfiguration][2] APIs,
    #   which track the client configuration version on your behalf. If you
    #   choose to continue using `GetConfiguration`, we recommend that you
    #   include the `ClientConfigurationVersion` value with every call to
    #   `GetConfiguration`. The value to use for
    #   `ClientConfigurationVersion` comes from the `ConfigurationVersion`
    #   attribute returned by `GetConfiguration` when there is new or
    #   updated data, and should be saved for subsequent calls to
    #   `GetConfiguration`.
    #
    #   For more information about working with configurations, see
    #   [Retrieving the Configuration][3] in the *AppConfig User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/StartConfigurationSession.html
    #   [2]: https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/GetLatestConfiguration.html
    #   [3]: http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration.html
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_strategy_id
    #   The ID of the deployment strategy to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetDeploymentStrategyRequest AWS API Documentation
    #
    class GetDeploymentStrategyRequest < Struct.new(
      :deployment_strategy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application that includes the environment you want to
    #   get.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetEnvironmentRequest AWS API Documentation
    #
    class GetEnvironmentRequest < Struct.new(
      :application_id,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_association_id
    #   The extension association ID to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetExtensionAssociationRequest AWS API Documentation
    #
    class GetExtensionAssociationRequest < Struct.new(
      :extension_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_identifier
    #   The name, the ID, or the Amazon Resource Name (ARN) of the
    #   extension.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The extension version number. If no version number was defined,
    #   AppConfig uses the highest version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetExtensionRequest AWS API Documentation
    #
    class GetExtensionRequest < Struct.new(
      :extension_identifier,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The configuration profile ID.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetHostedConfigurationVersionRequest AWS API Documentation
    #
    class GetHostedConfigurationVersionRequest < Struct.new(
      :application_id,
      :configuration_profile_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The configuration profile ID.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The configuration version.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the configuration or the configuration data.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A standard MIME type describing the format of the configuration
    #   content. For more information, see [Content-Type][1].
    #
    #
    #
    #   [1]: https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   A user-defined label for an AppConfig hosted configuration version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/HostedConfigurationVersion AWS API Documentation
    #
    class HostedConfigurationVersion < Struct.new(
      :application_id,
      :configuration_profile_id,
      :version_number,
      :description,
      :content,
      :content_type,
      :version_label)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Information about the configuration.
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The configuration profile ID.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The configuration version.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A standard MIME type describing the format of the configuration
    #   content. For more information, see [Content-Type][1].
    #
    #
    #
    #   [1]: https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   A user-defined label for an AppConfig hosted configuration version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/HostedConfigurationVersionSummary AWS API Documentation
    #
    class HostedConfigurationVersionSummary < Struct.new(
      :application_id,
      :configuration_profile_id,
      :version_number,
      :description,
      :content_type,
      :version_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::HostedConfigurationVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/HostedConfigurationVersions AWS API Documentation
    #
    class HostedConfigurationVersions < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the bad request exception error when
    # creating a hosted configuration version.
    #
    # @!attribute [rw] constraint
    #   The invalid or out-of-range validation constraint in your JSON
    #   schema that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Location of the validation constraint in the configuration JSON
    #   schema that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for an invalid configuration error.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of error for an invalid configuration.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Details about an error with Lambda when a synchronous extension
    #   experiences an error during an invocation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/InvalidConfigurationDetail AWS API Documentation
    #
    class InvalidConfigurationDetail < Struct.new(
      :constraint,
      :location,
      :reason,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Next token is a pagination token
    #   generated by AppConfig to describe what page the previous List call
    #   ended on. For the first List request, the nextToken should not be
    #   set. On subsequent calls, the nextToken parameter should be set to
    #   the previous responses nextToken value. Use this token to get the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] type
    #   A filter based on the type of configurations that the configuration
    #   profile contains. A configuration can be a feature flag or a
    #   freeform configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListConfigurationProfilesRequest AWS API Documentation
    #
    class ListConfigurationProfilesRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that may be returned for this call. If
    #   there are items that have not yet been returned, the response will
    #   include a non-null `NextToken` that you can provide in a subsequent
    #   call to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a prior call to this operation indicating the
    #   next set of results to be returned. If not specified, the operation
    #   will return the first set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListDeploymentsRequest AWS API Documentation
    #
    class ListDeploymentsRequest < Struct.new(
      :application_id,
      :environment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The ARN of an application, configuration profile, or environment.
    #   @return [String]
    #
    # @!attribute [rw] extension_identifier
    #   The name, the ID, or the Amazon Resource Name (ARN) of the
    #   extension.
    #   @return [String]
    #
    # @!attribute [rw] extension_version_number
    #   The version number for the extension defined in the association.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results or pass null to get the first set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListExtensionAssociationsRequest AWS API Documentation
    #
    class ListExtensionAssociationsRequest < Struct.new(
      :resource_identifier,
      :extension_identifier,
      :extension_version_number,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] name
    #   The extension name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListExtensionsRequest AWS API Documentation
    #
    class ListExtensionsRequest < Struct.new(
      :max_results,
      :next_token,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_id
    #   The configuration profile ID.
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
    # @!attribute [rw] version_label
    #   An optional filter that can be used to specify the version label of
    #   an AppConfig hosted configuration version. This parameter supports
    #   filtering by prefix using a wildcard, for example "v2*". If you
    #   don't specify an asterisk at the end of the value, only an exact
    #   match is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListHostedConfigurationVersionsRequest AWS API Documentation
    #
    class ListHostedConfigurationVersionsRequest < Struct.new(
      :application_id,
      :configuration_profile_id,
      :max_results,
      :next_token,
      :version_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon CloudWatch alarms to monitor during the deployment process.
    #
    # @!attribute [rw] alarm_arn
    #   Amazon Resource Name (ARN) of the Amazon CloudWatch alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_role_arn
    #   ARN of an Identity and Access Management (IAM) role for AppConfig to
    #   monitor `AlarmArn`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Monitor AWS API Documentation
    #
    class Monitor < Struct.new(
      :alarm_arn,
      :alarm_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A value such as an Amazon Resource Name (ARN) or an Amazon Simple
    # Notification Service topic entered in an extension when invoked.
    # Parameter values are specified in an extension association. For more
    # information about extensions, see [Working with AppConfig
    # extensions][1] in the *AppConfig User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
    #
    # @!attribute [rw] description
    #   Information about the parameter.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   A parameter value must be specified in the extension association.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :description,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration size is too large.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] measure
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   @return [Float]
    #
    # @!attribute [rw] size
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/PayloadTooLargeException AWS API Documentation
    #
    class PayloadTooLargeException < Struct.new(
      :message,
      :measure,
      :limit,
      :size)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of hosted configuration versions exceeds the limit for the
    # AppConfig hosted configuration store. Delete one or more versions and
    # try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The configuration version to deploy. If deploying an AppConfig
    #   hosted configuration version, you can specify either the version
    #   number or version label.
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
    # @!attribute [rw] kms_key_identifier
    #   The KMS key identifier (key ID, key alias, or key ARN). AppConfig
    #   uses this ID to encrypt the configuration data using a customer
    #   managed key.
    #   @return [String]
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
      :tags,
      :kms_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   at the specified `LocationUri`.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The amount of time that AppConfig monitors for alarms before
    #   considering the deployment to be complete and no longer eligible for
    #   automatic rollback.
    #   @return [Integer]
    #
    # @!attribute [rw] growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #   @return [Float]
    #
    # @!attribute [rw] growth_type
    #   The algorithm used to define how percentage grows over time.
    #   AppConfig supports the following growth types:
    #
    #   **Linear**: For this type, AppConfig processes the deployment by
    #   increments of the growth factor evenly distributed over the
    #   deployment time. For example, a linear deployment that uses a growth
    #   factor of 20 initially makes the configuration available to 20
    #   percent of the targets. After 1/5th of the deployment time has
    #   passed, the system updates the percentage to 40 percent. This
    #   continues until 100% of the targets are set to receive the deployed
    #   configuration.
    #
    #   **Exponential**: For this type, AppConfig processes the deployment
    #   exponentially using the following formula: `G*(2^N)`. In this
    #   formula, `G` is the growth factor specified by the user and `N` is
    #   the number of steps until the configuration is deployed to all
    #   targets. For example, if you specify a growth factor of 2, then the
    #   system rolls out the configuration as follows:
    #
    #   `2*(2^0)`
    #
    #   `2*(2^1)`
    #
    #   `2*(2^2)`
    #
    #   Expressed numerically, the deployment rolls out as follows: 2% of
    #   the targets, 4% of the targets, 8% of the targets, and continues
    #   until the configuration has been deployed to all targets.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_association_id
    #   The system-generated ID for the association.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameter names and values defined in the extension.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateExtensionAssociationRequest AWS API Documentation
    #
    class UpdateExtensionAssociationRequest < Struct.new(
      :extension_association_id,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_identifier
    #   The name, the ID, or the Amazon Resource Name (ARN) of the
    #   extension.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the extension.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions defined in the extension.
    #   @return [Hash<String,Array<Types::Action>>]
    #
    # @!attribute [rw] parameters
    #   One or more parameters for the actions called by the extension.
    #   @return [Hash<String,Types::Parameter>]
    #
    # @!attribute [rw] version_number
    #   The extension version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateExtensionRequest AWS API Documentation
    #
    class UpdateExtensionRequest < Struct.new(
      :extension_identifier,
      :description,
      :actions,
      :parameters,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # A validator provides a syntactic or semantic check to ensure the
    # configuration that you want to deploy functions as intended. To
    # validate your application configuration data, you provide a schema or
    # an Amazon Web Services Lambda function that runs against the
    # configuration. The configuration deployment or update can only proceed
    # when the configuration data is valid.
    #
    # @!attribute [rw] type
    #   AppConfig supports validators of type `JSON_SCHEMA` and `LAMBDA`
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Either the JSON Schema content or the Amazon Resource Name (ARN) of
    #   an Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/Validator AWS API Documentation
    #
    class Validator < Struct.new(
      :type,
      :content)
      SENSITIVE = [:content]
      include Aws::Structure
    end

  end
end
