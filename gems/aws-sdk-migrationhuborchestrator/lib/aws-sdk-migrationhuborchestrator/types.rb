# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubOrchestrator
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when an attempt to update or delete
    #             a resource would cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the migration workflow template.</p>
    #   @return [String]
    # @!attribute template_description
    #   <p>A description of the migration workflow template.</p>
    #   @return [String]
    # @!attribute template_source
    #   <p>The source of the migration workflow template.</p>
    #   @return [Types::TemplateSource]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. For more information, see <a href="https://smithy.io/2.0/spec/behavior-traits.html#idempotencytoken-trait">Idempotency</a> in the Smithy documentation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the migration workflow template.</p>
    #   @return [Hash<String, String>]
    class CreateTemplateRequest < Struct.new(
      :template_name,
      :template_description,
      :template_source,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>The ID of the migration workflow template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the migration workflow template. The format for an
    #               Migration Hub Orchestrator template ARN is
    #               <code>arn:aws:migrationhub-orchestrator:region:account:template/template-abcd1234</code>.
    #               For more information about ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a>
    #               in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags added to the migration workflow template.</p>
    #   @return [Hash<String, String>]
    class CreateTemplateResponse < Struct.new(
      :template_id,
      :template_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the migration workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the migration workflow.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute application_configuration_id
    #   <p>The configuration ID of the application configured in Application Discovery Service.</p>
    #   @return [String]
    # @!attribute input_parameters
    #   <p>The input parameters required to create a migration workflow.</p>
    #   @return [Hash<String, Types::StepInput>]
    # @!attribute step_targets
    #   <p>The servers on which a step will be run.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to add on a migration workflow.</p>
    #   @return [Hash<String, String>]
    class CreateWorkflowInput < Struct.new(
      :name,
      :description,
      :template_id,
      :application_configuration_id,
      :input_parameters,
      :step_targets,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the migration workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the migration workflow.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute ads_application_configuration_id
    #   <p>The configuration ID of the application configured in Application Discovery Service.</p>
    #   @return [String]
    # @!attribute workflow_inputs
    #   <p>The inputs for creating a migration workflow.</p>
    #   @return [Hash<String, Types::StepInput>]
    # @!attribute step_targets
    #   <p>The servers on which a step will be run.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the migration workflow.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the migration workflow was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags to add on a migration workflow.</p>
    #   @return [Hash<String, String>]
    class CreateWorkflowOutput < Struct.new(
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The ID of the migration workflow that will contain the step group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step group.</p>
    #   @return [String]
    # @!attribute next
    #   <p>The next step group.</p>
    #   @return [Array<String>]
    # @!attribute previous
    #   <p>The previous step group.</p>
    #   @return [Array<String>]
    class CreateWorkflowStepGroupInput < Struct.new(
      :workflow_id,
      :name,
      :description,
      :next,
      :previous,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The ID of the migration workflow that contains the step group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step group.</p>
    #   @return [String]
    # @!attribute tools
    #   <p>List of AWS services utilized in a migration workflow.</p>
    #   @return [Array<Types::Tool>]
    # @!attribute next
    #   <p>The next step group.</p>
    #   @return [Array<String>]
    # @!attribute previous
    #   <p>The previous step group.</p>
    #   @return [Array<String>]
    # @!attribute creation_time
    #   <p>The time at which the step group is created.</p>
    #   @return [Time]
    class CreateWorkflowStepGroupOutput < Struct.new(
      :workflow_id,
      :name,
      :id,
      :description,
      :tools,
      :next,
      :previous,
      :creation_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute step_action_type
    #   <p>The action type of the step. You must run and update the status of a manual step for
    #               the workflow to continue after the completion of the step.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step.</p>
    #   @return [String]
    # @!attribute workflow_step_automation_configuration
    #   <p>The custom script to run tests on source or target environments.</p>
    #   @return [Types::WorkflowStepAutomationConfiguration]
    # @!attribute step_target
    #   <p>The servers on which a step will be run.</p>
    #   @return [Array<String>]
    # @!attribute outputs
    #   <p>The key value pairs added for the expected output.</p>
    #   @return [Array<Types::WorkflowStepOutput>]
    # @!attribute previous
    #   <p>The previous step.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step.</p>
    #   @return [Array<String>]
    class CreateWorkflowStepInput < Struct.new(
      :name,
      :step_group_id,
      :workflow_id,
      :step_action_type,
      :description,
      :workflow_step_automation_configuration,
      :step_target,
      :outputs,
      :previous,
      :next,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the step.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    class CreateWorkflowStepOutput < Struct.new(
      :id,
      :step_group_id,
      :workflow_id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the request to delete a migration workflow template.</p>
    #   @return [String]
    class DeleteTemplateRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteTemplateResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow you want to delete.</p>
    #   @return [String]
    class DeleteWorkflowInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the migration workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the migration workflow.</p>
    #   @return [String]
    class DeleteWorkflowOutput < Struct.new(
      :id,
      :arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the step group you want to delete.</p>
    #   @return [String]
    class DeleteWorkflowStepGroupInput < Struct.new(
      :workflow_id,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteWorkflowStepGroupOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the step you want to delete.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group that contains the step you want to delete.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    class DeleteWorkflowStepInput < Struct.new(
      :id,
      :step_group_id,
      :workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteWorkflowStepOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the template.</p>
    #   @return [String]
    class GetTemplateInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>&gt;The Amazon Resource Name (ARN) of the migration workflow template. The format for an
    #               Migration Hub Orchestrator template ARN is
    #               <code>arn:aws:migrationhub-orchestrator:region:account:template/template-abcd1234</code>.
    #               For more information about ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a>
    #               in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The time at which the template was last created.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The inputs provided for the creation of the migration workflow.</p>
    #   @return [Array<Types::TemplateInput>]
    # @!attribute tools
    #   <p>List of AWS services utilized in a migration workflow.</p>
    #   @return [Array<Types::Tool>]
    # @!attribute creation_time
    #   <p>The time at which the template was last created.</p>
    #   @return [Time]
    # @!attribute owner
    #   <p>The owner of the migration workflow template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the template.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of retrieving migration workflow templates.</p>
    #   @return [String]
    # @!attribute template_class
    #   <p>The class of the migration workflow template. The available template classes
    #               are:</p>
    #            <ul>
    #               <li>
    #                  <p>A2C</p>
    #               </li>
    #               <li>
    #                  <p>MGN</p>
    #               </li>
    #               <li>
    #                  <p>SAP_MULTI</p>
    #               </li>
    #               <li>
    #                  <p>SQL_EC2</p>
    #               </li>
    #               <li>
    #                  <p>SQL_RDS</p>
    #               </li>
    #               <li>
    #                  <p>VMIE</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags added to the migration workflow template.</p>
    #   @return [Hash<String, String>]
    class GetTemplateOutput < Struct.new(
      :id,
      :template_arn,
      :name,
      :description,
      :inputs,
      :tools,
      :creation_time,
      :owner,
      :status,
      :status_message,
      :template_class,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    class GetTemplateStepGroupInput < Struct.new(
      :template_id,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the step group.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the step group was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time at which the step group was last modified.</p>
    #   @return [Time]
    # @!attribute tools
    #   <p>List of AWS services utilized in a migration workflow.</p>
    #   @return [Array<Types::Tool>]
    # @!attribute previous
    #   <p>The previous step group.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step group.</p>
    #   @return [Array<String>]
    class GetTemplateStepGroupOutput < Struct.new(
      :template_id,
      :id,
      :name,
      :description,
      :status,
      :creation_time,
      :last_modified_time,
      :tools,
      :previous,
      :next,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the step.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    class GetTemplateStepInput < Struct.new(
      :id,
      :template_id,
      :step_group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the step.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step.</p>
    #   @return [String]
    # @!attribute step_action_type
    #   <p>The action type of the step. You must run and update the status of a manual step for
    #               the workflow to continue after the completion of the step.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the step was created.</p>
    #   @return [String]
    # @!attribute previous
    #   <p>The previous step.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step.</p>
    #   @return [Array<String>]
    # @!attribute outputs
    #   <p>The outputs of the step.</p>
    #   @return [Array<Types::StepOutput>]
    # @!attribute step_automation_configuration
    #   <p>The custom script to run tests on source or target environments.</p>
    #   @return [Types::StepAutomationConfiguration]
    class GetTemplateStepOutput < Struct.new(
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
      :step_automation_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    class GetWorkflowInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the migration workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the migration workflow.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute ads_application_configuration_id
    #   <p>The configuration ID of the application configured in Application Discovery Service.</p>
    #   @return [String]
    # @!attribute ads_application_name
    #   <p>The name of the application configured in Application Discovery Service.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the migration workflow.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the migration workflow.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the migration workflow was created.</p>
    #   @return [Time]
    # @!attribute last_start_time
    #   <p>The time at which the migration workflow was last started.</p>
    #   @return [Time]
    # @!attribute last_stop_time
    #   <p>The time at which the migration workflow was last stopped.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time at which the migration workflow was last modified.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the migration workflow ended.</p>
    #   @return [Time]
    # @!attribute tools
    #   <p>List of AWS services utilized in a migration workflow.</p>
    #   @return [Array<Types::Tool>]
    # @!attribute total_steps
    #   <p>The total number of steps in the migration workflow.</p>
    #   @return [Integer]
    # @!attribute completed_steps
    #   <p>Get a list of completed steps in the migration workflow.</p>
    #   @return [Integer]
    # @!attribute workflow_inputs
    #   <p>The inputs required for creating the migration workflow.</p>
    #   @return [Hash<String, Types::StepInput>]
    # @!attribute tags
    #   <p>The tags added to the migration workflow.</p>
    #   @return [Hash<String, String>]
    # @!attribute workflow_bucket
    #   <p>The Amazon S3 bucket where the migration logs are stored.</p>
    #   @return [String]
    class GetWorkflowOutput < Struct.new(
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
      :workflow_bucket,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    class GetWorkflowStepGroupInput < Struct.new(
      :id,
      :workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the step group.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the step group.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the step group was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time at which the step group was last modified.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the step group ended.</p>
    #   @return [Time]
    # @!attribute tools
    #   <p>List of AWS services utilized in a migration workflow.</p>
    #   @return [Array<Types::Tool>]
    # @!attribute previous
    #   <p>The previous step group.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step group.</p>
    #   @return [Array<String>]
    class GetWorkflowStepGroupOutput < Struct.new(
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
      :next,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the step.</p>
    #   @return [String]
    class GetWorkflowStepInput < Struct.new(
      :workflow_id,
      :step_group_id,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The ID of the step.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step.</p>
    #   @return [String]
    # @!attribute step_action_type
    #   <p>The action type of the step. You must run and update the status of a manual step for
    #               the workflow to continue after the completion of the step.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the step.</p>
    #   @return [String]
    # @!attribute workflow_step_automation_configuration
    #   <p>The custom script to run tests on source or target environments.</p>
    #   @return [Types::WorkflowStepAutomationConfiguration]
    # @!attribute step_target
    #   <p>The servers on which a step will be run.</p>
    #   @return [Array<String>]
    # @!attribute outputs
    #   <p>The outputs of the step.</p>
    #   @return [Array<Types::WorkflowStepOutput>]
    # @!attribute previous
    #   <p>The previous step.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the step.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the migration workflow.</p>
    #   @return [String]
    # @!attribute script_output_location
    #   <p>The output location of the script.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the step was created.</p>
    #   @return [Time]
    # @!attribute last_start_time
    #   <p>The time at which the workflow was last started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the step ended.</p>
    #   @return [Time]
    # @!attribute no_of_srv_completed
    #   <p>The number of servers that have been migrated.</p>
    #   @return [Integer]
    # @!attribute no_of_srv_failed
    #   <p>The number of servers that have failed to migrate.</p>
    #   @return [Integer]
    # @!attribute total_no_of_srv
    #   <p>The total number of servers that have been migrated.</p>
    #   @return [Integer]
    class GetWorkflowStepOutput < Struct.new(
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
      :total_no_of_srv,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An internal error has occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of plugins that can be returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListPluginsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute plugins
    #   <p>Migration Hub Orchestrator plugins.</p>
    #   @return [Array<Types::PluginSummary>]
    class ListPluginsOutput < Struct.new(
      :next_token,
      :plugins,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags added to a resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that can be returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    class ListTemplateStepGroupsInput < Struct.new(
      :max_results,
      :next_token,
      :template_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute template_step_group_summary
    #   <p>The summary of the step group in the template.</p>
    #   @return [Array<Types::TemplateStepGroupSummary>]
    class ListTemplateStepGroupsOutput < Struct.new(
      :next_token,
      :template_step_group_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that can be returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    class ListTemplateStepsInput < Struct.new(
      :max_results,
      :next_token,
      :template_id,
      :step_group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute template_step_summary_list
    #   <p>The list of summaries of steps in a template.</p>
    #   @return [Array<Types::TemplateStepSummary>]
    class ListTemplateStepsOutput < Struct.new(
      :next_token,
      :template_step_summary_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that can be returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the template.</p>
    #   @return [String]
    class ListTemplatesInput < Struct.new(
      :max_results,
      :next_token,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute template_summary
    #   <p>The summary of the template.</p>
    #   @return [Array<Types::TemplateSummary>]
    class ListTemplatesOutput < Struct.new(
      :next_token,
      :template_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that can be returned.</p>
    #   @return [Integer]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    class ListWorkflowStepGroupsInput < Struct.new(
      :next_token,
      :max_results,
      :workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute workflow_step_groups_summary
    #   <p>The summary of step groups in a migration workflow.</p>
    #   @return [Array<Types::WorkflowStepGroupSummary>]
    class ListWorkflowStepGroupsOutput < Struct.new(
      :next_token,
      :workflow_step_groups_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that can be returned.</p>
    #   @return [Integer]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    class ListWorkflowStepsInput < Struct.new(
      :next_token,
      :max_results,
      :workflow_id,
      :step_group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute workflow_steps_summary
    #   <p>The summary of steps in a migration workflow.</p>
    #   @return [Array<Types::WorkflowStepSummary>]
    class ListWorkflowStepsOutput < Struct.new(
      :next_token,
      :workflow_steps_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that can be returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute ads_application_configuration_name
    #   <p>The name of the application configured in Application Discovery Service.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the migration workflow.</p>
    #   @return [String]
    class ListWorkflowsInput < Struct.new(
      :max_results,
      :next_token,
      :template_id,
      :ads_application_configuration_name,
      :status,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute migration_workflow_summary
    #   <p>The summary of the migration workflow.</p>
    #   @return [Array<Types::MigrationWorkflowSummary>]
    class ListWorkflowsOutput < Struct.new(
      :next_token,
      :migration_workflow_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of a migration workflow.</p>
    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the migration workflow.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute ads_application_configuration_name
    #   <p>The name of the application configured in Application Discovery Service.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the migration workflow.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the migration workflow was created.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the migration workflow ended.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>The status message of the migration workflow.</p>
    #   @return [String]
    # @!attribute completed_steps
    #   <p>The steps completed in the migration workflow.</p>
    #   @return [Integer]
    # @!attribute total_steps
    #   <p>All the steps in a migration workflow.</p>
    #   @return [Integer]
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
      :total_steps,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Command to be run on a particular operating system.</p>
    # @!attribute linux
    #   <p>Command for Linux.</p>
    #   @return [String]
    # @!attribute windows
    #   <p>Command for Windows.</p>
    #   @return [String]
    class PlatformCommand < Struct.new(
      :linux,
      :windows,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The script location for a particular operating system.</p>
    # @!attribute linux
    #   <p>The script location for Linux.</p>
    #   @return [String]
    # @!attribute windows
    #   <p>The script location for Windows.</p>
    #   @return [String]
    class PlatformScriptKey < Struct.new(
      :linux,
      :windows,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of the Migration Hub Orchestrator plugin.</p>
    # @!attribute plugin_id
    #   <p>The ID of the plugin.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The name of the host.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the plugin.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address at which the plugin is located.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the plugin.</p>
    #   @return [String]
    # @!attribute registered_time
    #   <p>The time at which the plugin was registered.</p>
    #   @return [String]
    class PluginSummary < Struct.new(
      :plugin_id,
      :hostname,
      :status,
      :ip_address,
      :version,
      :registered_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource is not available.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the step.</p>
    #   @return [String]
    class RetryWorkflowStepInput < Struct.new(
      :workflow_id,
      :step_group_id,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the step.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the step.</p>
    #   @return [String]
    class RetryWorkflowStepOutput < Struct.new(
      :step_group_id,
      :workflow_id,
      :id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    class StartWorkflowInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the migration workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the migration workflow.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the migration workflow.</p>
    #   @return [String]
    # @!attribute last_start_time
    #   <p>The time at which the migration workflow was last started.</p>
    #   @return [Time]
    class StartWorkflowOutput < Struct.new(
      :id,
      :arn,
      :status,
      :status_message,
      :last_start_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The custom script to run tests on source or target environments.</p>
    # @!attribute script_location_s3_bucket
    #   <p>The Amazon S3 bucket where the script is located.</p>
    #   @return [String]
    # @!attribute script_location_s3_key
    #   <p>The Amazon S3 key for the script location.</p>
    #   @return [Types::PlatformScriptKey]
    # @!attribute command
    #   <p>The command to run the script.</p>
    #   @return [Types::PlatformCommand]
    # @!attribute run_environment
    #   <p>The source or target environment.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The servers on which to run the script.</p>
    #   @return [String]
    class StepAutomationConfiguration < Struct.new(
      :script_location_s3_bucket,
      :script_location_s3_key,
      :command,
      :run_environment,
      :target_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A map of key value pairs that is generated when you create a migration workflow. The
    #             key value pairs will differ based on your selection of the template.</p>
    # @!attribute integer_value
    #   <p>The value of the integer.</p>
    #   @return [Integer]
    # @!attribute string_value
    #   <p>String value.</p>
    #   @return [String]
    # @!attribute list_of_strings_value
    #   <p>List of string values.</p>
    #   @return [Array<String>]
    # @!attribute map_of_string_value
    #   <p>Map of string values.</p>
    #   @return [Hash<String, String>]
    class StepInput < Struct.new(
      :integer_value,
      :string_value,
      :list_of_strings_value,
      :map_of_string_value,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class IntegerValue < StepInput; end
      class StringValue < StepInput; end
      class ListOfStringsValue < StepInput; end
      class MapOfStringValue < StepInput; end
      class Unknown < StepInput; end
    end

    # <p>The output of the step.</p>
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the step output.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Determine if an output is required from a step.</p>
    #   @return [Boolean]
    class StepOutput < Struct.new(
      :name,
      :data_type,
      :required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    class StopWorkflowInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the migration workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the migration workflow.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the migration workflow.</p>
    #   @return [String]
    # @!attribute last_stop_time
    #   <p>The time at which the migration workflow was stopped.</p>
    #   @return [Time]
    class StopWorkflowOutput < Struct.new(
      :id,
      :arn,
      :status,
      :status_message,
      :last_stop_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input parameters of a template.</p>
    # @!attribute input_name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the template input.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Determine if an input is required from the template.</p>
    #   @return [Boolean]
    class TemplateInput < Struct.new(
      :input_name,
      :data_type,
      :required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The migration workflow template used as the source for the new template.</p>
    # @!attribute workflow_id
    #   <p>The ID of the workflow from the source migration workflow template.</p>
    #   @return [String]
    class TemplateSource < Struct.new(
      :workflow_id,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class WorkflowId < TemplateSource; end
      class Unknown < TemplateSource; end
    end

    # <p>The summary of the step group in the template.</p>
    # @!attribute id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step group.</p>
    #   @return [String]
    # @!attribute previous
    #   <p>The previous step group.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step group.</p>
    #   @return [Array<String>]
    class TemplateStepGroupSummary < Struct.new(
      :id,
      :name,
      :previous,
      :next,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of the step.</p>
    # @!attribute id
    #   <p>The ID of the step.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute step_action_type
    #   <p>The action type of the step. You must run and update the status of a manual step for
    #               the workflow to continue after the completion of the step.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The servers on which to run the script.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the step.</p>
    #   @return [String]
    # @!attribute previous
    #   <p>The previous step.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step.</p>
    #   @return [Array<String>]
    class TemplateStepSummary < Struct.new(
      :id,
      :step_group_id,
      :template_id,
      :name,
      :step_action_type,
      :target_type,
      :owner,
      :previous,
      :next,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of the template.</p>
    # @!attribute id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the template.</p>
    #   @return [String]
    class TemplateSummary < Struct.new(
      :id,
      :name,
      :arn,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List of AWS services utilized in a migration workflow.</p>
    # @!attribute name
    #   <p>The name of an AWS service. </p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of an AWS service.</p>
    #   @return [String]
    class Tool < Struct.new(
      :name,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove
    #               tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the request to update a migration workflow template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the migration workflow template to update.</p>
    #   @return [String]
    # @!attribute template_description
    #   <p>The description of the migration workflow template to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the
    #               idempotency of the request.</p>
    #   @return [String]
    class UpdateTemplateRequest < Struct.new(
      :id,
      :template_name,
      :template_description,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>The ID of the migration workflow template being updated.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The ARN of the migration workflow template being updated. The format for an Migration Hub Orchestrator
    #               template ARN is
    #               <code>arn:aws:migrationhub-orchestrator:region:account:template/template-abcd1234</code>.
    #               For more information about ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a>
    #               in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags added to the migration workflow template.</p>
    #   @return [Hash<String, String>]
    class UpdateTemplateResponse < Struct.new(
      :template_id,
      :template_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the migration workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the migration workflow.</p>
    #   @return [String]
    # @!attribute input_parameters
    #   <p>The input parameters required to update a migration workflow.</p>
    #   @return [Hash<String, Types::StepInput>]
    # @!attribute step_targets
    #   <p>The servers on which a step will be run.</p>
    #   @return [Array<String>]
    class UpdateWorkflowInput < Struct.new(
      :id,
      :name,
      :description,
      :input_parameters,
      :step_targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the migration workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the migration workflow.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #   @return [String]
    # @!attribute ads_application_configuration_id
    #   <p>The ID of the application configured in Application Discovery Service.</p>
    #   @return [String]
    # @!attribute workflow_inputs
    #   <p>The inputs required to update a migration workflow.</p>
    #   @return [Hash<String, Types::StepInput>]
    # @!attribute step_targets
    #   <p>The servers on which a step will be run.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the migration workflow.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the migration workflow was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time at which the migration workflow was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags added to the migration workflow.</p>
    #   @return [Hash<String, String>]
    class UpdateWorkflowOutput < Struct.new(
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step group.</p>
    #   @return [String]
    # @!attribute next
    #   <p>The next step group.</p>
    #   @return [Array<String>]
    # @!attribute previous
    #   <p>The previous step group.</p>
    #   @return [Array<String>]
    class UpdateWorkflowStepGroupInput < Struct.new(
      :workflow_id,
      :id,
      :name,
      :description,
      :next,
      :previous,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step group.</p>
    #   @return [String]
    # @!attribute tools
    #   <p>List of AWS services utilized in a migration workflow.</p>
    #   @return [Array<Types::Tool>]
    # @!attribute next
    #   <p>The next step group.</p>
    #   @return [Array<String>]
    # @!attribute previous
    #   <p>The previous step group.</p>
    #   @return [Array<String>]
    # @!attribute last_modified_time
    #   <p>The time at which the step group was last modified.</p>
    #   @return [Time]
    class UpdateWorkflowStepGroupOutput < Struct.new(
      :workflow_id,
      :name,
      :id,
      :description,
      :tools,
      :next,
      :previous,
      :last_modified_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the step.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step.</p>
    #   @return [String]
    # @!attribute step_action_type
    #   <p>The action type of the step. You must run and update the status of a manual step for
    #               the workflow to continue after the completion of the step.</p>
    #   @return [String]
    # @!attribute workflow_step_automation_configuration
    #   <p>The custom script to run tests on the source and target environments.</p>
    #   @return [Types::WorkflowStepAutomationConfiguration]
    # @!attribute step_target
    #   <p>The servers on which a step will be run.</p>
    #   @return [Array<String>]
    # @!attribute outputs
    #   <p>The outputs of a step.</p>
    #   @return [Array<Types::WorkflowStepOutput>]
    # @!attribute previous
    #   <p>The previous step.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the step.</p>
    #   @return [String]
    class UpdateWorkflowStepInput < Struct.new(
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
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the step.</p>
    #   @return [String]
    # @!attribute step_group_id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the migration workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    class UpdateWorkflowStepOutput < Struct.new(
      :id,
      :step_group_id,
      :workflow_id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The custom script to run tests on source or target environments.</p>
    # @!attribute script_location_s3_bucket
    #   <p>The Amazon S3 bucket where the script is located.</p>
    #   @return [String]
    # @!attribute script_location_s3_key
    #   <p>The Amazon S3 key for the script location.</p>
    #   @return [Types::PlatformScriptKey]
    # @!attribute command
    #   <p>The command required to run the script.</p>
    #   @return [Types::PlatformCommand]
    # @!attribute run_environment
    #   <p>The source or target environment.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The servers on which to run the script.</p>
    #   @return [String]
    class WorkflowStepAutomationConfiguration < Struct.new(
      :script_location_s3_bucket,
      :script_location_s3_key,
      :command,
      :run_environment,
      :target_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of a step group in a workflow.</p>
    # @!attribute id
    #   <p>The ID of the step group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step group.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the step group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the step group.</p>
    #   @return [String]
    # @!attribute previous
    #   <p>The previous step group.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step group.</p>
    #   @return [Array<String>]
    class WorkflowStepGroupSummary < Struct.new(
      :id,
      :name,
      :owner,
      :status,
      :previous,
      :next,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output of a step.</p>
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the output.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Determine if an output is required from a step.</p>
    #   @return [Boolean]
    # @!attribute value
    #   <p>The value of the output.</p>
    #   @return [Types::WorkflowStepOutputUnion]
    class WorkflowStepOutput < Struct.new(
      :name,
      :data_type,
      :required,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure to hold multiple values of an output.</p>
    # @!attribute integer_value
    #   <p>The integer value. </p>
    #   @return [Integer]
    # @!attribute string_value
    #   <p>The string value.</p>
    #   @return [String]
    # @!attribute list_of_string_value
    #   <p>The list of string value.</p>
    #   @return [Array<String>]
    class WorkflowStepOutputUnion < Struct.new(
      :integer_value,
      :string_value,
      :list_of_string_value,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class IntegerValue < WorkflowStepOutputUnion; end
      class StringValue < WorkflowStepOutputUnion; end
      class ListOfStringValue < WorkflowStepOutputUnion; end
      class Unknown < WorkflowStepOutputUnion; end
    end

    # <p>The summary of the step in a migration workflow.</p>
    # @!attribute step_id
    #   <p>The ID of the step.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute step_action_type
    #   <p>The action type of the step. You must run and update the status of a manual step for
    #               the workflow to continue after the completion of the step.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the step.</p>
    #   @return [String]
    # @!attribute previous
    #   <p>The previous step.</p>
    #   @return [Array<String>]
    # @!attribute next
    #   <p>The next step.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the step.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the migration workflow.</p>
    #   @return [String]
    # @!attribute no_of_srv_completed
    #   <p>The number of servers that have been migrated.</p>
    #   @return [Integer]
    # @!attribute no_of_srv_failed
    #   <p>The number of servers that have failed to migrate.</p>
    #   @return [Integer]
    # @!attribute total_no_of_srv
    #   <p>The total number of servers that have been migrated.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The description of the step.</p>
    #   @return [String]
    # @!attribute script_location
    #   <p>The location of the script.</p>
    #   @return [String]
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
      :script_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
