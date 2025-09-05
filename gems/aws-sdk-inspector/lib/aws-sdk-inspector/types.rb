# frozen_string_literal: true

# This is generated code!

module Aws::Inspector
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have required permissions to access the requested resource.</p>
    # @!attribute message
    #   <p>Details of the exception error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Code that indicates the type of error that is generated.</p>
    #   @return [String]
    # @!attribute can_retry
    #   <p>You can immediately retry your request.</p>
    #   @return [Boolean]
    class AccessDeniedException < Struct.new(
      :message,
      :error_code,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_arns
    #   <p>The ARNs that specify the findings that you want to assign attributes to.</p>
    #   @return [Array<String>]
    # @!attribute attributes
    #   <p>The array of attributes that you want to assign to specified findings.</p>
    #   @return [Array<Types::Attribute>]
    class AddAttributesToFindingsRequest < Struct.new(
      :finding_arns,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_items
    #   <p>Attribute details that cannot be described. An error code is provided for each failed
    #            item.</p>
    #   @return [Hash<String, Types::FailedItemDetails>]
    class AddAttributesToFindingsResponse < Struct.new(
      :failed_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used in the exception error that is thrown if you start an assessment run for an
    #          assessment target that includes an EC2 instance that is already participating in another
    #          started assessment run.</p>
    # @!attribute agent_id
    #   <p>ID of the agent that is running on an EC2 instance that is already participating in
    #            another started assessment run.</p>
    #   @return [String]
    # @!attribute assessment_run_arn
    #   <p>The ARN of the assessment run that has already been started.</p>
    #   @return [String]
    class AgentAlreadyRunningAssessment < Struct.new(
      :agent_id,
      :assessment_run_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon Inspector agent. This data type is used as a
    #          request parameter in the <a>ListAssessmentRunAgents</a> action.</p>
    # @!attribute agent_healths
    #   <p>The current health state of the agent. Values can be set to <b>HEALTHY</b> or <b>UNHEALTHY</b>.</p>
    #   @return [Array<String>]
    # @!attribute agent_health_codes
    #   <p>The detailed health state of the agent. Values can be set to <b>IDLE</b>, <b>RUNNING</b>, <b>SHUTDOWN</b>, <b>UNHEALTHY</b>, <b>THROTTLED</b>, and <b>UNKNOWN</b>. </p>
    #   @return [Array<String>]
    class AgentFilter < Struct.new(
      :agent_healths,
      :agent_health_codes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used as a response element in the <a>PreviewAgents</a> action.</p>
    # @!attribute hostname
    #   <p>The hostname of the EC2 instance on which the Amazon Inspector Agent is
    #            installed.</p>
    #   @return [String]
    # @!attribute agent_id
    #   <p>The ID of the EC2 instance where the agent is installed.</p>
    #   @return [String]
    # @!attribute auto_scaling_group
    #   <p>The Auto Scaling group for the EC2 instance where the agent is installed.</p>
    #   @return [String]
    # @!attribute agent_health
    #   <p>The health status of the Amazon Inspector Agent.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the Amazon Inspector Agent.</p>
    #   @return [String]
    # @!attribute operating_system
    #   <p>The operating system running on the EC2 instance on which the Amazon Inspector Agent
    #            is installed.</p>
    #   @return [String]
    # @!attribute kernel_version
    #   <p>The kernel version of the operating system running on the EC2 instance on which the
    #            Amazon Inspector Agent is installed.</p>
    #   @return [String]
    # @!attribute ipv4_address
    #   <p>The IP address of the EC2 instance on which the Amazon Inspector Agent is
    #            installed.</p>
    #   @return [String]
    class AgentPreview < Struct.new(
      :hostname,
      :agent_id,
      :auto_scaling_group,
      :agent_health,
      :agent_version,
      :operating_system,
      :kernel_version,
      :ipv4_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You started an assessment run, but one of the instances is already participating in
    #          another assessment run.</p>
    # @!attribute message
    #   <p>Details of the exception error.</p>
    #   @return [String]
    # @!attribute agents
    #   <p></p>
    #   @return [Array<Types::AgentAlreadyRunningAssessment>]
    # @!attribute agents_truncated
    #   <p></p>
    #   @return [Boolean]
    # @!attribute can_retry
    #   <p>You can immediately retry your request.</p>
    #   @return [Boolean]
    class AgentsAlreadyRunningAssessmentException < Struct.new(
      :message,
      :agents,
      :agents_truncated,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of an Amazon Inspector assessment run that contains the findings of the
    #          assessment run .</p>
    #          <p>Used as the response element in the <a>DescribeAssessmentRuns</a>
    #          action.</p>
    # @!attribute arn
    #   <p>The ARN of the assessment run.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The auto-generated name for the assessment run.</p>
    #   @return [String]
    # @!attribute assessment_template_arn
    #   <p>The ARN of the assessment template that is associated with the assessment
    #            run.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the assessment run.</p>
    #   @return [String]
    # @!attribute duration_in_seconds
    #   <p>The duration of the assessment run.</p>
    #   @return [Integer]
    # @!attribute rules_package_arns
    #   <p>The rules packages selected for the assessment run.</p>
    #   @return [Array<String>]
    # @!attribute user_attributes_for_findings
    #   <p>The user-defined attributes that are assigned to every generated finding.</p>
    #   @return [Array<Types::Attribute>]
    # @!attribute created_at
    #   <p>The time when <a>StartAssessmentRun</a> was called.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The time when <a>StartAssessmentRun</a> was called.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The assessment run completion time that corresponds to the rules packages evaluation
    #            completion time or failure.</p>
    #   @return [Time]
    # @!attribute state_changed_at
    #   <p>The last time when the assessment run's state changed.</p>
    #   @return [Time]
    # @!attribute data_collected
    #   <p>A Boolean value (true or false) that specifies whether the process of collecting data
    #            from the agents is completed.</p>
    #   @return [Boolean]
    # @!attribute state_changes
    #   <p>A list of the assessment run state changes.</p>
    #   @return [Array<Types::AssessmentRunStateChange>]
    # @!attribute notifications
    #   <p>A list of notifications for the event subscriptions. A notification about a
    #            particular generated finding is added to this list only once.</p>
    #   @return [Array<Types::AssessmentRunNotification>]
    # @!attribute finding_counts
    #   <p>Provides a total count of generated findings per severity.</p>
    #   @return [Hash<String, Integer>]
    class AssessmentRun < Struct.new(
      :arn,
      :name,
      :assessment_template_arn,
      :state,
      :duration_in_seconds,
      :rules_package_arns,
      :user_attributes_for_findings,
      :created_at,
      :started_at,
      :completed_at,
      :state_changed_at,
      :data_collected,
      :state_changes,
      :notifications,
      :finding_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon Inspector agent. This data type is used as a
    #          response element in the <a>ListAssessmentRunAgents</a> action.</p>
    # @!attribute agent_id
    #   <p>The AWS account of the EC2 instance where the agent is installed.</p>
    #   @return [String]
    # @!attribute assessment_run_arn
    #   <p>The ARN of the assessment run that is associated with the agent.</p>
    #   @return [String]
    # @!attribute agent_health
    #   <p>The current health state of the agent.</p>
    #   @return [String]
    # @!attribute agent_health_code
    #   <p>The detailed health state of the agent.</p>
    #   @return [String]
    # @!attribute agent_health_details
    #   <p>The description for the agent health code.</p>
    #   @return [String]
    # @!attribute auto_scaling_group
    #   <p>The Auto Scaling group of the EC2 instance that is specified by the agent
    #            ID.</p>
    #   @return [String]
    # @!attribute telemetry_metadata
    #   <p>The Amazon Inspector application data metrics that are collected by the
    #            agent.</p>
    #   @return [Array<Types::TelemetryMetadata>]
    class AssessmentRunAgent < Struct.new(
      :agent_id,
      :assessment_run_arn,
      :agent_health,
      :agent_health_code,
      :agent_health_details,
      :auto_scaling_group,
      :telemetry_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used as the request parameter in the <a>ListAssessmentRuns</a>
    #          action.</p>
    # @!attribute name_pattern
    #   <p>For a record to match a filter, an explicit value or a string containing a wildcard
    #            that is specified for this data type property must match the value of the <b>assessmentRunName</b> property of the <a>AssessmentRun</a>
    #            data type.</p>
    #   @return [String]
    # @!attribute states
    #   <p>For a record to match a filter, one of the values specified for this data type
    #            property must be the exact match of the value of the <b>assessmentRunState</b> property of the <a>AssessmentRun</a> data
    #            type.</p>
    #   @return [Array<String>]
    # @!attribute duration_range
    #   <p>For a record to match a filter, the value that is specified for this data type
    #            property must inclusively match any value between the specified minimum and maximum values
    #            of the <b>durationInSeconds</b> property of the <a>AssessmentRun</a> data type.</p>
    #   @return [Types::DurationRange]
    # @!attribute rules_package_arns
    #   <p>For a record to match a filter, the value that is specified for this data type
    #            property must be contained in the list of values of the <b>rulesPackages</b> property of the <a>AssessmentRun</a> data
    #            type.</p>
    #   @return [Array<String>]
    # @!attribute start_time_range
    #   <p>For a record to match a filter, the value that is specified for this data type
    #            property must inclusively match any value between the specified minimum and maximum values
    #            of the <b>startTime</b> property of the <a>AssessmentRun</a> data type.</p>
    #   @return [Types::TimestampRange]
    # @!attribute completion_time_range
    #   <p>For a record to match a filter, the value that is specified for this data type
    #            property must inclusively match any value between the specified minimum and maximum values
    #            of the <b>completedAt</b> property of the <a>AssessmentRun</a> data type.</p>
    #   @return [Types::TimestampRange]
    # @!attribute state_change_time_range
    #   <p>For a record to match a filter, the value that is specified for this data type
    #            property must match the <b>stateChangedAt</b> property of the
    #               <a>AssessmentRun</a> data type.</p>
    #   @return [Types::TimestampRange]
    class AssessmentRunFilter < Struct.new(
      :name_pattern,
      :states,
      :duration_range,
      :rules_package_arns,
      :start_time_range,
      :completion_time_range,
      :state_change_time_range,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot perform a specified action if an assessment run is currently in
    #          progress.</p>
    # @!attribute message
    #   <p>Details of the exception error.</p>
    #   @return [String]
    # @!attribute assessment_run_arns
    #   <p>The ARNs of the assessment runs that are currently in progress.</p>
    #   @return [Array<String>]
    # @!attribute assessment_run_arns_truncated
    #   <p>Boolean value that indicates whether the ARN list of the assessment runs is
    #            truncated.</p>
    #   @return [Boolean]
    # @!attribute can_retry
    #   <p>You can immediately retry your request.</p>
    #   @return [Boolean]
    class AssessmentRunInProgressException < Struct.new(
      :message,
      :assessment_run_arns,
      :assessment_run_arns_truncated,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used as one of the elements of the <a>AssessmentRun</a> data
    #          type.</p>
    # @!attribute date
    #   <p>The date of the notification.</p>
    #   @return [Time]
    # @!attribute event
    #   <p>The event for which a notification is sent.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message included in the notification.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The Boolean value that specifies whether the notification represents an
    #            error.</p>
    #   @return [Boolean]
    # @!attribute sns_topic_arn
    #   <p>The SNS topic to which the SNS notification is sent.</p>
    #   @return [String]
    # @!attribute sns_publish_status_code
    #   <p>The status code of the SNS notification.</p>
    #   @return [String]
    class AssessmentRunNotification < Struct.new(
      :date,
      :event,
      :message,
      :error,
      :sns_topic_arn,
      :sns_publish_status_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used as one of the elements of the <a>AssessmentRun</a> data
    #          type.</p>
    # @!attribute state_changed_at
    #   <p>The last time the assessment run state changed.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The assessment run state.</p>
    #   @return [String]
    class AssessmentRunStateChange < Struct.new(
      :state_changed_at,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon Inspector application. This data type is used as
    #          the response element in the <a>DescribeAssessmentTargets</a> action.</p>
    # @!attribute arn
    #   <p>The ARN that specifies the Amazon Inspector assessment target.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Amazon Inspector assessment target.</p>
    #   @return [String]
    # @!attribute resource_group_arn
    #   <p>The ARN that specifies the resource group that is associated with the assessment
    #            target.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the assessment target is created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which <a>UpdateAssessmentTarget</a> is called.</p>
    #   @return [Time]
    class AssessmentTarget < Struct.new(
      :arn,
      :name,
      :resource_group_arn,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used as the request parameter in the <a>ListAssessmentTargets</a>
    #          action.</p>
    # @!attribute assessment_target_name_pattern
    #   <p>For a record to match a filter, an explicit value or a string that contains a
    #            wildcard that is specified for this data type property must match the value of the
    #               <b>assessmentTargetName</b> property of the <a>AssessmentTarget</a> data type.</p>
    #   @return [String]
    class AssessmentTargetFilter < Struct.new(
      :assessment_target_name_pattern,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon Inspector assessment template. This data type is
    #          used as the response element in the <a>DescribeAssessmentTemplates</a>
    #          action.</p>
    # @!attribute arn
    #   <p>The ARN of the assessment template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the assessment template.</p>
    #   @return [String]
    # @!attribute assessment_target_arn
    #   <p>The ARN of the assessment target that corresponds to this assessment
    #            template.</p>
    #   @return [String]
    # @!attribute duration_in_seconds
    #   <p>The duration in seconds specified for this assessment template. The default value is
    #            3600 seconds (one hour). The maximum value is 86400 seconds (one day).</p>
    #   @return [Integer]
    # @!attribute rules_package_arns
    #   <p>The rules packages that are specified for this assessment template.</p>
    #   @return [Array<String>]
    # @!attribute user_attributes_for_findings
    #   <p>The user-defined attributes that are assigned to every generated finding from the
    #            assessment run that uses this assessment template.</p>
    #   @return [Array<Types::Attribute>]
    # @!attribute last_assessment_run_arn
    #   <p>The Amazon Resource Name (ARN) of the most recent assessment run associated with this
    #            assessment template. This value exists only when the value of assessmentRunCount is
    #            greaterpa than zero.</p>
    #   @return [String]
    # @!attribute assessment_run_count
    #   <p>The number of existing assessment runs associated with this assessment template. This
    #            value can be zero or a positive integer.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The time at which the assessment template is created.</p>
    #   @return [Time]
    class AssessmentTemplate < Struct.new(
      :arn,
      :name,
      :assessment_target_arn,
      :duration_in_seconds,
      :rules_package_arns,
      :user_attributes_for_findings,
      :last_assessment_run_arn,
      :assessment_run_count,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used as the request parameter in the <a>ListAssessmentTemplates</a>
    #          action.</p>
    # @!attribute name_pattern
    #   <p>For a record to match a filter, an explicit value or a string that contains a
    #            wildcard that is specified for this data type property must match the value of the
    #               <b>assessmentTemplateName</b> property of the <a>AssessmentTemplate</a> data type.</p>
    #   @return [String]
    # @!attribute duration_range
    #   <p>For a record to match a filter, the value specified for this data type property must
    #            inclusively match any value between the specified minimum and maximum values of the
    #               <b>durationInSeconds</b> property of the <a>AssessmentTemplate</a> data type.</p>
    #   @return [Types::DurationRange]
    # @!attribute rules_package_arns
    #   <p>For a record to match a filter, the values that are specified for this data type
    #            property must be contained in the list of values of the <b>rulesPackageArns</b> property of the <a>AssessmentTemplate</a> data
    #            type.</p>
    #   @return [Array<String>]
    class AssessmentTemplateFilter < Struct.new(
      :name_pattern,
      :duration_range,
      :rules_package_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of attributes of the host from which the finding is generated.</p>
    # @!attribute schema_version
    #   <p>The schema version of this data type.</p>
    #   @return [Integer]
    # @!attribute agent_id
    #   <p>The ID of the agent that is installed on the EC2 instance where the finding is
    #            generated.</p>
    #   @return [String]
    # @!attribute auto_scaling_group
    #   <p>The Auto Scaling group of the EC2 instance where the finding is generated.</p>
    #   @return [String]
    # @!attribute ami_id
    #   <p>The ID of the Amazon Machine Image (AMI) that is installed on the EC2 instance where
    #            the finding is generated.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The hostname of the EC2 instance where the finding is generated.</p>
    #   @return [String]
    # @!attribute ipv4_addresses
    #   <p>The list of IP v4 addresses of the EC2 instance where the finding is
    #            generated.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags related to the EC2 instance where the finding is generated.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute network_interfaces
    #   <p>An array of the network interfaces interacting with the EC2 instance where the
    #            finding is generated.</p>
    #   @return [Array<Types::NetworkInterface>]
    class AssetAttributes < Struct.new(
      :schema_version,
      :agent_id,
      :auto_scaling_group,
      :ami_id,
      :hostname,
      :ipv4_addresses,
      :tags,
      :network_interfaces,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:schema_version] = 0 unless options.key?(:schema_version)
        super
      end
    end

    # <p>This data type is used as a request parameter in the <a>AddAttributesToFindings</a> and <a>CreateAssessmentTemplate</a>
    #          actions.</p>
    # @!attribute key
    #   <p>The attribute key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to the attribute key.</p>
    #   @return [String]
    class Attribute < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_target_name
    #   <p>The user-defined name that identifies the assessment target that you want to create.
    #            The name must be unique within the AWS account.</p>
    #   @return [String]
    # @!attribute resource_group_arn
    #   <p>The ARN that specifies the resource group that is used to create the assessment
    #            target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account
    #            and region are included in the assessment target.</p>
    #   @return [String]
    class CreateAssessmentTargetRequest < Struct.new(
      :assessment_target_name,
      :resource_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_target_arn
    #   <p>The ARN that specifies the assessment target that is created.</p>
    #   @return [String]
    class CreateAssessmentTargetResponse < Struct.new(
      :assessment_target_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_target_arn
    #   <p>The ARN that specifies the assessment target for which you want to create the
    #            assessment template.</p>
    #   @return [String]
    # @!attribute assessment_template_name
    #   <p>The user-defined name that identifies the assessment template that you want to
    #            create. You can create several assessment templates for an assessment target. The names of
    #            the assessment templates that correspond to a particular assessment target must be
    #            unique.</p>
    #   @return [String]
    # @!attribute duration_in_seconds
    #   <p>The duration of the assessment run in seconds.</p>
    #   @return [Integer]
    # @!attribute rules_package_arns
    #   <p>The ARNs that specify the rules packages that you want to attach to the assessment
    #            template.</p>
    #   @return [Array<String>]
    # @!attribute user_attributes_for_findings
    #   <p>The user-defined attributes that are assigned to every finding that is generated by
    #            the assessment run that uses this assessment template. An attribute is a key and value pair
    #            (an <a>Attribute</a> object). Within an assessment template, each key must be
    #            unique.</p>
    #   @return [Array<Types::Attribute>]
    class CreateAssessmentTemplateRequest < Struct.new(
      :assessment_target_arn,
      :assessment_template_name,
      :duration_in_seconds,
      :rules_package_arns,
      :user_attributes_for_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_template_arn
    #   <p>The ARN that specifies the assessment template that is created.</p>
    #   @return [String]
    class CreateAssessmentTemplateResponse < Struct.new(
      :assessment_template_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_template_arn
    #   <p>The ARN that specifies the assessment template for which you want to create an
    #            exclusions preview.</p>
    #   @return [String]
    class CreateExclusionsPreviewRequest < Struct.new(
      :assessment_template_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute preview_token
    #   <p>Specifies the unique identifier of the requested exclusions preview. You can use the
    #            unique identifier to retrieve the exclusions preview when running the GetExclusionsPreview
    #            API.</p>
    #   @return [String]
    class CreateExclusionsPreviewResponse < Struct.new(
      :preview_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_tags
    #   <p>A collection of keys and an array of possible values,
    #            '[{"key":"key1","values":["Value1","Value2"]},{"key":"Key2","values":["Value3"]}]'.</p>
    #            <p>For example,'[{"key":"Name","values":["TestEC2Instance"]}]'.</p>
    #   @return [Array<Types::ResourceGroupTag>]
    class CreateResourceGroupRequest < Struct.new(
      :resource_group_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_arn
    #   <p>The ARN that specifies the resource group that is created.</p>
    #   @return [String]
    class CreateResourceGroupResponse < Struct.new(
      :resource_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arn
    #   <p>The ARN that specifies the assessment run that you want to delete.</p>
    #   @return [String]
    class DeleteAssessmentRunRequest < Struct.new(
      :assessment_run_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_target_arn
    #   <p>The ARN that specifies the assessment target that you want to delete.</p>
    #   @return [String]
    class DeleteAssessmentTargetRequest < Struct.new(
      :assessment_target_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_template_arn
    #   <p>The ARN that specifies the assessment template that you want to delete.</p>
    #   @return [String]
    class DeleteAssessmentTemplateRequest < Struct.new(
      :assessment_template_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arns
    #   <p>The ARN that specifies the assessment run that you want to describe.</p>
    #   @return [Array<String>]
    class DescribeAssessmentRunsRequest < Struct.new(
      :assessment_run_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_runs
    #   <p>Information about the assessment run.</p>
    #   @return [Array<Types::AssessmentRun>]
    # @!attribute failed_items
    #   <p>Assessment run details that cannot be described. An error code is provided for each
    #            failed item.</p>
    #   @return [Hash<String, Types::FailedItemDetails>]
    class DescribeAssessmentRunsResponse < Struct.new(
      :assessment_runs,
      :failed_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_target_arns
    #   <p>The ARNs that specifies the assessment targets that you want to describe.</p>
    #   @return [Array<String>]
    class DescribeAssessmentTargetsRequest < Struct.new(
      :assessment_target_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_targets
    #   <p>Information about the assessment targets.</p>
    #   @return [Array<Types::AssessmentTarget>]
    # @!attribute failed_items
    #   <p>Assessment target details that cannot be described. An error code is provided for
    #            each failed item.</p>
    #   @return [Hash<String, Types::FailedItemDetails>]
    class DescribeAssessmentTargetsResponse < Struct.new(
      :assessment_targets,
      :failed_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_template_arns
    #   @return [Array<String>]
    class DescribeAssessmentTemplatesRequest < Struct.new(
      :assessment_template_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_templates
    #   <p>Information about the assessment templates.</p>
    #   @return [Array<Types::AssessmentTemplate>]
    # @!attribute failed_items
    #   <p>Assessment template details that cannot be described. An error code is provided for
    #            each failed item.</p>
    #   @return [Hash<String, Types::FailedItemDetails>]
    class DescribeAssessmentTemplatesResponse < Struct.new(
      :assessment_templates,
      :failed_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The ARN that specifies the IAM role that Amazon Inspector uses to access your AWS
    #            account.</p>
    #   @return [String]
    # @!attribute valid
    #   <p>A Boolean value that specifies whether the IAM role has the necessary policies
    #            attached to enable Amazon Inspector to access your AWS account.</p>
    #   @return [Boolean]
    # @!attribute registered_at
    #   <p>The date when the cross-account access role was registered.</p>
    #   @return [Time]
    class DescribeCrossAccountAccessRoleResponse < Struct.new(
      :role_arn,
      :valid,
      :registered_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute exclusion_arns
    #   <p>The list of ARNs that specify the exclusions that you want to describe.</p>
    #   @return [Array<String>]
    # @!attribute locale
    #   <p>The locale into which you want to translate the exclusion's title, description, and
    #            recommendation.</p>
    #   @return [String]
    class DescribeExclusionsRequest < Struct.new(
      :exclusion_arns,
      :locale,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute exclusions
    #   <p>Information about the exclusions.</p>
    #   @return [Hash<String, Types::Exclusion>]
    # @!attribute failed_items
    #   <p>Exclusion details that cannot be described. An error code is provided for each failed
    #            item.</p>
    #   @return [Hash<String, Types::FailedItemDetails>]
    class DescribeExclusionsResponse < Struct.new(
      :exclusions,
      :failed_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_arns
    #   <p>The ARN that specifies the finding that you want to describe.</p>
    #   @return [Array<String>]
    # @!attribute locale
    #   <p>The locale into which you want to translate a finding description, recommendation,
    #            and the short description that identifies the finding.</p>
    #   @return [String]
    class DescribeFindingsRequest < Struct.new(
      :finding_arns,
      :locale,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute findings
    #   <p>Information about the finding.</p>
    #   @return [Array<Types::Finding>]
    # @!attribute failed_items
    #   <p>Finding details that cannot be described. An error code is provided for each failed
    #            item.</p>
    #   @return [Hash<String, Types::FailedItemDetails>]
    class DescribeFindingsResponse < Struct.new(
      :findings,
      :failed_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_arns
    #   <p>The ARN that specifies the resource group that you want to describe.</p>
    #   @return [Array<String>]
    class DescribeResourceGroupsRequest < Struct.new(
      :resource_group_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_groups
    #   <p>Information about a resource group.</p>
    #   @return [Array<Types::ResourceGroup>]
    # @!attribute failed_items
    #   <p>Resource group details that cannot be described. An error code is provided for each
    #            failed item.</p>
    #   @return [Hash<String, Types::FailedItemDetails>]
    class DescribeResourceGroupsResponse < Struct.new(
      :resource_groups,
      :failed_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules_package_arns
    #   <p>The ARN that specifies the rules package that you want to describe.</p>
    #   @return [Array<String>]
    # @!attribute locale
    #   <p>The locale that you want to translate a rules package description into.</p>
    #   @return [String]
    class DescribeRulesPackagesRequest < Struct.new(
      :rules_package_arns,
      :locale,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules_packages
    #   <p>Information about the rules package.</p>
    #   @return [Array<Types::RulesPackage>]
    # @!attribute failed_items
    #   <p>Rules package details that cannot be described. An error code is provided for each
    #            failed item.</p>
    #   @return [Hash<String, Types::FailedItemDetails>]
    class DescribeRulesPackagesResponse < Struct.new(
      :rules_packages,
      :failed_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This data type is used in the <a>AssessmentTemplateFilter</a> data
    #          type.</p>
    # @!attribute min_seconds
    #   <p>The minimum value of the duration range. Must be greater than zero.</p>
    #   @return [Integer]
    # @!attribute max_seconds
    #   <p>The maximum value of the duration range. Must be less than or equal to 604800 seconds
    #            (1 week).</p>
    #   @return [Integer]
    class DurationRange < Struct.new(
      :min_seconds,
      :max_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This data type is used in the <a>Subscription</a> data type.</p>
    # @!attribute event
    #   <p>The event for which Amazon Simple Notification Service (SNS) notifications are
    #            sent.</p>
    #   @return [String]
    # @!attribute subscribed_at
    #   <p>The time at which <a>SubscribeToEvent</a> is called.</p>
    #   @return [Time]
    class EventSubscription < Struct.new(
      :event,
      :subscribed_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about what was excluded from an assessment run.</p>
    # @!attribute arn
    #   <p>The ARN that specifies the exclusion.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The name of the exclusion.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the exclusion.</p>
    #   @return [String]
    # @!attribute recommendation
    #   <p>The recommendation for the exclusion.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The AWS resources for which the exclusion pertains.</p>
    #   @return [Array<Types::Scope>]
    # @!attribute attributes
    #   <p>The system-defined attributes for the exclusion.</p>
    #   @return [Array<Types::Attribute>]
    class Exclusion < Struct.new(
      :arn,
      :title,
      :description,
      :recommendation,
      :scopes,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about what is excluded from an assessment run given the current
    #          state of the assessment template.</p>
    # @!attribute title
    #   <p>The name of the exclusion preview.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the exclusion preview.</p>
    #   @return [String]
    # @!attribute recommendation
    #   <p>The recommendation for the exclusion preview.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The AWS resources for which the exclusion preview pertains.</p>
    #   @return [Array<Types::Scope>]
    # @!attribute attributes
    #   <p>The system-defined attributes for the exclusion preview.</p>
    #   @return [Array<Types::Attribute>]
    class ExclusionPreview < Struct.new(
      :title,
      :description,
      :recommendation,
      :scopes,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Includes details about the failed items.</p>
    # @!attribute failure_code
    #   <p>The status code of a failed item.</p>
    #   @return [String]
    # @!attribute retryable
    #   <p>Indicates whether you can immediately retry a request for this item for a specified
    #            resource.</p>
    #   @return [Boolean]
    class FailedItemDetails < Struct.new(
      :failure_code,
      :retryable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon Inspector finding. This data type is used as the
    #          response element in the <a>DescribeFindings</a> action.</p>
    # @!attribute arn
    #   <p>The ARN that specifies the finding.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>The schema version of this data type.</p>
    #   @return [Integer]
    # @!attribute service
    #   <p>The data element is set to "Inspector".</p>
    #   @return [String]
    # @!attribute service_attributes
    #   <p>This data type is used in the <a>Finding</a> data type.</p>
    #   @return [Types::InspectorServiceAttributes]
    # @!attribute asset_type
    #   <p>The type of the host from which the finding is generated.</p>
    #   @return [String]
    # @!attribute asset_attributes
    #   <p>A collection of attributes of the host from which the finding is generated.</p>
    #   @return [Types::AssetAttributes]
    # @!attribute id
    #   <p>The ID of the finding.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The name of the finding.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the finding.</p>
    #   @return [String]
    # @!attribute recommendation
    #   <p>The recommendation for the finding.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The finding severity. Values can be set to High, Medium, Low, and
    #            Informational.</p>
    #   @return [String]
    # @!attribute numeric_severity
    #   <p>The numeric value of the finding severity.</p>
    #   @return [Float]
    # @!attribute confidence
    #   <p>This data element is currently not used.</p>
    #   @return [Integer]
    # @!attribute indicator_of_compromise
    #   <p>This data element is currently not used.</p>
    #   @return [Boolean]
    # @!attribute attributes
    #   <p>The system-defined attributes for the finding.</p>
    #   @return [Array<Types::Attribute>]
    # @!attribute user_attributes
    #   <p>The user-defined attributes that are assigned to the finding.</p>
    #   @return [Array<Types::Attribute>]
    # @!attribute created_at
    #   <p>The time when the finding was generated.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when <a>AddAttributesToFindings</a> is called.</p>
    #   @return [Time]
    class Finding < Struct.new(
      :arn,
      :schema_version,
      :service,
      :service_attributes,
      :asset_type,
      :asset_attributes,
      :id,
      :title,
      :description,
      :recommendation,
      :severity,
      :numeric_severity,
      :confidence,
      :indicator_of_compromise,
      :attributes,
      :user_attributes,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:schema_version] = 0 unless options.key?(:schema_version)
        options[:numeric_severity] = 0 unless options.key?(:numeric_severity)
        options[:confidence] = 0 unless options.key?(:confidence)
        super
      end
    end

    # <p>This data type is used as a request parameter in the <a>ListFindings</a>
    #          action.</p>
    # @!attribute agent_ids
    #   <p>For a record to match a filter, one of the values that is specified for this data
    #            type property must be the exact match of the value of the <b>agentId</b> property of the <a>Finding</a> data type.</p>
    #   @return [Array<String>]
    # @!attribute auto_scaling_groups
    #   <p>For a record to match a filter, one of the values that is specified for this data
    #            type property must be the exact match of the value of the <b>autoScalingGroup</b> property of the <a>Finding</a> data
    #            type.</p>
    #   @return [Array<String>]
    # @!attribute rule_names
    #   <p>For a record to match a filter, one of the values that is specified for this data
    #            type property must be the exact match of the value of the <b>ruleName</b> property of the <a>Finding</a> data type.</p>
    #   @return [Array<String>]
    # @!attribute severities
    #   <p>For a record to match a filter, one of the values that is specified for this data
    #            type property must be the exact match of the value of the <b>severity</b> property of the <a>Finding</a> data type.</p>
    #   @return [Array<String>]
    # @!attribute rules_package_arns
    #   <p>For a record to match a filter, one of the values that is specified for this data
    #            type property must be the exact match of the value of the <b>rulesPackageArn</b> property of the <a>Finding</a> data
    #            type.</p>
    #   @return [Array<String>]
    # @!attribute attributes
    #   <p>For a record to match a filter, the list of values that are specified for this data
    #            type property must be contained in the list of values of the <b>attributes</b> property of the <a>Finding</a> data type.</p>
    #   @return [Array<Types::Attribute>]
    # @!attribute user_attributes
    #   <p>For a record to match a filter, the value that is specified for this data type
    #            property must be contained in the list of values of the <b>userAttributes</b> property of the <a>Finding</a> data
    #            type.</p>
    #   @return [Array<Types::Attribute>]
    # @!attribute creation_time_range
    #   <p>The time range during which the finding is generated.</p>
    #   @return [Types::TimestampRange]
    class FindingFilter < Struct.new(
      :agent_ids,
      :auto_scaling_groups,
      :rule_names,
      :severities,
      :rules_package_arns,
      :attributes,
      :user_attributes,
      :creation_time_range,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arn
    #   <p>The ARN that specifies the assessment run for which you want to generate a
    #            report.</p>
    #   @return [String]
    # @!attribute report_file_format
    #   <p>Specifies the file format (html or pdf) of the assessment report that you want to
    #            generate.</p>
    #   @return [String]
    # @!attribute report_type
    #   <p>Specifies the type of the assessment report that you want to generate. There are two
    #            types of assessment reports: a finding report and a full report. For more information, see
    #               <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html">Assessment Reports</a>. </p>
    #   @return [String]
    class GetAssessmentReportRequest < Struct.new(
      :assessment_run_arn,
      :report_file_format,
      :report_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Specifies the status of the request to generate an assessment report. </p>
    #   @return [String]
    # @!attribute url
    #   <p>Specifies the URL where you can find the generated assessment report. This parameter
    #            is only returned if the report is successfully generated.</p>
    #   @return [String]
    class GetAssessmentReportResponse < Struct.new(
      :status,
      :url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_template_arn
    #   <p>The ARN that specifies the assessment template for which the exclusions preview was
    #            requested.</p>
    #   @return [String]
    # @!attribute preview_token
    #   <p>The unique identifier associated of the exclusions preview.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to
    #            the action fill nextToken in the request with the value of nextToken from the previous
    #            response to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 100. The maximum value is 500.</p>
    #   @return [Integer]
    # @!attribute locale
    #   <p>The locale into which you want to translate the exclusion's title, description, and
    #            recommendation.</p>
    #   @return [String]
    class GetExclusionsPreviewRequest < Struct.new(
      :assessment_template_arn,
      :preview_token,
      :next_token,
      :max_results,
      :locale,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute preview_status
    #   <p>Specifies the status of the request to generate an exclusions preview.</p>
    #   @return [String]
    # @!attribute exclusion_previews
    #   <p>Information about the exclusions included in the preview.</p>
    #   @return [Array<Types::ExclusionPreview>]
    # @!attribute next_token
    #   <p>When a response is generated, if there is more data to be listed, this parameters is
    #            present in the response and contains the value to use for the nextToken parameter in a
    #            subsequent pagination request. If there is no more data to be listed, this parameter is set
    #            to null.</p>
    #   @return [String]
    class GetExclusionsPreviewResponse < Struct.new(
      :preview_status,
      :exclusion_previews,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arn
    #   <p>The ARN that specifies the assessment run that has the telemetry data that you want
    #            to obtain.</p>
    #   @return [String]
    class GetTelemetryMetadataRequest < Struct.new(
      :assessment_run_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute telemetry_metadata
    #   <p>Telemetry details.</p>
    #   @return [Array<Types::TelemetryMetadata>]
    class GetTelemetryMetadataResponse < Struct.new(
      :telemetry_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This data type is used in the <a>Finding</a> data type.</p>
    # @!attribute schema_version
    #   <p>The schema version of this data type.</p>
    #   @return [Integer]
    # @!attribute assessment_run_arn
    #   <p>The ARN of the assessment run during which the finding is generated.</p>
    #   @return [String]
    # @!attribute rules_package_arn
    #   <p>The ARN of the rules package that is used to generate the finding.</p>
    #   @return [String]
    class InspectorServiceAttributes < Struct.new(
      :schema_version,
      :assessment_run_arn,
      :rules_package_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:schema_version] = 0 unless options.key?(:schema_version)
        super
      end
    end

    # <p>Internal server error.</p>
    # @!attribute message
    #   <p>Details of the exception error.</p>
    #   @return [String]
    # @!attribute can_retry
    #   <p>You can immediately retry your request.</p>
    #   @return [Boolean]
    class InternalException < Struct.new(
      :message,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Inspector cannot assume the cross-account role that it needs to list your EC2
    #          instances during the assessment run.</p>
    # @!attribute message
    #   <p>Details of the exception error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Code that indicates the type of error that is generated.</p>
    #   @return [String]
    # @!attribute can_retry
    #   <p>You can immediately retry your request.</p>
    #   @return [Boolean]
    class InvalidCrossAccountRoleException < Struct.new(
      :message,
      :error_code,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because an invalid or out-of-range value was supplied for an
    #          input parameter.</p>
    # @!attribute message
    #   <p>Details of the exception error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Code that indicates the type of error that is generated.</p>
    #   @return [String]
    # @!attribute can_retry
    #   <p>You can immediately retry your request.</p>
    #   @return [Boolean]
    class InvalidInputException < Struct.new(
      :message,
      :error_code,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because it attempted to create resources beyond the current
    #          AWS account limits. The error code describes the limit exceeded.</p>
    # @!attribute message
    #   <p>Details of the exception error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Code that indicates the type of error that is generated.</p>
    #   @return [String]
    # @!attribute can_retry
    #   <p>You can immediately retry your request.</p>
    #   @return [Boolean]
    class LimitExceededException < Struct.new(
      :message,
      :error_code,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arn
    #   <p>The ARN that specifies the assessment run whose agents you want to list.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #   @return [Types::AgentFilter]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentRunAgents</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in
    #            the response. The default value is 10. The maximum value is 500.</p>
    #   @return [Integer]
    class ListAssessmentRunAgentsRequest < Struct.new(
      :assessment_run_arn,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_agents
    #   <p>A list of ARNs that specifies the agents returned by the action.</p>
    #   @return [Array<Types::AssessmentRunAgent>]
    # @!attribute next_token
    #   <p> When a response is generated, if there is more data to be listed, this parameter is
    #            present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
    #            data to be listed, this parameter is set to null.</p>
    #   @return [String]
    class ListAssessmentRunAgentsResponse < Struct.new(
      :assessment_run_agents,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_template_arns
    #   <p>The ARNs that specify the assessment templates whose assessment runs you want to
    #            list.</p>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #   @return [Types::AssessmentRunFilter]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentRuns</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in
    #            the response. The default value is 10. The maximum value is 500.</p>
    #   @return [Integer]
    class ListAssessmentRunsRequest < Struct.new(
      :assessment_template_arns,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arns
    #   <p>A list of ARNs that specifies the assessment runs that are returned by the
    #            action.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> When a response is generated, if there is more data to be listed, this parameter is
    #            present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
    #            data to be listed, this parameter is set to null.</p>
    #   @return [String]
    class ListAssessmentRunsResponse < Struct.new(
      :assessment_run_arns,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #   @return [Types::AssessmentTargetFilter]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentTargets</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #   @return [Integer]
    class ListAssessmentTargetsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_target_arns
    #   <p>A list of ARNs that specifies the assessment targets that are returned by the
    #            action.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> When a response is generated, if there is more data to be listed, this parameter is
    #            present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
    #            data to be listed, this parameter is set to null.</p>
    #   @return [String]
    class ListAssessmentTargetsResponse < Struct.new(
      :assessment_target_arns,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_target_arns
    #   <p>A list of ARNs that specifies the assessment targets whose assessment templates you
    #            want to list.</p>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #   @return [Types::AssessmentTemplateFilter]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentTemplates</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #   @return [Integer]
    class ListAssessmentTemplatesRequest < Struct.new(
      :assessment_target_arns,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_template_arns
    #   <p>A list of ARNs that specifies the assessment templates returned by the
    #            action.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> When a response is generated, if there is more data to be listed, this parameter is
    #            present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
    #            data to be listed, this parameter is set to null.</p>
    #   @return [String]
    class ListAssessmentTemplatesResponse < Struct.new(
      :assessment_template_arns,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the assessment template for which you want to list the existing event
    #            subscriptions.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListEventSubscriptions</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #   @return [Integer]
    class ListEventSubscriptionsRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriptions
    #   <p>Details of the returned event subscriptions.</p>
    #   @return [Array<Types::Subscription>]
    # @!attribute next_token
    #   <p> When a response is generated, if there is more data to be listed, this parameter is
    #            present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
    #            data to be listed, this parameter is set to null.</p>
    #   @return [String]
    class ListEventSubscriptionsResponse < Struct.new(
      :subscriptions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arn
    #   <p>The ARN of the assessment run that generated the exclusions that you want to
    #            list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the ListExclusionsRequest action. Subsequent calls to the
    #            action fill nextToken in the request with the value of nextToken from the previous response
    #            to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 100. The maximum value is 500.</p>
    #   @return [Integer]
    class ListExclusionsRequest < Struct.new(
      :assessment_run_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute exclusion_arns
    #   <p>A list of exclusions' ARNs returned by the action.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>When a response is generated, if there is more data to be listed, this parameters is
    #            present in the response and contains the value to use for the nextToken parameter in a
    #            subsequent pagination request. If there is no more data to be listed, this parameter is set
    #            to null.</p>
    #   @return [String]
    class ListExclusionsResponse < Struct.new(
      :exclusion_arns,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arns
    #   <p>The ARNs of the assessment runs that generate the findings that you want to
    #            list.</p>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #   @return [Types::FindingFilter]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListFindings</b> action.
    #            Subsequent calls to the action fill <b>nextToken</b> in the
    #            request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #   @return [Integer]
    class ListFindingsRequest < Struct.new(
      :assessment_run_arns,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_arns
    #   <p>A list of ARNs that specifies the findings returned by the action.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> When a response is generated, if there is more data to be listed, this parameter is
    #            present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
    #            data to be listed, this parameter is set to null.</p>
    #   @return [String]
    class ListFindingsResponse < Struct.new(
      :finding_arns,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListRulesPackages</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #   @return [Integer]
    class ListRulesPackagesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules_package_arns
    #   <p>The list of ARNs that specifies the rules packages returned by the action.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> When a response is generated, if there is more data to be listed, this parameter is
    #            present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
    #            data to be listed, this parameter is set to null.</p>
    #   @return [String]
    class ListRulesPackagesResponse < Struct.new(
      :rules_package_arns,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN that specifies the assessment template whose tags you want to list.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the network interfaces interacting with an EC2 instance.
    #          This data type is used as one of the elements of the <a>AssetAttributes</a> data
    #          type.</p>
    # @!attribute network_interface_id
    #   <p>The ID of the network interface.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of a subnet associated with the network interface.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of a VPC associated with the network interface.</p>
    #   @return [String]
    # @!attribute private_dns_name
    #   <p>The name of a private DNS associated with the network interface.</p>
    #   @return [String]
    # @!attribute private_ip_address
    #   <p>The private IP address associated with the network interface.</p>
    #   @return [String]
    # @!attribute private_ip_addresses
    #   <p>A list of the private IP addresses associated with the network interface. Includes
    #            the privateDnsName and privateIpAddress.</p>
    #   @return [Array<Types::PrivateIp>]
    # @!attribute public_dns_name
    #   <p>The name of a public DNS associated with the network interface.</p>
    #   @return [String]
    # @!attribute public_ip
    #   <p>The public IP address from which the network interface is reachable.</p>
    #   @return [String]
    # @!attribute ipv6_addresses
    #   <p>The IP addresses associated with the network interface.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>A list of the security groups associated with the network interface. Includes the
    #            groupId and groupName.</p>
    #   @return [Array<Types::SecurityGroup>]
    class NetworkInterface < Struct.new(
      :network_interface_id,
      :subnet_id,
      :vpc_id,
      :private_dns_name,
      :private_ip_address,
      :private_ip_addresses,
      :public_dns_name,
      :public_ip,
      :ipv6_addresses,
      :security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because it referenced an entity that does not exist. The
    #          error code describes the entity.</p>
    # @!attribute message
    #   <p>Details of the exception error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Code that indicates the type of error that is generated.</p>
    #   @return [String]
    # @!attribute can_retry
    #   <p>You can immediately retry your request.</p>
    #   @return [Boolean]
    class NoSuchEntityException < Struct.new(
      :message,
      :error_code,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute preview_agents_arn
    #   <p>The ARN of the assessment target whose agents you want to preview.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>PreviewAgents</b> action.
    #            Subsequent calls to the action fill <b>nextToken</b> in the
    #            request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #   @return [Integer]
    class PreviewAgentsRequest < Struct.new(
      :preview_agents_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_previews
    #   <p>The resulting list of agents.</p>
    #   @return [Array<Types::AgentPreview>]
    # @!attribute next_token
    #   <p> When a response is generated, if there is more data to be listed, this parameter is
    #            present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
    #            data to be listed, this parameter is set to null.</p>
    #   @return [String]
    class PreviewAgentsResponse < Struct.new(
      :agent_previews,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request is rejected. The specified assessment template is currently generating an
    #          exclusions preview.</p>
    # @!attribute message
    #   @return [String]
    class PreviewGenerationInProgressException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a private IP address associated with a network interface. This
    #          data type is used as a response element in the <a>DescribeFindings</a>
    #          action.</p>
    # @!attribute private_dns_name
    #   <p>The DNS name of the private IP address.</p>
    #   @return [String]
    # @!attribute private_ip_address
    #   <p>The full IP address of the network inteface.</p>
    #   @return [String]
    class PrivateIp < Struct.new(
      :private_dns_name,
      :private_ip_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants Amazon Inspector access to AWS Services needed to
    #            perform security assessments. </p>
    #   @return [String]
    class RegisterCrossAccountAccessRoleRequest < Struct.new(
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_arns
    #   <p>The ARNs that specify the findings that you want to remove attributes from.</p>
    #   @return [Array<String>]
    # @!attribute attribute_keys
    #   <p>The array of attribute keys that you want to remove from specified
    #            findings.</p>
    #   @return [Array<String>]
    class RemoveAttributesFromFindingsRequest < Struct.new(
      :finding_arns,
      :attribute_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_items
    #   <p>Attributes details that cannot be described. An error code is provided for each
    #            failed item.</p>
    #   @return [Hash<String, Types::FailedItemDetails>]
    class RemoveAttributesFromFindingsResponse < Struct.new(
      :failed_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a resource group. The resource group defines a set of tags
    #          that, when queried, identify the AWS resources that make up the assessment target. This
    #          data type is used as the response element in the <a>DescribeResourceGroups</a>
    #          action.</p>
    # @!attribute arn
    #   <p>The ARN of the resource group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags (key and value pairs) of the resource group. This data type property is used
    #            in the <a>CreateResourceGroup</a> action.</p>
    #   @return [Array<Types::ResourceGroupTag>]
    # @!attribute created_at
    #   <p>The time at which resource group is created.</p>
    #   @return [Time]
    class ResourceGroup < Struct.new(
      :arn,
      :tags,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This data type is used as one of the elements of the <a>ResourceGroup</a>
    #          data type.</p>
    # @!attribute key
    #   <p>A tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to a tag key.</p>
    #   @return [String]
    class ResourceGroupTag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon Inspector rules package. This data type is used
    #          as the response element in the <a>DescribeRulesPackages</a> action.</p>
    # @!attribute arn
    #   <p>The ARN of the rules package.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rules package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version ID of the rules package.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the rules package.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the rules package.</p>
    #   @return [String]
    class RulesPackage < Struct.new(
      :arn,
      :name,
      :version,
      :provider,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This data type contains key-value pairs that identify various Amazon
    #          resources.</p>
    # @!attribute key
    #   <p>The type of the scope.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The resource identifier for the specified scope type.</p>
    #   @return [String]
    class Scope < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a security group associated with a network interface. This
    #          data type is used as one of the elements of the <a>NetworkInterface</a> data
    #          type.</p>
    # @!attribute group_name
    #   <p>The name of the security group.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The ID of the security group.</p>
    #   @return [String]
    class SecurityGroup < Struct.new(
      :group_name,
      :group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The serice is temporary unavailable.</p>
    # @!attribute message
    #   <p>Details of the exception error.</p>
    #   @return [String]
    # @!attribute can_retry
    #   <p>You can wait and then retry your request.</p>
    #   @return [Boolean]
    class ServiceTemporarilyUnavailableException < Struct.new(
      :message,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the assessment template that you want to set tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs that you want to set to the assessment
    #            template.</p>
    #   @return [Array<Types::Tag>]
    class SetTagsForResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_template_arn
    #   <p>The ARN of the assessment template of the assessment run that you want to
    #            start.</p>
    #   @return [String]
    # @!attribute assessment_run_name
    #   <p>You can specify the name for the assessment run. The name must be unique for the
    #            assessment template whose ARN is used to start the assessment run.</p>
    #   @return [String]
    class StartAssessmentRunRequest < Struct.new(
      :assessment_template_arn,
      :assessment_run_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arn
    #   <p>The ARN of the assessment run that has been started.</p>
    #   @return [String]
    class StartAssessmentRunResponse < Struct.new(
      :assessment_run_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_run_arn
    #   <p>The ARN of the assessment run that you want to stop.</p>
    #   @return [String]
    # @!attribute stop_action
    #   <p>An input option that can be set to either START_EVALUATION or SKIP_EVALUATION.
    #            START_EVALUATION (the default value), stops the AWS agent from collecting data and begins
    #            the results evaluation and the findings generation process. SKIP_EVALUATION cancels the
    #            assessment run immediately, after which no findings are generated.</p>
    #   @return [String]
    class StopAssessmentRunRequest < Struct.new(
      :assessment_run_arn,
      :stop_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the assessment template that is used during the event for which you want
    #            to receive SNS notifications.</p>
    #   @return [String]
    # @!attribute event
    #   <p>The event for which you want to receive SNS notifications.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The ARN of the SNS topic to which the SNS notifications are sent.</p>
    #   @return [String]
    class SubscribeToEventRequest < Struct.new(
      :resource_arn,
      :event,
      :topic_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This data type is used as a response element in the <a>ListEventSubscriptions</a> action.</p>
    # @!attribute resource_arn
    #   <p>The ARN of the assessment template that is used during the event for which the SNS
    #            notification is sent.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The ARN of the Amazon Simple Notification Service (SNS) topic to which the SNS
    #            notifications are sent.</p>
    #   @return [String]
    # @!attribute event_subscriptions
    #   <p>The list of existing event subscriptions.</p>
    #   @return [Array<Types::EventSubscription>]
    class Subscription < Struct.new(
      :resource_arn,
      :topic_arn,
      :event_subscriptions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key and value pair. This data type is used as a request parameter in the <a>SetTagsForResource</a> action and a response element in the <a>ListTagsForResource</a> action.</p>
    # @!attribute key
    #   <p>A tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A value assigned to a tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata about the Amazon Inspector application data metrics collected by the
    #          agent. This data type is used as the response element in the <a>GetTelemetryMetadata</a> action.</p>
    # @!attribute message_type
    #   <p>A specific type of behavioral data that is collected by the agent.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The count of messages that the agent sends to the Amazon Inspector service.</p>
    #   @return [Integer]
    # @!attribute data_size
    #   <p>The data size of messages that the agent sends to the Amazon Inspector
    #            service.</p>
    #   @return [Integer]
    class TelemetryMetadata < Struct.new(
      :message_type,
      :count,
      :data_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This data type is used in the <a>AssessmentRunFilter</a> data
    #          type.</p>
    # @!attribute begin_date
    #   <p>The minimum value of the timestamp range.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The maximum value of the timestamp range.</p>
    #   @return [Time]
    class TimestampRange < Struct.new(
      :begin_date,
      :end_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the assessment template that is used during the event for which you want
    #            to stop receiving SNS notifications.</p>
    #   @return [String]
    # @!attribute event
    #   <p>The event for which you want to stop receiving SNS notifications.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The ARN of the SNS topic to which SNS notifications are sent.</p>
    #   @return [String]
    class UnsubscribeFromEventRequest < Struct.new(
      :resource_arn,
      :event,
      :topic_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used by the <a>GetAssessmentReport</a> API. The request was rejected
    #          because you tried to generate a report for an assessment run that existed before reporting
    #          was supported in Amazon Inspector. You can only generate reports for assessment runs that
    #          took place or will take place after generating reports in Amazon Inspector became
    #          available.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute can_retry
    #   @return [Boolean]
    class UnsupportedFeatureException < Struct.new(
      :message,
      :can_retry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_target_arn
    #   <p>The ARN of the assessment target that you want to update.</p>
    #   @return [String]
    # @!attribute assessment_target_name
    #   <p>The name of the assessment target that you want to update.</p>
    #   @return [String]
    # @!attribute resource_group_arn
    #   <p>The ARN of the resource group that is used to specify the new resource group to
    #            associate with the assessment target.</p>
    #   @return [String]
    class UpdateAssessmentTargetRequest < Struct.new(
      :assessment_target_arn,
      :assessment_target_name,
      :resource_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
