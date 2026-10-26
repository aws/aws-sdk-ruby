# frozen_string_literal: true

# This is generated code!

module Aws::Lambda
  # This module contains the types returned by client operations.
  module Types

    # <p>Limits that are related to concurrency and storage. All file and storage sizes are in bytes.</p>
    # @!attribute total_code_size
    #   <p>The amount of storage space that you can use for all deployment packages and layer archives.</p>
    #   @return [Integer]
    # @!attribute code_size_unzipped
    #   <p>The maximum size of a function's deployment package and layers when they're extracted.</p>
    #   @return [Integer]
    # @!attribute code_size_zipped
    #   <p>The maximum size of a deployment package when it's uploaded directly to Lambda. Use Amazon S3 for larger files.</p>
    #   @return [Integer]
    # @!attribute concurrent_executions
    #   <p>The maximum number of simultaneous function executions.</p>
    #   @return [Integer]
    # @!attribute unreserved_concurrent_executions
    #   <p>The maximum number of simultaneous function executions, minus the capacity that's reserved for individual functions with <a>PutFunctionConcurrency</a>.</p>
    #   @return [Integer]
    class AccountLimit < Struct.new(
      nil,
      :total_code_size,
      :code_size_unzipped,
      :code_size_zipped,
      :concurrent_executions,
      :unreserved_concurrent_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_code_size] = 0 unless options.key?(:total_code_size)
        options[:code_size_unzipped] = 0 unless options.key?(:code_size_unzipped)
        options[:code_size_zipped] = 0 unless options.key?(:code_size_zipped)
        options[:concurrent_executions] = 0 unless options.key?(:concurrent_executions)
        super
      end
    end

    # <p>The number of functions and amount of storage in use.</p>
    # @!attribute total_code_size
    #   <p>The amount of storage space, in bytes, that's being used by deployment packages and layer archives.</p>
    #   @return [Integer]
    # @!attribute function_count
    #   <p>The number of Lambda functions.</p>
    #   @return [Integer]
    class AccountUsage < Struct.new(
      nil,
      :total_code_size,
      :function_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_code_size] = 0 unless options.key?(:total_code_size)
        options[:function_count] = 0 unless options.key?(:function_count)
        super
      end
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number.</p>
    #   @return [Integer]
    # @!attribute statement_id
    #   <p>An identifier that distinguishes the policy from others on the same layer version.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The API action that grants access to the layer. For example, <code>lambda:GetLayerVersion</code>.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>An account ID, or <code>*</code> to grant layer usage permission to all accounts in an organization, or all Amazon Web Services accounts (if <code>organizationId</code> is not specified). For the last case, make sure that you really do want all Amazon Web Services accounts to have usage permission to this layer. </p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>With the principal set to <code>*</code>, grant permission to all accounts in the specified organization.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a policy that has changed since you last read it.</p>
    #   @return [String]
    class AddLayerVersionPermissionRequest < Struct.new(
      nil,
      :layer_name,
      :version_number,
      :statement_id,
      :action,
      :principal,
      :organization_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statement
    #   <p>The permission statement.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    class AddLayerVersionPermissionResponse < Struct.new(
      nil,
      :statement,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>A statement identifier that differentiates the statement from others in the same policy.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action that the principal can use on the function. For example, <code>lambda:InvokeFunction</code> or <code>lambda:GetFunction</code>.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The Amazon Web Services service, Amazon Web Services account, IAM user, or IAM role that invokes the function. If you specify a service, use <code>SourceArn</code> or <code>SourceAccount</code> to limit who can invoke the function through that service.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>For Amazon Web Services services, the ARN of the Amazon Web Services resource that invokes the function. For example, an Amazon S3 bucket or Amazon SNS topic.</p> <p>Note that Lambda configures the comparison using the <code>StringLike</code> operator.</p>
    #   @return [String]
    # @!attribute function_url_auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Control access to Lambda function URLs</a>.</p>
    #   @return [String]
    # @!attribute invoked_via_function_url
    #   <p>Indicates whether the permission applies when the function is invoked through a function URL. </p>
    #   @return [Boolean]
    # @!attribute source_account
    #   <p>For Amazon Web Services service, the ID of the Amazon Web Services account that owns the resource. Use this together with <code>SourceArn</code> to ensure that the specified account owns the resource. It is possible for an Amazon S3 bucket to be deleted by its owner and recreated by another account.</p>
    #   @return [String]
    # @!attribute event_source_token
    #   <p>For Alexa Smart Home functions, a token that the invoker must supply.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to add permissions to a published version of the function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>Update the policy only if the revision ID matches the ID that's specified. Use this option to avoid modifying a policy that has changed since you last read it.</p>
    #   @return [String]
    # @!attribute principal_org_id
    #   <p>The identifier for your organization in Organizations. Use this to grant permissions to all the Amazon Web Services accounts under this organization.</p>
    #   @return [String]
    class AddPermissionRequest < Struct.new(
      nil,
      :function_name,
      :statement_id,
      :action,
      :principal,
      :source_arn,
      :function_url_auth_type,
      :invoked_via_function_url,
      :source_account,
      :event_source_token,
      :qualifier,
      :revision_id,
      :principal_org_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statement
    #   <p>The permission statement that's added to the function policy.</p>
    #   @return [String]
    class AddPermissionResponse < Struct.new(
      nil,
      :statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias.</p>
    #   @return [String]
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">routing configuration</a> of the alias.</p>
    #   @return [Types::AliasRoutingConfiguration]
    # @!attribute revision_id
    #   <p>A unique identifier that changes when you update the alias.</p>
    #   @return [String]
    class AliasConfiguration < Struct.new(
      nil,
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda couldn't create the alias because your Amazon Web Services account has exceeded the maximum number of aliases allowed per Lambda function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class AliasLimitExceededException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">traffic-shifting</a> configuration of a Lambda function alias.</p>
    # @!attribute additional_version_weights
    #   <p>The second version, and the percentage of traffic that's routed to it.</p>
    #   @return [Hash<String, Float>]
    class AliasRoutingConfiguration < Struct.new(
      nil,
      :additional_version_weights,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List of signing profiles that can sign a code package. </p>
    # @!attribute signing_profile_version_arns
    #   <p>The Amazon Resource Name (ARN) for each of the signing profiles. A signing profile defines a trusted user who can sign a code package. </p>
    #   @return [Array<String>]
    class AllowedPublishers < Struct.new(
      nil,
      :signing_profile_version_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    # @!attribute consumer_group_id
    #   <p>The identifier for the Kafka consumer group to join. The consumer group ID must be unique among all your Kafka event sources. After creating a Kafka event source mapping with the consumer group ID specified, you cannot update this value. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-consumer-group-id">Customizable consumer group ID</a>.</p>
    #   @return [String]
    # @!attribute schema_registry_config
    #   <p>Specific configuration settings for a Kafka schema registry.</p>
    #   @return [Types::KafkaSchemaRegistryConfig]
    class AmazonManagedKafkaEventSourceConfig < Struct.new(
      nil,
      :consumer_group_id,
      :schema_registry_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a callback operation in a durable execution, including the callback token and timeout configuration.</p>
    # @!attribute callback_id
    #   <p>The callback ID. Callback IDs are generated by the <code>DurableContext</code> when a durable function calls <code>ctx.waitForCallback</code>.</p>
    #   @return [String]
    # @!attribute result
    #   <p>The response payload from the callback operation as a string.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An error object that contains details about the failure.</p>
    #   @return [Types::ErrorObject]
    class CallbackDetails < Struct.new(
      nil,
      :callback_id,
      :result,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a failed callback operation, including error information and the reason for failure.</p>
    # @!attribute error
    #   <p>An error object that contains details about the failure.</p>
    #   @return [Types::EventError]
    class CallbackFailedDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration options for callback operations in durable executions, including timeout settings and retry behavior.</p>
    # @!attribute timeout_seconds
    #   <p>The timeout for the callback operation in seconds. If not specified or set to 0, the callback has no timeout.</p>
    #   @return [Integer]
    # @!attribute heartbeat_timeout_seconds
    #   <p>The heartbeat timeout for the callback operation, in seconds. If not specified or set to 0, heartbeat timeout is disabled.</p>
    #   @return [Integer]
    class CallbackOptions < Struct.new(
      nil,
      :timeout_seconds,
      :heartbeat_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_seconds] = 0 unless options.key?(:timeout_seconds)
        options[:heartbeat_timeout_seconds] = 0 unless options.key?(:heartbeat_timeout_seconds)
        super
      end
    end

    # <p>Contains details about a callback operation that has started, including timing information and callback metadata.</p>
    # @!attribute callback_id
    #   <p>The callback ID. Callback IDs are generated by the <code>DurableContext</code> when a durable function calls <code>ctx.waitForCallback</code>.</p>
    #   @return [String]
    # @!attribute heartbeat_timeout
    #   <p>The heartbeat timeout value, in seconds.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The timeout value, in seconds.</p>
    #   @return [Integer]
    class CallbackStartedDetails < Struct.new(
      nil,
      :callback_id,
      :heartbeat_timeout,
      :timeout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a successfully completed callback operation, including the result data and completion timestamp.</p>
    # @!attribute result
    #   <p>The response payload from the successful operation.</p>
    #   @return [Types::EventResult]
    class CallbackSucceededDetails < Struct.new(
      nil,
      :result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a callback operation that timed out, including timeout duration and any partial results.</p>
    # @!attribute error
    #   <p>Details about the callback timeout.</p>
    #   @return [Types::EventError]
    class CallbackTimedOutDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The callback ID token has either expired or the callback associated with the token has already been closed.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class CallbackTimeoutException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A capacity provider manages compute resources for Lambda functions.</p>
    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the capacity provider.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the capacity provider.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the capacity provider.</p>
    #   @return [Types::CapacityProviderVpcConfig]
    # @!attribute permissions_config
    #   <p>The permissions configuration for the capacity provider.</p>
    #   @return [Types::CapacityProviderPermissionsConfig]
    # @!attribute instance_requirements
    #   <p>The instance requirements for compute resources managed by the capacity provider.</p>
    #   @return [Types::InstanceRequirements]
    # @!attribute capacity_provider_scaling_config
    #   <p>The scaling configuration for the capacity provider.</p>
    #   @return [Types::CapacityProviderScalingConfig]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt the capacity provider's resources.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time when the capacity provider was last modified.</p>
    #   @return [String]
    # @!attribute propagate_tags
    #   <p>Configuration for tag propagation to managed resources launched by the capacity provider.</p>
    #   @return [Types::PropagateTags]
    # @!attribute telemetry_config
    #   <p>The telemetry configuration for the capacity provider, including logging settings.</p>
    #   @return [Types::CapacityProviderTelemetryConfig]
    class CapacityProvider < Struct.new(
      nil,
      :capacity_provider_arn,
      :state,
      :vpc_config,
      :permissions_config,
      :instance_requirements,
      :capacity_provider_scaling_config,
      :kms_key_arn,
      :last_modified,
      :propagate_tags,
      :telemetry_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    # @!attribute lambda_managed_instances_capacity_provider_config
    #   <p>Configuration for Lambda-managed instances used by the capacity provider.</p>
    #   @return [Types::LambdaManagedInstancesCapacityProviderConfig]
    class CapacityProviderConfig < Struct.new(
      nil,
      :lambda_managed_instances_capacity_provider_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of capacity providers for your account has been exceeded. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a> </p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class CapacityProviderLimitExceededException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The capacity provider's Amazon CloudWatch Logs configuration settings.</p>
    # @!attribute system_log_level
    #   <p>Set this property to filter the system logs for your capacity provider that Lambda sends to CloudWatch. Lambda only sends system logs at the selected level of detail and lower, where <code>DEBUG</code> is the highest level and <code>WARN</code> is the lowest.</p>
    #   @return [String]
    # @!attribute log_group
    #   <p>The name of the Amazon CloudWatch log group the capacity provider sends logs to. By default, Lambda capacity providers send logs to a default log group named <code>/aws/lambda/capacity-provider/&lt;capacity provider name&gt;</code>. To use a different log group, enter an existing log group or enter a new log group name.</p>
    #   @return [String]
    class CapacityProviderLoggingConfig < Struct.new(
      nil,
      :system_log_level,
      :log_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that specifies the permissions required for the capacity provider to manage compute resources.</p>
    # @!attribute capacity_provider_operator_role_arn
    #   <p>The ARN of the IAM role that the capacity provider uses to manage compute instances and other Amazon Web Services resources.</p>
    #   @return [String]
    class CapacityProviderPermissionsConfig < Struct.new(
      nil,
      :capacity_provider_operator_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that defines how the capacity provider scales compute instances based on demand and policies.</p>
    # @!attribute max_v_cpu_count
    #   <p>The maximum number of vCPUs that the capacity provider can provision across all compute instances.</p>
    #   @return [Integer]
    # @!attribute scaling_mode
    #   <p>The scaling mode that determines how the capacity provider responds to changes in demand.</p>
    #   @return [String]
    # @!attribute scaling_policies
    #   <p>A list of scaling policies that define how the capacity provider scales compute instances based on metrics and thresholds.</p>
    #   @return [Array<Types::TargetTrackingScalingPolicy>]
    class CapacityProviderScalingConfig < Struct.new(
      nil,
      :max_v_cpu_count,
      :scaling_mode,
      :scaling_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that specifies the telemetry collection for the capacity provider.</p>
    # @!attribute logging_config
    #   <p>The capacity provider's Amazon CloudWatch Logs configuration settings.</p>
    #   @return [Types::CapacityProviderLoggingConfig]
    class CapacityProviderTelemetryConfig < Struct.new(
      nil,
      :logging_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>VPC configuration that specifies the network settings for compute instances managed by the capacity provider.</p>
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs where the capacity provider launches compute instances.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs that control network access for compute instances managed by the capacity provider.</p>
    #   @return [Array<String>]
    class CapacityProviderVpcConfig < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a chained function invocation in a durable execution, including the target function and invocation parameters.</p>
    # @!attribute result
    #   <p>The response payload from the chained invocation.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Details about the chained invocation failure.</p>
    #   @return [Types::ErrorObject]
    class ChainedInvokeDetails < Struct.new(
      nil,
      :result,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a failed chained function invocation, including error information and failure reason.</p>
    # @!attribute error
    #   <p>Details about the chained invocation failure.</p>
    #   @return [Types::EventError]
    class ChainedInvokeFailedDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration options for chained function invocations in durable executions, including retry settings and timeout configuration.</p>
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function to invoke.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The tenant identifier for the chained invocation.</p>
    #   @return [String]
    # @!attribute x_amzn_trace_id
    #   <p>The optional X-Ray trace header to use when starting the chained invocation. If you omit this value, the child invocation inherits the parent durable execution's trace header.</p> <p>Specify this value on the <code>START</code> update for the chained invocation operation. For more information about the header format, see <a href="https://docs.aws.amazon.com/xray/latest/devguide/xray-concepts.html#xray-concepts-tracingheader">Tracing header</a> in the <i>X-Ray Developer Guide</i>.</p>
    #   @return [String]
    class ChainedInvokeOptions < Struct.new(
      nil,
      :function_name,
      :tenant_id,
      :x_amzn_trace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a chained function invocation that has started execution, including start time and execution context.</p>
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function being invoked.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The tenant identifier for the chained invocation.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The JSON input payload provided to the chained invocation.</p>
    #   @return [Types::EventInput]
    # @!attribute executed_version
    #   <p>The version of the function that was executed.</p>
    #   @return [String]
    # @!attribute durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the durable execution.</p>
    #   @return [String]
    class ChainedInvokeStartedDetails < Struct.new(
      nil,
      :function_name,
      :tenant_id,
      :input,
      :executed_version,
      :durable_execution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a chained invocation that was stopped.</p>
    # @!attribute error
    #   <p>Details about why the chained invocation stopped.</p>
    #   @return [Types::EventError]
    class ChainedInvokeStoppedDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a chained invocation that succeeded.</p>
    # @!attribute result
    #   <p>The response payload from the successful operation.</p>
    #   @return [Types::EventResult]
    class ChainedInvokeSucceededDetails < Struct.new(
      nil,
      :result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a chained invocation that timed out.</p>
    # @!attribute error
    #   <p>Details about the chained invocation timeout.</p>
    #   @return [Types::EventError]
    class ChainedInvokeTimedOutDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    #   @return [String]
    # @!attribute checkpoint_token
    #   <p>A unique token that identifies the current checkpoint state. This token is provided by the Lambda runtime and must be used to ensure checkpoints are applied in the correct order. Each checkpoint operation consumes this token and returns a new one.</p>
    #   @return [String]
    # @!attribute updates
    #   <p>An array of state updates to apply during this checkpoint. Each update represents a change to the execution state, such as completing a step, starting a callback, or scheduling a timer. Updates are applied atomically as part of the checkpoint operation.</p>
    #   @return [Array<Types::OperationUpdate>]
    # @!attribute client_token
    #   <p>An optional idempotency token to ensure that duplicate checkpoint requests are handled correctly. If provided, Lambda uses this token to detect and handle duplicate requests within a 15-minute window.</p>
    #   @return [String]
    class CheckpointDurableExecutionRequest < Struct.new(
      nil,
      :durable_execution_arn,
      :checkpoint_token,
      :updates,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the CheckpointDurableExecution operation.</p>
    # @!attribute checkpoint_token
    #   <p>A new checkpoint token to use for the next checkpoint operation. This token replaces the one provided in the request and must be used for subsequent checkpoints to maintain proper ordering.</p>
    #   @return [String]
    # @!attribute new_execution_state
    #   <p>Updated execution state information that includes any changes that occurred since the last checkpoint, such as completed callbacks or expired timers. This allows the SDK to update its internal state during replay.</p>
    #   @return [Types::CheckpointUpdatedExecutionState]
    class CheckpointDurableExecutionResponse < Struct.new(
      nil,
      :checkpoint_token,
      :new_execution_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains operations that have been updated since the last checkpoint, such as completed asynchronous work like timers or callbacks.</p>
    # @!attribute operations
    #   <p>A list of operations that have been updated since the last checkpoint.</p>
    #   @return [Array<Types::Operation>]
    # @!attribute next_marker
    #   <p>Indicates that more results are available. Use this value in a subsequent call to retrieve the next page of results.</p>
    #   @return [String]
    class CheckpointUpdatedExecutionState < Struct.new(
      nil,
      :operations,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function couldn't be invoked because its code artifact user has been deleted. Wait for Lambda to provision a new code artifact user, or update the function's code package to recreate it.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class CodeArtifactUserDeletedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function couldn't be invoked because provisioning of its code artifact user failed. Update the function's code package or check the Lambda function's <code>State</code> and <code>StateReasonCode</code> for additional context.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class CodeArtifactUserFailedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function couldn't be invoked because its code artifact user is still being provisioned. Wait for the function's <code>State</code> to become <code>Active</code> and try the request again.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class CodeArtifactUserPendingException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html">Code signing configuration</a>. </p>
    # @!attribute code_signing_config_id
    #   <p>Unique identifer for the Code signing configuration.</p>
    #   @return [String]
    # @!attribute code_signing_config_arn
    #   <p>The Amazon Resource Name (ARN) of the Code signing configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Code signing configuration description.</p>
    #   @return [String]
    # @!attribute allowed_publishers
    #   <p>List of allowed publishers.</p>
    #   @return [Types::AllowedPublishers]
    # @!attribute code_signing_policies
    #   <p>The code signing policy controls the validation failure action for signature mismatch or expiry.</p>
    #   @return [Types::CodeSigningPolicies]
    # @!attribute last_modified
    #   <p>The date and time that the Code signing configuration was last modified, in ISO-8601 format (YYYY-MM-DDThh:mm:ss.sTZD). </p>
    #   @return [String]
    class CodeSigningConfig < Struct.new(
      nil,
      :code_signing_config_id,
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified code signing configuration does not exist.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class CodeSigningConfigNotFoundException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Code signing configuration <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html#config-codesigning-policies">policies</a> specify the validation failure action for signature mismatch or expiry.</p>
    # @!attribute untrusted_artifact_on_deployment
    #   <p>Code signing configuration policy for deployment validation failure. If you set the policy to <code>Enforce</code>, Lambda blocks the deployment request if signature validation checks fail. If you set the policy to <code>Warn</code>, Lambda allows the deployment and issues a new Amazon CloudWatch metric (<code>SignatureValidationErrors</code>) and also stores the warning in the CloudTrail log.</p> <p>Default value: <code>Warn</code> </p>
    #   @return [String]
    class CodeSigningPolicies < Struct.new(
      nil,
      :untrusted_artifact_on_deployment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your Amazon Web Services account has exceeded its maximum total code size. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class CodeStorageExceededException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The code signature failed one or more of the validation checks for signature mismatch or expiry, and the code signing policy is set to ENFORCE. Lambda blocks the deployment.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class CodeVerificationFailedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reserved_concurrent_executions
    #   <p>The number of concurrent executions that are reserved for this function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-concurrency.html">Managing Lambda reserved concurrency</a>.</p>
    #   @return [Integer]
    class Concurrency < Struct.new(
      nil,
      :reserved_concurrent_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a durable execution context.</p>
    # @!attribute replay_children
    #   <p>Whether the state data of child operations of this completed context should be included in the invoke payload and <code>GetDurableExecutionState</code> response.</p>
    #   @return [Boolean]
    # @!attribute result
    #   <p>The response payload from the context.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Details about the context failure.</p>
    #   @return [Types::ErrorObject]
    class ContextDetails < Struct.new(
      nil,
      :replay_children,
      :result,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a context that failed.</p>
    # @!attribute error
    #   <p>Details about the context failure.</p>
    #   @return [Types::EventError]
    class ContextFailedDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration options for a durable execution context.</p>
    # @!attribute replay_children
    #   <p>Whether the state data of children of the completed context should be included in the invoke payload and <code>GetDurableExecutionState</code> response.</p>
    #   @return [Boolean]
    class ContextOptions < Struct.new(
      nil,
      :replay_children,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a context that has started.</p>
    class ContextStartedDetails < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a context that succeeded.</p>
    # @!attribute result
    #   <p>The JSON response payload from the successful context.</p>
    #   @return [Types::EventResult]
    class ContextSucceededDetails < Struct.new(
      nil,
      :result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your Lambda function URL. Use CORS to grant access to your function URL from any origin. You can also use CORS to control access for specific HTTP headers and methods in requests to your function URL.</p>
    # @!attribute allow_credentials
    #   <p>Whether to allow cookies or other credentials in requests to your function URL. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute allow_headers
    #   <p>The HTTP headers that origins can include in requests to your function URL. For example: <code>Date</code>, <code>Keep-Alive</code>, <code>X-Custom-Header</code>.</p>
    #   @return [Array<String>]
    # @!attribute allow_methods
    #   <p>The HTTP methods that are allowed when calling your function URL. For example: <code>GET</code>, <code>POST</code>, <code>DELETE</code>, or the wildcard character (<code>*</code>).</p>
    #   @return [Array<String>]
    # @!attribute allow_origins
    #   <p>The origins that can access your function URL. You can list any number of specific origins, separated by a comma. For example: <code>https://www.example.com</code>, <code>http://localhost:60905</code>.</p> <p>Alternatively, you can grant access to all origins using the wildcard character (<code>*</code>).</p>
    #   @return [Array<String>]
    # @!attribute expose_headers
    #   <p>The HTTP headers in your function response that you want to expose to origins that call your function URL. For example: <code>Date</code>, <code>Keep-Alive</code>, <code>X-Custom-Header</code>.</p>
    #   @return [Array<String>]
    # @!attribute max_age
    #   <p>The maximum amount of time, in seconds, that web browsers can cache results of a preflight request. By default, this is set to <code>0</code>, which means that the browser doesn't cache results.</p>
    #   @return [Integer]
    class Cors < Struct.new(
      nil,
      :allow_credentials,
      :allow_headers,
      :allow_methods,
      :allow_origins,
      :expose_headers,
      :max_age,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias.</p>
    #   @return [String]
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">routing configuration</a> of the alias.</p>
    #   @return [Types::AliasRoutingConfiguration]
    # @!attribute revision_id
    #   <p>A unique identifier that changes when you update the alias.</p>
    #   @return [String]
    class CreateAliasOutput < Struct.new(
      nil,
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias.</p>
    #   @return [String]
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing">routing configuration</a> of the alias.</p>
    #   @return [Types::AliasRoutingConfiguration]
    class CreateAliasRequest < Struct.new(
      nil,
      :function_name,
      :name,
      :function_version,
      :description,
      :routing_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_name
    #   <p>The name of the capacity provider. </p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the capacity provider, including subnet IDs and security group IDs where compute instances will be launched.</p>
    #   @return [Types::CapacityProviderVpcConfig]
    # @!attribute permissions_config
    #   <p>The permissions configuration that specifies the IAM role ARN used by the capacity provider to manage compute resources.</p>
    #   @return [Types::CapacityProviderPermissionsConfig]
    # @!attribute instance_requirements
    #   <p>The instance requirements that specify the compute instance characteristics, including architectures and allowed or excluded instance types.</p>
    #   @return [Types::InstanceRequirements]
    # @!attribute capacity_provider_scaling_config
    #   <p>The scaling configuration that defines how the capacity provider scales compute instances, including maximum vCPU count and scaling policies.</p>
    #   @return [Types::CapacityProviderScalingConfig]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt data associated with the capacity provider.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to associate with the capacity provider.</p>
    #   @return [Hash<String, String>]
    # @!attribute propagate_tags
    #   <p>The tag propagation configuration for the capacity provider. Specifies tags to apply to managed resources at launch.</p>
    #   @return [Types::PropagateTags]
    # @!attribute telemetry_config
    #   <p>The telemetry configuration for the capacity provider. Specifies logging settings for managed resources.</p>
    #   @return [Types::CapacityProviderTelemetryConfig]
    class CreateCapacityProviderRequest < Struct.new(
      nil,
      :capacity_provider_name,
      :vpc_config,
      :permissions_config,
      :instance_requirements,
      :capacity_provider_scaling_config,
      :kms_key_arn,
      :tags,
      :propagate_tags,
      :telemetry_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider
    #   <p>Information about the capacity provider that was created.</p>
    #   @return [Types::CapacityProvider]
    class CreateCapacityProviderResponse < Struct.new(
      nil,
      :capacity_provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>Descriptive name for this code signing configuration.</p>
    #   @return [String]
    # @!attribute allowed_publishers
    #   <p>Signing profiles for this code signing configuration.</p>
    #   @return [Types::AllowedPublishers]
    # @!attribute code_signing_policies
    #   <p>The code signing policies define the actions to take if the validation checks fail. </p>
    #   @return [Types::CodeSigningPolicies]
    # @!attribute tags
    #   <p>A list of tags to add to the code signing configuration.</p>
    #   @return [Hash<String, String>]
    class CreateCodeSigningConfigRequest < Struct.new(
      nil,
      :description,
      :allowed_publishers,
      :code_signing_policies,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config
    #   <p>The code signing configuration.</p>
    #   @return [Types::CodeSigningConfig]
    class CreateCodeSigningConfigResponse < Struct.new(
      nil,
      :code_signing_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A mapping between an Amazon Web Services resource and a Lambda function. For details, see <a>CreateEventSourceMapping</a>.</p>
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis and Amazon DynamoDB Stream event sources. <code>AT_TIMESTAMP</code> is supported only for Amazon Kinesis streams, Amazon DocumentDB, Amazon MSK, and self-managed Apache Kafka.</p>
    #   @return [String]
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start reading. <code>StartingPositionTimestamp</code> cannot be in the future.</p>
    #   @return [Time]
    # @!attribute batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation (6 MB).</p> <p>Default value: Varies by service. For Amazon SQS, the default is 10. For all other services, the default is 100.</p> <p>Related setting: When you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For streams and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For streams and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process concurrently from each shard. The default value is 1.</p>
    #   @return [Integer]
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>An object that defines the filter criteria that determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p> <p>If filter criteria is encrypted, this field shows up as <code>null</code> in the response of ListEventSourceMapping API calls. You can view this field in plaintext in the response of GetEventSourceMapping and DeleteEventSourceMapping calls if you have <code>kms:Decrypt</code> permissions for the correct KMS key.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute logging_config
    #   <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/esm-logging.html">Event source mapping logging</a>.</p>
    #   @return [Types::EventSourceMappingLoggingConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated or that its state changed.</p>
    #   @return [Time]
    # @!attribute last_processing_result
    #   <p>The result of the event source mapping's last processing attempt.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>, <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>, <code>Updating</code>, or <code>Deleting</code>.</p>
    #   @return [String]
    # @!attribute state_transition_reason
    #   <p>Indicates whether a user or Lambda made the last change to the event source mapping.</p>
    #   @return [String]
    # @!attribute destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #   @return [Array<String>]
    # @!attribute queues
    #   <p> (Amazon MQ) The name of the Amazon MQ broker destination queue to consume.</p>
    #   @return [Array<String>]
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, VPC components, or virtual host to secure and define your event source.</p>
    #   @return [Array<Types::SourceAccessConfiguration>]
    # @!attribute self_managed_event_source
    #   <p>The self-managed Apache Kafka cluster for your event source.</p>
    #   @return [Types::SelfManagedEventSource]
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, self-managed Apache Kafka, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon SQS, Amazon MSK, and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class CreateEventSourceMappingOutput < Struct.new(
      nil,
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
      :filter_criteria_error,
      :kms_key_arn,
      :metrics_config,
      :logging_config,
      :scaling_config,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      :amazon_managed_kafka_event_source_config,
      :self_managed_kafka_event_source_config,
      :document_db_event_source_config,
      :event_source_mapping_arn,
      :provisioned_poller_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p> <ul> <li> <p> <b>Amazon Kinesis</b> – The ARN of the data stream or a stream consumer.</p> </li> <li> <p> <b>Amazon DynamoDB Streams</b> – The ARN of the stream.</p> </li> <li> <p> <b>Amazon Simple Queue Service</b> – The ARN of the queue.</p> </li> <li> <p> <b>Amazon Managed Streaming for Apache Kafka</b> – The ARN of the cluster or the ARN of the VPC connection (for <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#msk-multi-vpc">cross-account event source mappings</a>).</p> </li> <li> <p> <b>Amazon MQ</b> – The ARN of the broker.</p> </li> <li> <p> <b>Amazon DocumentDB</b> – The ARN of the DocumentDB change stream.</p> </li> </ul>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Version or Alias ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>When true, the event source mapping is active. When false, Lambda pauses polling and invocation.</p> <p>Default: True</p>
    #   @return [Boolean]
    # @!attribute batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation (6 MB).</p> <ul> <li> <p> <b>Amazon Kinesis</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon DynamoDB Streams</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon Simple Queue Service</b> – Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p> </li> <li> <p> <b>Amazon Managed Streaming for Apache Kafka</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Self-managed Apache Kafka</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon MQ (ActiveMQ and RabbitMQ)</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>DocumentDB</b> – Default 100. Max 10,000.</p> </li> </ul>
    #   @return [Integer]
    # @!attribute filter_criteria
    #   <p>An object that defines the filter criteria that determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>. By default, Lambda does not encrypt your filter criteria object. Specify this property to encrypt data using your own customer managed key. </p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute logging_config
    #   <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/esm-logging.html">Event source mapping logging</a>.</p>
    #   @return [Types::EventSourceMappingLoggingConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For Kinesis, DynamoDB, and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For Kinesis, DynamoDB, and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process from each shard concurrently.</p>
    #   @return [Integer]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis and Amazon DynamoDB Stream event sources. <code>AT_TIMESTAMP</code> is supported only for Amazon Kinesis streams, Amazon DocumentDB, Amazon MSK, and self-managed Apache Kafka.</p>
    #   @return [String]
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start reading. <code>StartingPositionTimestamp</code> cannot be in the future.</p>
    #   @return [Time]
    # @!attribute destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records older than the specified age. The default value is infinite (-1).</p>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) If the function returns an error, split the batch in two and retry.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of tags to apply to the event source mapping.</p>
    #   @return [Hash<String, String>]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #   @return [Array<String>]
    # @!attribute queues
    #   <p> (MQ) The name of the Amazon MQ broker destination queue to consume. </p>
    #   @return [Array<String>]
    # @!attribute source_access_configurations
    #   <p>An array of authentication protocols or VPC components required to secure your event source.</p>
    #   @return [Array<Types::SourceAccessConfiguration>]
    # @!attribute self_managed_event_source
    #   <p>The self-managed Apache Kafka cluster to receive records from.</p>
    #   @return [Types::SelfManagedEventSource]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, self-managed Apache Kafka, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon SQS, Amazon MSK, and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class CreateEventSourceMappingRequest < Struct.new(
      nil,
      :event_source_arn,
      :function_name,
      :enabled,
      :batch_size,
      :filter_criteria,
      :kms_key_arn,
      :metrics_config,
      :logging_config,
      :scaling_config,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :starting_position,
      :starting_position_timestamp,
      :destination_config,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tags,
      :tumbling_window_in_seconds,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :function_response_types,
      :amazon_managed_kafka_event_source_config,
      :self_managed_kafka_event_source_config,
      :document_db_event_source_config,
      :provisioned_poller_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a function's configuration.</p>
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The function's execution role.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The function that Lambda calls to begin running your function.</p>
    #   @return [String]
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The function's description.</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime.</p>
    #   @return [Integer]
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #   @return [Types::VpcConfigResponse]
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute environment
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html">environment variables</a>. Omitted from CloudTrail logs.</p>
    #   @return [Types::EnvironmentResponse]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #   @return [String]
    # @!attribute tracing_config
    #   <p>The function's X-Ray tracing configuration.</p>
    #   @return [Types::TracingConfigResponse]
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the main function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">layers</a>.</p>
    #   @return [Array<Types::Layer>]
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by invoking it.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or modify the function.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code> after function creation completes.</p>
    #   @return [String]
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute file_system_configs
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a> or an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon S3 file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute architectures
    #   <p>The instruction set architecture that the function supports. Architecture is a string array with one of the valid values. The default architecture value is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    #   @return [Types::EphemeralStorage]
    # @!attribute snap_start
    #   <p>Set <code>ApplyOn</code> to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Improving startup performance with Lambda SnapStart</a>.</p>
    #   @return [Types::SnapStartResponse]
    # @!attribute runtime_version_config
    #   <p>The ARN of the runtime and any errors that occured.</p>
    #   @return [Types::RuntimeVersionConfig]
    # @!attribute logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute tenancy_config
    #   <p>The function's tenant isolation configuration settings. Determines whether the Lambda function runs on a shared or dedicated infrastructure per unique tenant.</p>
    #   @return [Types::TenancyConfig]
    # @!attribute capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    #   @return [Types::CapacityProviderConfig]
    # @!attribute config_sha256
    #   <p>The SHA256 hash of the function configuration.</p>
    #   @return [String]
    # @!attribute durable_config
    #   <p>The function's durable execution configuration settings, if the function is configured for durability.</p>
    #   @return [Types::DurableConfig]
    class CreateFunctionOutput < Struct.new(
      nil,
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :signing_profile_version_arn,
      :signing_job_arn,
      :package_type,
      :image_config_response,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      :tenancy_config,
      :capacity_provider_config,
      :config_sha256,
      :durable_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code_size] = 0 unless options.key?(:code_size)
        super
      end
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The name of the method within your code that Lambda calls to run your function. Handler is required if the deployment package is a .zip file archive. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html">Lambda programming model</a>.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The code for the function.</p>
    #   @return [Types::FunctionCode]
    # @!attribute description
    #   <p>A description of the function.</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds, and the maximum allowed value is 900 seconds. For functions using Lambda Managed Instances, asynchronous invocations and event source mapping invocations (except Amazon MQ and Amazon DocumentDB) support a maximum allowed value of 5,400 seconds (90 minutes). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The amount of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console">memory available to the function</a> at runtime. Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    #   @return [Integer]
    # @!attribute publish
    #   <p>Set to true to publish the first version of the function during creation.</p>
    #   @return [Boolean]
    # @!attribute publish_to
    #   <p>Specifies where to publish the function version or configuration.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>For network connectivity to Amazon Web Services resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can access resources and the internet only through that VPC. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring a Lambda function to access resources in a VPC</a>.</p>
    #   @return [Types::VpcConfig]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set to <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute dead_letter_config
    #   <p>A dead-letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">Dead-letter queues</a>.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    #   @return [Types::Environment]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #   @return [String]
    # @!attribute tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with <a href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a>.</p>
    #   @return [Types::TracingConfig]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a> to apply to the function.</p>
    #   @return [Hash<String, String>]
    # @!attribute layers
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">function layers</a> to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>
    #   @return [Array<String>]
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system or an Amazon S3 Files file system.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute code_signing_config_arn
    #   <p>To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function.</p>
    #   @return [String]
    # @!attribute image_config
    #   <p>Container image <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">configuration values</a> that override the values in the container image Dockerfile.</p>
    #   @return [Types::ImageConfig]
    # @!attribute architectures
    #   <p>The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    #   @return [Types::EphemeralStorage]
    # @!attribute snap_start
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
    #   @return [Types::SnapStart]
    # @!attribute logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute tenancy_config
    #   <p>Configuration for multi-tenant applications that use Lambda functions. Defines tenant isolation settings and resource allocations. Required for functions supporting multiple tenants.</p>
    #   @return [Types::TenancyConfig]
    # @!attribute capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    #   @return [Types::CapacityProviderConfig]
    # @!attribute durable_config
    #   <p>Configuration settings for durable functions. Enables creating functions with durability that can remember their state and continue execution even after interruptions.</p>
    #   @return [Types::DurableConfig]
    class CreateFunctionRequest < Struct.new(
      nil,
      :function_name,
      :runtime,
      :role,
      :handler,
      :code,
      :description,
      :timeout,
      :memory_size,
      :publish,
      :publish_to,
      :vpc_config,
      :package_type,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :tags,
      :layers,
      :file_system_configs,
      :code_signing_config_arn,
      :image_config,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :logging_config,
      :tenancy_config,
      :capacity_provider_config,
      :durable_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The alias name.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Control access to Lambda function URLs</a>.</p>
    #   @return [String]
    # @!attribute cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    #   @return [Types::Cors]
    # @!attribute invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    #   @return [String]
    class CreateFunctionUrlConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      :auth_type,
      :cors,
      :invoke_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_url
    #   <p>The HTTP URL endpoint for your function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of your function.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Control access to Lambda function URLs</a>.</p>
    #   @return [String]
    # @!attribute cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    #   @return [Types::Cors]
    # @!attribute creation_time
    #   <p>When the function URL was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    #   @return [String]
    class CreateFunctionUrlConfigResponse < Struct.new(
      nil,
      :function_url,
      :function_arn,
      :auth_type,
      :cors,
      :creation_time,
      :invoke_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-dlq">dead-letter queue</a> for failed asynchronous invocations.</p>
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.</p>
    #   @return [String]
    class DeadLetterConfig < Struct.new(
      nil,
      :target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    class DeleteAliasRequest < Struct.new(
      nil,
      :function_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_name
    #   <p>The name of the capacity provider to delete.</p>
    #   @return [String]
    class DeleteCapacityProviderRequest < Struct.new(
      nil,
      :capacity_provider_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider
    #   <p>Information about the deleted capacity provider.</p>
    #   @return [Types::CapacityProvider]
    class DeleteCapacityProviderResponse < Struct.new(
      nil,
      :capacity_provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    class DeleteCodeSigningConfigRequest < Struct.new(
      nil,
      :code_signing_config_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCodeSigningConfigResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A mapping between an Amazon Web Services resource and a Lambda function. For details, see <a>CreateEventSourceMapping</a>.</p>
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis and Amazon DynamoDB Stream event sources. <code>AT_TIMESTAMP</code> is supported only for Amazon Kinesis streams, Amazon DocumentDB, Amazon MSK, and self-managed Apache Kafka.</p>
    #   @return [String]
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start reading. <code>StartingPositionTimestamp</code> cannot be in the future.</p>
    #   @return [Time]
    # @!attribute batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation (6 MB).</p> <p>Default value: Varies by service. For Amazon SQS, the default is 10. For all other services, the default is 100.</p> <p>Related setting: When you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For streams and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For streams and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process concurrently from each shard. The default value is 1.</p>
    #   @return [Integer]
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>An object that defines the filter criteria that determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p> <p>If filter criteria is encrypted, this field shows up as <code>null</code> in the response of ListEventSourceMapping API calls. You can view this field in plaintext in the response of GetEventSourceMapping and DeleteEventSourceMapping calls if you have <code>kms:Decrypt</code> permissions for the correct KMS key.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute logging_config
    #   <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/esm-logging.html">Event source mapping logging</a>.</p>
    #   @return [Types::EventSourceMappingLoggingConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated or that its state changed.</p>
    #   @return [Time]
    # @!attribute last_processing_result
    #   <p>The result of the event source mapping's last processing attempt.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>, <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>, <code>Updating</code>, or <code>Deleting</code>.</p>
    #   @return [String]
    # @!attribute state_transition_reason
    #   <p>Indicates whether a user or Lambda made the last change to the event source mapping.</p>
    #   @return [String]
    # @!attribute destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #   @return [Array<String>]
    # @!attribute queues
    #   <p> (Amazon MQ) The name of the Amazon MQ broker destination queue to consume.</p>
    #   @return [Array<String>]
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, VPC components, or virtual host to secure and define your event source.</p>
    #   @return [Array<Types::SourceAccessConfiguration>]
    # @!attribute self_managed_event_source
    #   <p>The self-managed Apache Kafka cluster for your event source.</p>
    #   @return [Types::SelfManagedEventSource]
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, self-managed Apache Kafka, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon SQS, Amazon MSK, and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class DeleteEventSourceMappingOutput < Struct.new(
      nil,
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
      :filter_criteria_error,
      :kms_key_arn,
      :metrics_config,
      :logging_config,
      :scaling_config,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      :amazon_managed_kafka_event_source_config,
      :self_managed_kafka_event_source_config,
      :document_db_event_source_config,
      :event_source_mapping_arn,
      :provisioned_poller_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    class DeleteEventSourceMappingRequest < Struct.new(
      nil,
      :uuid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class DeleteFunctionCodeSigningConfigRequest < Struct.new(
      nil,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class DeleteFunctionConcurrencyRequest < Struct.new(
      nil,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #   @return [String]
    class DeleteFunctionEventInvokeConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function or version.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:1</code> (with version).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version to delete. You can't delete a version that an alias references.</p>
    #   @return [String]
    class DeleteFunctionRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The HTTP status code returned by the operation.</p>
    #   @return [Integer]
    class DeleteFunctionResponse < Struct.new(
      nil,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The alias name.</p>
    #   @return [String]
    class DeleteFunctionUrlConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number.</p>
    #   @return [Integer]
    class DeleteLayerVersionRequest < Struct.new(
      nil,
      :layer_name,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The version number or alias name.</p>
    #   @return [String]
    class DeleteProvisionedConcurrencyConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda resource you want to delete the policy from. You can use a qualified or an unqualified ARN. The value must be a complete ARN, and the operation does not accept wildcard characters.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID that the existing policy must match for the deletion to proceed. If the revision ID doesn't match, the operation fails with a <code>PreconditionFailedException</code> error. To retrieve the current revision ID, use the <a>GetResourcePolicy</a> operation.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration object that specifies the destination of an event after Lambda processes it. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations">Adding a destination</a>.</p>
    # @!attribute on_success
    #   <p>The destination configuration for successful invocations. Not supported in <code>CreateEventSourceMapping</code> or <code>UpdateEventSourceMapping</code>.</p>
    #   @return [Types::OnSuccess]
    # @!attribute on_failure
    #   <p>The destination configuration for failed invocations.</p>
    #   @return [Types::OnFailure]
    class DestinationConfig < Struct.new(
      nil,
      :on_success,
      :on_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specific configuration settings for a DocumentDB event source. </p>
    # @!attribute database_name
    #   <p> The name of the database to consume within the DocumentDB cluster. </p>
    #   @return [String]
    # @!attribute collection_name
    #   <p> The name of the collection to consume within the database. If you do not specify a collection, Lambda consumes all collections. </p>
    #   @return [String]
    # @!attribute full_document
    #   <p> Determines what DocumentDB sends to your event stream during document update operations. If set to UpdateLookup, DocumentDB sends a delta describing the changes, along with a copy of the entire document. Otherwise, DocumentDB sends only a partial document that contains the changes. </p>
    #   @return [String]
    class DocumentDBEventSourceConfig < Struct.new(
      nil,
      :database_name,
      :collection_name,
      :full_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable functions</a>, including execution timeout, retention period for execution history, and an optional ARN of the Key Management Service (KMS) customer managed key that is used to encrypt your durable execution's payload data, including input, output, and error payloads.</p>
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that is used to encrypt your durable execution's payload data, including input, output, and error payloads.</p>
    #   @return [String]
    # @!attribute retention_period_in_days
    #   <p>The number of days to retain execution history after a durable execution completes. After this period, execution history is no longer available through the GetDurableExecutionHistory API.</p>
    #   @return [Integer]
    # @!attribute execution_timeout
    #   <p>The maximum time (in seconds) that a durable execution can run before timing out. This timeout applies to the entire durable execution, not individual function invocations.</p>
    #   @return [Integer]
    class DurableConfig < Struct.new(
      nil,
      :kms_key_arn,
      :retention_period_in_days,
      :execution_timeout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The durable execution with the specified name has already been started. Each durable execution name must be unique within the function. Use a different name or check the status of the existing execution.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class DurableExecutionAlreadyStartedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Need additional permissions to configure VPC settings.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EC2AccessDeniedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon EC2 throttled Lambda during Lambda function initialization using the execution role provided for the function.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EC2ThrottledException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda received an unexpected Amazon EC2 client exception while setting up for the Lambda function.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute ec2_error_code
    #   @return [String]
    class EC2UnexpectedException < Struct.new(
      nil,
      :type,
      :message,
      :ec2_error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred when reading from or writing to a connected file system.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EFSIOException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function couldn't make a network connection to the configured file system.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EFSMountConnectivityException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function couldn't mount the configured file system due to a permission or configuration issue.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EFSMountFailureException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function made a network connection to the configured file system, but the mount operation timed out.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EFSMountTimeoutException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda couldn't create an elastic network interface in the VPC, specified as part of Lambda function configuration, because the limit for network interfaces has been reached. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ENILimitReachedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda couldn't invoke the Lambda function because the elastic network interface (ENI) configured for its VPC connection isn't ready yet. Wait a few moments and try the request again. For more information about VPC configuration, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring a Lambda function to access resources in a VPC</a>.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ENINotReadyException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A function's environment variable settings. You can use environment variables to adjust your function's behavior without updating code. An environment variable is a pair of strings that are stored in a function's version-specific configuration.</p>
    # @!attribute variables
    #   <p>Environment variable key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html">Using Lambda environment variables</a>.</p>
    #   @return [Hash<String, String>]
    class Environment < Struct.new(
      nil,
      :variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error messages for environment variables that couldn't be applied.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class EnvironmentError < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results of an operation to update or read environment variables. If the operation succeeds, the response contains the environment variables. If it fails, the response contains details about the error.</p>
    # @!attribute variables
    #   <p>Environment variable key-value pairs. Omitted from CloudTrail logs.</p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Error messages for environment variables that couldn't be applied.</p>
    #   @return [Types::EnvironmentError]
    class EnvironmentResponse < Struct.new(
      nil,
      :variables,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    # @!attribute size
    #   <p>The size of the function's <code>/tmp</code> directory.</p>
    #   @return [Integer]
    class EphemeralStorage < Struct.new(
      nil,
      :size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains error information.</p>
    # @!attribute error_message
    #   <p>A human-readable error message.</p>
    #   @return [String]
    # @!attribute error_type
    #   <p>The error type.</p>
    #   @return [String]
    # @!attribute error_data
    #   <p>Machine-readable error data.</p>
    #   @return [String]
    # @!attribute stack_trace
    #   <p>Stack trace information for the error.</p>
    #   @return [Array<String>]
    class ErrorObject < Struct.new(
      nil,
      :error_message,
      :error_type,
      :error_data,
      :stack_trace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event that occurred during the execution of a durable function.</p>
    # @!attribute event_type
    #   <p>The type of event that occurred.</p>
    #   @return [String]
    # @!attribute sub_type
    #   <p>The subtype of the event, providing additional categorization.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The unique identifier for this event. Event IDs increment sequentially.</p>
    #   @return [Integer]
    # @!attribute id
    #   <p>The unique identifier for this operation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-provided name for this operation.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The date and time when this event occurred, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    # @!attribute parent_id
    #   <p>The unique identifier of the parent operation, if this operation is running within a child context.</p>
    #   @return [String]
    # @!attribute execution_started_details
    #   <p>Details about an execution that started.</p>
    #   @return [Types::ExecutionStartedDetails]
    # @!attribute execution_succeeded_details
    #   <p>Details about an execution that succeeded.</p>
    #   @return [Types::ExecutionSucceededDetails]
    # @!attribute execution_failed_details
    #   <p>Details about an execution that failed.</p>
    #   @return [Types::ExecutionFailedDetails]
    # @!attribute execution_timed_out_details
    #   <p>Details about an execution that timed out.</p>
    #   @return [Types::ExecutionTimedOutDetails]
    # @!attribute execution_stopped_details
    #   <p>Details about an execution that was stopped.</p>
    #   @return [Types::ExecutionStoppedDetails]
    # @!attribute context_started_details
    #   <p>Details about a context that started.</p>
    #   @return [Types::ContextStartedDetails]
    # @!attribute context_succeeded_details
    #   <p>Details about a context that succeeded.</p>
    #   @return [Types::ContextSucceededDetails]
    # @!attribute context_failed_details
    #   <p>Details about a context that failed.</p>
    #   @return [Types::ContextFailedDetails]
    # @!attribute wait_started_details
    #   <p>Details about a wait operation that started.</p>
    #   @return [Types::WaitStartedDetails]
    # @!attribute wait_succeeded_details
    #   <p>Details about a wait operation that succeeded.</p>
    #   @return [Types::WaitSucceededDetails]
    # @!attribute wait_cancelled_details
    #   <p>Details about a wait operation that was cancelled.</p>
    #   @return [Types::WaitCancelledDetails]
    # @!attribute step_started_details
    #   <p>Details about a step that started.</p>
    #   @return [Types::StepStartedDetails]
    # @!attribute step_succeeded_details
    #   <p>Details about a step that succeeded.</p>
    #   @return [Types::StepSucceededDetails]
    # @!attribute step_failed_details
    #   <p>Details about a step that failed.</p>
    #   @return [Types::StepFailedDetails]
    # @!attribute chained_invoke_started_details
    #   <p>Contains details about a chained function invocation that has started execution, including start time and execution context.</p>
    #   @return [Types::ChainedInvokeStartedDetails]
    # @!attribute chained_invoke_succeeded_details
    #   <p>Details about a chained invocation that succeeded.</p>
    #   @return [Types::ChainedInvokeSucceededDetails]
    # @!attribute chained_invoke_failed_details
    #   <p>Contains details about a failed chained function invocation, including error information and failure reason.</p>
    #   @return [Types::ChainedInvokeFailedDetails]
    # @!attribute chained_invoke_timed_out_details
    #   <p>Details about a chained invocation that timed out.</p>
    #   @return [Types::ChainedInvokeTimedOutDetails]
    # @!attribute chained_invoke_stopped_details
    #   <p>Details about a chained invocation that was stopped.</p>
    #   @return [Types::ChainedInvokeStoppedDetails]
    # @!attribute callback_started_details
    #   <p>Contains details about a callback operation that has started, including timing information and callback metadata.</p>
    #   @return [Types::CallbackStartedDetails]
    # @!attribute callback_succeeded_details
    #   <p>Contains details about a successfully completed callback operation, including the result data and completion timestamp.</p>
    #   @return [Types::CallbackSucceededDetails]
    # @!attribute callback_failed_details
    #   <p>Contains details about a failed callback operation, including error information and the reason for failure.</p>
    #   @return [Types::CallbackFailedDetails]
    # @!attribute callback_timed_out_details
    #   <p>Contains details about a callback operation that timed out, including timeout duration and any partial results.</p>
    #   @return [Types::CallbackTimedOutDetails]
    # @!attribute invocation_completed_details
    #   <p>Details about a function invocation that completed.</p>
    #   @return [Types::InvocationCompletedDetails]
    class Event < Struct.new(
      nil,
      :event_type,
      :sub_type,
      :event_id,
      :id,
      :name,
      :event_timestamp,
      :parent_id,
      :execution_started_details,
      :execution_succeeded_details,
      :execution_failed_details,
      :execution_timed_out_details,
      :execution_stopped_details,
      :context_started_details,
      :context_succeeded_details,
      :context_failed_details,
      :wait_started_details,
      :wait_succeeded_details,
      :wait_cancelled_details,
      :step_started_details,
      :step_succeeded_details,
      :step_failed_details,
      :chained_invoke_started_details,
      :chained_invoke_succeeded_details,
      :chained_invoke_failed_details,
      :chained_invoke_timed_out_details,
      :chained_invoke_stopped_details,
      :callback_started_details,
      :callback_succeeded_details,
      :callback_failed_details,
      :callback_timed_out_details,
      :invocation_completed_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:event_id] = 1 unless options.key?(:event_id)
        super
      end
    end

    # <p>Error information for an event.</p>
    # @!attribute payload
    #   <p>The error payload.</p>
    #   @return [Types::ErrorObject]
    # @!attribute truncated
    #   <p>Indicates if the error payload was truncated due to size limits.</p>
    #   @return [Boolean]
    class EventError < Struct.new(
      nil,
      :payload,
      :truncated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input information for an event.</p>
    # @!attribute payload
    #   <p>The input payload.</p>
    #   @return [String]
    # @!attribute truncated
    #   <p>Indicates if the error payload was truncated due to size limits.</p>
    #   @return [Boolean]
    class EventInput < Struct.new(
      nil,
      :payload,
      :truncated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result information for an event.</p>
    # @!attribute payload
    #   <p>The result payload.</p>
    #   @return [String]
    # @!attribute truncated
    #   <p>Indicates if the error payload was truncated due to size limits.</p>
    #   @return [Boolean]
    class EventResult < Struct.new(
      nil,
      :payload,
      :truncated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A mapping between an Amazon Web Services resource and a Lambda function. For details, see <a>CreateEventSourceMapping</a>.</p>
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis and Amazon DynamoDB Stream event sources. <code>AT_TIMESTAMP</code> is supported only for Amazon Kinesis streams, Amazon DocumentDB, Amazon MSK, and self-managed Apache Kafka.</p>
    #   @return [String]
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start reading. <code>StartingPositionTimestamp</code> cannot be in the future.</p>
    #   @return [Time]
    # @!attribute batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation (6 MB).</p> <p>Default value: Varies by service. For Amazon SQS, the default is 10. For all other services, the default is 100.</p> <p>Related setting: When you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For streams and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For streams and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process concurrently from each shard. The default value is 1.</p>
    #   @return [Integer]
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>An object that defines the filter criteria that determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p> <p>If filter criteria is encrypted, this field shows up as <code>null</code> in the response of ListEventSourceMapping API calls. You can view this field in plaintext in the response of GetEventSourceMapping and DeleteEventSourceMapping calls if you have <code>kms:Decrypt</code> permissions for the correct KMS key.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute logging_config
    #   <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/esm-logging.html">Event source mapping logging</a>.</p>
    #   @return [Types::EventSourceMappingLoggingConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated or that its state changed.</p>
    #   @return [Time]
    # @!attribute last_processing_result
    #   <p>The result of the event source mapping's last processing attempt.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>, <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>, <code>Updating</code>, or <code>Deleting</code>.</p>
    #   @return [String]
    # @!attribute state_transition_reason
    #   <p>Indicates whether a user or Lambda made the last change to the event source mapping.</p>
    #   @return [String]
    # @!attribute destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #   @return [Array<String>]
    # @!attribute queues
    #   <p> (Amazon MQ) The name of the Amazon MQ broker destination queue to consume.</p>
    #   @return [Array<String>]
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, VPC components, or virtual host to secure and define your event source.</p>
    #   @return [Array<Types::SourceAccessConfiguration>]
    # @!attribute self_managed_event_source
    #   <p>The self-managed Apache Kafka cluster for your event source.</p>
    #   @return [Types::SelfManagedEventSource]
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, self-managed Apache Kafka, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon SQS, Amazon MSK, and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class EventSourceMappingConfiguration < Struct.new(
      nil,
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
      :filter_criteria_error,
      :kms_key_arn,
      :metrics_config,
      :logging_config,
      :scaling_config,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      :amazon_managed_kafka_event_source_config,
      :self_managed_kafka_event_source_config,
      :document_db_event_source_config,
      :event_source_mapping_arn,
      :provisioned_poller_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. Use this configuration object to define the level of logs for your event source mapping. </p>
    # @!attribute system_log_level
    #   <p> The log level you want your event source mapping to use. Lambda event poller only sends system logs at the selected level of detail and lower, where <code>DEBUG</code> is the highest level and <code>WARN</code> is the lowest. For more information about these metrics, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/esm-logging.html"> Event source mapping logging</a>. </p>
    #   @return [String]
    class EventSourceMappingLoggingConfig < Struct.new(
      nil,
      :system_log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metrics configuration for your event source. Use this configuration object to define which metrics you want your event source mapping to produce.</p>
    # @!attribute metrics
    #   <p> The metrics you want your event source mapping to produce, including <code>EventCount</code>, <code>ErrorCount</code>, <code>KafkaMetrics</code>. </p> <ul> <li> <p> <code>EventCount</code> to receive metrics related to the number of events processed by your event source mapping.</p> </li> <li> <p> <code>ErrorCount</code> (Amazon MSK and self-managed Apache Kafka) to receive metrics related to the number of errors in your event source mapping processing.</p> </li> <li> <p> <code>KafkaMetrics</code> (Amazon MSK and self-managed Apache Kafka) to receive metrics related to the Kafka consumers from your event source mapping.</p> </li> </ul> <p> For more information about these metrics, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics"> Event source mapping metrics</a>. </p>
    #   @return [Array<String>]
    class EventSourceMappingMetricsConfig < Struct.new(
      nil,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable execution</a>.</p>
    # @!attribute durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution, if this execution is a durable execution.</p>
    #   @return [String]
    # @!attribute durable_execution_name
    #   <p>The unique name of the durable execution, if one was provided when the execution was started.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the durable execution.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The date and time when the durable execution started, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>The date and time when the durable execution ended, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that is used to encrypt your durable execution's payload data, including input, output, and error payloads.</p>
    #   @return [String]
    class Execution < Struct.new(
      nil,
      :durable_execution_arn,
      :durable_execution_name,
      :function_arn,
      :status,
      :start_timestamp,
      :end_timestamp,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable execution</a>.</p>
    # @!attribute input_payload
    #   <p>The original input payload provided for the durable execution.</p>
    #   @return [String]
    class ExecutionDetails < Struct.new(
      nil,
      :input_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a failed <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable execution</a>.</p>
    # @!attribute error
    #   <p>Details about the execution failure.</p>
    #   @return [Types::EventError]
    class ExecutionFailedDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a durable execution that started.</p>
    # @!attribute input
    #   <p>The input payload provided for the durable execution.</p>
    #   @return [Types::EventInput]
    # @!attribute execution_timeout
    #   <p>The maximum amount of time that the durable execution is allowed to run, in seconds.</p>
    #   @return [Integer]
    class ExecutionStartedDetails < Struct.new(
      nil,
      :input,
      :execution_timeout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable execution</a> that stopped.</p>
    # @!attribute error
    #   <p>Details about why the execution stopped.</p>
    #   @return [Types::EventError]
    class ExecutionStoppedDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable execution</a> that succeeded.</p>
    # @!attribute result
    #   <p>The response payload from the successful operation.</p>
    #   @return [Types::EventResult]
    class ExecutionSucceededDetails < Struct.new(
      nil,
      :result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable execution</a> that timed out.</p>
    # @!attribute error
    #   <p>Details about the execution timeout.</p>
    #   @return [Types::EventError]
    class ExecutionTimedOutDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the connection between a Lambda function and an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a> or an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon S3 file system</a>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon EFS or Amazon S3 Files access point that provides access to the file system.</p>
    #   @return [String]
    # @!attribute local_mount_path
    #   <p>The path where the function can access the file system, starting with <code>/mnt/</code>.</p>
    #   @return [String]
    # @!attribute s3_files_config
    #   <p>The configuration for how your function accesses data on an Amazon S3 file system. Valid only when the file system access point ARN is an Amazon S3 Files access point. If you specify a different access point type (for example, Amazon Elastic File System), the operation returns an <code>InvalidParameterException</code>.</p>
    #   @return [Types::S3FilesConfig]
    class FileSystemConfig < Struct.new(
      nil,
      :arn,
      :local_mount_path,
      :s3_files_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A structure within a <code>FilterCriteria</code> object that defines an event filtering pattern. </p>
    # @!attribute pattern
    #   <p> A filter pattern. For more information on the syntax of a filter pattern, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-syntax"> Filter rule syntax</a>. </p>
    #   @return [String]
    class Filter < Struct.new(
      nil,
      :pattern,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An object that contains the filters for an event source. </p>
    # @!attribute filters
    #   <p> A list of filters. </p>
    #   @return [Array<Types::Filter>]
    class FilterCriteria < Struct.new(
      nil,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains details about an error related to filter criteria encryption.</p>
    # @!attribute error_code
    #   <p>The KMS exception that resulted from filter criteria encryption or decryption.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class FilterCriteriaError < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The code for the Lambda function. You can either specify an object in Amazon S3, upload a .zip file archive deployment package directly, or specify the URI of a container image.</p>
    # @!attribute zip_file
    #   <p>The base64-encoded contents of the deployment package. Amazon Web Services SDK and CLI clients handle the encoding for you.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>An Amazon S3 bucket in the same Amazon Web Services Region as your function. The bucket can be in a different Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The Amazon S3 key of the deployment package.</p>
    #   @return [String]
    # @!attribute s3_object_version
    #   <p>For versioned objects, the version of the deployment package object to use.</p>
    #   @return [String]
    # @!attribute s3_object_storage_mode
    #   <p>Specifies how the deployment package is stored. Valid values:</p> <ul> <li> <p> <code>COPY</code> (default) – Uploads a copy of your deployment package to Lambda.</p> </li> <li> <p> <code>REFERENCE</code> – Lambda references the deployment package from the specified Amazon S3 bucket.</p> </li> </ul>
    #   @return [String]
    # @!attribute image_uri
    #   <p>URI of a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html">container image</a> in the Amazon ECR registry.</p>
    #   @return [String]
    # @!attribute source_kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt your function's .zip deployment package. If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a>.</p>
    #   @return [String]
    class FunctionCode < Struct.new(
      nil,
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :s3_object_storage_mode,
      :image_uri,
      :source_kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a function's deployment package.</p>
    # @!attribute repository_type
    #   <p>The service that's hosting the file.</p>
    #   @return [String]
    # @!attribute location
    #   <p>A presigned URL that you can use to download the deployment package.</p>
    #   @return [String]
    # @!attribute image_uri
    #   <p>URI of a container image in the Amazon ECR registry.</p>
    #   @return [String]
    # @!attribute resolved_image_uri
    #   <p>The resolved URI for the image.</p>
    #   @return [String]
    # @!attribute resolved_s3_object
    #   <p>The resolved Amazon S3 object that contains the deployment package.</p>
    #   @return [Types::ResolvedS3Object]
    # @!attribute source_kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt your function's .zip deployment package. If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a>.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An object that contains details about an error related to function deployment package retrieval.</p>
    #   @return [Types::FunctionCodeLocationError]
    class FunctionCodeLocation < Struct.new(
      nil,
      :repository_type,
      :location,
      :image_uri,
      :resolved_image_uri,
      :resolved_s3_object,
      :source_kms_key_arn,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an error that occurred when Lambda attempted to retrieve a function's deployment package.</p>
    # @!attribute error_code
    #   <p>The error code that identifies why Lambda failed to retrieve the deployment package.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The human-readable message that describes why Lambda failed to retrieve the deployment package.</p>
    #   @return [String]
    class FunctionCodeLocationError < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a function's configuration.</p>
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The function's execution role.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The function that Lambda calls to begin running your function.</p>
    #   @return [String]
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The function's description.</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime.</p>
    #   @return [Integer]
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #   @return [Types::VpcConfigResponse]
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute environment
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html">environment variables</a>. Omitted from CloudTrail logs.</p>
    #   @return [Types::EnvironmentResponse]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #   @return [String]
    # @!attribute tracing_config
    #   <p>The function's X-Ray tracing configuration.</p>
    #   @return [Types::TracingConfigResponse]
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the main function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">layers</a>.</p>
    #   @return [Array<Types::Layer>]
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by invoking it.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or modify the function.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code> after function creation completes.</p>
    #   @return [String]
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute file_system_configs
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a> or an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon S3 file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute architectures
    #   <p>The instruction set architecture that the function supports. Architecture is a string array with one of the valid values. The default architecture value is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    #   @return [Types::EphemeralStorage]
    # @!attribute snap_start
    #   <p>Set <code>ApplyOn</code> to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Improving startup performance with Lambda SnapStart</a>.</p>
    #   @return [Types::SnapStartResponse]
    # @!attribute runtime_version_config
    #   <p>The ARN of the runtime and any errors that occured.</p>
    #   @return [Types::RuntimeVersionConfig]
    # @!attribute logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute tenancy_config
    #   <p>The function's tenant isolation configuration settings. Determines whether the Lambda function runs on a shared or dedicated infrastructure per unique tenant.</p>
    #   @return [Types::TenancyConfig]
    # @!attribute capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    #   @return [Types::CapacityProviderConfig]
    # @!attribute config_sha256
    #   <p>The SHA256 hash of the function configuration.</p>
    #   @return [String]
    # @!attribute durable_config
    #   <p>The function's durable execution configuration settings, if the function is configured for durability.</p>
    #   @return [Types::DurableConfig]
    class FunctionConfiguration < Struct.new(
      nil,
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :signing_profile_version_arn,
      :signing_job_arn,
      :package_type,
      :image_config_response,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      :tenancy_config,
      :capacity_provider_config,
      :config_sha256,
      :durable_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code_size] = 0 unless options.key?(:code_size)
        super
      end
    end

    # @!attribute last_modified
    #   <p>The date and time that the configuration was last updated.</p>
    #   @return [Time]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #   @return [String]
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #   @return [Integer]
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #   @return [Integer]
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p> <p class="title"> <b>Destinations</b> </p> <ul> <li> <p> <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p> </li> <li> <p> <b>Queue</b> - The ARN of a standard SQS queue.</p> </li> <li> <p> <b>Bucket</b> - The ARN of an Amazon S3 bucket.</p> </li> <li> <p> <b>Topic</b> - The ARN of a standard SNS topic.</p> </li> <li> <p> <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p> </li> </ul> <note> <p>S3 buckets are supported only for on-failure destinations. To retain records of successful invocations, use another destination type.</p> </note>
    #   @return [Types::DestinationConfig]
    class FunctionEventInvokeConfig < Struct.new(
      nil,
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that defines the scaling behavior for a Lambda Managed Instances function, including the minimum and maximum number of execution environments that can be provisioned.</p>
    # @!attribute min_execution_environments
    #   <p>The minimum number of execution environments to maintain for the function.</p>
    #   @return [Integer]
    # @!attribute max_execution_environments
    #   <p>The maximum number of execution environments that can be provisioned for the function.</p>
    #   @return [Integer]
    class FunctionScalingConfig < Struct.new(
      nil,
      :min_execution_environments,
      :max_execution_environments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a Lambda function URL.</p>
    # @!attribute function_url
    #   <p>The HTTP URL endpoint for your function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of your function.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the function URL was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>When the function URL configuration was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    #   @return [Types::Cors]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
    #   @return [String]
    # @!attribute invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    #   @return [String]
    class FunctionUrlConfig < Struct.new(
      nil,
      :function_url,
      :function_arn,
      :creation_time,
      :last_modified_time,
      :cors,
      :auth_type,
      :invoke_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a function version that uses a specific capacity provider, including its ARN and current state.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function version.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the function version.</p>
    #   @return [String]
    class FunctionVersionsByCapacityProviderListItem < Struct.new(
      nil,
      :function_arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of function versions that can be associated with a single capacity provider has been exceeded. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class FunctionVersionsPerCapacityProviderLimitExceededException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetAccountSettingsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_limit
    #   <p>Limits that are related to concurrency and code storage.</p>
    #   @return [Types::AccountLimit]
    # @!attribute account_usage
    #   <p>The number of functions and amount of storage in use.</p>
    #   @return [Types::AccountUsage]
    class GetAccountSettingsResponse < Struct.new(
      nil,
      :account_limit,
      :account_usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias.</p>
    #   @return [String]
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">routing configuration</a> of the alias.</p>
    #   @return [Types::AliasRoutingConfiguration]
    # @!attribute revision_id
    #   <p>A unique identifier that changes when you update the alias.</p>
    #   @return [String]
    class GetAliasOutput < Struct.new(
      nil,
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    class GetAliasRequest < Struct.new(
      nil,
      :function_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_name
    #   <p>The name of the capacity provider to retrieve.</p>
    #   @return [String]
    class GetCapacityProviderRequest < Struct.new(
      nil,
      :capacity_provider_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider
    #   <p>Information about the capacity provider, including its configuration and current state.</p>
    #   @return [Types::CapacityProvider]
    class GetCapacityProviderResponse < Struct.new(
      nil,
      :capacity_provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration. </p>
    #   @return [String]
    class GetCodeSigningConfigRequest < Struct.new(
      nil,
      :code_signing_config_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config
    #   <p>The code signing configuration</p>
    #   @return [Types::CodeSigningConfig]
    class GetCodeSigningConfigResponse < Struct.new(
      nil,
      :code_signing_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    #   @return [String]
    # @!attribute include_execution_data
    #   <p>Specifies whether to include execution data such as step results and callback payloads in the history events. Set to <code>true</code> to include data, or <code>false</code> to exclude it for a more compact response. The default is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute max_items
    #   <p>The maximum number of history events to return per call. You can use <code>Marker</code> to retrieve additional pages of results. The default is 100 and the maximum allowed is 1000. A value of 0 uses the default.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>If <code>NextMarker</code> was returned from a previous request, use this value to retrieve the next page of results. Each pagination token expires after 24 hours.</p>
    #   @return [String]
    # @!attribute reverse_order
    #   <p>When set to <code>true</code>, returns the history events in reverse chronological order (newest first). By default, events are returned in chronological order (oldest first).</p>
    #   @return [Boolean]
    class GetDurableExecutionHistoryRequest < Struct.new(
      nil,
      :durable_execution_arn,
      :include_execution_data,
      :max_items,
      :marker,
      :reverse_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the GetDurableExecutionHistory operation, containing the execution history and events.</p>
    # @!attribute events
    #   <p>An array of execution history events, ordered chronologically unless <code>ReverseOrder</code> is set to <code>true</code>. Each event represents a significant occurrence during the execution, such as step completion or callback resolution.</p>
    #   @return [Array<Types::Event>]
    # @!attribute next_marker
    #   <p>If present, indicates that more history events are available. Use this value as the <code>Marker</code> parameter in a subsequent request to retrieve the next page of results.</p>
    #   @return [String]
    class GetDurableExecutionHistoryResponse < Struct.new(
      nil,
      :events,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    #   @return [String]
    # @!attribute include_execution_data
    #   <p>Specifies whether to include execution data such as input payload, result, and error information in the response. Set to <code>false</code> for a more compact response that includes only execution metadata. The default value is set to <code>true</code>.</p>
    #   @return [Boolean]
    class GetDurableExecutionRequest < Struct.new(
      nil,
      :durable_execution_arn,
      :include_execution_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the GetDurableExecution operation, containing detailed information about the durable execution.</p>
    # @!attribute durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    #   @return [String]
    # @!attribute durable_execution_name
    #   <p>The name of the durable execution. This is either the name you provided when invoking the function, or a system-generated unique identifier if no name was provided.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function that was invoked to start this durable execution.</p>
    #   @return [String]
    # @!attribute input_payload
    #   <p>The JSON input payload that was provided when the durable execution was started. For asynchronous invocations, this is limited to 256 KB. For synchronous invocations, this can be up to 6 MB.</p>
    #   @return [String]
    # @!attribute result
    #   <p>The JSON result returned by the durable execution if it completed successfully. This field is only present when the execution status is <code>SUCCEEDED</code>. The result is limited to 256 KB.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Error information if the durable execution failed. This field is only present when the execution status is <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>STOPPED</code>. The combined size of all error fields is limited to 256 KB.</p>
    #   @return [Types::ErrorObject]
    # @!attribute start_timestamp
    #   <p>The date and time when the durable execution started, in Unix timestamp format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the durable execution. Valid values are <code>RUNNING</code>, <code>SUCCEEDED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, and <code>STOPPED</code>.</p>
    #   @return [String]
    # @!attribute end_timestamp
    #   <p>The date and time when the durable execution ended, in Unix timestamp format. This field is only present if the execution has completed (status is <code>SUCCEEDED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>STOPPED</code>).</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of the Lambda function that was invoked for this durable execution. This ensures that all replays during the execution use the same function version.</p>
    #   @return [String]
    # @!attribute trace_header
    #   <p>The trace headers associated with the durable execution.</p>
    #   @return [Types::TraceHeader]
    # @!attribute execution_data_included
    #   <p>Indicates whether execution data is included in this response. Returns <code>false</code> when <code>IncludeExecutionData</code> is set to <code>false</code> in the request.</p>
    #   @return [Boolean]
    # @!attribute durable_config
    #   <p>Configuration settings for the durable execution, including execution timeout, retention period for execution history, and an optional ARN of the Key Management Service (KMS) customer managed key that is used to encrypt your durable execution's payload data, including input, output, and error payloads.</p>
    #   @return [Types::DurableConfig]
    class GetDurableExecutionResponse < Struct.new(
      nil,
      :durable_execution_arn,
      :durable_execution_name,
      :function_arn,
      :input_payload,
      :result,
      :error,
      :start_timestamp,
      :status,
      :end_timestamp,
      :version,
      :trace_header,
      :execution_data_included,
      :durable_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    #   @return [String]
    # @!attribute checkpoint_token
    #   <p>A checkpoint token that identifies the current state of the execution. This token is provided by the Lambda runtime and ensures that state retrieval is consistent with the current execution context.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>If <code>NextMarker</code> was returned from a previous request, use this value to retrieve the next page of operations. Each pagination token expires after 24 hours.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of operations to return per call. You can use <code>Marker</code> to retrieve additional pages of results. The default is 100 and the maximum allowed is 1000. A value of 0 uses the default.</p>
    #   @return [Integer]
    class GetDurableExecutionStateRequest < Struct.new(
      nil,
      :durable_execution_arn,
      :checkpoint_token,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the GetDurableExecutionState operation, containing the current execution state for replay.</p>
    # @!attribute operations
    #   <p>An array of operations that represent the current state of the durable execution. Operations are ordered by their start sequence number in ascending order and include information needed for replay processing.</p>
    #   @return [Array<Types::Operation>]
    # @!attribute next_marker
    #   <p>If present, indicates that more operations are available. Use this value as the <code>Marker</code> parameter in a subsequent request to retrieve the next page of results.</p>
    #   @return [String]
    class GetDurableExecutionStateResponse < Struct.new(
      nil,
      :operations,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A mapping between an Amazon Web Services resource and a Lambda function. For details, see <a>CreateEventSourceMapping</a>.</p>
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis and Amazon DynamoDB Stream event sources. <code>AT_TIMESTAMP</code> is supported only for Amazon Kinesis streams, Amazon DocumentDB, Amazon MSK, and self-managed Apache Kafka.</p>
    #   @return [String]
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start reading. <code>StartingPositionTimestamp</code> cannot be in the future.</p>
    #   @return [Time]
    # @!attribute batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation (6 MB).</p> <p>Default value: Varies by service. For Amazon SQS, the default is 10. For all other services, the default is 100.</p> <p>Related setting: When you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For streams and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For streams and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process concurrently from each shard. The default value is 1.</p>
    #   @return [Integer]
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>An object that defines the filter criteria that determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p> <p>If filter criteria is encrypted, this field shows up as <code>null</code> in the response of ListEventSourceMapping API calls. You can view this field in plaintext in the response of GetEventSourceMapping and DeleteEventSourceMapping calls if you have <code>kms:Decrypt</code> permissions for the correct KMS key.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute logging_config
    #   <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/esm-logging.html">Event source mapping logging</a>.</p>
    #   @return [Types::EventSourceMappingLoggingConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated or that its state changed.</p>
    #   @return [Time]
    # @!attribute last_processing_result
    #   <p>The result of the event source mapping's last processing attempt.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>, <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>, <code>Updating</code>, or <code>Deleting</code>.</p>
    #   @return [String]
    # @!attribute state_transition_reason
    #   <p>Indicates whether a user or Lambda made the last change to the event source mapping.</p>
    #   @return [String]
    # @!attribute destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #   @return [Array<String>]
    # @!attribute queues
    #   <p> (Amazon MQ) The name of the Amazon MQ broker destination queue to consume.</p>
    #   @return [Array<String>]
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, VPC components, or virtual host to secure and define your event source.</p>
    #   @return [Array<Types::SourceAccessConfiguration>]
    # @!attribute self_managed_event_source
    #   <p>The self-managed Apache Kafka cluster for your event source.</p>
    #   @return [Types::SelfManagedEventSource]
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, self-managed Apache Kafka, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon SQS, Amazon MSK, and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class GetEventSourceMappingOutput < Struct.new(
      nil,
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
      :filter_criteria_error,
      :kms_key_arn,
      :metrics_config,
      :logging_config,
      :scaling_config,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      :amazon_managed_kafka_event_source_config,
      :self_managed_kafka_event_source_config,
      :document_db_event_source_config,
      :event_source_mapping_arn,
      :provisioned_poller_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    class GetEventSourceMappingRequest < Struct.new(
      nil,
      :uuid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class GetFunctionCodeSigningConfigRequest < Struct.new(
      nil,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class GetFunctionCodeSigningConfigResponse < Struct.new(
      nil,
      :code_signing_config_arn,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class GetFunctionConcurrencyRequest < Struct.new(
      nil,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reserved_concurrent_executions
    #   <p>The number of simultaneous executions that are reserved for the function.</p>
    #   @return [Integer]
    class GetFunctionConcurrencyResponse < Struct.new(
      nil,
      :reserved_concurrent_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a function's configuration.</p>
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The function's execution role.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The function that Lambda calls to begin running your function.</p>
    #   @return [String]
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The function's description.</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime.</p>
    #   @return [Integer]
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #   @return [Types::VpcConfigResponse]
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute environment
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html">environment variables</a>. Omitted from CloudTrail logs.</p>
    #   @return [Types::EnvironmentResponse]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #   @return [String]
    # @!attribute tracing_config
    #   <p>The function's X-Ray tracing configuration.</p>
    #   @return [Types::TracingConfigResponse]
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the main function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">layers</a>.</p>
    #   @return [Array<Types::Layer>]
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by invoking it.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or modify the function.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code> after function creation completes.</p>
    #   @return [String]
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute file_system_configs
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a> or an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon S3 file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute architectures
    #   <p>The instruction set architecture that the function supports. Architecture is a string array with one of the valid values. The default architecture value is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    #   @return [Types::EphemeralStorage]
    # @!attribute snap_start
    #   <p>Set <code>ApplyOn</code> to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Improving startup performance with Lambda SnapStart</a>.</p>
    #   @return [Types::SnapStartResponse]
    # @!attribute runtime_version_config
    #   <p>The ARN of the runtime and any errors that occured.</p>
    #   @return [Types::RuntimeVersionConfig]
    # @!attribute logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute tenancy_config
    #   <p>The function's tenant isolation configuration settings. Determines whether the Lambda function runs on a shared or dedicated infrastructure per unique tenant.</p>
    #   @return [Types::TenancyConfig]
    # @!attribute capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    #   @return [Types::CapacityProviderConfig]
    # @!attribute config_sha256
    #   <p>The SHA256 hash of the function configuration.</p>
    #   @return [String]
    # @!attribute durable_config
    #   <p>The function's durable execution configuration settings, if the function is configured for durability.</p>
    #   @return [Types::DurableConfig]
    class GetFunctionConfigurationOutput < Struct.new(
      nil,
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :signing_profile_version_arn,
      :signing_job_arn,
      :package_type,
      :image_config_response,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      :tenancy_config,
      :capacity_provider_config,
      :config_sha256,
      :durable_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code_size] = 0 unless options.key?(:code_size)
        super
      end
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to get details about a published version of the function.</p>
    #   @return [String]
    class GetFunctionConfigurationRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute last_modified
    #   <p>The date and time that the configuration was last updated.</p>
    #   @return [Time]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #   @return [String]
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #   @return [Integer]
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #   @return [Integer]
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p> <p class="title"> <b>Destinations</b> </p> <ul> <li> <p> <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p> </li> <li> <p> <b>Queue</b> - The ARN of a standard SQS queue.</p> </li> <li> <p> <b>Bucket</b> - The ARN of an Amazon S3 bucket.</p> </li> <li> <p> <b>Topic</b> - The ARN of a standard SNS topic.</p> </li> <li> <p> <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p> </li> </ul> <note> <p>S3 buckets are supported only for on-failure destinations. To retain records of successful invocations, use another destination type.</p> </note>
    #   @return [Types::DestinationConfig]
    class GetFunctionEventInvokeConfigOutput < Struct.new(
      nil,
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #   @return [String]
    class GetFunctionEventInvokeConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    class GetFunctionRecursionConfigRequest < Struct.new(
      nil,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recursive_loop
    #   <p>If your function's recursive loop detection configuration is <code>Allow</code>, Lambda doesn't take any action when it detects your function being invoked as part of a recursive loop.</p> <p>If your function's recursive loop detection configuration is <code>Terminate</code>, Lambda stops your function being invoked and notifies you when it detects your function being invoked as part of a recursive loop.</p> <p>By default, Lambda sets your function's configuration to <code>Terminate</code>. You can update this configuration using the <a>PutFunctionRecursionConfig</a> action.</p>
    #   @return [String]
    class GetFunctionRecursionConfigResponse < Struct.new(
      nil,
      :recursive_loop,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to get details about a published version of the function.</p>
    #   @return [String]
    class GetFunctionRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>The configuration of the function or version.</p>
    #   @return [Types::FunctionConfiguration]
    # @!attribute code
    #   <p>The deployment package of the function or version.</p>
    #   @return [Types::FunctionCodeLocation]
    # @!attribute tags
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a>. Lambda returns tag data only if you have explicit allow permissions for <a href="https://docs.aws.amazon.com/lambda/latest/api/API_ListTags.html">lambda:ListTags</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags_error
    #   <p>An object that contains details about an error related to retrieving tags.</p>
    #   @return [Types::TagsError]
    # @!attribute concurrency
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">reserved concurrency</a>.</p>
    #   @return [Types::Concurrency]
    class GetFunctionResponse < Struct.new(
      nil,
      :configuration,
      :code,
      :tags,
      :tags_error,
      :concurrency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to get the scaling configuration for a published version of the function.</p>
    #   @return [String]
    class GetFunctionScalingConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #   @return [String]
    # @!attribute applied_function_scaling_config
    #   <p>The scaling configuration that is currently applied to the function. This represents the actual scaling settings in effect.</p>
    #   @return [Types::FunctionScalingConfig]
    # @!attribute requested_function_scaling_config
    #   <p>The scaling configuration that was requested for the function.</p>
    #   @return [Types::FunctionScalingConfig]
    class GetFunctionScalingConfigResponse < Struct.new(
      nil,
      :function_arn,
      :applied_function_scaling_config,
      :requested_function_scaling_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The alias name.</p>
    #   @return [String]
    class GetFunctionUrlConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_url
    #   <p>The HTTP URL endpoint for your function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of your function.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Control access to Lambda function URLs</a>.</p>
    #   @return [String]
    # @!attribute cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    #   @return [Types::Cors]
    # @!attribute creation_time
    #   <p>When the function URL was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>When the function URL configuration was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    #   @return [String]
    class GetFunctionUrlConfigResponse < Struct.new(
      nil,
      :function_url,
      :function_arn,
      :auth_type,
      :cors,
      :creation_time,
      :last_modified_time,
      :invoke_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>Details about the layer version.</p>
    #   @return [Types::LayerVersionContentOutput]
    # @!attribute layer_arn
    #   <p>The ARN of the layer.</p>
    #   @return [String]
    # @!attribute layer_version_arn
    #   <p>The ARN of the layer version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date that the layer version was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number.</p>
    #   @return [Integer]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's software license.</p>
    #   @return [String]
    class GetLayerVersionByArnOutput < Struct.new(
      nil,
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_architectures,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # @!attribute arn
    #   <p>The ARN of the layer version.</p>
    #   @return [String]
    class GetLayerVersionByArnRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>Details about the layer version.</p>
    #   @return [Types::LayerVersionContentOutput]
    # @!attribute layer_arn
    #   <p>The ARN of the layer.</p>
    #   @return [String]
    # @!attribute layer_version_arn
    #   <p>The ARN of the layer version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date that the layer version was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number.</p>
    #   @return [Integer]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's software license.</p>
    #   @return [String]
    class GetLayerVersionOutput < Struct.new(
      nil,
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_architectures,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number.</p>
    #   @return [Integer]
    class GetLayerVersionPolicyRequest < Struct.new(
      nil,
      :layer_name,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The policy document.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    class GetLayerVersionPolicyResponse < Struct.new(
      nil,
      :policy,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number.</p>
    #   @return [Integer]
    class GetLayerVersionRequest < Struct.new(
      nil,
      :layer_name,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to get the policy for that resource.</p>
    #   @return [String]
    class GetPolicyRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    class GetPolicyResponse < Struct.new(
      nil,
      :policy,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The version number or alias name.</p>
    #   @return [String]
    class GetProvisionedConcurrencyConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute requested_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency requested.</p>
    #   @return [Integer]
    # @!attribute available_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency available.</p>
    #   @return [Integer]
    # @!attribute allocated_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency allocated. When a weighted alias is used during linear and canary deployments, this value fluctuates depending on the amount of concurrency that is provisioned for the function versions.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the allocation process.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>For failed allocations, the reason that provisioned concurrency could not be allocated.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that a user last updated the configuration, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601 format</a>.</p>
    #   @return [String]
    class GetProvisionedConcurrencyConfigResponse < Struct.new(
      nil,
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda resource you want to retrieve the policy for. You can use a qualified or an unqualified ARN. The value must be a complete ARN, and the operation does not accept wildcard characters.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy attached to the Lambda resource you specified.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the policy. Pass this value as the <code>RevisionId</code> in a <a>PutResourcePolicy</a> or <a>DeleteResourcePolicy</a> request. Doing so ensures the operation acts on the expected version of the policy.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      nil,
      :policy,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version of the function. This can be <code>$LATEST</code> or a published version number. If no value is specified, the configuration for the <code>$LATEST</code> version is returned.</p>
    #   @return [String]
    class GetRuntimeManagementConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_runtime_on
    #   <p>The current runtime update mode of the function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of your function.</p>
    #   @return [String]
    # @!attribute runtime_version_arn
    #   <p>The ARN of the runtime the function is configured to use. If the runtime update mode is <b>Manual</b>, the ARN is returned, otherwise <code>null</code> is returned.</p>
    #   @return [String]
    class GetRuntimeManagementConfigResponse < Struct.new(
      nil,
      :update_runtime_on,
      :function_arn,
      :runtime_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration values that override the container image Dockerfile settings. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">Container image settings</a>.</p>
    # @!attribute entry_point
    #   <p>Specifies the entry point to their application, which is typically the location of the runtime executable.</p>
    #   @return [Array<String>]
    # @!attribute command
    #   <p>Specifies parameters that you want to pass in with ENTRYPOINT.</p>
    #   @return [Array<String>]
    # @!attribute working_directory
    #   <p>Specifies the working directory.</p>
    #   @return [String]
    class ImageConfig < Struct.new(
      nil,
      :entry_point,
      :command,
      :working_directory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error response to <code>GetFunctionConfiguration</code>.</p>
    # @!attribute error_code
    #   <p>Error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Error message.</p>
    #   @return [String]
    class ImageConfigError < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response to a <code>GetFunctionConfiguration</code> request.</p>
    # @!attribute image_config
    #   <p>Configuration values that override the container image Dockerfile.</p>
    #   @return [Types::ImageConfig]
    # @!attribute error
    #   <p>Error response to <code>GetFunctionConfiguration</code>.</p>
    #   @return [Types::ImageConfigError]
    class ImageConfigResponse < Struct.new(
      nil,
      :image_config,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifications that define the characteristics and constraints for compute instances used by the capacity provider.</p>
    # @!attribute architectures
    #   <p>A list of supported CPU architectures for compute instances. Valid values include <code>x86_64</code> and <code>arm64</code>.</p>
    #   @return [Array<String>]
    # @!attribute allowed_instance_types
    #   <p>A list of EC2 instance types that the capacity provider is allowed to use. If not specified, all compatible instance types are allowed.</p>
    #   @return [Array<String>]
    # @!attribute excluded_instance_types
    #   <p>A list of EC2 instance types that the capacity provider should not use, even if they meet other requirements.</p>
    #   @return [Array<String>]
    class InstanceRequirements < Struct.new(
      nil,
      :architectures,
      :allowed_instance_types,
      :excluded_instance_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The code signature failed the integrity check. If the integrity check fails, then Lambda blocks deployment, even if the code signing policy is set to WARN.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidCodeSignatureException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One of the parameters in the request is not valid.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request body could not be parsed as JSON, or a request header is invalid. For example, the 'x-amzn-RequestId' header is not a valid UUID string.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class InvalidRequestContentException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The runtime or runtime version specified is not supported.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidRuntimeException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The security group ID provided in the Lambda function VPC configuration is not valid.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidSecurityGroupIDException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The subnet ID provided in the Lambda function VPC configuration is not valid.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidSubnetIDException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda could not unzip the deployment package.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidZipFileException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a function invocation that completed.</p>
    # @!attribute start_timestamp
    #   <p>The date and time when the invocation started, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>The date and time when the invocation ended, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    # @!attribute request_id
    #   <p>The request ID for the invocation.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Details about the invocation failure.</p>
    #   @return [Types::EventError]
    class InvocationCompletedDetails < Struct.new(
      nil,
      :start_timestamp,
      :end_timestamp,
      :request_id,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute invocation_type
    #   <p>Choose from the following options.</p> <ul> <li> <p> <code>RequestResponse</code> (default) – Invoke the function synchronously. Keep the connection open until the function returns a response or times out. The API response includes the function response and additional data.</p> </li> <li> <p> <code>Event</code> – Invoke the function asynchronously. Send events that fail multiple times to the function's dead-letter queue (if one is configured). The API response only includes a status code.</p> </li> <li> <p> <code>DryRun</code> – Validate parameter values and verify that the user or role has permission to invoke the function.</p> </li> </ul>
    #   @return [String]
    # @!attribute log_type
    #   <p>Set to <code>Tail</code> to include the execution log in the response. Applies to synchronously invoked functions only.</p>
    #   @return [String]
    # @!attribute client_context
    #   <p>Up to 3,583 bytes of base64-encoded data about the invoking client to pass to the function in the context object. Lambda passes the <code>ClientContext</code> object to your function for synchronous invocations only.</p>
    #   @return [String]
    # @!attribute durable_execution_name
    #   <p>A unique name for the durable execution. If you invoke a durable function using a name that already exists with the same payload, Lambda returns the existing execution instead of creating a duplicate. If the payload differs, Lambda returns a <code>DurableExecutionAlreadyStartedException</code> error.</p> <p>If not specified, Lambda generates a unique identifier automatically. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-execution-idempotency.html#durable-idempotency-execution-names">Execution names</a>.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The JSON that you want to provide to your Lambda function as input. The maximum payload size is 6 MB for synchronous invocations and 1 MB for asynchronous invocations.</p> <p>You can enter the JSON directly. For example, <code>--payload '{ "key": "value" }'</code>. You can also specify a file path. For example, <code>--payload file://payload.json</code>.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to invoke a published version of the function.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The identifier of the tenant in a multi-tenant Lambda function.</p>
    #   @return [String]
    class InvocationRequest < Struct.new(
      nil,
      :function_name,
      :invocation_type,
      :log_type,
      :client_context,
      :durable_execution_name,
      :payload,
      :qualifier,
      :tenant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The HTTP status code is in the 200 range for a successful request. For the <code>RequestResponse</code> invocation type, this status code is 200. For the <code>Event</code> invocation type, this status code is 202. For the <code>DryRun</code> invocation type, the status code is 204.</p>
    #   @return [Integer]
    # @!attribute function_error
    #   <p>If present, indicates that an error occurred during function execution. Details about the error are included in the response payload.</p>
    #   @return [String]
    # @!attribute log_result
    #   <p>The last 4 KB of the execution log, which is base64-encoded.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The response from the function, or an error object.</p>
    #   @return [String]
    # @!attribute executed_version
    #   <p>The version of the function that executed. When you invoke a function with an alias, this indicates which version the alias resolved to.</p>
    #   @return [String]
    # @!attribute durable_execution_arn
    #   <p>The ARN of the durable execution that was started. This is returned when invoking a durable function and provides a unique identifier for tracking the execution.</p>
    #   @return [String]
    class InvocationResponse < Struct.new(
      nil,
      :status_code,
      :function_error,
      :log_result,
      :payload,
      :executed_version,
      :durable_execution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # @deprecated
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute invoke_args
    #   <p>The JSON that you want to provide to your Lambda function as input.</p>
    #   @return [String]
    class InvokeAsyncRequest < Struct.new(
      nil,
      :function_name,
      :invoke_args,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A success response (<code>202 Accepted</code>) indicates that the request is queued for invocation.</p>
    # @deprecated
    # @!attribute status
    #   <p>The status code.</p>
    #   @return [Integer]
    class InvokeAsyncResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status] = 0 unless options.key?(:status)
        super
      end
    end

    # <p>A chunk of the streamed response payload.</p>
    # @!attribute payload
    #   <p>Data returned by your Lambda function.</p>
    #   @return [String]
    class InvokeResponseStreamUpdate < Struct.new(
      nil,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A response confirming that the event stream is complete.</p>
    # @!attribute error_code
    #   <p>An error code.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>The details of any returned error.</p>
    #   @return [String]
    # @!attribute log_result
    #   <p>The last 4 KB of the execution log, which is base64-encoded.</p>
    #   @return [String]
    class InvokeWithResponseStreamCompleteEvent < Struct.new(
      nil,
      :error_code,
      :error_details,
      :log_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute log_type
    #   <p>Set to <code>Tail</code> to include the execution log in the response. Applies to synchronously invoked functions only.</p>
    #   @return [String]
    # @!attribute client_context
    #   <p>Up to 3,583 bytes of base64-encoded data about the invoking client to pass to the function in the context object.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The alias name.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The JSON that you want to provide to your Lambda function as input.</p> <p>You can enter the JSON directly. For example, <code>--payload '{ "key": "value" }'</code>. You can also specify a file path. For example, <code>--payload file://payload.json</code>.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The identifier of the tenant in a multi-tenant Lambda function.</p>
    #   @return [String]
    # @!attribute invocation_type
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>RequestResponse</code> (default) – Invoke the function synchronously. Keep the connection open until the function returns a response or times out. The API operation response includes the function response and additional data.</p> </li> <li> <p> <code>DryRun</code> – Validate parameter values and verify that the IAM user or role has permission to invoke the function.</p> </li> </ul>
    #   @return [String]
    class InvokeWithResponseStreamRequest < Struct.new(
      nil,
      :function_name,
      :log_type,
      :client_context,
      :qualifier,
      :payload,
      :tenant_id,
      :invocation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>For a successful request, the HTTP status code is in the 200 range. For the <code>RequestResponse</code> invocation type, this status code is 200. For the <code>DryRun</code> invocation type, this status code is 204.</p>
    #   @return [Integer]
    # @!attribute executed_version
    #   <p>The version of the function that executed. When you invoke a function with an alias, this indicates which version the alias resolved to.</p>
    #   @return [String]
    # @!attribute event_stream
    #   <p>The stream of response payloads.</p>
    #   @return [Types::InvokeWithResponseStreamResponseEvent]
    # @!attribute response_stream_content_type
    #   <p>The type of data the stream is returning.</p>
    #   @return [String]
    class InvokeWithResponseStreamResponse < Struct.new(
      nil,
      :status_code,
      :executed_version,
      :event_stream,
      :response_stream_content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # <p>An object that includes a chunk of the response payload. When the stream has ended, Lambda includes a <code>InvokeComplete</code> object.</p>
    # @!attribute payload_chunk
    #   <p>A chunk of the streamed response payload.</p>
    #   @return [Types::InvokeResponseStreamUpdate]
    # @!attribute invoke_complete
    #   <p>An object that's returned when the stream has ended and all the payload chunks have been returned.</p>
    #   @return [Types::InvokeWithResponseStreamCompleteEvent]
    class InvokeWithResponseStreamResponseEvent < Struct.new(
      :payload_chunk,
      :invoke_complete,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PayloadChunk < InvokeWithResponseStreamResponseEvent; end
      class InvokeComplete < InvokeWithResponseStreamResponseEvent; end
      class Unknown < InvokeWithResponseStreamResponseEvent; end
    end

    # <p>Lambda couldn't decrypt the environment variables because KMS access was denied. Check the Lambda function's KMS permissions.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class KMSAccessDeniedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda couldn't decrypt the environment variables because the KMS key used is disabled. Check the Lambda function's KMS key settings.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class KMSDisabledException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda couldn't decrypt the environment variables because the state of the KMS key used is not valid for Decrypt. Check the function's KMS key settings.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class KMSInvalidStateException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda couldn't decrypt the environment variables because the KMS key was not found. Check the function's KMS key settings.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class KMSNotFoundException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specific access configuration settings that tell Lambda how to authenticate with your schema registry.</p> <p>If you're working with an Glue schema registry, don't provide authentication details in this object. Instead, ensure that your execution role has the required permissions for Lambda to access your cluster.</p> <p>If you're working with a Confluent schema registry, choose the authentication method in the <code>Type</code> field, and provide the Secrets Manager secret ARN in the <code>URI</code> field.</p>
    # @!attribute type
    #   <p> The type of authentication Lambda uses to access your schema registry. </p> <ul> <li> <p> <code>BASIC_AUTH</code> – The Secrets Manager ARN of your secret key used for basic authentication with your Confluent schema registry.</p> </li> <li> <p> <code>CLIENT_CERTIFICATE_TLS_AUTH</code> – The Secrets Manager ARN of your secret key containing the certificate chain (X.509 PEM), private key (PKCS#8 PEM), and private key password (optional) used for mutual TLS authentication with your Confluent schema registry.</p> </li> <li> <p> <code>SERVER_ROOT_CA_CERTIFICATE</code> – The Secrets Manager ARN of your secret key containing the root CA certificate (X.509 PEM) used for TLS encryption with your Confluent schema registry.</p> </li> <li> <p> <code>OAUTHBEARER_AUTH</code> – The Secrets Manager ARN of your secret key containing the OAuth 2.0 credentials that Lambda uses to acquire an access token for your Confluent schema registry. For the contents of the secret, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-cluster-auth.html#smaa-auth-oauth-secret">Configuring the OAuth secret</a>.</p> </li> </ul>
    #   @return [String]
    # @!attribute uri
    #   <p> The URI of the secret (Secrets Manager secret ARN) to authenticate with your schema registry. </p>
    #   @return [String]
    class KafkaSchemaRegistryAccessConfig < Struct.new(
      nil,
      :type,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specific configuration settings for a Kafka schema registry.</p>
    # @!attribute schema_registry_uri
    #   <p>The URI for your schema registry. The correct URI format depends on the type of schema registry you're using.</p> <ul> <li> <p>For Glue schema registries, use the ARN of the registry.</p> </li> <li> <p>For Confluent schema registries, use the URL of the registry.</p> </li> </ul>
    #   @return [String]
    # @!attribute event_record_format
    #   <p>The record format that Lambda delivers to your function after schema validation.</p> <ul> <li> <p>Choose <code>JSON</code> to have Lambda deliver the record to your function as a standard JSON object.</p> </li> <li> <p>Choose <code>SOURCE</code> to have Lambda deliver the record to your function in its original source format. Lambda removes all schema metadata, such as the schema ID, before sending the record to your function.</p> </li> </ul>
    #   @return [String]
    # @!attribute access_configs
    #   <p>An array of access configuration objects that tell Lambda how to authenticate with your schema registry.</p>
    #   @return [Array<Types::KafkaSchemaRegistryAccessConfig>]
    # @!attribute schema_validation_configs
    #   <p>An array of schema validation configuration objects, which tell Lambda the message attributes you want to validate and filter using your schema registry.</p>
    #   @return [Array<Types::KafkaSchemaValidationConfig>]
    class KafkaSchemaRegistryConfig < Struct.new(
      nil,
      :schema_registry_uri,
      :event_record_format,
      :access_configs,
      :schema_validation_configs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specific schema validation configuration settings that tell Lambda the message attributes you want to validate and filter using your schema registry.</p>
    # @!attribute attribute
    #   <p> The attributes you want your schema registry to validate and filter for. If you selected <code>JSON</code> as the <code>EventRecordFormat</code>, Lambda also deserializes the selected message attributes. </p>
    #   @return [String]
    class KafkaSchemaValidationConfig < Struct.new(
      nil,
      :attribute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Lambda-managed instances used by the capacity provider.</p>
    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the capacity provider.</p>
    #   @return [String]
    # @!attribute per_execution_environment_max_concurrency
    #   <p>The maximum number of concurrent execution environments that can run on each compute instance.</p>
    #   @return [Integer]
    # @!attribute execution_environment_memory_gi_b_per_v_cpu
    #   <p>The amount of memory in GiB allocated per vCPU for execution environments.</p>
    #   @return [Float]
    class LambdaManagedInstancesCapacityProviderConfig < Struct.new(
      nil,
      :capacity_provider_arn,
      :per_execution_environment_max_concurrency,
      :execution_environment_memory_gi_b_per_v_cpu,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the function layer.</p>
    #   @return [String]
    # @!attribute code_size
    #   <p>The size of the layer archive in bytes.</p>
    #   @return [Integer]
    # @!attribute signing_profile_version_arn
    #   <p>The Amazon Resource Name (ARN) for a signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The Amazon Resource Name (ARN) of a signing job.</p>
    #   @return [String]
    class Layer < Struct.new(
      nil,
      :arn,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code_size] = 0 unless options.key?(:code_size)
        super
      end
    end

    # <p>A ZIP archive that contains the contents of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>. You can specify either an Amazon S3 location, or upload a layer archive directly.</p>
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket of the layer archive.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The Amazon S3 key of the layer archive.</p>
    #   @return [String]
    # @!attribute s3_object_version
    #   <p>For versioned objects, the version of the layer archive object to use.</p>
    #   @return [String]
    # @!attribute s3_object_storage_mode
    #   <p>Specifies how the layer archive is stored. Valid values:</p> <ul> <li> <p> <code>COPY</code> (default) – Uploads a copy of your layer archive to Lambda.</p> </li> <li> <p> <code>REFERENCE</code> – Lambda references the layer archive from the specified Amazon S3 bucket.</p> </li> </ul>
    #   @return [String]
    # @!attribute zip_file
    #   <p>The base64-encoded contents of the layer archive. Amazon Web Services SDK and Amazon Web Services CLI clients handle the encoding for you.</p>
    #   @return [String]
    class LayerVersionContentInput < Struct.new(
      nil,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :s3_object_storage_mode,
      :zip_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>.</p>
    # @!attribute location
    #   <p>A link to the layer archive in Amazon S3 that is valid for 10 minutes.</p>
    #   @return [String]
    # @!attribute code_sha256
    #   <p>The SHA-256 hash of the layer archive.</p>
    #   @return [String]
    # @!attribute code_size
    #   <p>The size of the layer archive in bytes.</p>
    #   @return [Integer]
    # @!attribute signing_profile_version_arn
    #   <p>The Amazon Resource Name (ARN) for a signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The Amazon Resource Name (ARN) of a signing job.</p>
    #   @return [String]
    # @!attribute resolved_s3_object
    #   <p>The resolved Amazon S3 object that contains the layer archive.</p>
    #   @return [Types::ResolvedS3Object]
    class LayerVersionContentOutput < Struct.new(
      nil,
      :location,
      :code_sha256,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn,
      :resolved_s3_object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code_size] = 0 unless options.key?(:code_size)
        super
      end
    end

    # <p>Details about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>.</p>
    # @!attribute layer_version_arn
    #   <p>The ARN of the layer version.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date that the version was created, in ISO 8601 format. For example, <code>2018-11-27T15:10:45.123+0000</code>.</p>
    #   @return [String]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's open-source license.</p>
    #   @return [String]
    class LayerVersionsListItem < Struct.new(
      nil,
      :layer_version_arn,
      :version,
      :description,
      :created_date,
      :compatible_architectures,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>Details about an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>.</p>
    # @!attribute layer_name
    #   <p>The name of the layer.</p>
    #   @return [String]
    # @!attribute layer_arn
    #   <p>The Amazon Resource Name (ARN) of the function layer.</p>
    #   @return [String]
    # @!attribute latest_matching_version
    #   <p>The newest version of the layer.</p>
    #   @return [Types::LayerVersionsListItem]
    class LayersListItem < Struct.new(
      nil,
      :layer_name,
      :layer_arn,
      :latest_matching_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>Specify a function version to only list aliases that invoke that version.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Limit the number of aliases returned.</p>
    #   @return [Integer]
    class ListAliasesRequest < Struct.new(
      nil,
      :function_name,
      :function_version,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute aliases
    #   <p>A list of aliases.</p>
    #   @return [Array<Types::AliasConfiguration>]
    class ListAliasesResponse < Struct.new(
      nil,
      :next_marker,
      :aliases,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>Filter capacity providers by their current state.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of capacity providers to return.</p>
    #   @return [Integer]
    class ListCapacityProvidersRequest < Struct.new(
      nil,
      :state,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_providers
    #   <p>A list of capacity providers in your account.</p>
    #   @return [Array<Types::CapacityProvider>]
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListCapacityProvidersResponse < Struct.new(
      nil,
      :capacity_providers,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Maximum number of items to return.</p>
    #   @return [Integer]
    class ListCodeSigningConfigsRequest < Struct.new(
      nil,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute code_signing_configs
    #   <p>The code signing configurations</p>
    #   @return [Array<Types::CodeSigningConfig>]
    class ListCodeSigningConfigsResponse < Struct.new(
      nil,
      :next_marker,
      :code_signing_configs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function. You can specify a function name, a partial ARN, or a full ARN.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The function version to filter executions by. If you don't specify a qualifier, this operation returns executions across all versions of the Lambda function.</p>
    #   @return [String]
    # @!attribute durable_execution_name
    #   <p>Filter executions by name. Only executions with names that matches this string are returned.</p>
    #   @return [String]
    # @!attribute statuses
    #   <p>Filter executions by status. Valid values: RUNNING, SUCCEEDED, FAILED, TIMED_OUT, STOPPED.</p>
    #   @return [Array<String>]
    # @!attribute started_after
    #   <p>Filter executions that started after this timestamp (ISO 8601 format).</p>
    #   @return [Time]
    # @!attribute started_before
    #   <p>Filter executions that started before this timestamp (ISO 8601 format).</p>
    #   @return [Time]
    # @!attribute reverse_order
    #   <p>Set to true to return results in chronological order (oldest first). Default is false.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>Pagination token from a previous request to continue retrieving results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Maximum number of executions to return (1-1000). Default is 100.</p>
    #   @return [Integer]
    class ListDurableExecutionsByFunctionRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      :durable_execution_name,
      :statuses,
      :started_after,
      :started_before,
      :reverse_order,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the ListDurableExecutionsByFunction operation, containing a list of durable executions and pagination information.</p>
    # @!attribute durable_executions
    #   <p>List of durable execution summaries matching the filter criteria.</p>
    #   @return [Array<Types::Execution>]
    # @!attribute next_marker
    #   <p>Pagination token for retrieving additional results. Present only if there are more results available.</p>
    #   @return [String]
    class ListDurableExecutionsByFunctionResponse < Struct.new(
      nil,
      :durable_executions,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p> <ul> <li> <p> <b>Amazon Kinesis</b> – The ARN of the data stream or a stream consumer.</p> </li> <li> <p> <b>Amazon DynamoDB Streams</b> – The ARN of the stream.</p> </li> <li> <p> <b>Amazon Simple Queue Service</b> – The ARN of the queue.</p> </li> <li> <p> <b>Amazon Managed Streaming for Apache Kafka</b> – The ARN of the cluster or the ARN of the VPC connection (for <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#msk-multi-vpc">cross-account event source mappings</a>).</p> </li> <li> <p> <b>Amazon MQ</b> – The ARN of the broker.</p> </li> <li> <p> <b>Amazon DocumentDB</b> – The ARN of the DocumentDB change stream.</p> </li> </ul>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Version or Alias ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>A pagination token returned by a previous call.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of event source mappings to return. Note that ListEventSourceMappings returns a maximum of 100 items in each response, even if you set the number higher.</p>
    #   @return [Integer]
    class ListEventSourceMappingsRequest < Struct.new(
      nil,
      :event_source_arn,
      :function_name,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>A pagination token that's returned when the response doesn't contain all event source mappings.</p>
    #   @return [String]
    # @!attribute event_source_mappings
    #   <p>A list of event source mappings.</p>
    #   @return [Array<Types::EventSourceMappingConfiguration>]
    class ListEventSourceMappingsResponse < Struct.new(
      nil,
      :next_marker,
      :event_source_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of configurations to return.</p>
    #   @return [Integer]
    class ListFunctionEventInvokeConfigsRequest < Struct.new(
      nil,
      :function_name,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_event_invoke_configs
    #   <p>A list of configurations.</p>
    #   @return [Array<Types::FunctionEventInvokeConfig>]
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListFunctionEventInvokeConfigsResponse < Struct.new(
      nil,
      :function_event_invoke_configs,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of function URLs to return in the response. Note that <code>ListFunctionUrlConfigs</code> returns a maximum of 50 items in each response, even if you set the number higher.</p>
    #   @return [Integer]
    class ListFunctionUrlConfigsRequest < Struct.new(
      nil,
      :function_name,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_url_configs
    #   <p>A list of function URL configurations.</p>
    #   @return [Array<Types::FunctionUrlConfig>]
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListFunctionUrlConfigsResponse < Struct.new(
      nil,
      :function_url_configs,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_name
    #   <p>The name of the capacity provider to list function versions for.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of function versions to return in the response.</p>
    #   @return [Integer]
    class ListFunctionVersionsByCapacityProviderRequest < Struct.new(
      nil,
      :capacity_provider_name,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the capacity provider.</p>
    #   @return [String]
    # @!attribute function_versions
    #   <p>A list of function versions that use the specified capacity provider.</p>
    #   @return [Array<Types::FunctionVersionsByCapacityProviderListItem>]
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListFunctionVersionsByCapacityProviderResponse < Struct.new(
      nil,
      :capacity_provider_arn,
      :function_versions,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Maximum number of items to return.</p>
    #   @return [Integer]
    class ListFunctionsByCodeSigningConfigRequest < Struct.new(
      nil,
      :code_signing_config_arn,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute function_arns
    #   <p>The function ARNs. </p>
    #   @return [Array<String>]
    class ListFunctionsByCodeSigningConfigResponse < Struct.new(
      nil,
      :next_marker,
      :function_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute master_region
    #   <p>For Lambda@Edge functions, the Amazon Web Services Region of the master function. For example, <code>us-east-1</code> filters the list of functions to include only Lambda@Edge functions replicated from a master function in US East (N. Virginia). If specified, you must set <code>FunctionVersion</code> to <code>ALL</code>.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>Set to <code>ALL</code> to include entries for all published versions of each function.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of functions to return in the response. Note that <code>ListFunctions</code> returns a maximum of 50 items in each response, even if you set the number higher.</p>
    #   @return [Integer]
    class ListFunctionsRequest < Struct.new(
      nil,
      :master_region,
      :function_version,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of Lambda functions.</p>
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute functions
    #   <p>A list of Lambda functions.</p>
    #   @return [Array<Types::FunctionConfiguration>]
    class ListFunctionsResponse < Struct.new(
      nil,
      :next_marker,
      :functions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compatible_architecture
    #   <p>The compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
    #   @return [String]
    # @!attribute compatible_runtime
    #   <p>A runtime identifier.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>A pagination token returned by a previous call.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of versions to return.</p>
    #   @return [Integer]
    class ListLayerVersionsRequest < Struct.new(
      nil,
      :compatible_architecture,
      :compatible_runtime,
      :layer_name,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>A pagination token returned when the response doesn't contain all versions.</p>
    #   @return [String]
    # @!attribute layer_versions
    #   <p>A list of versions.</p>
    #   @return [Array<Types::LayerVersionsListItem>]
    class ListLayerVersionsResponse < Struct.new(
      nil,
      :next_marker,
      :layer_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compatible_architecture
    #   <p>The compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
    #   @return [String]
    # @!attribute compatible_runtime
    #   <p>A runtime identifier.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>A pagination token returned by a previous call.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of layers to return.</p>
    #   @return [Integer]
    class ListLayersRequest < Struct.new(
      nil,
      :compatible_architecture,
      :compatible_runtime,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>A pagination token returned when the response doesn't contain all layers.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>A list of function layers.</p>
    #   @return [Array<Types::LayersListItem>]
    class ListLayersResponse < Struct.new(
      nil,
      :next_marker,
      :layers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Specify a number to limit the number of configurations returned.</p>
    #   @return [Integer]
    class ListProvisionedConcurrencyConfigsRequest < Struct.new(
      nil,
      :function_name,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_concurrency_configs
    #   <p>A list of provisioned concurrency configurations.</p>
    #   @return [Array<Types::ProvisionedConcurrencyConfigListItem>]
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListProvisionedConcurrencyConfigsResponse < Struct.new(
      nil,
      :provisioned_concurrency_configs,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The resource's Amazon Resource Name (ARN). Note: Lambda does not support adding tags to function aliases or versions.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      nil,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The function's tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of versions to return. Note that <code>ListVersionsByFunction</code> returns a maximum of 50 items in each response, even if you set the number higher.</p>
    #   @return [Integer]
    class ListVersionsByFunctionRequest < Struct.new(
      nil,
      :function_name,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute versions
    #   <p>A list of Lambda function versions.</p>
    #   @return [Array<Types::FunctionConfiguration>]
    class ListVersionsByFunctionResponse < Struct.new(
      nil,
      :next_marker,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    # @!attribute log_format
    #   <p>The format in which Lambda sends your function's application and system logs to CloudWatch. Select between plain text and structured JSON.</p>
    #   @return [String]
    # @!attribute application_log_level
    #   <p>Set this property to filter the application logs for your function that Lambda sends to CloudWatch. Lambda only sends application logs at the selected level of detail and lower, where <code>TRACE</code> is the highest level and <code>FATAL</code> is the lowest.</p>
    #   @return [String]
    # @!attribute system_log_level
    #   <p>Set this property to filter the system logs for your function that Lambda sends to CloudWatch. Lambda only sends system logs at the selected level of detail and lower, where <code>DEBUG</code> is the highest level and <code>WARN</code> is the lowest.</p>
    #   @return [String]
    # @!attribute log_group
    #   <p>The name of the Amazon CloudWatch log group the function sends logs to. By default, Lambda functions send logs to a default log group named <code>/aws/lambda/&lt;function name&gt;</code>. To use a different log group, enter an existing log group or enter a new log group name.</p>
    #   @return [String]
    class LoggingConfig < Struct.new(
      nil,
      :log_format,
      :application_log_level,
      :system_log_level,
      :log_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function doesn't support the invocation mode requested. For example, calling <code>Invoke</code> with <code>InvocationType=RequestResponse</code> on a function configured for asynchronous-only invocation, or vice versa. For more information about invocation types, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-options.html">Invoking Lambda functions</a>.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ModeNotSupportedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The function has no published versions available.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class NoPublishedVersionException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A destination for events that failed processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations">Adding a destination</a>.</p>
    # @!attribute destination
    #   <p>The Amazon Resource Name (ARN) of the destination resource.</p> <p>To retain records of failed invocations from <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html">Kinesis</a>, <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html">DynamoDB</a>, <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-on-failure.html">self-managed Apache Kafka</a>, or <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-on-failure.html">Amazon MSK</a>, you can configure an Amazon SNS topic, Amazon SQS queue, Amazon S3 bucket, or Kafka topic as the destination.</p> <note> <p>Amazon SNS destinations have a message size limit of 256 KB. If the combined size of the function request and response payload exceeds the limit, Lambda will drop the payload when sending <code>OnFailure</code> event to the destination. For details on this behavior, refer to <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html">Retaining records of asynchronous invocations</a>.</p> </note> <p>To retain records of failed invocations from <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html">Kinesis</a>, <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html">DynamoDB</a>, <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-smaa-onfailure-destination">self-managed Kafka</a> or <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-onfailure-destination">Amazon MSK</a>, you can configure an Amazon SNS topic, Amazon SQS queue, or Amazon S3 bucket as the destination.</p>
    #   @return [String]
    class OnFailure < Struct.new(
      nil,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A destination for events that were processed successfully.</p> <p>To retain records of successful <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations">asynchronous invocations</a>, you can configure an Amazon SNS topic, Amazon SQS queue, Lambda function, or Amazon EventBridge event bus as the destination.</p> <note> <p> <code>OnSuccess</code> is not supported in <code>CreateEventSourceMapping</code> or <code>UpdateEventSourceMapping</code> requests.</p> </note>
    # @!attribute destination
    #   <p>The Amazon Resource Name (ARN) of the destination resource.</p> <note> <p>Amazon SNS destinations have a message size limit of 256 KB. If the combined size of the function request and response payload exceeds the limit, Lambda will drop the payload when sending <code>OnFailure</code> event to the destination. For details on this behavior, refer to <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html">Retaining records of asynchronous invocations</a>.</p> </note>
    #   @return [String]
    class OnSuccess < Struct.new(
      nil,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an operation within a durable execution.</p>
    # @!attribute id
    #   <p>The unique identifier for this operation.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The unique identifier of the parent operation, if this operation is running within a child context.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-provided name for this operation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of operation.</p>
    #   @return [String]
    # @!attribute sub_type
    #   <p>The subtype of the operation, providing additional categorization.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The date and time when the operation started, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>The date and time when the operation ended, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the operation.</p>
    #   @return [String]
    # @!attribute execution_details
    #   <p>Details about the execution, if this operation represents an execution.</p>
    #   @return [Types::ExecutionDetails]
    # @!attribute context_details
    #   <p>Details about the context, if this operation represents a context.</p>
    #   @return [Types::ContextDetails]
    # @!attribute step_details
    #   <p>Details about the step, if this operation represents a step.</p>
    #   @return [Types::StepDetails]
    # @!attribute wait_details
    #   <p>Details about the wait operation, if this operation represents a wait.</p>
    #   @return [Types::WaitDetails]
    # @!attribute callback_details
    #   <p>Contains details about a callback operation in a durable execution, including the callback token and timeout configuration.</p>
    #   @return [Types::CallbackDetails]
    # @!attribute chained_invoke_details
    #   <p>Contains details about a chained function invocation in a durable execution, including the target function and invocation parameters.</p>
    #   @return [Types::ChainedInvokeDetails]
    class Operation < Struct.new(
      nil,
      :id,
      :parent_id,
      :name,
      :type,
      :sub_type,
      :start_timestamp,
      :end_timestamp,
      :status,
      :execution_details,
      :context_details,
      :step_details,
      :wait_details,
      :callback_details,
      :chained_invoke_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An update to be applied to an operation during checkpointing.</p>
    # @!attribute id
    #   <p>The unique identifier for this operation.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The unique identifier of the parent operation, if this operation is running within a child context.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-provided name for this operation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of operation to update.</p>
    #   @return [String]
    # @!attribute sub_type
    #   <p>The subtype of the operation, providing additional categorization.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action to take on the operation.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The payload for successful operations. The maximum payload size is 6 MB for synchronous <code>EXECUTION</code> operations (RequestResponse invocationType), 1 MB for asynchronous <code>EXECUTION</code> (Event invocationType) and <code>CHAINED_INVOKE</code> operations, and 256 KB for <code>CONTEXT</code>, <code>STEP</code>, <code>WAIT</code>, and <code>CALLBACK</code> operations.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error information for failed operations.</p>
    #   @return [Types::ErrorObject]
    # @!attribute context_options
    #   <p>Options for context operations.</p>
    #   @return [Types::ContextOptions]
    # @!attribute step_options
    #   <p>Options for step operations.</p>
    #   @return [Types::StepOptions]
    # @!attribute wait_options
    #   <p>Options for wait operations.</p>
    #   @return [Types::WaitOptions]
    # @!attribute callback_options
    #   <p>Configuration options for callback operations in durable executions, including timeout settings and retry behavior.</p>
    #   @return [Types::CallbackOptions]
    # @!attribute chained_invoke_options
    #   <p>Configuration options for chained function invocations in durable executions, including retry settings and timeout configuration.</p>
    #   @return [Types::ChainedInvokeOptions]
    class OperationUpdate < Struct.new(
      nil,
      :id,
      :parent_id,
      :name,
      :type,
      :sub_type,
      :action,
      :payload,
      :error,
      :context_options,
      :step_options,
      :wait_options,
      :callback_options,
      :chained_invoke_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The permissions policy for the resource is too large. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class PolicyLengthExceededException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The RevisionId provided does not match the latest RevisionId for the Lambda function or alias.</p> <ul> <li> <p> <b>For AddPermission and RemovePermission API operations:</b> Call <code>GetPolicy</code> to retrieve the latest RevisionId for your resource.</p> </li> <li> <p> <b>For all other API operations:</b> Call <code>GetFunction</code> or <code>GetAlias</code> to retrieve the latest RevisionId for your resource.</p> </li> </ul>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class PreconditionFailedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for tag propagation to managed resources launched by the capacity provider.</p>
    # @!attribute mode
    #   <p>The tag propagation mode. Set to <code>Explicit</code> to propagate the tags specified in <code>ExplicitTags</code> to managed resources. Set to <code>None</code> to disable tag propagation.</p>
    #   @return [String]
    # @!attribute explicit_tags
    #   <p>A list of tags to apply to managed resources when <code>Mode</code> is set to <code>Explicit</code>. You can specify up to 40 tags.</p>
    #   @return [Hash<String, String>]
    class PropagateTags < Struct.new(
      nil,
      :mode,
      :explicit_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the provisioned concurrency configuration for a function alias or version.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the alias or version.</p>
    #   @return [String]
    # @!attribute requested_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency requested.</p>
    #   @return [Integer]
    # @!attribute available_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency available.</p>
    #   @return [Integer]
    # @!attribute allocated_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency allocated. When a weighted alias is used during linear and canary deployments, this value fluctuates depending on the amount of concurrency that is provisioned for the function versions.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the allocation process.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>For failed allocations, the reason that provisioned concurrency could not be allocated.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that a user last updated the configuration, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601 format</a>.</p>
    #   @return [String]
    class ProvisionedConcurrencyConfigListItem < Struct.new(
      nil,
      :function_arn,
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified configuration does not exist.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ProvisionedConcurrencyConfigNotFoundException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode"> provisioned mode</a> configuration for the event source. Use Provisioned Mode to customize the minimum and maximum number of event pollers for your event source.</p>
    # @!attribute minimum_pollers
    #   <p>The minimum number of event pollers this event source can scale down to. For Amazon SQS events source mappings, default is 2, and minimum 2 required. For Amazon MSK and self-managed Apache Kafka event source mappings, default is 1.</p>
    #   @return [Integer]
    # @!attribute maximum_pollers
    #   <p>The maximum number of event pollers this event source can scale up to. For Amazon SQS event source mappings, the accepted range is between 2 and 10,000, with a default of 200. For Amazon MSK and self-managed Apache Kafka event source mappings, the accepted range is between 1 and 2,000, with a default of 200.</p>
    #   @return [Integer]
    # @!attribute poller_group_name
    #   <p>(Amazon MSK and self-managed Apache Kafka) The name of the provisioned poller group. Use this option to group multiple ESMs within the event source's VPC to share Event Poller Unit (EPU) capacity. You can use this option to optimize Provisioned mode costs for your ESMs. You can group up to 100 ESMs per poller group and aggregate maximum pollers across all ESMs in a group cannot exceed 2000.</p>
    #   @return [String]
    class ProvisionedPollerConfig < Struct.new(
      nil,
      :minimum_pollers,
      :maximum_pollers,
      :poller_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource-based policy you tried to add to the Lambda resource would grant public access to it, which isn't allowed.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class PublicPolicyException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The function layer archive.</p>
    #   @return [Types::LayerVersionContentInput]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    # @!attribute compatible_runtimes
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">function runtimes</a>. Used for filtering with <a>ListLayers</a> and <a>ListLayerVersions</a>.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy">Runtime deprecation policy</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's software license. It can be any of the following:</p> <ul> <li> <p>An <a href="https://spdx.org/licenses/">SPDX license identifier</a>. For example, <code>MIT</code>.</p> </li> <li> <p>The URL of a license hosted on the internet. For example, <code>https://opensource.org/licenses/MIT</code>.</p> </li> <li> <p>The full text of the license.</p> </li> </ul>
    #   @return [String]
    class PublishLayerVersionRequest < Struct.new(
      nil,
      :layer_name,
      :description,
      :content,
      :compatible_architectures,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>Details about the layer version.</p>
    #   @return [Types::LayerVersionContentOutput]
    # @!attribute layer_arn
    #   <p>The ARN of the layer.</p>
    #   @return [String]
    # @!attribute layer_version_arn
    #   <p>The ARN of the layer version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date that the layer version was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number.</p>
    #   @return [Integer]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's software license.</p>
    #   @return [String]
    class PublishLayerVersionResponse < Struct.new(
      nil,
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_architectures,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>Details about a function's configuration.</p>
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The function's execution role.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The function that Lambda calls to begin running your function.</p>
    #   @return [String]
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The function's description.</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime.</p>
    #   @return [Integer]
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #   @return [Types::VpcConfigResponse]
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute environment
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html">environment variables</a>. Omitted from CloudTrail logs.</p>
    #   @return [Types::EnvironmentResponse]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #   @return [String]
    # @!attribute tracing_config
    #   <p>The function's X-Ray tracing configuration.</p>
    #   @return [Types::TracingConfigResponse]
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the main function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">layers</a>.</p>
    #   @return [Array<Types::Layer>]
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by invoking it.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or modify the function.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code> after function creation completes.</p>
    #   @return [String]
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute file_system_configs
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a> or an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon S3 file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute architectures
    #   <p>The instruction set architecture that the function supports. Architecture is a string array with one of the valid values. The default architecture value is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    #   @return [Types::EphemeralStorage]
    # @!attribute snap_start
    #   <p>Set <code>ApplyOn</code> to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Improving startup performance with Lambda SnapStart</a>.</p>
    #   @return [Types::SnapStartResponse]
    # @!attribute runtime_version_config
    #   <p>The ARN of the runtime and any errors that occured.</p>
    #   @return [Types::RuntimeVersionConfig]
    # @!attribute logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute tenancy_config
    #   <p>The function's tenant isolation configuration settings. Determines whether the Lambda function runs on a shared or dedicated infrastructure per unique tenant.</p>
    #   @return [Types::TenancyConfig]
    # @!attribute capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    #   @return [Types::CapacityProviderConfig]
    # @!attribute config_sha256
    #   <p>The SHA256 hash of the function configuration.</p>
    #   @return [String]
    # @!attribute durable_config
    #   <p>The function's durable execution configuration settings, if the function is configured for durability.</p>
    #   @return [Types::DurableConfig]
    class PublishVersionOutput < Struct.new(
      nil,
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :signing_profile_version_arn,
      :signing_job_arn,
      :package_type,
      :image_config_response,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      :tenancy_config,
      :capacity_provider_config,
      :config_sha256,
      :durable_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code_size] = 0 unless options.key?(:code_size)
        super
      end
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute code_sha256
    #   <p>Only publish a version if the hash value matches the value that's specified. Use this option to avoid publishing a version if the function code has changed since you last updated it. You can get the hash for the version that you uploaded from the output of <a>UpdateFunctionCode</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the version to override the description in the function configuration.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid publishing a version if the function configuration has changed since you last updated it.</p>
    #   @return [String]
    # @!attribute publish_to
    #   <p>Specifies where to publish the function version or configuration.</p>
    #   @return [String]
    class PublishVersionRequest < Struct.new(
      nil,
      :function_name,
      :code_sha256,
      :description,
      :revision_id,
      :publish_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class PutFunctionCodeSigningConfigRequest < Struct.new(
      nil,
      :code_signing_config_arn,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class PutFunctionCodeSigningConfigResponse < Struct.new(
      nil,
      :code_signing_config_arn,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reserved_concurrent_executions
    #   <p>The number of concurrent executions that are reserved for this function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-concurrency.html">Managing Lambda reserved concurrency</a>.</p>
    #   @return [Integer]
    class PutFunctionConcurrencyOutput < Struct.new(
      nil,
      :reserved_concurrent_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute reserved_concurrent_executions
    #   <p>The number of simultaneous executions to reserve for the function.</p>
    #   @return [Integer]
    class PutFunctionConcurrencyRequest < Struct.new(
      nil,
      :function_name,
      :reserved_concurrent_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute last_modified
    #   <p>The date and time that the configuration was last updated.</p>
    #   @return [Time]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #   @return [String]
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #   @return [Integer]
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #   @return [Integer]
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p> <p class="title"> <b>Destinations</b> </p> <ul> <li> <p> <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p> </li> <li> <p> <b>Queue</b> - The ARN of a standard SQS queue.</p> </li> <li> <p> <b>Bucket</b> - The ARN of an Amazon S3 bucket.</p> </li> <li> <p> <b>Topic</b> - The ARN of a standard SNS topic.</p> </li> <li> <p> <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p> </li> </ul> <note> <p>S3 buckets are supported only for on-failure destinations. To retain records of successful invocations, use another destination type.</p> </note>
    #   @return [Types::DestinationConfig]
    class PutFunctionEventInvokeConfigOutput < Struct.new(
      nil,
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #   @return [String]
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #   @return [Integer]
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #   @return [Integer]
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p> <p class="title"> <b>Destinations</b> </p> <ul> <li> <p> <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p> </li> <li> <p> <b>Queue</b> - The ARN of a standard SQS queue.</p> </li> <li> <p> <b>Bucket</b> - The ARN of an Amazon S3 bucket.</p> </li> <li> <p> <b>Topic</b> - The ARN of a standard SNS topic.</p> </li> <li> <p> <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p> </li> </ul> <note> <p>S3 buckets are supported only for on-failure destinations. To retain records of successful invocations, use another destination type.</p> </note>
    #   @return [Types::DestinationConfig]
    class PutFunctionEventInvokeConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute recursive_loop
    #   <p>If you set your function's recursive loop detection configuration to <code>Allow</code>, Lambda doesn't take any action when it detects your function being invoked as part of a recursive loop. We recommend that you only use this setting if your design intentionally uses a Lambda function to write data back to the same Amazon Web Services resource that invokes it.</p> <p>If you set your function's recursive loop detection configuration to <code>Terminate</code>, Lambda stops your function being invoked and notifies you when it detects your function being invoked as part of a recursive loop.</p> <p>By default, Lambda sets your function's configuration to <code>Terminate</code>.</p> <important> <p>If your design intentionally uses a Lambda function to write data back to the same Amazon Web Services resource that invokes the function, then use caution and implement suitable guard rails to prevent unexpected charges being billed to your Amazon Web Services account. To learn more about best practices for using recursive invocation patterns, see <a href="https://serverlessland.com/content/service/lambda/guides/aws-lambda-operator-guide/recursive-runaway">Recursive patterns that cause run-away Lambda functions</a> in Serverless Land.</p> </important>
    #   @return [String]
    class PutFunctionRecursionConfigRequest < Struct.new(
      nil,
      :function_name,
      :recursive_loop,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recursive_loop
    #   <p>The status of your function's recursive loop detection configuration.</p> <p>When this value is set to <code>Allow</code>and Lambda detects your function being invoked as part of a recursive loop, it doesn't take any action.</p> <p>When this value is set to <code>Terminate</code> and Lambda detects your function being invoked as part of a recursive loop, it stops your function being invoked and notifies you. </p>
    #   @return [String]
    class PutFunctionRecursionConfigResponse < Struct.new(
      nil,
      :recursive_loop,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to set the scaling configuration for a published version of the function.</p>
    #   @return [String]
    # @!attribute function_scaling_config
    #   <p>The scaling configuration to apply to the function, including minimum and maximum execution environment limits.</p>
    #   @return [Types::FunctionScalingConfig]
    class PutFunctionScalingConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      :function_scaling_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_state
    #   <p>The current state of the function after applying the scaling configuration.</p>
    #   @return [String]
    class PutFunctionScalingConfigResponse < Struct.new(
      nil,
      :function_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The version number or alias name.</p>
    #   @return [String]
    # @!attribute provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency to allocate for the version or alias.</p>
    #   @return [Integer]
    class PutProvisionedConcurrencyConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      :provisioned_concurrent_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute requested_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency requested.</p>
    #   @return [Integer]
    # @!attribute allocated_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency allocated. When a weighted alias is used during linear and canary deployments, this value fluctuates depending on the amount of concurrency that is provisioned for the function versions.</p>
    #   @return [Integer]
    # @!attribute available_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency available.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the allocation process.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>For failed allocations, the reason that provisioned concurrency could not be allocated.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that a user last updated the configuration, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601 format</a>.</p>
    #   @return [String]
    class PutProvisionedConcurrencyConfigResponse < Struct.new(
      nil,
      :requested_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda resource you want to add the policy to. You can use a qualified or an unqualified ARN. The value must be a complete ARN, and the operation does not accept wildcard characters.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy document you want to add to your Lambda resource. This is formatted as a JSON string.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">Working with resource-based policies in Lambda</a> in the <i>Lambda Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID that the existing policy must match for the replacement to proceed. If the revision ID doesn't match, the operation fails with a <code>PreconditionFailedException</code> error. To retrieve the current revision ID, use the <a>GetResourcePolicy</a> operation.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy that Lambda adds to the resource.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the policy that Lambda adds to your Lambda resource.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      nil,
      :policy,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version of the function. This can be <code>$LATEST</code> or a published version number. If no value is specified, the configuration for the <code>$LATEST</code> version is returned.</p>
    #   @return [String]
    # @!attribute update_runtime_on
    #   <p>Specify the runtime update mode.</p> <ul> <li> <p> <b>Auto (default)</b> - Automatically update to the most recent and secure runtime version using a <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase">Two-phase runtime version rollout</a>. This is the best choice for most customers to ensure they always benefit from runtime updates.</p> </li> <li> <p> <b>Function update</b> - Lambda updates the runtime of your function to the most recent and secure runtime version when you update your function. This approach synchronizes runtime updates with function deployments, giving you control over when runtime updates are applied and allowing you to detect and mitigate rare runtime update incompatibilities early. When using this setting, you need to regularly update your functions to keep their runtime up-to-date.</p> </li> <li> <p> <b>Manual</b> - You specify a runtime version in your function configuration. The function will use this runtime version indefinitely. In the rare case where a new runtime version is incompatible with an existing function, this allows you to roll back your function to an earlier runtime version. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback">Roll back a runtime version</a>.</p> </li> </ul>
    #   @return [String]
    # @!attribute runtime_version_arn
    #   <p>The ARN of the runtime version you want the function to use.</p> <note> <p>This is only required if you're using the <b>Manual</b> runtime update mode.</p> </note>
    #   @return [String]
    class PutRuntimeManagementConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      :update_runtime_on,
      :runtime_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_runtime_on
    #   <p>The runtime update mode.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The ARN of the function</p>
    #   @return [String]
    # @!attribute runtime_version_arn
    #   <p>The ARN of the runtime the function is configured to use. If the runtime update mode is <b>manual</b>, the ARN is returned, otherwise <code>null</code> is returned.</p>
    #   @return [String]
    class PutRuntimeManagementConfigResponse < Struct.new(
      nil,
      :update_runtime_on,
      :function_arn,
      :runtime_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda has detected your function being invoked in a recursive loop with other Amazon Web Services resources and stopped your function's invocation.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class RecursiveInvocationException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number.</p>
    #   @return [Integer]
    # @!attribute statement_id
    #   <p>The identifier that was specified when the statement was added.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a policy that has changed since you last read it.</p>
    #   @return [String]
    class RemoveLayerVersionPermissionRequest < Struct.new(
      nil,
      :layer_name,
      :version_number,
      :statement_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>Statement ID of the permission to remove.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to remove permissions from a published version of the function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>Update the policy only if the revision ID matches the ID that's specified. Use this option to avoid modifying a policy that has changed since you last read it.</p>
    #   @return [String]
    class RemovePermissionRequest < Struct.new(
      nil,
      :function_name,
      :statement_id,
      :qualifier,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request payload exceeded the <code>Invoke</code> request body JSON input quota. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class RequestTooLargeException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the resolved Amazon S3 object that contains a function's deployment package.</p>
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket that contains the deployment package.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The Amazon S3 key of the deployment package.</p>
    #   @return [String]
    # @!attribute s3_object_version
    #   <p>The version of the deployment package object.</p>
    #   @return [String]
    class ResolvedS3Object < Struct.new(
      nil,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource already exists, or another operation is in progress.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ResourceConflictException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation conflicts with the resource's availability. For example, you tried to update an event source mapping in the CREATING state, or you tried to delete an event source mapping currently UPDATING.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource specified in the request does not exist.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The function is inactive and its VPC connection is no longer available. Wait for the VPC connection to reestablish and try again.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ResourceNotReadyException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about retry attempts for an operation.</p>
    # @!attribute current_attempt
    #   <p>The current attempt number for this operation.</p>
    #   @return [Integer]
    # @!attribute next_attempt_delay_seconds
    #   <p>The delay before the next retry attempt, in seconds.</p>
    #   @return [Integer]
    class RetryDetails < Struct.new(
      nil,
      :current_attempt,
      :next_attempt_delay_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:current_attempt] = 0 unless options.key?(:current_attempt)
        super
      end
    end

    # <p>The ARN of the runtime and any errors that occured.</p>
    # @!attribute runtime_version_arn
    #   <p>The ARN of the runtime version you want the function to use.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Error response when Lambda is unable to retrieve the runtime version for a function.</p>
    #   @return [Types::RuntimeVersionError]
    class RuntimeVersionConfig < Struct.new(
      nil,
      :runtime_version_arn,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Any error returned when the runtime version information for the function could not be retrieved.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class RuntimeVersionError < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Setting controls how your function accesses data from an Amazon S3 file system.</p>
    # @!attribute direct_s3_read
    #   <p>Specifies if a function reads from the file system for the lowest latency, or through Amazon S3 Files feature "direct Amazon S3 bucket reads" for the highest throughput. Valid values:</p> <ul> <li> <p> <code>AUTO</code> (default) – Direct reads are active for functions you configure with 512 MB or more of memory.</p> </li> <li> <p> <code>ENABLED</code> – Enforces all reads are directly from the Amazon S3 bucket, regardless of available memory (less than 512 MB).</p> </li> <li> <p> <code>DISABLED</code> – Routes all reads through the file system, regardless of memory configuration.</p> </li> </ul> <p>To use direct reads, you must grant the execution role the <code>s3:GetObject</code> and <code>s3:GetObjectVersion</code> permissions. If a direct read fails, Lambda automatically falls back to reading through the file system.</p>
    #   @return [String]
    class S3FilesConfig < Struct.new(
      nil,
      :direct_s3_read,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function couldn't make a network connection to the configured S3 Files access point.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class S3FilesMountConnectivityException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function couldn't mount the configured S3 Files access point due to a permission or configuration issue.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class S3FilesMountFailureException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function made a network connection to the configured S3 Files access point, but the mount operation timed out.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class S3FilesMountTimeoutException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>(Amazon SQS only) The scaling configuration for the event source. To remove the configuration, pass an empty value.</p>
    # @!attribute maximum_concurrency
    #   <p>Limits the number of concurrent instances that the Amazon SQS event source can invoke.</p>
    #   @return [Integer]
    class ScalingConfig < Struct.new(
      nil,
      :maximum_concurrency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The self-managed Apache Kafka cluster for your event source.</p>
    # @!attribute endpoints
    #   <p>The list of bootstrap servers for your Kafka brokers in the following format: <code>"KAFKA_BOOTSTRAP_SERVERS": ["abc.xyz.com:xxxx","abc2.xyz.com:xxxx"]</code>.</p>
    #   @return [Hash<String, Array<String>>]
    class SelfManagedEventSource < Struct.new(
      nil,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    # @!attribute consumer_group_id
    #   <p> The identifier for the Kafka consumer group to join. The consumer group ID must be unique among all your Kafka event sources. After creating a Kafka event source mapping with the consumer group ID specified, you cannot update this value. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka-process.html#services-smaa-topic-add">Customizable consumer group ID</a>.</p>
    #   @return [String]
    # @!attribute schema_registry_config
    #   <p>Specific configuration settings for a Kafka schema registry.</p>
    #   @return [Types::KafkaSchemaRegistryConfig]
    class SelfManagedKafkaEventSourceConfig < Struct.new(
      nil,
      :consumer_group_id,
      :schema_registry_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute callback_id
    #   <p>The unique identifier for the callback operation.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Error details describing why the callback operation failed.</p>
    #   @return [Types::ErrorObject]
    class SendDurableExecutionCallbackFailureRequest < Struct.new(
      nil,
      :callback_id,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SendDurableExecutionCallbackFailureResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute callback_id
    #   <p>The unique identifier for the callback operation.</p>
    #   @return [String]
    class SendDurableExecutionCallbackHeartbeatRequest < Struct.new(
      nil,
      :callback_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SendDurableExecutionCallbackHeartbeatResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute callback_id
    #   <p>The unique identifier for the callback operation.</p>
    #   @return [String]
    # @!attribute result
    #   <p>The result data from the successful callback operation. Maximum size is 256 KB.</p>
    #   @return [String]
    class SendDurableExecutionCallbackSuccessRequest < Struct.new(
      nil,
      :callback_id,
      :result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SendDurableExecutionCallbackSuccessResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request payload exceeded the maximum allowed size for serialized request entities.</p>
    # @!attribute type
    #   <p>The error type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class SerializedRequestEntityTooLargeException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda service encountered an internal error.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed a service quota. For more information about Lambda service quotas, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>. To request a quota increase, see <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html">Requesting a quota increase</a> in the <i>Service Quotas User Guide</i>.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Lambda SnapStart</a> setting. Set <code>ApplyOn</code> to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version.</p>
    # @!attribute apply_on
    #   <p>Set to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version.</p>
    #   @return [String]
    class SnapStart < Struct.new(
      nil,
      :apply_on,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>afterRestore()</code> <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-runtime-hooks.html">runtime hook</a> encountered an error. For more information, check the Amazon CloudWatch logs.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class SnapStartException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda is initializing your function. You can invoke the function when the <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">function state</a> becomes <code>Active</code>.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class SnapStartNotReadyException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda couldn't regenerate the SnapStart snapshot for the function. SnapStart-enabled functions periodically regenerate snapshots when their underlying runtime or dependencies change; this regeneration failed. Wait for Lambda to retry, or update the function's configuration to trigger a new snapshot. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Lambda SnapStart</a>.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class SnapStartRegenerationFailureException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
    # @!attribute apply_on
    #   <p>When set to <code>PublishedVersions</code>, Lambda creates a snapshot of the execution environment when you publish a function version.</p>
    #   @return [String]
    # @!attribute optimization_status
    #   <p>When you provide a <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using">qualified Amazon Resource Name (ARN)</a>, this response element indicates whether SnapStart is activated for the specified function version.</p>
    #   @return [String]
    class SnapStartResponse < Struct.new(
      nil,
      :apply_on,
      :optimization_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda couldn't restore the snapshot within the timeout limit.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class SnapStartTimeoutException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>To secure and define access to your event source, you can specify the authentication protocol, VPC components, or virtual host.</p>
    # @!attribute type
    #   <p>The type of authentication protocol, VPC components, or virtual host for your event source. For example: <code>"Type":"SASL_SCRAM_512_AUTH"</code>.</p> <ul> <li> <p> <code>BASIC_AUTH</code> – (Amazon MQ) The Secrets Manager secret that stores your broker credentials.</p> </li> <li> <p> <code>BASIC_AUTH</code> – (Self-managed Apache Kafka) The Secrets Manager ARN of your secret key used for SASL/PLAIN authentication of your Apache Kafka brokers.</p> </li> <li> <p> <code>VPC_SUBNET</code> – (Self-managed Apache Kafka) The subnets associated with your VPC. Lambda connects to these subnets to fetch data from your self-managed Apache Kafka cluster.</p> </li> <li> <p> <code>VPC_SECURITY_GROUP</code> – (Self-managed Apache Kafka) The VPC security group used to manage access to your self-managed Apache Kafka brokers.</p> </li> <li> <p> <code>SASL_SCRAM_256_AUTH</code> – (Self-managed Apache Kafka) The Secrets Manager ARN of your secret key used for SASL SCRAM-256 authentication of your self-managed Apache Kafka brokers.</p> </li> <li> <p> <code>SASL_SCRAM_512_AUTH</code> – (Amazon MSK, Self-managed Apache Kafka) The Secrets Manager ARN of your secret key used for SASL SCRAM-512 authentication of your self-managed Apache Kafka brokers.</p> </li> <li> <p> <code>VIRTUAL_HOST</code> –- (RabbitMQ) The name of the virtual host in your RabbitMQ broker. Lambda uses this RabbitMQ host as the event source. This property cannot be specified in an UpdateEventSourceMapping API call.</p> </li> <li> <p> <code>CLIENT_CERTIFICATE_TLS_AUTH</code> – (Amazon MSK, self-managed Apache Kafka) The Secrets Manager ARN of your secret key containing the certificate chain (X.509 PEM), private key (PKCS#8 PEM), and private key password (optional) used for mutual TLS authentication of your MSK/Apache Kafka brokers.</p> </li> <li> <p> <code>SERVER_ROOT_CA_CERTIFICATE</code> – (Self-managed Apache Kafka) The Secrets Manager ARN of your secret key containing the root CA certificate (X.509 PEM) used for TLS encryption of your Apache Kafka brokers. </p> </li> <li> <p> <code>OAUTHBEARER_AUTH</code> – (Self-managed Apache Kafka) The Secrets Manager ARN of your secret key containing the OAuth 2.0 credentials that Lambda uses for SASL/OAUTHBEARER authentication with your Apache Kafka brokers. For the contents of the secret, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-cluster-auth.html#smaa-auth-oauth-secret">Configuring the OAuth secret</a>.</p> </li> <li> <p> <code>OAUTHBEARER_SCOPE</code> – (Self-managed Apache Kafka) The OAuth 2.0 scope that Lambda requests when it acquires an access token. The <code>URI</code> field holds the scope value, not a secret ARN. This type requires <code>OAUTHBEARER_AUTH</code>.</p> </li> <li> <p> <code>OAUTHBEARER_AUDIENCE</code> – (Self-managed Apache Kafka) The OAuth 2.0 audience that Lambda requests when it acquires an access token. The <code>URI</code> field holds the audience value, not a secret ARN. This type requires either <code>OAUTHBEARER_AUTH</code> or <code>IAM_OAUTHBEARER_AUTH</code>.</p> </li> <li> <p> <code>OAUTHBEARER_LOGICAL_CLUSTER</code> – (Self-managed Apache Kafka) The logical cluster identifier that Lambda sends to a Confluent Cloud broker. The <code>URI</code> field holds the identifier, not a secret ARN. This type requires <code>OAUTHBEARER_AUTH</code>.</p> </li> <li> <p> <code>OAUTHBEARER_IDENTITY_POOL</code> – (Self-managed Apache Kafka) The identity pool identifier that Lambda sends to a Confluent Cloud broker. The <code>URI</code> field holds the identifier, not a secret ARN. This type requires <code>OAUTHBEARER_AUTH</code>.</p> </li> <li> <p> <code>IAM_AUTH</code> – (Self-managed Apache Kafka) Authenticate with Identity and Access Management (IAM). Your function's execution role signs each connection, so there is no secret to provide. Omit the <code>URI</code> field for this type.</p> </li> <li> <p> <code>IAM_OAUTHBEARER_AUTH</code> – (Self-managed Apache Kafka) Authenticate with an Amazon Web Services web identity token over SASL/OAUTHBEARER. Lambda requests the token for your function's execution role, so there is no secret to provide. Omit the <code>URI</code> field for this type. This type requires <code>OAUTHBEARER_AUDIENCE</code> and does not support the other <code>OAUTHBEARER</code> types.</p> </li> </ul>
    #   @return [String]
    # @!attribute uri
    #   <p>The value for your chosen configuration in <code>Type</code>. For example: <code>"URI": "arn:aws:secretsmanager:us-east-1:01234567890:secret:MyBrokerSecretName"</code>.</p>
    #   @return [String]
    class SourceAccessConfiguration < Struct.new(
      nil,
      :type,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a step operation.</p>
    # @!attribute attempt
    #   <p>The current attempt number for this step.</p>
    #   @return [Integer]
    # @!attribute next_attempt_timestamp
    #   <p>The date and time when the next attempt is scheduled, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD). Only populated when the step is in a pending state.</p>
    #   @return [Time]
    # @!attribute result
    #   <p>The JSON response payload from the step operation.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Details about the step failure.</p>
    #   @return [Types::ErrorObject]
    class StepDetails < Struct.new(
      nil,
      :attempt,
      :next_attempt_timestamp,
      :result,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:attempt] = 0 unless options.key?(:attempt)
        super
      end
    end

    # <p>Details about a step that failed.</p>
    # @!attribute error
    #   <p>Details about the step failure.</p>
    #   @return [Types::EventError]
    # @!attribute retry_details
    #   <p>Information about retry attempts for this step operation.</p>
    #   @return [Types::RetryDetails]
    class StepFailedDetails < Struct.new(
      nil,
      :error,
      :retry_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration options for a step operation.</p>
    # @!attribute next_attempt_delay_seconds
    #   <p>The delay in seconds before the next retry attempt.</p>
    #   @return [Integer]
    class StepOptions < Struct.new(
      nil,
      :next_attempt_delay_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a step that has started.</p>
    class StepStartedDetails < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a step that succeeded.</p>
    # @!attribute result
    #   <p>The response payload from the successful operation.</p>
    #   @return [Types::EventResult]
    # @!attribute retry_details
    #   <p>Information about retry attempts for this step operation.</p>
    #   @return [Types::RetryDetails]
    class StepSucceededDetails < Struct.new(
      nil,
      :result,
      :retry_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Optional error details explaining why the execution is being stopped.</p>
    #   @return [Types::ErrorObject]
    class StopDurableExecutionRequest < Struct.new(
      nil,
      :durable_execution_arn,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stop_timestamp
    #   <p>The timestamp when the execution was stopped (ISO 8601 format).</p>
    #   @return [Time]
    class StopDurableExecutionResponse < Struct.new(
      nil,
      :stop_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda couldn't set up VPC access for the Lambda function because one or more configured subnets has no available IP addresses.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class SubnetIPAddressLimitReachedException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to apply to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains details about an error related to retrieving tags.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class TagsError < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A scaling policy for the capacity provider that automatically adjusts capacity to maintain a target value for a specific metric.</p>
    # @!attribute predefined_metric_type
    #   <p>The predefined metric type to track for scaling decisions.</p>
    #   @return [String]
    # @!attribute target_value
    #   <p>The target value for the metric that the scaling policy attempts to maintain through scaling actions.</p>
    #   @return [Float]
    class TargetTrackingScalingPolicy < Struct.new(
      nil,
      :predefined_metric_type,
      :target_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the tenant isolation mode configuration for a Lambda function. This allows you to configure specific tenant isolation strategies for your function invocations. Tenant isolation configuration cannot be modified after function creation.</p>
    # @!attribute tenant_isolation_mode
    #   <p>Tenant isolation mode allows for invocation to be sent to a corresponding execution environment dedicated to a specific tenant ID.</p>
    #   @return [String]
    class TenancyConfig < Struct.new(
      nil,
      :tenant_isolation_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request throughput limit was exceeded. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html#api-requests">Lambda quotas</a>.</p>
    # @!attribute retry_after_seconds
    #   <p>The number of seconds the caller should wait before retrying.</p>
    #   @return [String]
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :retry_after_seconds,
      :type,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains trace headers for the Lambda durable execution.</p>
    # @!attribute x_amzn_trace_id
    #   <p>The X-Ray trace header associated with the durable execution.</p>
    #   @return [String]
    class TraceHeader < Struct.new(
      nil,
      :x_amzn_trace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a> tracing configuration. To sample and record incoming requests, set <code>Mode</code> to <code>Active</code>.</p>
    # @!attribute mode
    #   <p>The tracing mode.</p>
    #   @return [String]
    class TracingConfig < Struct.new(
      nil,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The function's X-Ray tracing configuration.</p>
    # @!attribute mode
    #   <p>The tracing mode.</p>
    #   @return [String]
    class TracingConfigResponse < Struct.new(
      nil,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content type of the <code>Invoke</code> request body is not JSON.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class UnsupportedMediaTypeException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias.</p>
    #   @return [String]
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">routing configuration</a> of the alias.</p>
    #   @return [Types::AliasRoutingConfiguration]
    # @!attribute revision_id
    #   <p>A unique identifier that changes when you update the alias.</p>
    #   @return [String]
    class UpdateAliasOutput < Struct.new(
      nil,
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias.</p>
    #   @return [String]
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing">routing configuration</a> of the alias.</p>
    #   @return [Types::AliasRoutingConfiguration]
    # @!attribute revision_id
    #   <p>Only update the alias if the revision ID matches the ID that's specified. Use this option to avoid modifying an alias that has changed since you last read it.</p>
    #   @return [String]
    class UpdateAliasRequest < Struct.new(
      nil,
      :function_name,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_name
    #   <p>The name of the capacity provider to update.</p>
    #   @return [String]
    # @!attribute capacity_provider_scaling_config
    #   <p>The updated scaling configuration for the capacity provider.</p>
    #   @return [Types::CapacityProviderScalingConfig]
    # @!attribute propagate_tags
    #   <p>Configuration for tag propagation to managed resources launched by the capacity provider.</p>
    #   @return [Types::PropagateTags]
    # @!attribute telemetry_config
    #   <p>The updated telemetry configuration for the capacity provider.</p>
    #   @return [Types::CapacityProviderTelemetryConfig]
    class UpdateCapacityProviderRequest < Struct.new(
      nil,
      :capacity_provider_name,
      :capacity_provider_scaling_config,
      :propagate_tags,
      :telemetry_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider
    #   <p>Information about the updated capacity provider.</p>
    #   @return [Types::CapacityProvider]
    class UpdateCapacityProviderResponse < Struct.new(
      nil,
      :capacity_provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Descriptive name for this code signing configuration.</p>
    #   @return [String]
    # @!attribute allowed_publishers
    #   <p>Signing profiles for this code signing configuration.</p>
    #   @return [Types::AllowedPublishers]
    # @!attribute code_signing_policies
    #   <p>The code signing policy.</p>
    #   @return [Types::CodeSigningPolicies]
    class UpdateCodeSigningConfigRequest < Struct.new(
      nil,
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_signing_config
    #   <p>The code signing configuration</p>
    #   @return [Types::CodeSigningConfig]
    class UpdateCodeSigningConfigResponse < Struct.new(
      nil,
      :code_signing_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A mapping between an Amazon Web Services resource and a Lambda function. For details, see <a>CreateEventSourceMapping</a>.</p>
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis and Amazon DynamoDB Stream event sources. <code>AT_TIMESTAMP</code> is supported only for Amazon Kinesis streams, Amazon DocumentDB, Amazon MSK, and self-managed Apache Kafka.</p>
    #   @return [String]
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start reading. <code>StartingPositionTimestamp</code> cannot be in the future.</p>
    #   @return [Time]
    # @!attribute batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation (6 MB).</p> <p>Default value: Varies by service. For Amazon SQS, the default is 10. For all other services, the default is 100.</p> <p>Related setting: When you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For streams and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For streams and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process concurrently from each shard. The default value is 1.</p>
    #   @return [Integer]
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>An object that defines the filter criteria that determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p> <p>If filter criteria is encrypted, this field shows up as <code>null</code> in the response of ListEventSourceMapping API calls. You can view this field in plaintext in the response of GetEventSourceMapping and DeleteEventSourceMapping calls if you have <code>kms:Decrypt</code> permissions for the correct KMS key.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute logging_config
    #   <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/esm-logging.html">Event source mapping logging</a>.</p>
    #   @return [Types::EventSourceMappingLoggingConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated or that its state changed.</p>
    #   @return [Time]
    # @!attribute last_processing_result
    #   <p>The result of the event source mapping's last processing attempt.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>, <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>, <code>Updating</code>, or <code>Deleting</code>.</p>
    #   @return [String]
    # @!attribute state_transition_reason
    #   <p>Indicates whether a user or Lambda made the last change to the event source mapping.</p>
    #   @return [String]
    # @!attribute destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #   @return [Array<String>]
    # @!attribute queues
    #   <p> (Amazon MQ) The name of the Amazon MQ broker destination queue to consume.</p>
    #   @return [Array<String>]
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, VPC components, or virtual host to secure and define your event source.</p>
    #   @return [Array<Types::SourceAccessConfiguration>]
    # @!attribute self_managed_event_source
    #   <p>The self-managed Apache Kafka cluster for your event source.</p>
    #   @return [Types::SelfManagedEventSource]
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, self-managed Apache Kafka, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon SQS, Amazon MSK, and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class UpdateEventSourceMappingOutput < Struct.new(
      nil,
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
      :filter_criteria_error,
      :kms_key_arn,
      :metrics_config,
      :logging_config,
      :scaling_config,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      :amazon_managed_kafka_event_source_config,
      :self_managed_kafka_event_source_config,
      :document_db_event_source_config,
      :event_source_mapping_arn,
      :provisioned_poller_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Version or Alias ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>When true, the event source mapping is active. When false, Lambda pauses polling and invocation.</p> <p>Default: True</p>
    #   @return [Boolean]
    # @!attribute batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation (6 MB).</p> <ul> <li> <p> <b>Amazon Kinesis</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon DynamoDB Streams</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon Simple Queue Service</b> – Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p> </li> <li> <p> <b>Amazon Managed Streaming for Apache Kafka</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Self-managed Apache Kafka</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon MQ (ActiveMQ and RabbitMQ)</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>DocumentDB</b> – Default 100. Max 10,000.</p> </li> </ul>
    #   @return [Integer]
    # @!attribute filter_criteria
    #   <p>An object that defines the filter criteria that determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>. By default, Lambda does not encrypt your filter criteria object. Specify this property to encrypt data using your own customer managed key. </p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute logging_config
    #   <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. Use this configuration object to define the level of logs for your event source mapping. </p>
    #   @return [Types::EventSourceMappingLoggingConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For Kinesis, DynamoDB, and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For Kinesis, DynamoDB, and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process from each shard concurrently.</p>
    #   @return [Integer]
    # @!attribute destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records older than the specified age. The default value is infinite (-1).</p>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) If the function returns an error, split the batch in two and retry.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute source_access_configurations
    #   <p>An array of authentication protocols or VPC components required to secure your event source.</p>
    #   @return [Array<Types::SourceAccessConfiguration>]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, self-managed Apache Kafka, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon SQS, Amazon MSK, and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class UpdateEventSourceMappingRequest < Struct.new(
      nil,
      :uuid,
      :function_name,
      :enabled,
      :batch_size,
      :filter_criteria,
      :kms_key_arn,
      :metrics_config,
      :logging_config,
      :scaling_config,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :destination_config,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :source_access_configurations,
      :function_response_types,
      :amazon_managed_kafka_event_source_config,
      :self_managed_kafka_event_source_config,
      :document_db_event_source_config,
      :provisioned_poller_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a function's configuration.</p>
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The function's execution role.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The function that Lambda calls to begin running your function.</p>
    #   @return [String]
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The function's description.</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime.</p>
    #   @return [Integer]
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #   @return [Types::VpcConfigResponse]
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute environment
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html">environment variables</a>. Omitted from CloudTrail logs.</p>
    #   @return [Types::EnvironmentResponse]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #   @return [String]
    # @!attribute tracing_config
    #   <p>The function's X-Ray tracing configuration.</p>
    #   @return [Types::TracingConfigResponse]
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the main function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">layers</a>.</p>
    #   @return [Array<Types::Layer>]
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by invoking it.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or modify the function.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code> after function creation completes.</p>
    #   @return [String]
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute file_system_configs
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a> or an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon S3 file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute architectures
    #   <p>The instruction set architecture that the function supports. Architecture is a string array with one of the valid values. The default architecture value is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    #   @return [Types::EphemeralStorage]
    # @!attribute snap_start
    #   <p>Set <code>ApplyOn</code> to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Improving startup performance with Lambda SnapStart</a>.</p>
    #   @return [Types::SnapStartResponse]
    # @!attribute runtime_version_config
    #   <p>The ARN of the runtime and any errors that occured.</p>
    #   @return [Types::RuntimeVersionConfig]
    # @!attribute logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute tenancy_config
    #   <p>The function's tenant isolation configuration settings. Determines whether the Lambda function runs on a shared or dedicated infrastructure per unique tenant.</p>
    #   @return [Types::TenancyConfig]
    # @!attribute capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    #   @return [Types::CapacityProviderConfig]
    # @!attribute config_sha256
    #   <p>The SHA256 hash of the function configuration.</p>
    #   @return [String]
    # @!attribute durable_config
    #   <p>The function's durable execution configuration settings, if the function is configured for durability.</p>
    #   @return [Types::DurableConfig]
    class UpdateFunctionCodeOutput < Struct.new(
      nil,
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :signing_profile_version_arn,
      :signing_job_arn,
      :package_type,
      :image_config_response,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      :tenancy_config,
      :capacity_provider_config,
      :config_sha256,
      :durable_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code_size] = 0 unless options.key?(:code_size)
        super
      end
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute zip_file
    #   <p>The base64-encoded contents of the deployment package. Amazon Web Services SDK and CLI clients handle the encoding for you. Use only with a function defined with a .zip file archive deployment package.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>An Amazon S3 bucket in the same Amazon Web Services Region as your function. The bucket can be in a different Amazon Web Services account. Use only with a function defined with a .zip file archive deployment package.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The Amazon S3 key of the deployment package. Use only with a function defined with a .zip file archive deployment package.</p>
    #   @return [String]
    # @!attribute s3_object_version
    #   <p>For versioned objects, the version of the deployment package object to use.</p>
    #   @return [String]
    # @!attribute s3_object_storage_mode
    #   <p>Specifies how the deployment package is stored. Valid values:</p> <ul> <li> <p> <code>COPY</code> (default) – Uploads a copy of your deployment package to Lambda.</p> </li> <li> <p> <code>REFERENCE</code> – Lambda references the deployment package from the specified Amazon S3 bucket.</p> </li> </ul>
    #   @return [String]
    # @!attribute image_uri
    #   <p>URI of a container image in the Amazon ECR registry. Do not use for a function defined with a .zip file archive.</p>
    #   @return [String]
    # @!attribute architectures
    #   <p>The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute publish
    #   <p>Set to true to publish a new version of the function after updating the code. This has the same effect as calling <a>PublishVersion</a> separately.</p>
    #   @return [Boolean]
    # @!attribute publish_to
    #   <p>Specifies where to publish the function version or configuration.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Set to true to validate the request parameters and access permissions without modifying the function code.</p>
    #   @return [Boolean]
    # @!attribute revision_id
    #   <p>Update the function only if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.</p>
    #   @return [String]
    # @!attribute source_kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt your function's .zip deployment package. If you don't provide a customer managed key, Lambda uses an Amazon Web Services managed key.</p>
    #   @return [String]
    class UpdateFunctionCodeRequest < Struct.new(
      nil,
      :function_name,
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :s3_object_storage_mode,
      :image_uri,
      :architectures,
      :publish,
      :publish_to,
      :dry_run,
      :revision_id,
      :source_kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a function's configuration.</p>
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The function's execution role.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The function that Lambda calls to begin running your function.</p>
    #   @return [String]
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The function's description.</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime.</p>
    #   @return [Integer]
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #   @return [Types::VpcConfigResponse]
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute environment
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html">environment variables</a>. Omitted from CloudTrail logs.</p>
    #   @return [Types::EnvironmentResponse]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #   @return [String]
    # @!attribute tracing_config
    #   <p>The function's X-Ray tracing configuration.</p>
    #   @return [Types::TracingConfigResponse]
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the main function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">layers</a>.</p>
    #   @return [Array<Types::Layer>]
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by invoking it.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or modify the function.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code> after function creation completes.</p>
    #   @return [String]
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #   @return [String]
    # @!attribute file_system_configs
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a> or an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon S3 file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute architectures
    #   <p>The instruction set architecture that the function supports. Architecture is a string array with one of the valid values. The default architecture value is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    #   @return [Types::EphemeralStorage]
    # @!attribute snap_start
    #   <p>Set <code>ApplyOn</code> to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Improving startup performance with Lambda SnapStart</a>.</p>
    #   @return [Types::SnapStartResponse]
    # @!attribute runtime_version_config
    #   <p>The ARN of the runtime and any errors that occured.</p>
    #   @return [Types::RuntimeVersionConfig]
    # @!attribute logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute tenancy_config
    #   <p>The function's tenant isolation configuration settings. Determines whether the Lambda function runs on a shared or dedicated infrastructure per unique tenant.</p>
    #   @return [Types::TenancyConfig]
    # @!attribute capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    #   @return [Types::CapacityProviderConfig]
    # @!attribute config_sha256
    #   <p>The SHA256 hash of the function configuration.</p>
    #   @return [String]
    # @!attribute durable_config
    #   <p>The function's durable execution configuration settings, if the function is configured for durability.</p>
    #   @return [Types::DurableConfig]
    class UpdateFunctionConfigurationOutput < Struct.new(
      nil,
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :signing_profile_version_arn,
      :signing_job_arn,
      :package_type,
      :image_config_response,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      :tenancy_config,
      :capacity_provider_config,
      :config_sha256,
      :durable_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code_size] = 0 unless options.key?(:code_size)
        super
      end
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The name of the method within your code that Lambda calls to run your function. Handler is required if the deployment package is a .zip file archive. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html">Lambda programming model</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the function.</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds, and the maximum allowed value is 900 seconds. For functions using Lambda Managed Instances, asynchronous invocations and event source mapping invocations (except Amazon MQ and Amazon DocumentDB) support a maximum allowed value of 5,400 seconds (90 minutes). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The amount of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console">memory available to the function</a> at runtime. Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    #   @return [Integer]
    # @!attribute vpc_config
    #   <p>For network connectivity to Amazon Web Services resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can access resources and the internet only through that VPC. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring a Lambda function to access resources in a VPC</a>.</p>
    #   @return [Types::VpcConfig]
    # @!attribute environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    #   @return [Types::Environment]
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute dead_letter_config
    #   <p>A dead-letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">Dead-letter queues</a>.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #   @return [String]
    # @!attribute tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with <a href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a>.</p>
    #   @return [Types::TracingConfig]
    # @!attribute revision_id
    #   <p>Update the function only if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">function layers</a> to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>
    #   @return [Array<String>]
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system or an Amazon S3 Files file system.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute image_config
    #   <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">Container image configuration values</a> that override the values in the container image Docker file.</p>
    #   @return [Types::ImageConfig]
    # @!attribute ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    #   @return [Types::EphemeralStorage]
    # @!attribute snap_start
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
    #   @return [Types::SnapStart]
    # @!attribute logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    #   @return [Types::CapacityProviderConfig]
    # @!attribute durable_config
    #   <p>Configuration settings for <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable functions</a>, including execution timeout, retention period for execution history, and an optional ARN of the Key Management Service (KMS) customer managed key that is used to encrypt your durable execution's payload data, including input, output, and error payloads.</p>
    #   @return [Types::DurableConfig]
    class UpdateFunctionConfigurationRequest < Struct.new(
      nil,
      :function_name,
      :role,
      :handler,
      :description,
      :timeout,
      :memory_size,
      :vpc_config,
      :environment,
      :runtime,
      :dead_letter_config,
      :kms_key_arn,
      :tracing_config,
      :revision_id,
      :layers,
      :file_system_configs,
      :image_config,
      :ephemeral_storage,
      :snap_start,
      :logging_config,
      :capacity_provider_config,
      :durable_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute last_modified
    #   <p>The date and time that the configuration was last updated.</p>
    #   @return [Time]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #   @return [String]
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #   @return [Integer]
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #   @return [Integer]
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p> <p class="title"> <b>Destinations</b> </p> <ul> <li> <p> <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p> </li> <li> <p> <b>Queue</b> - The ARN of a standard SQS queue.</p> </li> <li> <p> <b>Bucket</b> - The ARN of an Amazon S3 bucket.</p> </li> <li> <p> <b>Topic</b> - The ARN of a standard SNS topic.</p> </li> <li> <p> <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p> </li> </ul> <note> <p>S3 buckets are supported only for on-failure destinations. To retain records of successful invocations, use another destination type.</p> </note>
    #   @return [Types::DestinationConfig]
    class UpdateFunctionEventInvokeConfigOutput < Struct.new(
      nil,
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #   @return [String]
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #   @return [Integer]
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #   @return [Integer]
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p> <p class="title"> <b>Destinations</b> </p> <ul> <li> <p> <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p> </li> <li> <p> <b>Queue</b> - The ARN of a standard SQS queue.</p> </li> <li> <p> <b>Bucket</b> - The ARN of an Amazon S3 bucket.</p> </li> <li> <p> <b>Topic</b> - The ARN of a standard SNS topic.</p> </li> <li> <p> <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p> </li> </ul> <note> <p>S3 buckets are supported only for on-failure destinations. To retain records of successful invocations, use another destination type.</p> </note>
    #   @return [Types::DestinationConfig]
    class UpdateFunctionEventInvokeConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The alias name.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Control access to Lambda function URLs</a>.</p>
    #   @return [String]
    # @!attribute cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    #   @return [Types::Cors]
    # @!attribute invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    #   @return [String]
    class UpdateFunctionUrlConfigRequest < Struct.new(
      nil,
      :function_name,
      :qualifier,
      :auth_type,
      :cors,
      :invoke_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_url
    #   <p>The HTTP URL endpoint for your function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of your function.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Control access to Lambda function URLs</a>.</p>
    #   @return [String]
    # @!attribute cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    #   @return [Types::Cors]
    # @!attribute creation_time
    #   <p>When the function URL was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>When the function URL configuration was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [String]
    # @!attribute invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    #   @return [String]
    class UpdateFunctionUrlConfigResponse < Struct.new(
      nil,
      :function_url,
      :function_arn,
      :auth_type,
      :cors,
      :creation_time,
      :last_modified_time,
      :invoke_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC security groups and subnets that are attached to a Lambda function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring a Lambda function to access resources in a VPC</a>.</p>
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of VPC security group IDs.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_allowed_for_dual_stack
    #   <p>Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.</p>
    #   @return [Boolean]
    class VpcConfig < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      :ipv6_allowed_for_dual_stack,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC security groups and subnets that are attached to a Lambda function.</p>
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of VPC security group IDs.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute ipv6_allowed_for_dual_stack
    #   <p>Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.</p>
    #   @return [Boolean]
    class VpcConfigResponse < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      :vpc_id,
      :ipv6_allowed_for_dual_stack,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a wait operation that was cancelled.</p>
    # @!attribute error
    #   <p>Details about why the wait operation was cancelled.</p>
    #   @return [Types::EventError]
    class WaitCancelledDetails < Struct.new(
      nil,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a wait operation.</p>
    # @!attribute scheduled_end_timestamp
    #   <p>The date and time when the wait operation is scheduled to complete, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    class WaitDetails < Struct.new(
      nil,
      :scheduled_end_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how long to pause the durable execution.</p>
    # @!attribute wait_seconds
    #   <p>The duration to wait, in seconds.</p>
    #   @return [Integer]
    class WaitOptions < Struct.new(
      nil,
      :wait_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a wait operation that has started.</p>
    # @!attribute duration
    #   <p>The duration to wait, in seconds.</p>
    #   @return [Integer]
    # @!attribute scheduled_end_timestamp
    #   <p>The date and time when the wait operation is scheduled to complete, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    class WaitStartedDetails < Struct.new(
      nil,
      :duration,
      :scheduled_end_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a wait operation that succeeded.</p>
    # @!attribute duration
    #   <p>The wait duration, in seconds.</p>
    #   @return [Integer]
    class WaitSucceededDetails < Struct.new(
      nil,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
