# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHubOrchestrator
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] application_configuration_id
    #   The configuration ID of the application configured in Application
    #   Discovery Service.
    #   @return [String]
    #
    # @!attribute [rw] input_parameters
    #   The input parameters required to create a migration workflow.
    #   @return [Hash<String,Types::StepInput>]
    #
    # @!attribute [rw] step_targets
    #   The servers on which a step will be run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to add on a migration workflow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/CreateMigrationWorkflowRequest AWS API Documentation
    #
    class CreateMigrationWorkflowRequest < Struct.new(
      :name,
      :description,
      :template_id,
      :application_configuration_id,
      :input_parameters,
      :step_targets,
      :tags)
      SENSITIVE = [:input_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] ads_application_configuration_id
    #   The configuration ID of the application configured in Application
    #   Discovery Service.
    #   @return [String]
    #
    # @!attribute [rw] workflow_inputs
    #   The inputs for creating a migration workflow.
    #   @return [Hash<String,Types::StepInput>]
    #
    # @!attribute [rw] step_targets
    #   The servers on which a step will be run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the migration workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags to add on a migration workflow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/CreateMigrationWorkflowResponse AWS API Documentation
    #
    class CreateMigrationWorkflowResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :template_id,
      :ads_application_configuration_id,
      :workflow_inputs,
      :step_targets,
      :status,
      :creation_time,
      :tags)
      SENSITIVE = [:workflow_inputs]
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow that will contain the step group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step group.
    #   @return [String]
    #
    # @!attribute [rw] next
    #   The next step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] previous
    #   The previous step group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/CreateWorkflowStepGroupRequest AWS API Documentation
    #
    class CreateWorkflowStepGroupRequest < Struct.new(
      :workflow_id,
      :name,
      :description,
      :next,
      :previous)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow that contains the step group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step group.
    #   @return [String]
    #
    # @!attribute [rw] tools
    #   List of AWS services utilized in a migration workflow.
    #   @return [Array<Types::Tool>]
    #
    # @!attribute [rw] next
    #   The next step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] previous
    #   The previous step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time at which the step group is created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/CreateWorkflowStepGroupResponse AWS API Documentation
    #
    class CreateWorkflowStepGroupResponse < Struct.new(
      :workflow_id,
      :name,
      :id,
      :description,
      :tools,
      :next,
      :previous,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] step_action_type
    #   The action type of the step. You must run and update the status of a
    #   manual step for the workflow to continue after the completion of the
    #   step.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step.
    #   @return [String]
    #
    # @!attribute [rw] workflow_step_automation_configuration
    #   The custom script to run tests on source or target environments.
    #   @return [Types::WorkflowStepAutomationConfiguration]
    #
    # @!attribute [rw] step_target
    #   The servers on which a step will be run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   The key value pairs added for the expected output.
    #   @return [Array<Types::WorkflowStepOutput>]
    #
    # @!attribute [rw] previous
    #   The previous step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/CreateWorkflowStepRequest AWS API Documentation
    #
    class CreateWorkflowStepRequest < Struct.new(
      :name,
      :step_group_id,
      :workflow_id,
      :step_action_type,
      :description,
      :workflow_step_automation_configuration,
      :step_target,
      :outputs,
      :previous,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/CreateWorkflowStepResponse AWS API Documentation
    #
    class CreateWorkflowStepResponse < Struct.new(
      :id,
      :step_group_id,
      :workflow_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the migration workflow you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/DeleteMigrationWorkflowRequest AWS API Documentation
    #
    class DeleteMigrationWorkflowRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the migration workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/DeleteMigrationWorkflowResponse AWS API Documentation
    #
    class DeleteMigrationWorkflowResponse < Struct.new(
      :id,
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the step group you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/DeleteWorkflowStepGroupRequest AWS API Documentation
    #
    class DeleteWorkflowStepGroupRequest < Struct.new(
      :workflow_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/DeleteWorkflowStepGroupResponse AWS API Documentation
    #
    class DeleteWorkflowStepGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the step you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group that contains the step you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/DeleteWorkflowStepRequest AWS API Documentation
    #
    class DeleteWorkflowStepRequest < Struct.new(
      :id,
      :step_group_id,
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/DeleteWorkflowStepResponse AWS API Documentation
    #
    class DeleteWorkflowStepResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetMigrationWorkflowRequest AWS API Documentation
    #
    class GetMigrationWorkflowRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] ads_application_configuration_id
    #   The configuration ID of the application configured in Application
    #   Discovery Service.
    #   @return [String]
    #
    # @!attribute [rw] ads_application_name
    #   The name of the application configured in Application Discovery
    #   Service.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the migration workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_start_time
    #   The time at which the migration workflow was last started.
    #   @return [Time]
    #
    # @!attribute [rw] last_stop_time
    #   The time at which the migration workflow was last stopped.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time at which the migration workflow was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the migration workflow ended.
    #   @return [Time]
    #
    # @!attribute [rw] tools
    #   List of AWS services utilized in a migration workflow.
    #   @return [Array<Types::Tool>]
    #
    # @!attribute [rw] total_steps
    #   The total number of steps in the migration workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] completed_steps
    #   Get a list of completed steps in the migration workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] workflow_inputs
    #   The inputs required for creating the migration workflow.
    #   @return [Hash<String,Types::StepInput>]
    #
    # @!attribute [rw] tags
    #   The tags added to the migration workflow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_bucket
    #   The Amazon S3 bucket where the migration logs are stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetMigrationWorkflowResponse AWS API Documentation
    #
    class GetMigrationWorkflowResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :template_id,
      :ads_application_configuration_id,
      :ads_application_name,
      :status,
      :status_message,
      :creation_time,
      :last_start_time,
      :last_stop_time,
      :last_modified_time,
      :end_time,
      :tools,
      :total_steps,
      :completed_steps,
      :workflow_inputs,
      :tags,
      :workflow_bucket)
      SENSITIVE = [:workflow_inputs]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetMigrationWorkflowTemplateRequest AWS API Documentation
    #
    class GetMigrationWorkflowTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The time at which the template was last created.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The inputs provided for the creation of the migration workflow.
    #   @return [Array<Types::TemplateInput>]
    #
    # @!attribute [rw] tools
    #   List of AWS services utilized in a migration workflow.
    #   @return [Array<Types::Tool>]
    #
    # @!attribute [rw] status
    #   The status of the template.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the template was last created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetMigrationWorkflowTemplateResponse AWS API Documentation
    #
    class GetMigrationWorkflowTemplateResponse < Struct.new(
      :id,
      :name,
      :description,
      :inputs,
      :tools,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the step group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetTemplateStepGroupRequest AWS API Documentation
    #
    class GetTemplateStepGroupRequest < Struct.new(
      :template_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the step group.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the step group was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time at which the step group was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tools
    #   List of AWS services utilized in a migration workflow.
    #   @return [Array<Types::Tool>]
    #
    # @!attribute [rw] previous
    #   The previous step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetTemplateStepGroupResponse AWS API Documentation
    #
    class GetTemplateStepGroupResponse < Struct.new(
      :template_id,
      :id,
      :name,
      :description,
      :status,
      :creation_time,
      :last_modified_time,
      :tools,
      :previous,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the step.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetTemplateStepRequest AWS API Documentation
    #
    class GetTemplateStepRequest < Struct.new(
      :id,
      :template_id,
      :step_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_action_type
    #   The action type of the step. You must run and update the status of a
    #   manual step for the workflow to continue after the completion of the
    #   step.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the step was created.
    #   @return [String]
    #
    # @!attribute [rw] previous
    #   The previous step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   The outputs of the step.
    #   @return [Array<Types::StepOutput>]
    #
    # @!attribute [rw] step_automation_configuration
    #   The custom script to run tests on source or target environments.
    #   @return [Types::StepAutomationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetTemplateStepResponse AWS API Documentation
    #
    class GetTemplateStepResponse < Struct.new(
      :id,
      :step_group_id,
      :template_id,
      :name,
      :description,
      :step_action_type,
      :creation_time,
      :previous,
      :next,
      :outputs,
      :step_automation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetWorkflowStepGroupRequest AWS API Documentation
    #
    class GetWorkflowStepGroupRequest < Struct.new(
      :id,
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the step group.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the step group.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the step group was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time at which the step group was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the step group ended.
    #   @return [Time]
    #
    # @!attribute [rw] tools
    #   List of AWS services utilized in a migration workflow.
    #   @return [Array<Types::Tool>]
    #
    # @!attribute [rw] previous
    #   The previous step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetWorkflowStepGroupResponse AWS API Documentation
    #
    class GetWorkflowStepGroupResponse < Struct.new(
      :id,
      :workflow_id,
      :name,
      :description,
      :status,
      :owner,
      :creation_time,
      :last_modified_time,
      :end_time,
      :tools,
      :previous,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   desThe ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetWorkflowStepRequest AWS API Documentation
    #
    class GetWorkflowStepRequest < Struct.new(
      :workflow_id,
      :step_group_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The ID of the step.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_action_type
    #   The action type of the step. You must run and update the status of a
    #   manual step for the workflow to continue after the completion of the
    #   step.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the step.
    #   @return [String]
    #
    # @!attribute [rw] workflow_step_automation_configuration
    #   The custom script to run tests on source or target environments.
    #   @return [Types::WorkflowStepAutomationConfiguration]
    #
    # @!attribute [rw] step_target
    #   The servers on which a step will be run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   The outputs of the step.
    #   @return [Array<Types::WorkflowStepOutput>]
    #
    # @!attribute [rw] previous
    #   The previous step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the step.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] script_output_location
    #   The output location of the script.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the step was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_start_time
    #   The time at which the workflow was last started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the step ended.
    #   @return [Time]
    #
    # @!attribute [rw] no_of_srv_completed
    #   The number of servers that have been migrated.
    #   @return [Integer]
    #
    # @!attribute [rw] no_of_srv_failed
    #   The number of servers that have failed to migrate.
    #   @return [Integer]
    #
    # @!attribute [rw] total_no_of_srv
    #   The total number of servers that have been migrated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetWorkflowStepResponse AWS API Documentation
    #
    class GetWorkflowStepResponse < Struct.new(
      :name,
      :step_group_id,
      :workflow_id,
      :step_id,
      :description,
      :step_action_type,
      :owner,
      :workflow_step_automation_configuration,
      :step_target,
      :outputs,
      :previous,
      :next,
      :status,
      :status_message,
      :script_output_location,
      :creation_time,
      :last_start_time,
      :end_time,
      :no_of_srv_completed,
      :no_of_srv_failed,
      :total_no_of_srv)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that can be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListMigrationWorkflowTemplatesRequest AWS API Documentation
    #
    class ListMigrationWorkflowTemplatesRequest < Struct.new(
      :max_results,
      :next_token,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] template_summary
    #   The summary of the template.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListMigrationWorkflowTemplatesResponse AWS API Documentation
    #
    class ListMigrationWorkflowTemplatesResponse < Struct.new(
      :next_token,
      :template_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that can be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] ads_application_configuration_name
    #   The name of the application configured in Application Discovery
    #   Service.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the migration workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListMigrationWorkflowsRequest AWS API Documentation
    #
    class ListMigrationWorkflowsRequest < Struct.new(
      :max_results,
      :next_token,
      :template_id,
      :ads_application_configuration_name,
      :status,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] migration_workflow_summary
    #   The summary of the migration workflow.
    #   @return [Array<Types::MigrationWorkflowSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListMigrationWorkflowsResponse AWS API Documentation
    #
    class ListMigrationWorkflowsResponse < Struct.new(
      :next_token,
      :migration_workflow_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of plugins that can be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListPluginsRequest AWS API Documentation
    #
    class ListPluginsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] plugins
    #   Migration Hub Orchestrator plugins.
    #   @return [Array<Types::PluginSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListPluginsResponse AWS API Documentation
    #
    class ListPluginsResponse < Struct.new(
      :next_token,
      :plugins)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags added to a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that can be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTemplateStepGroupsRequest AWS API Documentation
    #
    class ListTemplateStepGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] template_step_group_summary
    #   The summary of the step group in the template.
    #   @return [Array<Types::TemplateStepGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTemplateStepGroupsResponse AWS API Documentation
    #
    class ListTemplateStepGroupsResponse < Struct.new(
      :next_token,
      :template_step_group_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that can be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTemplateStepsRequest AWS API Documentation
    #
    class ListTemplateStepsRequest < Struct.new(
      :max_results,
      :next_token,
      :template_id,
      :step_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] template_step_summary_list
    #   The list of summaries of steps in a template.
    #   @return [Array<Types::TemplateStepSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTemplateStepsResponse AWS API Documentation
    #
    class ListTemplateStepsResponse < Struct.new(
      :next_token,
      :template_step_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that can be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListWorkflowStepGroupsRequest AWS API Documentation
    #
    class ListWorkflowStepGroupsRequest < Struct.new(
      :next_token,
      :max_results,
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] workflow_step_groups_summary
    #   The summary of step groups in a migration workflow.
    #   @return [Array<Types::WorkflowStepGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListWorkflowStepGroupsResponse AWS API Documentation
    #
    class ListWorkflowStepGroupsResponse < Struct.new(
      :next_token,
      :workflow_step_groups_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that can be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListWorkflowStepsRequest AWS API Documentation
    #
    class ListWorkflowStepsRequest < Struct.new(
      :next_token,
      :max_results,
      :workflow_id,
      :step_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] workflow_steps_summary
    #   The summary of steps in a migration workflow.
    #   @return [Array<Types::WorkflowStepSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListWorkflowStepsResponse AWS API Documentation
    #
    class ListWorkflowStepsResponse < Struct.new(
      :next_token,
      :workflow_steps_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a migration workflow.
    #
    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] ads_application_configuration_name
    #   The name of the application configured in Application Discovery
    #   Service.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the migration workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the migration workflow ended.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The status message of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] completed_steps
    #   The steps completed in the migration workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] total_steps
    #   All the steps in a migration workflow.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/MigrationWorkflowSummary AWS API Documentation
    #
    class MigrationWorkflowSummary < Struct.new(
      :id,
      :name,
      :template_id,
      :ads_application_configuration_name,
      :status,
      :creation_time,
      :end_time,
      :status_message,
      :completed_steps,
      :total_steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Command to be run on a particular operating system.
    #
    # @!attribute [rw] linux
    #   Command for Linux.
    #   @return [String]
    #
    # @!attribute [rw] windows
    #   Command for Windows.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/PlatformCommand AWS API Documentation
    #
    class PlatformCommand < Struct.new(
      :linux,
      :windows)
      SENSITIVE = []
      include Aws::Structure
    end

    # The script location for a particular operating system.
    #
    # @!attribute [rw] linux
    #   The script location for Linux.
    #   @return [String]
    #
    # @!attribute [rw] windows
    #   The script location for Windows.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/PlatformScriptKey AWS API Documentation
    #
    class PlatformScriptKey < Struct.new(
      :linux,
      :windows)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the Migration Hub Orchestrator plugin.
    #
    # @!attribute [rw] plugin_id
    #   The ID of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The name of the host.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address at which the plugin is located.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] registered_time
    #   The time at which the plugin was registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/PluginSummary AWS API Documentation
    #
    class PluginSummary < Struct.new(
      :plugin_id,
      :hostname,
      :status,
      :ip_address,
      :version,
      :registered_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is not available.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/RetryWorkflowStepRequest AWS API Documentation
    #
    class RetryWorkflowStepRequest < Struct.new(
      :workflow_id,
      :step_group_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the step.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/RetryWorkflowStepResponse AWS API Documentation
    #
    class RetryWorkflowStepResponse < Struct.new(
      :step_group_id,
      :workflow_id,
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/StartMigrationWorkflowRequest AWS API Documentation
    #
    class StartMigrationWorkflowRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] last_start_time
    #   The time at which the migration workflow was last started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/StartMigrationWorkflowResponse AWS API Documentation
    #
    class StartMigrationWorkflowResponse < Struct.new(
      :id,
      :arn,
      :status,
      :status_message,
      :last_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom script to run tests on source or target environments.
    #
    # @!attribute [rw] script_location_s3_bucket
    #   The Amazon S3 bucket where the script is located.
    #   @return [String]
    #
    # @!attribute [rw] script_location_s3_key
    #   The Amazon S3 key for the script location.
    #   @return [Types::PlatformScriptKey]
    #
    # @!attribute [rw] command
    #   The command to run the script.
    #   @return [Types::PlatformCommand]
    #
    # @!attribute [rw] run_environment
    #   The source or target environment.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The servers on which to run the script.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/StepAutomationConfiguration AWS API Documentation
    #
    class StepAutomationConfiguration < Struct.new(
      :script_location_s3_bucket,
      :script_location_s3_key,
      :command,
      :run_environment,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map of key value pairs that is generated when you create a migration
    # workflow. The key value pairs will differ based on your selection of
    # the template.
    #
    # @note StepInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @note StepInput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StepInput corresponding to the set member.
    #
    # @!attribute [rw] integer_value
    #   The value of the integer.
    #   @return [Integer]
    #
    # @!attribute [rw] string_value
    #   String value.
    #   @return [String]
    #
    # @!attribute [rw] list_of_strings_value
    #   List of string values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] map_of_string_value
    #   Map of string values.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/StepInput AWS API Documentation
    #
    class StepInput < Struct.new(
      :integer_value,
      :string_value,
      :list_of_strings_value,
      :map_of_string_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IntegerValue < StepInput; end
      class StringValue < StepInput; end
      class ListOfStringsValue < StepInput; end
      class MapOfStringValue < StepInput; end
      class Unknown < StepInput; end
    end

    # The output of the step.
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the step output.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Determine if an output is required from a step.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/StepOutput AWS API Documentation
    #
    class StepOutput < Struct.new(
      :name,
      :data_type,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/StopMigrationWorkflowRequest AWS API Documentation
    #
    class StopMigrationWorkflowRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] last_stop_time
    #   The time at which the migration workflow was stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/StopMigrationWorkflowResponse AWS API Documentation
    #
    class StopMigrationWorkflowResponse < Struct.new(
      :id,
      :arn,
      :status,
      :status_message,
      :last_stop_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key:value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The input parameters of a template.
    #
    # @!attribute [rw] input_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the template input.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Determine if an input is required from the template.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/TemplateInput AWS API Documentation
    #
    class TemplateInput < Struct.new(
      :input_name,
      :data_type,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the step group in the template.
    #
    # @!attribute [rw] id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step group.
    #   @return [String]
    #
    # @!attribute [rw] previous
    #   The previous step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/TemplateStepGroupSummary AWS API Documentation
    #
    class TemplateStepGroupSummary < Struct.new(
      :id,
      :name,
      :previous,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the step.
    #
    # @!attribute [rw] id
    #   The ID of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_action_type
    #   The action type of the step. You must run and update the status of a
    #   manual step for the workflow to continue after the completion of the
    #   step.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The servers on which to run the script.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the step.
    #   @return [String]
    #
    # @!attribute [rw] previous
    #   The previous step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/TemplateStepSummary AWS API Documentation
    #
    class TemplateStepSummary < Struct.new(
      :id,
      :step_group_id,
      :template_id,
      :name,
      :step_action_type,
      :target_type,
      :owner,
      :previous,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the template.
    #
    # @!attribute [rw] id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/TemplateSummary AWS API Documentation
    #
    class TemplateSummary < Struct.new(
      :id,
      :name,
      :arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of AWS services utilized in a migration workflow.
    #
    # @!attribute [rw] name
    #   The name of an AWS service.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of an AWS service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/Tool AWS API Documentation
    #
    class Tool < Struct.new(
      :name,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which you want
    #   to remove tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   One or more tag keys. Specify only the tag keys, not the tag values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_parameters
    #   The input parameters required to update a migration workflow.
    #   @return [Hash<String,Types::StepInput>]
    #
    # @!attribute [rw] step_targets
    #   The servers on which a step will be run.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UpdateMigrationWorkflowRequest AWS API Documentation
    #
    class UpdateMigrationWorkflowRequest < Struct.new(
      :id,
      :name,
      :description,
      :input_parameters,
      :step_targets)
      SENSITIVE = [:input_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] ads_application_configuration_id
    #   The ID of the application configured in Application Discovery
    #   Service.
    #   @return [String]
    #
    # @!attribute [rw] workflow_inputs
    #   The inputs required to update a migration workflow.
    #   @return [Hash<String,Types::StepInput>]
    #
    # @!attribute [rw] step_targets
    #   The servers on which a step will be run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the migration workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time at which the migration workflow was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags added to the migration workflow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UpdateMigrationWorkflowResponse AWS API Documentation
    #
    class UpdateMigrationWorkflowResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :template_id,
      :ads_application_configuration_id,
      :workflow_inputs,
      :step_targets,
      :status,
      :creation_time,
      :last_modified_time,
      :tags)
      SENSITIVE = [:workflow_inputs]
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step group.
    #   @return [String]
    #
    # @!attribute [rw] next
    #   The next step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] previous
    #   The previous step group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UpdateWorkflowStepGroupRequest AWS API Documentation
    #
    class UpdateWorkflowStepGroupRequest < Struct.new(
      :workflow_id,
      :id,
      :name,
      :description,
      :next,
      :previous)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step group.
    #   @return [String]
    #
    # @!attribute [rw] tools
    #   List of AWS services utilized in a migration workflow.
    #   @return [Array<Types::Tool>]
    #
    # @!attribute [rw] next
    #   The next step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] previous
    #   The previous step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_time
    #   The time at which the step group was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UpdateWorkflowStepGroupResponse AWS API Documentation
    #
    class UpdateWorkflowStepGroupResponse < Struct.new(
      :workflow_id,
      :name,
      :id,
      :description,
      :tools,
      :next,
      :previous,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_action_type
    #   The action type of the step. You must run and update the status of a
    #   manual step for the workflow to continue after the completion of the
    #   step.
    #   @return [String]
    #
    # @!attribute [rw] workflow_step_automation_configuration
    #   The custom script to run tests on the source and target
    #   environments.
    #   @return [Types::WorkflowStepAutomationConfiguration]
    #
    # @!attribute [rw] step_target
    #   The servers on which a step will be run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   The outputs of a step.
    #   @return [Array<Types::WorkflowStepOutput>]
    #
    # @!attribute [rw] previous
    #   The previous step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UpdateWorkflowStepRequest AWS API Documentation
    #
    class UpdateWorkflowStepRequest < Struct.new(
      :id,
      :step_group_id,
      :workflow_id,
      :name,
      :description,
      :step_action_type,
      :workflow_step_automation_configuration,
      :step_target,
      :outputs,
      :previous,
      :next,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_group_id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The ID of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UpdateWorkflowStepResponse AWS API Documentation
    #
    class UpdateWorkflowStepResponse < Struct.new(
      :id,
      :step_group_id,
      :workflow_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom script to run tests on source or target environments.
    #
    # @!attribute [rw] script_location_s3_bucket
    #   The Amazon S3 bucket where the script is located.
    #   @return [String]
    #
    # @!attribute [rw] script_location_s3_key
    #   The Amazon S3 key for the script location.
    #   @return [Types::PlatformScriptKey]
    #
    # @!attribute [rw] command
    #   The command required to run the script.
    #   @return [Types::PlatformCommand]
    #
    # @!attribute [rw] run_environment
    #   The source or target environment.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The servers on which to run the script.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/WorkflowStepAutomationConfiguration AWS API Documentation
    #
    class WorkflowStepAutomationConfiguration < Struct.new(
      :script_location_s3_bucket,
      :script_location_s3_key,
      :command,
      :run_environment,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a step group in a workflow.
    #
    # @!attribute [rw] id
    #   The ID of the step group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step group.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the step group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the step group.
    #   @return [String]
    #
    # @!attribute [rw] previous
    #   The previous step group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/WorkflowStepGroupSummary AWS API Documentation
    #
    class WorkflowStepGroupSummary < Struct.new(
      :id,
      :name,
      :owner,
      :status,
      :previous,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of a step.
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the output.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Determine if an output is required from a step.
    #   @return [Boolean]
    #
    # @!attribute [rw] value
    #   The value of the output.
    #   @return [Types::WorkflowStepOutputUnion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/WorkflowStepOutput AWS API Documentation
    #
    class WorkflowStepOutput < Struct.new(
      :name,
      :data_type,
      :required,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure to hold multiple values of an output.
    #
    # @note WorkflowStepOutputUnion is a union - when making an API calls you must set exactly one of the members.
    #
    # @note WorkflowStepOutputUnion is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of WorkflowStepOutputUnion corresponding to the set member.
    #
    # @!attribute [rw] integer_value
    #   The integer value.
    #   @return [Integer]
    #
    # @!attribute [rw] string_value
    #   The string value.
    #   @return [String]
    #
    # @!attribute [rw] list_of_string_value
    #   The list of string value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/WorkflowStepOutputUnion AWS API Documentation
    #
    class WorkflowStepOutputUnion < Struct.new(
      :integer_value,
      :string_value,
      :list_of_string_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IntegerValue < WorkflowStepOutputUnion; end
      class StringValue < WorkflowStepOutputUnion; end
      class ListOfStringValue < WorkflowStepOutputUnion; end
      class Unknown < WorkflowStepOutputUnion; end
    end

    # The summary of the step in a migration workflow.
    #
    # @!attribute [rw] step_id
    #   The ID of the step.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] step_action_type
    #   The action type of the step. You must run and update the status of a
    #   manual step for the workflow to continue after the completion of the
    #   step.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the step.
    #   @return [String]
    #
    # @!attribute [rw] previous
    #   The previous step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the step.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the migration workflow.
    #   @return [String]
    #
    # @!attribute [rw] no_of_srv_completed
    #   The number of servers that have been migrated.
    #   @return [Integer]
    #
    # @!attribute [rw] no_of_srv_failed
    #   The number of servers that have failed to migrate.
    #   @return [Integer]
    #
    # @!attribute [rw] total_no_of_srv
    #   The total number of servers that have been migrated.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the step.
    #   @return [String]
    #
    # @!attribute [rw] script_location
    #   The location of the script.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/WorkflowStepSummary AWS API Documentation
    #
    class WorkflowStepSummary < Struct.new(
      :step_id,
      :name,
      :step_action_type,
      :owner,
      :previous,
      :next,
      :status,
      :status_message,
      :no_of_srv_completed,
      :no_of_srv_failed,
      :total_no_of_srv,
      :description,
      :script_location)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
