# frozen_string_literal: true

# This is generated code!

module Aws::CodePipeline
  # This module contains the types returned by client operations.
  module Types

    # <p>Represents an Amazon Web Services session credentials object. These credentials are
    #             temporary credentials that are issued by Amazon Web Services Secure Token Service (STS).
    #             They can be used to access input and output artifacts in the S3 bucket used to store
    #             artifact for the pipeline in CodePipeline.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute access_key_id
    #   <p>The access key for the session.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret access key for the session.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The token for the session.</p>
    #   @return [String]
    class AWSSessionCredentials < Struct.new(
      nil,
      :access_key_id,
      :secret_access_key,
      :session_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an AcknowledgeJob action.</p>
    # @!attribute job_id
    #   <p>The unique system-generated ID of the job for which you want to confirm
    #               receipt.</p>
    #   @return [String]
    # @!attribute nonce
    #   <p>A system-generated random number that CodePipeline uses to ensure that the
    #               job is being worked on by only one job worker. Get this number from the response of the
    #                   <a>PollForJobs</a> request that returned this job.</p>
    #   @return [String]
    class AcknowledgeJobInput < Struct.new(
      nil,
      :job_id,
      :nonce,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of an AcknowledgeJob action.</p>
    # @!attribute status
    #   <p>Whether the job worker has received the specified job.</p>
    #   @return [String]
    class AcknowledgeJobOutput < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an AcknowledgeThirdPartyJob action.</p>
    # @!attribute job_id
    #   <p>The unique system-generated ID of the job.</p>
    #   @return [String]
    # @!attribute nonce
    #   <p>A system-generated random number that CodePipeline uses to ensure that the
    #               job is being worked on by only one job worker. Get this number from the response to a
    #                   <a>GetThirdPartyJobDetails</a> request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #   @return [String]
    class AcknowledgeThirdPartyJobInput < Struct.new(
      nil,
      :job_id,
      :nonce,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of an AcknowledgeThirdPartyJob action.</p>
    # @!attribute status
    #   <p>The status information for the third party job, if any.</p>
    #   @return [String]
    class AcknowledgeThirdPartyJobOutput < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about an action configuration.</p>
    # @!attribute configuration
    #   <p>The configuration data for the action.</p>
    #   @return [Hash<String, String>]
    class ActionConfiguration < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about an action configuration property.</p>
    # @!attribute name
    #   <p>The name of the action configuration property.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Whether the configuration property is a required value.</p>
    #   @return [Boolean]
    # @!attribute key
    #   <p>Whether the configuration property is a key.</p>
    #   @return [Boolean]
    # @!attribute secret
    #   <p>Whether the configuration property is secret. Secrets are hidden from all calls
    #               except for <code>GetJobDetails</code>, <code>GetThirdPartyJobDetails</code>,
    #                   <code>PollForJobs</code>, and <code>PollForThirdPartyJobs</code>.</p>
    #            <p>When updating a pipeline, passing * * * * * without changing any other values of
    #               the action preserves the previous value of the secret.</p>
    #   @return [Boolean]
    # @!attribute queryable
    #   <p>Indicates that the property is used with <code>PollForJobs</code>. When creating a
    #               custom action, an action can have up to one queryable property. If it has one, that
    #               property must be both required and not secret.</p>
    #            <p>If you create a pipeline with a custom action type, and that custom action contains
    #               a queryable property, the value for that configuration property is subject to other
    #               restrictions. The value must be less than or equal to twenty (20) characters. The value
    #               can contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the action configuration property that is displayed to
    #               users.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the configuration property.</p>
    #   @return [String]
    class ActionConfigurationProperty < Struct.new(
      nil,
      :name,
      :required,
      :key,
      :secret,
      :queryable,
      :description,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:required] = false unless options.key?(:required)
        options[:key] = false unless options.key?(:key)
        options[:secret] = false unless options.key?(:secret)
        options[:queryable] = false unless options.key?(:queryable)
        super
      end
    end

    # <p>Represents the context of an action in the stage of a pipeline to a job
    #             worker.</p>
    # @!attribute name
    #   <p>The name of the action in the context of a job.</p>
    #   @return [String]
    # @!attribute action_execution_id
    #   <p>The system-generated unique ID that corresponds to an action's execution.</p>
    #   @return [String]
    class ActionContext < Struct.new(
      nil,
      :name,
      :action_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about an action declaration.</p>
    # @!attribute name
    #   <p>The action declaration's name.</p>
    #   @return [String]
    # @!attribute action_type_id
    #   <p>Specifies the action type and the provider of the action.</p>
    #   @return [Types::ActionTypeId]
    # @!attribute run_order
    #   <p>The order in which actions are run.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>The action's configuration. These are key-value pairs that specify input values for
    #               an action. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements">Action Structure Requirements in CodePipeline</a>. For the list of
    #               configuration properties for the CloudFormation action type in CodePipeline, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-action-reference.html">Configuration Properties Reference</a> in the <i>CloudFormation
    #                   User Guide</i>. For template snippets with examples, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-parameter-override-functions.html">Using Parameter Override Functions with CodePipeline Pipelines</a> in the
    #                       <i>CloudFormation User Guide</i>.</p>
    #            <p>The values can be represented in either JSON or YAML format. For example, the JSON
    #               configuration item format is as follows: </p>
    #            <p>
    #               <i>JSON:</i>
    #            </p>
    #            <p>
    #               <code>"Configuration" : { Key : Value },</code>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute commands
    #   <p>The shell commands to run with your compute action in CodePipeline. All commands
    #               are supported except multi-line formats. While CodeBuild logs and permissions
    #               are used, you do not need to create any resources in CodeBuild.</p>
    #            <note>
    #               <p>Using compute time for this action will incur separate charges in CodeBuild.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute output_artifacts
    #   <p>The name or ID of the result of the action declaration, such as a test or build
    #               artifact.</p>
    #   @return [Array<Types::OutputArtifact>]
    # @!attribute input_artifacts
    #   <p>The name or ID of the artifact consumed by the action, such as a test or build
    #               artifact.</p>
    #   @return [Array<Types::InputArtifact>]
    # @!attribute output_variables
    #   <p>The list of variables that are to be exported from the compute action. This is
    #               specifically CodeBuild environment variables as used for that action.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The ARN of the IAM service role that performs the declared action. This is assumed
    #               through the roleArn for the pipeline.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The action declaration's Amazon Web Services Region, such as us-east-1.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The variable namespace associated with the action. All variables produced as output by
    #               this action fall under this namespace.</p>
    #   @return [String]
    # @!attribute timeout_in_minutes
    #   <p>A timeout duration in minutes that can be applied against the ActionType’s default
    #               timeout value specified in <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/limits.html">Quotas for CodePipeline
    #               </a>. This attribute is available only to the manual approval ActionType.</p>
    #   @return [Integer]
    # @!attribute environment_variables
    #   <p>The environment variables for the action.</p>
    #   @return [Array<Types::EnvironmentVariable>]
    class ActionDeclaration < Struct.new(
      nil,
      :name,
      :action_type_id,
      :run_order,
      :configuration,
      :commands,
      :output_artifacts,
      :input_artifacts,
      :output_variables,
      :role_arn,
      :region,
      :namespace,
      :timeout_in_minutes,
      :environment_variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the run of an action.</p>
    # @!attribute action_execution_id
    #   <p>ID of the workflow action execution in the current stage. Use the <a>GetPipelineState</a> action to retrieve the current action execution details
    #               of the current stage.</p>
    #            <note>
    #               <p>For older executions, this field might be empty. The action execution ID is
    #                   available for executions run on or after March 2020.</p>
    #            </note>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the action, or for a completed action, the last status of the
    #               action.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>A summary of the run of the action.</p>
    #   @return [String]
    # @!attribute last_status_change
    #   <p>The last status change of the action.</p>
    #   @return [Time]
    # @!attribute token
    #   <p>The system-generated token used to identify a unique approval request. The token
    #               for each open approval request can be obtained using the <code>GetPipelineState</code>
    #               command. It is used to validate that the approval request corresponding to this token is
    #               still valid.</p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p>The ARN of the user who last changed the pipeline.</p>
    #   @return [String]
    # @!attribute external_execution_id
    #   <p>The external ID of the run of the action.</p>
    #   @return [String]
    # @!attribute external_execution_url
    #   <p>The URL of a resource external to Amazon Web Services that is used when running the
    #               action (for example, an external repository URL).</p>
    #   @return [String]
    # @!attribute percent_complete
    #   <p>A percentage of completeness of the action as it runs.</p>
    #   @return [Integer]
    # @!attribute error_details
    #   <p>The details of an error returned by a URL external to Amazon Web Services.</p>
    #   @return [Types::ErrorDetails]
    # @!attribute log_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the log stream for the action compute.</p>
    #   @return [String]
    class ActionExecution < Struct.new(
      nil,
      :action_execution_id,
      :status,
      :summary,
      :last_status_change,
      :token,
      :last_updated_by,
      :external_execution_id,
      :external_execution_url,
      :percent_complete,
      :error_details,
      :log_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an execution of an action, including the action execution
    #             ID, and the name, version, and timing of the action. </p>
    # @!attribute pipeline_execution_id
    #   <p>The pipeline execution ID for the action execution.</p>
    #   @return [String]
    # @!attribute action_execution_id
    #   <p>The action execution ID.</p>
    #   @return [String]
    # @!attribute pipeline_version
    #   <p>The version of the pipeline where the action was run.</p>
    #   @return [Integer]
    # @!attribute stage_name
    #   <p>The name of the stage that contains the action.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>The name of the action.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the action execution.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last update time of the action execution.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The ARN of the user who changed the pipeline execution details.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the action execution. Status categories are <code>InProgress</code>,
    #                   <code>Succeeded</code>, and <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute input
    #   <p>Input details for the action execution, such as role ARN, Region, and input
    #               artifacts.</p>
    #   @return [Types::ActionExecutionInput]
    # @!attribute output
    #   <p>Output details for the action execution, such as the action execution result.</p>
    #   @return [Types::ActionExecutionOutput]
    class ActionExecutionDetail < Struct.new(
      nil,
      :pipeline_execution_id,
      :action_execution_id,
      :pipeline_version,
      :stage_name,
      :action_name,
      :start_time,
      :last_update_time,
      :updated_by,
      :status,
      :input,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter values for the action execution.</p>
    # @!attribute pipeline_execution_id
    #   <p>The pipeline execution ID used to filter action execution history.</p>
    #   @return [String]
    # @!attribute latest_in_pipeline_execution
    #   <p>The latest execution in the pipeline.</p>
    #            <note>
    #               <p>Filtering on the latest execution is available for executions run on or after
    #                   February 08, 2024.</p>
    #            </note>
    #   @return [Types::LatestInPipelineExecutionFilter]
    class ActionExecutionFilter < Struct.new(
      nil,
      :pipeline_execution_id,
      :latest_in_pipeline_execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input information used for an action execution.</p>
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #   @return [Types::ActionTypeId]
    # @!attribute configuration
    #   <p>Configuration data for an action execution.</p>
    #   @return [Hash<String, String>]
    # @!attribute resolved_configuration
    #   <p>Configuration data for an action execution with all variable references replaced with
    #               their real values for the execution.</p>
    #   @return [Hash<String, String>]
    # @!attribute role_arn
    #   <p>The ARN of the IAM service role that performs the declared action. This is assumed
    #               through the roleArn for the pipeline. </p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region for the action, such as us-east-1.</p>
    #   @return [String]
    # @!attribute input_artifacts
    #   <p>Details of input artifacts of the action that correspond to the action
    #               execution.</p>
    #   @return [Array<Types::ArtifactDetail>]
    # @!attribute namespace
    #   <p>The variable namespace associated with the action. All variables produced as output by
    #               this action fall under this namespace.</p>
    #   @return [String]
    class ActionExecutionInput < Struct.new(
      nil,
      :action_type_id,
      :configuration,
      :resolved_configuration,
      :role_arn,
      :region,
      :input_artifacts,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action execution was not found.</p>
    # @!attribute message
    #   @return [String]
    class ActionExecutionNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output details listed for an action execution, such as the action execution
    #             result.</p>
    # @!attribute output_artifacts
    #   <p>Details of output artifacts of the action that correspond to the action
    #               execution.</p>
    #   @return [Array<Types::ArtifactDetail>]
    # @!attribute execution_result
    #   <p>Execution result information listed in the output details for an action
    #               execution.</p>
    #   @return [Types::ActionExecutionResult]
    # @!attribute output_variables
    #   <p>The outputVariables field shows the key-value pairs that were output as part of that
    #               execution.</p>
    #   @return [Hash<String, String>]
    class ActionExecutionOutput < Struct.new(
      nil,
      :output_artifacts,
      :execution_result,
      :output_variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Execution result information, such as the external execution ID.</p>
    # @!attribute external_execution_id
    #   <p>The action provider's external ID for the action execution.</p>
    #   @return [String]
    # @!attribute external_execution_summary
    #   <p>The action provider's summary for the action execution.</p>
    #   @return [String]
    # @!attribute external_execution_url
    #   <p>The deepest external link to the external resource (for example, a repository URL or
    #               deployment endpoint) that is used when running the action.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Represents information about an error in CodePipeline.</p>
    #   @return [Types::ErrorDetails]
    # @!attribute log_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the log stream for the action compute.</p>
    #   @return [String]
    class ActionExecutionResult < Struct.new(
      nil,
      :external_execution_id,
      :external_execution_summary,
      :external_execution_url,
      :error_details,
      :log_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified action cannot be found.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class ActionNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the version (or revision) of an action.</p>
    # @!attribute revision_id
    #   <p>The system-generated unique ID that identifies the revision number of the
    #               action.</p>
    #   @return [String]
    # @!attribute revision_change_id
    #   <p>The unique identifier of the change that set the state to this revision (for
    #               example, a deployment ID or timestamp).</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date and time when the most recent version of the action was created, in
    #               timestamp format.</p>
    #   @return [Time]
    class ActionRevision < Struct.new(
      nil,
      :revision_id,
      :revision_change_id,
      :created,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the state of an action.</p>
    # @!attribute action_name
    #   <p>The name of the action.</p>
    #   @return [String]
    # @!attribute current_revision
    #   <p>Represents information about the version (or revision) of an action.</p>
    #   @return [Types::ActionRevision]
    # @!attribute latest_execution
    #   <p>Represents information about the run of an action.</p>
    #   @return [Types::ActionExecution]
    # @!attribute entity_url
    #   <p>A URL link for more information about the state of the action, such as a deployment
    #               group details page.</p>
    #   @return [String]
    # @!attribute revision_url
    #   <p>A URL link for more information about the revision, such as a commit details
    #               page.</p>
    #   @return [String]
    class ActionState < Struct.new(
      nil,
      :action_name,
      :current_revision,
      :latest_execution,
      :entity_url,
      :revision_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the details of an action type.</p>
    # @!attribute id
    #   <p>Represents information about an action type.</p>
    #   @return [Types::ActionTypeId]
    # @!attribute settings
    #   <p>The settings for the action type.</p>
    #   @return [Types::ActionTypeSettings]
    # @!attribute action_configuration_properties
    #   <p>The configuration properties for the action type.</p>
    #   @return [Array<Types::ActionConfigurationProperty>]
    # @!attribute input_artifact_details
    #   <p>The details of the input artifact for the action, such as its commit ID.</p>
    #   @return [Types::ArtifactDetails]
    # @!attribute output_artifact_details
    #   <p>The details of the output artifact of the action, such as its commit ID.</p>
    #   @return [Types::ArtifactDetails]
    class ActionType < Struct.new(
      nil,
      :id,
      :settings,
      :action_configuration_properties,
      :input_artifact_details,
      :output_artifact_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about parameters for artifacts associated with the action type, such as
    #             the minimum and maximum artifacts allowed.</p>
    # @!attribute minimum_count
    #   <p>The minimum number of artifacts that can be used with the action type. For example,
    #               you should specify a minimum and maximum of zero input artifacts for an action type with
    #               a category of <code>source</code>.</p>
    #   @return [Integer]
    # @!attribute maximum_count
    #   <p>The maximum number of artifacts that can be used with the actiontype. For example, you
    #               should specify a minimum and maximum of zero input artifacts for an action type with a
    #               category of <code>source</code>.</p>
    #   @return [Integer]
    class ActionTypeArtifactDetails < Struct.new(
      nil,
      :minimum_count,
      :maximum_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:minimum_count] = 0 unless options.key?(:minimum_count)
        options[:maximum_count] = 0 unless options.key?(:maximum_count)
        super
      end
    end

    # <p>The parameters for the action type definition that are provided when the action type
    #             is created or updated.</p>
    # @!attribute description
    #   <p>The description for the action type to be updated.</p>
    #   @return [String]
    # @!attribute executor
    #   <p>Information about the executor for an action type that was created with any supported
    #               integration model.</p>
    #   @return [Types::ActionTypeExecutor]
    # @!attribute id
    #   <p>The action category, owner, provider, and version of the action type to be
    #               updated.</p>
    #   @return [Types::ActionTypeIdentifier]
    # @!attribute input_artifact_details
    #   <p>Details for the artifacts, such as application files, to be worked on by the action.
    #               For example, the minimum and maximum number of input artifacts allowed.</p>
    #   @return [Types::ActionTypeArtifactDetails]
    # @!attribute output_artifact_details
    #   <p>Details for the output artifacts, such as a built application, that are the result of
    #               the action. For example, the minimum and maximum number of output artifacts
    #               allowed.</p>
    #   @return [Types::ActionTypeArtifactDetails]
    # @!attribute permissions
    #   <p>Details identifying the accounts with permissions to use the action type.</p>
    #   @return [Types::ActionTypePermissions]
    # @!attribute properties
    #   <p>The properties of the action type to be updated.</p>
    #   @return [Array<Types::ActionTypeProperty>]
    # @!attribute urls
    #   <p>The links associated with the action type to be updated.</p>
    #   @return [Types::ActionTypeUrls]
    class ActionTypeDeclaration < Struct.new(
      nil,
      :description,
      :executor,
      :id,
      :input_artifact_details,
      :output_artifact_details,
      :permissions,
      :properties,
      :urls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action engine, or executor, for an action type created for a provider, where the
    #             action is to be used by customers of the provider. The action engine is associated with
    #             the model used to create and update the action, such as the Lambda integration
    #             model.</p>
    # @!attribute configuration
    #   <p>The action configuration properties for the action type. These properties are
    #               specified in the action definition when the action type is created.</p>
    #   @return [Types::ExecutorConfiguration]
    # @!attribute type
    #   <p>The integration model used to create and update the action type, <code>Lambda</code>
    #               or <code>JobWorker</code>. </p>
    #   @return [String]
    # @!attribute policy_statements_template
    #   <p>The policy statement that specifies the permissions in the CodePipeline customer
    #               account that are needed to successfully run an action.</p>
    #            <p>To grant permission to another account, specify the account ID as the Principal, a
    #               domain-style identifier defined by the service, for example
    #                   <code>codepipeline.amazonaws.com</code>.</p>
    #            <note>
    #               <p>The size of the passed JSON policy document cannot exceed 2048 characters.</p>
    #            </note>
    #   @return [String]
    # @!attribute job_timeout
    #   <p>The timeout in seconds for the job. An action execution can have multiple jobs. This
    #               is the timeout for a single job, not the entire action execution.</p>
    #   @return [Integer]
    class ActionTypeExecutor < Struct.new(
      nil,
      :configuration,
      :type,
      :policy_statements_template,
      :job_timeout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about an action type.</p>
    # @!attribute category
    #   <p>A category defines what kind of action can be taken in the stage, and constrains
    #               the provider type for the action. Valid categories are limited to one of the following
    #               values. </p>
    #            <ul>
    #               <li>
    #                  <p>Source</p>
    #               </li>
    #               <li>
    #                  <p>Build</p>
    #               </li>
    #               <li>
    #                  <p>Test</p>
    #               </li>
    #               <li>
    #                  <p>Deploy</p>
    #               </li>
    #               <li>
    #                  <p>Invoke</p>
    #               </li>
    #               <li>
    #                  <p>Approval</p>
    #               </li>
    #               <li>
    #                  <p>Compute</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute owner
    #   <p>The creator of the action being called. There are three valid values for the
    #                   <code>Owner</code> field in the action category section within your pipeline
    #               structure: <code>AWS</code>, <code>ThirdParty</code>, and <code>Custom</code>. For more
    #               information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#actions-valid-providers">Valid Action Types and Providers in CodePipeline</a>.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the service being called by the action. Valid providers are
    #               determined by the action category. For example, an action in the Deploy category type
    #               might have a provider of CodeDeploy, which would be specified as
    #               <code>CodeDeploy</code>. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#actions-valid-providers">Valid Action Types and Providers in CodePipeline</a>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>A string that describes the action version.</p>
    #   @return [String]
    class ActionTypeId < Struct.new(
      nil,
      :category,
      :owner,
      :provider,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the category, owner, provider, and version of the action type.</p>
    # @!attribute category
    #   <p>Defines what kind of action can be taken in the stage, one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Source</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Build</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Test</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Approval</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Invoke</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute owner
    #   <p>The creator of the action type being called: <code>AWS</code> or
    #                   <code>ThirdParty</code>.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the action type being called. The provider name is supplied when the
    #               action type is created.</p>
    #   @return [String]
    # @!attribute version
    #   <p>A string that describes the action type version.</p>
    #   @return [String]
    class ActionTypeIdentifier < Struct.new(
      nil,
      :category,
      :owner,
      :provider,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified action type cannot be found.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class ActionTypeNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details identifying the users with permissions to use the action type.</p>
    # @!attribute allowed_accounts
    #   <p>A list of Amazon Web Services account IDs with access to use the action type in their
    #               pipelines.</p>
    #   @return [Array<String>]
    class ActionTypePermissions < Struct.new(
      nil,
      :allowed_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about each property specified in the action configuration, such
    #             as the description and key name that display for the customer using the action
    #             type.</p>
    # @!attribute name
    #   <p>The property name that is displayed to users.</p>
    #   @return [String]
    # @!attribute optional
    #   <p>Whether the configuration property is an optional value.</p>
    #   @return [Boolean]
    # @!attribute key
    #   <p>Whether the configuration property is a key.</p>
    #   @return [Boolean]
    # @!attribute no_echo
    #   <p>Whether to omit the field value entered by the customer in the log. If
    #                   <code>true</code>, the value is not saved in CloudTrail logs for the action
    #               execution.</p>
    #   @return [Boolean]
    # @!attribute queryable
    #   <p>Indicates that the property is used with polling. An action type can have up to one
    #               queryable property. If it has one, that property must be both required and not
    #               secret.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the property that is displayed to users.</p>
    #   @return [String]
    class ActionTypeProperty < Struct.new(
      nil,
      :name,
      :optional,
      :key,
      :no_echo,
      :queryable,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:optional] = false unless options.key?(:optional)
        options[:key] = false unless options.key?(:key)
        options[:no_echo] = false unless options.key?(:no_echo)
        options[:queryable] = false unless options.key?(:queryable)
        super
      end
    end

    # <p>Returns information about the settings for an action type.</p>
    # @!attribute third_party_configuration_url
    #   <p>The URL of a sign-up page where users can sign up for an external service and
    #               perform initial configuration of the action provided by that service.</p>
    #   @return [String]
    # @!attribute entity_url_template
    #   <p>The URL returned to the CodePipeline console that provides a deep link to the
    #               resources of the external system, such as the configuration page for a CodeDeploy
    #               deployment group. This link is provided as part of the action display in the
    #               pipeline.</p>
    #   @return [String]
    # @!attribute execution_url_template
    #   <p>The URL returned to the CodePipeline console that contains a link to the
    #               top-level landing page for the external system, such as the console page for CodeDeploy.
    #               This link is shown on the pipeline view page in the CodePipeline console and
    #               provides a link to the execution entity of the external action.</p>
    #   @return [String]
    # @!attribute revision_url_template
    #   <p>The URL returned to the CodePipeline console that contains a link to the page
    #               where customers can update or change the configuration of the external action.</p>
    #   @return [String]
    class ActionTypeSettings < Struct.new(
      nil,
      :third_party_configuration_url,
      :entity_url_template,
      :execution_url_template,
      :revision_url_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about URLs for web pages that display to customers as links on the
    #             pipeline view, such as an external configuration page for the action type.</p>
    # @!attribute configuration_url
    #   <p>The URL returned to the CodePipeline console that contains a link to the page
    #               where customers can configure the external action.</p>
    #   @return [String]
    # @!attribute entity_url_template
    #   <p>The URL returned to the CodePipeline console that provides a deep link to the
    #               resources of the external system, such as a status page. This link is provided as part
    #               of the action display in the pipeline.</p>
    #   @return [String]
    # @!attribute execution_url_template
    #   <p>The link to an execution page for the action type in progress. For example, for a
    #               CodeDeploy action, this link is shown on the pipeline view page in the CodePipeline console, and it links to a CodeDeploy status page.</p>
    #   @return [String]
    # @!attribute revision_url_template
    #   <p>The URL returned to the CodePipeline console that contains a link to the page
    #               where customers can update or change the configuration of the external action.</p>
    #   @return [String]
    class ActionTypeUrls < Struct.new(
      nil,
      :configuration_url,
      :entity_url_template,
      :execution_url_template,
      :revision_url_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The approval action has already been approved or rejected.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class ApprovalAlreadyCompletedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the result of an approval request.</p>
    # @!attribute summary
    #   <p>The summary of the current status of the approval request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The response submitted by a reviewer assigned to an approval action
    #               request.</p>
    #   @return [String]
    class ApprovalResult < Struct.new(
      nil,
      :summary,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Artifacts are the files that are worked on by actions in the pipeline. See the
    #             action configuration for each action for details about artifact parameters. For example,
    #             the S3 source action artifact is a file name (or file path), and the files are generally
    #             provided as a ZIP file. Example artifact name: SampleApp_Windows.zip</p>
    # @!attribute name
    #   <p>The artifact's name.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The artifact's revision ID. Depending on the type of object, this could be a commit
    #               ID (GitHub) or a revision ID (Amazon S3).</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of an artifact.</p>
    #   @return [Types::ArtifactLocation]
    class Artifact < Struct.new(
      nil,
      :name,
      :revision,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Artifact details for the action execution, such as the artifact location.</p>
    # @!attribute name
    #   <p>The artifact object name for the action execution.</p>
    #   @return [String]
    # @!attribute s3location
    #   <p>The Amazon S3 artifact location for the action execution.</p>
    #   @return [Types::S3Location]
    class ArtifactDetail < Struct.new(
      nil,
      :name,
      :s3location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the details of an artifact.</p>
    # @!attribute minimum_count
    #   <p>The minimum number of artifacts allowed for the action type.</p>
    #   @return [Integer]
    # @!attribute maximum_count
    #   <p>The maximum number of artifacts allowed for the action type.</p>
    #   @return [Integer]
    class ArtifactDetails < Struct.new(
      nil,
      :minimum_count,
      :maximum_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:minimum_count] = 0 unless options.key?(:minimum_count)
        options[:maximum_count] = 0 unless options.key?(:maximum_count)
        super
      end
    end

    # <p>Represents information about the location of an artifact.</p>
    # @!attribute type
    #   <p>The type of artifact in the location.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The S3 bucket that contains the artifact.</p>
    #   @return [Types::S3ArtifactLocation]
    class ArtifactLocation < Struct.new(
      nil,
      :type,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents revision details of an artifact. </p>
    # @!attribute name
    #   <p>The name of an artifact. This name might be system-generated, such as "MyApp", or
    #               defined by the user when an action is created.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the artifact.</p>
    #   @return [String]
    # @!attribute revision_change_identifier
    #   <p>An additional identifier for a revision, such as a commit date or, for artifacts
    #               stored in Amazon S3 buckets, the ETag value.</p>
    #   @return [String]
    # @!attribute revision_summary
    #   <p>Summary information about the most recent revision of the artifact. For GitHub and
    #               CodeCommit repositories, the commit message. For Amazon S3 buckets or actions, the
    #               user-provided content of a <code>codepipeline-artifact-revision-summary</code> key
    #               specified in the object metadata.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date and time when the most recent revision of the artifact was created, in
    #               timestamp format.</p>
    #   @return [Time]
    # @!attribute revision_url
    #   <p>The commit ID for the artifact revision. For artifacts stored in GitHub or
    #               CodeCommit repositories, the commit ID is linked to a commit details page.</p>
    #   @return [String]
    class ArtifactRevision < Struct.new(
      nil,
      :name,
      :revision_id,
      :revision_change_identifier,
      :revision_summary,
      :created,
      :revision_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 bucket where artifacts for the pipeline are stored.</p>
    #          <note>
    #             <p>You must include either <code>artifactStore</code> or
    #                     <code>artifactStores</code> in your pipeline, but you cannot use both. If you
    #                 create a cross-region action in your pipeline, you must use
    #                     <code>artifactStores</code>.</p>
    #          </note>
    # @!attribute type
    #   <p>The type of the artifact store, such as S3.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The S3 bucket used for storing the artifacts for a pipeline. You can specify the
    #               name of an S3 bucket but not a folder in the bucket. A folder to contain the pipeline
    #               artifacts is created for you based on the name of the pipeline. You can use any S3
    #               bucket in the same Amazon Web Services Region as the pipeline to store your pipeline
    #               artifacts.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The encryption key used to encrypt the data in the artifact store, such as an
    #                   Amazon Web Services Key Management Service key. If this is undefined, the default key
    #               for Amazon S3 is used.</p>
    #   @return [Types::EncryptionKey]
    class ArtifactStore < Struct.new(
      nil,
      :type,
      :location,
      :encryption_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The conditions for making checks for entry to a stage. For more information about
    #             conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage conditions</a>
    #             and <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html">How do
    #                 stage conditions work?</a>. </p>
    # @!attribute conditions
    #   <p>The conditions that are configured as entry conditions.</p>
    #   @return [Array<Types::Condition>]
    class BeforeEntryConditions < Struct.new(
      nil,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reserved for future use.</p>
    # @!attribute name
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class BlockerDeclaration < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to modify the tag due to a simultaneous update request.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pipeline has reached the limit for concurrent pipeline executions.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentPipelineExecutionsLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The condition for the stage. A condition is made up of the rules and the result for
    #             the condition. For more information about conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage conditions</a>
    #             and <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html">How do
    #                 stage conditions work?</a>.. For more information about rules, see the <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html">CodePipeline rule reference</a>.</p>
    # @!attribute result
    #   <p>The action to be done when the condition is met. For example, rolling back an
    #               execution for a failure condition.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>The rules that make up the condition.</p>
    #   @return [Array<Types::RuleDeclaration>]
    class Condition < Struct.new(
      nil,
      :result,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The run of a condition.</p>
    # @!attribute status
    #   <p>The status of the run for a condition.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>The summary of information about a run for a condition.</p>
    #   @return [String]
    # @!attribute last_status_change
    #   <p>The last status change of the condition.</p>
    #   @return [Time]
    class ConditionExecution < Struct.new(
      nil,
      :status,
      :summary,
      :last_status_change,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to override because the condition does not allow overrides.</p>
    # @!attribute message
    #   @return [String]
    class ConditionNotOverridableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the state of the condition.</p>
    # @!attribute latest_execution
    #   <p>The state of the latest run of the rule.</p>
    #   @return [Types::ConditionExecution]
    # @!attribute rule_states
    #   <p>The state of the rules for the condition.</p>
    #   @return [Array<Types::RuleState>]
    class ConditionState < Struct.new(
      nil,
      :latest_execution,
      :rule_states,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request cannot be handled because the pipeline is busy handling ongoing
    #             activities. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a CreateCustomActionType operation.</p>
    # @!attribute category
    #   <p>The category of the custom action, such as a build action or a test
    #               action.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the service used in the custom action, such as
    #               CodeDeploy.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version identifier of the custom action.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>URLs that provide users information about this custom action.</p>
    #   @return [Types::ActionTypeSettings]
    # @!attribute configuration_properties
    #   <p>The configuration properties for the custom action.</p>
    #            <note>
    #               <p>You can refer to a name in the configuration properties of the custom action
    #                   within the URL templates by following the format of {Config:name}, as long as the
    #                   configuration property is both required and not secret. For more information, see
    #                       <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html">Create a
    #                       Custom Action for a Pipeline</a>.</p>
    #            </note>
    #   @return [Array<Types::ActionConfigurationProperty>]
    # @!attribute input_artifact_details
    #   <p>The details of the input artifact for the action, such as its commit ID.</p>
    #   @return [Types::ArtifactDetails]
    # @!attribute output_artifact_details
    #   <p>The details of the output artifact of the action, such as its commit ID.</p>
    #   @return [Types::ArtifactDetails]
    # @!attribute tags
    #   <p>The tags for the custom action.</p>
    #   @return [Array<Types::Tag>]
    class CreateCustomActionTypeInput < Struct.new(
      nil,
      :category,
      :provider,
      :version,
      :settings,
      :configuration_properties,
      :input_artifact_details,
      :output_artifact_details,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateCustomActionType</code> operation.</p>
    # @!attribute action_type
    #   <p>Returns information about the details of an action type.</p>
    #   @return [Types::ActionType]
    # @!attribute tags
    #   <p>Specifies the tags applied to the custom action.</p>
    #   @return [Array<Types::Tag>]
    class CreateCustomActionTypeOutput < Struct.new(
      nil,
      :action_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreatePipeline</code> action.</p>
    # @!attribute pipeline
    #   <p>Represents the structure of actions and stages to be performed in the pipeline.
    #           </p>
    #   @return [Types::PipelineDeclaration]
    # @!attribute tags
    #   <p>The tags for the pipeline.</p>
    #   @return [Array<Types::Tag>]
    class CreatePipelineInput < Struct.new(
      nil,
      :pipeline,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreatePipeline</code> action.</p>
    # @!attribute pipeline
    #   <p>Represents the structure of actions and stages to be performed in the pipeline.
    #           </p>
    #   @return [Types::PipelineDeclaration]
    # @!attribute tags
    #   <p>Specifies the tags applied to the pipeline.</p>
    #   @return [Array<Types::Tag>]
    class CreatePipelineOutput < Struct.new(
      nil,
      :pipeline,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about a current revision.</p>
    # @!attribute revision
    #   <p>The revision ID of the current version of an artifact.</p>
    #   @return [String]
    # @!attribute change_identifier
    #   <p>The change identifier for the current revision.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date and time when the most recent revision of the artifact was created, in
    #               timestamp format.</p>
    #   @return [Time]
    # @!attribute revision_summary
    #   <p>The summary of the most recent revision of the artifact.</p>
    #   @return [String]
    class CurrentRevision < Struct.new(
      nil,
      :revision,
      :change_identifier,
      :created,
      :revision_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteCustomActionType</code> operation. The custom
    #             action will be marked as deleted.</p>
    # @!attribute category
    #   <p>The category of the custom action that you want to delete, such as source or
    #               deploy.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the service used in the custom action, such as
    #               CodeDeploy.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the custom action to delete.</p>
    #   @return [String]
    class DeleteCustomActionTypeInput < Struct.new(
      nil,
      :category,
      :provider,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeletePipeline</code> action.</p>
    # @!attribute name
    #   <p>The name of the pipeline to be deleted.</p>
    #   @return [String]
    class DeletePipelineInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the webhook you want to delete.</p>
    #   @return [String]
    class DeleteWebhookInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWebhookOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target for the deploy action.</p>
    # @!attribute target_id
    #   <p>The ID of the target for the deploy action.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The type of target for the deploy action.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the deploy action.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time for the deploy action.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the deploy action.</p>
    #   @return [Time]
    # @!attribute events
    #   <p>The lifecycle events for the deploy action.</p>
    #   @return [Array<Types::DeployTargetEvent>]
    class DeployActionExecutionTarget < Struct.new(
      nil,
      :target_id,
      :target_type,
      :status,
      :start_time,
      :end_time,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A lifecycle event for the deploy action.</p>
    # @!attribute name
    #   <p>The name of the event for the deploy action.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the event for the deploy action.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time for the event for the deploy action.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the event for the deploy action.</p>
    #   @return [Time]
    # @!attribute context
    #   <p>The context for the event for the deploy action.</p>
    #   @return [Types::DeployTargetEventContext]
    class DeployTargetEvent < Struct.new(
      nil,
      :name,
      :status,
      :start_time,
      :end_time,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The context for the event for the deploy action.</p>
    # @!attribute ssm_command_id
    #   <p>The command ID for the event for the deploy action.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The context message for the event for the deploy action.</p>
    #   @return [String]
    class DeployTargetEventContext < Struct.new(
      nil,
      :ssm_command_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute webhook_name
    #   <p>The name of the webhook you want to deregister.</p>
    #   @return [String]
    class DeregisterWebhookWithThirdPartyInput < Struct.new(
      nil,
      :webhook_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterWebhookWithThirdPartyOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DisableStageTransition</code> action.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline in which you want to disable the flow of artifacts from
    #               one stage to another.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage where you want to disable the inbound or outbound transition
    #               of artifacts.</p>
    #   @return [String]
    # @!attribute transition_type
    #   <p>Specifies whether artifacts are prevented from transitioning into the stage and
    #               being processed by the actions in that stage (inbound), or prevented from transitioning
    #               from the stage after they have been processed by the actions in that stage
    #               (outbound).</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason given to the user that a stage is disabled, such as waiting for manual
    #               approval or manual tests. This message is displayed in the pipeline console
    #               UI.</p>
    #   @return [String]
    class DisableStageTransitionInput < Struct.new(
      nil,
      :pipeline_name,
      :stage_name,
      :transition_type,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pipeline execution is already in a <code>Stopping</code> state. If you already
    #             chose to stop and wait, you cannot make that request again. You can choose to stop and
    #             abandon now, but be aware that this option can lead to failed tasks or out of sequence
    #             tasks. If you already chose to stop and abandon, you cannot make that request
    #             again.</p>
    # @!attribute message
    #   @return [String]
    class DuplicatedStopRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an <code>EnableStageTransition</code> action.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline in which you want to enable the flow of artifacts from one
    #               stage to another.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage where you want to enable the transition of artifacts, either
    #               into the stage (inbound) or from that stage to the next stage (outbound).</p>
    #   @return [String]
    # @!attribute transition_type
    #   <p>Specifies whether artifacts are allowed to enter the stage and be processed by the
    #               actions in that stage (inbound) or whether already processed artifacts are allowed to
    #               transition to the next stage (outbound).</p>
    #   @return [String]
    class EnableStageTransitionInput < Struct.new(
      nil,
      :pipeline_name,
      :stage_name,
      :transition_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the key used to encrypt data in the artifact store,
    #             such as an Amazon Web Services Key Management Service (Key Management Service)
    #             key.</p>
    # @!attribute id
    #   <p>The ID used to identify the key. For an Amazon Web Services KMS key, you can use the
    #               key ID, the key ARN, or the alias ARN.</p>
    #            <note>
    #               <p>Aliases are recognized only in the account that created the KMS
    #                   key. For cross-account actions, you can only use the key ID or key ARN to identify
    #                   the key. Cross-account actions involve using the role from the other account
    #                   (AccountB), so specifying the key ID will use the key from the other account
    #                   (AccountB).</p>
    #            </note>
    #   @return [String]
    # @!attribute type
    #   <p>The type of encryption key, such as an Amazon Web Services KMS key. When creating or
    #               updating a pipeline, the value must be set to 'KMS'.</p>
    #   @return [String]
    class EncryptionKey < Struct.new(
      nil,
      :id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The environment variables for the action.</p>
    # @!attribute name
    #   <p>The environment variable name in the key-value pair.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The environment variable value in the key-value pair.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the type of use for the environment variable value. The value can be either
    #               <code>PLAINTEXT</code> or <code>SECRETS_MANAGER</code>. If the value is <code>SECRETS_MANAGER</code>, provide the Secrets
    #               reference in the EnvironmentVariable value.</p>
    #   @return [String]
    class EnvironmentVariable < Struct.new(
      nil,
      :name,
      :value,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about an error in CodePipeline.</p>
    # @!attribute code
    #   <p>The system ID or number code of the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The text of the error message.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the actions taken and results produced on an artifact as it passes
    #             through stages in the pipeline.</p>
    # @!attribute summary
    #   <p>The summary of the current status of the actions.</p>
    #   @return [String]
    # @!attribute external_execution_id
    #   <p>The system-generated unique ID of this action used to identify this job worker in
    #               any external systems, such as CodeDeploy.</p>
    #   @return [String]
    # @!attribute percent_complete
    #   <p>The percentage of work completed on the action, represented on a scale of 0 to 100
    #               percent.</p>
    #   @return [Integer]
    class ExecutionDetails < Struct.new(
      nil,
      :summary,
      :external_execution_id,
      :percent_complete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The interaction or event that started a pipeline execution.</p>
    # @!attribute trigger_type
    #   <p>The type of change-detection method, command, or user interaction that started a
    #               pipeline execution.</p>
    #   @return [String]
    # @!attribute trigger_detail
    #   <p>Detail related to the event that started a pipeline execution, such as the webhook ARN
    #               of the webhook that triggered the pipeline execution or the user ARN for a
    #               user-initiated <code>start-pipeline-execution</code> CLI command.</p>
    #   @return [String]
    class ExecutionTrigger < Struct.new(
      nil,
      :trigger_type,
      :trigger_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action engine, or executor, related to the supported integration model used to
    #             create and update the action type. The available executor types are <code>Lambda</code>
    #             and <code>JobWorker</code>.</p>
    # @!attribute lambda_executor_configuration
    #   <p>Details about the <code>Lambda</code> executor of the action type.</p>
    #   @return [Types::LambdaExecutorConfiguration]
    # @!attribute job_worker_executor_configuration
    #   <p>Details about the <code>JobWorker</code> executor of the action type.</p>
    #   @return [Types::JobWorkerExecutorConfiguration]
    class ExecutorConfiguration < Struct.new(
      nil,
      :lambda_executor_configuration,
      :job_worker_executor_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that specifies the result, such as rollback, to occur upon stage
    #             failure. For more information about conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage conditions</a>
    #             and <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html">How do
    #                 stage conditions work?</a>. </p>
    # @!attribute result
    #   <p>The specified result for when the failure conditions are met, such as rolling back the
    #               stage.</p>
    #   @return [String]
    # @!attribute retry_configuration
    #   <p>The retry configuration specifies automatic retry for a failed stage, along with the
    #               configured retry mode.</p>
    #   @return [Types::RetryConfiguration]
    # @!attribute conditions
    #   <p>The conditions that are configured as failure conditions. For more information about
    #               conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage conditions</a>
    #               and <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html">How do
    #                   stage conditions work?</a>.</p>
    #   @return [Array<Types::Condition>]
    class FailureConditions < Struct.new(
      nil,
      :result,
      :retry_configuration,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about failure details.</p>
    # @!attribute type
    #   <p>The type of the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message about the failure.</p>
    #   @return [String]
    # @!attribute external_execution_id
    #   <p>The external ID of the run of the action that failed.</p>
    #   @return [String]
    class FailureDetails < Struct.new(
      nil,
      :type,
      :message,
      :external_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute category
    #   <p>Defines what kind of action can be taken in the stage. The following are the valid
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Source</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Build</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Test</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Approval</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Invoke</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Compute</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute owner
    #   <p>The creator of an action type that was created with any supported integration model.
    #               There are two valid values: <code>AWS</code> and <code>ThirdParty</code>.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the action type being called. The provider name is specified when the
    #               action type is created.</p>
    #   @return [String]
    # @!attribute version
    #   <p>A string that describes the action type version.</p>
    #   @return [String]
    class GetActionTypeInput < Struct.new(
      nil,
      :category,
      :owner,
      :provider,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_type
    #   <p>The action type information for the requested action type, such as the action type
    #               ID.</p>
    #   @return [Types::ActionTypeDeclaration]
    class GetActionTypeOutput < Struct.new(
      nil,
      :action_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetJobDetails</code> action.</p>
    # @!attribute job_id
    #   <p>The unique system-generated ID for the job.</p>
    #   @return [String]
    class GetJobDetailsInput < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetJobDetails</code> action.</p>
    # @!attribute job_details
    #   <p>The details of the job.</p>
    #            <note>
    #               <p>If AWSSessionCredentials is used, a long-running job can call
    #                       <code>GetJobDetails</code> again to obtain new credentials.</p>
    #            </note>
    #   @return [Types::JobDetails]
    class GetJobDetailsOutput < Struct.new(
      nil,
      :job_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetPipelineExecution</code> action.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline about which you want to get execution details.</p>
    #   @return [String]
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution about which you want to get execution
    #               details.</p>
    #   @return [String]
    class GetPipelineExecutionInput < Struct.new(
      nil,
      :pipeline_name,
      :pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetPipelineExecution</code> action.</p>
    # @!attribute pipeline_execution
    #   <p>Represents information about the execution of a pipeline.</p>
    #   @return [Types::PipelineExecution]
    class GetPipelineExecutionOutput < Struct.new(
      nil,
      :pipeline_execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetPipeline</code> action.</p>
    # @!attribute name
    #   <p>The name of the pipeline for which you want to get information. Pipeline names must
    #               be unique in an Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the pipeline. If you do not specify a version, defaults to
    #               the current version.</p>
    #   @return [Integer]
    class GetPipelineInput < Struct.new(
      nil,
      :name,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetPipeline</code> action.</p>
    # @!attribute pipeline
    #   <p>Represents the structure of actions and stages to be performed in the pipeline.
    #           </p>
    #   @return [Types::PipelineDeclaration]
    # @!attribute metadata
    #   <p>Represents the pipeline metadata information returned as part of the output of a
    #                   <code>GetPipeline</code> action.</p>
    #   @return [Types::PipelineMetadata]
    class GetPipelineOutput < Struct.new(
      nil,
      :pipeline,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetPipelineState</code> action.</p>
    # @!attribute name
    #   <p>The name of the pipeline about which you want to get information.</p>
    #   @return [String]
    class GetPipelineStateInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetPipelineState</code> action.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline for which you want to get the state.</p>
    #   @return [String]
    # @!attribute pipeline_version
    #   <p>The version number of the pipeline.</p>
    #            <note>
    #               <p>A newly created pipeline is always assigned a version number of
    #                   <code>1</code>.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute stage_states
    #   <p>A list of the pipeline stage output information, including stage name, state, most
    #               recent run details, whether the stage is disabled, and other data.</p>
    #   @return [Array<Types::StageState>]
    # @!attribute created
    #   <p>The date and time the pipeline was created, in timestamp format.</p>
    #   @return [Time]
    # @!attribute updated
    #   <p>The date and time the pipeline was last updated, in timestamp format.</p>
    #   @return [Time]
    class GetPipelineStateOutput < Struct.new(
      nil,
      :pipeline_name,
      :pipeline_version,
      :stage_states,
      :created,
      :updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetThirdPartyJobDetails</code> action.</p>
    # @!attribute job_id
    #   <p>The unique system-generated ID used for identifying the job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #   @return [String]
    class GetThirdPartyJobDetailsInput < Struct.new(
      nil,
      :job_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetThirdPartyJobDetails</code> action.</p>
    # @!attribute job_details
    #   <p>The details of the job, including any protected values defined for the
    #               job.</p>
    #   @return [Types::ThirdPartyJobDetails]
    class GetThirdPartyJobDetailsOutput < Struct.new(
      nil,
      :job_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Git repository branches specified as filter criteria to start the
    #             pipeline.</p>
    # @!attribute includes
    #   <p>The list of patterns of Git branches that, when a commit is pushed, are to be
    #               included as criteria that starts the pipeline.</p>
    #   @return [Array<String>]
    # @!attribute excludes
    #   <p>The list of patterns of Git branches that, when a commit is pushed, are to be
    #               excluded from starting the pipeline.</p>
    #   @return [Array<String>]
    class GitBranchFilterCriteria < Struct.new(
      nil,
      :includes,
      :excludes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A type of trigger configuration for Git-based source actions.</p>
    #          <note>
    #             <p>You can specify the Git configuration trigger type for all third-party
    #                 Git-based source actions that are supported by the
    #                     <code>CodeStarSourceConnection</code> action type.</p>
    #          </note>
    # @!attribute source_action_name
    #   <p>The name of the pipeline source action where the trigger configuration, such as Git
    #               tags, is specified. The trigger configuration will start the pipeline upon the specified
    #               change only.</p>
    #            <note>
    #               <p>You can only specify one trigger configuration per source action.</p>
    #            </note>
    #   @return [String]
    # @!attribute push
    #   <p>The field where the repository event that will start the pipeline, such as pushing
    #               Git tags, is specified with details.</p>
    #   @return [Array<Types::GitPushFilter>]
    # @!attribute pull_request
    #   <p>The field where the repository event that will start the pipeline is specified as
    #               pull requests.</p>
    #   @return [Array<Types::GitPullRequestFilter>]
    class GitConfiguration < Struct.new(
      nil,
      :source_action_name,
      :push,
      :pull_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Git repository file paths specified as filter criteria to start the
    #             pipeline.</p>
    # @!attribute includes
    #   <p>The list of patterns of Git repository file paths that, when a commit is pushed,
    #               are to be included as criteria that starts the pipeline.</p>
    #   @return [Array<String>]
    # @!attribute excludes
    #   <p>The list of patterns of Git repository file paths that, when a commit is pushed,
    #               are to be excluded from starting the pipeline.</p>
    #   @return [Array<String>]
    class GitFilePathFilterCriteria < Struct.new(
      nil,
      :includes,
      :excludes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The event criteria for the pull request trigger configuration, such as the lists of
    #             branches or file paths to include and exclude.</p>
    #          <p>The following are valid values for the events for this filter:</p>
    #          <ul>
    #             <li>
    #                <p>CLOSED</p>
    #             </li>
    #             <li>
    #                <p>OPEN</p>
    #             </li>
    #             <li>
    #                <p>UPDATED</p>
    #             </li>
    #          </ul>
    # @!attribute events
    #   <p>The field that specifies which pull request events to filter on (OPEN, UPDATED,
    #               CLOSED) for the trigger configuration.</p>
    #   @return [Array<String>]
    # @!attribute branches
    #   <p>The field that specifies to filter on branches for the pull request trigger
    #               configuration.</p>
    #   @return [Types::GitBranchFilterCriteria]
    # @!attribute file_paths
    #   <p>The field that specifies to filter on file paths for the pull request trigger
    #               configuration.</p>
    #   @return [Types::GitFilePathFilterCriteria]
    class GitPullRequestFilter < Struct.new(
      nil,
      :events,
      :branches,
      :file_paths,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The event criteria that specify when a specified repository event will start the
    #             pipeline for the specified trigger configuration, such as the lists of Git tags to
    #             include and exclude.</p>
    # @!attribute tags
    #   <p>The field that contains the details for the Git tags trigger
    #               configuration.</p>
    #   @return [Types::GitTagFilterCriteria]
    # @!attribute branches
    #   <p>The field that specifies to filter on branches for the push trigger
    #               configuration.</p>
    #   @return [Types::GitBranchFilterCriteria]
    # @!attribute file_paths
    #   <p>The field that specifies to filter on file paths for the push trigger
    #               configuration.</p>
    #   @return [Types::GitFilePathFilterCriteria]
    class GitPushFilter < Struct.new(
      nil,
      :tags,
      :branches,
      :file_paths,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Git tags specified as filter criteria for whether a Git tag repository event
    #             will start the pipeline.</p>
    # @!attribute includes
    #   <p>The list of patterns of Git tags that, when pushed, are to be included as criteria
    #               that starts the pipeline.</p>
    #   @return [Array<String>]
    # @!attribute excludes
    #   <p>The list of patterns of Git tags that, when pushed, are to be excluded from
    #               starting the pipeline.</p>
    #   @return [Array<String>]
    class GitTagFilterCriteria < Struct.new(
      nil,
      :includes,
      :excludes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about an artifact to be worked on, such as a test or build
    #             artifact.</p>
    # @!attribute name
    #   <p>The name of the artifact to be worked on (for example, "My App").</p>
    #            <p>Artifacts are the files that are worked on by actions in the pipeline. See the
    #               action configuration for each action for details about artifact parameters. For example,
    #               the S3 source action input artifact is a file name (or file path), and the files are
    #               generally provided as a ZIP file. Example artifact name: SampleApp_Windows.zip</p>
    #            <p>The input artifact of an action must exactly match the output artifact declared in
    #               a preceding action, but the input artifact does not have to be the next action in strict
    #               sequence from the action that provided the output artifact. Actions in parallel can
    #               declare different output artifacts, which are in turn consumed by different following
    #               actions.</p>
    #   @return [String]
    class InputArtifact < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action declaration was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidActionDeclarationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The approval request already received a response or has expired.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidApprovalTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource ARN is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reserved for future use.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidBlockerDeclarationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client token was specified in an invalid format</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidClientTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job was specified in an invalid format or cannot be found.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidJobException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job state was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidJobStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The next token was specified in an invalid format. Make sure that the next token
    #             you provide is the token returned by a previous call.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The nonce was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidNonceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The stage declaration was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidStageDeclarationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidStructureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource tags are invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTagsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified authentication type is in an invalid format.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidWebhookAuthenticationParametersException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified event filter rule is in an invalid format.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class InvalidWebhookFilterPatternException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about a job.</p>
    # @!attribute id
    #   <p>The unique system-generated ID of the job.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Other data about a job.</p>
    #   @return [Types::JobData]
    # @!attribute nonce
    #   <p>A system-generated random number that CodePipeline uses to ensure that the
    #               job is being worked on by only one job worker. Use this number in an <a>AcknowledgeJob</a> request.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account to use when performing the job.</p>
    #   @return [String]
    class Job < Struct.new(
      nil,
      :id,
      :data,
      :nonce,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents other information about a job required for a job worker to complete the
    #             job.</p>
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #   @return [Types::ActionTypeId]
    # @!attribute action_configuration
    #   <p>Represents information about an action configuration.</p>
    #   @return [Types::ActionConfiguration]
    # @!attribute pipeline_context
    #   <p>Represents information about a pipeline to a job worker.</p>
    #            <note>
    #               <p>Includes <code>pipelineArn</code> and <code>pipelineExecutionId</code> for
    #                   custom jobs.</p>
    #            </note>
    #   @return [Types::PipelineContext]
    # @!attribute input_artifacts
    #   <p>The artifact supplied to the job.</p>
    #   @return [Array<Types::Artifact>]
    # @!attribute output_artifacts
    #   <p>The output of the job.</p>
    #   @return [Array<Types::Artifact>]
    # @!attribute artifact_credentials
    #   <p>Represents an Amazon Web Services session credentials object. These credentials are
    #               temporary credentials that are issued by Amazon Web Services Secure Token Service (STS).
    #               They can be used to access input and output artifacts in the S3 bucket used to store
    #               artifacts for the pipeline in CodePipeline.</p>
    #   @return [Types::AWSSessionCredentials]
    # @!attribute continuation_token
    #   <p>A system-generated token, such as a deployment ID, required by a job to continue
    #               the job asynchronously.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>Represents information about the key used to encrypt data in the artifact store,
    #               such as an KMS key. </p>
    #   @return [Types::EncryptionKey]
    class JobData < Struct.new(
      nil,
      :action_type_id,
      :action_configuration,
      :pipeline_context,
      :input_artifacts,
      :output_artifacts,
      :artifact_credentials,
      :continuation_token,
      :encryption_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the details of a job.</p>
    # @!attribute id
    #   <p>The unique system-generated ID of the job.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Represents other information about a job required for a job worker to complete the
    #               job. </p>
    #   @return [Types::JobData]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the job.</p>
    #   @return [String]
    class JobDetails < Struct.new(
      nil,
      :id,
      :data,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job was specified in an invalid format or cannot be found.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class JobNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the polling configuration for the <code>JobWorker</code> action engine,
    #             or executor.</p>
    # @!attribute polling_accounts
    #   <p>The accounts in which the job worker is configured and might poll for jobs as part of
    #               the action execution.</p>
    #   @return [Array<String>]
    # @!attribute polling_service_principals
    #   <p>The service Principals in which the job worker is configured and might poll for jobs
    #               as part of the action execution.</p>
    #   @return [Array<String>]
    class JobWorkerExecutorConfiguration < Struct.new(
      nil,
      :polling_accounts,
      :polling_service_principals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the configuration for the <code>Lambda</code> action engine, or
    #             executor.</p>
    # @!attribute lambda_function_arn
    #   <p>The ARN of the Lambda function used by the action engine.</p>
    #   @return [String]
    class LambdaExecutorConfiguration < Struct.new(
      nil,
      :lambda_function_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The field that specifies to filter on the latest execution in the
    #             pipeline.</p>
    #          <note>
    #             <p>Filtering on the latest execution is available for executions run on or after
    #                 February 08, 2024.</p>
    #          </note>
    # @!attribute pipeline_execution_id
    #   <p>The execution ID for the latest execution in the pipeline.</p>
    #   @return [String]
    # @!attribute start_time_range
    #   <p>The start time to filter on for the latest execution in the pipeline. Valid
    #               options:</p>
    #            <ul>
    #               <li>
    #                  <p>All</p>
    #               </li>
    #               <li>
    #                  <p>Latest</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LatestInPipelineExecutionFilter < Struct.new(
      nil,
      :pipeline_execution_id,
      :start_time_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of pipelines associated with the Amazon Web Services account has exceeded
    #             the limit allowed for the account.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p> The name of the pipeline for which you want to list action execution history.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Input information used to filter action execution history.</p>
    #   @return [Types::ActionExecutionFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Action execution history
    #               is retained for up to 12 months, based on action execution start times. Default value is
    #               100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that was returned from the previous <code>ListActionExecutions</code> call,
    #               which can be used to return the next set of action executions in the list.</p>
    #   @return [String]
    class ListActionExecutionsInput < Struct.new(
      nil,
      :pipeline_name,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_execution_details
    #   <p>The details for a list of recent executions, such as action execution ID.</p>
    #   @return [Array<Types::ActionExecutionDetail>]
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned and can be used in a subsequent <code>ListActionExecutions</code> call to
    #               return the next set of action executions in the list.</p>
    #   @return [String]
    class ListActionExecutionsOutput < Struct.new(
      nil,
      :action_execution_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListActionTypes</code> action.</p>
    # @!attribute action_owner_filter
    #   <p>Filters the list of action types to those created by a specified entity.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous list action types call, which can
    #               be used to return the next set of action types in the list.</p>
    #   @return [String]
    # @!attribute region_filter
    #   <p>The Region to filter on for the list of action types.</p>
    #   @return [String]
    class ListActionTypesInput < Struct.new(
      nil,
      :action_owner_filter,
      :next_token,
      :region_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListActionTypes</code> action.</p>
    # @!attribute action_types
    #   <p>Provides details of the action types.</p>
    #   @return [Array<Types::ActionType>]
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned. It can be used in a subsequent list action types call to return the next set
    #               of action types in the list.</p>
    #   @return [String]
    class ListActionTypesOutput < Struct.new(
      nil,
      :action_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline with the deploy action.</p>
    #   @return [String]
    # @!attribute action_execution_id
    #   <p>The execution ID for the deploy action.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters the targets for a specified deploy action.</p>
    #   @return [Array<Types::TargetFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous list action types call, which can be
    #               used to return the next set of action types in the list.</p>
    #   @return [String]
    class ListDeployActionExecutionTargetsInput < Struct.new(
      nil,
      :pipeline_name,
      :action_execution_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute targets
    #   <p>The targets for the deploy action.</p>
    #   @return [Array<Types::DeployActionExecutionTarget>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous list action types call, which can be
    #               used to return the next set of action types in the list.</p>
    #   @return [String]
    class ListDeployActionExecutionTargetsOutput < Struct.new(
      nil,
      :targets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListPipelineExecutions</code> action.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline for which you want to get execution summary
    #               information.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Pipeline history is
    #               limited to the most recent 12 months, based on pipeline execution start times. Default
    #               value is 100.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>The pipeline execution to filter on.</p>
    #   @return [Types::PipelineExecutionFilter]
    # @!attribute next_token
    #   <p>The token that was returned from the previous <code>ListPipelineExecutions</code>
    #               call, which can be used to return the next set of pipeline executions in the
    #               list.</p>
    #   @return [String]
    class ListPipelineExecutionsInput < Struct.new(
      nil,
      :pipeline_name,
      :max_results,
      :filter,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListPipelineExecutions</code> action.</p>
    # @!attribute pipeline_execution_summaries
    #   <p>A list of executions in the history of a pipeline.</p>
    #   @return [Array<Types::PipelineExecutionSummary>]
    # @!attribute next_token
    #   <p>A token that can be used in the next <code>ListPipelineExecutions</code> call. To
    #               view all items in the list, continue to call this operation with each subsequent token
    #               until no more nextToken values are returned.</p>
    #   @return [String]
    class ListPipelineExecutionsOutput < Struct.new(
      nil,
      :pipeline_execution_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListPipelines</code> action.</p>
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous list pipelines call. It can be
    #               used to return the next set of pipelines in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of pipelines to return in a single call. To retrieve the remaining
    #               pipelines, make another call with the returned nextToken value. The minimum value you
    #               can specify is 1. The maximum accepted value is 1000.</p>
    #   @return [Integer]
    class ListPipelinesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListPipelines</code> action.</p>
    # @!attribute pipelines
    #   <p>The list of pipelines.</p>
    #   @return [Array<Types::PipelineSummary>]
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned. It can be used in a subsequent list pipelines call to return the next set of
    #               pipelines in the list.</p>
    #   @return [String]
    class ListPipelinesOutput < Struct.new(
      nil,
      :pipelines,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline for which you want to get execution summary
    #               information.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Input information used to filter rule execution history.</p>
    #   @return [Types::RuleExecutionFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Pipeline history is
    #               limited to the most recent 12 months, based on pipeline execution start times. Default
    #               value is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that was returned from the previous <code>ListRuleExecutions</code> call,
    #               which can be used to return the next set of rule executions in the list.</p>
    #   @return [String]
    class ListRuleExecutionsInput < Struct.new(
      nil,
      :pipeline_name,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_execution_details
    #   <p>Details about the output for listing rule executions.</p>
    #   @return [Array<Types::RuleExecutionDetail>]
    # @!attribute next_token
    #   <p>A token that can be used in the next <code>ListRuleExecutions</code> call. To view all
    #               items in the list, continue to call this operation with each subsequent token until no
    #               more nextToken values are returned.</p>
    #   @return [String]
    class ListRuleExecutionsOutput < Struct.new(
      nil,
      :rule_execution_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_owner_filter
    #   <p>The rule owner to filter on.</p>
    #   @return [String]
    # @!attribute region_filter
    #   <p>The rule Region to filter on.</p>
    #   @return [String]
    class ListRuleTypesInput < Struct.new(
      nil,
      :rule_owner_filter,
      :region_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_types
    #   <p>Lists the rules that are configured for the condition.</p>
    #   @return [Array<Types::RuleType>]
    class ListRuleTypesOutput < Struct.new(
      nil,
      :rule_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that was returned from the previous API call, which would be used to return
    #               the next page of the list. The ListTagsforResource call lists all available tags in one
    #               call and does not use pagination.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned and can be used in a subsequent API call to return the next page of the list.
    #               The ListTagsforResource call lists all available tags in one call and does not use
    #               pagination.</p>
    #   @return [String]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The detail returned for each webhook after listing webhooks, such as the webhook
    #             URL, the webhook name, and the webhook ARN.</p>
    # @!attribute definition
    #   <p>The detail returned for each webhook, such as the webhook authentication type and
    #               filter rules.</p>
    #   @return [Types::WebhookDefinition]
    # @!attribute url
    #   <p>A unique URL generated by CodePipeline. When a POST request is made to this
    #               URL, the defined pipeline is started as long as the body of the post request satisfies
    #               the defined authentication and filtering conditions. Deleting and re-creating a webhook
    #               makes the old URL invalid and generates a new one.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The text of the error message about the webhook.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The number code of the error.</p>
    #   @return [String]
    # @!attribute last_triggered
    #   <p>The date and time a webhook was last successfully triggered, in timestamp
    #               format.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the webhook.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the tags applied to the webhook.</p>
    #   @return [Array<Types::Tag>]
    class ListWebhookItem < Struct.new(
      nil,
      :definition,
      :url,
      :error_message,
      :error_code,
      :last_triggered,
      :arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that was returned from the previous ListWebhooks call, which can be used
    #               to return the next set of webhooks in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value.</p>
    #   @return [Integer]
    class ListWebhooksInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute webhooks
    #   <p>The JSON detail returned for each webhook in the list output for the ListWebhooks
    #               call.</p>
    #   @return [Array<Types::ListWebhookItem>]
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned and can be used in a subsequent ListWebhooks call to return the next set of
    #               webhooks in the list. </p>
    #   @return [String]
    class ListWebhooksOutput < Struct.new(
      nil,
      :webhooks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The stage has failed in a later run of the pipeline and the
    #                 <code>pipelineExecutionId</code> associated with the request is out of
    #             date.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class NotLatestPipelineExecutionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the output of an action.</p>
    # @!attribute name
    #   <p>The name of the output of an artifact, such as "My App".</p>
    #            <p>The input artifact of an action must exactly match the output artifact declared in
    #               a preceding action, but the input artifact does not have to be the next action in strict
    #               sequence from the action that provided the output artifact. Actions in parallel can
    #               declare different output artifacts, which are in turn consumed by different following
    #               actions.</p>
    #            <p>Output artifact names must be unique within a pipeline.</p>
    #   @return [String]
    # @!attribute files
    #   <p>The files that you want to associate with the output artifact that will be exported
    #               from the compute action.</p>
    #   @return [Array<String>]
    class OutputArtifact < Struct.new(
      nil,
      :name,
      :files,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exceeded the total size limit for all variables in the pipeline.</p>
    # @!attribute message
    #   @return [String]
    class OutputVariablesSizeExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline with the stage that will override the condition.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage for the override.</p>
    #   @return [String]
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution for the override.</p>
    #   @return [String]
    # @!attribute condition_type
    #   <p>The type of condition to override for the stage, such as entry conditions, failure
    #               conditions, or success conditions.</p>
    #   @return [String]
    class OverrideStageConditionInput < Struct.new(
      nil,
      :pipeline_name,
      :stage_name,
      :pipeline_execution_id,
      :condition_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about a pipeline to a job worker.</p>
    #          <note>
    #             <p>PipelineContext contains <code>pipelineArn</code> and
    #                     <code>pipelineExecutionId</code> for custom action jobs. The
    #                     <code>pipelineArn</code> and <code>pipelineExecutionId</code> fields are not
    #                 populated for ThirdParty action jobs.</p>
    #          </note>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline. This is a user-specified value. Pipeline names must be
    #               unique across all pipeline names under an Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The stage of the pipeline.</p>
    #   @return [Types::StageContext]
    # @!attribute action
    #   <p>The context of an action to a job worker in the stage of a pipeline.</p>
    #   @return [Types::ActionContext]
    # @!attribute pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_execution_id
    #   <p>The execution ID of the pipeline.</p>
    #   @return [String]
    class PipelineContext < Struct.new(
      nil,
      :pipeline_name,
      :stage,
      :action,
      :pipeline_arn,
      :pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the structure of actions and stages to be performed in the
    #             pipeline.</p>
    # @!attribute name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) for CodePipeline to use to either perform
    #               actions with no <code>actionRoleArn</code>, or to use to assume roles for actions with
    #               an <code>actionRoleArn</code>.</p>
    #   @return [String]
    # @!attribute artifact_store
    #   <p>Represents information about the S3 bucket where artifacts are stored for the
    #               pipeline.</p>
    #            <note>
    #               <p>You must include either <code>artifactStore</code> or
    #                       <code>artifactStores</code> in your pipeline, but you cannot use both. If you
    #                   create a cross-region action in your pipeline, you must use
    #                       <code>artifactStores</code>.</p>
    #            </note>
    #   @return [Types::ArtifactStore]
    # @!attribute artifact_stores
    #   <p>A mapping of <code>artifactStore</code> objects and their corresponding Amazon Web Services Regions. There must be an artifact store for the pipeline Region and for
    #               each cross-region action in the pipeline.</p>
    #            <note>
    #               <p>You must include either <code>artifactStore</code> or
    #                       <code>artifactStores</code> in your pipeline, but you cannot use both. If you
    #                   create a cross-region action in your pipeline, you must use
    #                       <code>artifactStores</code>.</p>
    #            </note>
    #   @return [Hash<String, Types::ArtifactStore>]
    # @!attribute stages
    #   <p>The stage in which to perform the action.</p>
    #   @return [Array<Types::StageDeclaration>]
    # @!attribute version
    #   <p>The version number of the pipeline. A new pipeline always has a version number of
    #               1. This number is incremented when a pipeline is updated.</p>
    #   @return [Integer]
    # @!attribute execution_mode
    #   <p>The method that the pipeline will use to handle multiple executions. The default
    #               mode is SUPERSEDED.</p>
    #   @return [String]
    # @!attribute pipeline_type
    #   <p>CodePipeline provides the following pipeline types, which differ in
    #               characteristics and price, so that you can tailor your pipeline features and cost to the
    #               needs of your applications.</p>
    #            <ul>
    #               <li>
    #                  <p>V1 type pipelines have a JSON structure that contains standard pipeline,
    #                       stage, and action-level parameters.</p>
    #               </li>
    #               <li>
    #                  <p>V2 type pipelines have the same structure as a V1 type, along with additional
    #                       parameters for release safety and trigger configuration.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Including V2 parameters, such as triggers on Git tags, in the pipeline JSON when
    #                   creating or updating a pipeline will result in the pipeline having the V2 type of
    #                   pipeline and the associated costs.</p>
    #            </important>
    #            <p>For information about pricing for CodePipeline, see <a href="http://aws.amazon.com/codepipeline/pricing/">Pricing</a>.</p>
    #            <p> For information about which type of pipeline to choose, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-types-planning.html">What type of
    #                   pipeline is right for me?</a>.</p>
    #   @return [String]
    # @!attribute variables
    #   <p>A list that defines the pipeline variables for a pipeline resource. Variable names can
    #               have alphanumeric and underscore characters, and the values must match
    #                   <code>[A-Za-z0-9@\-_]+</code>.</p>
    #   @return [Array<Types::PipelineVariableDeclaration>]
    # @!attribute triggers
    #   <p>The trigger configuration specifying a type of event, such as Git tags, that starts
    #               the pipeline.</p>
    #            <note>
    #               <p>When a trigger configuration is specified, default change detection for
    #                   repository and branch commits is disabled.</p>
    #            </note>
    #   @return [Array<Types::PipelineTriggerDeclaration>]
    class PipelineDeclaration < Struct.new(
      nil,
      :name,
      :role_arn,
      :artifact_store,
      :artifact_stores,
      :stages,
      :version,
      :execution_mode,
      :pipeline_type,
      :variables,
      :triggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about an execution of a pipeline.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline with the specified pipeline execution.</p>
    #   @return [String]
    # @!attribute pipeline_version
    #   <p>The version number of the pipeline with the specified pipeline execution.</p>
    #   @return [Integer]
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the pipeline execution.</p>
    #            <ul>
    #               <li>
    #                  <p>Cancelled: The pipeline’s definition was updated before the pipeline
    #                       execution could be completed.</p>
    #               </li>
    #               <li>
    #                  <p>InProgress: The pipeline execution is currently running.</p>
    #               </li>
    #               <li>
    #                  <p>Stopped: The pipeline execution was manually stopped. For more information,
    #                       see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped">Stopped Executions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Stopping: The pipeline execution received a request to be manually stopped.
    #                       Depending on the selected stop mode, the execution is either completing or
    #                       abandoning in-progress actions. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped">Stopped Executions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded: The pipeline execution was completed successfully. </p>
    #               </li>
    #               <li>
    #                  <p>Superseded: While this pipeline execution was waiting for the next stage to
    #                       be completed, a newer pipeline execution advanced and continued through the
    #                       pipeline instead. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded">Superseded Executions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Failed: The pipeline execution was not completed successfully.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_summary
    #   <p>A summary that contains a description of the pipeline execution status.</p>
    #   @return [String]
    # @!attribute artifact_revisions
    #   <p>A list of <code>ArtifactRevision</code> objects included in a pipeline
    #               execution.</p>
    #   @return [Array<Types::ArtifactRevision>]
    # @!attribute variables
    #   <p>A list of pipeline variables used for the pipeline execution.</p>
    #   @return [Array<Types::ResolvedPipelineVariable>]
    # @!attribute trigger
    #   <p>The interaction or event that started a pipeline execution.</p>
    #   @return [Types::ExecutionTrigger]
    # @!attribute execution_mode
    #   <p>The method that the pipeline will use to handle multiple executions. The default
    #               mode is SUPERSEDED.</p>
    #   @return [String]
    # @!attribute execution_type
    #   <p>The type of the pipeline execution.</p>
    #   @return [String]
    # @!attribute rollback_metadata
    #   <p>The metadata about the execution pertaining to stage rollback.</p>
    #   @return [Types::PipelineRollbackMetadata]
    class PipelineExecution < Struct.new(
      nil,
      :pipeline_name,
      :pipeline_version,
      :pipeline_execution_id,
      :status,
      :status_summary,
      :artifact_revisions,
      :variables,
      :trigger,
      :execution_mode,
      :execution_type,
      :rollback_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pipeline execution to filter on.</p>
    # @!attribute succeeded_in_stage
    #   <p>Filter for pipeline executions where the stage was successful in the current pipeline
    #               version.</p>
    #   @return [Types::SucceededInStageFilter]
    class PipelineExecutionFilter < Struct.new(
      nil,
      :succeeded_in_stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pipeline execution was specified in an invalid format or cannot be found, or an
    #             execution ID does not belong to the specified pipeline. </p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class PipelineExecutionNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to stop the pipeline execution. The execution might already be in a
    #                 <code>Stopped</code> state, or it might no longer be in progress.</p>
    # @!attribute message
    #   @return [String]
    class PipelineExecutionNotStoppableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified pipeline execution is outdated and cannot be used as a target pipeline
    #             execution for rollback.</p>
    # @!attribute message
    #   @return [String]
    class PipelineExecutionOutdatedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a pipeline execution.</p>
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the pipeline execution.</p>
    #            <ul>
    #               <li>
    #                  <p>InProgress: The pipeline execution is currently running.</p>
    #               </li>
    #               <li>
    #                  <p>Stopped: The pipeline execution was manually stopped. For more information,
    #                       see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped">Stopped Executions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Stopping: The pipeline execution received a request to be manually stopped.
    #                       Depending on the selected stop mode, the execution is either completing or
    #                       abandoning in-progress actions. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped">Stopped Executions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded: The pipeline execution was completed successfully. </p>
    #               </li>
    #               <li>
    #                  <p>Superseded: While this pipeline execution was waiting for the next stage to
    #                       be completed, a newer pipeline execution advanced and continued through the
    #                       pipeline instead. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded">Superseded Executions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Failed: The pipeline execution was not completed successfully.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_summary
    #   <p>Status summary for the pipeline.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time when the pipeline execution began, in timestamp format.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The date and time of the last change to the pipeline execution, in timestamp
    #               format.</p>
    #   @return [Time]
    # @!attribute source_revisions
    #   <p>A list of the source artifact revisions that initiated a pipeline
    #               execution.</p>
    #   @return [Array<Types::SourceRevision>]
    # @!attribute trigger
    #   <p>The interaction or event that started a pipeline execution, such as automated change
    #               detection or a <code>StartPipelineExecution</code> API call.</p>
    #   @return [Types::ExecutionTrigger]
    # @!attribute stop_trigger
    #   <p>The interaction that stopped a pipeline execution.</p>
    #   @return [Types::StopExecutionTrigger]
    # @!attribute execution_mode
    #   <p>The method that the pipeline will use to handle multiple executions. The default
    #               mode is SUPERSEDED.</p>
    #   @return [String]
    # @!attribute execution_type
    #   <p>Type of the pipeline execution.</p>
    #   @return [String]
    # @!attribute rollback_metadata
    #   <p>The metadata for the stage execution to be rolled back.</p>
    #   @return [Types::PipelineRollbackMetadata]
    class PipelineExecutionSummary < Struct.new(
      nil,
      :pipeline_execution_id,
      :status,
      :status_summary,
      :start_time,
      :last_update_time,
      :source_revisions,
      :trigger,
      :stop_trigger,
      :execution_mode,
      :execution_type,
      :rollback_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a pipeline.</p>
    # @!attribute pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date and time the pipeline was created, in timestamp format.</p>
    #   @return [Time]
    # @!attribute updated
    #   <p>The date and time the pipeline was last updated, in timestamp format.</p>
    #   @return [Time]
    # @!attribute polling_disabled_at
    #   <p>The date and time that polling for source changes (periodic checks) was stopped for
    #               the pipeline, in timestamp format. </p>
    #            <important>
    #               <p>Pipelines that are inactive for longer than 30 days will have polling disabled for
    #                   the pipeline. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#metadata.pollingDisabledAt">pollingDisabledAt</a> in the pipeline structure reference. For the steps to
    #                   migrate your pipeline from polling to event-based change detection, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/update-change-detection.html">Migrate polling
    #                       pipelines to use event-based change detection</a>.</p>
    #            </important>
    #            <p>You can migrate (update) a polling pipeline to use event-based change detection. For
    #               example, for a pipeline with a CodeCommit source, we recommend you migrate
    #               (update) your pipeline to use CloudWatch Events. To learn more, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/update-change-detection.html">Migrate polling
    #                   pipelines to use event-based change detection</a> in the <i>CodePipeline User Guide</i>.</p>
    #   @return [Time]
    class PipelineMetadata < Struct.new(
      nil,
      :pipeline_arn,
      :created,
      :updated,
      :polling_disabled_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified pipeline name is already in use.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class PipelineNameInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pipeline was specified in an invalid format or cannot be found.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class PipelineNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata for the stage execution to be rolled back.</p>
    # @!attribute rollback_target_pipeline_execution_id
    #   <p>The pipeline execution ID to which the stage will be rolled back.</p>
    #   @return [String]
    class PipelineRollbackMetadata < Struct.new(
      nil,
      :rollback_target_pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a summary of a pipeline.</p>
    # @!attribute name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the pipeline.</p>
    #   @return [Integer]
    # @!attribute pipeline_type
    #   <p>CodePipeline provides the following pipeline types, which differ in
    #               characteristics and price, so that you can tailor your pipeline features and cost to the
    #               needs of your applications.</p>
    #            <ul>
    #               <li>
    #                  <p>V1 type pipelines have a JSON structure that contains standard pipeline,
    #                       stage, and action-level parameters.</p>
    #               </li>
    #               <li>
    #                  <p>V2 type pipelines have the same structure as a V1 type, along with additional
    #                       parameters for release safety and trigger configuration.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Including V2 parameters, such as triggers on Git tags, in the pipeline JSON when
    #                   creating or updating a pipeline will result in the pipeline having the V2 type of
    #                   pipeline and the associated costs.</p>
    #            </important>
    #            <p>For information about pricing for CodePipeline, see <a href="http://aws.amazon.com/codepipeline/pricing/">Pricing</a>.</p>
    #            <p> For information about which type of pipeline to choose, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-types-planning.html">What type of
    #                   pipeline is right for me?</a>.</p>
    #   @return [String]
    # @!attribute execution_mode
    #   <p>The method that the pipeline will use to handle multiple executions. The default
    #               mode is SUPERSEDED.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date and time the pipeline was created, in timestamp format.</p>
    #   @return [Time]
    # @!attribute updated
    #   <p>The date and time of the last update to the pipeline, in timestamp
    #               format.</p>
    #   @return [Time]
    class PipelineSummary < Struct.new(
      nil,
      :name,
      :version,
      :pipeline_type,
      :execution_mode,
      :created,
      :updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the specified trigger configuration, such as the
    #             filter criteria and the source stage for the action that contains the trigger.</p>
    #          <note>
    #             <p>This is only supported for the <code>CodeStarSourceConnection</code> action
    #                 type.</p>
    #          </note>
    #          <note>
    #             <p>When a trigger configuration is specified, default change detection for
    #                 repository and branch commits is disabled.</p>
    #          </note>
    # @!attribute provider_type
    #   <p>The source provider for the event, such as connections configured for a repository
    #               with Git tags, for the specified trigger configuration.</p>
    #   @return [String]
    # @!attribute git_configuration
    #   <p>Provides the filter criteria and the source stage for the repository event that
    #               starts the pipeline, such as Git tags.</p>
    #   @return [Types::GitConfiguration]
    class PipelineTriggerDeclaration < Struct.new(
      nil,
      :provider_type,
      :git_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pipeline-level variable used for a pipeline execution.</p>
    # @!attribute name
    #   <p>The name of a pipeline-level variable.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a pipeline-level variable.</p>
    #   @return [String]
    class PipelineVariable < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A variable declared at the pipeline level.</p>
    # @!attribute name
    #   <p>The name of a pipeline-level variable.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The value of a pipeline-level variable.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a pipeline-level variable. It's used to add additional context
    #               about the variable, and not being used at time when pipeline executes.</p>
    #   @return [String]
    class PipelineVariableDeclaration < Struct.new(
      nil,
      :name,
      :default_value,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pipeline version was specified in an invalid format or cannot be
    #             found.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class PipelineVersionNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PollForJobs</code> action.</p>
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #   @return [Types::ActionTypeId]
    # @!attribute max_batch_size
    #   <p>The maximum number of jobs to return in a poll for jobs call.</p>
    #   @return [Integer]
    # @!attribute query_param
    #   <p>A map of property names and values. For an action type with no queryable
    #               properties, this value must be null or an empty map. For an action type with a queryable
    #               property, you must supply that property as a key in the map. Only jobs whose action
    #               configuration matches the mapped value are returned.</p>
    #   @return [Hash<String, String>]
    class PollForJobsInput < Struct.new(
      nil,
      :action_type_id,
      :max_batch_size,
      :query_param,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PollForJobs</code> action.</p>
    # @!attribute jobs
    #   <p>Information about the jobs to take action on.</p>
    #   @return [Array<Types::Job>]
    class PollForJobsOutput < Struct.new(
      nil,
      :jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PollForThirdPartyJobs</code> action.</p>
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #   @return [Types::ActionTypeId]
    # @!attribute max_batch_size
    #   <p>The maximum number of jobs to return in a poll for jobs call.</p>
    #   @return [Integer]
    class PollForThirdPartyJobsInput < Struct.new(
      nil,
      :action_type_id,
      :max_batch_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PollForThirdPartyJobs</code> action.</p>
    # @!attribute jobs
    #   <p>Information about the jobs to take action on.</p>
    #   @return [Array<Types::ThirdPartyJob>]
    class PollForThirdPartyJobsOutput < Struct.new(
      nil,
      :jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PutActionRevision</code> action.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline that starts processing the revision to the
    #               source.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage that contains the action that acts on the revision.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>The name of the action that processes the revision.</p>
    #   @return [String]
    # @!attribute action_revision
    #   <p>Represents information about the version (or revision) of an action.</p>
    #   @return [Types::ActionRevision]
    class PutActionRevisionInput < Struct.new(
      nil,
      :pipeline_name,
      :stage_name,
      :action_name,
      :action_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PutActionRevision</code> action.</p>
    # @!attribute new_revision
    #   <p>Indicates whether the artifact revision was previously used in an execution of the
    #               specified pipeline.</p>
    #   @return [Boolean]
    # @!attribute pipeline_execution_id
    #   <p>The ID of the current workflow state of the pipeline.</p>
    #   @return [String]
    class PutActionRevisionOutput < Struct.new(
      nil,
      :new_revision,
      :pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:new_revision] = false unless options.key?(:new_revision)
        super
      end
    end

    # <p>Represents the input of a <code>PutApprovalResult</code> action.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline that contains the action. </p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage that contains the action.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>The name of the action for which approval is requested.</p>
    #   @return [String]
    # @!attribute result
    #   <p>Represents information about the result of the approval request.</p>
    #   @return [Types::ApprovalResult]
    # @!attribute token
    #   <p>The system-generated token used to identify a unique approval request. The token
    #               for each open approval request can be obtained using the <a>GetPipelineState</a> action. It is used to validate that the approval
    #               request corresponding to this token is still valid.</p>
    #            <important>
    #               <p>For a pipeline where the execution mode is set to PARALLEL, the token required to
    #                   approve/reject an approval request as detailed above is not available. Instead, use
    #                   the <code>externalExecutionId</code> in the response output from the <a>ListActionExecutions</a> action as the token in the approval
    #                   request.</p>
    #            </important>
    #   @return [String]
    class PutApprovalResultInput < Struct.new(
      nil,
      :pipeline_name,
      :stage_name,
      :action_name,
      :result,
      :token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PutApprovalResult</code> action.</p>
    # @!attribute approved_at
    #   <p>The timestamp showing when the approval or rejection was submitted.</p>
    #   @return [Time]
    class PutApprovalResultOutput < Struct.new(
      nil,
      :approved_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PutJobFailureResult</code> action.</p>
    # @!attribute job_id
    #   <p>The unique system-generated ID of the job that failed. This is the same ID returned
    #               from <code>PollForJobs</code>.</p>
    #   @return [String]
    # @!attribute failure_details
    #   <p>The details about the failure of a job.</p>
    #   @return [Types::FailureDetails]
    class PutJobFailureResultInput < Struct.new(
      nil,
      :job_id,
      :failure_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PutJobSuccessResult</code> action.</p>
    # @!attribute job_id
    #   <p>The unique system-generated ID of the job that succeeded. This is the same ID
    #               returned from <code>PollForJobs</code>.</p>
    #   @return [String]
    # @!attribute current_revision
    #   <p>The ID of the current revision of the artifact successfully worked on by the
    #               job.</p>
    #   @return [Types::CurrentRevision]
    # @!attribute continuation_token
    #   <p>A token generated by a job worker, such as a CodeDeploy deployment ID, that a
    #               successful job provides to identify a custom action in progress. Future jobs use this
    #               token to identify the running instance of the action. It can be reused to return more
    #               information about the progress of the custom action. When the action is complete, no
    #               continuation token should be supplied.</p>
    #   @return [String]
    # @!attribute execution_details
    #   <p>The execution details of the successful job, such as the actions taken by the job
    #               worker.</p>
    #   @return [Types::ExecutionDetails]
    # @!attribute output_variables
    #   <p>Key-value pairs produced as output by a job worker that can be made available to a
    #               downstream action configuration. <code>outputVariables</code> can be included only when
    #               there is no continuation token on the request.</p>
    #   @return [Hash<String, String>]
    class PutJobSuccessResultInput < Struct.new(
      nil,
      :job_id,
      :current_revision,
      :continuation_token,
      :execution_details,
      :output_variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PutThirdPartyJobFailureResult</code>
    #             action.</p>
    # @!attribute job_id
    #   <p>The ID of the job that failed. This is the same ID returned from
    #                   <code>PollForThirdPartyJobs</code>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #   @return [String]
    # @!attribute failure_details
    #   <p>Represents information about failure details.</p>
    #   @return [Types::FailureDetails]
    class PutThirdPartyJobFailureResultInput < Struct.new(
      nil,
      :job_id,
      :client_token,
      :failure_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PutThirdPartyJobSuccessResult</code>
    #             action.</p>
    # @!attribute job_id
    #   <p>The ID of the job that successfully completed. This is the same ID returned from
    #                   <code>PollForThirdPartyJobs</code>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #   @return [String]
    # @!attribute current_revision
    #   <p>Represents information about a current revision.</p>
    #   @return [Types::CurrentRevision]
    # @!attribute continuation_token
    #   <p>A token generated by a job worker, such as a CodeDeploy deployment ID, that a
    #               successful job provides to identify a partner action in progress. Future jobs use this
    #               token to identify the running instance of the action. It can be reused to return more
    #               information about the progress of the partner action. When the action is complete, no
    #               continuation token should be supplied.</p>
    #   @return [String]
    # @!attribute execution_details
    #   <p>The details of the actions taken and results produced on an artifact as it passes
    #               through stages in the pipeline. </p>
    #   @return [Types::ExecutionDetails]
    class PutThirdPartyJobSuccessResultInput < Struct.new(
      nil,
      :job_id,
      :client_token,
      :current_revision,
      :continuation_token,
      :execution_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute webhook
    #   <p>The detail provided in an input file to create the webhook, such as the webhook
    #               name, the pipeline name, and the action name. Give the webhook a unique name that helps
    #               you identify it. You might name the webhook after the pipeline and action it targets so
    #               that you can easily recognize what it's used for later.</p>
    #   @return [Types::WebhookDefinition]
    # @!attribute tags
    #   <p>The tags for the webhook.</p>
    #   @return [Array<Types::Tag>]
    class PutWebhookInput < Struct.new(
      nil,
      :webhook,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute webhook
    #   <p>The detail returned from creating the webhook, such as the webhook name, webhook
    #               URL, and webhook ARN.</p>
    #   @return [Types::ListWebhookItem]
    class PutWebhookOutput < Struct.new(
      nil,
      :webhook,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute webhook_name
    #   <p>The name of an existing webhook created with PutWebhook to register with a
    #               supported third party. </p>
    #   @return [String]
    class RegisterWebhookWithThirdPartyInput < Struct.new(
      nil,
      :webhook_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RegisterWebhookWithThirdPartyOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because of an unknown error, exception, or failure.</p>
    # @!attribute message
    #   @return [String]
    class RequestFailedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pipeline-level variable used for a pipeline execution.</p>
    # @!attribute name
    #   <p>The name of a pipeline-level variable.</p>
    #   @return [String]
    # @!attribute resolved_value
    #   <p>The resolved value of a pipeline-level variable.</p>
    #   @return [String]
    class ResolvedPipelineVariable < Struct.new(
      nil,
      :name,
      :resolved_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The retry configuration specifies automatic retry for a failed stage, along with the
    #             configured retry mode.</p>
    # @!attribute retry_mode
    #   <p>The method that you want to configure for automatic stage retry on stage failure. You
    #               can specify to retry only failed action in the stage or all actions in the stage.</p>
    #   @return [String]
    class RetryConfiguration < Struct.new(
      nil,
      :retry_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>RetryStageExecution</code> action.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline that contains the failed stage.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the failed stage to be retried.</p>
    #   @return [String]
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution in the failed stage to be retried. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of
    #               the failed stage</p>
    #   @return [String]
    # @!attribute retry_mode
    #   <p>The scope of the retry attempt.</p>
    #   @return [String]
    class RetryStageExecutionInput < Struct.new(
      nil,
      :pipeline_name,
      :stage_name,
      :pipeline_execution_id,
      :retry_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>RetryStageExecution</code> action.</p>
    # @!attribute pipeline_execution_id
    #   <p>The ID of the current workflow execution in the failed stage.</p>
    #   @return [String]
    class RetryStageExecutionOutput < Struct.new(
      nil,
      :pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a specific automatic retry on stage failure, including the attempt
    #             number and trigger.</p>
    # @!attribute auto_stage_retry_attempt
    #   <p>The number of attempts for a specific stage with automatic retry on stage failure. One
    #               attempt is allowed for automatic stage retry on failure.</p>
    #   @return [Integer]
    # @!attribute manual_stage_retry_attempt
    #   <p>The number of attempts for a specific stage where manual retries have been made upon
    #               stage failure.</p>
    #   @return [Integer]
    # @!attribute latest_retry_trigger
    #   <p>The latest trigger for a specific stage where manual or automatic retries have been
    #               made upon stage failure.</p>
    #   @return [String]
    class RetryStageMetadata < Struct.new(
      nil,
      :auto_stage_retry_attempt,
      :manual_stage_retry_attempt,
      :latest_retry_trigger,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline for which the stage will be rolled back. </p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage in the pipeline to be rolled back. </p>
    #   @return [String]
    # @!attribute target_pipeline_execution_id
    #   <p>The pipeline execution ID for the stage to be rolled back to. </p>
    #   @return [String]
    class RollbackStageInput < Struct.new(
      nil,
      :pipeline_name,
      :stage_name,
      :target_pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_execution_id
    #   <p>The execution ID of the pipeline execution for the stage that has been rolled
    #               back.</p>
    #   @return [String]
    class RollbackStageOutput < Struct.new(
      nil,
      :pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about a rule configuration property.</p>
    # @!attribute name
    #   <p>The name of the rule configuration property.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Whether the configuration property is a required value.</p>
    #   @return [Boolean]
    # @!attribute key
    #   <p>Whether the configuration property is a key.</p>
    #   @return [Boolean]
    # @!attribute secret
    #   <p>Whether the configuration property is secret.</p>
    #            <p>When updating a pipeline, passing * * * * * without changing any other values of
    #               the action preserves the previous value of the secret.</p>
    #   @return [Boolean]
    # @!attribute queryable
    #   <p>Indicates whether the property can be queried.</p>
    #            <p>If you create a pipeline with a condition and rule, and that rule contains a
    #               queryable property, the value for that configuration property is subject to other
    #               restrictions. The value must be less than or equal to twenty (20) characters. The value
    #               can contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the action configuration property that is displayed to
    #               users.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the configuration property.</p>
    #   @return [String]
    class RuleConfigurationProperty < Struct.new(
      nil,
      :name,
      :required,
      :key,
      :secret,
      :queryable,
      :description,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:required] = false unless options.key?(:required)
        options[:key] = false unless options.key?(:key)
        options[:secret] = false unless options.key?(:secret)
        options[:queryable] = false unless options.key?(:queryable)
        super
      end
    end

    # <p>Represents information about the rule to be created for an associated condition. An
    #             example would be creating a new rule for an entry condition, such as a rule that checks
    #             for a test result before allowing the run to enter the deployment stage. For more
    #             information about conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage conditions</a>
    #             and <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html">How do
    #                 stage conditions work?</a>. For more information about rules, see the <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html">CodePipeline rule reference</a>.</p>
    # @!attribute name
    #   <p>The name of the rule that is created for the condition, such as
    #                   <code>VariableCheck</code>.</p>
    #   @return [String]
    # @!attribute rule_type_id
    #   <p>The ID for the rule type, which is made up of the combined values for category, owner,
    #               provider, and version.</p>
    #   @return [Types::RuleTypeId]
    # @!attribute configuration
    #   <p>The action configuration fields for the rule.</p>
    #   @return [Hash<String, String>]
    # @!attribute commands
    #   <p>The shell commands to run with your commands rule in CodePipeline. All commands
    #               are supported except multi-line formats. While CodeBuild logs and permissions
    #               are used, you do not need to create any resources in CodeBuild.</p>
    #            <note>
    #               <p>Using compute time for this action will incur separate charges in CodeBuild.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute input_artifacts
    #   <p>The input artifacts fields for the rule, such as specifying an input file for the
    #               rule.</p>
    #   @return [Array<Types::InputArtifact>]
    # @!attribute role_arn
    #   <p>The pipeline role ARN associated with the rule.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region for the condition associated with the rule.</p>
    #   @return [String]
    # @!attribute timeout_in_minutes
    #   <p>The action timeout for the rule.</p>
    #   @return [Integer]
    class RuleDeclaration < Struct.new(
      nil,
      :name,
      :rule_type_id,
      :configuration,
      :commands,
      :input_artifacts,
      :role_arn,
      :region,
      :timeout_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about each time a rule is run as part of the pipeline execution
    #             for a pipeline configured with conditions.</p>
    # @!attribute rule_execution_id
    #   <p>The execution ID for the run of the rule.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the run of the rule, such as FAILED.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>A summary of the run of the rule.</p>
    #   @return [String]
    # @!attribute last_status_change
    #   <p>The last status change of the rule.</p>
    #   @return [Time]
    # @!attribute token
    #   <p>The system-generated token used to identify a unique request.</p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p>The ARN of the user who last changed the rule.</p>
    #   @return [String]
    # @!attribute external_execution_id
    #   <p>The external ID of the run of the rule.</p>
    #   @return [String]
    # @!attribute external_execution_url
    #   <p>The URL of a resource external to Amazon Web Services that is used when running the
    #               rule (for example, an external repository URL).</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Represents information about an error in CodePipeline.</p>
    #   @return [Types::ErrorDetails]
    class RuleExecution < Struct.new(
      nil,
      :rule_execution_id,
      :status,
      :summary,
      :last_status_change,
      :token,
      :last_updated_by,
      :external_execution_id,
      :external_execution_url,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the runs for a rule and the results produced on an artifact as it
    #             passes through stages in the pipeline.</p>
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution in the stage where the rule was run. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of
    #               the stage.</p>
    #   @return [String]
    # @!attribute rule_execution_id
    #   <p>The ID of the run for the rule.</p>
    #   @return [String]
    # @!attribute pipeline_version
    #   <p>The version number of the pipeline with the stage where the rule was run.</p>
    #   @return [Integer]
    # @!attribute stage_name
    #   <p>The name of the stage where the rule was run.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rule that was run in the stage.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the rule execution.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The date and time of the last change to the rule execution, in timestamp
    #               format.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The ARN of the user who changed the rule execution details.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the rule execution. Status categories are <code>InProgress</code>,
    #                   <code>Succeeded</code>, and <code>Failed</code>. </p>
    #   @return [String]
    # @!attribute input
    #   <p>Input details for the rule execution, such as role ARN, Region, and input
    #               artifacts.</p>
    #   @return [Types::RuleExecutionInput]
    # @!attribute output
    #   <p>Output details for the rule execution, such as the rule execution result.</p>
    #   @return [Types::RuleExecutionOutput]
    class RuleExecutionDetail < Struct.new(
      nil,
      :pipeline_execution_id,
      :rule_execution_id,
      :pipeline_version,
      :stage_name,
      :rule_name,
      :start_time,
      :last_update_time,
      :updated_by,
      :status,
      :input,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter values for the rule execution.</p>
    # @!attribute pipeline_execution_id
    #   <p>The pipeline execution ID used to filter rule execution history.</p>
    #   @return [String]
    # @!attribute latest_in_pipeline_execution
    #   <p>The field that specifies to filter on the latest execution in the
    #               pipeline.</p>
    #            <note>
    #               <p>Filtering on the latest execution is available for executions run on or after
    #                   February 08, 2024.</p>
    #            </note>
    #   @return [Types::LatestInPipelineExecutionFilter]
    class RuleExecutionFilter < Struct.new(
      nil,
      :pipeline_execution_id,
      :latest_in_pipeline_execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input information used for a rule execution.</p>
    # @!attribute rule_type_id
    #   <p>The ID for the rule type, which is made up of the combined values for category, owner,
    #               provider, and version. For more information about conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage
    #                   conditions</a>. For more information about rules, see the <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html">CodePipeline rule reference</a>.</p>
    #   @return [Types::RuleTypeId]
    # @!attribute configuration
    #   <p>Configuration data for a rule execution, such as the resolved values for that
    #               run.</p>
    #   @return [Hash<String, String>]
    # @!attribute resolved_configuration
    #   <p>Configuration data for a rule execution with all variable references replaced with
    #               their real values for the execution.</p>
    #   @return [Hash<String, String>]
    # @!attribute role_arn
    #   <p>The ARN of the IAM service role that performs the declared rule. This is assumed
    #               through the roleArn for the pipeline.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region for the rule, such as us-east-1.</p>
    #   @return [String]
    # @!attribute input_artifacts
    #   <p>Details of input artifacts of the rule that correspond to the rule execution.</p>
    #   @return [Array<Types::ArtifactDetail>]
    class RuleExecutionInput < Struct.new(
      nil,
      :rule_type_id,
      :configuration,
      :resolved_configuration,
      :role_arn,
      :region,
      :input_artifacts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output details listed for a rule execution, such as the rule execution result.</p>
    # @!attribute execution_result
    #   <p>Execution result information listed in the output details for a rule execution.</p>
    #   @return [Types::RuleExecutionResult]
    class RuleExecutionOutput < Struct.new(
      nil,
      :execution_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Execution result information, such as the external execution ID.</p>
    # @!attribute external_execution_id
    #   <p>The external ID for the rule execution.</p>
    #   @return [String]
    # @!attribute external_execution_summary
    #   <p>The external provider summary for the rule execution.</p>
    #   @return [String]
    # @!attribute external_execution_url
    #   <p>The deepest external link to the external resource (for example, a repository URL or
    #               deployment endpoint) that is used when running the rule.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Represents information about an error in CodePipeline.</p>
    #   @return [Types::ErrorDetails]
    class RuleExecutionResult < Struct.new(
      nil,
      :external_execution_id,
      :external_execution_summary,
      :external_execution_url,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The change to a rule that creates a revision of the rule.</p>
    # @!attribute revision_id
    #   <p>The system-generated unique ID that identifies the revision number of the rule.</p>
    #   @return [String]
    # @!attribute revision_change_id
    #   <p>The unique identifier of the change that set the state to this revision (for example,
    #               a deployment ID or timestamp).</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date and time when the most recent version of the rule was created, in timestamp
    #               format.</p>
    #   @return [Time]
    class RuleRevision < Struct.new(
      nil,
      :revision_id,
      :revision_change_id,
      :created,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the state of a rule.</p>
    #          <note>
    #             <p>Values returned in the <code>revisionId</code> field indicate the rule revision
    #                 information, such as the commit ID, for the current state.</p>
    #          </note>
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute current_revision
    #   <p>The ID of the current revision of the artifact successfully worked on by the
    #               job.</p>
    #   @return [Types::RuleRevision]
    # @!attribute latest_execution
    #   <p>Represents information about the latest run of an rule.</p>
    #   @return [Types::RuleExecution]
    # @!attribute entity_url
    #   <p>A URL link for more information about the state of the action, such as a details
    #               page.</p>
    #   @return [String]
    # @!attribute revision_url
    #   <p>A URL link for more information about the revision, such as a commit details
    #               page.</p>
    #   @return [String]
    class RuleState < Struct.new(
      nil,
      :rule_name,
      :current_revision,
      :latest_execution,
      :entity_url,
      :revision_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rule type, which is made up of the combined values for category, owner, provider,
    #             and version.</p>
    # @!attribute id
    #   <p>Represents information about a rule type.</p>
    #   @return [Types::RuleTypeId]
    # @!attribute settings
    #   <p>Returns information about the settings for a rule type.</p>
    #   @return [Types::RuleTypeSettings]
    # @!attribute rule_configuration_properties
    #   <p>The configuration properties for the rule type.</p>
    #   @return [Array<Types::RuleConfigurationProperty>]
    # @!attribute input_artifact_details
    #   <p>Returns information about the details of an artifact.</p>
    #   @return [Types::ArtifactDetails]
    class RuleType < Struct.new(
      nil,
      :id,
      :settings,
      :rule_configuration_properties,
      :input_artifact_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ID for the rule type, which is made up of the combined values for category, owner,
    #             provider, and version. For more information about conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage
    #                 conditions</a>. For more information about rules, see the <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html">CodePipeline rule reference</a>.</p>
    # @!attribute category
    #   <p>A category defines what kind of rule can be run in the stage, and constrains the
    #               provider type for the rule. The valid category is <code>Rule</code>. </p>
    #   @return [String]
    # @!attribute owner
    #   <p>The creator of the rule being called. The valid value for the <code>Owner</code> field
    #               in the rule category is <code>AWS</code>. </p>
    #   @return [String]
    # @!attribute provider
    #   <p>The rule provider, such as the <code>DeploymentWindow</code> rule. For a list of rule
    #               provider names, see the rules listed in the <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html">CodePipeline rule
    #                   reference</a>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>A string that describes the rule version.</p>
    #   @return [String]
    class RuleTypeId < Struct.new(
      nil,
      :category,
      :owner,
      :provider,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the settings for a rule type.</p>
    # @!attribute third_party_configuration_url
    #   <p>The URL of a sign-up page where users can sign up for an external service and perform
    #               initial configuration of the action provided by that service.</p>
    #   @return [String]
    # @!attribute entity_url_template
    #   <p>The URL returned to the CodePipeline console that provides a deep link to the
    #               resources of the external system, such as the configuration page for a CodeDeploy
    #               deployment group. This link is provided as part of the action display in the
    #               pipeline.</p>
    #   @return [String]
    # @!attribute execution_url_template
    #   <p>The URL returned to the CodePipeline console that contains a link to the
    #               top-level landing page for the external system, such as the console page for CodeDeploy.
    #               This link is shown on the pipeline view page in the CodePipeline console and
    #               provides a link to the execution entity of the external action.</p>
    #   @return [String]
    # @!attribute revision_url_template
    #   <p>The URL returned to the CodePipeline console that contains a link to the page
    #               where customers can update or change the configuration of the external action.</p>
    #   @return [String]
    class RuleTypeSettings < Struct.new(
      nil,
      :third_party_configuration_url,
      :entity_url_template,
      :execution_url_template,
      :revision_url_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location of the S3 bucket that contains a revision.</p>
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute object_key
    #   <p>The key of the object in the S3 bucket, which uniquely identifies the object in the
    #               bucket.</p>
    #   @return [String]
    class S3ArtifactLocation < Struct.new(
      nil,
      :bucket_name,
      :object_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 artifact location for an action's artifacts.</p>
    # @!attribute bucket
    #   <p>The Amazon S3 artifact bucket for an action's artifacts.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The artifact name.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the version (or revision) of a source artifact that initiated a
    #             pipeline execution.</p>
    # @!attribute action_name
    #   <p>The name of the action that processed the revision to the source
    #               artifact.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The system-generated unique ID that identifies the revision number of the
    #               artifact.</p>
    #   @return [String]
    # @!attribute revision_summary
    #   <p>Summary information about the most recent revision of the artifact. For GitHub and
    #               CodeCommit repositories, the commit message. For Amazon S3 buckets or actions,
    #               the user-provided content of a <code>codepipeline-artifact-revision-summary</code> key
    #               specified in the object metadata.</p>
    #   @return [String]
    # @!attribute revision_url
    #   <p>The commit ID for the artifact revision. For artifacts stored in GitHub or
    #               CodeCommit repositories, the commit ID is linked to a commit details page.</p>
    #   @return [String]
    class SourceRevision < Struct.new(
      nil,
      :action_name,
      :revision_id,
      :revision_summary,
      :revision_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list that allows you to specify, or override, the source revision for a pipeline
    #             execution that's being started. A source revision is the version with all the changes to
    #             your application code, or source artifact, for the pipeline execution.</p>
    #          <note>
    #             <p>For the <code>S3_OBJECT_VERSION_ID</code> and <code>S3_OBJECT_KEY</code> types of
    #                 source revisions, either of the types can be used independently, or they can be used
    #                 together to override the source with a specific ObjectKey and VersionID.</p>
    #          </note>
    # @!attribute action_name
    #   <p>The name of the action where the override will be applied.</p>
    #   @return [String]
    # @!attribute revision_type
    #   <p>The type of source revision, based on the source provider. For example, the revision
    #               type for the CodeCommit action provider is the commit ID.</p>
    #   @return [String]
    # @!attribute revision_value
    #   <p>The source revision, or version of your source artifact, with the changes that you
    #               want to run in the pipeline execution.</p>
    #   @return [String]
    class SourceRevisionOverride < Struct.new(
      nil,
      :action_name,
      :revision_type,
      :revision_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The state of a run of a condition for a stage.</p>
    # @!attribute latest_execution
    #   <p>Represents information about the latest run of a condition for a stage.</p>
    #   @return [Types::StageConditionsExecution]
    # @!attribute condition_states
    #   <p>The states of the conditions for a run of a condition for a stage.</p>
    #   @return [Array<Types::ConditionState>]
    class StageConditionState < Struct.new(
      nil,
      :latest_execution,
      :condition_states,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the run of a condition for a stage.</p>
    # @!attribute status
    #   <p>The status of a run of a condition for a stage.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>A summary of the run of the condition for a stage.</p>
    #   @return [String]
    class StageConditionsExecution < Struct.new(
      nil,
      :status,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about a stage to a job worker.</p>
    # @!attribute name
    #   <p>The name of the stage.</p>
    #   @return [String]
    class StageContext < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about a stage and its definition.</p>
    # @!attribute name
    #   <p>The name of the stage.</p>
    #   @return [String]
    # @!attribute blockers
    #   <p>Reserved for future use.</p>
    #   @return [Array<Types::BlockerDeclaration>]
    # @!attribute actions
    #   <p>The actions included in a stage.</p>
    #   @return [Array<Types::ActionDeclaration>]
    # @!attribute on_failure
    #   <p>The method to use when a stage has not completed successfully. For example,
    #               configuring this field for rollback will roll back a failed stage automatically to the
    #               last successful pipeline execution in the stage.</p>
    #   @return [Types::FailureConditions]
    # @!attribute on_success
    #   <p>The method to use when a stage has succeeded. For example, configuring this field for
    #               conditions will allow the stage to succeed when the conditions are met.</p>
    #   @return [Types::SuccessConditions]
    # @!attribute before_entry
    #   <p>The method to use when a stage allows entry. For example, configuring this field for
    #               conditions will allow entry to the stage when the conditions are met.</p>
    #   @return [Types::BeforeEntryConditions]
    class StageDeclaration < Struct.new(
      nil,
      :name,
      :blockers,
      :actions,
      :on_failure,
      :on_success,
      :before_entry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the run of a stage.</p>
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution associated with the stage.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the stage, or for a completed stage, the last status of the
    #               stage.</p>
    #            <note>
    #               <p>A status of cancelled means that the pipeline’s definition was updated before the
    #                   stage execution could be completed.</p>
    #            </note>
    #   @return [String]
    # @!attribute type
    #   <p>The type of pipeline execution for the stage, such as a rollback pipeline
    #               execution.</p>
    #   @return [String]
    class StageExecution < Struct.new(
      nil,
      :pipeline_execution_id,
      :status,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The stage was specified in an invalid format or cannot be found.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class StageNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to retry. The pipeline structure or stage state might have changed while
    #             actions awaited retry, or the stage contains no failed
    #             actions.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class StageNotRetryableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the state of the stage.</p>
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #   @return [String]
    # @!attribute inbound_execution
    #   <p>Represents information about the run of a stage.</p>
    #   @return [Types::StageExecution]
    # @!attribute inbound_executions
    #   <p>The inbound executions for a stage.</p>
    #   @return [Array<Types::StageExecution>]
    # @!attribute inbound_transition_state
    #   <p>The state of the inbound transition, which is either enabled or disabled.</p>
    #   @return [Types::TransitionState]
    # @!attribute action_states
    #   <p>The state of the stage.</p>
    #   @return [Array<Types::ActionState>]
    # @!attribute latest_execution
    #   <p>Information about the latest execution in the stage, including its ID and
    #               status.</p>
    #   @return [Types::StageExecution]
    # @!attribute before_entry_condition_state
    #   <p>The state of the entry conditions for a stage.</p>
    #   @return [Types::StageConditionState]
    # @!attribute on_success_condition_state
    #   <p>The state of the success conditions for a stage.</p>
    #   @return [Types::StageConditionState]
    # @!attribute on_failure_condition_state
    #   <p>The state of the failure conditions for a stage.</p>
    #   @return [Types::StageConditionState]
    # @!attribute retry_stage_metadata
    #   <p>he details of a specific automatic retry on stage failure, including the attempt
    #               number and trigger.</p>
    #   @return [Types::RetryStageMetadata]
    class StageState < Struct.new(
      nil,
      :stage_name,
      :inbound_execution,
      :inbound_executions,
      :inbound_transition_state,
      :action_states,
      :latest_execution,
      :before_entry_condition_state,
      :on_success_condition_state,
      :on_failure_condition_state,
      :retry_stage_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>StartPipelineExecution</code> action.</p>
    # @!attribute name
    #   <p>The name of the pipeline to start.</p>
    #   @return [String]
    # @!attribute variables
    #   <p>A list that overrides pipeline variables for a pipeline execution that's being
    #               started. Variable names must match <code>[A-Za-z0-9@\-_]+</code>, and the values can be
    #               anything except an empty string.</p>
    #   @return [Array<Types::PipelineVariable>]
    # @!attribute client_request_token
    #   <p>The system-generated unique ID used to identify a unique execution
    #               request.</p>
    #   @return [String]
    # @!attribute source_revisions
    #   <p>A list that allows you to specify, or override, the source revision for a pipeline
    #               execution that's being started. A source revision is the version with all the changes to
    #               your application code, or source artifact, for the pipeline execution.</p>
    #   @return [Array<Types::SourceRevisionOverride>]
    class StartPipelineExecutionInput < Struct.new(
      nil,
      :name,
      :variables,
      :client_request_token,
      :source_revisions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>StartPipelineExecution</code> action.</p>
    # @!attribute pipeline_execution_id
    #   <p>The unique system-generated ID of the pipeline execution that was
    #               started.</p>
    #   @return [String]
    class StartPipelineExecutionOutput < Struct.new(
      nil,
      :pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The interaction that stopped a pipeline execution.</p>
    # @!attribute reason
    #   <p>The user-specified reason the pipeline was stopped.</p>
    #   @return [String]
    class StopExecutionTrigger < Struct.new(
      nil,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline to stop.</p>
    #   @return [String]
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution to be stopped in the current stage. Use the
    #                   <code>GetPipelineState</code> action to retrieve the current
    #               pipelineExecutionId.</p>
    #   @return [String]
    # @!attribute abandon
    #   <p>Use this option to stop the pipeline execution by abandoning, rather than finishing,
    #               in-progress actions.</p>
    #            <note>
    #               <p>This option can lead to failed or out-of-sequence tasks.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute reason
    #   <p>Use this option to enter comments, such as the reason the pipeline was stopped.</p>
    #   @return [String]
    class StopPipelineExecutionInput < Struct.new(
      nil,
      :pipeline_name,
      :pipeline_execution_id,
      :abandon,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_execution_id
    #   <p>The unique system-generated ID of the pipeline execution that was stopped.</p>
    #   @return [String]
    class StopPipelineExecutionOutput < Struct.new(
      nil,
      :pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter for pipeline executions that have successfully completed the stage in the
    #             current pipeline version.</p>
    # @!attribute stage_name
    #   <p>The name of the stage for filtering for pipeline executions where the stage was
    #               successful in the current pipeline version.</p>
    #   @return [String]
    class SucceededInStageFilter < Struct.new(
      nil,
      :stage_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The conditions for making checks that, if met, succeed a stage. For more information
    #             about conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage conditions</a>
    #             and <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html">How do
    #                 stage conditions work?</a>.</p>
    # @!attribute conditions
    #   <p>The conditions that are success conditions.</p>
    #   @return [Array<Types::Condition>]
    class SuccessConditions < Struct.new(
      nil,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tag is a key-value pair that is used to manage the resource.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags you want to modify or add to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters the list of targets.</p>
    # @!attribute name
    #   <p>The name on which to filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values on which to filter.</p>
    #   @return [Array<String>]
    class TargetFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A response to a <code>PollForThirdPartyJobs</code> request returned by CodePipeline when there is a job to be worked on by a partner action.</p>
    # @!attribute client_id
    #   <p>The <code>clientToken</code> portion of the <code>clientId</code> and
    #                   <code>clientToken</code> pair used to verify that the calling entity is allowed
    #               access to the job and its details.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The identifier used to identify the job in CodePipeline.</p>
    #   @return [String]
    class ThirdPartyJob < Struct.new(
      nil,
      :client_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the job data for a partner action.</p>
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #   @return [Types::ActionTypeId]
    # @!attribute action_configuration
    #   <p>Represents information about an action configuration.</p>
    #   @return [Types::ActionConfiguration]
    # @!attribute pipeline_context
    #   <p>Represents information about a pipeline to a job worker.</p>
    #            <note>
    #               <p>Does not include <code>pipelineArn</code> and <code>pipelineExecutionId</code>
    #                   for ThirdParty jobs.</p>
    #            </note>
    #   @return [Types::PipelineContext]
    # @!attribute input_artifacts
    #   <p>The name of the artifact that is worked on by the action, if any. This name might
    #               be system-generated, such as "MyApp", or it might be defined by the user when the action
    #               is created. The input artifact name must match the name of an output artifact generated
    #               by an action in an earlier action or stage of the pipeline.</p>
    #   @return [Array<Types::Artifact>]
    # @!attribute output_artifacts
    #   <p>The name of the artifact that is the result of the action, if any. This name might
    #               be system-generated, such as "MyBuiltApp", or it might be defined by the user when the
    #               action is created.</p>
    #   @return [Array<Types::Artifact>]
    # @!attribute artifact_credentials
    #   <p>Represents an Amazon Web Services session credentials object. These credentials are
    #               temporary credentials that are issued by Amazon Web Services Secure Token Service (STS).
    #               They can be used to access input and output artifacts in the S3 bucket used to store
    #               artifact for the pipeline in CodePipeline. </p>
    #   @return [Types::AWSSessionCredentials]
    # @!attribute continuation_token
    #   <p>A system-generated token, such as a CodeDeploy deployment ID, that a job requires
    #               to continue the job asynchronously.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The encryption key used to encrypt and decrypt data in the artifact store for the
    #               pipeline, such as an Amazon Web Services Key Management Service (Amazon Web Services KMS)
    #               key. This is optional and might not be present.</p>
    #   @return [Types::EncryptionKey]
    class ThirdPartyJobData < Struct.new(
      nil,
      :action_type_id,
      :action_configuration,
      :pipeline_context,
      :input_artifacts,
      :output_artifacts,
      :artifact_credentials,
      :continuation_token,
      :encryption_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a job sent in response to a <code>GetThirdPartyJobDetails</code>
    #             request.</p>
    # @!attribute id
    #   <p>The identifier used to identify the job details in CodePipeline.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The data to be returned by the third party job worker.</p>
    #   @return [Types::ThirdPartyJobData]
    # @!attribute nonce
    #   <p>A system-generated random number that CodePipeline uses to ensure that the
    #               job is being worked on by only one job worker. Use this number in an <a>AcknowledgeThirdPartyJob</a> request.</p>
    #   @return [String]
    class ThirdPartyJobDetails < Struct.new(
      nil,
      :id,
      :data,
      :nonce,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tags limit for a resource has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about the state of transitions between one stage and another
    #             stage.</p>
    # @!attribute enabled
    #   <p>Whether the transition between stages is enabled (true) or disabled
    #               (false).</p>
    #   @return [Boolean]
    # @!attribute last_changed_by
    #   <p>The ID of the user who last changed the transition state.</p>
    #   @return [String]
    # @!attribute last_changed_at
    #   <p>The timestamp when the transition state was last changed.</p>
    #   @return [Time]
    # @!attribute disabled_reason
    #   <p>The user-specified reason why the transition between two stages of a pipeline was
    #               disabled.</p>
    #   @return [String]
    class TransitionState < Struct.new(
      nil,
      :enabled,
      :last_changed_by,
      :last_changed_at,
      :disabled_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Unable to roll back the stage. The cause might be if the pipeline version has changed
    #             since the target pipeline execution was deployed, the stage is currently running, or an
    #             incorrect target pipeline execution ID was provided.</p>
    # @!attribute message
    #   @return [String]
    class UnableToRollbackStageException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of keys for the tags to be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_type
    #   <p>The action type definition for the action type to be updated.</p>
    #   @return [Types::ActionTypeDeclaration]
    class UpdateActionTypeInput < Struct.new(
      nil,
      :action_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an <code>UpdatePipeline</code> action.</p>
    # @!attribute pipeline
    #   <p>The name of the pipeline to be updated.</p>
    #   @return [Types::PipelineDeclaration]
    class UpdatePipelineInput < Struct.new(
      nil,
      :pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>UpdatePipeline</code> action.</p>
    # @!attribute pipeline
    #   <p>The structure of the updated pipeline.</p>
    #   @return [Types::PipelineDeclaration]
    class UpdatePipelineOutput < Struct.new(
      nil,
      :pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The validation was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authentication applied to incoming webhook trigger requests.</p>
    # @!attribute allowed_ip_range
    #   <p>The property used to configure acceptance of webhooks in an IP address range. For
    #               IP, only the <code>AllowedIPRange</code> property must be set. This property must be set
    #               to a valid CIDR range.</p>
    #   @return [String]
    # @!attribute secret_token
    #   <p>The property used to configure GitHub authentication. For GITHUB_HMAC, only the
    #                   <code>SecretToken</code> property must be set.</p>
    #            <important>
    #               <p>When creating CodePipeline webhooks, do not use your own credentials or
    #                   reuse the same secret token across multiple webhooks. For optimal security, generate
    #                   a unique secret token for each webhook you create. The secret token is an arbitrary
    #                   string that you provide, which GitHub uses to compute and sign the webhook payloads
    #                   sent to CodePipeline, for protecting the integrity and authenticity of the
    #                   webhook payloads. Using your own credentials or reusing the same token across
    #                   multiple webhooks can lead to security vulnerabilities.</p>
    #            </important>
    #            <note>
    #               <p>If a secret token was provided, it will be redacted in the response.</p>
    #            </note>
    #   @return [String]
    class WebhookAuthConfiguration < Struct.new(
      nil,
      :allowed_ip_range,
      :secret_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents information about a webhook and its definition.</p>
    # @!attribute name
    #   <p>The name of the webhook.</p>
    #   @return [String]
    # @!attribute target_pipeline
    #   <p>The name of the pipeline you want to connect to the webhook.</p>
    #   @return [String]
    # @!attribute target_action
    #   <p>The name of the action in a pipeline you want to connect to the webhook. The action
    #               must be from the source (first) stage of the pipeline.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of rules applied to the body/payload sent in the POST request to a webhook
    #               URL. All defined rules must pass for the request to be accepted and the pipeline
    #               started.</p>
    #   @return [Array<Types::WebhookFilterRule>]
    # @!attribute authentication
    #   <p>Supported options are GITHUB_HMAC, IP, and UNAUTHENTICATED.</p>
    #            <important>
    #               <p>When creating CodePipeline webhooks, do not use your own credentials or
    #                   reuse the same secret token across multiple webhooks. For optimal security, generate
    #                   a unique secret token for each webhook you create. The secret token is an arbitrary
    #                   string that you provide, which GitHub uses to compute and sign the webhook payloads
    #                   sent to CodePipeline, for protecting the integrity and authenticity of the
    #                   webhook payloads. Using your own credentials or reusing the same token across
    #                   multiple webhooks can lead to security vulnerabilities.</p>
    #            </important>
    #            <note>
    #               <p>If a secret token was provided, it will be redacted in the response.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>For information about the authentication scheme implemented by GITHUB_HMAC,
    #                       see <a href="https://developer.github.com/webhooks/securing/">Securing your
    #                           webhooks</a> on the GitHub Developer website.</p>
    #               </li>
    #               <li>
    #                  <p> IP rejects webhooks trigger requests unless they originate from an IP
    #                       address in the IP range whitelisted in the authentication
    #                       configuration.</p>
    #               </li>
    #               <li>
    #                  <p> UNAUTHENTICATED accepts all webhook trigger requests regardless of
    #                       origin.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute authentication_configuration
    #   <p>Properties that configure the authentication applied to incoming webhook trigger
    #               requests. The required properties depend on the authentication type. For GITHUB_HMAC,
    #               only the <code>SecretToken </code>property must be set. For IP, only the
    #                   <code>AllowedIPRange </code>property must be set to a valid CIDR range. For
    #               UNAUTHENTICATED, no properties can be set.</p>
    #   @return [Types::WebhookAuthConfiguration]
    class WebhookDefinition < Struct.new(
      nil,
      :name,
      :target_pipeline,
      :target_action,
      :filters,
      :authentication,
      :authentication_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The event criteria that specify when a webhook notification is sent to your
    #             URL.</p>
    # @!attribute json_path
    #   <p>A JsonPath expression that is applied to the body/payload of the webhook. The value
    #               selected by the JsonPath expression must match the value specified in the
    #                   <code>MatchEquals</code> field. Otherwise, the request is ignored. For more
    #               information, see <a href="https://github.com/json-path/JsonPath">Java JsonPath
    #                   implementation</a> in GitHub.</p>
    #   @return [String]
    # @!attribute match_equals
    #   <p>The value selected by the <code>JsonPath</code> expression must match what is
    #               supplied in the <code>MatchEquals</code> field. Otherwise, the request is ignored.
    #               Properties from the target action configuration can be included as placeholders in this
    #               value by surrounding the action configuration key with curly brackets. For example, if
    #               the value supplied here is "refs/heads/{Branch}" and the target action has an action
    #               configuration property called "Branch" with a value of "main", the
    #                   <code>MatchEquals</code> value is evaluated as "refs/heads/main". For a list of
    #               action configuration properties for built-in action types, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements">Pipeline Structure Reference Action Requirements</a>.</p>
    #   @return [String]
    class WebhookFilterRule < Struct.new(
      nil,
      :json_path,
      :match_equals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified webhook was entered in an invalid format or cannot be
    #             found.</p>
    class WebhookNotFoundException < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
