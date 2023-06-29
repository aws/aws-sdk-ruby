# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodePipeline
  module Types

    # Represents an Amazon Web Services session credentials object. These
    # credentials are temporary credentials that are issued by Amazon Web
    # Services Secure Token Service (STS). They can be used to access input
    # and output artifacts in the S3 bucket used to store artifact for the
    # pipeline in CodePipeline.
    #
    # @!attribute [rw] access_key_id
    #   The access key for the session.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret access key for the session.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The token for the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/AWSSessionCredentials AWS API Documentation
    #
    class AWSSessionCredentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token)
      SENSITIVE = [:access_key_id, :secret_access_key, :session_token]
      include Aws::Structure
    end

    # Represents the input of an AcknowledgeJob action.
    #
    # @!attribute [rw] job_id
    #   The unique system-generated ID of the job for which you want to
    #   confirm receipt.
    #   @return [String]
    #
    # @!attribute [rw] nonce
    #   A system-generated random number that CodePipeline uses to ensure
    #   that the job is being worked on by only one job worker. Get this
    #   number from the response of the PollForJobs request that returned
    #   this job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/AcknowledgeJobInput AWS API Documentation
    #
    class AcknowledgeJobInput < Struct.new(
      :job_id,
      :nonce)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of an AcknowledgeJob action.
    #
    # @!attribute [rw] status
    #   Whether the job worker has received the specified job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/AcknowledgeJobOutput AWS API Documentation
    #
    class AcknowledgeJobOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of an AcknowledgeThirdPartyJob action.
    #
    # @!attribute [rw] job_id
    #   The unique system-generated ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] nonce
    #   A system-generated random number that CodePipeline uses to ensure
    #   that the job is being worked on by only one job worker. Get this
    #   number from the response to a GetThirdPartyJobDetails request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The clientToken portion of the clientId and clientToken pair used to
    #   verify that the calling entity is allowed access to the job and its
    #   details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/AcknowledgeThirdPartyJobInput AWS API Documentation
    #
    class AcknowledgeThirdPartyJobInput < Struct.new(
      :job_id,
      :nonce,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of an AcknowledgeThirdPartyJob action.
    #
    # @!attribute [rw] status
    #   The status information for the third party job, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/AcknowledgeThirdPartyJobOutput AWS API Documentation
    #
    class AcknowledgeThirdPartyJobOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about an action configuration.
    #
    # @!attribute [rw] configuration
    #   The configuration data for the action.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionConfiguration AWS API Documentation
    #
    class ActionConfiguration < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about an action configuration property.
    #
    # @!attribute [rw] name
    #   The name of the action configuration property.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Whether the configuration property is a required value.
    #   @return [Boolean]
    #
    # @!attribute [rw] key
    #   Whether the configuration property is a key.
    #   @return [Boolean]
    #
    # @!attribute [rw] secret
    #   Whether the configuration property is secret. Secrets are hidden
    #   from all calls except for `GetJobDetails`,
    #   `GetThirdPartyJobDetails`, `PollForJobs`, and
    #   `PollForThirdPartyJobs`.
    #
    #   When updating a pipeline, passing * * * * * without changing
    #   any other values of the action preserves the previous value of the
    #   secret.
    #   @return [Boolean]
    #
    # @!attribute [rw] queryable
    #   Indicates that the property is used with `PollForJobs`. When
    #   creating a custom action, an action can have up to one queryable
    #   property. If it has one, that property must be both required and not
    #   secret.
    #
    #   If you create a pipeline with a custom action type, and that custom
    #   action contains a queryable property, the value for that
    #   configuration property is subject to other restrictions. The value
    #   must be less than or equal to twenty (20) characters. The value can
    #   contain only alphanumeric characters, underscores, and hyphens.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the action configuration property that is
    #   displayed to users.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the configuration property.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionConfigurationProperty AWS API Documentation
    #
    class ActionConfigurationProperty < Struct.new(
      :name,
      :required,
      :key,
      :secret,
      :queryable,
      :description,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the context of an action in the stage of a pipeline to a
    # job worker.
    #
    # @!attribute [rw] name
    #   The name of the action in the context of a job.
    #   @return [String]
    #
    # @!attribute [rw] action_execution_id
    #   The system-generated unique ID that corresponds to an action's
    #   execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionContext AWS API Documentation
    #
    class ActionContext < Struct.new(
      :name,
      :action_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about an action declaration.
    #
    # @!attribute [rw] name
    #   The action declaration's name.
    #   @return [String]
    #
    # @!attribute [rw] action_type_id
    #   Specifies the action type and the provider of the action.
    #   @return [Types::ActionTypeId]
    #
    # @!attribute [rw] run_order
    #   The order in which actions are run.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   The action's configuration. These are key-value pairs that specify
    #   input values for an action. For more information, see [Action
    #   Structure Requirements in CodePipeline][1]. For the list of
    #   configuration properties for the CloudFormation action type in
    #   CodePipeline, see [Configuration Properties Reference][2] in the
    #   *CloudFormation User Guide*. For template snippets with examples,
    #   see [Using Parameter Override Functions with CodePipeline
    #   Pipelines][3] in the *CloudFormation User Guide*.
    #
    #   The values can be represented in either JSON or YAML format. For
    #   example, the JSON configuration item format is as follows:
    #
    #   *JSON:*
    #
    #   `"Configuration" : \{ Key : Value \},`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-action-reference.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-parameter-override-functions.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_artifacts
    #   The name or ID of the result of the action declaration, such as a
    #   test or build artifact.
    #   @return [Array<Types::OutputArtifact>]
    #
    # @!attribute [rw] input_artifacts
    #   The name or ID of the artifact consumed by the action, such as a
    #   test or build artifact.
    #   @return [Array<Types::InputArtifact>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM service role that performs the declared action.
    #   This is assumed through the roleArn for the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The action declaration's Amazon Web Services Region, such as
    #   us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The variable namespace associated with the action. All variables
    #   produced as output by this action fall under this namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionDeclaration AWS API Documentation
    #
    class ActionDeclaration < Struct.new(
      :name,
      :action_type_id,
      :run_order,
      :configuration,
      :output_artifacts,
      :input_artifacts,
      :role_arn,
      :region,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about the run of an action.
    #
    # @!attribute [rw] action_execution_id
    #   ID of the workflow action execution in the current stage. Use the
    #   GetPipelineState action to retrieve the current action execution
    #   details of the current stage.
    #
    #   <note markdown="1"> For older executions, this field might be empty. The action
    #   execution ID is available for executions run on or after March 2020.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the action, or for a completed action, the last status
    #   of the action.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   A summary of the run of the action.
    #   @return [String]
    #
    # @!attribute [rw] last_status_change
    #   The last status change of the action.
    #   @return [Time]
    #
    # @!attribute [rw] token
    #   The system-generated token used to identify a unique approval
    #   request. The token for each open approval request can be obtained
    #   using the `GetPipelineState` command. It is used to validate that
    #   the approval request corresponding to this token is still valid.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   The ARN of the user who last changed the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] external_execution_id
    #   The external ID of the run of the action.
    #   @return [String]
    #
    # @!attribute [rw] external_execution_url
    #   The URL of a resource external to Amazon Web Services that is used
    #   when running the action (for example, an external repository URL).
    #   @return [String]
    #
    # @!attribute [rw] percent_complete
    #   A percentage of completeness of the action as it runs.
    #   @return [Integer]
    #
    # @!attribute [rw] error_details
    #   The details of an error returned by a URL external to Amazon Web
    #   Services.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionExecution AWS API Documentation
    #
    class ActionExecution < Struct.new(
      :action_execution_id,
      :status,
      :summary,
      :last_status_change,
      :token,
      :last_updated_by,
      :external_execution_id,
      :external_execution_url,
      :percent_complete,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an execution of an action, including the
    # action execution ID, and the name, version, and timing of the action.
    #
    # @!attribute [rw] pipeline_execution_id
    #   The pipeline execution ID for the action execution.
    #   @return [String]
    #
    # @!attribute [rw] action_execution_id
    #   The action execution ID.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_version
    #   The version of the pipeline where the action was run.
    #   @return [Integer]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage that contains the action.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   The name of the action.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the action execution.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last update time of the action execution.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the action execution. Status categories are
    #   `InProgress`, `Succeeded`, and `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Input details for the action execution, such as role ARN, Region,
    #   and input artifacts.
    #   @return [Types::ActionExecutionInput]
    #
    # @!attribute [rw] output
    #   Output details for the action execution, such as the action
    #   execution result.
    #   @return [Types::ActionExecutionOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionExecutionDetail AWS API Documentation
    #
    class ActionExecutionDetail < Struct.new(
      :pipeline_execution_id,
      :action_execution_id,
      :pipeline_version,
      :stage_name,
      :action_name,
      :start_time,
      :last_update_time,
      :status,
      :input,
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter values for the action execution.
    #
    # @!attribute [rw] pipeline_execution_id
    #   The pipeline execution ID used to filter action execution history.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionExecutionFilter AWS API Documentation
    #
    class ActionExecutionFilter < Struct.new(
      :pipeline_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input information used for an action execution.
    #
    # @!attribute [rw] action_type_id
    #   Represents information about an action type.
    #   @return [Types::ActionTypeId]
    #
    # @!attribute [rw] configuration
    #   Configuration data for an action execution.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resolved_configuration
    #   Configuration data for an action execution with all variable
    #   references replaced with their real values for the execution.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM service role that performs the declared action.
    #   This is assumed through the roleArn for the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region for the action, such as us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] input_artifacts
    #   Details of input artifacts of the action that correspond to the
    #   action execution.
    #   @return [Array<Types::ArtifactDetail>]
    #
    # @!attribute [rw] namespace
    #   The variable namespace associated with the action. All variables
    #   produced as output by this action fall under this namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionExecutionInput AWS API Documentation
    #
    class ActionExecutionInput < Struct.new(
      :action_type_id,
      :configuration,
      :resolved_configuration,
      :role_arn,
      :region,
      :input_artifacts,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output details listed for an action execution, such as the action
    # execution result.
    #
    # @!attribute [rw] output_artifacts
    #   Details of output artifacts of the action that correspond to the
    #   action execution.
    #   @return [Array<Types::ArtifactDetail>]
    #
    # @!attribute [rw] execution_result
    #   Execution result information listed in the output details for an
    #   action execution.
    #   @return [Types::ActionExecutionResult]
    #
    # @!attribute [rw] output_variables
    #   The outputVariables field shows the key-value pairs that were output
    #   as part of that execution.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionExecutionOutput AWS API Documentation
    #
    class ActionExecutionOutput < Struct.new(
      :output_artifacts,
      :execution_result,
      :output_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # Execution result information, such as the external execution ID.
    #
    # @!attribute [rw] external_execution_id
    #   The action provider's external ID for the action execution.
    #   @return [String]
    #
    # @!attribute [rw] external_execution_summary
    #   The action provider's summary for the action execution.
    #   @return [String]
    #
    # @!attribute [rw] external_execution_url
    #   The deepest external link to the external resource (for example, a
    #   repository URL or deployment endpoint) that is used when running the
    #   action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionExecutionResult AWS API Documentation
    #
    class ActionExecutionResult < Struct.new(
      :external_execution_id,
      :external_execution_summary,
      :external_execution_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified action cannot be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionNotFoundException AWS API Documentation
    #
    class ActionNotFoundException < Aws::EmptyStructure; end

    # Represents information about the version (or revision) of an action.
    #
    # @!attribute [rw] revision_id
    #   The system-generated unique ID that identifies the revision number
    #   of the action.
    #   @return [String]
    #
    # @!attribute [rw] revision_change_id
    #   The unique identifier of the change that set the state to this
    #   revision (for example, a deployment ID or timestamp).
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The date and time when the most recent version of the action was
    #   created, in timestamp format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionRevision AWS API Documentation
    #
    class ActionRevision < Struct.new(
      :revision_id,
      :revision_change_id,
      :created)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about the state of an action.
    #
    # @!attribute [rw] action_name
    #   The name of the action.
    #   @return [String]
    #
    # @!attribute [rw] current_revision
    #   Represents information about the version (or revision) of an action.
    #   @return [Types::ActionRevision]
    #
    # @!attribute [rw] latest_execution
    #   Represents information about the run of an action.
    #   @return [Types::ActionExecution]
    #
    # @!attribute [rw] entity_url
    #   A URL link for more information about the state of the action, such
    #   as a deployment group details page.
    #   @return [String]
    #
    # @!attribute [rw] revision_url
    #   A URL link for more information about the revision, such as a commit
    #   details page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionState AWS API Documentation
    #
    class ActionState < Struct.new(
      :action_name,
      :current_revision,
      :latest_execution,
      :entity_url,
      :revision_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the details of an action type.
    #
    # @!attribute [rw] id
    #   Represents information about an action type.
    #   @return [Types::ActionTypeId]
    #
    # @!attribute [rw] settings
    #   The settings for the action type.
    #   @return [Types::ActionTypeSettings]
    #
    # @!attribute [rw] action_configuration_properties
    #   The configuration properties for the action type.
    #   @return [Array<Types::ActionConfigurationProperty>]
    #
    # @!attribute [rw] input_artifact_details
    #   The details of the input artifact for the action, such as its commit
    #   ID.
    #   @return [Types::ArtifactDetails]
    #
    # @!attribute [rw] output_artifact_details
    #   The details of the output artifact of the action, such as its commit
    #   ID.
    #   @return [Types::ArtifactDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionType AWS API Documentation
    #
    class ActionType < Struct.new(
      :id,
      :settings,
      :action_configuration_properties,
      :input_artifact_details,
      :output_artifact_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified action type already exists with a different definition.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeAlreadyExistsException AWS API Documentation
    #
    class ActionTypeAlreadyExistsException < Aws::EmptyStructure; end

    # Information about parameters for artifacts associated with the action
    # type, such as the minimum and maximum artifacts allowed.
    #
    # @!attribute [rw] minimum_count
    #   The minimum number of artifacts that can be used with the action
    #   type. For example, you should specify a minimum and maximum of zero
    #   input artifacts for an action type with a category of `source`.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_count
    #   The maximum number of artifacts that can be used with the
    #   actiontype. For example, you should specify a minimum and maximum of
    #   zero input artifacts for an action type with a category of `source`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeArtifactDetails AWS API Documentation
    #
    class ActionTypeArtifactDetails < Struct.new(
      :minimum_count,
      :maximum_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for the action type definition that are provided when
    # the action type is created or updated.
    #
    # @!attribute [rw] description
    #   The description for the action type to be updated.
    #   @return [String]
    #
    # @!attribute [rw] executor
    #   Information about the executor for an action type that was created
    #   with any supported integration model.
    #   @return [Types::ActionTypeExecutor]
    #
    # @!attribute [rw] id
    #   The action category, owner, provider, and version of the action type
    #   to be updated.
    #   @return [Types::ActionTypeIdentifier]
    #
    # @!attribute [rw] input_artifact_details
    #   Details for the artifacts, such as application files, to be worked
    #   on by the action. For example, the minimum and maximum number of
    #   input artifacts allowed.
    #   @return [Types::ActionTypeArtifactDetails]
    #
    # @!attribute [rw] output_artifact_details
    #   Details for the output artifacts, such as a built application, that
    #   are the result of the action. For example, the minimum and maximum
    #   number of output artifacts allowed.
    #   @return [Types::ActionTypeArtifactDetails]
    #
    # @!attribute [rw] permissions
    #   Details identifying the accounts with permissions to use the action
    #   type.
    #   @return [Types::ActionTypePermissions]
    #
    # @!attribute [rw] properties
    #   The properties of the action type to be updated.
    #   @return [Array<Types::ActionTypeProperty>]
    #
    # @!attribute [rw] urls
    #   The links associated with the action type to be updated.
    #   @return [Types::ActionTypeUrls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeDeclaration AWS API Documentation
    #
    class ActionTypeDeclaration < Struct.new(
      :description,
      :executor,
      :id,
      :input_artifact_details,
      :output_artifact_details,
      :permissions,
      :properties,
      :urls)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action engine, or executor, for an action type created for a
    # provider, where the action is to be used by customers of the provider.
    # The action engine is associated with the model used to create and
    # update the action, such as the Lambda integration model.
    #
    # @!attribute [rw] configuration
    #   The action configuration properties for the action type. These
    #   properties are specified in the action definition when the action
    #   type is created.
    #   @return [Types::ExecutorConfiguration]
    #
    # @!attribute [rw] type
    #   The integration model used to create and update the action type,
    #   `Lambda` or `JobWorker`.
    #   @return [String]
    #
    # @!attribute [rw] policy_statements_template
    #   The policy statement that specifies the permissions in the
    #   CodePipeline customer account that are needed to successfully run an
    #   action.
    #
    #   To grant permission to another account, specify the account ID as
    #   the Principal, a domain-style identifier defined by the service, for
    #   example `codepipeline.amazonaws.com`.
    #
    #   <note markdown="1"> The size of the passed JSON policy document cannot exceed 2048
    #   characters.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] job_timeout
    #   The timeout in seconds for the job. An action execution can have
    #   multiple jobs. This is the timeout for a single job, not the entire
    #   action execution.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeExecutor AWS API Documentation
    #
    class ActionTypeExecutor < Struct.new(
      :configuration,
      :type,
      :policy_statements_template,
      :job_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about an action type.
    #
    # @!attribute [rw] category
    #   A category defines what kind of action can be taken in the stage,
    #   and constrains the provider type for the action. Valid categories
    #   are limited to one of the following values.
    #
    #   * Source
    #
    #   * Build
    #
    #   * Test
    #
    #   * Deploy
    #
    #   * Invoke
    #
    #   * Approval
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The creator of the action being called. There are three valid values
    #   for the `Owner` field in the action category section within your
    #   pipeline structure: `AWS`, `ThirdParty`, and `Custom`. For more
    #   information, see [Valid Action Types and Providers in
    #   CodePipeline][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#actions-valid-providers
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the service being called by the action. Valid
    #   providers are determined by the action category. For example, an
    #   action in the Deploy category type might have a provider of
    #   CodeDeploy, which would be specified as `CodeDeploy`. For more
    #   information, see [Valid Action Types and Providers in
    #   CodePipeline][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#actions-valid-providers
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A string that describes the action version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeId AWS API Documentation
    #
    class ActionTypeId < Struct.new(
      :category,
      :owner,
      :provider,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the category, owner, provider, and version of the action
    # type.
    #
    # @!attribute [rw] category
    #   Defines what kind of action can be taken in the stage, one of the
    #   following:
    #
    #   * `Source`
    #
    #   * `Build`
    #
    #   * `Test`
    #
    #   * `Deploy`
    #
    #   * `Approval`
    #
    #   * `Invoke`
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The creator of the action type being called: `AWS` or `ThirdParty`.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the action type being called. The provider name is
    #   supplied when the action type is created.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A string that describes the action type version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeIdentifier AWS API Documentation
    #
    class ActionTypeIdentifier < Struct.new(
      :category,
      :owner,
      :provider,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified action type cannot be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeNotFoundException AWS API Documentation
    #
    class ActionTypeNotFoundException < Aws::EmptyStructure; end

    # Details identifying the users with permissions to use the action type.
    #
    # @!attribute [rw] allowed_accounts
    #   A list of Amazon Web Services account IDs with access to use the
    #   action type in their pipelines.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypePermissions AWS API Documentation
    #
    class ActionTypePermissions < Struct.new(
      :allowed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about each property specified in the action
    # configuration, such as the description and key name that display for
    # the customer using the action type.
    #
    # @!attribute [rw] name
    #   The property name that is displayed to users.
    #   @return [String]
    #
    # @!attribute [rw] optional
    #   Whether the configuration property is an optional value.
    #   @return [Boolean]
    #
    # @!attribute [rw] key
    #   Whether the configuration property is a key.
    #   @return [Boolean]
    #
    # @!attribute [rw] no_echo
    #   Whether to omit the field value entered by the customer in the log.
    #   If `true`, the value is not saved in CloudTrail logs for the action
    #   execution.
    #   @return [Boolean]
    #
    # @!attribute [rw] queryable
    #   Indicates that the property is used with polling. An action type can
    #   have up to one queryable property. If it has one, that property must
    #   be both required and not secret.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the property that is displayed to users.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeProperty AWS API Documentation
    #
    class ActionTypeProperty < Struct.new(
      :name,
      :optional,
      :key,
      :no_echo,
      :queryable,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the settings for an action type.
    #
    # @!attribute [rw] third_party_configuration_url
    #   The URL of a sign-up page where users can sign up for an external
    #   service and perform initial configuration of the action provided by
    #   that service.
    #   @return [String]
    #
    # @!attribute [rw] entity_url_template
    #   The URL returned to the CodePipeline console that provides a deep
    #   link to the resources of the external system, such as the
    #   configuration page for a CodeDeploy deployment group. This link is
    #   provided as part of the action display in the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] execution_url_template
    #   The URL returned to the CodePipeline console that contains a link to
    #   the top-level landing page for the external system, such as the
    #   console page for CodeDeploy. This link is shown on the pipeline view
    #   page in the CodePipeline console and provides a link to the
    #   execution entity of the external action.
    #   @return [String]
    #
    # @!attribute [rw] revision_url_template
    #   The URL returned to the CodePipeline console that contains a link to
    #   the page where customers can update or change the configuration of
    #   the external action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeSettings AWS API Documentation
    #
    class ActionTypeSettings < Struct.new(
      :third_party_configuration_url,
      :entity_url_template,
      :execution_url_template,
      :revision_url_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about URLs for web pages that display to customers
    # as links on the pipeline view, such as an external configuration page
    # for the action type.
    #
    # @!attribute [rw] configuration_url
    #   The URL returned to the CodePipeline console that contains a link to
    #   the page where customers can configure the external action.
    #   @return [String]
    #
    # @!attribute [rw] entity_url_template
    #   The URL returned to the CodePipeline console that provides a deep
    #   link to the resources of the external system, such as a status page.
    #   This link is provided as part of the action display in the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] execution_url_template
    #   The link to an execution page for the action type in progress. For
    #   example, for a CodeDeploy action, this link is shown on the pipeline
    #   view page in the CodePipeline console, and it links to a CodeDeploy
    #   status page.
    #   @return [String]
    #
    # @!attribute [rw] revision_url_template
    #   The URL returned to the CodePipeline console that contains a link to
    #   the page where customers can update or change the configuration of
    #   the external action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ActionTypeUrls AWS API Documentation
    #
    class ActionTypeUrls < Struct.new(
      :configuration_url,
      :entity_url_template,
      :execution_url_template,
      :revision_url_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The approval action has already been approved or rejected.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ApprovalAlreadyCompletedException AWS API Documentation
    #
    class ApprovalAlreadyCompletedException < Aws::EmptyStructure; end

    # Represents information about the result of an approval request.
    #
    # @!attribute [rw] summary
    #   The summary of the current status of the approval request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The response submitted by a reviewer assigned to an approval action
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ApprovalResult AWS API Documentation
    #
    class ApprovalResult < Struct.new(
      :summary,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Artifacts are the files that are worked on by actions in the pipeline.
    # See the action configuration for each action for details about
    # artifact parameters. For example, the S3 source action artifact is a
    # file name (or file path), and the files are generally provided as a
    # ZIP file. Example artifact name: SampleApp\_Windows.zip
    #
    # @!attribute [rw] name
    #   The artifact's name.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The artifact's revision ID. Depending on the type of object, this
    #   could be a commit ID (GitHub) or a revision ID (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of an artifact.
    #   @return [Types::ArtifactLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/Artifact AWS API Documentation
    #
    class Artifact < Struct.new(
      :name,
      :revision,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Artifact details for the action execution, such as the artifact
    # location.
    #
    # @!attribute [rw] name
    #   The artifact object name for the action execution.
    #   @return [String]
    #
    # @!attribute [rw] s3location
    #   The Amazon S3 artifact location for the action execution.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ArtifactDetail AWS API Documentation
    #
    class ArtifactDetail < Struct.new(
      :name,
      :s3location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the details of an artifact.
    #
    # @!attribute [rw] minimum_count
    #   The minimum number of artifacts allowed for the action type.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_count
    #   The maximum number of artifacts allowed for the action type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ArtifactDetails AWS API Documentation
    #
    class ArtifactDetails < Struct.new(
      :minimum_count,
      :maximum_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about the location of an artifact.
    #
    # @!attribute [rw] type
    #   The type of artifact in the location.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The S3 bucket that contains the artifact.
    #   @return [Types::S3ArtifactLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ArtifactLocation AWS API Documentation
    #
    class ArtifactLocation < Struct.new(
      :type,
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents revision details of an artifact.
    #
    # @!attribute [rw] name
    #   The name of an artifact. This name might be system-generated, such
    #   as "MyApp", or defined by the user when an action is created.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] revision_change_identifier
    #   An additional identifier for a revision, such as a commit date or,
    #   for artifacts stored in Amazon S3 buckets, the ETag value.
    #   @return [String]
    #
    # @!attribute [rw] revision_summary
    #   Summary information about the most recent revision of the artifact.
    #   For GitHub and CodeCommit repositories, the commit message. For
    #   Amazon S3 buckets or actions, the user-provided content of a
    #   `codepipeline-artifact-revision-summary` key specified in the object
    #   metadata.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The date and time when the most recent revision of the artifact was
    #   created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] revision_url
    #   The commit ID for the artifact revision. For artifacts stored in
    #   GitHub or CodeCommit repositories, the commit ID is linked to a
    #   commit details page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ArtifactRevision AWS API Documentation
    #
    class ArtifactRevision < Struct.new(
      :name,
      :revision_id,
      :revision_change_identifier,
      :revision_summary,
      :created,
      :revision_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 bucket where artifacts for the pipeline are stored.
    #
    # <note markdown="1"> You must include either `artifactStore` or `artifactStores` in your
    # pipeline, but you cannot use both. If you create a cross-region action
    # in your pipeline, you must use `artifactStores`.
    #
    #  </note>
    #
    # @!attribute [rw] type
    #   The type of the artifact store, such as S3.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The S3 bucket used for storing the artifacts for a pipeline. You can
    #   specify the name of an S3 bucket but not a folder in the bucket. A
    #   folder to contain the pipeline artifacts is created for you based on
    #   the name of the pipeline. You can use any S3 bucket in the same
    #   Amazon Web Services Region as the pipeline to store your pipeline
    #   artifacts.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key used to encrypt the data in the artifact store,
    #   such as an Amazon Web Services Key Management Service key. If this
    #   is undefined, the default key for Amazon S3 is used.
    #   @return [Types::EncryptionKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ArtifactStore AWS API Documentation
    #
    class ArtifactStore < Struct.new(
      :type,
      :location,
      :encryption_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved for future use.
    #
    # @!attribute [rw] name
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/BlockerDeclaration AWS API Documentation
    #
    class BlockerDeclaration < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to modify the tag due to a simultaneous update request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request cannot be handled because the pipeline is busy handling
    # ongoing activities. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a CreateCustomActionType operation.
    #
    # @!attribute [rw] category
    #   The category of the custom action, such as a build action or a test
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the service used in the custom action, such as
    #   CodeDeploy.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version identifier of the custom action.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   URLs that provide users information about this custom action.
    #   @return [Types::ActionTypeSettings]
    #
    # @!attribute [rw] configuration_properties
    #   The configuration properties for the custom action.
    #
    #   <note markdown="1"> You can refer to a name in the configuration properties of the
    #   custom action within the URL templates by following the format of
    #   \\\{Config:name\\}, as long as the configuration property is both
    #   required and not secret. For more information, see [Create a Custom
    #   Action for a Pipeline][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html
    #   @return [Array<Types::ActionConfigurationProperty>]
    #
    # @!attribute [rw] input_artifact_details
    #   The details of the input artifact for the action, such as its commit
    #   ID.
    #   @return [Types::ArtifactDetails]
    #
    # @!attribute [rw] output_artifact_details
    #   The details of the output artifact of the action, such as its commit
    #   ID.
    #   @return [Types::ArtifactDetails]
    #
    # @!attribute [rw] tags
    #   The tags for the custom action.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/CreateCustomActionTypeInput AWS API Documentation
    #
    class CreateCustomActionTypeInput < Struct.new(
      :category,
      :provider,
      :version,
      :settings,
      :configuration_properties,
      :input_artifact_details,
      :output_artifact_details,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateCustomActionType` operation.
    #
    # @!attribute [rw] action_type
    #   Returns information about the details of an action type.
    #   @return [Types::ActionType]
    #
    # @!attribute [rw] tags
    #   Specifies the tags applied to the custom action.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/CreateCustomActionTypeOutput AWS API Documentation
    #
    class CreateCustomActionTypeOutput < Struct.new(
      :action_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreatePipeline` action.
    #
    # @!attribute [rw] pipeline
    #   Represents the structure of actions and stages to be performed in
    #   the pipeline.
    #   @return [Types::PipelineDeclaration]
    #
    # @!attribute [rw] tags
    #   The tags for the pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/CreatePipelineInput AWS API Documentation
    #
    class CreatePipelineInput < Struct.new(
      :pipeline,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreatePipeline` action.
    #
    # @!attribute [rw] pipeline
    #   Represents the structure of actions and stages to be performed in
    #   the pipeline.
    #   @return [Types::PipelineDeclaration]
    #
    # @!attribute [rw] tags
    #   Specifies the tags applied to the pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/CreatePipelineOutput AWS API Documentation
    #
    class CreatePipelineOutput < Struct.new(
      :pipeline,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about a current revision.
    #
    # @!attribute [rw] revision
    #   The revision ID of the current version of an artifact.
    #   @return [String]
    #
    # @!attribute [rw] change_identifier
    #   The change identifier for the current revision.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The date and time when the most recent revision of the artifact was
    #   created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] revision_summary
    #   The summary of the most recent revision of the artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/CurrentRevision AWS API Documentation
    #
    class CurrentRevision < Struct.new(
      :revision,
      :change_identifier,
      :created,
      :revision_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteCustomActionType` operation. The
    # custom action will be marked as deleted.
    #
    # @!attribute [rw] category
    #   The category of the custom action that you want to delete, such as
    #   source or deploy.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the service used in the custom action, such as
    #   CodeDeploy.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the custom action to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeleteCustomActionTypeInput AWS API Documentation
    #
    class DeleteCustomActionTypeInput < Struct.new(
      :category,
      :provider,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeletePipeline` action.
    #
    # @!attribute [rw] name
    #   The name of the pipeline to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeletePipelineInput AWS API Documentation
    #
    class DeletePipelineInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the webhook you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeleteWebhookInput AWS API Documentation
    #
    class DeleteWebhookInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeleteWebhookOutput AWS API Documentation
    #
    class DeleteWebhookOutput < Aws::EmptyStructure; end

    # @!attribute [rw] webhook_name
    #   The name of the webhook you want to deregister.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeregisterWebhookWithThirdPartyInput AWS API Documentation
    #
    class DeregisterWebhookWithThirdPartyInput < Struct.new(
      :webhook_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeregisterWebhookWithThirdPartyOutput AWS API Documentation
    #
    class DeregisterWebhookWithThirdPartyOutput < Aws::EmptyStructure; end

    # Represents the input of a `DisableStageTransition` action.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline in which you want to disable the flow of
    #   artifacts from one stage to another.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage where you want to disable the inbound or
    #   outbound transition of artifacts.
    #   @return [String]
    #
    # @!attribute [rw] transition_type
    #   Specifies whether artifacts are prevented from transitioning into
    #   the stage and being processed by the actions in that stage
    #   (inbound), or prevented from transitioning from the stage after they
    #   have been processed by the actions in that stage (outbound).
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason given to the user that a stage is disabled, such as
    #   waiting for manual approval or manual tests. This message is
    #   displayed in the pipeline console UI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DisableStageTransitionInput AWS API Documentation
    #
    class DisableStageTransitionInput < Struct.new(
      :pipeline_name,
      :stage_name,
      :transition_type,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pipeline execution is already in a `Stopping` state. If you
    # already chose to stop and wait, you cannot make that request again.
    # You can choose to stop and abandon now, but be aware that this option
    # can lead to failed tasks or out of sequence tasks. If you already
    # chose to stop and abandon, you cannot make that request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DuplicatedStopRequestException AWS API Documentation
    #
    class DuplicatedStopRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of an `EnableStageTransition` action.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline in which you want to enable the flow of
    #   artifacts from one stage to another.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage where you want to enable the transition of
    #   artifacts, either into the stage (inbound) or from that stage to the
    #   next stage (outbound).
    #   @return [String]
    #
    # @!attribute [rw] transition_type
    #   Specifies whether artifacts are allowed to enter the stage and be
    #   processed by the actions in that stage (inbound) or whether already
    #   processed artifacts are allowed to transition to the next stage
    #   (outbound).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/EnableStageTransitionInput AWS API Documentation
    #
    class EnableStageTransitionInput < Struct.new(
      :pipeline_name,
      :stage_name,
      :transition_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about the key used to encrypt data in the
    # artifact store, such as an Amazon Web Services Key Management Service
    # (Key Management Service) key.
    #
    # @!attribute [rw] id
    #   The ID used to identify the key. For an Amazon Web Services KMS key,
    #   you can use the key ID, the key ARN, or the alias ARN.
    #
    #   <note markdown="1"> Aliases are recognized only in the account that created the KMS key.
    #   For cross-account actions, you can only use the key ID or key ARN to
    #   identify the key. Cross-account actions involve using the role from
    #   the other account (AccountB), so specifying the key ID will use the
    #   key from the other account (AccountB).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of encryption key, such as an Amazon Web Services KMS key.
    #   When creating or updating a pipeline, the value must be set to
    #   'KMS'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/EncryptionKey AWS API Documentation
    #
    class EncryptionKey < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about an error in CodePipeline.
    #
    # @!attribute [rw] code
    #   The system ID or number code of the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The text of the error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the actions taken and results produced on an artifact
    # as it passes through stages in the pipeline.
    #
    # @!attribute [rw] summary
    #   The summary of the current status of the actions.
    #   @return [String]
    #
    # @!attribute [rw] external_execution_id
    #   The system-generated unique ID of this action used to identify this
    #   job worker in any external systems, such as CodeDeploy.
    #   @return [String]
    #
    # @!attribute [rw] percent_complete
    #   The percentage of work completed on the action, represented on a
    #   scale of 0 to 100 percent.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ExecutionDetails AWS API Documentation
    #
    class ExecutionDetails < Struct.new(
      :summary,
      :external_execution_id,
      :percent_complete)
      SENSITIVE = []
      include Aws::Structure
    end

    # The interaction or event that started a pipeline execution.
    #
    # @!attribute [rw] trigger_type
    #   The type of change-detection method, command, or user interaction
    #   that started a pipeline execution.
    #   @return [String]
    #
    # @!attribute [rw] trigger_detail
    #   Detail related to the event that started a pipeline execution, such
    #   as the webhook ARN of the webhook that triggered the pipeline
    #   execution or the user ARN for a user-initiated
    #   `start-pipeline-execution` CLI command.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ExecutionTrigger AWS API Documentation
    #
    class ExecutionTrigger < Struct.new(
      :trigger_type,
      :trigger_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action engine, or executor, related to the supported integration
    # model used to create and update the action type. The available
    # executor types are `Lambda` and `JobWorker`.
    #
    # @!attribute [rw] lambda_executor_configuration
    #   Details about the `Lambda` executor of the action type.
    #   @return [Types::LambdaExecutorConfiguration]
    #
    # @!attribute [rw] job_worker_executor_configuration
    #   Details about the `JobWorker` executor of the action type.
    #   @return [Types::JobWorkerExecutorConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ExecutorConfiguration AWS API Documentation
    #
    class ExecutorConfiguration < Struct.new(
      :lambda_executor_configuration,
      :job_worker_executor_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about failure details.
    #
    # @!attribute [rw] type
    #   The type of the failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message about the failure.
    #   @return [String]
    #
    # @!attribute [rw] external_execution_id
    #   The external ID of the run of the action that failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/FailureDetails AWS API Documentation
    #
    class FailureDetails < Struct.new(
      :type,
      :message,
      :external_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] category
    #   Defines what kind of action can be taken in the stage. The following
    #   are the valid values:
    #
    #   * `Source`
    #
    #   * `Build`
    #
    #   * `Test`
    #
    #   * `Deploy`
    #
    #   * `Approval`
    #
    #   * `Invoke`
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The creator of an action type that was created with any supported
    #   integration model. There are two valid values: `AWS` and
    #   `ThirdParty`.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the action type being called. The provider name is
    #   specified when the action type is created.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A string that describes the action type version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetActionTypeInput AWS API Documentation
    #
    class GetActionTypeInput < Struct.new(
      :category,
      :owner,
      :provider,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_type
    #   The action type information for the requested action type, such as
    #   the action type ID.
    #   @return [Types::ActionTypeDeclaration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetActionTypeOutput AWS API Documentation
    #
    class GetActionTypeOutput < Struct.new(
      :action_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetJobDetails` action.
    #
    # @!attribute [rw] job_id
    #   The unique system-generated ID for the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetJobDetailsInput AWS API Documentation
    #
    class GetJobDetailsInput < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetJobDetails` action.
    #
    # @!attribute [rw] job_details
    #   The details of the job.
    #
    #   <note markdown="1"> If AWSSessionCredentials is used, a long-running job can call
    #   `GetJobDetails` again to obtain new credentials.
    #
    #    </note>
    #   @return [Types::JobDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetJobDetailsOutput AWS API Documentation
    #
    class GetJobDetailsOutput < Struct.new(
      :job_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetPipelineExecution` action.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline about which you want to get execution
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_execution_id
    #   The ID of the pipeline execution about which you want to get
    #   execution details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineExecutionInput AWS API Documentation
    #
    class GetPipelineExecutionInput < Struct.new(
      :pipeline_name,
      :pipeline_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetPipelineExecution` action.
    #
    # @!attribute [rw] pipeline_execution
    #   Represents information about the execution of a pipeline.
    #   @return [Types::PipelineExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineExecutionOutput AWS API Documentation
    #
    class GetPipelineExecutionOutput < Struct.new(
      :pipeline_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetPipeline` action.
    #
    # @!attribute [rw] name
    #   The name of the pipeline for which you want to get information.
    #   Pipeline names must be unique in an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the pipeline. If you do not specify a version,
    #   defaults to the current version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineInput AWS API Documentation
    #
    class GetPipelineInput < Struct.new(
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetPipeline` action.
    #
    # @!attribute [rw] pipeline
    #   Represents the structure of actions and stages to be performed in
    #   the pipeline.
    #   @return [Types::PipelineDeclaration]
    #
    # @!attribute [rw] metadata
    #   Represents the pipeline metadata information returned as part of the
    #   output of a `GetPipeline` action.
    #   @return [Types::PipelineMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineOutput AWS API Documentation
    #
    class GetPipelineOutput < Struct.new(
      :pipeline,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetPipelineState` action.
    #
    # @!attribute [rw] name
    #   The name of the pipeline about which you want to get information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineStateInput AWS API Documentation
    #
    class GetPipelineStateInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetPipelineState` action.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline for which you want to get the state.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_version
    #   The version number of the pipeline.
    #
    #   <note markdown="1"> A newly created pipeline is always assigned a version number of `1`.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] stage_states
    #   A list of the pipeline stage output information, including stage
    #   name, state, most recent run details, whether the stage is disabled,
    #   and other data.
    #   @return [Array<Types::StageState>]
    #
    # @!attribute [rw] created
    #   The date and time the pipeline was created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] updated
    #   The date and time the pipeline was last updated, in timestamp
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineStateOutput AWS API Documentation
    #
    class GetPipelineStateOutput < Struct.new(
      :pipeline_name,
      :pipeline_version,
      :stage_states,
      :created,
      :updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetThirdPartyJobDetails` action.
    #
    # @!attribute [rw] job_id
    #   The unique system-generated ID used for identifying the job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The clientToken portion of the clientId and clientToken pair used to
    #   verify that the calling entity is allowed access to the job and its
    #   details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetThirdPartyJobDetailsInput AWS API Documentation
    #
    class GetThirdPartyJobDetailsInput < Struct.new(
      :job_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetThirdPartyJobDetails` action.
    #
    # @!attribute [rw] job_details
    #   The details of the job, including any protected values defined for
    #   the job.
    #   @return [Types::ThirdPartyJobDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetThirdPartyJobDetailsOutput AWS API Documentation
    #
    class GetThirdPartyJobDetailsOutput < Struct.new(
      :job_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about an artifact to be worked on, such as a
    # test or build artifact.
    #
    # @!attribute [rw] name
    #   The name of the artifact to be worked on (for example, "My App").
    #
    #   Artifacts are the files that are worked on by actions in the
    #   pipeline. See the action configuration for each action for details
    #   about artifact parameters. For example, the S3 source action input
    #   artifact is a file name (or file path), and the files are generally
    #   provided as a ZIP file. Example artifact name:
    #   SampleApp\_Windows.zip
    #
    #   The input artifact of an action must exactly match the output
    #   artifact declared in a preceding action, but the input artifact does
    #   not have to be the next action in strict sequence from the action
    #   that provided the output artifact. Actions in parallel can declare
    #   different output artifacts, which are in turn consumed by different
    #   following actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InputArtifact AWS API Documentation
    #
    class InputArtifact < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action declaration was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidActionDeclarationException AWS API Documentation
    #
    class InvalidActionDeclarationException < Aws::EmptyStructure; end

    # The approval request already received a response or has expired.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidApprovalTokenException AWS API Documentation
    #
    class InvalidApprovalTokenException < Aws::EmptyStructure; end

    # The specified resource ARN is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidArnException AWS API Documentation
    #
    class InvalidArnException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved for future use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidBlockerDeclarationException AWS API Documentation
    #
    class InvalidBlockerDeclarationException < Aws::EmptyStructure; end

    # The client token was specified in an invalid format
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidClientTokenException AWS API Documentation
    #
    class InvalidClientTokenException < Aws::EmptyStructure; end

    # The job was specified in an invalid format or cannot be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidJobException AWS API Documentation
    #
    class InvalidJobException < Aws::EmptyStructure; end

    # The job state was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidJobStateException AWS API Documentation
    #
    class InvalidJobStateException < Aws::EmptyStructure; end

    # The next token was specified in an invalid format. Make sure that the
    # next token you provide is the token returned by a previous call.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Aws::EmptyStructure; end

    # The nonce was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidNonceException AWS API Documentation
    #
    class InvalidNonceException < Aws::EmptyStructure; end

    # The stage declaration was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidStageDeclarationException AWS API Documentation
    #
    class InvalidStageDeclarationException < Aws::EmptyStructure; end

    # The structure was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidStructureException AWS API Documentation
    #
    class InvalidStructureException < Aws::EmptyStructure; end

    # The specified resource tags are invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidTagsException AWS API Documentation
    #
    class InvalidTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified authentication type is in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidWebhookAuthenticationParametersException AWS API Documentation
    #
    class InvalidWebhookAuthenticationParametersException < Aws::EmptyStructure; end

    # The specified event filter rule is in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/InvalidWebhookFilterPatternException AWS API Documentation
    #
    class InvalidWebhookFilterPatternException < Aws::EmptyStructure; end

    # Represents information about a job.
    #
    # @!attribute [rw] id
    #   The unique system-generated ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Other data about a job.
    #   @return [Types::JobData]
    #
    # @!attribute [rw] nonce
    #   A system-generated random number that CodePipeline uses to ensure
    #   that the job is being worked on by only one job worker. Use this
    #   number in an AcknowledgeJob request.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account to use when performing the
    #   job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/Job AWS API Documentation
    #
    class Job < Struct.new(
      :id,
      :data,
      :nonce,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents other information about a job required for a job worker to
    # complete the job.
    #
    # @!attribute [rw] action_type_id
    #   Represents information about an action type.
    #   @return [Types::ActionTypeId]
    #
    # @!attribute [rw] action_configuration
    #   Represents information about an action configuration.
    #   @return [Types::ActionConfiguration]
    #
    # @!attribute [rw] pipeline_context
    #   Represents information about a pipeline to a job worker.
    #
    #   <note markdown="1"> Includes `pipelineArn` and `pipelineExecutionId` for custom jobs.
    #
    #    </note>
    #   @return [Types::PipelineContext]
    #
    # @!attribute [rw] input_artifacts
    #   The artifact supplied to the job.
    #   @return [Array<Types::Artifact>]
    #
    # @!attribute [rw] output_artifacts
    #   The output of the job.
    #   @return [Array<Types::Artifact>]
    #
    # @!attribute [rw] artifact_credentials
    #   Represents an Amazon Web Services session credentials object. These
    #   credentials are temporary credentials that are issued by Amazon Web
    #   Services Secure Token Service (STS). They can be used to access
    #   input and output artifacts in the S3 bucket used to store artifacts
    #   for the pipeline in CodePipeline.
    #   @return [Types::AWSSessionCredentials]
    #
    # @!attribute [rw] continuation_token
    #   A system-generated token, such as a deployment ID, required by a job
    #   to continue the job asynchronously.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   Represents information about the key used to encrypt data in the
    #   artifact store, such as an KMS key.
    #   @return [Types::EncryptionKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/JobData AWS API Documentation
    #
    class JobData < Struct.new(
      :action_type_id,
      :action_configuration,
      :pipeline_context,
      :input_artifacts,
      :output_artifacts,
      :artifact_credentials,
      :continuation_token,
      :encryption_key)
      SENSITIVE = [:artifact_credentials]
      include Aws::Structure
    end

    # Represents information about the details of a job.
    #
    # @!attribute [rw] id
    #   The unique system-generated ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Represents other information about a job required for a job worker
    #   to complete the job.
    #   @return [Types::JobData]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/JobDetails AWS API Documentation
    #
    class JobDetails < Struct.new(
      :id,
      :data,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job was specified in an invalid format or cannot be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/JobNotFoundException AWS API Documentation
    #
    class JobNotFoundException < Aws::EmptyStructure; end

    # Details about the polling configuration for the `JobWorker` action
    # engine, or executor.
    #
    # @!attribute [rw] polling_accounts
    #   The accounts in which the job worker is configured and might poll
    #   for jobs as part of the action execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] polling_service_principals
    #   The service Principals in which the job worker is configured and
    #   might poll for jobs as part of the action execution.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/JobWorkerExecutorConfiguration AWS API Documentation
    #
    class JobWorkerExecutorConfiguration < Struct.new(
      :polling_accounts,
      :polling_service_principals)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the configuration for the `Lambda` action engine, or
    # executor.
    #
    # @!attribute [rw] lambda_function_arn
    #   The ARN of the Lambda function used by the action engine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/LambdaExecutorConfiguration AWS API Documentation
    #
    class LambdaExecutorConfiguration < Struct.new(
      :lambda_function_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of pipelines associated with the Amazon Web Services
    # account has exceeded the limit allowed for the account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline for which you want to list action execution
    #   history.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Input information used to filter action execution history.
    #   @return [Types::ActionExecutionFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value. Action execution history is retained for up to 12
    #   months, based on action execution start times. Default value is 100.
    #
    #   <note markdown="1"> Detailed execution history is available for executions run on or
    #   after February 21, 2019.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that was returned from the previous `ListActionExecutions`
    #   call, which can be used to return the next set of action executions
    #   in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListActionExecutionsInput AWS API Documentation
    #
    class ListActionExecutionsInput < Struct.new(
      :pipeline_name,
      :filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_execution_details
    #   The details for a list of recent executions, such as action
    #   execution ID.
    #   @return [Array<Types::ActionExecutionDetail>]
    #
    # @!attribute [rw] next_token
    #   If the amount of returned information is significantly large, an
    #   identifier is also returned and can be used in a subsequent
    #   `ListActionExecutions` call to return the next set of action
    #   executions in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListActionExecutionsOutput AWS API Documentation
    #
    class ListActionExecutionsOutput < Struct.new(
      :action_execution_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListActionTypes` action.
    #
    # @!attribute [rw] action_owner_filter
    #   Filters the list of action types to those created by a specified
    #   entity.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous list action types
    #   call, which can be used to return the next set of action types in
    #   the list.
    #   @return [String]
    #
    # @!attribute [rw] region_filter
    #   The Region to filter on for the list of action types.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListActionTypesInput AWS API Documentation
    #
    class ListActionTypesInput < Struct.new(
      :action_owner_filter,
      :next_token,
      :region_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListActionTypes` action.
    #
    # @!attribute [rw] action_types
    #   Provides details of the action types.
    #   @return [Array<Types::ActionType>]
    #
    # @!attribute [rw] next_token
    #   If the amount of returned information is significantly large, an
    #   identifier is also returned. It can be used in a subsequent list
    #   action types call to return the next set of action types in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListActionTypesOutput AWS API Documentation
    #
    class ListActionTypesOutput < Struct.new(
      :action_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListPipelineExecutions` action.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline for which you want to get execution summary
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value. Pipeline history is limited to the most recent 12
    #   months, based on pipeline execution start times. Default value is
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that was returned from the previous
    #   `ListPipelineExecutions` call, which can be used to return the next
    #   set of pipeline executions in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListPipelineExecutionsInput AWS API Documentation
    #
    class ListPipelineExecutionsInput < Struct.new(
      :pipeline_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListPipelineExecutions` action.
    #
    # @!attribute [rw] pipeline_execution_summaries
    #   A list of executions in the history of a pipeline.
    #   @return [Array<Types::PipelineExecutionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used in the next `ListPipelineExecutions` call.
    #   To view all items in the list, continue to call this operation with
    #   each subsequent token until no more nextToken values are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListPipelineExecutionsOutput AWS API Documentation
    #
    class ListPipelineExecutionsOutput < Struct.new(
      :pipeline_execution_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListPipelines` action.
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous list pipelines
    #   call. It can be used to return the next set of pipelines in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of pipelines to return in a single call. To
    #   retrieve the remaining pipelines, make another call with the
    #   returned nextToken value. The minimum value you can specify is 1.
    #   The maximum accepted value is 1000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListPipelinesInput AWS API Documentation
    #
    class ListPipelinesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListPipelines` action.
    #
    # @!attribute [rw] pipelines
    #   The list of pipelines.
    #   @return [Array<Types::PipelineSummary>]
    #
    # @!attribute [rw] next_token
    #   If the amount of returned information is significantly large, an
    #   identifier is also returned. It can be used in a subsequent list
    #   pipelines call to return the next set of pipelines in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListPipelinesOutput AWS API Documentation
    #
    class ListPipelinesOutput < Struct.new(
      :pipelines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to get tags for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that was returned from the previous API call, which would
    #   be used to return the next page of the list. The ListTagsforResource
    #   call lists all available tags in one call and does not use
    #   pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   If the amount of returned information is significantly large, an
    #   identifier is also returned and can be used in a subsequent API call
    #   to return the next page of the list. The ListTagsforResource call
    #   lists all available tags in one call and does not use pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detail returned for each webhook after listing webhooks, such as
    # the webhook URL, the webhook name, and the webhook ARN.
    #
    # @!attribute [rw] definition
    #   The detail returned for each webhook, such as the webhook
    #   authentication type and filter rules.
    #   @return [Types::WebhookDefinition]
    #
    # @!attribute [rw] url
    #   A unique URL generated by CodePipeline. When a POST request is made
    #   to this URL, the defined pipeline is started as long as the body of
    #   the post request satisfies the defined authentication and filtering
    #   conditions. Deleting and re-creating a webhook makes the old URL
    #   invalid and generates a new one.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The text of the error message about the webhook.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The number code of the error.
    #   @return [String]
    #
    # @!attribute [rw] last_triggered
    #   The date and time a webhook was last successfully triggered, in
    #   timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the webhook.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the tags applied to the webhook.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListWebhookItem AWS API Documentation
    #
    class ListWebhookItem < Struct.new(
      :definition,
      :url,
      :error_message,
      :error_code,
      :last_triggered,
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that was returned from the previous ListWebhooks call,
    #   which can be used to return the next set of webhooks in the list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListWebhooksInput AWS API Documentation
    #
    class ListWebhooksInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] webhooks
    #   The JSON detail returned for each webhook in the list output for the
    #   ListWebhooks call.
    #   @return [Array<Types::ListWebhookItem>]
    #
    # @!attribute [rw] next_token
    #   If the amount of returned information is significantly large, an
    #   identifier is also returned and can be used in a subsequent
    #   ListWebhooks call to return the next set of webhooks in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListWebhooksOutput AWS API Documentation
    #
    class ListWebhooksOutput < Struct.new(
      :webhooks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stage has failed in a later run of the pipeline and the
    # `pipelineExecutionId` associated with the request is out of date.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/NotLatestPipelineExecutionException AWS API Documentation
    #
    class NotLatestPipelineExecutionException < Aws::EmptyStructure; end

    # Represents information about the output of an action.
    #
    # @!attribute [rw] name
    #   The name of the output of an artifact, such as "My App".
    #
    #   The input artifact of an action must exactly match the output
    #   artifact declared in a preceding action, but the input artifact does
    #   not have to be the next action in strict sequence from the action
    #   that provided the output artifact. Actions in parallel can declare
    #   different output artifacts, which are in turn consumed by different
    #   following actions.
    #
    #   Output artifact names must be unique within a pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/OutputArtifact AWS API Documentation
    #
    class OutputArtifact < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exceeded the total size limit for all variables in the pipeline.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/OutputVariablesSizeExceededException AWS API Documentation
    #
    class OutputVariablesSizeExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about a pipeline to a job worker.
    #
    # <note markdown="1"> PipelineContext contains `pipelineArn` and `pipelineExecutionId` for
    # custom action jobs. The `pipelineArn` and `pipelineExecutionId` fields
    # are not populated for ThirdParty action jobs.
    #
    #  </note>
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline. This is a user-specified value. Pipeline
    #   names must be unique across all pipeline names under an Amazon Web
    #   Services account.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The stage of the pipeline.
    #   @return [Types::StageContext]
    #
    # @!attribute [rw] action
    #   The context of an action to a job worker in the stage of a pipeline.
    #   @return [Types::ActionContext]
    #
    # @!attribute [rw] pipeline_arn
    #   The Amazon Resource Name (ARN) of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_execution_id
    #   The execution ID of the pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineContext AWS API Documentation
    #
    class PipelineContext < Struct.new(
      :pipeline_name,
      :stage,
      :action,
      :pipeline_arn,
      :pipeline_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the structure of actions and stages to be performed in the
    # pipeline.
    #
    # @!attribute [rw] name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) for CodePipeline to use to either
    #   perform actions with no `actionRoleArn`, or to use to assume roles
    #   for actions with an `actionRoleArn`.
    #   @return [String]
    #
    # @!attribute [rw] artifact_store
    #   Represents information about the S3 bucket where artifacts are
    #   stored for the pipeline.
    #
    #   <note markdown="1"> You must include either `artifactStore` or `artifactStores` in your
    #   pipeline, but you cannot use both. If you create a cross-region
    #   action in your pipeline, you must use `artifactStores`.
    #
    #    </note>
    #   @return [Types::ArtifactStore]
    #
    # @!attribute [rw] artifact_stores
    #   A mapping of `artifactStore` objects and their corresponding Amazon
    #   Web Services Regions. There must be an artifact store for the
    #   pipeline Region and for each cross-region action in the pipeline.
    #
    #   <note markdown="1"> You must include either `artifactStore` or `artifactStores` in your
    #   pipeline, but you cannot use both. If you create a cross-region
    #   action in your pipeline, you must use `artifactStores`.
    #
    #    </note>
    #   @return [Hash<String,Types::ArtifactStore>]
    #
    # @!attribute [rw] stages
    #   The stage in which to perform the action.
    #   @return [Array<Types::StageDeclaration>]
    #
    # @!attribute [rw] version
    #   The version number of the pipeline. A new pipeline always has a
    #   version number of 1. This number is incremented when a pipeline is
    #   updated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineDeclaration AWS API Documentation
    #
    class PipelineDeclaration < Struct.new(
      :name,
      :role_arn,
      :artifact_store,
      :artifact_stores,
      :stages,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about an execution of a pipeline.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline with the specified pipeline execution.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_version
    #   The version number of the pipeline with the specified pipeline
    #   execution.
    #   @return [Integer]
    #
    # @!attribute [rw] pipeline_execution_id
    #   The ID of the pipeline execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the pipeline execution.
    #
    #   * Cancelled: The pipeline’s definition was updated before the
    #     pipeline execution could be completed.
    #
    #   * InProgress: The pipeline execution is currently running.
    #
    #   * Stopped: The pipeline execution was manually stopped. For more
    #     information, see [Stopped Executions][1].
    #
    #   * Stopping: The pipeline execution received a request to be manually
    #     stopped. Depending on the selected stop mode, the execution is
    #     either completing or abandoning in-progress actions. For more
    #     information, see [Stopped Executions][1].
    #
    #   * Succeeded: The pipeline execution was completed successfully.
    #
    #   * Superseded: While this pipeline execution was waiting for the next
    #     stage to be completed, a newer pipeline execution advanced and
    #     continued through the pipeline instead. For more information, see
    #     [Superseded Executions][2].
    #
    #   * Failed: The pipeline execution was not completed successfully.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped
    #   [2]: https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded
    #   @return [String]
    #
    # @!attribute [rw] status_summary
    #   A summary that contains a description of the pipeline execution
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] artifact_revisions
    #   A list of `ArtifactRevision` objects included in a pipeline
    #   execution.
    #   @return [Array<Types::ArtifactRevision>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineExecution AWS API Documentation
    #
    class PipelineExecution < Struct.new(
      :pipeline_name,
      :pipeline_version,
      :pipeline_execution_id,
      :status,
      :status_summary,
      :artifact_revisions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pipeline execution was specified in an invalid format or cannot be
    # found, or an execution ID does not belong to the specified pipeline.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineExecutionNotFoundException AWS API Documentation
    #
    class PipelineExecutionNotFoundException < Aws::EmptyStructure; end

    # Unable to stop the pipeline execution. The execution might already be
    # in a `Stopped` state, or it might no longer be in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineExecutionNotStoppableException AWS API Documentation
    #
    class PipelineExecutionNotStoppableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a pipeline execution.
    #
    # @!attribute [rw] pipeline_execution_id
    #   The ID of the pipeline execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the pipeline execution.
    #
    #   * InProgress: The pipeline execution is currently running.
    #
    #   * Stopped: The pipeline execution was manually stopped. For more
    #     information, see [Stopped Executions][1].
    #
    #   * Stopping: The pipeline execution received a request to be manually
    #     stopped. Depending on the selected stop mode, the execution is
    #     either completing or abandoning in-progress actions. For more
    #     information, see [Stopped Executions][1].
    #
    #   * Succeeded: The pipeline execution was completed successfully.
    #
    #   * Superseded: While this pipeline execution was waiting for the next
    #     stage to be completed, a newer pipeline execution advanced and
    #     continued through the pipeline instead. For more information, see
    #     [Superseded Executions][2].
    #
    #   * Failed: The pipeline execution was not completed successfully.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped
    #   [2]: https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time when the pipeline execution began, in timestamp
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The date and time of the last change to the pipeline execution, in
    #   timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] source_revisions
    #   A list of the source artifact revisions that initiated a pipeline
    #   execution.
    #   @return [Array<Types::SourceRevision>]
    #
    # @!attribute [rw] trigger
    #   The interaction or event that started a pipeline execution, such as
    #   automated change detection or a `StartPipelineExecution` API call.
    #   @return [Types::ExecutionTrigger]
    #
    # @!attribute [rw] stop_trigger
    #   The interaction that stopped a pipeline execution.
    #   @return [Types::StopExecutionTrigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineExecutionSummary AWS API Documentation
    #
    class PipelineExecutionSummary < Struct.new(
      :pipeline_execution_id,
      :status,
      :start_time,
      :last_update_time,
      :source_revisions,
      :trigger,
      :stop_trigger)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a pipeline.
    #
    # @!attribute [rw] pipeline_arn
    #   The Amazon Resource Name (ARN) of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The date and time the pipeline was created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] updated
    #   The date and time the pipeline was last updated, in timestamp
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] polling_disabled_at
    #   The date and time that polling for source changes (periodic checks)
    #   was stopped for the pipeline, in timestamp format. You can migrate
    #   (update) a polling pipeline to use event-based change detection. For
    #   example, for a pipeline with a CodeCommit source, we recommend you
    #   migrate (update) your pipeline to use CloudWatch Events. To learn
    #   more, see [Migrate polling pipelines to use event-based change
    #   detection][1] in the CodePipeline User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/update-change-detection.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineMetadata AWS API Documentation
    #
    class PipelineMetadata < Struct.new(
      :pipeline_arn,
      :created,
      :updated,
      :polling_disabled_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified pipeline name is already in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineNameInUseException AWS API Documentation
    #
    class PipelineNameInUseException < Aws::EmptyStructure; end

    # The pipeline was specified in an invalid format or cannot be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineNotFoundException AWS API Documentation
    #
    class PipelineNotFoundException < Aws::EmptyStructure; end

    # Returns a summary of a pipeline.
    #
    # @!attribute [rw] name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the pipeline.
    #   @return [Integer]
    #
    # @!attribute [rw] created
    #   The date and time the pipeline was created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] updated
    #   The date and time of the last update to the pipeline, in timestamp
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineSummary AWS API Documentation
    #
    class PipelineSummary < Struct.new(
      :name,
      :version,
      :created,
      :updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pipeline version was specified in an invalid format or cannot be
    # found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PipelineVersionNotFoundException AWS API Documentation
    #
    class PipelineVersionNotFoundException < Aws::EmptyStructure; end

    # Represents the input of a `PollForJobs` action.
    #
    # @!attribute [rw] action_type_id
    #   Represents information about an action type.
    #   @return [Types::ActionTypeId]
    #
    # @!attribute [rw] max_batch_size
    #   The maximum number of jobs to return in a poll for jobs call.
    #   @return [Integer]
    #
    # @!attribute [rw] query_param
    #   A map of property names and values. For an action type with no
    #   queryable properties, this value must be null or an empty map. For
    #   an action type with a queryable property, you must supply that
    #   property as a key in the map. Only jobs whose action configuration
    #   matches the mapped value are returned.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PollForJobsInput AWS API Documentation
    #
    class PollForJobsInput < Struct.new(
      :action_type_id,
      :max_batch_size,
      :query_param)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PollForJobs` action.
    #
    # @!attribute [rw] jobs
    #   Information about the jobs to take action on.
    #   @return [Array<Types::Job>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PollForJobsOutput AWS API Documentation
    #
    class PollForJobsOutput < Struct.new(
      :jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PollForThirdPartyJobs` action.
    #
    # @!attribute [rw] action_type_id
    #   Represents information about an action type.
    #   @return [Types::ActionTypeId]
    #
    # @!attribute [rw] max_batch_size
    #   The maximum number of jobs to return in a poll for jobs call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PollForThirdPartyJobsInput AWS API Documentation
    #
    class PollForThirdPartyJobsInput < Struct.new(
      :action_type_id,
      :max_batch_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PollForThirdPartyJobs` action.
    #
    # @!attribute [rw] jobs
    #   Information about the jobs to take action on.
    #   @return [Array<Types::ThirdPartyJob>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PollForThirdPartyJobsOutput AWS API Documentation
    #
    class PollForThirdPartyJobsOutput < Struct.new(
      :jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PutActionRevision` action.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline that starts processing the revision to the
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage that contains the action that acts on the
    #   revision.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   The name of the action that processes the revision.
    #   @return [String]
    #
    # @!attribute [rw] action_revision
    #   Represents information about the version (or revision) of an action.
    #   @return [Types::ActionRevision]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutActionRevisionInput AWS API Documentation
    #
    class PutActionRevisionInput < Struct.new(
      :pipeline_name,
      :stage_name,
      :action_name,
      :action_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PutActionRevision` action.
    #
    # @!attribute [rw] new_revision
    #   Indicates whether the artifact revision was previously used in an
    #   execution of the specified pipeline.
    #   @return [Boolean]
    #
    # @!attribute [rw] pipeline_execution_id
    #   The ID of the current workflow state of the pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutActionRevisionOutput AWS API Documentation
    #
    class PutActionRevisionOutput < Struct.new(
      :new_revision,
      :pipeline_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PutApprovalResult` action.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline that contains the action.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage that contains the action.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   The name of the action for which approval is requested.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   Represents information about the result of the approval request.
    #   @return [Types::ApprovalResult]
    #
    # @!attribute [rw] token
    #   The system-generated token used to identify a unique approval
    #   request. The token for each open approval request can be obtained
    #   using the GetPipelineState action. It is used to validate that the
    #   approval request corresponding to this token is still valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutApprovalResultInput AWS API Documentation
    #
    class PutApprovalResultInput < Struct.new(
      :pipeline_name,
      :stage_name,
      :action_name,
      :result,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PutApprovalResult` action.
    #
    # @!attribute [rw] approved_at
    #   The timestamp showing when the approval or rejection was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutApprovalResultOutput AWS API Documentation
    #
    class PutApprovalResultOutput < Struct.new(
      :approved_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PutJobFailureResult` action.
    #
    # @!attribute [rw] job_id
    #   The unique system-generated ID of the job that failed. This is the
    #   same ID returned from `PollForJobs`.
    #   @return [String]
    #
    # @!attribute [rw] failure_details
    #   The details about the failure of a job.
    #   @return [Types::FailureDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutJobFailureResultInput AWS API Documentation
    #
    class PutJobFailureResultInput < Struct.new(
      :job_id,
      :failure_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PutJobSuccessResult` action.
    #
    # @!attribute [rw] job_id
    #   The unique system-generated ID of the job that succeeded. This is
    #   the same ID returned from `PollForJobs`.
    #   @return [String]
    #
    # @!attribute [rw] current_revision
    #   The ID of the current revision of the artifact successfully worked
    #   on by the job.
    #   @return [Types::CurrentRevision]
    #
    # @!attribute [rw] continuation_token
    #   A token generated by a job worker, such as a CodeDeploy deployment
    #   ID, that a successful job provides to identify a custom action in
    #   progress. Future jobs use this token to identify the running
    #   instance of the action. It can be reused to return more information
    #   about the progress of the custom action. When the action is
    #   complete, no continuation token should be supplied.
    #   @return [String]
    #
    # @!attribute [rw] execution_details
    #   The execution details of the successful job, such as the actions
    #   taken by the job worker.
    #   @return [Types::ExecutionDetails]
    #
    # @!attribute [rw] output_variables
    #   Key-value pairs produced as output by a job worker that can be made
    #   available to a downstream action configuration. `outputVariables`
    #   can be included only when there is no continuation token on the
    #   request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutJobSuccessResultInput AWS API Documentation
    #
    class PutJobSuccessResultInput < Struct.new(
      :job_id,
      :current_revision,
      :continuation_token,
      :execution_details,
      :output_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PutThirdPartyJobFailureResult` action.
    #
    # @!attribute [rw] job_id
    #   The ID of the job that failed. This is the same ID returned from
    #   `PollForThirdPartyJobs`.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The clientToken portion of the clientId and clientToken pair used to
    #   verify that the calling entity is allowed access to the job and its
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] failure_details
    #   Represents information about failure details.
    #   @return [Types::FailureDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutThirdPartyJobFailureResultInput AWS API Documentation
    #
    class PutThirdPartyJobFailureResultInput < Struct.new(
      :job_id,
      :client_token,
      :failure_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PutThirdPartyJobSuccessResult` action.
    #
    # @!attribute [rw] job_id
    #   The ID of the job that successfully completed. This is the same ID
    #   returned from `PollForThirdPartyJobs`.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The clientToken portion of the clientId and clientToken pair used to
    #   verify that the calling entity is allowed access to the job and its
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] current_revision
    #   Represents information about a current revision.
    #   @return [Types::CurrentRevision]
    #
    # @!attribute [rw] continuation_token
    #   A token generated by a job worker, such as a CodeDeploy deployment
    #   ID, that a successful job provides to identify a partner action in
    #   progress. Future jobs use this token to identify the running
    #   instance of the action. It can be reused to return more information
    #   about the progress of the partner action. When the action is
    #   complete, no continuation token should be supplied.
    #   @return [String]
    #
    # @!attribute [rw] execution_details
    #   The details of the actions taken and results produced on an artifact
    #   as it passes through stages in the pipeline.
    #   @return [Types::ExecutionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutThirdPartyJobSuccessResultInput AWS API Documentation
    #
    class PutThirdPartyJobSuccessResultInput < Struct.new(
      :job_id,
      :client_token,
      :current_revision,
      :continuation_token,
      :execution_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] webhook
    #   The detail provided in an input file to create the webhook, such as
    #   the webhook name, the pipeline name, and the action name. Give the
    #   webhook a unique name that helps you identify it. You might name the
    #   webhook after the pipeline and action it targets so that you can
    #   easily recognize what it's used for later.
    #   @return [Types::WebhookDefinition]
    #
    # @!attribute [rw] tags
    #   The tags for the webhook.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutWebhookInput AWS API Documentation
    #
    class PutWebhookInput < Struct.new(
      :webhook,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] webhook
    #   The detail returned from creating the webhook, such as the webhook
    #   name, webhook URL, and webhook ARN.
    #   @return [Types::ListWebhookItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutWebhookOutput AWS API Documentation
    #
    class PutWebhookOutput < Struct.new(
      :webhook)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] webhook_name
    #   The name of an existing webhook created with PutWebhook to register
    #   with a supported third party.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RegisterWebhookWithThirdPartyInput AWS API Documentation
    #
    class RegisterWebhookWithThirdPartyInput < Struct.new(
      :webhook_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RegisterWebhookWithThirdPartyOutput AWS API Documentation
    #
    class RegisterWebhookWithThirdPartyOutput < Aws::EmptyStructure; end

    # The request failed because of an unknown error, exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RequestFailedException AWS API Documentation
    #
    class RequestFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # Represents the input of a `RetryStageExecution` action.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline that contains the failed stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the failed stage to be retried.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_execution_id
    #   The ID of the pipeline execution in the failed stage to be retried.
    #   Use the GetPipelineState action to retrieve the current
    #   pipelineExecutionId of the failed stage
    #   @return [String]
    #
    # @!attribute [rw] retry_mode
    #   The scope of the retry attempt. Currently, the only supported value
    #   is FAILED\_ACTIONS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RetryStageExecutionInput AWS API Documentation
    #
    class RetryStageExecutionInput < Struct.new(
      :pipeline_name,
      :stage_name,
      :pipeline_execution_id,
      :retry_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `RetryStageExecution` action.
    #
    # @!attribute [rw] pipeline_execution_id
    #   The ID of the current workflow execution in the failed stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RetryStageExecutionOutput AWS API Documentation
    #
    class RetryStageExecutionOutput < Struct.new(
      :pipeline_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of the S3 bucket that contains a revision.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   The key of the object in the S3 bucket, which uniquely identifies
    #   the object in the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/S3ArtifactLocation AWS API Documentation
    #
    class S3ArtifactLocation < Struct.new(
      :bucket_name,
      :object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 artifact location for an action's artifacts.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 artifact bucket for an action's artifacts.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The artifact name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the version (or revision) of a source artifact that
    # initiated a pipeline execution.
    #
    # @!attribute [rw] action_name
    #   The name of the action that processed the revision to the source
    #   artifact.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The system-generated unique ID that identifies the revision number
    #   of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] revision_summary
    #   Summary information about the most recent revision of the artifact.
    #   For GitHub and CodeCommit repositories, the commit message. For
    #   Amazon S3 buckets or actions, the user-provided content of a
    #   `codepipeline-artifact-revision-summary` key specified in the object
    #   metadata.
    #   @return [String]
    #
    # @!attribute [rw] revision_url
    #   The commit ID for the artifact revision. For artifacts stored in
    #   GitHub or CodeCommit repositories, the commit ID is linked to a
    #   commit details page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/SourceRevision AWS API Documentation
    #
    class SourceRevision < Struct.new(
      :action_name,
      :revision_id,
      :revision_summary,
      :revision_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about a stage to a job worker.
    #
    # @!attribute [rw] name
    #   The name of the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StageContext AWS API Documentation
    #
    class StageContext < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about a stage and its definition.
    #
    # @!attribute [rw] name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] blockers
    #   Reserved for future use.
    #   @return [Array<Types::BlockerDeclaration>]
    #
    # @!attribute [rw] actions
    #   The actions included in a stage.
    #   @return [Array<Types::ActionDeclaration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StageDeclaration AWS API Documentation
    #
    class StageDeclaration < Struct.new(
      :name,
      :blockers,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about the run of a stage.
    #
    # @!attribute [rw] pipeline_execution_id
    #   The ID of the pipeline execution associated with the stage.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the stage, or for a completed stage, the last status
    #   of the stage.
    #
    #   <note markdown="1"> A status of cancelled means that the pipeline’s definition was
    #   updated before the stage execution could be completed.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StageExecution AWS API Documentation
    #
    class StageExecution < Struct.new(
      :pipeline_execution_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stage was specified in an invalid format or cannot be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StageNotFoundException AWS API Documentation
    #
    class StageNotFoundException < Aws::EmptyStructure; end

    # Unable to retry. The pipeline structure or stage state might have
    # changed while actions awaited retry, or the stage contains no failed
    # actions.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StageNotRetryableException AWS API Documentation
    #
    class StageNotRetryableException < Aws::EmptyStructure; end

    # Represents information about the state of the stage.
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] inbound_execution
    #   Represents information about the run of a stage.
    #   @return [Types::StageExecution]
    #
    # @!attribute [rw] inbound_transition_state
    #   The state of the inbound transition, which is either enabled or
    #   disabled.
    #   @return [Types::TransitionState]
    #
    # @!attribute [rw] action_states
    #   The state of the stage.
    #   @return [Array<Types::ActionState>]
    #
    # @!attribute [rw] latest_execution
    #   Information about the latest execution in the stage, including its
    #   ID and status.
    #   @return [Types::StageExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StageState AWS API Documentation
    #
    class StageState < Struct.new(
      :stage_name,
      :inbound_execution,
      :inbound_transition_state,
      :action_states,
      :latest_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `StartPipelineExecution` action.
    #
    # @!attribute [rw] name
    #   The name of the pipeline to start.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The system-generated unique ID used to identify a unique execution
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StartPipelineExecutionInput AWS API Documentation
    #
    class StartPipelineExecutionInput < Struct.new(
      :name,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `StartPipelineExecution` action.
    #
    # @!attribute [rw] pipeline_execution_id
    #   The unique system-generated ID of the pipeline execution that was
    #   started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StartPipelineExecutionOutput AWS API Documentation
    #
    class StartPipelineExecutionOutput < Struct.new(
      :pipeline_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The interaction that stopped a pipeline execution.
    #
    # @!attribute [rw] reason
    #   The user-specified reason the pipeline was stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StopExecutionTrigger AWS API Documentation
    #
    class StopExecutionTrigger < Struct.new(
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to stop.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_execution_id
    #   The ID of the pipeline execution to be stopped in the current stage.
    #   Use the `GetPipelineState` action to retrieve the current
    #   pipelineExecutionId.
    #   @return [String]
    #
    # @!attribute [rw] abandon
    #   Use this option to stop the pipeline execution by abandoning, rather
    #   than finishing, in-progress actions.
    #
    #   <note markdown="1"> This option can lead to failed or out-of-sequence tasks.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] reason
    #   Use this option to enter comments, such as the reason the pipeline
    #   was stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StopPipelineExecutionInput AWS API Documentation
    #
    class StopPipelineExecutionInput < Struct.new(
      :pipeline_name,
      :pipeline_execution_id,
      :abandon,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_execution_id
    #   The unique system-generated ID of the pipeline execution that was
    #   stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StopPipelineExecutionOutput AWS API Documentation
    #
    class StopPipelineExecutionOutput < Struct.new(
      :pipeline_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag is a key-value pair that is used to manage the resource.
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags you want to modify or add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # A response to a `PollForThirdPartyJobs` request returned by
    # CodePipeline when there is a job to be worked on by a partner action.
    #
    # @!attribute [rw] client_id
    #   The `clientToken` portion of the `clientId` and `clientToken` pair
    #   used to verify that the calling entity is allowed access to the job
    #   and its details.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The identifier used to identify the job in CodePipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ThirdPartyJob AWS API Documentation
    #
    class ThirdPartyJob < Struct.new(
      :client_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about the job data for a partner action.
    #
    # @!attribute [rw] action_type_id
    #   Represents information about an action type.
    #   @return [Types::ActionTypeId]
    #
    # @!attribute [rw] action_configuration
    #   Represents information about an action configuration.
    #   @return [Types::ActionConfiguration]
    #
    # @!attribute [rw] pipeline_context
    #   Represents information about a pipeline to a job worker.
    #
    #   <note markdown="1"> Does not include `pipelineArn` and `pipelineExecutionId` for
    #   ThirdParty jobs.
    #
    #    </note>
    #   @return [Types::PipelineContext]
    #
    # @!attribute [rw] input_artifacts
    #   The name of the artifact that is worked on by the action, if any.
    #   This name might be system-generated, such as "MyApp", or it might
    #   be defined by the user when the action is created. The input
    #   artifact name must match the name of an output artifact generated by
    #   an action in an earlier action or stage of the pipeline.
    #   @return [Array<Types::Artifact>]
    #
    # @!attribute [rw] output_artifacts
    #   The name of the artifact that is the result of the action, if any.
    #   This name might be system-generated, such as "MyBuiltApp", or it
    #   might be defined by the user when the action is created.
    #   @return [Array<Types::Artifact>]
    #
    # @!attribute [rw] artifact_credentials
    #   Represents an Amazon Web Services session credentials object. These
    #   credentials are temporary credentials that are issued by Amazon Web
    #   Services Secure Token Service (STS). They can be used to access
    #   input and output artifacts in the S3 bucket used to store artifact
    #   for the pipeline in CodePipeline.
    #   @return [Types::AWSSessionCredentials]
    #
    # @!attribute [rw] continuation_token
    #   A system-generated token, such as a CodeDeploy deployment ID, that a
    #   job requires to continue the job asynchronously.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key used to encrypt and decrypt data in the artifact
    #   store for the pipeline, such as an Amazon Web Services Key
    #   Management Service (Amazon Web Services KMS) key. This is optional
    #   and might not be present.
    #   @return [Types::EncryptionKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ThirdPartyJobData AWS API Documentation
    #
    class ThirdPartyJobData < Struct.new(
      :action_type_id,
      :action_configuration,
      :pipeline_context,
      :input_artifacts,
      :output_artifacts,
      :artifact_credentials,
      :continuation_token,
      :encryption_key)
      SENSITIVE = [:artifact_credentials]
      include Aws::Structure
    end

    # The details of a job sent in response to a `GetThirdPartyJobDetails`
    # request.
    #
    # @!attribute [rw] id
    #   The identifier used to identify the job details in CodePipeline.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data to be returned by the third party job worker.
    #   @return [Types::ThirdPartyJobData]
    #
    # @!attribute [rw] nonce
    #   A system-generated random number that CodePipeline uses to ensure
    #   that the job is being worked on by only one job worker. Use this
    #   number in an AcknowledgeThirdPartyJob request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ThirdPartyJobDetails AWS API Documentation
    #
    class ThirdPartyJobDetails < Struct.new(
      :id,
      :data,
      :nonce)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tags limit for a resource has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about the state of transitions between one
    # stage and another stage.
    #
    # @!attribute [rw] enabled
    #   Whether the transition between stages is enabled (true) or disabled
    #   (false).
    #   @return [Boolean]
    #
    # @!attribute [rw] last_changed_by
    #   The ID of the user who last changed the transition state.
    #   @return [String]
    #
    # @!attribute [rw] last_changed_at
    #   The timestamp when the transition state was last changed.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_reason
    #   The user-specified reason why the transition between two stages of a
    #   pipeline was disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/TransitionState AWS API Documentation
    #
    class TransitionState < Struct.new(
      :enabled,
      :last_changed_by,
      :last_changed_at,
      :disabled_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of keys for the tags to be removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] action_type
    #   The action type definition for the action type to be updated.
    #   @return [Types::ActionTypeDeclaration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/UpdateActionTypeInput AWS API Documentation
    #
    class UpdateActionTypeInput < Struct.new(
      :action_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of an `UpdatePipeline` action.
    #
    # @!attribute [rw] pipeline
    #   The name of the pipeline to be updated.
    #   @return [Types::PipelineDeclaration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/UpdatePipelineInput AWS API Documentation
    #
    class UpdatePipelineInput < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of an `UpdatePipeline` action.
    #
    # @!attribute [rw] pipeline
    #   The structure of the updated pipeline.
    #   @return [Types::PipelineDeclaration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/UpdatePipelineOutput AWS API Documentation
    #
    class UpdatePipelineOutput < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # The validation was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ValidationException AWS API Documentation
    #
    class ValidationException < Aws::EmptyStructure; end

    # The authentication applied to incoming webhook trigger requests.
    #
    # @!attribute [rw] allowed_ip_range
    #   The property used to configure acceptance of webhooks in an IP
    #   address range. For IP, only the `AllowedIPRange` property must be
    #   set. This property must be set to a valid CIDR range.
    #   @return [String]
    #
    # @!attribute [rw] secret_token
    #   The property used to configure GitHub authentication. For
    #   GITHUB\_HMAC, only the `SecretToken` property must be set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/WebhookAuthConfiguration AWS API Documentation
    #
    class WebhookAuthConfiguration < Struct.new(
      :allowed_ip_range,
      :secret_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about a webhook and its definition.
    #
    # @!attribute [rw] name
    #   The name of the webhook.
    #   @return [String]
    #
    # @!attribute [rw] target_pipeline
    #   The name of the pipeline you want to connect to the webhook.
    #   @return [String]
    #
    # @!attribute [rw] target_action
    #   The name of the action in a pipeline you want to connect to the
    #   webhook. The action must be from the source (first) stage of the
    #   pipeline.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of rules applied to the body/payload sent in the POST request
    #   to a webhook URL. All defined rules must pass for the request to be
    #   accepted and the pipeline started.
    #   @return [Array<Types::WebhookFilterRule>]
    #
    # @!attribute [rw] authentication
    #   Supported options are GITHUB\_HMAC, IP, and UNAUTHENTICATED.
    #
    #   * For information about the authentication scheme implemented by
    #     GITHUB\_HMAC, see [Securing your webhooks][1] on the GitHub
    #     Developer website.
    #
    #   * IP rejects webhooks trigger requests unless they originate from an
    #     IP address in the IP range whitelisted in the authentication
    #     configuration.
    #
    #   * UNAUTHENTICATED accepts all webhook trigger requests regardless of
    #     origin.
    #
    #
    #
    #   [1]: https://developer.github.com/webhooks/securing/
    #   @return [String]
    #
    # @!attribute [rw] authentication_configuration
    #   Properties that configure the authentication applied to incoming
    #   webhook trigger requests. The required properties depend on the
    #   authentication type. For GITHUB\_HMAC, only the `SecretToken
    #   `property must be set. For IP, only the `AllowedIPRange `property
    #   must be set to a valid CIDR range. For UNAUTHENTICATED, no
    #   properties can be set.
    #   @return [Types::WebhookAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/WebhookDefinition AWS API Documentation
    #
    class WebhookDefinition < Struct.new(
      :name,
      :target_pipeline,
      :target_action,
      :filters,
      :authentication,
      :authentication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event criteria that specify when a webhook notification is sent to
    # your URL.
    #
    # @!attribute [rw] json_path
    #   A JsonPath expression that is applied to the body/payload of the
    #   webhook. The value selected by the JsonPath expression must match
    #   the value specified in the `MatchEquals` field. Otherwise, the
    #   request is ignored. For more information, see [Java JsonPath
    #   implementation][1] in GitHub.
    #
    #
    #
    #   [1]: https://github.com/json-path/JsonPath
    #   @return [String]
    #
    # @!attribute [rw] match_equals
    #   The value selected by the `JsonPath` expression must match what is
    #   supplied in the `MatchEquals` field. Otherwise, the request is
    #   ignored. Properties from the target action configuration can be
    #   included as placeholders in this value by surrounding the action
    #   configuration key with curly brackets. For example, if the value
    #   supplied here is "refs/heads/\\\{Branch\\}" and the target action
    #   has an action configuration property called "Branch" with a value
    #   of "main", the `MatchEquals` value is evaluated as
    #   "refs/heads/main". For a list of action configuration properties
    #   for built-in action types, see [Pipeline Structure Reference Action
    #   Requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/WebhookFilterRule AWS API Documentation
    #
    class WebhookFilterRule < Struct.new(
      :json_path,
      :match_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified webhook was entered in an invalid format or cannot be
    # found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/WebhookNotFoundException AWS API Documentation
    #
    class WebhookNotFoundException < Aws::EmptyStructure; end

  end
end
