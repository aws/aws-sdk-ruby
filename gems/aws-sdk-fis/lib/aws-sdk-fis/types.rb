# frozen_string_literal: true

# This is generated code!

module Aws::Fis
  # This module contains the types returned by client operations.
  module Types

    module AccountTargeting
      SINGLE_ACCOUNT = 'single-account'
      MULTI_ACCOUNT = 'multi-account'
    end

    # <p>Describes an action. For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html">FIS actions</a> 
    #          in the <i>Fault Injection Service User Guide</i>.</p>
    # @!attribute id
    #   <p>The ID of the action.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The action parameters, if applicable.</p>
    #   @return [Hash<String, Types::ActionParameter>]
    # @!attribute targets
    #   <p>The supported targets for the action.</p>
    #   @return [Hash<String, Types::ActionTarget>]
    # @!attribute tags
    #   <p>The tags for the action.</p>
    #   @return [Hash<String, String>]
    class Action < Struct.new(
      :id,
      :arn,
      :description,
      :parameters,
      :targets,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a parameter for an action.</p>
    # @!attribute description
    #   <p>The parameter description.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Indicates whether the parameter is required.</p>
    #   @return [Boolean]
    class ActionParameter < Struct.new(
      :description,
      :required,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:required] =  unless options.key?(:required)
        super
      end
    end

    # <p>Provides a summary of an action.</p>
    # @!attribute id
    #   <p>The ID of the action.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the action.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #   @return [Hash<String, Types::ActionTarget>]
    # @!attribute tags
    #   <p>The tags for the action.</p>
    #   @return [Hash<String, String>]
    class ActionSummary < Struct.new(
      :id,
      :arn,
      :description,
      :targets,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a target for an action.</p>
    # @!attribute resource_type
    #   <p>The resource type of the target.</p>
    #   @return [String]
    class ActionTarget < Struct.new(
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ActionsMode
      SKIP_ALL = 'skip-all'
      RUN_ALL = 'run-all'
    end

    # <p>The request could not be processed because of a conflict.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies an action for an experiment template.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/actions.html">Actions</a>
    #          in the <i>Fault Injection Service User Guide</i>.</p>
    # @!attribute action_id
    #   <p>The ID of the action. The format of the action ID is: aws:<i>service-name</i>:<i>action-type</i>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the action, if applicable.</p>
    #   @return [Hash<String, String>]
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #   @return [Hash<String, String>]
    # @!attribute start_after
    #   <p>The name of the action that must be completed before the current action starts. Omit this parameter to run the action at the start of the experiment.</p>
    #   @return [Array<String>]
    class CreateExperimentTemplateActionInput < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies experiment options for an experiment template.</p>
    # @!attribute account_targeting
    #   <p>Specifies the account targeting setting for experiment options.</p>
    #   @return [String]
    # @!attribute empty_target_resolution_mode
    #   <p>Specifies the empty target resolution mode for experiment options.</p>
    #   @return [String]
    class CreateExperimentTemplateExperimentOptionsInput < Struct.new(
      :account_targeting,
      :empty_target_resolution_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for experiment logging.</p>
    # @!attribute cloud_watch_logs_configuration
    #   <p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #   @return [Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput]
    # @!attribute s3_configuration
    #   <p>The configuration for experiment logging to Amazon S3.</p>
    #   @return [Types::ExperimentTemplateS3LogConfigurationInput]
    # @!attribute log_schema_version
    #   <p>The schema version.</p>
    #   @return [Integer]
    class CreateExperimentTemplateLogConfigurationInput < Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for experiment reports.</p>
    # @!attribute outputs
    #   <p>The output destinations of the experiment report. </p>
    #   @return [Types::ExperimentTemplateReportConfigurationOutputsInput]
    # @!attribute data_sources
    #   <p>The data sources for the experiment report.</p>
    #   @return [Types::ExperimentTemplateReportConfigurationDataSourcesInput]
    # @!attribute pre_experiment_duration
    #   <p>The duration before the experiment start time for the data sources to include in the report. </p>
    #   @return [String]
    # @!attribute post_experiment_duration
    #   <p>The duration after the experiment end time for the data sources to include in the report. </p>
    #   @return [String]
    class CreateExperimentTemplateReportConfigurationInput < Struct.new(
      :outputs,
      :data_sources,
      :pre_experiment_duration,
      :post_experiment_duration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the experiment template.</p>
    #   @return [String]
    # @!attribute stop_conditions
    #   <p>The stop conditions.</p>
    #   @return [Array<Types::CreateExperimentTemplateStopConditionInput>]
    # @!attribute targets
    #   <p>The targets for the experiment.</p>
    #   @return [Hash<String, Types::CreateExperimentTemplateTargetInput>]
    # @!attribute actions
    #   <p>The actions for the experiment.</p>
    #   @return [Hash<String, Types::CreateExperimentTemplateActionInput>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the experiment template.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_configuration
    #   <p>The configuration for experiment logging.</p>
    #   @return [Types::CreateExperimentTemplateLogConfigurationInput]
    # @!attribute experiment_options
    #   <p>The experiment options for the experiment template.</p>
    #   @return [Types::CreateExperimentTemplateExperimentOptionsInput]
    # @!attribute experiment_report_configuration
    #   <p>The experiment report configuration for the experiment template.</p>
    #   @return [Types::CreateExperimentTemplateReportConfigurationInput]
    class CreateExperimentTemplateRequest < Struct.new(
      :client_token,
      :description,
      :stop_conditions,
      :targets,
      :actions,
      :role_arn,
      :tags,
      :log_configuration,
      :experiment_options,
      :experiment_report_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_template
    #   <p>Information about the experiment template.</p>
    #   @return [Types::ExperimentTemplate]
    class CreateExperimentTemplateResponse < Struct.new(
      :experiment_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies a stop condition for an experiment template.</p>
    # @!attribute source
    #   <p>The source for the stop condition. Specify <code>aws:cloudwatch:alarm</code> if the stop
    #            condition is defined by a CloudWatch alarm. Specify <code>none</code> if there is no stop
    #            condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch alarm. This is required if the source is
    #            a CloudWatch alarm.</p>
    #   @return [String]
    class CreateExperimentTemplateStopConditionInput < Struct.new(
      :source,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies a target for an experiment. You must specify at least one Amazon Resource Name (ARN) or 
    #          at least one resource tag. You cannot specify both ARNs and tags.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/targets.html">Targets</a>
    #          in the <i>Fault Injection Service User Guide</i>.</p>
    # @!attribute resource_type
    #   <p>The resource type. The resource type must be supported for the specified action.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the resources.</p>
    #   @return [Array<String>]
    # @!attribute resource_tags
    #   <p>The tags for the target resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute filters
    #   <p>The filters to apply to identify target resources using specific attributes.</p>
    #   @return [Array<Types::ExperimentTemplateTargetInputFilter>]
    # @!attribute selection_mode
    #   <p>Scopes the identified resources to a specific count of the resources at random, or a percentage of the resources. All identified resources are included in the target.</p>
    #            <ul>
    #               <li>
    #                  <p>ALL - Run the action on all identified targets. This is the default.</p>
    #               </li>
    #               <li>
    #                  <p>COUNT(n) - Run the action on the specified number of targets, chosen from the identified targets at random.
    #                   For example, COUNT(1) selects one of the targets.</p>
    #               </li>
    #               <li>
    #                  <p>PERCENT(n) - Run the action on the specified percentage of targets, chosen from the identified targets 
    #                  at random. For example, PERCENT(25) selects 25% of the targets.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute parameters
    #   <p>The resource type parameters.</p>
    #   @return [Hash<String, String>]
    class CreateExperimentTemplateTargetInput < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute experiment_template_id
    #   <p>The experiment template ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the target account.</p>
    #   @return [String]
    class CreateTargetAccountConfigurationRequest < Struct.new(
      :client_token,
      :experiment_template_id,
      :account_id,
      :role_arn,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_account_configuration
    #   <p>Information about the target account configuration.</p>
    #   @return [Types::TargetAccountConfiguration]
    class CreateTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    class DeleteExperimentTemplateRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_template
    #   <p>Information about the experiment template.</p>
    #   @return [Types::ExperimentTemplate]
    class DeleteExperimentTemplateResponse < Struct.new(
      :experiment_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    #   @return [String]
    class DeleteTargetAccountConfigurationRequest < Struct.new(
      :experiment_template_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_account_configuration
    #   <p>Information about the target account configuration.</p>
    #   @return [Types::TargetAccountConfiguration]
    class DeleteTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EmptyTargetResolutionMode
      FAIL = 'fail'
      SKIP = 'skip'
    end

    # <p>Describes an experiment.</p>
    # @!attribute id
    #   <p>The ID of the experiment.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the experiment.</p>
    #   @return [String]
    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the experiment.</p>
    #   @return [Types::ExperimentState]
    # @!attribute targets
    #   <p>The targets for the experiment.</p>
    #   @return [Hash<String, Types::ExperimentTarget>]
    # @!attribute actions
    #   <p>The actions for the experiment.</p>
    #   @return [Hash<String, Types::ExperimentAction>]
    # @!attribute stop_conditions
    #   <p>The stop conditions for the experiment.</p>
    #   @return [Array<Types::ExperimentStopCondition>]
    # @!attribute creation_time
    #   <p>The time that the experiment was created.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The time that the experiment started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the experiment ended.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags for the experiment.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_configuration
    #   <p>The configuration for experiment logging.</p>
    #   @return [Types::ExperimentLogConfiguration]
    # @!attribute experiment_options
    #   <p>The experiment options for the experiment.</p>
    #   @return [Types::ExperimentOptions]
    # @!attribute target_account_configurations_count
    #   <p>The count of target account configurations for the experiment.</p>
    #   @return [Integer]
    # @!attribute experiment_report_configuration
    #   <p>The experiment report configuration for the experiment.</p>
    #   @return [Types::ExperimentReportConfiguration]
    # @!attribute experiment_report
    #   <p>The experiment report for the experiment.</p>
    #   @return [Types::ExperimentReport]
    class Experiment < Struct.new(
      :id,
      :arn,
      :experiment_template_id,
      :role_arn,
      :state,
      :targets,
      :actions,
      :stop_conditions,
      :creation_time,
      :start_time,
      :end_time,
      :tags,
      :log_configuration,
      :experiment_options,
      :target_account_configurations_count,
      :experiment_report_configuration,
      :experiment_report,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the action for an experiment.</p>
    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the action.</p>
    #   @return [Hash<String, String>]
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #   @return [Hash<String, String>]
    # @!attribute start_after
    #   <p>The name of the action that must be completed before this action starts.</p>
    #   @return [Array<String>]
    # @!attribute state
    #   <p>The state of the action.</p>
    #   @return [Types::ExperimentActionState]
    # @!attribute start_time
    #   <p>The time that the action started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the action ended.</p>
    #   @return [Time]
    class ExperimentAction < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      :state,
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the state of an action.</p>
    # @!attribute status
    #   <p>The state of the action.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the state.</p>
    #   @return [String]
    class ExperimentActionState < Struct.new(
      :status,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ExperimentActionStatus
      pending = 'pending'
      initiating = 'initiating'
      running = 'running'
      completed = 'completed'
      cancelled = 'cancelled'
      stopping = 'stopping'
      stopped = 'stopped'
      failed = 'failed'
      skipped = 'skipped'
    end

    # <p>Describes the configuration for experiment logging to Amazon CloudWatch Logs.</p>
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>
    #   @return [String]
    class ExperimentCloudWatchLogsLogConfiguration < Struct.new(
      :log_group_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the error when an experiment has <code>failed</code>.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services Account ID where the experiment failure occurred.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code for the failed experiment.</p>
    #   @return [String]
    # @!attribute location
    #   <p>Context for the section of the experiment template that failed.</p>
    #   @return [String]
    class ExperimentError < Struct.new(
      :account_id,
      :code,
      :location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the configuration for experiment logging.</p>
    # @!attribute cloud_watch_logs_configuration
    #   <p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #   @return [Types::ExperimentCloudWatchLogsLogConfiguration]
    # @!attribute s3_configuration
    #   <p>The configuration for experiment logging to Amazon S3.</p>
    #   @return [Types::ExperimentS3LogConfiguration]
    # @!attribute log_schema_version
    #   <p>The schema version.</p>
    #   @return [Integer]
    class ExperimentLogConfiguration < Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the options for an experiment.</p>
    # @!attribute account_targeting
    #   <p>The account targeting setting for an experiment.</p>
    #   @return [String]
    # @!attribute empty_target_resolution_mode
    #   <p>The empty target resolution mode for an experiment.</p>
    #   @return [String]
    # @!attribute actions_mode
    #   <p>The actions mode of the experiment that is set from the StartExperiment API command.</p>
    #   @return [String]
    class ExperimentOptions < Struct.new(
      :account_targeting,
      :empty_target_resolution_mode,
      :actions_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the experiment report.</p>
    # @!attribute state
    #   <p>The state of the experiment report.</p>
    #   @return [Types::ExperimentReportState]
    # @!attribute s3_reports
    #   <p>The S3 destination of the experiment report.</p>
    #   @return [Array<Types::ExperimentReportS3Report>]
    class ExperimentReport < Struct.new(
      :state,
      :s3_reports,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the report configuration for the experiment. For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration">Experiment report configurations for AWS FIS</a>.</p>
    # @!attribute outputs
    #   <p>The output destinations of the experiment report.</p>
    #   @return [Types::ExperimentReportConfigurationOutputs]
    # @!attribute data_sources
    #   <p>The data sources for the experiment report.</p>
    #   @return [Types::ExperimentReportConfigurationDataSources]
    # @!attribute pre_experiment_duration
    #   <p>The duration before the experiment start time for the data sources to include in the report.</p>
    #   @return [String]
    # @!attribute post_experiment_duration
    #   <p>The duration after the experiment end time for the data sources to include in the report.</p>
    #   @return [String]
    class ExperimentReportConfiguration < Struct.new(
      :outputs,
      :data_sources,
      :pre_experiment_duration,
      :post_experiment_duration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the CloudWatch dashboard to include in the experiment report. The dashboard widgets will be captured as  snapshot graphs within the report.</p>
    # @!attribute dashboard_identifier
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch dashboard to include in the experiment report.</p>
    #   @return [String]
    class ExperimentReportConfigurationCloudWatchDashboard < Struct.new(
      :dashboard_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the data sources for the experiment report.</p>
    # @!attribute cloud_watch_dashboards
    #   <p>The CloudWatch dashboards to include as data sources in the experiment report.</p>
    #   @return [Array<Types::ExperimentReportConfigurationCloudWatchDashboard>]
    class ExperimentReportConfigurationDataSources < Struct.new(
      :cloud_watch_dashboards,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the output destinations of the experiment report.</p>
    # @!attribute s3_configuration
    #   <p>The S3 destination for the experiment report.</p>
    #   @return [Types::ExperimentReportConfigurationOutputsS3Configuration]
    class ExperimentReportConfigurationOutputs < Struct.new(
      :s3_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the S3 destination for the experiment report.</p>
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket where the experiment report will be stored.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix of the S3 bucket where the experiment report will be stored.</p>
    #   @return [String]
    class ExperimentReportConfigurationOutputsS3Configuration < Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the error when experiment report generation has failed.</p>
    # @!attribute code
    #   <p>The error code for the failed experiment report generation.</p>
    #   @return [String]
    class ExperimentReportError < Struct.new(
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the S3 destination for the report.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the generated report.</p>
    #   @return [String]
    # @!attribute report_type
    #   <p>The report type for the experiment report.</p>
    #   @return [String]
    class ExperimentReportS3Report < Struct.new(
      :arn,
      :report_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the state of the experiment report generation.</p>
    # @!attribute status
    #   <p>The state of the experiment report generation.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the state of the experiment report generation.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error information of the experiment when the experiment report generation has failed.</p>
    #   @return [Types::ExperimentReportError]
    class ExperimentReportState < Struct.new(
      :status,
      :reason,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ExperimentReportStatus
      pending = 'pending'
      running = 'running'
      completed = 'completed'
      cancelled = 'cancelled'
      failed = 'failed'
    end

    # <p>Describes the configuration for experiment logging to Amazon S3.</p>
    # @!attribute bucket_name
    #   <p>The name of the destination bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The bucket prefix.</p>
    #   @return [String]
    class ExperimentS3LogConfiguration < Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the state of an experiment.</p>
    # @!attribute status
    #   <p>The state of the experiment.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the state.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error information of the experiment when the action has <code>failed</code>.</p>
    #   @return [Types::ExperimentError]
    class ExperimentState < Struct.new(
      :status,
      :reason,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ExperimentStatus
      pending = 'pending'
      initiating = 'initiating'
      running = 'running'
      completed = 'completed'
      stopping = 'stopping'
      stopped = 'stopped'
      failed = 'failed'
      cancelled = 'cancelled'
    end

    # <p>Describes the stop condition for an experiment.</p>
    # @!attribute source
    #   <p>The source for the stop condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch alarm, if applicable.</p>
    #   @return [String]
    class ExperimentStopCondition < Struct.new(
      :source,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides a summary of an experiment.</p>
    # @!attribute id
    #   <p>The ID of the experiment.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the experiment.</p>
    #   @return [String]
    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the experiment.</p>
    #   @return [Types::ExperimentState]
    # @!attribute creation_time
    #   <p>The time that the experiment was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags for the experiment.</p>
    #   @return [Hash<String, String>]
    # @!attribute experiment_options
    #   <p>The experiment options for the experiment.</p>
    #   @return [Types::ExperimentOptions]
    class ExperimentSummary < Struct.new(
      :id,
      :arn,
      :experiment_template_id,
      :state,
      :creation_time,
      :tags,
      :experiment_options,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a target for an experiment.</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the resources.</p>
    #   @return [Array<String>]
    # @!attribute resource_tags
    #   <p>The tags for the target resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute filters
    #   <p>The filters to apply to identify target resources using specific attributes.</p>
    #   @return [Array<Types::ExperimentTargetFilter>]
    # @!attribute selection_mode
    #   <p>Scopes the identified resources to a specific count or percentage.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The resource type parameters.</p>
    #   @return [Hash<String, String>]
    class ExperimentTarget < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a target account configuration for an experiment.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the target account.</p>
    #   @return [String]
    class ExperimentTargetAccountConfiguration < Struct.new(
      :role_arn,
      :account_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides a summary of a target account configuration.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the target account.</p>
    #   @return [String]
    class ExperimentTargetAccountConfigurationSummary < Struct.new(
      :role_arn,
      :account_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a filter used for the target resources in an experiment.</p>
    # @!attribute path
    #   <p>The attribute path for the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The attribute values for the filter.</p>
    #   @return [Array<String>]
    class ExperimentTargetFilter < Struct.new(
      :path,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes an experiment template.</p>
    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the experiment template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the experiment template.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets for the experiment.</p>
    #   @return [Hash<String, Types::ExperimentTemplateTarget>]
    # @!attribute actions
    #   <p>The actions for the experiment.</p>
    #   @return [Hash<String, Types::ExperimentTemplateAction>]
    # @!attribute stop_conditions
    #   <p>The stop conditions for the experiment.</p>
    #   @return [Array<Types::ExperimentTemplateStopCondition>]
    # @!attribute creation_time
    #   <p>The time the experiment template was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time the experiment template was last updated.</p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the experiment template.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_configuration
    #   <p>The configuration for experiment logging.</p>
    #   @return [Types::ExperimentTemplateLogConfiguration]
    # @!attribute experiment_options
    #   <p>The experiment options for an experiment template.</p>
    #   @return [Types::ExperimentTemplateExperimentOptions]
    # @!attribute target_account_configurations_count
    #   <p>The count of target account configurations for the experiment template.</p>
    #   @return [Integer]
    # @!attribute experiment_report_configuration
    #   <p>Describes the report configuration for the experiment template.</p>
    #   @return [Types::ExperimentTemplateReportConfiguration]
    class ExperimentTemplate < Struct.new(
      :id,
      :arn,
      :description,
      :targets,
      :actions,
      :stop_conditions,
      :creation_time,
      :last_update_time,
      :role_arn,
      :tags,
      :log_configuration,
      :experiment_options,
      :target_account_configurations_count,
      :experiment_report_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes an action for an experiment template.</p>
    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the action.</p>
    #   @return [Hash<String, String>]
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #   @return [Hash<String, String>]
    # @!attribute start_after
    #   <p>The name of the action that must be completed before the current action starts.</p>
    #   @return [Array<String>]
    class ExperimentTemplateAction < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the configuration for experiment logging to Amazon CloudWatch Logs.</p>
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>
    #   @return [String]
    class ExperimentTemplateCloudWatchLogsLogConfiguration < Struct.new(
      :log_group_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for experiment logging to Amazon CloudWatch Logs.</p>
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>
    #   @return [String]
    class ExperimentTemplateCloudWatchLogsLogConfigurationInput < Struct.new(
      :log_group_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the experiment options for an experiment template.</p>
    # @!attribute account_targeting
    #   <p>The account targeting setting for an experiment template. </p>
    #   @return [String]
    # @!attribute empty_target_resolution_mode
    #   <p>The empty target resolution mode for an experiment template.</p>
    #   @return [String]
    class ExperimentTemplateExperimentOptions < Struct.new(
      :account_targeting,
      :empty_target_resolution_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the configuration for experiment logging.</p>
    # @!attribute cloud_watch_logs_configuration
    #   <p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #   @return [Types::ExperimentTemplateCloudWatchLogsLogConfiguration]
    # @!attribute s3_configuration
    #   <p>The configuration for experiment logging to Amazon S3.</p>
    #   @return [Types::ExperimentTemplateS3LogConfiguration]
    # @!attribute log_schema_version
    #   <p>The schema version.</p>
    #   @return [Integer]
    class ExperimentTemplateLogConfiguration < Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the experiment report configuration. For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration">Experiment report configurations for AWS FIS</a>.</p>
    # @!attribute outputs
    #   <p>Describes the output destinations of the experiment report.</p>
    #   @return [Types::ExperimentTemplateReportConfigurationOutputs]
    # @!attribute data_sources
    #   <p>The data sources for the experiment report.</p>
    #   @return [Types::ExperimentTemplateReportConfigurationDataSources]
    # @!attribute pre_experiment_duration
    #   <p>The duration before the experiment start time for the data sources to include in the report.</p>
    #   @return [String]
    # @!attribute post_experiment_duration
    #   <p>The duration after the experiment end time for the data sources to include in the report.</p>
    #   @return [String]
    class ExperimentTemplateReportConfiguration < Struct.new(
      :outputs,
      :data_sources,
      :pre_experiment_duration,
      :post_experiment_duration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The CloudWatch dashboards to include as data sources in the experiment report.</p>
    # @!attribute dashboard_identifier
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch dashboard to include in the experiment report.</p>
    #   @return [String]
    class ExperimentTemplateReportConfigurationCloudWatchDashboard < Struct.new(
      :dashboard_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the data sources for the experiment report.</p>
    # @!attribute cloud_watch_dashboards
    #   <p>The CloudWatch dashboards to include as data sources in the experiment report.</p>
    #   @return [Array<Types::ExperimentTemplateReportConfigurationCloudWatchDashboard>]
    class ExperimentTemplateReportConfigurationDataSources < Struct.new(
      :cloud_watch_dashboards,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the data sources for the experiment report.</p>
    # @!attribute cloud_watch_dashboards
    #   <p>The CloudWatch dashboards to include as data sources in the experiment report.</p>
    #   @return [Array<Types::ReportConfigurationCloudWatchDashboardInput>]
    class ExperimentTemplateReportConfigurationDataSourcesInput < Struct.new(
      :cloud_watch_dashboards,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output destinations of the experiment report.</p>
    # @!attribute s3_configuration
    #   <p>The S3 destination for the experiment report.</p>
    #   @return [Types::ReportConfigurationS3Output]
    class ExperimentTemplateReportConfigurationOutputs < Struct.new(
      :s3_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the outputs for the experiment templates.</p>
    # @!attribute s3_configuration
    #   <p>The S3 destination for the experiment report.</p>
    #   @return [Types::ReportConfigurationS3OutputInput]
    class ExperimentTemplateReportConfigurationOutputsInput < Struct.new(
      :s3_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the configuration for experiment logging to Amazon S3.</p>
    # @!attribute bucket_name
    #   <p>The name of the destination bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The bucket prefix.</p>
    #   @return [String]
    class ExperimentTemplateS3LogConfiguration < Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for experiment logging to Amazon S3.</p>
    # @!attribute bucket_name
    #   <p>The name of the destination bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The bucket prefix.</p>
    #   @return [String]
    class ExperimentTemplateS3LogConfigurationInput < Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a stop condition for an experiment template.</p>
    # @!attribute source
    #   <p>The source for the stop condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch alarm, if applicable.</p>
    #   @return [String]
    class ExperimentTemplateStopCondition < Struct.new(
      :source,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides a summary of an experiment template.</p>
    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the experiment template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the experiment template.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the experiment template was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time that the experiment template was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags for the experiment template.</p>
    #   @return [Hash<String, String>]
    class ExperimentTemplateSummary < Struct.new(
      :id,
      :arn,
      :description,
      :creation_time,
      :last_update_time,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a target for an experiment template.</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the targets.</p>
    #   @return [Array<String>]
    # @!attribute resource_tags
    #   <p>The tags for the target resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute filters
    #   <p>The filters to apply to identify target resources using specific attributes.</p>
    #   @return [Array<Types::ExperimentTemplateTargetFilter>]
    # @!attribute selection_mode
    #   <p>Scopes the identified resources to a specific count or percentage.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The resource type parameters.</p>
    #   @return [Hash<String, String>]
    class ExperimentTemplateTarget < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a filter used for the target resources in an experiment template.</p>
    # @!attribute path
    #   <p>The attribute path for the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The attribute values for the filter.</p>
    #   @return [Array<String>]
    class ExperimentTemplateTargetFilter < Struct.new(
      :path,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies a filter used for the target resource input in an experiment template.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/targets.html#target-filters">Resource filters</a>
    #          in the <i>Fault Injection Service User Guide</i>.</p>
    # @!attribute path
    #   <p>The attribute path for the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The attribute values for the filter.</p>
    #   @return [Array<String>]
    class ExperimentTemplateTargetInputFilter < Struct.new(
      :path,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the action.</p>
    #   @return [String]
    class GetActionRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>Information about the action.</p>
    #   @return [Types::Action]
    class GetActionResponse < Struct.new(
      :action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment.</p>
    #   @return [String]
    class GetExperimentRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment
    #   <p>Information about the experiment.</p>
    #   @return [Types::Experiment]
    class GetExperimentResponse < Struct.new(
      :experiment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_id
    #   <p>The ID of the experiment.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    #   @return [String]
    class GetExperimentTargetAccountConfigurationRequest < Struct.new(
      :experiment_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_account_configuration
    #   <p>Information about the target account configuration.</p>
    #   @return [Types::ExperimentTargetAccountConfiguration]
    class GetExperimentTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    class GetExperimentTemplateRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_template
    #   <p>Information about the experiment template.</p>
    #   @return [Types::ExperimentTemplate]
    class GetExperimentTemplateResponse < Struct.new(
      :experiment_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>
    #           The ID of the safety lever.
    #         </p>
    #   @return [String]
    class GetSafetyLeverRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute safety_lever
    #   <p>
    #         Information about the safety lever.
    #         </p>
    #   @return [Types::SafetyLever]
    class GetSafetyLeverResponse < Struct.new(
      :safety_lever,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    #   @return [String]
    class GetTargetAccountConfigurationRequest < Struct.new(
      :experiment_template_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_account_configuration
    #   <p>Information about the target account configuration.</p>
    #   @return [Types::TargetAccountConfiguration]
    class GetTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    class GetTargetResourceTypeRequest < Struct.new(
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_resource_type
    #   <p>Information about the resource type.</p>
    #   @return [Types::TargetResourceType]
    class GetTargetResourceTypeResponse < Struct.new(
      :target_resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListActionsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute actions
    #   <p>The actions.</p>
    #   @return [Array<Types::ActionSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListActionsResponse < Struct.new(
      :actions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_id
    #   <p>The ID of the experiment.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, 
    #         make another call with the returned nextToken value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The name of the target.</p>
    #   @return [String]
    class ListExperimentResolvedTargetsRequest < Struct.new(
      :experiment_id,
      :max_results,
      :next_token,
      :target_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resolved_targets
    #   <p>The resolved targets.</p>
    #   @return [Array<Types::ResolvedTarget>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. 
    #         This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListExperimentResolvedTargetsResponse < Struct.new(
      :resolved_targets,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_id
    #   <p>The ID of the experiment.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListExperimentTargetAccountConfigurationsRequest < Struct.new(
      :experiment_id,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_account_configurations
    #   <p>The target account configurations.</p>
    #   @return [Array<Types::ExperimentTargetAccountConfigurationSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. 
    #         This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListExperimentTargetAccountConfigurationsResponse < Struct.new(
      :target_account_configurations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListExperimentTemplatesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_templates
    #   <p>The experiment templates.</p>
    #   @return [Array<Types::ExperimentTemplateSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListExperimentTemplatesResponse < Struct.new(
      :experiment_templates,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    class ListExperimentsRequest < Struct.new(
      :max_results,
      :next_token,
      :experiment_template_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiments
    #   <p>The experiments.</p>
    #   @return [Array<Types::ExperimentSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListExperimentsResponse < Struct.new(
      :experiments,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, 
    #         make another call with the returned nextToken value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListTargetAccountConfigurationsRequest < Struct.new(
      :experiment_template_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_account_configurations
    #   <p>The target account configurations.</p>
    #   @return [Array<Types::TargetAccountConfigurationSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. 
    #         This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListTargetAccountConfigurationsResponse < Struct.new(
      :target_account_configurations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListTargetResourceTypesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_resource_types
    #   <p>The target resource types.</p>
    #   @return [Array<Types::TargetResourceTypeSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListTargetResourceTypesResponse < Struct.new(
      :target_resource_types,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the CloudWatch dashboard for the experiment report.</p>
    # @!attribute dashboard_identifier
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch dashboard to include in the experiment report.</p>
    #   @return [String]
    class ReportConfigurationCloudWatchDashboardInput < Struct.new(
      :dashboard_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the S3 destination for the experiment report.</p>
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket where the experiment report will be stored.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix of the S3 bucket where the experiment report will be stored.</p>
    #   @return [String]
    class ReportConfigurationS3Output < Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the S3 destination for the experiment report.</p>
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket where the experiment report will be stored.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix of the S3 bucket where the experiment report will be stored.</p>
    #   @return [String]
    class ReportConfigurationS3OutputInput < Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a resolved target.</p>
    # @!attribute resource_type
    #   <p>The resource type of the target.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The name of the target.</p>
    #   @return [String]
    # @!attribute target_information
    #   <p>Information about the target.</p>
    #   @return [Hash<String, String>]
    class ResolvedTarget < Struct.new(
      :resource_type,
      :target_name,
      :target_information,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource cannot be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #         Describes a safety lever.
    #       </p>
    # @!attribute id
    #   <p>
    #         The ID of the safety lever.
    #         </p>
    #   @return [String]
    # @!attribute arn
    #   <p>
    #        The Amazon Resource Name (ARN) of the safety lever.
    #         </p>
    #   @return [String]
    # @!attribute state
    #   <p>
    #           The state of the safety lever.
    #         </p>
    #   @return [Types::SafetyLeverState]
    class SafetyLever < Struct.new(
      :id,
      :arn,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #         Describes the state of the safety lever.
    #       </p>
    # @!attribute status
    #   <p>
    #            The state of the safety lever.
    #         </p>
    #   @return [String]
    # @!attribute reason
    #   <p>
    #          The reason for the state of the safety lever.
    #         </p>
    #   @return [String]
    class SafetyLeverState < Struct.new(
      :status,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SafetyLeverStatus
      DISENGAGED = 'disengaged'
      ENGAGED = 'engaged'
      ENGAGING = 'engaging'
    end

    module SafetyLeverStatusInput
      DISENGAGED = 'disengaged'
      ENGAGED = 'engaged'
    end

    # <p>You have exceeded your service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies experiment options for running an experiment.</p>
    # @!attribute actions_mode
    #   <p>Specifies the actions mode for experiment options.</p>
    #   @return [String]
    class StartExperimentExperimentOptionsInput < Struct.new(
      :actions_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute experiment_options
    #   <p>The experiment options for running the experiment.</p>
    #   @return [Types::StartExperimentExperimentOptionsInput]
    # @!attribute tags
    #   <p>The tags to apply to the experiment.</p>
    #   @return [Hash<String, String>]
    class StartExperimentRequest < Struct.new(
      :client_token,
      :experiment_template_id,
      :experiment_options,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment
    #   <p>Information about the experiment.</p>
    #   @return [Types::Experiment]
    class StartExperimentResponse < Struct.new(
      :experiment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment.</p>
    #   @return [String]
    class StopExperimentRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment
    #   <p>Information about the experiment.</p>
    #   @return [Types::Experiment]
    class StopExperimentResponse < Struct.new(
      :experiment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a target account configuration.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the target account.</p>
    #   @return [String]
    class TargetAccountConfiguration < Struct.new(
      :role_arn,
      :account_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides a summary of a target account configuration.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the target account.</p>
    #   @return [String]
    class TargetAccountConfigurationSummary < Struct.new(
      :role_arn,
      :account_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a resource type.</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the resource type.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the resource type.</p>
    #   @return [Hash<String, Types::TargetResourceTypeParameter>]
    class TargetResourceType < Struct.new(
      :resource_type,
      :description,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the parameters for a resource type. Use parameters to determine which tasks are
    #           identified during target resolution.</p>
    # @!attribute description
    #   <p>A description of the parameter.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Indicates whether the parameter is required.</p>
    #   @return [Boolean]
    class TargetResourceTypeParameter < Struct.new(
      :description,
      :required,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:required] =  unless options.key?(:required)
        super
      end
    end

    # <p>Describes a resource type.</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the resource type.</p>
    #   @return [String]
    class TargetResourceTypeSummary < Struct.new(
      :resource_type,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies an action for an experiment template.</p>
    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the action, if applicable.</p>
    #   @return [Hash<String, String>]
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #   @return [Hash<String, String>]
    # @!attribute start_after
    #   <p>The name of the action that must be completed before the current action starts. Omit this parameter to run the action at the start of the experiment.</p>
    #   @return [Array<String>]
    class UpdateExperimentTemplateActionInputItem < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies an experiment option for an experiment template.</p>
    # @!attribute empty_target_resolution_mode
    #   <p>The empty target resolution mode of the experiment template.</p>
    #   @return [String]
    class UpdateExperimentTemplateExperimentOptionsInput < Struct.new(
      :empty_target_resolution_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for experiment logging.</p>
    # @!attribute cloud_watch_logs_configuration
    #   <p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #   @return [Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput]
    # @!attribute s3_configuration
    #   <p>The configuration for experiment logging to Amazon S3.</p>
    #   @return [Types::ExperimentTemplateS3LogConfigurationInput]
    # @!attribute log_schema_version
    #   <p>The schema version.</p>
    #   @return [Integer]
    class UpdateExperimentTemplateLogConfigurationInput < Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          Specifies the input for the experiment report configuration.</p>
    # @!attribute outputs
    #   <p>Describes the output destinations of the experiment report. </p>
    #   @return [Types::ExperimentTemplateReportConfigurationOutputsInput]
    # @!attribute data_sources
    #   <p>The data sources for the experiment report.</p>
    #   @return [Types::ExperimentTemplateReportConfigurationDataSourcesInput]
    # @!attribute pre_experiment_duration
    #   <p>The duration before the experiment start time for the data sources to include in the report. </p>
    #   @return [String]
    # @!attribute post_experiment_duration
    #   <p>The duration after the experiment end time for the data sources to include in the report. </p>
    #   @return [String]
    class UpdateExperimentTemplateReportConfigurationInput < Struct.new(
      :outputs,
      :data_sources,
      :pre_experiment_duration,
      :post_experiment_duration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the template.</p>
    #   @return [String]
    # @!attribute stop_conditions
    #   <p>The stop conditions for the experiment.</p>
    #   @return [Array<Types::UpdateExperimentTemplateStopConditionInput>]
    # @!attribute targets
    #   <p>The targets for the experiment.</p>
    #   @return [Hash<String, Types::UpdateExperimentTemplateTargetInput>]
    # @!attribute actions
    #   <p>The actions for the experiment.</p>
    #   @return [Hash<String, Types::UpdateExperimentTemplateActionInputItem>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    #   @return [String]
    # @!attribute log_configuration
    #   <p>The configuration for experiment logging.</p>
    #   @return [Types::UpdateExperimentTemplateLogConfigurationInput]
    # @!attribute experiment_options
    #   <p>The experiment options for the experiment template.</p>
    #   @return [Types::UpdateExperimentTemplateExperimentOptionsInput]
    # @!attribute experiment_report_configuration
    #   <p>The experiment report configuration for the experiment template.</p>
    #   @return [Types::UpdateExperimentTemplateReportConfigurationInput]
    class UpdateExperimentTemplateRequest < Struct.new(
      :id,
      :description,
      :stop_conditions,
      :targets,
      :actions,
      :role_arn,
      :log_configuration,
      :experiment_options,
      :experiment_report_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_template
    #   <p>Information about the experiment template.</p>
    #   @return [Types::ExperimentTemplate]
    class UpdateExperimentTemplateResponse < Struct.new(
      :experiment_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies a stop condition for an experiment. You can define a stop condition as a CloudWatch alarm.</p>
    # @!attribute source
    #   <p>The source for the stop condition. Specify <code>aws:cloudwatch:alarm</code> if the stop
    #            condition is defined by a CloudWatch alarm. Specify <code>none</code> if there is no stop
    #            condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch alarm.</p>
    #   @return [String]
    class UpdateExperimentTemplateStopConditionInput < Struct.new(
      :source,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies a target for an experiment. You must specify at least one Amazon Resource Name (ARN) or at least one resource tag. You cannot specify both.</p>
    # @!attribute resource_type
    #   <p>The resource type. The resource type must be supported for the specified action.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the targets.</p>
    #   @return [Array<String>]
    # @!attribute resource_tags
    #   <p>The tags for the target resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute filters
    #   <p>The filters to apply to identify target resources using specific attributes.</p>
    #   @return [Array<Types::ExperimentTemplateTargetInputFilter>]
    # @!attribute selection_mode
    #   <p>Scopes the identified resources to a specific count or percentage.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The resource type parameters.</p>
    #   @return [Hash<String, String>]
    class UpdateExperimentTemplateTargetInput < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #         Specifies a state for a safety lever.
    #       </p>
    # @!attribute status
    #   <p>
    #          The updated state of the safety lever.
    #         </p>
    #   @return [String]
    # @!attribute reason
    #   <p>
    #          The reason for updating the state of the safety lever.
    #         </p>
    #   @return [String]
    class UpdateSafetyLeverStateInput < Struct.new(
      :status,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>
    #            The ID of the safety lever.
    #         </p>
    #   @return [String]
    # @!attribute state
    #   <p>
    #          The state of the safety lever.
    #         </p>
    #   @return [Types::UpdateSafetyLeverStateInput]
    class UpdateSafetyLeverStateRequest < Struct.new(
      :id,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute safety_lever
    #   <p>
    #            Information about the safety lever.
    #         </p>
    #   @return [Types::SafetyLever]
    class UpdateSafetyLeverStateResponse < Struct.new(
      :safety_lever,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the target account.</p>
    #   @return [String]
    class UpdateTargetAccountConfigurationRequest < Struct.new(
      :experiment_template_id,
      :account_id,
      :role_arn,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_account_configuration
    #   <p>Information about the target account configuration.</p>
    #   @return [Types::TargetAccountConfiguration]
    class UpdateTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified input is not valid, or fails to satisfy the constraints for the request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
