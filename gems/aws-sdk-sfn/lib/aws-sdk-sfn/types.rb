# frozen_string_literal: true

# This is generated code!

module Aws::SFN
  # This module contains the types returned by client operations.
  module Types

    # <p>Activity already exists. <code>EncryptionConfiguration</code> may not be updated.</p>
    # @!attribute message
    #   @return [String]
    class ActivityAlreadyExists < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified activity does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ActivityDoesNotExist < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an activity that failed during an execution.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class ActivityFailedEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of activities has been reached. Existing activities must be deleted
    #       before a new activity can be created.</p>
    # @!attribute message
    #   @return [String]
    class ActivityLimitExceeded < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an activity.</p>
    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the activity.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the activity.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the activity is created.</p>
    #   @return [Time]
    class ActivityListItem < Struct.new(
      :activity_arn,
      :name,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an activity schedule failure that occurred during an
    #       execution.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class ActivityScheduleFailedEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an activity scheduled during an execution.</p>
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the scheduled activity.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The JSON data input to the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute input_details
    #   <p>Contains details about the input for an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    # @!attribute timeout_in_seconds
    #   <p>The maximum allowed duration of the activity task.</p>
    #   @return [Integer]
    # @!attribute heartbeat_in_seconds
    #   <p>The maximum allowed duration between two heartbeats for the activity task.</p>
    #   @return [Integer]
    class ActivityScheduledEventDetails < Struct.new(
      :resource,
      :input,
      :input_details,
      :timeout_in_seconds,
      :heartbeat_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_in_seconds] = nil unless options.key?(:timeout_in_seconds)
        options[:heartbeat_in_seconds] = nil unless options.key?(:heartbeat_in_seconds)
        super
      end
    end

    # <p>Contains details about the start of an activity during an execution.</p>
    # @!attribute worker_name
    #   <p>The name of the worker that the task is assigned to. These names are provided by the
    #         workers when calling <a>GetActivityTask</a>.</p>
    #   @return [String]
    class ActivityStartedEventDetails < Struct.new(
      :worker_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an activity that successfully terminated during an
    #       execution.</p>
    # @!attribute output
    #   <p>The JSON data output by the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    class ActivitySucceededEventDetails < Struct.new(
      :output,
      :output_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an activity timeout that occurred during an execution.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the timeout.</p>
    #   @return [String]
    class ActivityTimedOutEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of workers concurrently polling for activity tasks has been
    #       reached.</p>
    # @!attribute message
    #   @return [String]
    class ActivityWorkerLimitExceeded < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about assigned variables in an execution history event.</p>
    # @!attribute truncated
    #   <p>Indicates whether assigned variables were truncated in the response. Always <code>false</code>
    #       for API calls. In CloudWatch logs, the value will be true if the data is truncated due to size limits.</p>
    #   @return [Boolean]
    class AssignedVariablesDetails < Struct.new(
      :truncated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:truncated] = false unless options.key?(:truncated)
        super
      end
    end

    # <p>An object that describes workflow billing details.</p>
    # @!attribute billed_memory_used_in_mb
    #   <p>Billed memory consumption of your workflow, in MB.</p>
    #   @return [Integer]
    # @!attribute billed_duration_in_milliseconds
    #   <p>Billed duration of your workflow, in milliseconds.</p>
    #   @return [Integer]
    class BillingDetails < Struct.new(
      :billed_memory_used_in_mb,
      :billed_duration_in_milliseconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:billed_memory_used_in_mb] = 0 unless options.key?(:billed_memory_used_in_mb)
        options[:billed_duration_in_milliseconds] = 0 unless options.key?(:billed_duration_in_milliseconds)
        super
      end
    end

    # <p>Provides details about execution input or output.</p>
    # @!attribute included
    #   <p>Indicates whether input or output was included in the response. Always <code>true</code>
    #         for API calls. </p>
    #   @return [Boolean]
    class CloudWatchEventsExecutionDataDetails < Struct.new(
      :included,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:included] = false unless options.key?(:included)
        super
      end
    end

    # <p></p>
    # @!attribute log_group_arn
    #   <p>The ARN of the the CloudWatch log group to which you want your logs emitted to. The ARN
    #         must end with <code>:*</code>
    #            </p>
    #   @return [String]
    class CloudWatchLogsLogGroup < Struct.new(
      :log_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state. This error occurs when there're concurrent requests for <a>DeleteStateMachineVersion</a>, <a>PublishStateMachineVersion</a>, or <a>UpdateStateMachine</a> with the <code>publish</code> parameter set to <code>true</code>.</p>
    #          <p>HTTP Status Code: 409</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the activity to create. This name must be unique for your Amazon Web Services account and region for 90 days. For more information,
    #       see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions">
    #       Limits Related to State Machine Executions</a> in the <i>Step Functions Developer Guide</i>.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags to add to a resource.</p>
    #            <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #         Cost Allocation Tags</a> in the <i>Amazon Web Services Billing and Cost Management User
    #           Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #             Tags</a>.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute encryption_configuration
    #   <p>Settings to configure server-side encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    class CreateActivityInput < Struct.new(
      :name,
      :tags,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the created activity.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the activity is created.</p>
    #   @return [Time]
    class CreateActivityOutput < Struct.new(
      :activity_arn,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A description for the state machine alias.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the state machine alias.</p>
    #            <p>To avoid conflict with version ARNs, don't use an integer in the name of the alias.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>The routing configuration of a state machine alias. The routing configuration shifts
    #         execution traffic between two state machine versions. <code>routingConfiguration</code>
    #         contains an array of <code>RoutingConfig</code> objects that specify up to two state machine
    #         versions. Step Functions then randomly choses which version to run an execution with based
    #         on the weight assigned to each <code>RoutingConfig</code>.</p>
    #   @return [Array<Types::RoutingConfigurationListItem>]
    class CreateStateMachineAliasInput < Struct.new(
      :description,
      :name,
      :routing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the created state machine alias.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the state machine alias was created.</p>
    #   @return [Time]
    class CreateStateMachineAliasOutput < Struct.new(
      :state_machine_alias_arn,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the state machine. </p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use for this state machine.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Determines whether a Standard or Express state machine is created. The default is
    #           <code>STANDARD</code>. You cannot update the <code>type</code> of a state machine once it
    #         has been created.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Defines what execution history events are logged and where they are logged.</p>
    #            <note>
    #               <p>By default, the <code>level</code> is set to <code>OFF</code>. For more information see
    #             <a href="https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html">Log
    #             Levels</a> in the Step Functions User Guide.</p>
    #            </note>
    #   @return [Types::LoggingConfiguration]
    # @!attribute tags
    #   <p>Tags to be added when creating a state machine.</p>
    #            <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #         Cost Allocation Tags</a> in the <i>Amazon Web Services Billing and Cost Management User
    #           Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #             Tags</a>.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute tracing_configuration
    #   <p>Selects whether X-Ray tracing is enabled.</p>
    #   @return [Types::TracingConfiguration]
    # @!attribute publish
    #   <p>Set to <code>true</code> to publish the first version of the state machine during creation. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute version_description
    #   <p>Sets description about the state machine version. You can only set the description if the <code>publish</code> parameter is set to <code>true</code>. Otherwise, if you set <code>versionDescription</code>, but <code>publish</code> to <code>false</code>, this API action throws <code>ValidationException</code>.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Settings to configure server-side encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    class CreateStateMachineInput < Struct.new(
      :name,
      :definition,
      :role_arn,
      :type,
      :logging_configuration,
      :tags,
      :tracing_configuration,
      :publish,
      :version_description,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the created state machine.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the state machine is created.</p>
    #   @return [Time]
    # @!attribute state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the created state machine version. If you do not set the <code>publish</code> parameter to <code>true</code>, this field returns null value.</p>
    #   @return [String]
    class CreateStateMachineOutput < Struct.new(
      :state_machine_arn,
      :creation_date,
      :state_machine_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to delete.</p>
    #   @return [String]
    class DeleteActivityInput < Struct.new(
      :activity_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteActivityOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine alias to delete.</p>
    #   @return [String]
    class DeleteStateMachineAliasInput < Struct.new(
      :state_machine_alias_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStateMachineAliasOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to delete.</p>
    #   @return [String]
    class DeleteStateMachineInput < Struct.new(
      :state_machine_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStateMachineOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine version to delete.</p>
    #   @return [String]
    class DeleteStateMachineVersionInput < Struct.new(
      :state_machine_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStateMachineVersionOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to describe.</p>
    #   @return [String]
    class DescribeActivityInput < Struct.new(
      :activity_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the activity.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the activity.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the activity is created.</p>
    #   @return [Time]
    # @!attribute encryption_configuration
    #   <p>Settings for configured server-side encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    class DescribeActivityOutput < Struct.new(
      :activity_arn,
      :name,
      :creation_date,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to describe.</p>
    #   @return [String]
    # @!attribute included_data
    #   <p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call DescribeStateMachine API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>
    #   @return [String]
    class DescribeExecutionInput < Struct.new(
      :execution_arn,
      :included_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
    #   @return [String]
    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the executed stated machine.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the execution.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the execution.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date the execution is started.</p>
    #   @return [Time]
    # @!attribute stop_date
    #   <p>If the execution ended, the date the execution stopped.</p>
    #   @return [Time]
    # @!attribute input
    #   <p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute input_details
    #   <p>Provides details about execution input or output.</p>
    #   @return [Types::CloudWatchEventsExecutionDataDetails]
    # @!attribute output
    #   <p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #            <note>
    #               <p>This field is set only if the execution succeeds. If the execution fails, this field is
    #           null.</p>
    #            </note>
    #   @return [String]
    # @!attribute output_details
    #   <p>Provides details about execution input or output.</p>
    #   @return [Types::CloudWatchEventsExecutionDataDetails]
    # @!attribute trace_header
    #   <p>The X-Ray trace header that was passed to the execution.</p>
    #            <note>
    #               <p>
    #                   For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a Map Run, which dispatched this execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error string if the state machine execution failed.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The cause string if the state machine execution failed.</p>
    #   @return [String]
    # @!attribute state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine version associated with the execution. The version ARN is a combination of state machine ARN and the version number separated by a colon (:). For example, <code>stateMachineARN:1</code>.</p>
    #            <p>If you start an execution from a <code>StartExecution</code> request without specifying a
    #         state machine version or alias ARN, Step Functions returns a null value.</p>
    #   @return [String]
    # @!attribute state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine alias associated with the execution. The alias ARN is a combination of state machine ARN and the alias name separated by a colon (:). For example, <code>stateMachineARN:PROD</code>.</p>
    #            <p>If you start an execution from a <code>StartExecution</code> request with a
    #         state machine version ARN, this field will be null.</p>
    #   @return [String]
    # @!attribute redrive_count
    #   <p>The number of times you've redriven an execution. If you have not yet redriven an execution, the <code>redriveCount</code> is 0. This count is only updated if you successfully redrive an execution.</p>
    #   @return [Integer]
    # @!attribute redrive_date
    #   <p>The date the execution was last redriven. If you have not yet redriven an execution, the <code>redriveDate</code> is null.</p>
    #            <p>The <code>redriveDate</code> is unavailable if you redrive a Map Run that starts child workflow executions of type <code>EXPRESS</code>.</p>
    #   @return [Time]
    # @!attribute redrive_status
    #   <p>Indicates whether or not an execution can be redriven at a given point in time.</p>
    #            <ul>
    #               <li>
    #                  <p>For executions of type <code>STANDARD</code>, <code>redriveStatus</code> is <code>NOT_REDRIVABLE</code> if calling the <a>RedriveExecution</a> API action would return the <code>ExecutionNotRedrivable</code> error.</p>
    #               </li>
    #               <li>
    #                  <p>For a Distributed Map that includes child workflows of type <code>STANDARD</code>, <code>redriveStatus</code> indicates whether or not the Map Run can redrive child workflow executions.</p>
    #               </li>
    #               <li>
    #                  <p>For a Distributed Map that includes child workflows of type <code>EXPRESS</code>, <code>redriveStatus</code> indicates whether or not the Map Run can redrive child workflow executions.</p>
    #                  <p>You can redrive failed or timed out <code>EXPRESS</code> workflows <i>only if</i> they're a part of a Map Run. When you <a href="https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html">redrive</a> the Map Run, these workflows are restarted using the <a>StartExecution</a> API action.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute redrive_status_reason
    #   <p>When <code>redriveStatus</code> is <code>NOT_REDRIVABLE</code>, <code>redriveStatusReason</code> specifies the reason why an execution cannot be redriven.</p>
    #            <ul>
    #               <li>
    #                  <p>For executions of type <code>STANDARD</code>, or for a Distributed Map that includes child workflows of type <code>STANDARD</code>, <code>redriveStatusReason</code> can include one of the following reasons:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>State machine is in DELETING status</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Execution is RUNNING and cannot be redriven</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Execution is SUCCEEDED and cannot be redriven</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Execution was started before the launch of RedriveExecution</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Execution history event limit exceeded</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Execution has exceeded the max execution time</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Execution redrivable period exceeded</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For a Distributed Map that includes child workflows of type <code>EXPRESS</code>, <code>redriveStatusReason</code> is only returned if the child workflows are not redrivable. This happens when the child workflow executions have completed successfully.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeExecutionOutput < Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :status,
      :start_date,
      :stop_date,
      :input,
      :input_details,
      :output,
      :output_details,
      :trace_header,
      :map_run_arn,
      :error,
      :cause,
      :state_machine_version_arn,
      :state_machine_alias_arn,
      :redrive_count,
      :redrive_date,
      :redrive_status,
      :redrive_status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a Map Run.</p>
    #   @return [String]
    class DescribeMapRunInput < Struct.new(
      :map_run_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a Map Run.</p>
    #   @return [String]
    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the execution in which the Map Run was started.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the Map Run.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date when the Map Run was started.</p>
    #   @return [Time]
    # @!attribute stop_date
    #   <p>The date when the Map Run was stopped.</p>
    #   @return [Time]
    # @!attribute max_concurrency
    #   <p>The maximum number of child workflow executions configured to run in parallel for the Map Run at the same time.</p>
    #   @return [Integer]
    # @!attribute tolerated_failure_percentage
    #   <p>The maximum percentage of failed child workflow executions before the Map Run fails.</p>
    #   @return [Float]
    # @!attribute tolerated_failure_count
    #   <p>The maximum number of failed child workflow executions before the Map Run fails.</p>
    #   @return [Integer]
    # @!attribute item_counts
    #   <p>A JSON object that contains information about the total number of items, and the item count for each processing status, such as <code>pending</code> and <code>failed</code>.</p>
    #   @return [Types::MapRunItemCounts]
    # @!attribute execution_counts
    #   <p>A JSON object that contains information about the total number of child workflow executions for the Map Run, and the count of child workflow executions for each status, such as <code>failed</code> and <code>succeeded</code>.</p>
    #   @return [Types::MapRunExecutionCounts]
    # @!attribute redrive_count
    #   <p>The number of times you've redriven a Map Run. If you have not yet redriven a Map Run, the <code>redriveCount</code> is 0. This count is only updated if you successfully redrive a Map Run.</p>
    #   @return [Integer]
    # @!attribute redrive_date
    #   <p>The date a Map Run was last redriven. If you have not yet redriven a Map Run, the <code>redriveDate</code> is null.</p>
    #   @return [Time]
    class DescribeMapRunOutput < Struct.new(
      :map_run_arn,
      :execution_arn,
      :status,
      :start_date,
      :stop_date,
      :max_concurrency,
      :tolerated_failure_percentage,
      :tolerated_failure_count,
      :item_counts,
      :execution_counts,
      :redrive_count,
      :redrive_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_concurrency] = 0 unless options.key?(:max_concurrency)
        options[:tolerated_failure_percentage] = 0 unless options.key?(:tolerated_failure_percentage)
        options[:tolerated_failure_count] = 0 unless options.key?(:tolerated_failure_count)
        super
      end
    end

    # @!attribute state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine alias.</p>
    #   @return [String]
    class DescribeStateMachineAliasInput < Struct.new(
      :state_machine_alias_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine alias.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the state machine alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>The routing configuration of the alias.</p>
    #   @return [Array<Types::RoutingConfigurationListItem>]
    # @!attribute creation_date
    #   <p>The date the state machine alias was created.</p>
    #   @return [Time]
    # @!attribute update_date
    #   <p>The date the state machine alias was last updated.</p>
    #            <p>For a newly created state machine, this is the same as the creation date.</p>
    #   @return [Time]
    class DescribeStateMachineAliasOutput < Struct.new(
      :state_machine_alias_arn,
      :name,
      :description,
      :routing_configuration,
      :creation_date,
      :update_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution you want state machine information for.</p>
    #   @return [String]
    # @!attribute included_data
    #   <p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call the API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>
    #   @return [String]
    class DescribeStateMachineForExecutionInput < Struct.new(
      :execution_arn,
      :included_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine associated with the execution.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the state machine associated with the execution.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role of the State Machine for the execution. </p>
    #   @return [String]
    # @!attribute update_date
    #   <p>The date and time the state machine associated with an execution was updated. For a newly
    #         created state machine, this is the creation date.</p>
    #   @return [Time]
    # @!attribute logging_configuration
    #   <p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
    #         options.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute tracing_configuration
    #   <p>Selects whether X-Ray tracing is enabled.</p>
    #   @return [Types::TracingConfiguration]
    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) of the Map Run that started the child workflow execution. This field is returned only if the <code>executionArn</code> is a child workflow execution that was started by a Distributed Map state.</p>
    #   @return [String]
    # @!attribute label
    #   <p>A user-defined or an auto-generated string that identifies a <code>Map</code> state. This field is returned only if the <code>executionArn</code> is a child workflow execution that was started by a Distributed Map state.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision identifier for the state machine. The first revision ID when you create the state machine is null.</p>
    #            <p>Use the state machine <code>revisionId</code> parameter to compare the revision of a state machine with the configuration of the state machine used for executions without performing a diff of the properties, such as <code>definition</code> and <code>roleArn</code>.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Settings to configure server-side encryption. </p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute variable_references
    #   <p>A map of <b>state name</b> to a list of variables referenced by that state. States that do not use variable references will not be shown in the response.</p>
    #   @return [Hash<String, Array<String>>]
    class DescribeStateMachineForExecutionOutput < Struct.new(
      :state_machine_arn,
      :name,
      :definition,
      :role_arn,
      :update_date,
      :logging_configuration,
      :tracing_configuration,
      :map_run_arn,
      :label,
      :revision_id,
      :encryption_configuration,
      :variable_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine for which you want the information.</p>
    #            <p>If you specify a state machine version ARN, this API returns details about that version. The version ARN is a combination of state machine ARN and the version number separated by a colon (:). For example, <code>stateMachineARN:1</code>.</p>
    #   @return [String]
    # @!attribute included_data
    #   <p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call the API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>
    #            <note>
    #               <p>
    #               When calling a labelled ARN for an encrypted state machine, the <code>includedData = METADATA_ONLY</code> parameter will not apply because Step Functions needs to decrypt the entire state machine definition to get the Distributed Map state’s definition. In this case, the API caller needs to have <code>kms:Decrypt</code> permission.
    #           </p>
    #            </note>
    #   @return [String]
    class DescribeStateMachineInput < Struct.new(
      :state_machine_arn,
      :included_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
    #            <p>If you specified a state machine version ARN in your request, the API returns the version ARN. The version ARN is a combination of state machine ARN and the version number separated by a colon (:). For example, <code>stateMachineARN:1</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the state machine.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the state machine.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #            <p>If called with <code>includedData = METADATA_ONLY</code>, the returned definition will be <code>{}</code>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used when creating this state machine. (The IAM role
    #         maintains security by granting Step Functions access to Amazon Web Services resources.)</p>
    #   @return [String]
    # @!attribute type
    #   <p>The <code>type</code> of the state machine (<code>STANDARD</code> or
    #         <code>EXPRESS</code>).</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the state machine is created.</p>
    #            <p>For a state machine version, <code>creationDate</code> is the date the version was created.</p>
    #   @return [Time]
    # @!attribute logging_configuration
    #   <p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
    #         options.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute tracing_configuration
    #   <p>Selects whether X-Ray tracing is enabled.</p>
    #   @return [Types::TracingConfiguration]
    # @!attribute label
    #   <p>A user-defined or an auto-generated string that identifies a <code>Map</code> state. This parameter is present only if the <code>stateMachineArn</code> specified in input is a qualified state machine ARN.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision identifier for the state machine.</p>
    #            <p>Use the <code>revisionId</code> parameter to compare between versions of a state machine
    #         configuration used for executions without performing a diff of the properties, such as
    #           <code>definition</code> and <code>roleArn</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the state machine version.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Settings to configure server-side encryption. </p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute variable_references
    #   <p>A map of <b>state name</b> to a list of variables referenced by that state. States that do not use variable references will not be shown in the response.</p>
    #   @return [Hash<String, Array<String>>]
    class DescribeStateMachineOutput < Struct.new(
      :state_machine_arn,
      :name,
      :status,
      :definition,
      :role_arn,
      :type,
      :creation_date,
      :logging_configuration,
      :tracing_configuration,
      :label,
      :revision_id,
      :description,
      :encryption_configuration,
      :variable_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings to configure server-side encryption. </p>
    #          <p>
    #         For additional control over security, you can encrypt your data using a <b>customer-managed key</b> for  Step Functions state machines and activities. You can configure a symmetric KMS key and data key reuse period when creating or updating a <b>State Machine</b>, and when creating an <b>Activity</b>. The execution history and state machine definition will be encrypted with the key applied to the State Machine. Activity inputs will be encrypted with the key applied to the Activity.
    #     </p>
    #          <note>
    #             <p> Step Functions automatically enables encryption at rest using  Amazon Web Services owned keys at no charge. However, KMS charges apply when using a customer managed key. For more information about pricing, see <a href="https://aws.amazon.com/kms/pricing/">Key Management Service pricing</a>.</p>
    #          </note>
    #          <p>For more information on KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/overview.html">What is  Key Management Service?</a>
    #          </p>
    # @!attribute kms_key_id
    #   <p>An alias, alias ARN, key ID, or key ARN of a symmetric encryption KMS key to encrypt data. To specify a KMS key in a different Amazon Web Services  account, you must use the key ARN or alias ARN.</p>
    #   @return [String]
    # @!attribute kms_data_key_reuse_period_seconds
    #   <p>Maximum duration that Step Functions will reuse data keys. When the period expires, Step Functions will call <code>GenerateDataKey</code>. Only applies to customer managed keys.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>Encryption type</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      :kms_key_id,
      :kms_data_key_reuse_period_seconds,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an evaluation failure that occurred while processing a state, for example, when a JSONata expression throws an error. This event will only be present in state machines that have <b> QueryLanguage</b> set to JSONata, or individual states set to JSONata.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the field in the state in which the evaluation error occurred.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The name of the state in which the evaluation error occurred.</p>
    #   @return [String]
    class EvaluationFailedEventDetails < Struct.new(
      :error,
      :cause,
      :location,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an abort of an execution.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class ExecutionAbortedEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The execution has the same <code>name</code> as another execution (but a different
    #         <code>input</code>).</p>
    #          <note>
    #             <p>Executions with the same <code>name</code> and <code>input</code> are considered
    #         idempotent.</p>
    #          </note>
    # @!attribute message
    #   @return [String]
    class ExecutionAlreadyExists < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified execution does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ExecutionDoesNotExist < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an execution failure event.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class ExecutionFailedEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of running executions has been reached. Running executions must end or
    #       be stopped before a new execution can be started.</p>
    # @!attribute message
    #   @return [String]
    class ExecutionLimitExceeded < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an execution.</p>
    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
    #   @return [String]
    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine that ran the execution.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the execution.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the execution.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date the execution started.</p>
    #   @return [Time]
    # @!attribute stop_date
    #   <p>If the execution already ended, the date the execution stopped.</p>
    #   @return [Time]
    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) of a Map Run. This field is returned only if <code>mapRunArn</code> was specified in the <code>ListExecutions</code> API action. If <code>stateMachineArn</code> was specified in <code>ListExecutions</code>, the <code>mapRunArn</code> isn't returned.</p>
    #   @return [String]
    # @!attribute item_count
    #   <p>The total number of items processed in a child workflow execution. This field is returned only if <code>mapRunArn</code> was specified in the <code>ListExecutions</code> API action. If <code>stateMachineArn</code> was specified in <code>ListExecutions</code>, the <code>itemCount</code> field isn't returned.</p>
    #   @return [Integer]
    # @!attribute state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine version associated with the execution.</p>
    #            <p>If the state machine execution was started with an unqualified ARN, it returns null.</p>
    #            <p>If the execution was started using a <code>stateMachineAliasArn</code>, both the <code>stateMachineAliasArn</code> and <code>stateMachineVersionArn</code> parameters contain the respective values.</p>
    #   @return [String]
    # @!attribute state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine alias used to start an execution.</p>
    #            <p>If the state machine execution was started with an unqualified ARN or a version ARN, it returns null.</p>
    #   @return [String]
    # @!attribute redrive_count
    #   <p>The number of times you've redriven an execution. If you have not yet redriven an execution, the <code>redriveCount</code> is 0. This count is only updated when you successfully redrive an execution.</p>
    #   @return [Integer]
    # @!attribute redrive_date
    #   <p>The date the execution was last redriven.</p>
    #   @return [Time]
    class ExecutionListItem < Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :status,
      :start_date,
      :stop_date,
      :map_run_arn,
      :item_count,
      :state_machine_version_arn,
      :state_machine_alias_arn,
      :redrive_count,
      :redrive_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:item_count] = nil unless options.key?(:item_count)
        super
      end
    end

    # <p>The execution Amazon Resource Name (ARN) that you specified for <code>executionArn</code> cannot be redriven.</p>
    # @!attribute message
    #   @return [String]
    class ExecutionNotRedrivable < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a redriven execution.</p>
    # @!attribute redrive_count
    #   <p>The number of times you've redriven an execution. If you have not yet redriven an execution, the <code>redriveCount</code> is 0. This count is not updated for redrives that failed to start or are pending to be redriven.</p>
    #   @return [Integer]
    class ExecutionRedrivenEventDetails < Struct.new(
      :redrive_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the start of the execution.</p>
    # @!attribute input
    #   <p>The JSON data input to the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute input_details
    #   <p>Contains details about the input for an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used for executing Lambda tasks.</p>
    #   @return [String]
    # @!attribute state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a state machine alias used for starting the state machine execution.</p>
    #   @return [String]
    # @!attribute state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a state machine version used for starting the state machine execution.</p>
    #   @return [String]
    class ExecutionStartedEventDetails < Struct.new(
      :input,
      :input_details,
      :role_arn,
      :state_machine_alias_arn,
      :state_machine_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the successful termination of the execution.</p>
    # @!attribute output
    #   <p>The JSON data output by the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    class ExecutionSucceededEventDetails < Struct.new(
      :output,
      :output_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the execution timeout that occurred during the execution.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the timeout.</p>
    #   @return [String]
    class ExecutionTimedOutEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task
    #         using <a>CreateActivity</a>.)</p>
    #   @return [String]
    # @!attribute worker_name
    #   <p>You can provide an arbitrary name in order to identify the worker that the task is
    #         assigned to. This name is used when it is logged in the execution history.</p>
    #   @return [String]
    class GetActivityTaskInput < Struct.new(
      :activity_arn,
      :worker_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_token
    #   <p>A token that identifies the scheduled task. This token must be copied and included in
    #         subsequent calls to <a>SendTaskHeartbeat</a>, <a>SendTaskSuccess</a> or
    #           <a>SendTaskFailure</a> in order to report the progress or completion of the
    #         task.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The string that contains the JSON input data for the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    class GetActivityTaskOutput < Struct.new(
      :task_token,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute reverse_order
    #   <p>Lists events in descending order of their <code>timeStamp</code>.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    # @!attribute include_execution_data
    #   <p>You can select whether execution data (input or output of a history event) is returned.
    #         The default is <code>true</code>.</p>
    #   @return [Boolean]
    class GetExecutionHistoryInput < Struct.new(
      :execution_arn,
      :max_results,
      :reverse_order,
      :next_token,
      :include_execution_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>The list of events that occurred in the execution.</p>
    #   @return [Array<Types::HistoryEvent>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class GetExecutionHistoryOutput < Struct.new(
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the events of an execution.</p>
    # @!attribute timestamp
    #   <p>The date and time the event occurred.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of the event.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The id of the event. Events are numbered sequentially, starting at one.</p>
    #   @return [Integer]
    # @!attribute previous_event_id
    #   <p>The id of the previous event.</p>
    #   @return [Integer]
    # @!attribute activity_failed_event_details
    #   <p>Contains details about an activity that failed during an execution.</p>
    #   @return [Types::ActivityFailedEventDetails]
    # @!attribute activity_schedule_failed_event_details
    #   <p>Contains details about an activity schedule event that failed during an execution.</p>
    #   @return [Types::ActivityScheduleFailedEventDetails]
    # @!attribute activity_scheduled_event_details
    #   <p>Contains details about an activity scheduled during an execution.</p>
    #   @return [Types::ActivityScheduledEventDetails]
    # @!attribute activity_started_event_details
    #   <p>Contains details about the start of an activity during an execution.</p>
    #   @return [Types::ActivityStartedEventDetails]
    # @!attribute activity_succeeded_event_details
    #   <p>Contains details about an activity that successfully terminated during an
    #         execution.</p>
    #   @return [Types::ActivitySucceededEventDetails]
    # @!attribute activity_timed_out_event_details
    #   <p>Contains details about an activity timeout that occurred during an execution.</p>
    #   @return [Types::ActivityTimedOutEventDetails]
    # @!attribute task_failed_event_details
    #   <p>Contains details about the failure of a task.</p>
    #   @return [Types::TaskFailedEventDetails]
    # @!attribute task_scheduled_event_details
    #   <p>Contains details about a task that was scheduled.</p>
    #   @return [Types::TaskScheduledEventDetails]
    # @!attribute task_start_failed_event_details
    #   <p>Contains details about a task that failed to start.</p>
    #   @return [Types::TaskStartFailedEventDetails]
    # @!attribute task_started_event_details
    #   <p>Contains details about a task that was started.</p>
    #   @return [Types::TaskStartedEventDetails]
    # @!attribute task_submit_failed_event_details
    #   <p>Contains details about a task that where the submit failed.</p>
    #   @return [Types::TaskSubmitFailedEventDetails]
    # @!attribute task_submitted_event_details
    #   <p>Contains details about a submitted task.</p>
    #   @return [Types::TaskSubmittedEventDetails]
    # @!attribute task_succeeded_event_details
    #   <p>Contains details about a task that succeeded.</p>
    #   @return [Types::TaskSucceededEventDetails]
    # @!attribute task_timed_out_event_details
    #   <p>Contains details about a task that timed out.</p>
    #   @return [Types::TaskTimedOutEventDetails]
    # @!attribute execution_failed_event_details
    #   <p>Contains details about an execution failure event.</p>
    #   @return [Types::ExecutionFailedEventDetails]
    # @!attribute execution_started_event_details
    #   <p>Contains details about the start of the execution.</p>
    #   @return [Types::ExecutionStartedEventDetails]
    # @!attribute execution_succeeded_event_details
    #   <p>Contains details about the successful termination of the execution.</p>
    #   @return [Types::ExecutionSucceededEventDetails]
    # @!attribute execution_aborted_event_details
    #   <p>Contains details about an abort of an execution.</p>
    #   @return [Types::ExecutionAbortedEventDetails]
    # @!attribute execution_timed_out_event_details
    #   <p>Contains details about the execution timeout that occurred during the execution.</p>
    #   @return [Types::ExecutionTimedOutEventDetails]
    # @!attribute execution_redriven_event_details
    #   <p>Contains details about the redrive attempt of an execution.</p>
    #   @return [Types::ExecutionRedrivenEventDetails]
    # @!attribute map_state_started_event_details
    #   <p>Contains details about Map state that was started.</p>
    #   @return [Types::MapStateStartedEventDetails]
    # @!attribute map_iteration_started_event_details
    #   <p>Contains details about an iteration of a Map state that was started.</p>
    #   @return [Types::MapIterationEventDetails]
    # @!attribute map_iteration_succeeded_event_details
    #   <p>Contains details about an iteration of a Map state that succeeded.</p>
    #   @return [Types::MapIterationEventDetails]
    # @!attribute map_iteration_failed_event_details
    #   <p>Contains details about an iteration of a Map state that failed.</p>
    #   @return [Types::MapIterationEventDetails]
    # @!attribute map_iteration_aborted_event_details
    #   <p>Contains details about an iteration of a Map state that was aborted.</p>
    #   @return [Types::MapIterationEventDetails]
    # @!attribute lambda_function_failed_event_details
    #   <p>Contains details about a Lambda function that failed during an execution.</p>
    #   @return [Types::LambdaFunctionFailedEventDetails]
    # @!attribute lambda_function_schedule_failed_event_details
    #   <p>Contains details about a failed Lambda function schedule event that occurred during an
    #         execution.</p>
    #   @return [Types::LambdaFunctionScheduleFailedEventDetails]
    # @!attribute lambda_function_scheduled_event_details
    #   <p>Contains details about a Lambda function scheduled during an execution.</p>
    #   @return [Types::LambdaFunctionScheduledEventDetails]
    # @!attribute lambda_function_start_failed_event_details
    #   <p>Contains details about a lambda function that failed to start during an execution.</p>
    #   @return [Types::LambdaFunctionStartFailedEventDetails]
    # @!attribute lambda_function_succeeded_event_details
    #   <p>Contains details about a Lambda function that terminated successfully during an
    #         execution.</p>
    #   @return [Types::LambdaFunctionSucceededEventDetails]
    # @!attribute lambda_function_timed_out_event_details
    #   <p>Contains details about a Lambda function timeout that occurred during an execution.</p>
    #   @return [Types::LambdaFunctionTimedOutEventDetails]
    # @!attribute state_entered_event_details
    #   <p>Contains details about a state entered during an execution.</p>
    #   @return [Types::StateEnteredEventDetails]
    # @!attribute state_exited_event_details
    #   <p>Contains details about an exit from a state during an execution.</p>
    #   @return [Types::StateExitedEventDetails]
    # @!attribute map_run_started_event_details
    #   <p>Contains details, such as <code>mapRunArn</code>, and the start date and time of a Map Run. <code>mapRunArn</code> is the Amazon Resource Name (ARN) of the Map Run that was started.</p>
    #   @return [Types::MapRunStartedEventDetails]
    # @!attribute map_run_failed_event_details
    #   <p>Contains error and cause details about a Map Run that failed.</p>
    #   @return [Types::MapRunFailedEventDetails]
    # @!attribute map_run_redriven_event_details
    #   <p>Contains details about the redrive attempt of a Map Run.</p>
    #   @return [Types::MapRunRedrivenEventDetails]
    # @!attribute evaluation_failed_event_details
    #   <p>Contains details about an evaluation failure that occurred while processing a state.</p>
    #   @return [Types::EvaluationFailedEventDetails]
    class HistoryEvent < Struct.new(
      :timestamp,
      :type,
      :id,
      :previous_event_id,
      :activity_failed_event_details,
      :activity_schedule_failed_event_details,
      :activity_scheduled_event_details,
      :activity_started_event_details,
      :activity_succeeded_event_details,
      :activity_timed_out_event_details,
      :task_failed_event_details,
      :task_scheduled_event_details,
      :task_start_failed_event_details,
      :task_started_event_details,
      :task_submit_failed_event_details,
      :task_submitted_event_details,
      :task_succeeded_event_details,
      :task_timed_out_event_details,
      :execution_failed_event_details,
      :execution_started_event_details,
      :execution_succeeded_event_details,
      :execution_aborted_event_details,
      :execution_timed_out_event_details,
      :execution_redriven_event_details,
      :map_state_started_event_details,
      :map_iteration_started_event_details,
      :map_iteration_succeeded_event_details,
      :map_iteration_failed_event_details,
      :map_iteration_aborted_event_details,
      :lambda_function_failed_event_details,
      :lambda_function_schedule_failed_event_details,
      :lambda_function_scheduled_event_details,
      :lambda_function_start_failed_event_details,
      :lambda_function_succeeded_event_details,
      :lambda_function_timed_out_event_details,
      :state_entered_event_details,
      :state_exited_event_details,
      :map_run_started_event_details,
      :map_run_failed_event_details,
      :map_run_redriven_event_details,
      :evaluation_failed_event_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:id] = 0 unless options.key?(:id)
        options[:previous_event_id] = 0 unless options.key?(:previous_event_id)
        super
      end
    end

    # <p>Provides details about input or output in an execution history event.</p>
    # @!attribute truncated
    #   <p>Indicates whether input or output was truncated in the response. Always <code>false</code>
    #         for API calls. In CloudWatch logs, the value will be true if the data is truncated due to size limits.</p>
    #   @return [Boolean]
    class HistoryEventExecutionDataDetails < Struct.new(
      :truncated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:truncated] = false unless options.key?(:truncated)
        super
      end
    end

    # <p>Contains additional details about the state's execution, including its input and output data processing flow, and HTTP request and response information.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute input
    #   <p>The raw state input.</p>
    #   @return [String]
    # @!attribute after_arguments
    #   <p>The input after Step Functions applies an Arguments filter. This event will only be present when QueryLanguage for the state machine or individual states is set to JSONata. For more info, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/data-transform.html">Transforming data with Step Functions</a>.</p>
    #   @return [String]
    # @!attribute after_input_path
    #   <p>The input after Step Functions applies the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-inputpath-params.html#input-output-inputpath">InputPath</a> filter. Not populated when QueryLanguage is JSONata.</p>
    #   @return [String]
    # @!attribute after_parameters
    #   <p>The effective input after Step Functions applies the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-inputpath-params.html#input-output-parameters">Parameters</a> filter. Not populated when QueryLanguage is JSONata.</p>
    #   @return [String]
    # @!attribute result
    #   <p>The state's raw result.</p>
    #   @return [String]
    # @!attribute after_result_selector
    #   <p>The effective result after Step Functions applies the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-inputpath-params.html#input-output-resultselector">ResultSelector</a> filter. Not populated when QueryLanguage is JSONata.</p>
    #   @return [String]
    # @!attribute after_result_path
    #   <p>The effective result combined with the raw state input after Step Functions applies the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-resultpath.html">ResultPath</a> filter. Not populated when QueryLanguage is JSONata.</p>
    #   @return [String]
    # @!attribute request
    #   <p>The raw HTTP request that is sent when you test an HTTP Task.</p>
    #   @return [Types::InspectionDataRequest]
    # @!attribute response
    #   <p>The raw HTTP response that is returned when you test an HTTP Task.</p>
    #   @return [Types::InspectionDataResponse]
    # @!attribute variables
    #   <p>JSON string that contains the set of workflow variables after execution of the state. The set will include variables assigned in the state and variables set up as test state input.</p>
    #   @return [String]
    class InspectionData < Struct.new(
      :input,
      :after_arguments,
      :after_input_path,
      :after_parameters,
      :result,
      :after_result_selector,
      :after_result_path,
      :request,
      :response,
      :variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains additional details about the state's execution, including its input and output data processing flow, and HTTP request information.</p>
    # @!attribute protocol
    #   <p>The protocol used to make the HTTP request.</p>
    #   @return [String]
    # @!attribute method
    #   <p>The HTTP method used for the HTTP request.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The API endpoint used for the HTTP request.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>The request headers associated with the HTTP request.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The request body for the HTTP request.</p>
    #   @return [String]
    class InspectionDataRequest < Struct.new(
      :protocol,
      :method,
      :url,
      :headers,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains additional details about the state's execution, including its input and output data processing flow, and HTTP response information. The <code>inspectionLevel</code> request parameter specifies which details are returned.</p>
    # @!attribute protocol
    #   <p>The protocol used to return the HTTP response.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP response status code for the HTTP response.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The message associated with the HTTP status code.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>The response headers associated with the HTTP response.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The HTTP response returned.</p>
    #   @return [String]
    class InspectionDataResponse < Struct.new(
      :protocol,
      :status_code,
      :status_message,
      :headers,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided Amazon Resource Name (ARN) is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArn < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided Amazon States Language definition is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDefinition < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Received when <code>encryptionConfiguration</code> is specified but various conditions exist which make the configuration invalid. For example, if <code>type</code> is set to <code>CUSTOMER_MANAGED_KMS_KEY</code>, but <code>kmsKeyId</code> is null, or <code>kmsDataKeyReusePeriodSeconds</code> is not between 60 and 900, or the KMS key is not symmetric or inactive.</p>
    # @!attribute message
    #   @return [String]
    class InvalidEncryptionConfiguration < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided JSON input data is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidExecutionInput < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidLoggingConfiguration < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided name is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidName < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided JSON output data is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOutput < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided token is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidToken < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your <code>tracingConfiguration</code> key does not match, or <code>enabled</code> has not
    #       been set to <code>true</code> or <code>false</code>.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTracingConfiguration < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Either your KMS key policy or API caller does not have the required permissions.</p>
    # @!attribute message
    #   @return [String]
    class KmsAccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The KMS key is not in valid state, for example: Disabled or Deleted.</p>
    # @!attribute kms_key_state
    #   <p>Current status of the KMS; key. For example: <code>DISABLED</code>, <code>PENDING_DELETION</code>, <code>PENDING_IMPORT</code>, <code>UNAVAILABLE</code>, <code>CREATING</code>.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class KmsInvalidStateException < Struct.new(
      :kms_key_state,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Received when KMS returns <code>ThrottlingException</code> for a KMS call that Step Functions makes on behalf of the caller.</p>
    # @!attribute message
    #   @return [String]
    class KmsThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a Lambda function that failed during an execution.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class LambdaFunctionFailedEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a failed Lambda function schedule event that occurred during an
    #       execution.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class LambdaFunctionScheduleFailedEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a Lambda function scheduled during an execution.</p>
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the scheduled Lambda function.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The JSON data input to the Lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute input_details
    #   <p>Contains details about input for an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    # @!attribute timeout_in_seconds
    #   <p>The maximum allowed duration of the Lambda function.</p>
    #   @return [Integer]
    # @!attribute task_credentials
    #   <p>The credentials that Step Functions uses for the task.</p>
    #   @return [Types::TaskCredentials]
    class LambdaFunctionScheduledEventDetails < Struct.new(
      :resource,
      :input,
      :input_details,
      :timeout_in_seconds,
      :task_credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_in_seconds] = nil unless options.key?(:timeout_in_seconds)
        super
      end
    end

    # <p>Contains details about a lambda function that failed to start during an execution.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class LambdaFunctionStartFailedEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a Lambda function that successfully terminated during an
    #       execution.</p>
    # @!attribute output
    #   <p>The JSON data output by the Lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    class LambdaFunctionSucceededEventDetails < Struct.new(
      :output,
      :output_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a Lambda function timeout that occurred during an execution.</p>
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the timeout.</p>
    #   @return [String]
    class LambdaFunctionTimedOutEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class ListActivitiesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activities
    #   <p>The list of activities.</p>
    #   @return [Array<Types::ActivityListItem>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class ListActivitiesOutput < Struct.new(
      :activities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine whose executions is listed.</p>
    #            <p>You can specify either a <code>mapRunArn</code> or a <code>stateMachineArn</code>, but not both.</p>
    #            <p>You can also return a list of executions associated with a specific <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">alias</a> or <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">version</a>, by specifying an alias ARN or a version ARN in the <code>stateMachineArn</code> parameter.</p>
    #   @return [String]
    # @!attribute status_filter
    #   <p>If specified, only list the executions whose current execution status matches the given
    #         filter.</p>
    #            <p>If you provide a <code>PENDING_REDRIVE</code> statusFilter, you must specify <code>mapRunArn</code>. 
    #         For more information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html#redrive-child-workflow-behavior">Child workflow execution redrive behaviour</a>
    #         in the <i>Step Functions Developer Guide</i>.
    #       </p>
    #            <p>If you provide a stateMachineArn and a <code>PENDING_REDRIVE</code> statusFilter, the API returns a validation exception.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) of the Map Run that started the child workflow executions. If the <code>mapRunArn</code> field is specified, a list of all of the child workflow executions started by a Map Run is returned. For more information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html">Examining Map Run</a> in the <i>Step Functions Developer Guide</i>.</p>
    #            <p>You can specify either a <code>mapRunArn</code> or a <code>stateMachineArn</code>, but not both.</p>
    #   @return [String]
    # @!attribute redrive_filter
    #   <p>Sets a filter to list executions based on whether or not they have been redriven.</p>
    #            <p>For a Distributed Map, <code>redriveFilter</code> sets a filter to list child workflow executions based on whether or not they have been redriven.</p>
    #            <p>If you do not provide a <code>redriveFilter</code>, Step Functions returns a list of both redriven and non-redriven executions.</p>
    #            <p>If you provide a state machine ARN in <code>redriveFilter</code>, the API returns a validation exception.</p>
    #   @return [String]
    class ListExecutionsInput < Struct.new(
      :state_machine_arn,
      :status_filter,
      :max_results,
      :next_token,
      :map_run_arn,
      :redrive_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute executions
    #   <p>The list of matching executions.</p>
    #   @return [Array<Types::ExecutionListItem>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class ListExecutionsOutput < Struct.new(
      :executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution for which the Map Runs must be listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class ListMapRunsInput < Struct.new(
      :execution_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_runs
    #   <p>An array that lists information related to a Map Run, such as the Amazon Resource Name (ARN) of the Map Run and the ARN of the state machine that started the Map Run.</p>
    #   @return [Array<Types::MapRunListItem>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class ListMapRunsOutput < Struct.new(
      :map_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine for which you want to list aliases.</p>
    #            <p>If you specify a state machine version ARN, this API returns a list of aliases for that version.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    class ListStateMachineAliasesInput < Struct.new(
      :state_machine_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_aliases
    #   <p>Aliases for the state machine.</p>
    #   @return [Array<Types::StateMachineAliasListItem>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class ListStateMachineAliasesOutput < Struct.new(
      :state_machine_aliases,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    class ListStateMachineVersionsInput < Struct.new(
      :state_machine_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_versions
    #   <p>Versions for the state machine.</p>
    #   @return [Array<Types::StateMachineVersionListItem>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class ListStateMachineVersionsOutput < Struct.new(
      :state_machine_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class ListStateMachinesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machines
    #   @return [Array<Types::StateMachineListItem>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    class ListStateMachinesOutput < Struct.new(
      :state_machines,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute cloud_watch_logs_log_group
    #   <p>An object describing a CloudWatch log group. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html">AWS::Logs::LogGroup</a> in the CloudFormation User Guide.</p>
    #   @return [Types::CloudWatchLogsLogGroup]
    class LogDestination < Struct.new(
      :cloud_watch_logs_log_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
    #       options.</p>
    # @!attribute level
    #   <p>Defines which category of execution history events are logged.</p>
    #   @return [String]
    # @!attribute include_execution_data
    #   <p>Determines whether execution data is included in your log. When set to <code>false</code>,
    #         data is excluded.</p>
    #   @return [Boolean]
    # @!attribute destinations
    #   <p>An array of objects that describes where your execution history events will be logged.
    #         Limited to size 1. Required, if your log level is not set to <code>OFF</code>.</p>
    #   @return [Array<Types::LogDestination>]
    class LoggingConfiguration < Struct.new(
      :level,
      :include_execution_data,
      :destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_execution_data] = false unless options.key?(:include_execution_data)
        super
      end
    end

    # <p>Contains details about an iteration of a Map state.</p>
    # @!attribute name
    #   <p>The name of the iteration’s parent Map state.</p>
    #   @return [String]
    # @!attribute index
    #   <p>The index of the array belonging to the Map state iteration.</p>
    #   @return [Integer]
    class MapIterationEventDetails < Struct.new(
      :name,
      :index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:index] = 0 unless options.key?(:index)
        super
      end
    end

    # <p>Contains details about all of the child workflow executions started by a Map Run.</p>
    # @!attribute pending
    #   <p>The total number of child workflow executions that were started by a Map Run, but haven't started executing yet. </p>
    #   @return [Integer]
    # @!attribute running
    #   <p>The total number of child workflow executions that were started by a Map Run and are currently in-progress.</p>
    #   @return [Integer]
    # @!attribute succeeded
    #   <p>The total number of child workflow executions that were started by a Map Run and have completed successfully.</p>
    #   @return [Integer]
    # @!attribute failed
    #   <p>The total number of child workflow executions that were started by a Map Run, but have failed.</p>
    #   @return [Integer]
    # @!attribute timed_out
    #   <p>The total number of child workflow executions that were started by a Map Run and have timed out.</p>
    #   @return [Integer]
    # @!attribute aborted
    #   <p>The total number of child workflow executions that were started by a Map Run and were running, but were either stopped by the user or by Step Functions because the Map Run failed. </p>
    #   @return [Integer]
    # @!attribute total
    #   <p>The total number of child workflow executions that were started by a Map Run.</p>
    #   @return [Integer]
    # @!attribute results_written
    #   <p>Returns the count of child workflow executions whose results were written by <code>ResultWriter</code>. For more information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-resultwriter.html">ResultWriter</a> in the <i>Step Functions Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute failures_not_redrivable
    #   <p>The number of <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> child workflow executions that cannot be redriven because their execution status is terminal. For example, child workflows with an execution status of <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> and a <code>redriveStatus</code> of <code>NOT_REDRIVABLE</code>.</p>
    #   @return [Integer]
    # @!attribute pending_redrive
    #   <p>The number of unsuccessful child workflow executions currently waiting to be redriven. The status of these child workflow executions could be <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> in the original execution attempt or a previous redrive attempt.</p>
    #   @return [Integer]
    class MapRunExecutionCounts < Struct.new(
      :pending,
      :running,
      :succeeded,
      :failed,
      :timed_out,
      :aborted,
      :total,
      :results_written,
      :failures_not_redrivable,
      :pending_redrive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:pending] = 0 unless options.key?(:pending)
        options[:running] = 0 unless options.key?(:running)
        options[:succeeded] = 0 unless options.key?(:succeeded)
        options[:failed] = 0 unless options.key?(:failed)
        options[:timed_out] = 0 unless options.key?(:timed_out)
        options[:aborted] = 0 unless options.key?(:aborted)
        options[:total] = 0 unless options.key?(:total)
        options[:results_written] = 0 unless options.key?(:results_written)
        super
      end
    end

    # <p>Contains details about a Map Run failure event that occurred during a state machine execution.</p>
    # @!attribute error
    #   <p>The error code of the Map Run failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class MapRunFailedEventDetails < Struct.new(
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about items that were processed in all of the child workflow executions that were started by a Map Run.</p>
    # @!attribute pending
    #   <p>The total number of items to process in child workflow executions that haven't started running yet.</p>
    #   @return [Integer]
    # @!attribute running
    #   <p>The total number of items being processed in child workflow executions that are currently in-progress.</p>
    #   @return [Integer]
    # @!attribute succeeded
    #   <p>The total number of items processed in child workflow executions that have completed successfully.</p>
    #   @return [Integer]
    # @!attribute failed
    #   <p>The total number of items processed in child workflow executions that have failed.</p>
    #   @return [Integer]
    # @!attribute timed_out
    #   <p>The total number of items processed in child workflow executions that have timed out.</p>
    #   @return [Integer]
    # @!attribute aborted
    #   <p>The total number of items processed in child workflow executions that were either stopped by the user or by Step Functions, because the Map Run failed.</p>
    #   @return [Integer]
    # @!attribute total
    #   <p>The total number of items processed in all the child workflow executions started by a Map Run.</p>
    #   @return [Integer]
    # @!attribute results_written
    #   <p>Returns the count of items whose results were written by <code>ResultWriter</code>. For more information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-resultwriter.html">ResultWriter</a> in the <i>Step Functions Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute failures_not_redrivable
    #   <p>The number of <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> items in child workflow executions that cannot be redriven because the execution status of those child workflows is terminal. For example, child workflows with an execution status of <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> and a <code>redriveStatus</code> of <code>NOT_REDRIVABLE</code>.</p>
    #   @return [Integer]
    # @!attribute pending_redrive
    #   <p>The number of unsuccessful items in child workflow executions currently waiting to be redriven.</p>
    #   @return [Integer]
    class MapRunItemCounts < Struct.new(
      :pending,
      :running,
      :succeeded,
      :failed,
      :timed_out,
      :aborted,
      :total,
      :results_written,
      :failures_not_redrivable,
      :pending_redrive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:pending] = 0 unless options.key?(:pending)
        options[:running] = 0 unless options.key?(:running)
        options[:succeeded] = 0 unless options.key?(:succeeded)
        options[:failed] = 0 unless options.key?(:failed)
        options[:timed_out] = 0 unless options.key?(:timed_out)
        options[:aborted] = 0 unless options.key?(:aborted)
        options[:total] = 0 unless options.key?(:total)
        options[:results_written] = 0 unless options.key?(:results_written)
        super
      end
    end

    # <p>Contains details about a specific Map Run.</p>
    # @!attribute execution_arn
    #   <p>The <code>executionArn</code> of the execution from which the Map Run was started.</p>
    #   @return [String]
    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) of the Map Run.</p>
    #   @return [String]
    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the executed state machine.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date on which the Map Run started.</p>
    #   @return [Time]
    # @!attribute stop_date
    #   <p>The date on which the Map Run stopped.</p>
    #   @return [Time]
    class MapRunListItem < Struct.new(
      :execution_arn,
      :map_run_arn,
      :state_machine_arn,
      :start_date,
      :stop_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a Map Run that was redriven.</p>
    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) of a Map Run that was redriven.</p>
    #   @return [String]
    # @!attribute redrive_count
    #   <p>The number of times the Map Run has been redriven at this point in the execution's history including this event. The redrive count for a redriven Map Run is always greater than 0.</p>
    #   @return [Integer]
    class MapRunRedrivenEventDetails < Struct.new(
      :map_run_arn,
      :redrive_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a Map Run that was started during a state machine execution.</p>
    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) of a Map Run that was started.</p>
    #   @return [String]
    class MapRunStartedEventDetails < Struct.new(
      :map_run_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a Map state that was started.</p>
    # @!attribute length
    #   <p>The size of the array for Map state iterations.</p>
    #   @return [Integer]
    class MapStateStartedEventDetails < Struct.new(
      :length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:length] = 0 unless options.key?(:length)
        super
      end
    end

    # <p>Request is missing a required parameter. This error occurs if both <code>definition</code>
    #       and <code>roleArn</code> are not specified.</p>
    # @!attribute message
    #   @return [String]
    class MissingRequiredParameter < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>Only publish the state machine version if the current state machine's revision ID matches the specified ID.</p>
    #            <p>Use this option to avoid publishing a version if the state machine changed since you last
    #         updated it. If the specified revision ID doesn't match the state machine's current revision
    #         ID, the API returns <code>ConflictException</code>.</p>
    #            <note>
    #               <p>To specify an initial revision ID for a state machine with no revision ID assigned,
    #           specify the string <code>INITIAL</code> for the <code>revisionId</code> parameter. For
    #           example, you can specify a <code>revisionID</code> of <code>INITIAL</code> when you create a
    #           state machine using the <a>CreateStateMachine</a> API action.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the state machine version.</p>
    #   @return [String]
    class PublishStateMachineVersionInput < Struct.new(
      :state_machine_arn,
      :revision_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_date
    #   <p>The date the version was created.</p>
    #   @return [Time]
    # @!attribute state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) (ARN) that identifies the state machine version.</p>
    #   @return [String]
    class PublishStateMachineVersionOutput < Struct.new(
      :creation_date,
      :state_machine_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to be redriven.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency. The API will return idempotent responses for the last 10 client tokens used to successfully redrive the execution. These client tokens are valid for up to 15 minutes after they are first used.</p>
    #   @return [String]
    class RedriveExecutionInput < Struct.new(
      :execution_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute redrive_date
    #   <p>The date the execution was last redriven.</p>
    #   @return [Time]
    class RedriveExecutionOutput < Struct.new(
      :redrive_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Could not find the referenced resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   @return [String]
    class ResourceNotFound < Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the routing configuration of a state machine alias. In a routing
    #       configuration, you define an array of objects that specify up to two state machine versions.
    #       You also specify the percentage of traffic to be routed to each version.</p>
    # @!attribute state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) that identifies one or two state machine versions defined in the routing configuration.</p>
    #            <p>If you specify the ARN of a second version, it must belong to the same state machine as the first version.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The percentage of traffic you want to route to a state machine version. The sum of the
    #         weights in the routing configuration must be equal to 100.</p>
    #   @return [Integer]
    class RoutingConfigurationListItem < Struct.new(
      :state_machine_version_arn,
      :weight,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:weight] = 0 unless options.key?(:weight)
        super
      end
    end

    # @!attribute task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class SendTaskFailureInput < Struct.new(
      :task_token,
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SendTaskFailureOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    #   @return [String]
    class SendTaskHeartbeatInput < Struct.new(
      :task_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SendTaskHeartbeatOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    class SendTaskSuccessInput < Struct.new(
      :task_token,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SendTaskSuccessOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    #          <p>HTTP Status Code: 402</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
    #            <p>The <code>stateMachineArn</code> parameter accepts one of the following inputs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>An unqualified state machine ARN</b> – Refers to a state machine ARN that isn't qualified with a version or alias ARN. The following is an example of an unqualified state machine ARN.</p>
    #                  <p>
    #                     <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine></code>
    #                  </p>
    #                  <p>Step Functions doesn't associate state machine executions that you start with an unqualified ARN with a version. This is true even if that version uses the same revision that the execution used.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A state machine version ARN</b> – Refers to a version ARN, which is a combination of state machine ARN and the version number separated by a colon (:). The following is an example of the ARN for version 10. </p>
    #                  <p>
    #                     <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>:10</code>
    #                  </p>
    #                  <p>Step Functions doesn't associate executions that you start with a version ARN with any aliases that point to that version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A state machine alias ARN</b> – Refers to an alias ARN, which is a combination of state machine ARN and the alias name separated by a colon (:). The following is an example of the ARN for an alias named <code>PROD</code>.</p>
    #                  <p>
    #                     <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD></code>
    #                  </p>
    #                  <p>Step Functions associates executions
    #             that you start with an alias ARN with that alias and the state machine version used for
    #             that execution.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>Optional name of the execution. This name must be unique for your Amazon Web Services account, Region, and state machine for 90 days. For more information,
    #       see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions">
    #       Limits Related to State Machine Executions</a> in the <i>Step Functions Developer Guide</i>.</p>
    #            <p>If you don't provide a name for the execution, Step Functions automatically generates a universally unique identifier (UUID) as the execution name.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The string that contains the JSON input data for the execution, for example:</p>
    #            <p>
    #               <code>"{\"first_name\" : \"Alejandro\"}"</code>
    #            </p>
    #            <note>
    #               <p>If you don't include any JSON input data, you still must include the two braces, for
    #           example: <code>"{}"</code>
    #               </p>
    #            </note>
    #            <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute trace_header
    #   <p>Passes the X-Ray trace header. The trace header can also be passed in the request
    #         payload.</p>
    #            <note>
    #               <p>
    #                   For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.
    #               </p>
    #            </note>
    #   @return [String]
    class StartExecutionInput < Struct.new(
      :state_machine_arn,
      :name,
      :input,
      :trace_header,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date the execution is started.</p>
    #   @return [Time]
    class StartExecutionOutput < Struct.new(
      :execution_arn,
      :start_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the execution.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The string that contains the JSON input data for the execution, for example:</p>
    #            <p>
    #               <code>"{\"first_name\" : \"Alejandro\"}"</code>
    #            </p>
    #            <note>
    #               <p>If you don't include any JSON input data, you still must include the two braces, for
    #           example: <code>"{}"</code>
    #               </p>
    #            </note>
    #            <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute trace_header
    #   <p>Passes the X-Ray trace header. The trace header can also be passed in the request
    #         payload.</p>
    #            <note>
    #               <p>
    #                   For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute included_data
    #   <p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call the API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>
    #   @return [String]
    class StartSyncExecutionInput < Struct.new(
      :state_machine_arn,
      :name,
      :input,
      :trace_header,
      :included_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
    #   @return [String]
    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the execution.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date the execution is started.</p>
    #   @return [Time]
    # @!attribute stop_date
    #   <p>If the execution has already ended, the date the execution stopped.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute input_details
    #   <p>Provides details about execution input or output.</p>
    #   @return [Types::CloudWatchEventsExecutionDataDetails]
    # @!attribute output
    #   <p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #            <note>
    #               <p>This field is set only if the execution succeeds. If the execution fails, this field is
    #           null.</p>
    #            </note>
    #   @return [String]
    # @!attribute output_details
    #   <p>Provides details about execution input or output.</p>
    #   @return [Types::CloudWatchEventsExecutionDataDetails]
    # @!attribute trace_header
    #   <p>The X-Ray trace header that was passed to the execution.</p>
    #            <note>
    #               <p>
    #                   For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute billing_details
    #   <p>An object that describes workflow billing details, including billed duration and memory
    #         use.</p>
    #   @return [Types::BillingDetails]
    class StartSyncExecutionOutput < Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :start_date,
      :stop_date,
      :status,
      :error,
      :cause,
      :input,
      :input_details,
      :output,
      :output_details,
      :trace_header,
      :billing_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a state entered during an execution.</p>
    # @!attribute name
    #   <p>The name of the state.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The string that contains the JSON input data for the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute input_details
    #   <p>Contains details about the input for an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    class StateEnteredEventDetails < Struct.new(
      :name,
      :input,
      :input_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an exit from a state during an execution.</p>
    # @!attribute name
    #   <p>The name of the state.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The JSON output data of the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    # @!attribute assigned_variables
    #   <p>Map of variable name and value as a serialized JSON representation.</p>
    #   @return [Hash<String, String>]
    # @!attribute assigned_variables_details
    #   <p>Provides details about input or output in an execution history event.</p>
    #   @return [Types::AssignedVariablesDetails]
    class StateExitedEventDetails < Struct.new(
      :name,
      :output,
      :output_details,
      :assigned_variables,
      :assigned_variables_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a specific state machine alias.</p>
    # @!attribute state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a state machine alias. The alias ARN is a combination of state machine ARN and the alias name separated by a colon (:). For example, <code>stateMachineARN:PROD</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date of a state machine alias.</p>
    #   @return [Time]
    class StateMachineAliasListItem < Struct.new(
      :state_machine_alias_arn,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A state machine with the same name but a different definition or role ARN already
    #       exists.</p>
    # @!attribute message
    #   @return [String]
    class StateMachineAlreadyExists < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified state machine is being deleted.</p>
    # @!attribute message
    #   @return [String]
    class StateMachineDeleting < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified state machine does not exist.</p>
    # @!attribute message
    #   @return [String]
    class StateMachineDoesNotExist < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of state machines has been reached. Existing state machines must be
    #       deleted before a new state machine can be created.</p>
    # @!attribute message
    #   @return [String]
    class StateMachineLimitExceeded < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the state machine.</p>
    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the state machine.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the state machine is created.</p>
    #   @return [Time]
    class StateMachineListItem < Struct.new(
      :state_machine_arn,
      :name,
      :type,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>State machine type is not supported.</p>
    # @!attribute message
    #   @return [String]
    class StateMachineTypeNotSupported < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a specific state machine version.</p>
    # @!attribute state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a state machine version. The version ARN is a combination of state machine ARN and the version number separated by a colon (:). For example, <code>stateMachineARN:1</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date of a state machine version.</p>
    #   @return [Time]
    class StateMachineVersionListItem < Struct.new(
      :state_machine_version_arn,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to stop.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class StopExecutionInput < Struct.new(
      :execution_arn,
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stop_date
    #   <p>The date the execution is stopped.</p>
    #   @return [Time]
    class StopExecutionOutput < Struct.new(
      :stop_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Tags are key-value pairs that can be associated with Step Functions state machines and
    #       activities.</p>
    #          <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #       Cost Allocation Tags</a> in the <i>Amazon Web Services Billing and Cost Management User
    #         Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #           Tags</a>.</p>
    #          <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    # @!attribute key
    #   <p>The key of a tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags to add to a resource.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the credentials that Step Functions uses for a task.</p>
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that Step Functions assumes for the task. The role can allow cross-account access to resources.</p>
    #   @return [String]
    class TaskCredentials < Struct.new(
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The activity does not exist.</p>
    # @!attribute message
    #   @return [String]
    class TaskDoesNotExist < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a task failure event.</p>
    # @!attribute resource_type
    #   <p>The service name of the resource in a task state.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The action of the resource called by a task state.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class TaskFailedEventDetails < Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a task scheduled during an execution.</p>
    # @!attribute resource_type
    #   <p>The service name of the resource in a task state.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The action of the resource called by a task state.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The region of the scheduled task</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The JSON data passed to the resource referenced in a task state.
    #         Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute timeout_in_seconds
    #   <p>The maximum allowed duration of the task.</p>
    #   @return [Integer]
    # @!attribute heartbeat_in_seconds
    #   <p>The maximum allowed duration between two heartbeats for the task.</p>
    #   @return [Integer]
    # @!attribute task_credentials
    #   <p>The credentials that Step Functions uses for the task.</p>
    #   @return [Types::TaskCredentials]
    class TaskScheduledEventDetails < Struct.new(
      :resource_type,
      :resource,
      :region,
      :parameters,
      :timeout_in_seconds,
      :heartbeat_in_seconds,
      :task_credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_in_seconds] = nil unless options.key?(:timeout_in_seconds)
        options[:heartbeat_in_seconds] = nil unless options.key?(:heartbeat_in_seconds)
        super
      end
    end

    # <p>Contains details about a task that failed to start during an execution.</p>
    # @!attribute resource_type
    #   <p>The service name of the resource in a task state.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The action of the resource called by a task state.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class TaskStartFailedEventDetails < Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the start of a task during an execution.</p>
    # @!attribute resource_type
    #   <p>The service name of the resource in a task state.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The action of the resource called by a task state.</p>
    #   @return [String]
    class TaskStartedEventDetails < Struct.new(
      :resource_type,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a task that failed to submit during an execution.</p>
    # @!attribute resource_type
    #   <p>The service name of the resource in a task state.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The action of the resource called by a task state.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class TaskSubmitFailedEventDetails < Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a task submitted to a resource .</p>
    # @!attribute resource_type
    #   <p>The service name of the resource in a task state.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The action of the resource called by a task state.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    class TaskSubmittedEventDetails < Struct.new(
      :resource_type,
      :resource,
      :output,
      :output_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the successful completion of a task state.</p>
    # @!attribute resource_type
    #   <p>The service name of the resource in a task state.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The action of the resource called by a task state.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The full JSON response from a resource when a task has succeeded. This response becomes
    #         the output of the related task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #   @return [Types::HistoryEventExecutionDataDetails]
    class TaskSucceededEventDetails < Struct.new(
      :resource_type,
      :resource,
      :output,
      :output_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The task token has either expired or the task associated with the token has already been closed.</p>
    # @!attribute message
    #   @return [String]
    class TaskTimedOut < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a resource timeout that occurred during an execution.</p>
    # @!attribute resource_type
    #   <p>The service name of the resource in a task state.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The action of the resource called by a task state.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #   @return [String]
    class TaskTimedOutEventDetails < Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definition
    #   <p>The <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a> (ASL) definition of the state.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role with the required IAM permissions for the state.</p>
    #   @return [String]
    # @!attribute input
    #   <p>A string that contains the JSON input data for the state.</p>
    #   @return [String]
    # @!attribute inspection_level
    #   <p>Determines the values to return when a state is tested. You can specify one of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INFO</code>: Shows the final state output. By default, Step Functions sets <code>inspectionLevel</code> to <code>INFO</code> if you don't specify a level.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEBUG</code>: Shows the final state output along with the input and output data processing result.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRACE</code>: Shows the HTTP request and response for an HTTP Task. This level also shows the final state output along with the input and output data processing result.</p>
    #               </li>
    #            </ul>
    #            <p>Each of these levels also provide information about the status of the state execution and the next state to transition to.</p>
    #   @return [String]
    # @!attribute reveal_secrets
    #   <p>Specifies whether or not to include secret information in the test result. For HTTP Tasks, a secret includes the data that an EventBridge connection adds to modify the HTTP request headers, query parameters, and body. Step Functions doesn't omit any information included in the state definition or the HTTP response.</p>
    #            <p>If you set <code>revealSecrets</code> to <code>true</code>, you must make sure that the IAM user that calls the <code>TestState</code> API has permission for the <code>states:RevealSecrets</code> action. For an example of IAM policy that sets the <code>states:RevealSecrets</code> permission, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-permissions">IAM permissions to test a state</a>. Without this permission, Step Functions throws an access denied error.</p>
    #            <p>By default, <code>revealSecrets</code> is set to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute variables
    #   <p>JSON object literal that sets variables used in the state under test. Object keys are the variable names and values are the variable values.</p>
    #   @return [String]
    class TestStateInput < Struct.new(
      :definition,
      :role_arn,
      :input,
      :inspection_level,
      :reveal_secrets,
      :variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute output
    #   <p>The JSON output data of the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error returned when the execution of a state fails.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A detailed explanation of the cause for the error when the execution of a state fails.</p>
    #   @return [String]
    # @!attribute inspection_data
    #   <p>Returns additional details about the state's execution, including its input and output data processing flow, and HTTP request and response information. The <code>inspectionLevel</code> request parameter specifies which details are returned.</p>
    #   @return [Types::InspectionData]
    # @!attribute next_state
    #   <p>The name of the next state to transition to. If you haven't defined a next state in your definition or if the execution of the state fails, this field doesn't contain a value.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The execution status of the state.</p>
    #   @return [String]
    class TestStateOutput < Struct.new(
      :output,
      :error,
      :cause,
      :inspection_data,
      :next_state,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You've exceeded the number of tags allowed for a resource. See the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html"> Limits Topic</a> in the
    #       Step Functions Developer Guide.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   @return [String]
    class TooManyTags < Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Selects whether or not the state machine's X-Ray tracing is enabled. Default is
    #         <code>false</code>
    #          </p>
    # @!attribute enabled
    #   <p>When set to <code>true</code>, X-Ray tracing is enabled.</p>
    #   @return [Boolean]
    class TracingConfiguration < Struct.new(
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_run_arn
    #   <p>The Amazon Resource Name (ARN) of a Map Run.</p>
    #   @return [String]
    # @!attribute max_concurrency
    #   <p>The maximum number of child workflow executions that can be specified to run in parallel for the Map Run at the same time.</p>
    #   @return [Integer]
    # @!attribute tolerated_failure_percentage
    #   <p>The maximum percentage of failed items before the Map Run fails.</p>
    #   @return [Float]
    # @!attribute tolerated_failure_count
    #   <p>The maximum number of failed items before the Map Run fails.</p>
    #   @return [Integer]
    class UpdateMapRunInput < Struct.new(
      :map_run_arn,
      :max_concurrency,
      :tolerated_failure_percentage,
      :tolerated_failure_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateMapRunOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the state machine alias.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>The routing configuration of the state machine alias.</p>
    #            <p>An array of <code>RoutingConfig</code> objects that specifies up to two state machine versions that the alias starts executions for.</p>
    #   @return [Array<Types::RoutingConfigurationListItem>]
    class UpdateStateMachineAliasInput < Struct.new(
      :state_machine_alias_arn,
      :description,
      :routing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_date
    #   <p>The date and time the state machine alias was updated.</p>
    #   @return [Time]
    class UpdateStateMachineAliasOutput < Struct.new(
      :update_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role of the state machine.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Use the <code>LoggingConfiguration</code> data type to set CloudWatch Logs
    #         options.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute tracing_configuration
    #   <p>Selects whether X-Ray tracing is enabled.</p>
    #   @return [Types::TracingConfiguration]
    # @!attribute publish
    #   <p>Specifies whether the state machine version is published. The default is
    #           <code>false</code>. To publish a version after updating the state machine, set
    #           <code>publish</code> to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute version_description
    #   <p>An optional description of the state machine version to publish.</p>
    #            <p>You can only specify the <code>versionDescription</code> parameter if you've set <code>publish</code> to <code>true</code>.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Settings to configure server-side encryption. </p>
    #   @return [Types::EncryptionConfiguration]
    class UpdateStateMachineInput < Struct.new(
      :state_machine_arn,
      :definition,
      :role_arn,
      :logging_configuration,
      :tracing_configuration,
      :publish,
      :version_description,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_date
    #   <p>The date and time the state machine was updated.</p>
    #   @return [Time]
    # @!attribute revision_id
    #   <p>The revision identifier for the updated state machine.</p>
    #   @return [String]
    # @!attribute state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) of the published state machine version.</p>
    #            <p>If the <code>publish</code> parameter isn't set to <code>true</code>, this field returns null.</p>
    #   @return [String]
    class UpdateStateMachineOutput < Struct.new(
      :update_date,
      :revision_id,
      :state_machine_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes potential issues found during state machine validation. Rather than raise an
    #             exception, validation will return a list of <b>diagnostic
    #             elements</b> containing diagnostic information. </p>
    #          <note>
    #             <p>The <a href="https://docs.aws.amazon.com/step-functions/latest/apireference/API_ValidateStateMachineDefinition.html">ValidateStateMachineDefinitionlAPI</a> might add
    #                 new diagnostics in the future, adjust diagnostic codes, or change the message
    #                 wording. Your automated processes should only rely on the value of the <b>result</b> field value (OK, FAIL). Do <b>not</b> rely on the exact order, count, or
    #                 wording of diagnostic messages.</p>
    #          </note>
    #          <p>
    #             <b>List of warning codes</b>
    #          </p>
    #          <dl>
    #             <dt>NO_DOLLAR</dt>
    #             <dd>
    #                <p>No <code>.$</code> on a field that appears to be a JSONPath or Intrinsic Function.</p>
    #             </dd>
    #             <dt>NO_PATH</dt>
    #             <dd>
    #                <p>Field value looks like a path, but field name does not end with 'Path'.</p>
    #             </dd>
    #             <dt>PASS_RESULT_IS_STATIC</dt>
    #             <dd>
    #                <p>Attempt to use a path in the result of a pass state.</p>
    #             </dd>
    #          </dl>
    #          <p>
    #             <b>List of error codes</b>
    #          </p>
    #          <dl>
    #             <dt>INVALID_JSON_DESCRIPTION</dt>
    #             <dd>
    #                <p>JSON syntax problem found.</p>
    #             </dd>
    #             <dt>MISSING_DESCRIPTION</dt>
    #             <dd>
    #                <p>Received a null or empty workflow input.</p>
    #             </dd>
    #             <dt>SCHEMA_VALIDATION_FAILED</dt>
    #             <dd>
    #                <p>Schema validation reported errors.</p>
    #             </dd>
    #             <dt>INVALID_RESOURCE</dt>
    #             <dd>
    #                <p>The value of a Task-state resource field is invalid.</p>
    #             </dd>
    #             <dt>MISSING_END_STATE</dt>
    #             <dd>
    #                <p>The workflow does not have a terminal state.</p>
    #             </dd>
    #             <dt>DUPLICATE_STATE_NAME</dt>
    #             <dd>
    #                <p>The same state name appears more than once.</p>
    #             </dd>
    #             <dt>INVALID_STATE_NAME</dt>
    #             <dd>
    #                <p>The state name does not follow the naming convention.</p>
    #             </dd>
    #             <dt>STATE_MACHINE_NAME_EMPTY</dt>
    #             <dd>
    #                <p>The state machine name has not been specified.</p>
    #             </dd>
    #             <dt>STATE_MACHINE_NAME_INVALID</dt>
    #             <dd>
    #                <p>The state machine name does not follow the naming convention.</p>
    #             </dd>
    #             <dt>STATE_MACHINE_NAME_TOO_LONG</dt>
    #             <dd>
    #                <p>The state name exceeds the allowed length.</p>
    #             </dd>
    #             <dt>STATE_MACHINE_NAME_ALREADY_EXISTS</dt>
    #             <dd>
    #                <p>The state name already exists.</p>
    #             </dd>
    #             <dt>DUPLICATE_LABEL_NAME</dt>
    #             <dd>
    #                <p>A label name appears more than once.</p>
    #             </dd>
    #             <dt>INVALID_LABEL_NAME</dt>
    #             <dd>
    #                <p>You have provided an invalid label name.</p>
    #             </dd>
    #             <dt>MISSING_TRANSITION_TARGET</dt>
    #             <dd>
    #                <p>The value of "Next" field doesn't match a known state name.</p>
    #             </dd>
    #             <dt>TOO_DEEPLY_NESTED</dt>
    #             <dd>
    #                <p>The states are too deeply nested.</p>
    #             </dd>
    #          </dl>
    # @!attribute severity
    #   <p>A value of <code>ERROR</code> means that you cannot create or update a state machine with this definition.</p>
    #            <p>
    #               <code>WARNING</code> level diagnostics alert you to potential issues, but they will not prevent you from creating or updating your state machine.</p>
    #   @return [String]
    # @!attribute code
    #   <p>Identifying code for the diagnostic.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Message describing the diagnostic condition.</p>
    #   @return [String]
    # @!attribute location
    #   <p>Location of the issue in the state machine, if available.</p>
    #            <p>For errors specific to a field, the location could be in the format: <code>/States/<StateName>/<FieldName></code>, for example: <code>/States/FailState/ErrorPath</code>.</p>
    #   @return [String]
    class ValidateStateMachineDefinitionDiagnostic < Struct.new(
      :severity,
      :code,
      :message,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definition
    #   <p>The Amazon States Language definition of the state machine. For more information, see
    #               <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a> (ASL).</p>
    #   @return [String]
    # @!attribute type
    #   <p>The target type of state machine for this definition. The default is <code>STANDARD</code>.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>Minimum level of diagnostics to return. <code>ERROR</code> returns only <code>ERROR</code> diagnostics, whereas <code>WARNING</code> returns both <code>WARNING</code> and <code>ERROR</code> diagnostics. The default is <code>ERROR</code>. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of diagnostics that are returned per call. The default and maximum value is 100. Setting the value to 0 will also use the default of 100.</p>
    #            <p>If the number of diagnostics returned in the response exceeds <code>maxResults</code>, the value of the <code>truncated</code> field in the response will be set to <code>true</code>.</p>
    #   @return [Integer]
    class ValidateStateMachineDefinitionInput < Struct.new(
      :definition,
      :type,
      :severity,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute result
    #   <p>The result value will be <code>OK</code> when no syntax errors are found, or
    #                   <code>FAIL</code> if the workflow definition does not pass verification.</p>
    #   @return [String]
    # @!attribute diagnostics
    #   <p>An array of diagnostic errors and warnings found during validation of the state machine definition. Since <b>warnings</b> do not prevent deploying your workflow definition, the <b>result</b> value could be <code>OK</code> even when warning diagnostics are present in the response.</p>
    #   @return [Array<Types::ValidateStateMachineDefinitionDiagnostic>]
    # @!attribute truncated
    #   <p>The result value will be <code>true</code> if the number of diagnostics found in the workflow definition exceeds <code>maxResults</code>. When all diagnostics results are returned, the value will be <code>false</code>.</p>
    #   @return [Boolean]
    class ValidateStateMachineDefinitionOutput < Struct.new(
      :result,
      :diagnostics,
      :truncated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input does not satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The input does not satisfy the constraints specified by an Amazon Web Services service.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
