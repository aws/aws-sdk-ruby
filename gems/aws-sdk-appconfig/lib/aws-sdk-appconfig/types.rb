# frozen_string_literal: true

# This is generated code!

module Aws::AppConfig
  # This module contains the types returned by client operations.
  module Types

    # <p>An action defines the tasks that the extension performs during the AppConfig
    #          workflow. Each action includes an action point, as shown in the following list: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PRE_CREATE_HOSTED_CONFIGURATION_VERSION</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PRE_START_DEPLOYMENT</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AT_DEPLOYMENT_TICK</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ON_DEPLOYMENT_START</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ON_DEPLOYMENT_STEP</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ON_DEPLOYMENT_BAKING</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ON_DEPLOYMENT_COMPLETE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ON_DEPLOYMENT_ROLLED_BACK</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Each action also includes a name, a URI to an Lambda function, and an
    #          Amazon Resource Name (ARN) for an Identity and Access Management assume role. You specify the name,
    #          URI, and ARN for each <i>action point</i> defined in the extension.</p>
    # @!attribute name
    #   <p>The action name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the action.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The extension URI associated to the action point in the extension definition. The URI
    #            can be an Amazon Resource Name (ARN) for one of the following: an Lambda
    #            function, an Amazon Simple Queue Service queue, an Amazon Simple Notification Service topic, or the Amazon EventBridge default event bus.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>An Amazon Resource Name (ARN) for an Identity and Access Management assume role.</p>
    #   @return [String]
    class Action < Struct.new(
      nil,
      :name,
      :description,
      :uri,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An extension that was invoked as part of a deployment event.</p>
    # @!attribute extension_identifier
    #   <p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>The name of the action.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The extension URI associated to the action point in the extension definition. The URI
    #            can be an Amazon Resource Name (ARN) for one of the following: an Lambda
    #            function, an Amazon Simple Queue Service queue, an Amazon Simple Notification Service topic, or the Amazon EventBridge default event bus.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>An Amazon Resource Name (ARN) for an Identity and Access Management assume role.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message when an extension invocation fails.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code when an extension invocation fails.</p>
    #   @return [String]
    # @!attribute invocation_id
    #   <p>A system-generated ID for this invocation.</p>
    #   @return [String]
    class ActionInvocation < Struct.new(
      nil,
      :extension_identifier,
      :action_name,
      :uri,
      :role_arn,
      :error_message,
      :error_code,
      :invocation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    class Application < Struct.new(
      nil,
      :id,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An extension that was invoked during a deployment.</p>
    # @!attribute extension_id
    #   <p>The system-generated ID of the extension.</p>
    #   @return [String]
    # @!attribute extension_association_id
    #   <p>The system-generated ID for the association.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The extension version number.</p>
    #   @return [Integer]
    # @!attribute parameters
    #   <p>One or more parameters for the actions called by the extension.</p>
    #   @return [Hash<String, String>]
    class AppliedExtension < Struct.new(
      nil,
      :extension_id,
      :extension_association_id,
      :version_number,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # <p>A value for a feature flag attribute. Only one of the members can be set.</p>
    # @!attribute string_value
    #   <p>A string value for the attribute.</p>
    #   @return [String]
    # @!attribute number_value
    #   <p>A numeric value for the attribute.</p>
    #   @return [Float]
    # @!attribute boolean_value
    #   <p>A Boolean value for the attribute.</p>
    #   @return [Boolean]
    # @!attribute string_array
    #   <p>An array of string values for the attribute.</p>
    #   @return [Array<String>]
    # @!attribute number_array
    #   <p>An array of numeric values for the attribute.</p>
    #   @return [Array<Float>]
    class AttributeValue < Struct.new(
      :string_value,
      :number_value,
      :boolean_value,
      :string_array,
      :number_array,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < AttributeValue; end
      class NumberValue < AttributeValue; end
      class BooleanValue < AttributeValue; end
      class StringArray < AttributeValue; end
      class NumberArray < AttributeValue; end
      class Unknown < AttributeValue; end
    end

    # <p>Detailed information about the input that failed to satisfy the constraints specified by
    #          a call.</p>
    # @!attribute invalid_configuration
    #   <p>Detailed information about the bad request exception error when creating a hosted
    #            configuration version.</p>
    #   @return [Array<Types::InvalidConfigurationDetail>]
    class BadRequestDetails < Struct.new(
      :invalid_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class InvalidConfiguration < BadRequestDetails; end
      class Unknown < BadRequestDetails; end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    # @!attribute details
    #   <p>Detailed information about the input that failed to satisfy the constraints specified by
    #            a call.</p>
    #   @return [Types::BadRequestDetails]
    class BadRequestException < Struct.new(
      nil,
      :message,
      :reason,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a configuration profile.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the configuration profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #   @return [String]
    # @!attribute location_uri
    #   <p>The URI location of the configuration.</p>
    #   @return [String]
    # @!attribute validator_types
    #   <p>The types of validators in the configuration profile.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports
    #               <code>feature flags</code> and <code>freeform</code> configurations. We recommend you
    #            create feature flag configurations to enable or disable new features and freeform
    #            configurations to distribute configurations to an application. When calling this API, enter
    #            one of the following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #   @return [String]
    class ConfigurationProfileSummary < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :location_uri,
      :validator_types,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #          resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    class CreateApplicationOutput < Struct.new(
      nil,
      :id,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the application.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata to assign to the application. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which
    #            you define.</p>
    #   @return [Hash<String, String>]
    class CreateApplicationRequest < Struct.new(
      nil,
      :name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The configuration profile description.</p>
    #   @return [String]
    # @!attribute location_uri
    #   <p>The URI location of the configuration.</p>
    #   @return [String]
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #   @return [String]
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #   @return [Array<Types::Validator>]
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports
    #               <code>feature flags</code> and <code>freeform</code> configurations. We recommend you
    #            create feature flag configurations to enable or disable new features and freeform
    #            configurations to distribute configurations to an application. When calling this API, enter
    #            one of the following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name of the Key Management Service key to encrypt new configuration
    #            data versions in the AppConfig hosted configuration store. This attribute is only
    #            used for <code>hosted</code> configuration types. To encrypt data managed in other
    #            configuration stores, see the documentation for how to specify an KMS key
    #            for that particular service.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when
    #            the resource was created or updated.</p>
    #   @return [String]
    class CreateConfigurationProfileOutput < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators,
      :type,
      :kms_key_arn,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the configuration profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the configuration profile.</p>
    #   @return [String]
    # @!attribute location_uri
    #   <p>A URI to locate the configuration. You can specify the following:</p>
    #            <ul>
    #               <li>
    #                  <p>For the AppConfig hosted configuration store and for feature flags,
    #                  specify <code>hosted</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services Systems Manager Parameter Store parameter, specify either the parameter name in
    #                  the format <code>ssm-parameter://<parameter name></code> or the ARN.</p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services
    #                  CodePipeline pipeline, specify the URI in the following format:
    #                     <code>codepipeline</code>://<pipeline name>.</p>
    #               </li>
    #               <li>
    #                  <p>For an Secrets Manager secret, specify the URI in the following format:
    #                     <code>secretsmanager</code>://<secret name>.</p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon S3 object, specify the URI in the following format:
    #                     <code>s3://<bucket>/<objectKey> </code>. Here is an example:
    #                        <code>s3://amzn-s3-demo-bucket/my-app/us-east-1/my-config.json</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an SSM document, specify either the document name in the format
    #                     <code>ssm-document://<document name></code> or the Amazon Resource Name
    #                  (ARN).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #            <important>
    #               <p>A retrieval role ARN is not required for configurations stored in CodePipeline or the AppConfig hosted configuration store. It is required for all other sources that
    #               store your configuration. </p>
    #            </important>
    #   @return [String]
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #   @return [Array<Types::Validator>]
    # @!attribute tags
    #   <p>Metadata to assign to the configuration profile. Tags help organize and categorize your
    #               AppConfig resources. Each tag consists of a key and an optional value, both of
    #            which you define.</p>
    #   @return [Hash<String, String>]
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports
    #               <code>feature flags</code> and <code>freeform</code> configurations. We recommend you
    #            create feature flag configurations to enable or disable new features and freeform
    #            configurations to distribute configurations to an application. When calling this API, enter
    #            one of the following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The identifier for an Key Management Service key to encrypt new configuration data
    #            versions in the AppConfig hosted configuration store. This attribute is only used
    #            for <code>hosted</code> configuration types. The identifier can be an KMS
    #            key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias. To encrypt data
    #            managed in other configuration stores, see the documentation for how to specify an KMS key for that particular service.</p>
    #   @return [String]
    class CreateConfigurationProfileRequest < Struct.new(
      nil,
      :application_id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators,
      :tags,
      :type,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The deployment strategy ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deployment strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment strategy.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #   @return [Integer]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #   @return [String]
    # @!attribute growth_factor
    #   <p>The percentage of targets that received a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    #   @return [Integer]
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #   @return [String]
    class CreateDeploymentStrategyOutput < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :replicate_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deployment_duration_in_minutes] = 0 unless options.key?(:deployment_duration_in_minutes)
        options[:final_bake_time_in_minutes] = 0 unless options.key?(:final_bake_time_in_minutes)
        super
      end
    end

    # @!attribute name
    #   <p>A name for the deployment strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the deployment strategy.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time for a deployment to last.</p>
    #            <note>
    #               <p>AppConfig Agent supports deploying feature flag or free-form configuration data to specific segments or individual users during a gradual rollout. Entity-based gradual deployments ensure that once a user or segment receives a configuration version, they continue to receive that same version throughout the deployment period, regardless of which compute resource serves their requests. For more information, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-agent-how-to-use.html#appconfig-entity-based-gradual-deployments">Using AppConfig Agent for user-based or entity-based gradual deployments</a>
    #               </p>
    #            </note>
    #   @return [Integer]
    # @!attribute final_bake_time_in_minutes
    #   <p>Specifies the amount of time AppConfig monitors for Amazon CloudWatch alarms after the
    #            configuration has been deployed to 100% of its targets, before considering the deployment
    #            to be complete. If an alarm is triggered during this time, AppConfig rolls back
    #            the deployment. You must configure permissions for AppConfig to roll back based
    #            on CloudWatch alarms. For more information, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/getting-started-with-appconfig-cloudwatch-alarms-permissions.html">Configuring permissions for rollback based on Amazon CloudWatch alarms</a> in the
    #               <i>AppConfig User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grows over time. AppConfig
    #            supports the following growth types:</p>
    #            <p>
    #               <b>Linear</b>: For this type, AppConfig processes
    #            the deployment by dividing the total number of targets by the value specified for
    #               <code>Step percentage</code>. For example, a linear deployment that uses a <code>Step
    #               percentage</code> of 10 deploys the configuration to 10 percent of the hosts. After
    #            those deployments are complete, the system deploys the configuration to the next 10
    #            percent. This continues until 100% of the targets have successfully received the
    #            configuration.</p>
    #            <p>
    #               <b>Exponential</b>: For this type, AppConfig
    #            processes the deployment exponentially using the following formula: <code>G*(2^N)</code>.
    #            In this formula, <code>G</code> is the growth factor specified by the user and
    #               <code>N</code> is the number of steps until the configuration is deployed to all
    #            targets. For example, if you specify a growth factor of 2, then the system rolls out the
    #            configuration as follows:</p>
    #            <p>
    #               <code>2*(2^0)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^1)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^2)</code>
    #            </p>
    #            <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
    #            targets, 8% of the targets, and continues until the configuration has been deployed to all
    #            targets.</p>
    #   @return [String]
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata to assign to the deployment strategy. Tags help organize and categorize your
    #               AppConfig resources. Each tag consists of a key and an optional value, both of
    #            which you define.</p>
    #   @return [Hash<String, String>]
    class CreateDeploymentStrategyRequest < Struct.new(
      nil,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :final_bake_time_in_minutes,
      :growth_factor,
      :growth_type,
      :replicate_to,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the environment. An environment can be in one of the following states:
    #               <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or
    #               <code>ROLLED_BACK</code>
    #            </p>
    #   @return [String]
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms monitored during the deployment.</p>
    #   @return [Array<Types::Monitor>]
    class CreateEnvironmentOutput < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :description,
      :state,
      :monitors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment.</p>
    #   @return [String]
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    #   @return [Array<Types::Monitor>]
    # @!attribute tags
    #   <p>Metadata to assign to the environment. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which
    #            you define.</p>
    #   @return [Hash<String, String>]
    class CreateEnvironmentRequest < Struct.new(
      nil,
      :application_id,
      :name,
      :description,
      :monitors,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an experiment definition, including the target audience, feature flag, treatments, and current status.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the experiment definition.</p>
    #   @return [String]
    # @!attribute hypothesis
    #   <p>The hypothesis that the experiment is designed to validate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the experiment definition. Valid values: <code>ACTIVE</code>, <code>IDLE</code>, <code>ARCHIVED</code>.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID associated with the experiment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID where the experiment runs.</p>
    #   @return [String]
    # @!attribute flag_key
    #   <p>The key of the feature flag used by the experiment.</p>
    #   @return [String]
    # @!attribute audience_rule
    #   <p>The rule that defines which users are eligible to be assigned to treatments.</p>
    #   @return [String]
    # @!attribute audience_description
    #   <p>A description of the intended audience for the experiment.</p>
    #   @return [String]
    # @!attribute launch_criteria
    #   <p>The conditions under which the winning treatment should be launched.</p>
    #   @return [String]
    # @!attribute treatments
    #   <p>The list of treatments defined for the experiment.</p>
    #   @return [Array<Types::Treatment>]
    # @!attribute control
    #   <p>The control treatment used as the baseline for comparison.</p>
    #   @return [Types::Treatment]
    # @!attribute created_at
    #   <p>The date and time the experiment definition was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the experiment definition was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute kms_key_identifier
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt experiment data.</p>
    #   @return [String]
    class CreateExperimentDefinitionOutput < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :hypothesis,
      :status,
      :configuration_profile_id,
      :environment_id,
      :flag_key,
      :audience_rule,
      :audience_description,
      :launch_criteria,
      :treatments,
      :control,
      :created_at,
      :updated_at,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the experiment definition.</p>
    #   @return [String]
    # @!attribute configuration_profile_identifier
    #   <p>The configuration profile ID or name that stores the feature flag.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The environment ID or name where the experiment will run.</p>
    #   @return [String]
    # @!attribute flag_key
    #   <p>The key of the existing feature flag to use with the experiment.</p>
    #   @return [String]
    # @!attribute treatments
    #   <p>A list of treatments to evaluate during the experiment. Each treatment defines a distinct variation compared to the control.</p>
    #   @return [Array<Types::TreatmentInput>]
    # @!attribute control
    #   <p>The control treatment that represents the baseline experience for comparison.</p>
    #   @return [Types::TreatmentInput]
    # @!attribute audience_rule
    #   <p>A rule that defines which users are eligible to be assigned to treatments during the experiment.</p>
    #   @return [String]
    # @!attribute hypothesis
    #   <p>A description of the goal or hypothesis the experiment is designed to validate.</p>
    #   @return [String]
    # @!attribute audience_description
    #   <p>A description of the intended audience for the experiment.</p>
    #   @return [String]
    # @!attribute launch_criteria
    #   <p>Information about the conditions under which you would launch the winning treatment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the experiment definition. Tags help organize and categorize your AppConfig resources.</p>
    #   @return [Hash<String, String>]
    class CreateExperimentDefinitionRequest < Struct.new(
      nil,
      :application_identifier,
      :name,
      :configuration_profile_identifier,
      :environment_identifier,
      :flag_key,
      :treatments,
      :control,
      :audience_rule,
      :hypothesis,
      :audience_description,
      :launch_criteria,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The system-generated ID for the association.</p>
    #   @return [String]
    # @!attribute extension_arn
    #   <p>The ARN of the extension defined in the association.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARNs of applications, configuration profiles, or environments defined in the
    #            association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The system-generated Amazon Resource Name (ARN) for the extension.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameter names and values defined in the association.</p>
    #   @return [Hash<String, String>]
    # @!attribute extension_version_number
    #   <p>The version number for the extension defined in the association.</p>
    #   @return [Integer]
    class CreateExtensionAssociationOutput < Struct.new(
      nil,
      :id,
      :extension_arn,
      :resource_arn,
      :arn,
      :parameters,
      :extension_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:extension_version_number] = 0 unless options.key?(:extension_version_number)
        super
      end
    end

    # @!attribute extension_identifier
    #   <p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>
    #   @return [String]
    # @!attribute extension_version_number
    #   <p>The version number of the extension. If not specified, AppConfig uses the
    #            maximum version of the extension.</p>
    #   @return [Integer]
    # @!attribute resource_identifier
    #   <p>The ARN of an application, configuration profile, or environment.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameter names and values defined in the extensions. Extension parameters marked
    #               <code>Required</code> must be entered for this field.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Adds one or more tags for the specified extension association. Tags are metadata that
    #            help you categorize resources in different ways, for example, by purpose, owner, or
    #            environment. Each tag consists of a key and an optional value, both of which you define.
    #         </p>
    #   @return [Hash<String, String>]
    class CreateExtensionAssociationRequest < Struct.new(
      nil,
      :extension_identifier,
      :extension_version_number,
      :resource_identifier,
      :parameters,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The system-generated ID of the extension.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The extension name.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The extension version number.</p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>The system-generated Amazon Resource Name (ARN) for the extension.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the extension.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions defined in the extension.</p>
    #   @return [Hash<String, Array<Types::Action>>]
    # @!attribute parameters
    #   <p>The parameters accepted by the extension. You specify parameter values when you
    #            associate the extension to an AppConfig resource by using the
    #               <code>CreateExtensionAssociation</code> API action. For Lambda extension
    #            actions, these parameters are included in the Lambda request object.</p>
    #   @return [Hash<String, Types::Parameter>]
    class CreateExtensionOutput < Struct.new(
      nil,
      :id,
      :name,
      :version_number,
      :arn,
      :description,
      :actions,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # @!attribute name
    #   <p>A name for the extension. Each extension name in your account must be unique. Extension
    #            versions use the same name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the extension.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions defined in the extension.</p>
    #   @return [Hash<String, Array<Types::Action>>]
    # @!attribute parameters
    #   <p>The parameters accepted by the extension. You specify parameter values when you
    #            associate the extension to an AppConfig resource by using the
    #               <code>CreateExtensionAssociation</code> API action. For Lambda extension
    #            actions, these parameters are included in the Lambda request object.</p>
    #   @return [Hash<String, Types::Parameter>]
    # @!attribute tags
    #   <p>Adds one or more tags for the specified extension. Tags are metadata that help you
    #            categorize resources in different ways, for example, by purpose, owner, or environment.
    #            Each tag consists of a key and an optional value, both of which you define. </p>
    #   @return [Hash<String, String>]
    # @!attribute latest_version_number
    #   <p>You can omit this field when you create an extension. When you create a new version,
    #            specify the most recent current version number. For example, you create version 3, enter 2
    #            for this field.</p>
    #   @return [Integer]
    class CreateExtensionRequest < Struct.new(
      nil,
      :name,
      :description,
      :actions,
      :parameters,
      :tags,
      :latest_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The configuration version.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the configuration.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the configuration or the configuration data.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a>.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>A user-defined label for an AppConfig hosted configuration version.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name of the Key Management Service key that was used to encrypt this
    #            specific version of the configuration data in the AppConfig hosted configuration
    #            store.</p>
    #   @return [String]
    class CreateHostedConfigurationVersionOutput < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :version_number,
      :description,
      :content,
      :content_type,
      :version_label,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the configuration.</p>
    #            <note>
    #               <p>Due to HTTP limitations, this field only supports ASCII characters.</p>
    #            </note>
    #   @return [String]
    # @!attribute content
    #   <p>The configuration data, as bytes.</p>
    #            <note>
    #               <p>AppConfig accepts any type of data, including text formats like JSON or
    #               TOML, or binary formats like protocol buffers or compressed data.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a>.</p>
    #   @return [String]
    # @!attribute latest_version_number
    #   <p>An optional locking token used to prevent race conditions from overwriting configuration
    #            updates when creating a new version. To ensure your data is not overwritten when creating
    #            multiple hosted configuration versions in rapid succession, specify the version number of
    #            the latest hosted configuration version.</p>
    #   @return [Integer]
    # @!attribute version_label
    #   <p>An optional, user-defined label for the AppConfig hosted configuration
    #            version. This value must contain at least one non-numeric character. For example,
    #            "v2.2.0".</p>
    #   @return [String]
    class CreateHostedConfigurationVersionRequest < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :description,
      :content,
      :content_type,
      :latest_version_number,
      :version_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application to delete.</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID that includes the configuration profile you want to delete.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile you want to delete.</p>
    #   @return [String]
    # @!attribute deletion_protection_check
    #   <p>A parameter to configure deletion protection. Deletion protection prevents a user from
    #            deleting a configuration profile if your application has called either <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  for the
    #            configuration profile during the specified interval. </p>
    #            <p>This parameter supports the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BYPASS</code>: Instructs AppConfig to bypass the deletion
    #                  protection check and delete a configuration profile even if deletion protection would
    #                  have otherwise prevented it.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPLY</code>: Instructs the deletion protection check to run, even if
    #                  deletion protection is disabled at the account level. <code>APPLY</code> also forces
    #                  the deletion protection check to run against resources created in the past hour,
    #                  which are normally excluded from deletion protection checks. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT_DEFAULT</code>: The default setting, which instructs AppConfig to implement the deletion protection value specified in the
    #                     <code>UpdateAccountSettings</code> API.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteConfigurationProfileRequest < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :deletion_protection_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy you want to delete.</p>
    #   @return [String]
    class DeleteDeploymentStrategyRequest < Struct.new(
      nil,
      :deployment_strategy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The ID of the environment that you want to delete.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The application ID that includes the environment that you want to delete.</p>
    #   @return [String]
    # @!attribute deletion_protection_check
    #   <p>A parameter to configure deletion protection. Deletion protection prevents a user from
    #            deleting an environment if your application called either <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  in the
    #            environment during the specified interval. </p>
    #            <p>This parameter supports the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BYPASS</code>: Instructs AppConfig to bypass the deletion
    #                  protection check and delete a configuration profile even if deletion protection would
    #                  have otherwise prevented it. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPLY</code>: Instructs the deletion protection check to run, even if
    #                  deletion protection is disabled at the account level. <code>APPLY</code> also forces
    #                  the deletion protection check to run against resources created in the past hour,
    #                  which are normally excluded from deletion protection checks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT_DEFAULT</code>: The default setting, which instructs AppConfig to implement the deletion protection value specified in the
    #                     <code>UpdateAccountSettings</code> API.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteEnvironmentRequest < Struct.new(
      nil,
      :environment_id,
      :application_id,
      :deletion_protection_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute experiment_definition_identifier
    #   <p>The experiment definition ID or name.</p>
    #   @return [String]
    # @!attribute delete_type
    #   <p>The type of deletion to perform. Valid values include archive (hide but preserve) and permanent (delete permanently).</p>
    #   @return [String]
    class DeleteExperimentDefinitionRequest < Struct.new(
      nil,
      :application_identifier,
      :experiment_definition_identifier,
      :delete_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute extension_association_id
    #   <p>The ID of the extension association to delete.</p>
    #   @return [String]
    class DeleteExtensionAssociationRequest < Struct.new(
      nil,
      :extension_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute extension_identifier
    #   <p>The name, ID, or Amazon Resource Name (ARN) of the extension you want to delete.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>A specific version of an extension to delete. If omitted, the highest version is
    #            deleted.</p>
    #   @return [Integer]
    class DeleteExtensionRequest < Struct.new(
      nil,
      :extension_identifier,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The versions number to delete.</p>
    #   @return [Integer]
    class DeleteHostedConfigurationVersionRequest < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter to configure deletion protection. Deletion protection prevents a user from
    #          deleting a configuration profile or an environment if AppConfig has called either
    #             <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  for the
    #          configuration profile or from the environment during the specified interval.</p>
    #          <p>The default interval specified by <code>ProtectionPeriodInMinutes</code> is 60.
    #             <code>DeletionProtectionCheck</code> skips configuration profiles and environments that
    #          were created in the past hour.</p>
    # @!attribute enabled
    #   <p>A parameter that indicates if deletion protection is enabled or not.</p>
    #   @return [Boolean]
    # @!attribute protection_period_in_minutes
    #   <p>The time interval during which AppConfig monitors for calls to <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  for a
    #            configuration profile or from an environment. AppConfig returns an error if a
    #            user calls  or  for the designated configuration profile or
    #            environment. To bypass the error and delete a configuration profile or an environment,
    #            specify <code>BYPASS</code> for the <code>DeletionProtectionCheck</code> parameter for
    #            either  or .</p>
    #   @return [Integer]
    class DeletionProtectionSettings < Struct.new(
      nil,
      :enabled,
      :protection_period_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = nil unless options.key?(:enabled)
        super
      end
    end

    # <p>An object that describes a deployment event.</p>
    # @!attribute event_type
    #   <p>The type of deployment event. Deployment event types include the start, stop, or
    #            completion of a deployment; a percentage update; the start or stop of a bake period; and
    #            the start or completion of a rollback.</p>
    #   @return [String]
    # @!attribute triggered_by
    #   <p>The entity that triggered the deployment event. Events can be triggered by a user,
    #               AppConfig, an Amazon CloudWatch alarm, or an internal error.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the deployment event. Descriptions include, but are not limited to, the
    #            following:</p>
    #            <ul>
    #               <li>
    #                  <p>The Amazon Web Services account or the Amazon CloudWatch alarm ARN that initiated a rollback.</p>
    #               </li>
    #               <li>
    #                  <p>The percentage of hosts that received the deployment.</p>
    #               </li>
    #               <li>
    #                  <p>A recommendation to attempt a new deployment (in the case of an internal
    #                  error).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute action_invocations
    #   <p>The list of extensions that were invoked as part of the deployment.</p>
    #   @return [Array<Types::ActionInvocation>]
    # @!attribute occurred_at
    #   <p>The date and time the event occurred.</p>
    #   @return [Time]
    class DeploymentEvent < Struct.new(
      nil,
      :event_type,
      :triggered_by,
      :description,
      :action_invocations,
      :occurred_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment parameters for an experiment run, including dynamic extension parameters and tags.</p>
    # @!attribute dynamic_extension_parameters
    #   <p>A map of extension parameters for the deployment.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags to assign to the deployment.</p>
    #   @return [Hash<String, String>]
    class DeploymentParameters < Struct.new(
      nil,
      :dynamic_extension_parameters,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The deployment strategy ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deployment strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment strategy.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #   @return [Integer]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #   @return [String]
    # @!attribute growth_factor
    #   <p>The percentage of targets that received a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    #   @return [Integer]
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #   @return [String]
    class DeploymentStrategy < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :replicate_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deployment_duration_in_minutes] = 0 unless options.key?(:deployment_duration_in_minutes)
        options[:final_bake_time_in_minutes] = 0 unless options.key?(:final_bake_time_in_minutes)
        super
      end
    end

    # <p>Information about the deployment.</p>
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #   @return [Integer]
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile that was deployed.</p>
    #   @return [String]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute configuration_version
    #   <p>The version of the configuration.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #   @return [Integer]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grows over time.</p>
    #   @return [String]
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitors for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the deployment.</p>
    #   @return [String]
    # @!attribute percentage_complete
    #   <p>The percentage of targets for which the deployment is available.</p>
    #   @return [Float]
    # @!attribute started_at
    #   <p>Time the deployment started.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>Time the deployment completed.</p>
    #   @return [Time]
    # @!attribute version_label
    #   <p>A user-defined label for an AppConfig hosted configuration version.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of deployment.</p>
    #   @return [String]
    class DeploymentSummary < Struct.new(
      nil,
      :deployment_number,
      :configuration_profile_id,
      :configuration_name,
      :configuration_version,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :state,
      :percentage_complete,
      :started_at,
      :completed_at,
      :version_label,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deployment_number] = 0 unless options.key?(:deployment_number)
        options[:deployment_duration_in_minutes] = 0 unless options.key?(:deployment_duration_in_minutes)
        options[:final_bake_time_in_minutes] = 0 unless options.key?(:final_bake_time_in_minutes)
        super
      end
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the environment. An environment can be in one of the following states:
    #               <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or
    #               <code>ROLLED_BACK</code>
    #            </p>
    #   @return [String]
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms monitored during the deployment.</p>
    #   @return [Array<Types::Monitor>]
    class Environment < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :description,
      :state,
      :monitors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of the experiment definition captured at the time an experiment run was started. This preserves the configuration that was active during the run.</p>
    # @!attribute application_id
    #   <p>The application ID at the time the run was started.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the experiment definition at the time the run was started.</p>
    #   @return [String]
    # @!attribute hypothesis
    #   <p>The hypothesis at the time the run was started.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID at the time the run was started.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID at the time the run was started.</p>
    #   @return [String]
    # @!attribute flag_key
    #   <p>The feature flag key at the time the run was started.</p>
    #   @return [String]
    # @!attribute audience_rule
    #   <p>The audience rule at the time the run was started.</p>
    #   @return [String]
    # @!attribute audience_description
    #   <p>The audience description at the time the run was started.</p>
    #   @return [String]
    # @!attribute launch_criteria
    #   <p>The launch criteria at the time the run was started.</p>
    #   @return [String]
    # @!attribute treatments
    #   <p>The treatments at the time the run was started.</p>
    #   @return [Array<Types::Treatment>]
    # @!attribute control
    #   <p>The control treatment at the time the run was started.</p>
    #   @return [Types::Treatment]
    class ExperimentDefinitionSnapshot < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :hypothesis,
      :configuration_profile_id,
      :environment_id,
      :flag_key,
      :audience_rule,
      :audience_description,
      :launch_criteria,
      :treatments,
      :control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an experiment definition.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the experiment definition.</p>
    #   @return [String]
    # @!attribute hypothesis
    #   <p>The hypothesis that the experiment is designed to validate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the experiment definition.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID associated with the experiment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID where the experiment runs.</p>
    #   @return [String]
    # @!attribute flag_key
    #   <p>The key of the feature flag used by the experiment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the experiment definition was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the experiment definition was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class ExperimentDefinitionSummary < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :hypothesis,
      :status,
      :configuration_profile_id,
      :environment_id,
      :flag_key,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an event that occurred during an experiment run.</p>
    # @!attribute description
    #   <p>A description of the event.</p>
    #   @return [String]
    # @!attribute associated_deployment
    #   <p>The Amazon Resource Name (ARN) of the deployment associated with this event.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of event. Valid values: <code>RUN_STARTED</code>, <code>EXPOSURE_UPDATED</code>, <code>OVERRIDES_UPDATED</code>, <code>RUN_STOPPED</code>.</p>
    #   @return [String]
    # @!attribute occurred_at
    #   <p>The date and time the event occurred, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute triggered_by
    #   <p>The principal that triggered the event.</p>
    #   @return [String]
    # @!attribute exposure_percentage
    #   <p>The exposure percentage at the time of the event.</p>
    #   @return [Float]
    # @!attribute treatment_overrides
    #   <p>The treatment overrides at the time of the event.</p>
    #   @return [Types::TreatmentOverrides]
    class ExperimentRunEvent < Struct.new(
      nil,
      :description,
      :associated_deployment,
      :event_type,
      :occurred_at,
      :triggered_by,
      :exposure_percentage,
      :treatment_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of an experiment run, including the executive summary and launch decision rationale.</p>
    # @!attribute executive_summary
    #   <p>A summary of the experiment outcome and key findings.</p>
    #   @return [String]
    # @!attribute reasons_to_launch
    #   <p>Evidence in favor of launching the winning treatment.</p>
    #   @return [String]
    # @!attribute reasons_not_to_launch
    #   <p>Evidence against launching the treatment.</p>
    #   @return [String]
    class ExperimentRunResult < Struct.new(
      nil,
      :executive_summary,
      :reasons_to_launch,
      :reasons_not_to_launch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an experiment run.</p>
    # @!attribute experiment_definition_id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute run
    #   <p>The experiment run number.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the experiment run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the experiment run.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the experiment run started, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the experiment run was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the experiment run ended, in ISO 8601 format.</p>
    #   @return [Time]
    class ExperimentRunSummary < Struct.new(
      nil,
      :experiment_definition_id,
      :run,
      :description,
      :status,
      :started_at,
      :updated_at,
      :ended_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run] = 0 unless options.key?(:run)
        super
      end
    end

    # <p>Information about an association between an extension and an AppConfig
    #          resource such as an application, environment, or configuration profile. Call
    #             <code>GetExtensionAssociation</code> to get more information about an
    #          association.</p>
    # @!attribute id
    #   <p>The extension association ID. This ID is used to call other
    #               <code>ExtensionAssociation</code> API actions such as
    #               <code>GetExtensionAssociation</code> or <code>DeleteExtensionAssociation</code>.</p>
    #   @return [String]
    # @!attribute extension_arn
    #   <p>The system-generated Amazon Resource Name (ARN) for the extension.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARNs of applications, configuration profiles, or environments defined in the
    #            association.</p>
    #   @return [String]
    class ExtensionAssociationSummary < Struct.new(
      nil,
      :id,
      :extension_arn,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an extension. Call <code>GetExtension</code> to get more information
    #          about an extension.</p>
    # @!attribute id
    #   <p>The system-generated ID of the extension.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The extension name.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The extension version number.</p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>The system-generated Amazon Resource Name (ARN) for the extension.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the extension.</p>
    #   @return [String]
    class ExtensionSummary < Struct.new(
      nil,
      :id,
      :name,
      :version_number,
      :arn,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # <p>The feature flag value configuration for a treatment, including the enabled state and attribute values.</p>
    # @!attribute enabled
    #   <p>Specifies whether the feature flag is enabled for this treatment.</p>
    #   @return [Boolean]
    # @!attribute attribute_values
    #   <p>The attribute values associated with this flag value.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    class FlagValue < Struct.new(
      nil,
      :enabled,
      :attribute_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # @!attribute deletion_protection
    #   <p>A parameter to configure deletion protection. Deletion protection prevents a user from
    #            deleting a configuration profile or an environment if AppConfig has called either
    #               <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  for the
    #            configuration profile or from the environment during the specified interval. The default
    #            interval for <code>ProtectionPeriodInMinutes</code> is 60.</p>
    #   @return [Types::DeletionProtectionSettings]
    # @!attribute vended_metrics
    #   <p>The configuration for vended metrics in the account.</p>
    #   @return [Types::VendedMetricsSettings]
    class GetAccountSettingsOutput < Struct.new(
      nil,
      :deletion_protection,
      :vended_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    class GetApplicationOutput < Struct.new(
      nil,
      :id,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application you want to get.</p>
    #   @return [String]
    class GetApplicationRequest < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The content of the configuration or the configuration data.</p>
    #            <important>
    #               <p>The <code>Content</code> attribute only contains data if the system finds new or
    #               updated configuration data. If there is no new or updated data and
    #                  <code>ClientConfigurationVersion</code> matches the version of the current
    #               configuration, AppConfig returns a <code>204 No Content</code> HTTP response
    #               code and the <code>Content</code> value will be empty.</p>
    #            </important>
    #   @return [String]
    # @!attribute configuration_version
    #   <p>The configuration version.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a>.</p>
    #   @return [String]
    class GetConfigurationOutput < Struct.new(
      nil,
      :content,
      :configuration_version,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The configuration profile description.</p>
    #   @return [String]
    # @!attribute location_uri
    #   <p>The URI location of the configuration.</p>
    #   @return [String]
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #   @return [String]
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #   @return [Array<Types::Validator>]
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports
    #               <code>feature flags</code> and <code>freeform</code> configurations. We recommend you
    #            create feature flag configurations to enable or disable new features and freeform
    #            configurations to distribute configurations to an application. When calling this API, enter
    #            one of the following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name of the Key Management Service key to encrypt new configuration
    #            data versions in the AppConfig hosted configuration store. This attribute is only
    #            used for <code>hosted</code> configuration types. To encrypt data managed in other
    #            configuration stores, see the documentation for how to specify an KMS key
    #            for that particular service.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when
    #            the resource was created or updated.</p>
    #   @return [String]
    class GetConfigurationProfileOutput < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators,
      :type,
      :kms_key_arn,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that includes the configuration profile you want to
    #            get.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile that you want to get.</p>
    #   @return [String]
    class GetConfigurationProfileRequest < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>The application to get. Specify either the application name or the application
    #            ID.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment to get. Specify either the environment name or the environment
    #            ID.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration to get. Specify either the configuration name or the configuration
    #            ID.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The clientId parameter in the following command is a unique, user-specified ID to
    #            identify the client for the configuration. This ID enables AppConfig to deploy
    #            the configuration in intervals, as defined in the deployment strategy. </p>
    #   @return [String]
    # @!attribute client_configuration_version
    #   <p>The configuration version returned in the most recent <a>GetConfiguration</a>
    #            response.</p>
    #            <important>
    #               <p>AppConfig uses the value of the <code>ClientConfigurationVersion</code>
    #               parameter to identify the configuration version on your clients. If you don’t send
    #                  <code>ClientConfigurationVersion</code> with each call to <a>GetConfiguration</a>, your clients receive the current configuration. You are
    #               charged each time your clients receive a configuration.</p>
    #               <p>To avoid excess charges, we recommend you use the <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/StartConfigurationSession.html">StartConfigurationSession</a> and <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/GetLatestConfiguration.html">GetLatestConfiguration</a> APIs, which track the client configuration version on
    #               your behalf. If you choose to continue using <a>GetConfiguration</a>, we
    #               recommend that you include the <code>ClientConfigurationVersion</code> value with every
    #               call to <a>GetConfiguration</a>. The value to use for
    #                  <code>ClientConfigurationVersion</code> comes from the
    #                  <code>ConfigurationVersion</code> attribute returned by <a>GetConfiguration</a> when there is new or updated data, and should be saved
    #               for subsequent calls to <a>GetConfiguration</a>.</p>
    #            </important>
    #            <p>For more information about working with configurations, see <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/retrieving-feature-flags.html">Retrieving feature flags and
    #               configuration data in AppConfig</a> in the <i>AppConfig
    #               User Guide</i>.</p>
    #   @return [String]
    class GetConfigurationRequest < Struct.new(
      nil,
      :application,
      :environment,
      :configuration,
      :client_id,
      :client_configuration_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that was deployed.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment that was deployed.</p>
    #   @return [String]
    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy that was deployed.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile that was deployed.</p>
    #   @return [String]
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #   @return [Integer]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute configuration_location_uri
    #   <p>Information about the source location of the configuration.</p>
    #   @return [String]
    # @!attribute configuration_version
    #   <p>The configuration version that was deployed.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #   @return [Integer]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #   @return [String]
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the deployment.</p>
    #   @return [String]
    # @!attribute event_log
    #   <p>A list containing all events related to a deployment. The most recent events are
    #            displayed first.</p>
    #   @return [Array<Types::DeploymentEvent>]
    # @!attribute percentage_complete
    #   <p>The percentage of targets for which the deployment is available.</p>
    #   @return [Float]
    # @!attribute started_at
    #   <p>The time the deployment started.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The time the deployment completed. </p>
    #   @return [Time]
    # @!attribute applied_extensions
    #   <p>A list of extensions that were processed as part of the deployment. The extensions that
    #            were previously associated to the configuration profile, environment, or the application
    #            when <code>StartDeployment</code> was called.</p>
    #   @return [Array<Types::AppliedExtension>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name of the Key Management Service key used to encrypt configuration
    #            data. You can encrypt secrets stored in Secrets Manager, Amazon Simple Storage Service
    #            (Amazon S3) objects encrypted with SSE-KMS, or secure string parameters stored in Amazon Web Services Systems Manager
    #            Parameter Store. </p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when
    #            the resource was created or updated.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>A user-defined label for an AppConfig hosted configuration version.</p>
    #   @return [String]
    class GetDeploymentOutput < Struct.new(
      nil,
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
      :kms_key_identifier,
      :version_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deployment_number] = 0 unless options.key?(:deployment_number)
        options[:deployment_duration_in_minutes] = 0 unless options.key?(:deployment_duration_in_minutes)
        options[:final_bake_time_in_minutes] = 0 unless options.key?(:final_bake_time_in_minutes)
        super
      end
    end

    # @!attribute application_id
    #   <p>The ID of the application that includes the deployment you want to get. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment that includes the deployment you want to get. </p>
    #   @return [String]
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #   @return [Integer]
    class GetDeploymentRequest < Struct.new(
      nil,
      :application_id,
      :environment_id,
      :deployment_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The deployment strategy ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deployment strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment strategy.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #   @return [Integer]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #   @return [String]
    # @!attribute growth_factor
    #   <p>The percentage of targets that received a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    #   @return [Integer]
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #   @return [String]
    class GetDeploymentStrategyOutput < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :replicate_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deployment_duration_in_minutes] = 0 unless options.key?(:deployment_duration_in_minutes)
        options[:final_bake_time_in_minutes] = 0 unless options.key?(:final_bake_time_in_minutes)
        super
      end
    end

    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy to get.</p>
    #   @return [String]
    class GetDeploymentStrategyRequest < Struct.new(
      nil,
      :deployment_strategy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the environment. An environment can be in one of the following states:
    #               <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or
    #               <code>ROLLED_BACK</code>
    #            </p>
    #   @return [String]
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms monitored during the deployment.</p>
    #   @return [Array<Types::Monitor>]
    class GetEnvironmentOutput < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :description,
      :state,
      :monitors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that includes the environment you want to get.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment that you want to get.</p>
    #   @return [String]
    class GetEnvironmentRequest < Struct.new(
      nil,
      :application_id,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an experiment definition, including the target audience, feature flag, treatments, and current status.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the experiment definition.</p>
    #   @return [String]
    # @!attribute hypothesis
    #   <p>The hypothesis that the experiment is designed to validate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the experiment definition. Valid values: <code>ACTIVE</code>, <code>IDLE</code>, <code>ARCHIVED</code>.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID associated with the experiment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID where the experiment runs.</p>
    #   @return [String]
    # @!attribute flag_key
    #   <p>The key of the feature flag used by the experiment.</p>
    #   @return [String]
    # @!attribute audience_rule
    #   <p>The rule that defines which users are eligible to be assigned to treatments.</p>
    #   @return [String]
    # @!attribute audience_description
    #   <p>A description of the intended audience for the experiment.</p>
    #   @return [String]
    # @!attribute launch_criteria
    #   <p>The conditions under which the winning treatment should be launched.</p>
    #   @return [String]
    # @!attribute treatments
    #   <p>The list of treatments defined for the experiment.</p>
    #   @return [Array<Types::Treatment>]
    # @!attribute control
    #   <p>The control treatment used as the baseline for comparison.</p>
    #   @return [Types::Treatment]
    # @!attribute created_at
    #   <p>The date and time the experiment definition was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the experiment definition was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute kms_key_identifier
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt experiment data.</p>
    #   @return [String]
    class GetExperimentDefinitionOutput < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :hypothesis,
      :status,
      :configuration_profile_id,
      :environment_id,
      :flag_key,
      :audience_rule,
      :audience_description,
      :launch_criteria,
      :treatments,
      :control,
      :created_at,
      :updated_at,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute experiment_definition_identifier
    #   <p>The experiment definition ID or name.</p>
    #   @return [String]
    class GetExperimentDefinitionRequest < Struct.new(
      nil,
      :application_identifier,
      :experiment_definition_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an experiment run, including its status, exposure settings, and treatment overrides.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute experiment_definition_id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute run
    #   <p>The experiment run number.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the experiment run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the experiment run. Valid values: <code>RUNNING</code>, <code>DONE</code>.</p>
    #   @return [String]
    # @!attribute exposure_percentage
    #   <p>The percentage of the target audience exposed to treatments.</p>
    #   @return [Float]
    # @!attribute treatment_overrides
    #   <p>Treatment assignment overrides that assign specific entity IDs to treatments.</p>
    #   @return [Types::TreatmentOverrides]
    # @!attribute result
    #   <p>The result of the experiment run, including the executive summary and launch decision rationale.</p>
    #   @return [Types::ExperimentRunResult]
    # @!attribute started_at
    #   <p>The date and time the experiment run started, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the experiment run was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the experiment run ended, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute experiment_definition_snapshot
    #   <p>A snapshot of the experiment definition at the time the run was started.</p>
    #   @return [Types::ExperimentDefinitionSnapshot]
    class GetExperimentRunOutput < Struct.new(
      nil,
      :application_id,
      :experiment_definition_id,
      :run,
      :description,
      :status,
      :exposure_percentage,
      :treatment_overrides,
      :result,
      :started_at,
      :updated_at,
      :ended_at,
      :experiment_definition_snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run] = 0 unless options.key?(:run)
        super
      end
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute experiment_definition_identifier
    #   <p>The experiment definition ID or name.</p>
    #   @return [String]
    # @!attribute run
    #   <p>The run number to retrieve.</p>
    #   @return [Integer]
    class GetExperimentRunRequest < Struct.new(
      nil,
      :application_identifier,
      :experiment_definition_identifier,
      :run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The system-generated ID for the association.</p>
    #   @return [String]
    # @!attribute extension_arn
    #   <p>The ARN of the extension defined in the association.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARNs of applications, configuration profiles, or environments defined in the
    #            association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The system-generated Amazon Resource Name (ARN) for the extension.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameter names and values defined in the association.</p>
    #   @return [Hash<String, String>]
    # @!attribute extension_version_number
    #   <p>The version number for the extension defined in the association.</p>
    #   @return [Integer]
    class GetExtensionAssociationOutput < Struct.new(
      nil,
      :id,
      :extension_arn,
      :resource_arn,
      :arn,
      :parameters,
      :extension_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:extension_version_number] = 0 unless options.key?(:extension_version_number)
        super
      end
    end

    # @!attribute extension_association_id
    #   <p>The extension association ID to get.</p>
    #   @return [String]
    class GetExtensionAssociationRequest < Struct.new(
      nil,
      :extension_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The system-generated ID of the extension.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The extension name.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The extension version number.</p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>The system-generated Amazon Resource Name (ARN) for the extension.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the extension.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions defined in the extension.</p>
    #   @return [Hash<String, Array<Types::Action>>]
    # @!attribute parameters
    #   <p>The parameters accepted by the extension. You specify parameter values when you
    #            associate the extension to an AppConfig resource by using the
    #               <code>CreateExtensionAssociation</code> API action. For Lambda extension
    #            actions, these parameters are included in the Lambda request object.</p>
    #   @return [Hash<String, Types::Parameter>]
    class GetExtensionOutput < Struct.new(
      nil,
      :id,
      :name,
      :version_number,
      :arn,
      :description,
      :actions,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # @!attribute extension_identifier
    #   <p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The extension version number. If no version number was defined, AppConfig uses
    #            the highest version.</p>
    #   @return [Integer]
    class GetExtensionRequest < Struct.new(
      nil,
      :extension_identifier,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The configuration version.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the configuration.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the configuration or the configuration data.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a>.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>A user-defined label for an AppConfig hosted configuration version.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name of the Key Management Service key that was used to encrypt this
    #            specific version of the configuration data in the AppConfig hosted configuration
    #            store.</p>
    #   @return [String]
    class GetHostedConfigurationVersionOutput < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :version_number,
      :description,
      :content,
      :content_type,
      :version_label,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version.</p>
    #   @return [Integer]
    class GetHostedConfigurationVersionRequest < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the configuration.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The configuration version.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the configuration.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a>.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>A user-defined label for an AppConfig hosted configuration version.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name of the Key Management Service key that was used to encrypt this
    #            specific version of the configuration data in the AppConfig hosted configuration
    #            store.</p>
    #   @return [String]
    class HostedConfigurationVersionSummary < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :version_number,
      :description,
      :content_type,
      :version_label,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # <p>There was an internal failure in the AppConfig service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about the bad request exception error when creating a hosted
    #          configuration version.</p>
    # @!attribute constraint
    #   <p>The invalid or out-of-range validation constraint in your JSON schema that failed
    #            validation.</p>
    #   @return [String]
    # @!attribute location
    #   <p>Location of the validation constraint in the configuration JSON schema that failed
    #            validation.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for an invalid configuration error.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of error for an invalid configuration.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Details about an error with Lambda when a synchronous extension
    #            experiences an error during an invocation.</p>
    #   @return [String]
    class InvalidConfigurationDetail < Struct.new(
      nil,
      :constraint,
      :location,
      :reason,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::Application>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListApplicationsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list. Next token is a pagination token generated by AppConfig to describe what page the previous List call ended on. For the first List
    #            request, the nextToken should not be set. On subsequent calls, the nextToken parameter
    #            should be set to the previous responses nextToken value. Use this token to get the next set
    #            of results. </p>
    #   @return [String]
    class ListApplicationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::ConfigurationProfileSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListConfigurationProfilesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #   @return [String]
    # @!attribute type
    #   <p>A filter based on the type of configurations that the configuration profile contains. A
    #            configuration can be a feature flag or a freeform configuration.</p>
    #   @return [String]
    class ListConfigurationProfilesRequest < Struct.new(
      nil,
      :application_id,
      :max_results,
      :next_token,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::DeploymentStrategy>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListDeploymentStrategiesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #   @return [String]
    class ListDeploymentStrategiesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::DeploymentSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListDeploymentsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items that may be returned for this call. If there are items that
    #            have not yet been returned, the response will include a non-null <code>NextToken</code>
    #            that you can provide in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token returned by a prior call to this operation indicating the next set of results
    #            to be returned. If not specified, the operation will return the first set of
    #            results.</p>
    #   @return [String]
    class ListDeploymentsRequest < Struct.new(
      nil,
      :application_id,
      :environment_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::Environment>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListEnvironmentsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #   @return [String]
    class ListEnvironmentsRequest < Struct.new(
      nil,
      :application_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response for a list experiment definitions request.</p>
    # @!attribute items
    #   <p>The list of experiment definitions.</p>
    #   @return [Array<Types::ExperimentDefinitionSummary>]
    # @!attribute next_token
    #   <p>A token to use for the next set of results.</p>
    #   @return [String]
    class ListExperimentDefinitionsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_identifier
    #   <p>The application ID or name to filter results.</p>
    #   @return [String]
    # @!attribute configuration_profile_identifier
    #   <p>The configuration profile ID or name to filter results.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The environment ID or name to filter results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A filter for the experiment definition status.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list from a previously truncated response.</p>
    #   @return [String]
    class ListExperimentDefinitionsRequest < Struct.new(
      nil,
      :application_identifier,
      :configuration_profile_identifier,
      :environment_identifier,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response for a list experiment run events request.</p>
    # @!attribute items
    #   <p>The list of experiment run events.</p>
    #   @return [Array<Types::ExperimentRunEvent>]
    # @!attribute next_token
    #   <p>A token to use for the next set of results.</p>
    #   @return [String]
    class ListExperimentRunEventsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute experiment_definition_identifier
    #   <p>The experiment definition ID or name.</p>
    #   @return [String]
    # @!attribute run
    #   <p>The run number.</p>
    #   @return [Integer]
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list from a previously truncated response.</p>
    #   @return [String]
    class ListExperimentRunEventsRequest < Struct.new(
      nil,
      :application_identifier,
      :experiment_definition_identifier,
      :run,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response for a list experiment runs request.</p>
    # @!attribute items
    #   <p>The list of experiment runs.</p>
    #   @return [Array<Types::ExperimentRunSummary>]
    # @!attribute next_token
    #   <p>A token to use for the next set of results.</p>
    #   @return [String]
    class ListExperimentRunsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute experiment_definition_identifier
    #   <p>The experiment definition ID or name.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list from a previously truncated response.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A filter for the experiment run status.</p>
    #   @return [String]
    class ListExperimentRunsRequest < Struct.new(
      nil,
      :application_identifier,
      :experiment_definition_identifier,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of extension associations. Each item represents an extension association to an
    #            application, environment, or configuration profile. </p>
    #   @return [Array<Types::ExtensionAssociationSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListExtensionAssociationsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The ARN of an application, configuration profile, or environment.</p>
    #   @return [String]
    # @!attribute extension_identifier
    #   <p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>
    #   @return [String]
    # @!attribute extension_version_number
    #   <p>The version number for the extension defined in the association.</p>
    #   @return [Integer]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results or pass null to
    #            get the first set of results. </p>
    #   @return [String]
    class ListExtensionAssociationsRequest < Struct.new(
      nil,
      :resource_identifier,
      :extension_identifier,
      :extension_version_number,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of available extensions. The list includes Amazon Web Services authored and
    #            user-created extensions.</p>
    #   @return [Array<Types::ExtensionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListExtensionsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The extension name.</p>
    #   @return [String]
    class ListExtensionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::HostedConfigurationVersionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListHostedConfigurationVersionsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. If <code>MaxResults</code> is not
    #            provided in the call, AppConfig returns the maximum of 50. The call also returns
    #            a token that you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #   @return [String]
    # @!attribute version_label
    #   <p>An optional filter that can be used to specify the version label of an AppConfig hosted configuration version. This parameter supports filtering by prefix using a
    #            wildcard, for example "v2*". If you don't specify an asterisk at the end of the value, only
    #            an exact match is returned.</p>
    #   @return [String]
    class ListHostedConfigurationVersionsRequest < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :max_results,
      :next_token,
      :version_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Metadata to assign to AppConfig resources. Tags help organize and categorize
    #            your AppConfig resources. Each tag consists of a key and an optional value, both
    #            of which you define.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    # @!attribute alarm_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute alarm_role_arn
    #   <p>ARN of an Identity and Access Management (IAM) role for AppConfig to monitor
    #               <code>AlarmArn</code>.</p>
    #   @return [String]
    class Monitor < Struct.new(
      nil,
      :alarm_arn,
      :alarm_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A value such as an Amazon Resource Name (ARN) or an Amazon Simple Notification Service topic entered
    #          in an extension when invoked. Parameter values are specified in an extension association.
    #          For more information about extensions, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html">Extending
    #             workflows</a> in the <i>AppConfig User Guide</i>.</p>
    # @!attribute description
    #   <p>Information about the parameter.</p>
    #   @return [String]
    # @!attribute required
    #   <p>A parameter value must be specified in the extension association.</p>
    #   @return [Boolean]
    # @!attribute dynamic
    #   <p>Indicates whether this parameter's value can be supplied at the extension's action point
    #            instead of during extension association. Dynamic parameters can't be marked
    #               <code>Required</code>.</p>
    #   @return [Boolean]
    class Parameter < Struct.new(
      nil,
      :description,
      :required,
      :dynamic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:required] = false unless options.key?(:required)
        options[:dynamic] = false unless options.key?(:dynamic)
        super
      end
    end

    # <p>The configuration size is too large.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute measure
    #   @return [String]
    # @!attribute limit
    #   @return [Float]
    # @!attribute size
    #   @return [Float]
    class PayloadTooLargeException < Struct.new(
      nil,
      :message,
      :measure,
      :limit,
      :size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:limit] = 0 unless options.key?(:limit)
        options[:size] = 0 unless options.key?(:size)
        super
      end
    end

    # <p>The requested resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of one more AppConfig resources exceeds the maximum allowed. Verify that your
    #          environment doesn't exceed the following service quotas:</p>
    #          <p>Applications: 100 max</p>
    #          <p>To resolve this issue, you can delete one or more resources and try again. Or, you can
    #          request a quota increase. For more information about quotas and to request an increase, see
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/appconfig.html#limits_appconfig">Service quotas for AppConfig</a> in the Amazon Web Services General Reference.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that was deployed.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment that was deployed.</p>
    #   @return [String]
    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy that was deployed.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile that was deployed.</p>
    #   @return [String]
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #   @return [Integer]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute configuration_location_uri
    #   <p>Information about the source location of the configuration.</p>
    #   @return [String]
    # @!attribute configuration_version
    #   <p>The configuration version that was deployed.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #   @return [Integer]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #   @return [String]
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the deployment.</p>
    #   @return [String]
    # @!attribute event_log
    #   <p>A list containing all events related to a deployment. The most recent events are
    #            displayed first.</p>
    #   @return [Array<Types::DeploymentEvent>]
    # @!attribute percentage_complete
    #   <p>The percentage of targets for which the deployment is available.</p>
    #   @return [Float]
    # @!attribute started_at
    #   <p>The time the deployment started.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The time the deployment completed. </p>
    #   @return [Time]
    # @!attribute applied_extensions
    #   <p>A list of extensions that were processed as part of the deployment. The extensions that
    #            were previously associated to the configuration profile, environment, or the application
    #            when <code>StartDeployment</code> was called.</p>
    #   @return [Array<Types::AppliedExtension>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name of the Key Management Service key used to encrypt configuration
    #            data. You can encrypt secrets stored in Secrets Manager, Amazon Simple Storage Service
    #            (Amazon S3) objects encrypted with SSE-KMS, or secure string parameters stored in Amazon Web Services Systems Manager
    #            Parameter Store. </p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when
    #            the resource was created or updated.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>A user-defined label for an AppConfig hosted configuration version.</p>
    #   @return [String]
    class StartDeploymentOutput < Struct.new(
      nil,
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
      :kms_key_identifier,
      :version_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deployment_number] = 0 unless options.key?(:deployment_number)
        options[:deployment_duration_in_minutes] = 0 unless options.key?(:deployment_duration_in_minutes)
        options[:final_bake_time_in_minutes] = 0 unless options.key?(:final_bake_time_in_minutes)
        super
      end
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute deployment_strategy_id
    #   <p>The deployment strategy ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute configuration_version
    #   <p>The configuration version to deploy. If deploying an AppConfig hosted
    #            configuration version, you can specify either the version number or version label. For all
    #            other configurations, you must specify the version number.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the deployment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata to assign to the deployment. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which
    #            you define.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_identifier
    #   <p>The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this ID to encrypt the configuration data using a customer managed key. </p>
    #   @return [String]
    # @!attribute dynamic_extension_parameters
    #   <p>A map of dynamic extension parameter names to values to pass to associated extensions
    #            with <code>PRE_START_DEPLOYMENT</code> actions.</p>
    #   @return [Hash<String, String>]
    # @!attribute latest_deployment_number
    #   <p>The number of the latest deployment. Use this value to ensure that the deployment starts from the expected state and to prevent conflicting updates.</p>
    #   @return [Integer]
    class StartDeploymentRequest < Struct.new(
      nil,
      :application_id,
      :environment_id,
      :deployment_strategy_id,
      :configuration_profile_id,
      :configuration_version,
      :description,
      :tags,
      :kms_key_identifier,
      :dynamic_extension_parameters,
      :latest_deployment_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an experiment run, including its status, exposure settings, and treatment overrides.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute experiment_definition_id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute run
    #   <p>The experiment run number.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the experiment run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the experiment run. Valid values: <code>RUNNING</code>, <code>DONE</code>.</p>
    #   @return [String]
    # @!attribute exposure_percentage
    #   <p>The percentage of the target audience exposed to treatments.</p>
    #   @return [Float]
    # @!attribute treatment_overrides
    #   <p>Treatment assignment overrides that assign specific entity IDs to treatments.</p>
    #   @return [Types::TreatmentOverrides]
    # @!attribute result
    #   <p>The result of the experiment run, including the executive summary and launch decision rationale.</p>
    #   @return [Types::ExperimentRunResult]
    # @!attribute started_at
    #   <p>The date and time the experiment run started, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the experiment run was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the experiment run ended, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute experiment_definition_snapshot
    #   <p>A snapshot of the experiment definition at the time the run was started.</p>
    #   @return [Types::ExperimentDefinitionSnapshot]
    class StartExperimentRunOutput < Struct.new(
      nil,
      :application_id,
      :experiment_definition_id,
      :run,
      :description,
      :status,
      :exposure_percentage,
      :treatment_overrides,
      :result,
      :started_at,
      :updated_at,
      :ended_at,
      :experiment_definition_snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run] = 0 unless options.key?(:run)
        super
      end
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute experiment_definition_identifier
    #   <p>The experiment definition ID or name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of this experiment run.</p>
    #   @return [String]
    # @!attribute exposure_percentage
    #   <p>The percentage of the target audience to expose to treatments. Set to 0 to validate the experiment before exposing production users.</p>
    #   @return [Float]
    # @!attribute treatment_overrides
    #   <p>Treatment assignment overrides that assign specific entity IDs to treatments directly, bypassing random assignment.</p>
    #   @return [Types::TreatmentOverrides]
    # @!attribute tags
    #   <p>The tags to assign to the experiment run.</p>
    #   @return [Hash<String, String>]
    # @!attribute deployment_parameters
    #   <p>The deployment parameters for the experiment run, including a KMS key identifier for encryption.</p>
    #   @return [Types::DeploymentParameters]
    class StartExperimentRunRequest < Struct.new(
      nil,
      :application_identifier,
      :experiment_definition_identifier,
      :description,
      :exposure_percentage,
      :treatment_overrides,
      :tags,
      :deployment_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that was deployed.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment that was deployed.</p>
    #   @return [String]
    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy that was deployed.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile that was deployed.</p>
    #   @return [String]
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #   @return [Integer]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute configuration_location_uri
    #   <p>Information about the source location of the configuration.</p>
    #   @return [String]
    # @!attribute configuration_version
    #   <p>The configuration version that was deployed.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #   @return [Integer]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #   @return [String]
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the deployment.</p>
    #   @return [String]
    # @!attribute event_log
    #   <p>A list containing all events related to a deployment. The most recent events are
    #            displayed first.</p>
    #   @return [Array<Types::DeploymentEvent>]
    # @!attribute percentage_complete
    #   <p>The percentage of targets for which the deployment is available.</p>
    #   @return [Float]
    # @!attribute started_at
    #   <p>The time the deployment started.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The time the deployment completed. </p>
    #   @return [Time]
    # @!attribute applied_extensions
    #   <p>A list of extensions that were processed as part of the deployment. The extensions that
    #            were previously associated to the configuration profile, environment, or the application
    #            when <code>StartDeployment</code> was called.</p>
    #   @return [Array<Types::AppliedExtension>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name of the Key Management Service key used to encrypt configuration
    #            data. You can encrypt secrets stored in Secrets Manager, Amazon Simple Storage Service
    #            (Amazon S3) objects encrypted with SSE-KMS, or secure string parameters stored in Amazon Web Services Systems Manager
    #            Parameter Store. </p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when
    #            the resource was created or updated.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>A user-defined label for an AppConfig hosted configuration version.</p>
    #   @return [String]
    class StopDeploymentOutput < Struct.new(
      nil,
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
      :kms_key_identifier,
      :version_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deployment_number] = 0 unless options.key?(:deployment_number)
        options[:deployment_duration_in_minutes] = 0 unless options.key?(:deployment_duration_in_minutes)
        options[:final_bake_time_in_minutes] = 0 unless options.key?(:final_bake_time_in_minutes)
        super
      end
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #   @return [Integer]
    # @!attribute allow_revert
    #   <p>A Boolean that enables AppConfig to rollback a <code>COMPLETED</code>
    #            deployment to the previous configuration version. This action moves the deployment to a
    #            status of <code>REVERTED</code>.</p>
    #   @return [Boolean]
    class StopDeploymentRequest < Struct.new(
      nil,
      :application_id,
      :environment_id,
      :deployment_number,
      :allow_revert,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an experiment run, including its status, exposure settings, and treatment overrides.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute experiment_definition_id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute run
    #   <p>The experiment run number.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the experiment run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the experiment run. Valid values: <code>RUNNING</code>, <code>DONE</code>.</p>
    #   @return [String]
    # @!attribute exposure_percentage
    #   <p>The percentage of the target audience exposed to treatments.</p>
    #   @return [Float]
    # @!attribute treatment_overrides
    #   <p>Treatment assignment overrides that assign specific entity IDs to treatments.</p>
    #   @return [Types::TreatmentOverrides]
    # @!attribute result
    #   <p>The result of the experiment run, including the executive summary and launch decision rationale.</p>
    #   @return [Types::ExperimentRunResult]
    # @!attribute started_at
    #   <p>The date and time the experiment run started, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the experiment run was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the experiment run ended, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute experiment_definition_snapshot
    #   <p>A snapshot of the experiment definition at the time the run was started.</p>
    #   @return [Types::ExperimentDefinitionSnapshot]
    class StopExperimentRunOutput < Struct.new(
      nil,
      :application_id,
      :experiment_definition_id,
      :run,
      :description,
      :status,
      :exposure_percentage,
      :treatment_overrides,
      :result,
      :started_at,
      :updated_at,
      :ended_at,
      :experiment_definition_snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run] = 0 unless options.key?(:run)
        super
      end
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute experiment_definition_identifier
    #   <p>The experiment definition ID or name.</p>
    #   @return [String]
    # @!attribute run
    #   <p>The run number to stop.</p>
    #   @return [Integer]
    # @!attribute result
    #   <p>The result of the experiment run, including an executive summary and reasons for or against launching.</p>
    #   @return [Types::ExperimentRunResult]
    # @!attribute deployment_parameters
    #   <p>The deployment parameters for the stop operation.</p>
    #   @return [Types::DeploymentParameters]
    class StopExperimentRunRequest < Struct.new(
      nil,
      :application_identifier,
      :experiment_definition_identifier,
      :run,
      :result,
      :deployment_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which to retrieve tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value string map. The valid character set is [a-zA-Z+-=._:/]. The tag key can be
    #            up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to
    #            256 characters.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a treatment in an experiment, including its traffic allocation weight and feature flag value.</p>
    # @!attribute key
    #   <p>The unique key that identifies this treatment.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The traffic allocation weight for this treatment.</p>
    #   @return [Float]
    # @!attribute description
    #   <p>A description of the treatment.</p>
    #   @return [String]
    # @!attribute flag_value
    #   <p>The feature flag value served to users assigned to this treatment.</p>
    #   @return [Types::FlagValue]
    class Treatment < Struct.new(
      nil,
      :key,
      :weight,
      :description,
      :flag_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:weight] = 0 unless options.key?(:weight)
        super
      end
    end

    # <p>Input structure for defining a treatment when creating or updating an experiment definition.</p>
    # @!attribute weight
    #   <p>The traffic allocation weight for this treatment.</p>
    #   @return [Float]
    # @!attribute description
    #   <p>A description of the treatment.</p>
    #   @return [String]
    # @!attribute flag_value
    #   <p>The feature flag value to serve to users assigned to this treatment.</p>
    #   @return [Types::FlagValue]
    class TreatmentInput < Struct.new(
      nil,
      :weight,
      :description,
      :flag_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:weight] = 0 unless options.key?(:weight)
        super
      end
    end

    # <p>Treatment assignment overrides that assign specific entity IDs to treatments, bypassing random assignment.</p>
    # @!attribute inline
    #   <p>A map of entity IDs to treatment keys. Each entry assigns the specified entity to the specified treatment, bypassing random assignment.</p>
    #   @return [Hash<String, String>]
    class TreatmentOverrides < Struct.new(
      :inline,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Inline < TreatmentOverrides; end
      class Unknown < TreatmentOverrides; end
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to delete.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deletion_protection
    #   <p>A parameter to configure deletion protection. Deletion protection prevents a user from
    #            deleting a configuration profile or an environment if AppConfig has called either
    #               <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  for the
    #            configuration profile or from the environment during the specified interval. The default
    #            interval for <code>ProtectionPeriodInMinutes</code> is 60.</p>
    #   @return [Types::DeletionProtectionSettings]
    # @!attribute vended_metrics
    #   <p>The configuration for vended metrics in the account.</p>
    #   @return [Types::VendedMetricsSettings]
    class UpdateAccountSettingsOutput < Struct.new(
      nil,
      :deletion_protection,
      :vended_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deletion_protection
    #   <p>A parameter to configure deletion protection. Deletion protection prevents a user from
    #            deleting a configuration profile or an environment if AppConfig has called either
    #               <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  for the
    #            configuration profile or from the environment during the specified interval. The default
    #            interval for <code>ProtectionPeriodInMinutes</code> is 60.</p>
    #   @return [Types::DeletionProtectionSettings]
    # @!attribute vended_metrics
    #   <p>The configuration for vended metrics in the account.</p>
    #   @return [Types::VendedMetricsSettings]
    class UpdateAccountSettingsRequest < Struct.new(
      nil,
      :deletion_protection,
      :vended_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    class UpdateApplicationOutput < Struct.new(
      nil,
      :id,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the application.</p>
    #   @return [String]
    class UpdateApplicationRequest < Struct.new(
      nil,
      :application_id,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The configuration profile description.</p>
    #   @return [String]
    # @!attribute location_uri
    #   <p>The URI location of the configuration.</p>
    #   @return [String]
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #   @return [String]
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #   @return [Array<Types::Validator>]
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports
    #               <code>feature flags</code> and <code>freeform</code> configurations. We recommend you
    #            create feature flag configurations to enable or disable new features and freeform
    #            configurations to distribute configurations to an application. When calling this API, enter
    #            one of the following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name of the Key Management Service key to encrypt new configuration
    #            data versions in the AppConfig hosted configuration store. This attribute is only
    #            used for <code>hosted</code> configuration types. To encrypt data managed in other
    #            configuration stores, see the documentation for how to specify an KMS key
    #            for that particular service.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when
    #            the resource was created or updated.</p>
    #   @return [String]
    class UpdateConfigurationProfileOutput < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators,
      :type,
      :kms_key_arn,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the configuration profile.</p>
    #   @return [String]
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #            <important>
    #               <p>A retrieval role ARN is not required for configurations stored in CodePipeline or the AppConfig hosted configuration store. It is required for all other sources that
    #               store your configuration. </p>
    #            </important>
    #   @return [String]
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #   @return [Array<Types::Validator>]
    # @!attribute kms_key_identifier
    #   <p>The identifier for a Key Management Service key to encrypt new configuration data
    #            versions in the AppConfig hosted configuration store. This attribute is only used
    #            for <code>hosted</code> configuration types. The identifier can be an KMS
    #            key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias. To encrypt data
    #            managed in other configuration stores, see the documentation for how to specify an KMS key for that particular service.</p>
    #   @return [String]
    class UpdateConfigurationProfileRequest < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :name,
      :description,
      :retrieval_role_arn,
      :validators,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The deployment strategy ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deployment strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment strategy.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #   @return [Integer]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #   @return [String]
    # @!attribute growth_factor
    #   <p>The percentage of targets that received a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    #   @return [Integer]
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #   @return [String]
    class UpdateDeploymentStrategyOutput < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :replicate_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deployment_duration_in_minutes] = 0 unless options.key?(:deployment_duration_in_minutes)
        options[:final_bake_time_in_minutes] = 0 unless options.key?(:final_bake_time_in_minutes)
        super
      end
    end

    # @!attribute deployment_strategy_id
    #   <p>The deployment strategy ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the deployment strategy.</p>
    #   @return [String]
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time for a deployment to last.</p>
    #   @return [Integer]
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitors for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    #   @return [Integer]
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #   @return [Float]
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grows over time. AppConfig
    #            supports the following growth types:</p>
    #            <p>
    #               <b>Linear</b>: For this type, AppConfig processes
    #            the deployment by increments of the growth factor evenly distributed over the deployment
    #            time. For example, a linear deployment that uses a growth factor of 20 initially makes the
    #            configuration available to 20 percent of the targets. After 1/5th of the deployment time
    #            has passed, the system updates the percentage to 40 percent. This continues until 100% of
    #            the targets are set to receive the deployed configuration.</p>
    #            <p>
    #               <b>Exponential</b>: For this type, AppConfig
    #            processes the deployment exponentially using the following formula: <code>G*(2^N)</code>.
    #            In this formula, <code>G</code> is the growth factor specified by the user and
    #               <code>N</code> is the number of steps until the configuration is deployed to all
    #            targets. For example, if you specify a growth factor of 2, then the system rolls out the
    #            configuration as follows:</p>
    #            <p>
    #               <code>2*(2^0)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^1)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^2)</code>
    #            </p>
    #            <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
    #            targets, 8% of the targets, and continues until the configuration has been deployed to all
    #            targets.</p>
    #   @return [String]
    class UpdateDeploymentStrategyRequest < Struct.new(
      nil,
      :deployment_strategy_id,
      :description,
      :deployment_duration_in_minutes,
      :final_bake_time_in_minutes,
      :growth_factor,
      :growth_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the environment. An environment can be in one of the following states:
    #               <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or
    #               <code>ROLLED_BACK</code>
    #            </p>
    #   @return [String]
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms monitored during the deployment.</p>
    #   @return [Array<Types::Monitor>]
    class UpdateEnvironmentOutput < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :description,
      :state,
      :monitors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment.</p>
    #   @return [String]
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    #   @return [Array<Types::Monitor>]
    class UpdateEnvironmentRequest < Struct.new(
      nil,
      :application_id,
      :environment_id,
      :name,
      :description,
      :monitors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an experiment definition, including the target audience, feature flag, treatments, and current status.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the experiment definition.</p>
    #   @return [String]
    # @!attribute hypothesis
    #   <p>The hypothesis that the experiment is designed to validate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the experiment definition. Valid values: <code>ACTIVE</code>, <code>IDLE</code>, <code>ARCHIVED</code>.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID associated with the experiment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID where the experiment runs.</p>
    #   @return [String]
    # @!attribute flag_key
    #   <p>The key of the feature flag used by the experiment.</p>
    #   @return [String]
    # @!attribute audience_rule
    #   <p>The rule that defines which users are eligible to be assigned to treatments.</p>
    #   @return [String]
    # @!attribute audience_description
    #   <p>A description of the intended audience for the experiment.</p>
    #   @return [String]
    # @!attribute launch_criteria
    #   <p>The conditions under which the winning treatment should be launched.</p>
    #   @return [String]
    # @!attribute treatments
    #   <p>The list of treatments defined for the experiment.</p>
    #   @return [Array<Types::Treatment>]
    # @!attribute control
    #   <p>The control treatment used as the baseline for comparison.</p>
    #   @return [Types::Treatment]
    # @!attribute created_at
    #   <p>The date and time the experiment definition was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the experiment definition was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute kms_key_identifier
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt experiment data.</p>
    #   @return [String]
    class UpdateExperimentDefinitionOutput < Struct.new(
      nil,
      :application_id,
      :id,
      :name,
      :hypothesis,
      :status,
      :configuration_profile_id,
      :environment_id,
      :flag_key,
      :audience_rule,
      :audience_description,
      :launch_criteria,
      :treatments,
      :control,
      :created_at,
      :updated_at,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute experiment_definition_identifier
    #   <p>The experiment definition ID or name.</p>
    #   @return [String]
    # @!attribute treatments
    #   <p>The updated list of treatments to evaluate during the experiment. Each treatment defines a distinct variation compared to the control.</p>
    #   @return [Array<Types::TreatmentInput>]
    # @!attribute control
    #   <p>An updated control treatment.</p>
    #   @return [Types::TreatmentInput]
    # @!attribute hypothesis
    #   <p>An updated hypothesis.</p>
    #   @return [String]
    # @!attribute audience_rule
    #   <p>An updated audience rule.</p>
    #   @return [String]
    # @!attribute audience_description
    #   <p>An updated audience description.</p>
    #   @return [String]
    # @!attribute launch_criteria
    #   <p>Updated launch criteria.</p>
    #   @return [String]
    class UpdateExperimentDefinitionRequest < Struct.new(
      nil,
      :application_identifier,
      :experiment_definition_identifier,
      :treatments,
      :control,
      :hypothesis,
      :audience_rule,
      :audience_description,
      :launch_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an experiment run, including its status, exposure settings, and treatment overrides.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute experiment_definition_id
    #   <p>The experiment definition ID.</p>
    #   @return [String]
    # @!attribute run
    #   <p>The experiment run number.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the experiment run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the experiment run. Valid values: <code>RUNNING</code>, <code>DONE</code>.</p>
    #   @return [String]
    # @!attribute exposure_percentage
    #   <p>The percentage of the target audience exposed to treatments.</p>
    #   @return [Float]
    # @!attribute treatment_overrides
    #   <p>Treatment assignment overrides that assign specific entity IDs to treatments.</p>
    #   @return [Types::TreatmentOverrides]
    # @!attribute result
    #   <p>The result of the experiment run, including the executive summary and launch decision rationale.</p>
    #   @return [Types::ExperimentRunResult]
    # @!attribute started_at
    #   <p>The date and time the experiment run started, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the experiment run was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the experiment run ended, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute experiment_definition_snapshot
    #   <p>A snapshot of the experiment definition at the time the run was started.</p>
    #   @return [Types::ExperimentDefinitionSnapshot]
    class UpdateExperimentRunOutput < Struct.new(
      nil,
      :application_id,
      :experiment_definition_id,
      :run,
      :description,
      :status,
      :exposure_percentage,
      :treatment_overrides,
      :result,
      :started_at,
      :updated_at,
      :ended_at,
      :experiment_definition_snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run] = 0 unless options.key?(:run)
        super
      end
    end

    # @!attribute application_identifier
    #   <p>The application ID or name.</p>
    #   @return [String]
    # @!attribute experiment_definition_identifier
    #   <p>The experiment definition ID or name.</p>
    #   @return [String]
    # @!attribute run
    #   <p>The run number to update.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>An updated description for the experiment run.</p>
    #   @return [String]
    # @!attribute exposure_percentage
    #   <p>The new exposure percentage. This value can only be increased from the current setting.</p>
    #   @return [Float]
    # @!attribute treatment_overrides
    #   <p>The updated treatment assignment overrides that assign specific entity IDs to treatments, bypassing random assignment.</p>
    #   @return [Types::TreatmentOverrides]
    # @!attribute deployment_parameters
    #   <p>The updated deployment parameters for the experiment run.</p>
    #   @return [Types::DeploymentParameters]
    class UpdateExperimentRunRequest < Struct.new(
      nil,
      :application_identifier,
      :experiment_definition_identifier,
      :run,
      :description,
      :exposure_percentage,
      :treatment_overrides,
      :deployment_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The system-generated ID for the association.</p>
    #   @return [String]
    # @!attribute extension_arn
    #   <p>The ARN of the extension defined in the association.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARNs of applications, configuration profiles, or environments defined in the
    #            association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The system-generated Amazon Resource Name (ARN) for the extension.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameter names and values defined in the association.</p>
    #   @return [Hash<String, String>]
    # @!attribute extension_version_number
    #   <p>The version number for the extension defined in the association.</p>
    #   @return [Integer]
    class UpdateExtensionAssociationOutput < Struct.new(
      nil,
      :id,
      :extension_arn,
      :resource_arn,
      :arn,
      :parameters,
      :extension_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:extension_version_number] = 0 unless options.key?(:extension_version_number)
        super
      end
    end

    # @!attribute extension_association_id
    #   <p>The system-generated ID for the association.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameter names and values defined in the extension.</p>
    #   @return [Hash<String, String>]
    class UpdateExtensionAssociationRequest < Struct.new(
      nil,
      :extension_association_id,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The system-generated ID of the extension.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The extension name.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The extension version number.</p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>The system-generated Amazon Resource Name (ARN) for the extension.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the extension.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions defined in the extension.</p>
    #   @return [Hash<String, Array<Types::Action>>]
    # @!attribute parameters
    #   <p>The parameters accepted by the extension. You specify parameter values when you
    #            associate the extension to an AppConfig resource by using the
    #               <code>CreateExtensionAssociation</code> API action. For Lambda extension
    #            actions, these parameters are included in the Lambda request object.</p>
    #   @return [Hash<String, Types::Parameter>]
    class UpdateExtensionOutput < Struct.new(
      nil,
      :id,
      :name,
      :version_number,
      :arn,
      :description,
      :actions,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # @!attribute extension_identifier
    #   <p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the extension.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions defined in the extension.</p>
    #   @return [Hash<String, Array<Types::Action>>]
    # @!attribute parameters
    #   <p>One or more parameters for the actions called by the extension.</p>
    #   @return [Hash<String, Types::Parameter>]
    # @!attribute version_number
    #   <p>The extension version number.</p>
    #   @return [Integer]
    class UpdateExtensionRequest < Struct.new(
      nil,
      :extension_identifier,
      :description,
      :actions,
      :parameters,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #   @return [String]
    # @!attribute configuration_version
    #   <p>The version of the configuration to validate.</p>
    #   @return [String]
    class ValidateConfigurationRequest < Struct.new(
      nil,
      :application_id,
      :configuration_profile_id,
      :configuration_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A validator provides a syntactic or semantic check to ensure the configuration that you
    #          want to deploy functions as intended. To validate your application configuration data, you
    #          provide a schema or an Amazon Web Services Lambda function that runs against the configuration. The
    #          configuration deployment or update can only proceed when the configuration data is valid.
    #          For more information, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-profile.html#appconfig-creating-configuration-and-profile-validators">About validators</a> in the <i>AppConfig User Guide</i>.</p>
    # @!attribute type
    #   <p>AppConfig supports validators of type <code>JSON_SCHEMA</code> and
    #               <code>LAMBDA</code>
    #            </p>
    #   @return [String]
    # @!attribute content
    #   <p>Either the JSON Schema content or the Amazon Resource Name (ARN) of an Lambda
    #            function.</p>
    #   @return [String]
    class Validator < Struct.new(
      nil,
      :type,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for vended metrics in your AppConfig account.</p>
    # @!attribute enabled
    #   <p>Specifies whether vended metrics are enabled for the account.</p>
    #   @return [Boolean]
    class VendedMetricsSettings < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = nil unless options.key?(:enabled)
        super
      end
    end

  end
end
