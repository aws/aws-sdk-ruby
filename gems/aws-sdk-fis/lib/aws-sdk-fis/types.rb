# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FIS
  module Types

    # Describes an action. For more information, see [FIS actions][1] in the
    # *Fault Injection Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html
    #
    # @!attribute [rw] id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The action parameters, if applicable.
    #   @return [Hash<String,Types::ActionParameter>]
    #
    # @!attribute [rw] targets
    #   The supported targets for the action.
    #   @return [Hash<String,Types::ActionTarget>]
    #
    # @!attribute [rw] tags
    #   The tags for the action.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/Action AWS API Documentation
    #
    class Action < Struct.new(
      :id,
      :arn,
      :description,
      :parameters,
      :targets,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a parameter for an action.
    #
    # @!attribute [rw] description
    #   The parameter description.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Indicates whether the parameter is required.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ActionParameter AWS API Documentation
    #
    class ActionParameter < Struct.new(
      :description,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of an action.
    #
    # @!attribute [rw] id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the action.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,Types::ActionTarget>]
    #
    # @!attribute [rw] tags
    #   The tags for the action.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ActionSummary AWS API Documentation
    #
    class ActionSummary < Struct.new(
      :id,
      :arn,
      :description,
      :targets,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a target for an action.
    #
    # @!attribute [rw] resource_type
    #   The resource type of the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ActionTarget AWS API Documentation
    #
    class ActionTarget < Struct.new(
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an action for an experiment template.
    #
    # For more information, see [Actions][1] in the *Fault Injection Service
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fis/latest/userguide/actions.html
    #
    # @!attribute [rw] action_id
    #   The ID of the action. The format of the action ID is:
    #   aws:*service-name*:*action-type*.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the action, if applicable.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_after
    #   The name of the action that must be completed before the current
    #   action starts. Omit this parameter to run the action at the start of
    #   the experiment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateActionInput AWS API Documentation
    #
    class CreateExperimentTemplateActionInput < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies experiment options for an experiment template.
    #
    # @!attribute [rw] account_targeting
    #   Specifies the account targeting setting for experiment options.
    #   @return [String]
    #
    # @!attribute [rw] empty_target_resolution_mode
    #   Specifies the empty target resolution mode for experiment options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateExperimentOptionsInput AWS API Documentation
    #
    class CreateExperimentTemplateExperimentOptionsInput < Struct.new(
      :account_targeting,
      :empty_target_resolution_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for experiment logging.
    #
    # @!attribute [rw] cloud_watch_logs_configuration
    #   The configuration for experiment logging to Amazon CloudWatch Logs.
    #   @return [Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for experiment logging to Amazon S3.
    #   @return [Types::ExperimentTemplateS3LogConfigurationInput]
    #
    # @!attribute [rw] log_schema_version
    #   The schema version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateLogConfigurationInput AWS API Documentation
    #
    class CreateExperimentTemplateLogConfigurationInput < Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for experiment reports.
    #
    # @!attribute [rw] outputs
    #   The output destinations of the experiment report.
    #   @return [Types::ExperimentTemplateReportConfigurationOutputsInput]
    #
    # @!attribute [rw] data_sources
    #   The data sources for the experiment report.
    #   @return [Types::ExperimentTemplateReportConfigurationDataSourcesInput]
    #
    # @!attribute [rw] pre_experiment_duration
    #   The duration before the experiment start time for the data sources
    #   to include in the report.
    #   @return [String]
    #
    # @!attribute [rw] post_experiment_duration
    #   The duration after the experiment end time for the data sources to
    #   include in the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateReportConfigurationInput AWS API Documentation
    #
    class CreateExperimentTemplateReportConfigurationInput < Struct.new(
      :outputs,
      :data_sources,
      :pre_experiment_duration,
      :post_experiment_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] stop_conditions
    #   The stop conditions.
    #   @return [Array<Types::CreateExperimentTemplateStopConditionInput>]
    #
    # @!attribute [rw] targets
    #   The targets for the experiment.
    #   @return [Hash<String,Types::CreateExperimentTemplateTargetInput>]
    #
    # @!attribute [rw] actions
    #   The actions for the experiment.
    #   @return [Hash<String,Types::CreateExperimentTemplateActionInput>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants the FIS
    #   service permission to perform service actions on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the experiment template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_configuration
    #   The configuration for experiment logging.
    #   @return [Types::CreateExperimentTemplateLogConfigurationInput]
    #
    # @!attribute [rw] experiment_options
    #   The experiment options for the experiment template.
    #   @return [Types::CreateExperimentTemplateExperimentOptionsInput]
    #
    # @!attribute [rw] experiment_report_configuration
    #   The experiment report configuration for the experiment template.
    #   @return [Types::CreateExperimentTemplateReportConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateRequest AWS API Documentation
    #
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
      :experiment_report_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template
    #   Information about the experiment template.
    #   @return [Types::ExperimentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateResponse AWS API Documentation
    #
    class CreateExperimentTemplateResponse < Struct.new(
      :experiment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a stop condition for an experiment template.
    #
    # @!attribute [rw] source
    #   The source for the stop condition. Specify `aws:cloudwatch:alarm` if
    #   the stop condition is defined by a CloudWatch alarm. Specify `none`
    #   if there is no stop condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the CloudWatch alarm. This is
    #   required if the source is a CloudWatch alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateStopConditionInput AWS API Documentation
    #
    class CreateExperimentTemplateStopConditionInput < Struct.new(
      :source,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target for an experiment. You must specify at least one
    # Amazon Resource Name (ARN) or at least one resource tag. You cannot
    # specify both ARNs and tags.
    #
    # For more information, see [Targets][1] in the *Fault Injection Service
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fis/latest/userguide/targets.html
    #
    # @!attribute [rw] resource_type
    #   The resource type. The resource type must be supported for the
    #   specified action.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   The tags for the target resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filters
    #   The filters to apply to identify target resources using specific
    #   attributes.
    #   @return [Array<Types::ExperimentTemplateTargetInputFilter>]
    #
    # @!attribute [rw] selection_mode
    #   Scopes the identified resources to a specific count of the resources
    #   at random, or a percentage of the resources. All identified
    #   resources are included in the target.
    #
    #   * ALL - Run the action on all identified targets. This is the
    #     default.
    #
    #   * COUNT(n) - Run the action on the specified number of targets,
    #     chosen from the identified targets at random. For example,
    #     COUNT(1) selects one of the targets.
    #
    #   * PERCENT(n) - Run the action on the specified percentage of
    #     targets, chosen from the identified targets at random. For
    #     example, PERCENT(25) selects 25% of the targets.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The resource type parameters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateTargetInput AWS API Documentation
    #
    class CreateExperimentTemplateTargetInput < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] experiment_template_id
    #   The experiment template ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the target account.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role for the target
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateTargetAccountConfigurationRequest AWS API Documentation
    #
    class CreateTargetAccountConfigurationRequest < Struct.new(
      :client_token,
      :experiment_template_id,
      :account_id,
      :role_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_account_configuration
    #   Information about the target account configuration.
    #   @return [Types::TargetAccountConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateTargetAccountConfigurationResponse AWS API Documentation
    #
    class CreateTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/DeleteExperimentTemplateRequest AWS API Documentation
    #
    class DeleteExperimentTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template
    #   Information about the experiment template.
    #   @return [Types::ExperimentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/DeleteExperimentTemplateResponse AWS API Documentation
    #
    class DeleteExperimentTemplateResponse < Struct.new(
      :experiment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/DeleteTargetAccountConfigurationRequest AWS API Documentation
    #
    class DeleteTargetAccountConfigurationRequest < Struct.new(
      :experiment_template_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_account_configuration
    #   Information about the target account configuration.
    #   @return [Types::TargetAccountConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/DeleteTargetAccountConfigurationResponse AWS API Documentation
    #
    class DeleteTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an experiment.
    #
    # @!attribute [rw] id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants the FIS
    #   service permission to perform service actions on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the experiment.
    #   @return [Types::ExperimentState]
    #
    # @!attribute [rw] targets
    #   The targets for the experiment.
    #   @return [Hash<String,Types::ExperimentTarget>]
    #
    # @!attribute [rw] actions
    #   The actions for the experiment.
    #   @return [Hash<String,Types::ExperimentAction>]
    #
    # @!attribute [rw] stop_conditions
    #   The stop conditions for the experiment.
    #   @return [Array<Types::ExperimentStopCondition>]
    #
    # @!attribute [rw] creation_time
    #   The time that the experiment was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The time that the experiment started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the experiment ended.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags for the experiment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_configuration
    #   The configuration for experiment logging.
    #   @return [Types::ExperimentLogConfiguration]
    #
    # @!attribute [rw] experiment_options
    #   The experiment options for the experiment.
    #   @return [Types::ExperimentOptions]
    #
    # @!attribute [rw] target_account_configurations_count
    #   The count of target account configurations for the experiment.
    #   @return [Integer]
    #
    # @!attribute [rw] experiment_report_configuration
    #   The experiment report configuration for the experiment.
    #   @return [Types::ExperimentReportConfiguration]
    #
    # @!attribute [rw] experiment_report
    #   The experiment report for the experiment.
    #   @return [Types::ExperimentReport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/Experiment AWS API Documentation
    #
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
      :experiment_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the action for an experiment.
    #
    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_after
    #   The name of the action that must be completed before this action
    #   starts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The state of the action.
    #   @return [Types::ExperimentActionState]
    #
    # @!attribute [rw] start_time
    #   The time that the action started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the action ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentAction AWS API Documentation
    #
    class ExperimentAction < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      :state,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of an action.
    #
    # @!attribute [rw] status
    #   The state of the action.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentActionState AWS API Documentation
    #
    class ExperimentActionState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for experiment logging to Amazon
    # CloudWatch Logs.
    #
    # @!attribute [rw] log_group_arn
    #   The Amazon Resource Name (ARN) of the destination Amazon CloudWatch
    #   Logs log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentCloudWatchLogsLogConfiguration AWS API Documentation
    #
    class ExperimentCloudWatchLogsLogConfiguration < Struct.new(
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the error when an experiment has `failed`.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services Account ID where the experiment failure
    #   occurred.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code for the failed experiment.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Context for the section of the experiment template that failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentError AWS API Documentation
    #
    class ExperimentError < Struct.new(
      :account_id,
      :code,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for experiment logging.
    #
    # @!attribute [rw] cloud_watch_logs_configuration
    #   The configuration for experiment logging to Amazon CloudWatch Logs.
    #   @return [Types::ExperimentCloudWatchLogsLogConfiguration]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for experiment logging to Amazon S3.
    #   @return [Types::ExperimentS3LogConfiguration]
    #
    # @!attribute [rw] log_schema_version
    #   The schema version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentLogConfiguration AWS API Documentation
    #
    class ExperimentLogConfiguration < Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the options for an experiment.
    #
    # @!attribute [rw] account_targeting
    #   The account targeting setting for an experiment.
    #   @return [String]
    #
    # @!attribute [rw] empty_target_resolution_mode
    #   The empty target resolution mode for an experiment.
    #   @return [String]
    #
    # @!attribute [rw] actions_mode
    #   The actions mode of the experiment that is set from the
    #   StartExperiment API command.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentOptions AWS API Documentation
    #
    class ExperimentOptions < Struct.new(
      :account_targeting,
      :empty_target_resolution_mode,
      :actions_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the experiment report.
    #
    # @!attribute [rw] state
    #   The state of the experiment report.
    #   @return [Types::ExperimentReportState]
    #
    # @!attribute [rw] s3_reports
    #   The S3 destination of the experiment report.
    #   @return [Array<Types::ExperimentReportS3Report>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentReport AWS API Documentation
    #
    class ExperimentReport < Struct.new(
      :state,
      :s3_reports)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the report configuration for the experiment. For more
    # information, see [Experiment report configurations for AWS FIS][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration
    #
    # @!attribute [rw] outputs
    #   The output destinations of the experiment report.
    #   @return [Types::ExperimentReportConfigurationOutputs]
    #
    # @!attribute [rw] data_sources
    #   The data sources for the experiment report.
    #   @return [Types::ExperimentReportConfigurationDataSources]
    #
    # @!attribute [rw] pre_experiment_duration
    #   The duration before the experiment start time for the data sources
    #   to include in the report.
    #   @return [String]
    #
    # @!attribute [rw] post_experiment_duration
    #   The duration after the experiment end time for the data sources to
    #   include in the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentReportConfiguration AWS API Documentation
    #
    class ExperimentReportConfiguration < Struct.new(
      :outputs,
      :data_sources,
      :pre_experiment_duration,
      :post_experiment_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the CloudWatch dashboard to include in the experiment
    # report. The dashboard widgets will be captured as snapshot graphs
    # within the report.
    #
    # @!attribute [rw] dashboard_identifier
    #   The Amazon Resource Name (ARN) of the CloudWatch dashboard to
    #   include in the experiment report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentReportConfigurationCloudWatchDashboard AWS API Documentation
    #
    class ExperimentReportConfigurationCloudWatchDashboard < Struct.new(
      :dashboard_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the data sources for the experiment report.
    #
    # @!attribute [rw] cloud_watch_dashboards
    #   The CloudWatch dashboards to include as data sources in the
    #   experiment report.
    #   @return [Array<Types::ExperimentReportConfigurationCloudWatchDashboard>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentReportConfigurationDataSources AWS API Documentation
    #
    class ExperimentReportConfigurationDataSources < Struct.new(
      :cloud_watch_dashboards)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the output destinations of the experiment report.
    #
    # @!attribute [rw] s3_configuration
    #   The S3 destination for the experiment report.
    #   @return [Types::ExperimentReportConfigurationOutputsS3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentReportConfigurationOutputs AWS API Documentation
    #
    class ExperimentReportConfigurationOutputs < Struct.new(
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the S3 destination for the experiment report.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket where the experiment report will be
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the S3 bucket where the experiment report will be
    #   stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentReportConfigurationOutputsS3Configuration AWS API Documentation
    #
    class ExperimentReportConfigurationOutputsS3Configuration < Struct.new(
      :bucket_name,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the error when experiment report generation has failed.
    #
    # @!attribute [rw] code
    #   The error code for the failed experiment report generation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentReportError AWS API Documentation
    #
    class ExperimentReportError < Struct.new(
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the S3 destination for the report.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the generated report.
    #   @return [String]
    #
    # @!attribute [rw] report_type
    #   The report type for the experiment report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentReportS3Report AWS API Documentation
    #
    class ExperimentReportS3Report < Struct.new(
      :arn,
      :report_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of the experiment report generation.
    #
    # @!attribute [rw] status
    #   The state of the experiment report generation.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the state of the experiment report generation.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error information of the experiment when the experiment report
    #   generation has failed.
    #   @return [Types::ExperimentReportError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentReportState AWS API Documentation
    #
    class ExperimentReportState < Struct.new(
      :status,
      :reason,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for experiment logging to Amazon S3.
    #
    # @!attribute [rw] bucket_name
    #   The name of the destination bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The bucket prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentS3LogConfiguration AWS API Documentation
    #
    class ExperimentS3LogConfiguration < Struct.new(
      :bucket_name,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of an experiment.
    #
    # @!attribute [rw] status
    #   The state of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the state.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error information of the experiment when the action has
    #   `failed`.
    #   @return [Types::ExperimentError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentState AWS API Documentation
    #
    class ExperimentState < Struct.new(
      :status,
      :reason,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the stop condition for an experiment.
    #
    # @!attribute [rw] source
    #   The source for the stop condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the CloudWatch alarm, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentStopCondition AWS API Documentation
    #
    class ExperimentStopCondition < Struct.new(
      :source,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of an experiment.
    #
    # @!attribute [rw] id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the experiment.
    #   @return [Types::ExperimentState]
    #
    # @!attribute [rw] creation_time
    #   The time that the experiment was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags for the experiment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] experiment_options
    #   The experiment options for the experiment.
    #   @return [Types::ExperimentOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentSummary AWS API Documentation
    #
    class ExperimentSummary < Struct.new(
      :id,
      :arn,
      :experiment_template_id,
      :state,
      :creation_time,
      :tags,
      :experiment_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a target for an experiment.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   The tags for the target resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filters
    #   The filters to apply to identify target resources using specific
    #   attributes.
    #   @return [Array<Types::ExperimentTargetFilter>]
    #
    # @!attribute [rw] selection_mode
    #   Scopes the identified resources to a specific count or percentage.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The resource type parameters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTarget AWS API Documentation
    #
    class ExperimentTarget < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a target account configuration for an experiment.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role for the target
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the target account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTargetAccountConfiguration AWS API Documentation
    #
    class ExperimentTargetAccountConfiguration < Struct.new(
      :role_arn,
      :account_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a target account configuration.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role for the target
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the target account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTargetAccountConfigurationSummary AWS API Documentation
    #
    class ExperimentTargetAccountConfigurationSummary < Struct.new(
      :role_arn,
      :account_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter used for the target resources in an experiment.
    #
    # @!attribute [rw] path
    #   The attribute path for the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The attribute values for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTargetFilter AWS API Documentation
    #
    class ExperimentTargetFilter < Struct.new(
      :path,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an experiment template.
    #
    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets for the experiment.
    #   @return [Hash<String,Types::ExperimentTemplateTarget>]
    #
    # @!attribute [rw] actions
    #   The actions for the experiment.
    #   @return [Hash<String,Types::ExperimentTemplateAction>]
    #
    # @!attribute [rw] stop_conditions
    #   The stop conditions for the experiment.
    #   @return [Array<Types::ExperimentTemplateStopCondition>]
    #
    # @!attribute [rw] creation_time
    #   The time the experiment template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time the experiment template was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the experiment template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_configuration
    #   The configuration for experiment logging.
    #   @return [Types::ExperimentTemplateLogConfiguration]
    #
    # @!attribute [rw] experiment_options
    #   The experiment options for an experiment template.
    #   @return [Types::ExperimentTemplateExperimentOptions]
    #
    # @!attribute [rw] target_account_configurations_count
    #   The count of target account configurations for the experiment
    #   template.
    #   @return [Integer]
    #
    # @!attribute [rw] experiment_report_configuration
    #   Describes the report configuration for the experiment template.
    #   @return [Types::ExperimentTemplateReportConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplate AWS API Documentation
    #
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
      :experiment_report_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action for an experiment template.
    #
    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_after
    #   The name of the action that must be completed before the current
    #   action starts.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateAction AWS API Documentation
    #
    class ExperimentTemplateAction < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for experiment logging to Amazon
    # CloudWatch Logs.
    #
    # @!attribute [rw] log_group_arn
    #   The Amazon Resource Name (ARN) of the destination Amazon CloudWatch
    #   Logs log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateCloudWatchLogsLogConfiguration AWS API Documentation
    #
    class ExperimentTemplateCloudWatchLogsLogConfiguration < Struct.new(
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for experiment logging to Amazon
    # CloudWatch Logs.
    #
    # @!attribute [rw] log_group_arn
    #   The Amazon Resource Name (ARN) of the destination Amazon CloudWatch
    #   Logs log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateCloudWatchLogsLogConfigurationInput AWS API Documentation
    #
    class ExperimentTemplateCloudWatchLogsLogConfigurationInput < Struct.new(
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the experiment options for an experiment template.
    #
    # @!attribute [rw] account_targeting
    #   The account targeting setting for an experiment template.
    #   @return [String]
    #
    # @!attribute [rw] empty_target_resolution_mode
    #   The empty target resolution mode for an experiment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateExperimentOptions AWS API Documentation
    #
    class ExperimentTemplateExperimentOptions < Struct.new(
      :account_targeting,
      :empty_target_resolution_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for experiment logging.
    #
    # @!attribute [rw] cloud_watch_logs_configuration
    #   The configuration for experiment logging to Amazon CloudWatch Logs.
    #   @return [Types::ExperimentTemplateCloudWatchLogsLogConfiguration]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for experiment logging to Amazon S3.
    #   @return [Types::ExperimentTemplateS3LogConfiguration]
    #
    # @!attribute [rw] log_schema_version
    #   The schema version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateLogConfiguration AWS API Documentation
    #
    class ExperimentTemplateLogConfiguration < Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the experiment report configuration. For more information,
    # see [Experiment report configurations for AWS FIS][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration
    #
    # @!attribute [rw] outputs
    #   Describes the output destinations of the experiment report.
    #   @return [Types::ExperimentTemplateReportConfigurationOutputs]
    #
    # @!attribute [rw] data_sources
    #   The data sources for the experiment report.
    #   @return [Types::ExperimentTemplateReportConfigurationDataSources]
    #
    # @!attribute [rw] pre_experiment_duration
    #   The duration before the experiment start time for the data sources
    #   to include in the report.
    #   @return [String]
    #
    # @!attribute [rw] post_experiment_duration
    #   The duration after the experiment end time for the data sources to
    #   include in the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateReportConfiguration AWS API Documentation
    #
    class ExperimentTemplateReportConfiguration < Struct.new(
      :outputs,
      :data_sources,
      :pre_experiment_duration,
      :post_experiment_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CloudWatch dashboards to include as data sources in the experiment
    # report.
    #
    # @!attribute [rw] dashboard_identifier
    #   The Amazon Resource Name (ARN) of the CloudWatch dashboard to
    #   include in the experiment report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateReportConfigurationCloudWatchDashboard AWS API Documentation
    #
    class ExperimentTemplateReportConfigurationCloudWatchDashboard < Struct.new(
      :dashboard_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the data sources for the experiment report.
    #
    # @!attribute [rw] cloud_watch_dashboards
    #   The CloudWatch dashboards to include as data sources in the
    #   experiment report.
    #   @return [Array<Types::ExperimentTemplateReportConfigurationCloudWatchDashboard>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateReportConfigurationDataSources AWS API Documentation
    #
    class ExperimentTemplateReportConfigurationDataSources < Struct.new(
      :cloud_watch_dashboards)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the data sources for the experiment report.
    #
    # @!attribute [rw] cloud_watch_dashboards
    #   The CloudWatch dashboards to include as data sources in the
    #   experiment report.
    #   @return [Array<Types::ReportConfigurationCloudWatchDashboardInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateReportConfigurationDataSourcesInput AWS API Documentation
    #
    class ExperimentTemplateReportConfigurationDataSourcesInput < Struct.new(
      :cloud_watch_dashboards)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output destinations of the experiment report.
    #
    # @!attribute [rw] s3_configuration
    #   The S3 destination for the experiment report.
    #   @return [Types::ReportConfigurationS3Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateReportConfigurationOutputs AWS API Documentation
    #
    class ExperimentTemplateReportConfigurationOutputs < Struct.new(
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the outputs for the experiment templates.
    #
    # @!attribute [rw] s3_configuration
    #   The S3 destination for the experiment report.
    #   @return [Types::ReportConfigurationS3OutputInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateReportConfigurationOutputsInput AWS API Documentation
    #
    class ExperimentTemplateReportConfigurationOutputsInput < Struct.new(
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for experiment logging to Amazon S3.
    #
    # @!attribute [rw] bucket_name
    #   The name of the destination bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The bucket prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateS3LogConfiguration AWS API Documentation
    #
    class ExperimentTemplateS3LogConfiguration < Struct.new(
      :bucket_name,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for experiment logging to Amazon S3.
    #
    # @!attribute [rw] bucket_name
    #   The name of the destination bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The bucket prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateS3LogConfigurationInput AWS API Documentation
    #
    class ExperimentTemplateS3LogConfigurationInput < Struct.new(
      :bucket_name,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a stop condition for an experiment template.
    #
    # @!attribute [rw] source
    #   The source for the stop condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the CloudWatch alarm, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateStopCondition AWS API Documentation
    #
    class ExperimentTemplateStopCondition < Struct.new(
      :source,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of an experiment template.
    #
    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the experiment template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time that the experiment template was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags for the experiment template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateSummary AWS API Documentation
    #
    class ExperimentTemplateSummary < Struct.new(
      :id,
      :arn,
      :description,
      :creation_time,
      :last_update_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a target for an experiment template.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   The tags for the target resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filters
    #   The filters to apply to identify target resources using specific
    #   attributes.
    #   @return [Array<Types::ExperimentTemplateTargetFilter>]
    #
    # @!attribute [rw] selection_mode
    #   Scopes the identified resources to a specific count or percentage.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The resource type parameters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateTarget AWS API Documentation
    #
    class ExperimentTemplateTarget < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter used for the target resources in an experiment
    # template.
    #
    # @!attribute [rw] path
    #   The attribute path for the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The attribute values for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateTargetFilter AWS API Documentation
    #
    class ExperimentTemplateTargetFilter < Struct.new(
      :path,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a filter used for the target resource input in an experiment
    # template.
    #
    # For more information, see [Resource filters][1] in the *Fault
    # Injection Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fis/latest/userguide/targets.html#target-filters
    #
    # @!attribute [rw] path
    #   The attribute path for the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The attribute values for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateTargetInputFilter AWS API Documentation
    #
    class ExperimentTemplateTargetInputFilter < Struct.new(
      :path,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetActionRequest AWS API Documentation
    #
    class GetActionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   Information about the action.
    #   @return [Types::Action]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetActionResponse AWS API Documentation
    #
    class GetActionResponse < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentRequest AWS API Documentation
    #
    class GetExperimentRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment
    #   Information about the experiment.
    #   @return [Types::Experiment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentResponse AWS API Documentation
    #
    class GetExperimentResponse < Struct.new(
      :experiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentTargetAccountConfigurationRequest AWS API Documentation
    #
    class GetExperimentTargetAccountConfigurationRequest < Struct.new(
      :experiment_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_account_configuration
    #   Information about the target account configuration.
    #   @return [Types::ExperimentTargetAccountConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentTargetAccountConfigurationResponse AWS API Documentation
    #
    class GetExperimentTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentTemplateRequest AWS API Documentation
    #
    class GetExperimentTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template
    #   Information about the experiment template.
    #   @return [Types::ExperimentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentTemplateResponse AWS API Documentation
    #
    class GetExperimentTemplateResponse < Struct.new(
      :experiment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the safety lever.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetSafetyLeverRequest AWS API Documentation
    #
    class GetSafetyLeverRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] safety_lever
    #   Information about the safety lever.
    #   @return [Types::SafetyLever]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetSafetyLeverResponse AWS API Documentation
    #
    class GetSafetyLeverResponse < Struct.new(
      :safety_lever)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetTargetAccountConfigurationRequest AWS API Documentation
    #
    class GetTargetAccountConfigurationRequest < Struct.new(
      :experiment_template_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_account_configuration
    #   Information about the target account configuration.
    #   @return [Types::TargetAccountConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetTargetAccountConfigurationResponse AWS API Documentation
    #
    class GetTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetTargetResourceTypeRequest AWS API Documentation
    #
    class GetTargetResourceTypeRequest < Struct.new(
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_resource_type
    #   Information about the resource type.
    #   @return [Types::TargetResourceType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetTargetResourceTypeResponse AWS API Documentation
    #
    class GetTargetResourceTypeResponse < Struct.new(
      :target_resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListActionsRequest AWS API Documentation
    #
    class ListActionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] actions
    #   The actions.
    #   @return [Array<Types::ActionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListActionsResponse AWS API Documentation
    #
    class ListActionsResponse < Struct.new(
      :actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The name of the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentResolvedTargetsRequest AWS API Documentation
    #
    class ListExperimentResolvedTargetsRequest < Struct.new(
      :experiment_id,
      :max_results,
      :next_token,
      :target_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolved_targets
    #   The resolved targets.
    #   @return [Array<Types::ResolvedTarget>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentResolvedTargetsResponse AWS API Documentation
    #
    class ListExperimentResolvedTargetsResponse < Struct.new(
      :resolved_targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentTargetAccountConfigurationsRequest AWS API Documentation
    #
    class ListExperimentTargetAccountConfigurationsRequest < Struct.new(
      :experiment_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_account_configurations
    #   The target account configurations.
    #   @return [Array<Types::ExperimentTargetAccountConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentTargetAccountConfigurationsResponse AWS API Documentation
    #
    class ListExperimentTargetAccountConfigurationsResponse < Struct.new(
      :target_account_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentTemplatesRequest AWS API Documentation
    #
    class ListExperimentTemplatesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_templates
    #   The experiment templates.
    #   @return [Array<Types::ExperimentTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentTemplatesResponse AWS API Documentation
    #
    class ListExperimentTemplatesResponse < Struct.new(
      :experiment_templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentsRequest AWS API Documentation
    #
    class ListExperimentsRequest < Struct.new(
      :max_results,
      :next_token,
      :experiment_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiments
    #   The experiments.
    #   @return [Array<Types::ExperimentSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentsResponse AWS API Documentation
    #
    class ListExperimentsResponse < Struct.new(
      :experiments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTargetAccountConfigurationsRequest AWS API Documentation
    #
    class ListTargetAccountConfigurationsRequest < Struct.new(
      :experiment_template_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_account_configurations
    #   The target account configurations.
    #   @return [Array<Types::TargetAccountConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTargetAccountConfigurationsResponse AWS API Documentation
    #
    class ListTargetAccountConfigurationsResponse < Struct.new(
      :target_account_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTargetResourceTypesRequest AWS API Documentation
    #
    class ListTargetResourceTypesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_resource_types
    #   The target resource types.
    #   @return [Array<Types::TargetResourceTypeSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTargetResourceTypesResponse AWS API Documentation
    #
    class ListTargetResourceTypesResponse < Struct.new(
      :target_resource_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the CloudWatch dashboard for the experiment report.
    #
    # @!attribute [rw] dashboard_identifier
    #   The Amazon Resource Name (ARN) of the CloudWatch dashboard to
    #   include in the experiment report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ReportConfigurationCloudWatchDashboardInput AWS API Documentation
    #
    class ReportConfigurationCloudWatchDashboardInput < Struct.new(
      :dashboard_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the S3 destination for the experiment report.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket where the experiment report will be
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the S3 bucket where the experiment report will be
    #   stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ReportConfigurationS3Output AWS API Documentation
    #
    class ReportConfigurationS3Output < Struct.new(
      :bucket_name,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the S3 destination for the experiment report.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket where the experiment report will be
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the S3 bucket where the experiment report will be
    #   stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ReportConfigurationS3OutputInput AWS API Documentation
    #
    class ReportConfigurationS3OutputInput < Struct.new(
      :bucket_name,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resolved target.
    #
    # @!attribute [rw] resource_type
    #   The resource type of the target.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The name of the target.
    #   @return [String]
    #
    # @!attribute [rw] target_information
    #   Information about the target.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ResolvedTarget AWS API Documentation
    #
    class ResolvedTarget < Struct.new(
      :resource_type,
      :target_name,
      :target_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a safety lever.
    #
    # @!attribute [rw] id
    #   The ID of the safety lever.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the safety lever.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the safety lever.
    #   @return [Types::SafetyLeverState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/SafetyLever AWS API Documentation
    #
    class SafetyLever < Struct.new(
      :id,
      :arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of the safety lever.
    #
    # @!attribute [rw] status
    #   The state of the safety lever.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the state of the safety lever.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/SafetyLeverState AWS API Documentation
    #
    class SafetyLeverState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded your service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies experiment options for running an experiment.
    #
    # @!attribute [rw] actions_mode
    #   Specifies the actions mode for experiment options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StartExperimentExperimentOptionsInput AWS API Documentation
    #
    class StartExperimentExperimentOptionsInput < Struct.new(
      :actions_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] experiment_options
    #   The experiment options for running the experiment.
    #   @return [Types::StartExperimentExperimentOptionsInput]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the experiment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StartExperimentRequest AWS API Documentation
    #
    class StartExperimentRequest < Struct.new(
      :client_token,
      :experiment_template_id,
      :experiment_options,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment
    #   Information about the experiment.
    #   @return [Types::Experiment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StartExperimentResponse AWS API Documentation
    #
    class StartExperimentResponse < Struct.new(
      :experiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StopExperimentRequest AWS API Documentation
    #
    class StopExperimentRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment
    #   Information about the experiment.
    #   @return [Types::Experiment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StopExperimentResponse AWS API Documentation
    #
    class StopExperimentResponse < Struct.new(
      :experiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Describes a target account configuration.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role for the target
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the target account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TargetAccountConfiguration AWS API Documentation
    #
    class TargetAccountConfiguration < Struct.new(
      :role_arn,
      :account_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a target account configuration.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role for the target
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the target account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TargetAccountConfigurationSummary AWS API Documentation
    #
    class TargetAccountConfigurationSummary < Struct.new(
      :role_arn,
      :account_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource type.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the resource type.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the resource type.
    #   @return [Hash<String,Types::TargetResourceTypeParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TargetResourceType AWS API Documentation
    #
    class TargetResourceType < Struct.new(
      :resource_type,
      :description,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the parameters for a resource type. Use parameters to
    # determine which tasks are identified during target resolution.
    #
    # @!attribute [rw] description
    #   A description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Indicates whether the parameter is required.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TargetResourceTypeParameter AWS API Documentation
    #
    class TargetResourceTypeParameter < Struct.new(
      :description,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource type.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TargetResourceTypeSummary AWS API Documentation
    #
    class TargetResourceTypeSummary < Struct.new(
      :resource_type,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Specifies an action for an experiment template.
    #
    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the action, if applicable.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_after
    #   The name of the action that must be completed before the current
    #   action starts. Omit this parameter to run the action at the start of
    #   the experiment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateActionInputItem AWS API Documentation
    #
    class UpdateExperimentTemplateActionInputItem < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an experiment option for an experiment template.
    #
    # @!attribute [rw] empty_target_resolution_mode
    #   The empty target resolution mode of the experiment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateExperimentOptionsInput AWS API Documentation
    #
    class UpdateExperimentTemplateExperimentOptionsInput < Struct.new(
      :empty_target_resolution_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for experiment logging.
    #
    # @!attribute [rw] cloud_watch_logs_configuration
    #   The configuration for experiment logging to Amazon CloudWatch Logs.
    #   @return [Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for experiment logging to Amazon S3.
    #   @return [Types::ExperimentTemplateS3LogConfigurationInput]
    #
    # @!attribute [rw] log_schema_version
    #   The schema version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateLogConfigurationInput AWS API Documentation
    #
    class UpdateExperimentTemplateLogConfigurationInput < Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the input for the experiment report configuration.
    #
    # @!attribute [rw] outputs
    #   Describes the output destinations of the experiment report.
    #   @return [Types::ExperimentTemplateReportConfigurationOutputsInput]
    #
    # @!attribute [rw] data_sources
    #   The data sources for the experiment report.
    #   @return [Types::ExperimentTemplateReportConfigurationDataSourcesInput]
    #
    # @!attribute [rw] pre_experiment_duration
    #   The duration before the experiment start time for the data sources
    #   to include in the report.
    #   @return [String]
    #
    # @!attribute [rw] post_experiment_duration
    #   The duration after the experiment end time for the data sources to
    #   include in the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateReportConfigurationInput AWS API Documentation
    #
    class UpdateExperimentTemplateReportConfigurationInput < Struct.new(
      :outputs,
      :data_sources,
      :pre_experiment_duration,
      :post_experiment_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the template.
    #   @return [String]
    #
    # @!attribute [rw] stop_conditions
    #   The stop conditions for the experiment.
    #   @return [Array<Types::UpdateExperimentTemplateStopConditionInput>]
    #
    # @!attribute [rw] targets
    #   The targets for the experiment.
    #   @return [Hash<String,Types::UpdateExperimentTemplateTargetInput>]
    #
    # @!attribute [rw] actions
    #   The actions for the experiment.
    #   @return [Hash<String,Types::UpdateExperimentTemplateActionInputItem>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants the FIS
    #   service permission to perform service actions on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] log_configuration
    #   The configuration for experiment logging.
    #   @return [Types::UpdateExperimentTemplateLogConfigurationInput]
    #
    # @!attribute [rw] experiment_options
    #   The experiment options for the experiment template.
    #   @return [Types::UpdateExperimentTemplateExperimentOptionsInput]
    #
    # @!attribute [rw] experiment_report_configuration
    #   The experiment report configuration for the experiment template.
    #   @return [Types::UpdateExperimentTemplateReportConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateRequest AWS API Documentation
    #
    class UpdateExperimentTemplateRequest < Struct.new(
      :id,
      :description,
      :stop_conditions,
      :targets,
      :actions,
      :role_arn,
      :log_configuration,
      :experiment_options,
      :experiment_report_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template
    #   Information about the experiment template.
    #   @return [Types::ExperimentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateResponse AWS API Documentation
    #
    class UpdateExperimentTemplateResponse < Struct.new(
      :experiment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a stop condition for an experiment. You can define a stop
    # condition as a CloudWatch alarm.
    #
    # @!attribute [rw] source
    #   The source for the stop condition. Specify `aws:cloudwatch:alarm` if
    #   the stop condition is defined by a CloudWatch alarm. Specify `none`
    #   if there is no stop condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the CloudWatch alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateStopConditionInput AWS API Documentation
    #
    class UpdateExperimentTemplateStopConditionInput < Struct.new(
      :source,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target for an experiment. You must specify at least one
    # Amazon Resource Name (ARN) or at least one resource tag. You cannot
    # specify both.
    #
    # @!attribute [rw] resource_type
    #   The resource type. The resource type must be supported for the
    #   specified action.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   The tags for the target resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filters
    #   The filters to apply to identify target resources using specific
    #   attributes.
    #   @return [Array<Types::ExperimentTemplateTargetInputFilter>]
    #
    # @!attribute [rw] selection_mode
    #   Scopes the identified resources to a specific count or percentage.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The resource type parameters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateTargetInput AWS API Documentation
    #
    class UpdateExperimentTemplateTargetInput < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a state for a safety lever.
    #
    # @!attribute [rw] status
    #   The updated state of the safety lever.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for updating the state of the safety lever.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateSafetyLeverStateInput AWS API Documentation
    #
    class UpdateSafetyLeverStateInput < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the safety lever.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the safety lever.
    #   @return [Types::UpdateSafetyLeverStateInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateSafetyLeverStateRequest AWS API Documentation
    #
    class UpdateSafetyLeverStateRequest < Struct.new(
      :id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] safety_lever
    #   Information about the safety lever.
    #   @return [Types::SafetyLever]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateSafetyLeverStateResponse AWS API Documentation
    #
    class UpdateSafetyLeverStateResponse < Struct.new(
      :safety_lever)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the target account.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role for the target
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateTargetAccountConfigurationRequest AWS API Documentation
    #
    class UpdateTargetAccountConfigurationRequest < Struct.new(
      :experiment_template_id,
      :account_id,
      :role_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_account_configuration
    #   Information about the target account configuration.
    #   @return [Types::TargetAccountConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateTargetAccountConfigurationResponse AWS API Documentation
    #
    class UpdateTargetAccountConfigurationResponse < Struct.new(
      :target_account_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified input is not valid, or fails to satisfy the constraints
    # for the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

