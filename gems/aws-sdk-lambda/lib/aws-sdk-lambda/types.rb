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
      :total_code_size,
      :code_size_unzipped,
      :code_size_zipped,
      :concurrent_executions,
      :unreserved_concurrent_executions,
      keyword_init: true)
      include Smithy::Schema::Structure

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
      :total_code_size,
      :function_count,
      keyword_init: true)
      include Smithy::Schema::Structure

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
      :layer_name,
      :version_number,
      :statement_id,
      :action,
      :principal,
      :organization_id,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute statement
    #   <p>The permission statement.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    class AddLayerVersionPermissionResponse < Struct.new(
      :statement,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute function_url_auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
    #   @return [String]
    class AddPermissionRequest < Struct.new(
      :function_name,
      :statement_id,
      :action,
      :principal,
      :source_arn,
      :source_account,
      :event_source_token,
      :qualifier,
      :revision_id,
      :principal_org_id,
      :function_url_auth_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute statement
    #   <p>The permission statement that's added to the function policy.</p>
    #   @return [String]
    class AddPermissionResponse < Struct.new(
      :statement,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">traffic-shifting</a> configuration of a Lambda function alias.</p>
    # @!attribute additional_version_weights
    #   <p>The second version, and the percentage of traffic that's routed to it.</p>
    #   @return [Hash<String, Float>]
    class AliasRoutingConfiguration < Struct.new(
      :additional_version_weights,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List of signing profiles that can sign a code package. </p>
    # @!attribute signing_profile_version_arns
    #   <p>The Amazon Resource Name (ARN) for each of the signing profiles. A signing profile defines a trusted user who can sign a code package. </p>
    #   @return [Array<String>]
    class AllowedPublishers < Struct.new(
      :signing_profile_version_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    # @!attribute consumer_group_id
    #   <p>The identifier for the Kafka consumer group to join. The consumer group ID must be unique among all your Kafka event sources. After creating a Kafka event source mapping with the consumer group ID specified, you cannot update this value. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-consumer-group-id">Customizable consumer group ID</a>.</p>
    #   @return [String]
    # @!attribute schema_registry_config
    #   <p>Specific configuration settings for a Kafka schema registry.</p>
    #   @return [Types::KafkaSchemaRegistryConfig]
    class AmazonManagedKafkaEventSourceConfig < Struct.new(
      :consumer_group_id,
      :schema_registry_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ApplicationLogLevel
      Trace = 'TRACE'
      Debug = 'DEBUG'
      Info = 'INFO'
      Warn = 'WARN'
      Error = 'ERROR'
      Fatal = 'FATAL'
    end

    module Architecture
      x86_64 = 'x86_64'
      arm64 = 'arm64'
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
      :code_signing_config_id,
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified code signing configuration does not exist.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class CodeSigningConfigNotFoundException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Code signing configuration <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html#config-codesigning-policies">policies</a> specify the validation failure action for signature mismatch or expiry.</p>
    # @!attribute untrusted_artifact_on_deployment
    #   <p>Code signing configuration policy for deployment validation failure. If you set the policy to <code>Enforce</code>, Lambda blocks the deployment request if signature validation checks fail. If you set the policy to <code>Warn</code>, Lambda allows the deployment and creates a CloudWatch log. </p> <p>Default value: <code>Warn</code> </p>
    #   @return [String]
    class CodeSigningPolicies < Struct.new(
      :untrusted_artifact_on_deployment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CodeSigningPolicy
      Warn = 'Warn'
      Enforce = 'Enforce'
    end

    # <p>Your Amazon Web Services account has exceeded its maximum total code size. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class CodeStorageExceededException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The code signature failed one or more of the validation checks for signature mismatch or expiry, and the code signing policy is set to ENFORCE. Lambda blocks the deployment.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class CodeVerificationFailedException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute reserved_concurrent_executions
    #   <p>The number of concurrent executions that are reserved for this function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-concurrency.html">Managing Lambda reserved concurrency</a>.</p>
    #   @return [Integer]
    class Concurrency < Struct.new(
      :reserved_concurrent_executions,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :allow_credentials,
      :allow_headers,
      :allow_methods,
      :allow_origins,
      :expose_headers,
      :max_age,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :name,
      :function_version,
      :description,
      :routing_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :description,
      :allowed_publishers,
      :code_signing_policies,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_signing_config
    #   <p>The code signing configuration.</p>
    #   @return [Types::CodeSigningConfig]
    class CreateCodeSigningConfigResponse < Struct.new(
      :code_signing_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka event sources only) A configuration object that specifies the destination of an event after Lambda processes it.</p>
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
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon MSK and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class CreateEventSourceMappingOutput < Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
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
      :scaling_config,
      :document_db_event_source_config,
      :kms_key_arn,
      :filter_criteria_error,
      :event_source_mapping_arn,
      :metrics_config,
      :provisioned_poller_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Kafka only) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is infinite (-1).</p>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
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
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>. By default, Lambda does not encrypt your filter criteria object. Specify this property to encrypt data using your own customer managed key. </p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon MSK and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class CreateEventSourceMappingRequest < Struct.new(
      :event_source_arn,
      :function_name,
      :enabled,
      :batch_size,
      :filter_criteria,
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
      :scaling_config,
      :document_db_event_source_config,
      :kms_key_arn,
      :metrics_config,
      :provisioned_poller_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
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
    class CreateFunctionOutput < Struct.new(
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
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      keyword_init: true)
      include Smithy::Schema::Structure

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
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The amount of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console">memory available to the function</a> at runtime. Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    #   @return [Integer]
    # @!attribute publish
    #   <p>Set to true to publish the first version of the function during creation.</p>
    #   @return [Boolean]
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
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute image_config
    #   <p>Container image <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">configuration values</a> that override the values in the container image Dockerfile.</p>
    #   @return [Types::ImageConfig]
    # @!attribute code_signing_config_arn
    #   <p>To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function.</p>
    #   @return [String]
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
    class CreateFunctionRequest < Struct.new(
      :function_name,
      :runtime,
      :role,
      :handler,
      :code,
      :description,
      :timeout,
      :memory_size,
      :publish,
      :vpc_config,
      :package_type,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :tags,
      :layers,
      :file_system_configs,
      :image_config,
      :code_signing_config_arn,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :logging_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The alias name.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
    #   @return [String]
    # @!attribute cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    #   @return [Types::Cors]
    # @!attribute invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    #   @return [String]
    class CreateFunctionUrlConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :auth_type,
      :cors,
      :invoke_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_url
    #   <p>The HTTP URL endpoint for your function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of your function.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
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
      :function_url,
      :function_arn,
      :auth_type,
      :cors,
      :creation_time,
      :invoke_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-dlq">dead-letter queue</a> for failed asynchronous invocations.</p>
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.</p>
    #   @return [String]
    class DeadLetterConfig < Struct.new(
      :target_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    class DeleteAliasRequest < Struct.new(
      :function_name,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    class DeleteCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteCodeSigningConfigResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka event sources only) A configuration object that specifies the destination of an event after Lambda processes it.</p>
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
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon MSK and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class DeleteEventSourceMappingOutput < Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
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
      :scaling_config,
      :document_db_event_source_config,
      :kms_key_arn,
      :filter_criteria_error,
      :event_source_mapping_arn,
      :metrics_config,
      :provisioned_poller_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    class DeleteEventSourceMappingRequest < Struct.new(
      :uuid,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class DeleteFunctionCodeSigningConfigRequest < Struct.new(
      :function_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class DeleteFunctionConcurrencyRequest < Struct.new(
      :function_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #   @return [String]
    class DeleteFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function or version.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:1</code> (with version).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version to delete. You can't delete a version that an alias references.</p>
    #   @return [String]
    class DeleteFunctionRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The alias name.</p>
    #   @return [String]
    class DeleteFunctionUrlConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number.</p>
    #   @return [Integer]
    class DeleteLayerVersionRequest < Struct.new(
      :layer_name,
      :version_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The version number or alias name.</p>
    #   @return [String]
    class DeleteProvisionedConcurrencyConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A configuration object that specifies the destination of an event after Lambda processes it. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations">Adding a destination</a>.</p>
    # @!attribute on_success
    #   <p>The destination configuration for successful invocations. Not supported in <code>CreateEventSourceMapping</code> or <code>UpdateEventSourceMapping</code>.</p>
    #   @return [Types::OnSuccess]
    # @!attribute on_failure
    #   <p>The destination configuration for failed invocations.</p>
    #   @return [Types::OnFailure]
    class DestinationConfig < Struct.new(
      :on_success,
      :on_failure,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :database_name,
      :collection_name,
      :full_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Need additional permissions to configure VPC settings.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EC2AccessDeniedException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon EC2 throttled Lambda during Lambda function initialization using the execution role provided for the function.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EC2ThrottledException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lambda received an unexpected Amazon EC2 client exception while setting up for the Lambda function.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute ec2_error_code
    #   @return [String]
    class EC2UnexpectedException < Struct.new(
      :type,
      :message,
      :ec2_error_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An error occurred when reading from or writing to a connected file system.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EFSIOException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Lambda function couldn't make a network connection to the configured file system.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EFSMountConnectivityException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Lambda function couldn't mount the configured file system due to a permission or configuration issue.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EFSMountFailureException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Lambda function made a network connection to the configured file system, but the mount operation timed out.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class EFSMountTimeoutException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lambda couldn't create an elastic network interface in the VPC, specified as part of Lambda function configuration, because the limit for network interfaces has been reached. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ENILimitReachedException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EndPointType
      KAFKA_BOOTSTRAP_SERVERS = 'KAFKA_BOOTSTRAP_SERVERS'
    end

    # <p>A function's environment variable settings. You can use environment variables to adjust your function's behavior without updating code. An environment variable is a pair of strings that are stored in a function's version-specific configuration.</p>
    # @!attribute variables
    #   <p>Environment variable key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html">Using Lambda environment variables</a>.</p>
    #   @return [Hash<String, String>]
    class Environment < Struct.new(
      :variables,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Error messages for environment variables that couldn't be applied.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class EnvironmentError < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The results of an operation to update or read environment variables. If the operation succeeds, the response contains the environment variables. If it fails, the response contains details about the error.</p>
    # @!attribute variables
    #   <p>Environment variable key-value pairs. Omitted from CloudTrail logs.</p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>Error messages for environment variables that couldn't be applied.</p>
    #   @return [Types::EnvironmentError]
    class EnvironmentResponse < Struct.new(
      :variables,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    # @!attribute size
    #   <p>The size of the function's <code>/tmp</code> directory.</p>
    #   @return [Integer]
    class EphemeralStorage < Struct.new(
      :size,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka event sources only) A configuration object that specifies the destination of an event after Lambda processes it.</p>
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
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon MSK and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class EventSourceMappingConfiguration < Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
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
      :scaling_config,
      :document_db_event_source_config,
      :kms_key_arn,
      :filter_criteria_error,
      :event_source_mapping_arn,
      :metrics_config,
      :provisioned_poller_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EventSourceMappingMetric
      EventCount = 'EventCount'
    end

    # <p>The metrics configuration for your event source. Use this configuration object to define which metrics you want your event source mapping to produce.</p>
    # @!attribute metrics
    #   <p> The metrics you want your event source mapping to produce. Include <code>EventCount</code> to receive event source mapping metrics related to the number of events processed by your event source mapping. For more information about these metrics, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics"> Event source mapping metrics</a>. </p>
    #   @return [Array<String>]
    class EventSourceMappingMetricsConfig < Struct.new(
      :metrics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EventSourcePosition
      TRIM_HORIZON = 'TRIM_HORIZON'
      LATEST = 'LATEST'
      AT_TIMESTAMP = 'AT_TIMESTAMP'
    end

    # <p>Details about the connection between a Lambda function and an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon EFS access point that provides access to the file system.</p>
    #   @return [String]
    # @!attribute local_mount_path
    #   <p>The path where the function can access the file system, starting with <code>/mnt/</code>.</p>
    #   @return [String]
    class FileSystemConfig < Struct.new(
      :arn,
      :local_mount_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A structure within a <code>FilterCriteria</code> object that defines an event filtering pattern. </p>
    # @!attribute pattern
    #   <p> A filter pattern. For more information on the syntax of a filter pattern, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-syntax"> Filter rule syntax</a>. </p>
    #   @return [String]
    class Filter < Struct.new(
      :pattern,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> An object that contains the filters for an event source. </p>
    # @!attribute filters
    #   <p> A list of filters. </p>
    #   @return [Array<Types::Filter>]
    class FilterCriteria < Struct.new(
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains details about an error related to filter criteria encryption.</p>
    # @!attribute error_code
    #   <p>The KMS exception that resulted from filter criteria encryption or decryption.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class FilterCriteriaError < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FullDocument
      UpdateLookup = 'UpdateLookup'
      Default = 'Default'
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
    # @!attribute image_uri
    #   <p>URI of a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html">container image</a> in the Amazon ECR registry.</p>
    #   @return [String]
    # @!attribute source_kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt your function's .zip deployment package. If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a>.</p>
    #   @return [String]
    class FunctionCode < Struct.new(
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :image_uri,
      :source_kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute source_kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt your function's .zip deployment package. If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a>.</p>
    #   @return [String]
    class FunctionCodeLocation < Struct.new(
      :repository_type,
      :location,
      :image_uri,
      :resolved_image_uri,
      :source_kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
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
    class FunctionConfiguration < Struct.new(
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
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      keyword_init: true)
      include Smithy::Schema::Structure

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
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FunctionResponseType
      ReportBatchItemFailures = 'ReportBatchItemFailures'
    end

    module FunctionUrlAuthType
      NONE = 'NONE'
      AWS_IAM = 'AWS_IAM'
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
      :function_url,
      :function_arn,
      :creation_time,
      :last_modified_time,
      :cors,
      :auth_type,
      :invoke_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FunctionVersion
      ALL = 'ALL'
    end

    class GetAccountSettingsRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_limit
    #   <p>Limits that are related to concurrency and code storage.</p>
    #   @return [Types::AccountLimit]
    # @!attribute account_usage
    #   <p>The number of functions and amount of storage in use.</p>
    #   @return [Types::AccountUsage]
    class GetAccountSettingsResponse < Struct.new(
      :account_limit,
      :account_usage,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    class GetAliasRequest < Struct.new(
      :function_name,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration. </p>
    #   @return [String]
    class GetCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_signing_config
    #   <p>The code signing configuration</p>
    #   @return [Types::CodeSigningConfig]
    class GetCodeSigningConfigResponse < Struct.new(
      :code_signing_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka event sources only) A configuration object that specifies the destination of an event after Lambda processes it.</p>
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
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon MSK and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class GetEventSourceMappingOutput < Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
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
      :scaling_config,
      :document_db_event_source_config,
      :kms_key_arn,
      :filter_criteria_error,
      :event_source_mapping_arn,
      :metrics_config,
      :provisioned_poller_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #   @return [String]
    class GetEventSourceMappingRequest < Struct.new(
      :uuid,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class GetFunctionCodeSigningConfigRequest < Struct.new(
      :function_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class GetFunctionCodeSigningConfigResponse < Struct.new(
      :code_signing_config_arn,
      :function_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class GetFunctionConcurrencyRequest < Struct.new(
      :function_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute reserved_concurrent_executions
    #   <p>The number of simultaneous executions that are reserved for the function.</p>
    #   @return [Integer]
    class GetFunctionConcurrencyResponse < Struct.new(
      :reserved_concurrent_executions,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
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
    class GetFunctionConfigurationOutput < Struct.new(
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
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      keyword_init: true)
      include Smithy::Schema::Structure

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
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #   @return [String]
    class GetFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p/>
    #   @return [String]
    class GetFunctionRecursionConfigRequest < Struct.new(
      :function_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recursive_loop
    #   <p>If your function's recursive loop detection configuration is <code>Allow</code>, Lambda doesn't take any action when it detects your function being invoked as part of a recursive loop.</p> <p>If your function's recursive loop detection configuration is <code>Terminate</code>, Lambda stops your function being invoked and notifies you when it detects your function being invoked as part of a recursive loop.</p> <p>By default, Lambda sets your function's configuration to <code>Terminate</code>. You can update this configuration using the <a>PutFunctionRecursionConfig</a> action.</p>
    #   @return [String]
    class GetFunctionRecursionConfigResponse < Struct.new(
      :recursive_loop,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to get details about a published version of the function.</p>
    #   @return [String]
    class GetFunctionRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :configuration,
      :code,
      :tags,
      :tags_error,
      :concurrency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The alias name.</p>
    #   @return [String]
    class GetFunctionUrlConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_url
    #   <p>The HTTP URL endpoint for your function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of your function.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
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
      :function_url,
      :function_arn,
      :auth_type,
      :cors,
      :creation_time,
      :last_modified_time,
      :invoke_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's software license.</p>
    #   @return [String]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    class GetLayerVersionByArnOutput < Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info,
      :compatible_architectures,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # @!attribute arn
    #   <p>The ARN of the layer version.</p>
    #   @return [String]
    class GetLayerVersionByArnRequest < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's software license.</p>
    #   @return [String]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    class GetLayerVersionOutput < Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info,
      :compatible_architectures,
      keyword_init: true)
      include Smithy::Schema::Structure

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
      :layer_name,
      :version_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The policy document.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    class GetLayerVersionPolicyResponse < Struct.new(
      :policy,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number.</p>
    #   @return [Integer]
    class GetLayerVersionRequest < Struct.new(
      :layer_name,
      :version_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to get the policy for that resource.</p>
    #   @return [String]
    class GetPolicyRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    class GetPolicyResponse < Struct.new(
      :policy,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The version number or alias name.</p>
    #   @return [String]
    class GetProvisionedConcurrencyConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version of the function. This can be <code>$LATEST</code> or a published version number. If no value is specified, the configuration for the <code>$LATEST</code> version is returned.</p>
    #   @return [String]
    class GetRuntimeManagementConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute update_runtime_on
    #   <p>The current runtime update mode of the function.</p>
    #   @return [String]
    # @!attribute runtime_version_arn
    #   <p>The ARN of the runtime the function is configured to use. If the runtime update mode is <b>Manual</b>, the ARN is returned, otherwise <code>null</code> is returned.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of your function.</p>
    #   @return [String]
    class GetRuntimeManagementConfigResponse < Struct.new(
      :update_runtime_on,
      :runtime_version_arn,
      :function_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :entry_point,
      :command,
      :working_directory,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Error response to <code>GetFunctionConfiguration</code>.</p>
    # @!attribute error_code
    #   <p>Error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Error message.</p>
    #   @return [String]
    class ImageConfigError < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Response to a <code>GetFunctionConfiguration</code> request.</p>
    # @!attribute image_config
    #   <p>Configuration values that override the container image Dockerfile.</p>
    #   @return [Types::ImageConfig]
    # @!attribute error
    #   <p>Error response to <code>GetFunctionConfiguration</code>.</p>
    #   @return [Types::ImageConfigError]
    class ImageConfigResponse < Struct.new(
      :image_config,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The code signature failed the integrity check. If the integrity check fails, then Lambda blocks deployment, even if the code signing policy is set to WARN.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidCodeSignatureException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One of the parameters in the request is not valid.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request body could not be parsed as JSON, or a request header is invalid. For example, the 'x-amzn-RequestId' header is not a valid UUID string.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class InvalidRequestContentException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The runtime or runtime version specified is not supported.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidRuntimeException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The security group ID provided in the Lambda function VPC configuration is not valid.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidSecurityGroupIDException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The subnet ID provided in the Lambda function VPC configuration is not valid.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidSubnetIDException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lambda could not unzip the deployment package.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidZipFileException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute payload
    #   <p>The JSON that you want to provide to your Lambda function as input.</p> <p>You can enter the JSON directly. For example, <code>--payload '{ "key": "value" }'</code>. You can also specify a file path. For example, <code>--payload file://payload.json</code>.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Specify a version or alias to invoke a published version of the function.</p>
    #   @return [String]
    class InvocationRequest < Struct.new(
      :function_name,
      :invocation_type,
      :log_type,
      :client_context,
      :payload,
      :qualifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class InvocationResponse < Struct.new(
      :status_code,
      :function_error,
      :log_result,
      :payload,
      :executed_version,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    module InvocationType
      Event = 'Event'
      RequestResponse = 'RequestResponse'
      DryRun = 'DryRun'
    end

    # @deprecated
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute invoke_args
    #   <p>The JSON that you want to provide to your Lambda function as input.</p>
    #   @return [String]
    class InvokeAsyncRequest < Struct.new(
      :function_name,
      :invoke_args,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A success response (<code>202 Accepted</code>) indicates that the request is queued for invocation.</p>
    # @deprecated
    # @!attribute status
    #   <p>The status code.</p>
    #   @return [Integer]
    class InvokeAsyncResponse < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:status] = 0 unless options.key?(:status)
        super
      end
    end

    module InvokeMode
      BUFFERED = 'BUFFERED'
      RESPONSE_STREAM = 'RESPONSE_STREAM'
    end

    # <p>A chunk of the streamed response payload.</p>
    # @!attribute payload
    #   <p>Data returned by your Lambda function.</p>
    #   @return [String]
    class InvokeResponseStreamUpdate < Struct.new(
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :error_code,
      :error_details,
      :log_result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute invocation_type
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>RequestResponse</code> (default) – Invoke the function synchronously. Keep the connection open until the function returns a response or times out. The API operation response includes the function response and additional data.</p> </li> <li> <p> <code>DryRun</code> – Validate parameter values and verify that the IAM user or role has permission to invoke the function.</p> </li> </ul>
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
    class InvokeWithResponseStreamRequest < Struct.new(
      :function_name,
      :invocation_type,
      :log_type,
      :client_context,
      :qualifier,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :status_code,
      :executed_version,
      :event_stream,
      :response_stream_content_type,
      keyword_init: true)
      include Smithy::Schema::Structure

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
      keyword_init: true)
      include Smithy::Schema::Union

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
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lambda couldn't decrypt the environment variables because the KMS key used is disabled. Check the Lambda function's KMS key settings.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class KMSDisabledException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lambda couldn't decrypt the environment variables because the state of the KMS key used is not valid for Decrypt. Check the function's KMS key settings.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class KMSInvalidStateException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lambda couldn't decrypt the environment variables because the KMS key was not found. Check the function's KMS key settings.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class KMSNotFoundException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specific access configuration settings that tell Lambda how to authenticate with your schema registry.</p> <p>If you're working with an Glue schema registry, don't provide authentication details in this object. Instead, ensure that your execution role has the required permissions for Lambda to access your cluster.</p> <p>If you're working with a Confluent schema registry, choose the authentication method in the <code>Type</code> field, and provide the Secrets Manager secret ARN in the <code>URI</code> field.</p>
    # @!attribute type
    #   <p> The type of authentication Lambda uses to access your schema registry. </p>
    #   @return [String]
    # @!attribute uri
    #   <p> The URI of the secret (Secrets Manager secret ARN) to authenticate with your schema registry. </p>
    #   @return [String]
    class KafkaSchemaRegistryAccessConfig < Struct.new(
      :type,
      :uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KafkaSchemaRegistryAuthType
      BASIC_AUTH = 'BASIC_AUTH'
      CLIENT_CERTIFICATE_TLS_AUTH = 'CLIENT_CERTIFICATE_TLS_AUTH'
      SERVER_ROOT_CA_CERTIFICATE = 'SERVER_ROOT_CA_CERTIFICATE'
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
      :schema_registry_uri,
      :event_record_format,
      :access_configs,
      :schema_validation_configs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KafkaSchemaValidationAttribute
      KEY = 'KEY'
      VALUE = 'VALUE'
    end

    # <p>Specific schema validation configuration settings that tell Lambda the message attributes you want to validate and filter using your schema registry.</p>
    # @!attribute attribute
    #   <p> The attributes you want your schema registry to validate and filter for. If you selected <code>JSON</code> as the <code>EventRecordFormat</code>, Lambda also deserializes the selected message attributes. </p>
    #   @return [String]
    class KafkaSchemaValidationConfig < Struct.new(
      :attribute,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LastUpdateStatus
      Successful = 'Successful'
      Failed = 'Failed'
      InProgress = 'InProgress'
    end

    module LastUpdateStatusReasonCode
      EniLimitExceeded = 'EniLimitExceeded'
      InsufficientRolePermissions = 'InsufficientRolePermissions'
      InvalidConfiguration = 'InvalidConfiguration'
      InternalError = 'InternalError'
      SubnetOutOfIPAddresses = 'SubnetOutOfIPAddresses'
      InvalidSubnet = 'InvalidSubnet'
      InvalidSecurityGroup = 'InvalidSecurityGroup'
      ImageDeleted = 'ImageDeleted'
      ImageAccessDenied = 'ImageAccessDenied'
      InvalidImage = 'InvalidImage'
      KMSKeyAccessDenied = 'KMSKeyAccessDenied'
      KMSKeyNotFound = 'KMSKeyNotFound'
      InvalidStateKMSKey = 'InvalidStateKMSKey'
      DisabledKMSKey = 'DisabledKMSKey'
      EFSIOError = 'EFSIOError'
      EFSMountConnectivityError = 'EFSMountConnectivityError'
      EFSMountFailure = 'EFSMountFailure'
      EFSMountTimeout = 'EFSMountTimeout'
      InvalidRuntime = 'InvalidRuntime'
      InvalidZipFileException = 'InvalidZipFileException'
      FunctionError = 'FunctionError'
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
      :arn,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true)
      include Smithy::Schema::Structure

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
    # @!attribute zip_file
    #   <p>The base64-encoded contents of the layer archive. Amazon Web Services SDK and Amazon Web Services CLI clients handle the encoding for you.</p>
    #   @return [String]
    class LayerVersionContentInput < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :zip_file,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class LayerVersionContentOutput < Struct.new(
      :location,
      :code_sha256,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true)
      include Smithy::Schema::Structure

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
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's open-source license.</p>
    #   @return [String]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    class LayerVersionsListItem < Struct.new(
      :layer_version_arn,
      :version,
      :description,
      :created_date,
      :compatible_runtimes,
      :license_info,
      :compatible_architectures,
      keyword_init: true)
      include Smithy::Schema::Structure

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
      :layer_name,
      :layer_arn,
      :latest_matching_version,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :function_version,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute aliases
    #   <p>A list of aliases.</p>
    #   @return [Array<Types::AliasConfiguration>]
    class ListAliasesResponse < Struct.new(
      :next_marker,
      :aliases,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Maximum number of items to return.</p>
    #   @return [Integer]
    class ListCodeSigningConfigsRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute code_signing_configs
    #   <p>The code signing configurations</p>
    #   @return [Array<Types::CodeSigningConfig>]
    class ListCodeSigningConfigsResponse < Struct.new(
      :next_marker,
      :code_signing_configs,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :event_source_arn,
      :function_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>A pagination token that's returned when the response doesn't contain all event source mappings.</p>
    #   @return [String]
    # @!attribute event_source_mappings
    #   <p>A list of event source mappings.</p>
    #   @return [Array<Types::EventSourceMappingConfiguration>]
    class ListEventSourceMappingsResponse < Struct.new(
      :next_marker,
      :event_source_mappings,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_event_invoke_configs
    #   <p>A list of configurations.</p>
    #   @return [Array<Types::FunctionEventInvokeConfig>]
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListFunctionEventInvokeConfigsResponse < Struct.new(
      :function_event_invoke_configs,
      :next_marker,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_url_configs
    #   <p>A list of function URL configurations.</p>
    #   @return [Array<Types::FunctionUrlConfig>]
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListFunctionUrlConfigsResponse < Struct.new(
      :function_url_configs,
      :next_marker,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :code_signing_config_arn,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute function_arns
    #   <p>The function ARNs. </p>
    #   @return [Array<String>]
    class ListFunctionsByCodeSigningConfigResponse < Struct.new(
      :next_marker,
      :function_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :master_region,
      :function_version,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of Lambda functions.</p>
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute functions
    #   <p>A list of Lambda functions.</p>
    #   @return [Array<Types::FunctionConfiguration>]
    class ListFunctionsResponse < Struct.new(
      :next_marker,
      :functions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

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
    # @!attribute compatible_architecture
    #   <p>The compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
    #   @return [String]
    class ListLayerVersionsRequest < Struct.new(
      :compatible_runtime,
      :layer_name,
      :marker,
      :max_items,
      :compatible_architecture,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>A pagination token returned when the response doesn't contain all versions.</p>
    #   @return [String]
    # @!attribute layer_versions
    #   <p>A list of versions.</p>
    #   @return [Array<Types::LayerVersionsListItem>]
    class ListLayerVersionsResponse < Struct.new(
      :next_marker,
      :layer_versions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute compatible_runtime
    #   <p>A runtime identifier.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>A pagination token returned by a previous call.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of layers to return.</p>
    #   @return [Integer]
    # @!attribute compatible_architecture
    #   <p>The compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
    #   @return [String]
    class ListLayersRequest < Struct.new(
      :compatible_runtime,
      :marker,
      :max_items,
      :compatible_architecture,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>A pagination token returned when the response doesn't contain all layers.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>A list of function layers.</p>
    #   @return [Array<Types::LayersListItem>]
    class ListLayersResponse < Struct.new(
      :next_marker,
      :layers,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute provisioned_concurrency_configs
    #   <p>A list of provisioned concurrency configurations.</p>
    #   @return [Array<Types::ProvisionedConcurrencyConfigListItem>]
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListProvisionedConcurrencyConfigsResponse < Struct.new(
      :provisioned_concurrency_configs,
      :next_marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The resource's Amazon Resource Name (ARN). Note: Lambda does not support adding tags to function aliases or versions.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      :resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The function's tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute versions
    #   <p>A list of Lambda function versions.</p>
    #   @return [Array<Types::FunctionConfiguration>]
    class ListVersionsByFunctionResponse < Struct.new(
      :next_marker,
      :versions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LogFormat
      Json = 'JSON'
      Text = 'Text'
    end

    module LogType
      None = 'None'
      Tail = 'Tail'
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
      :log_format,
      :application_log_level,
      :system_log_level,
      :log_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A destination for events that failed processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations">Adding a destination</a>.</p>
    # @!attribute destination
    #   <p>The Amazon Resource Name (ARN) of the destination resource.</p> <p>To retain records of unsuccessful <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations">asynchronous invocations</a>, you can configure an Amazon SNS topic, Amazon SQS queue, Amazon S3 bucket, Lambda function, or Amazon EventBridge event bus as the destination.</p> <p>To retain records of failed invocations from <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html">Kinesis</a>, <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html">DynamoDB</a>, <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-smaa-onfailure-destination">self-managed Kafka</a> or <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-onfailure-destination">Amazon MSK</a>, you can configure an Amazon SNS topic, Amazon SQS queue, or Amazon S3 bucket as the destination.</p>
    #   @return [String]
    class OnFailure < Struct.new(
      :destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A destination for events that were processed successfully.</p> <p>To retain records of successful <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations">asynchronous invocations</a>, you can configure an Amazon SNS topic, Amazon SQS queue, Lambda function, or Amazon EventBridge event bus as the destination.</p> <note> <p> <code>OnSuccess</code> is not supported in <code>CreateEventSourceMapping</code> or <code>UpdateEventSourceMapping</code> requests.</p> </note>
    # @!attribute destination
    #   <p>The Amazon Resource Name (ARN) of the destination resource.</p>
    #   @return [String]
    class OnSuccess < Struct.new(
      :destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PackageType
      Zip = 'Zip'
      Image = 'Image'
    end

    # <p>The permissions policy for the resource is too large. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class PolicyLengthExceededException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The RevisionId provided does not match the latest RevisionId for the Lambda function or alias.</p> <ul> <li> <p> <b>For AddPermission and RemovePermission API operations:</b> Call <code>GetPolicy</code> to retrieve the latest RevisionId for your resource.</p> </li> <li> <p> <b>For all other API operations:</b> Call <code>GetFunction</code> or <code>GetAlias</code> to retrieve the latest RevisionId for your resource.</p> </li> </ul>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class PreconditionFailedException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_arn,
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified configuration does not exist.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ProvisionedConcurrencyConfigNotFoundException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProvisionedConcurrencyStatusEnum
      IN_PROGRESS = 'IN_PROGRESS'
      READY = 'READY'
      FAILED = 'FAILED'
    end

    # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode"> provisioned mode</a> configuration for the event source. Use Provisioned Mode to customize the minimum and maximum number of event pollers for your event source. An event poller is a compute unit that provides approximately 5 MBps of throughput.</p>
    # @!attribute minimum_pollers
    #   <p>The minimum number of event pollers this event source can scale down to.</p>
    #   @return [Integer]
    # @!attribute maximum_pollers
    #   <p>The maximum number of event pollers this event source can scale up to.</p>
    #   @return [Integer]
    class ProvisionedPollerConfig < Struct.new(
      :minimum_pollers,
      :maximum_pollers,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute compatible_runtimes
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">function runtimes</a>. Used for filtering with <a>ListLayers</a> and <a>ListLayerVersions</a>.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy">Runtime deprecation policy</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's software license. It can be any of the following:</p> <ul> <li> <p>An <a href="https://spdx.org/licenses/">SPDX license identifier</a>. For example, <code>MIT</code>.</p> </li> <li> <p>The URL of a license hosted on the internet. For example, <code>https://opensource.org/licenses/MIT</code>.</p> </li> <li> <p>The full text of the license.</p> </li> </ul>
    #   @return [String]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    class PublishLayerVersionRequest < Struct.new(
      :layer_name,
      :description,
      :content,
      :compatible_runtimes,
      :license_info,
      :compatible_architectures,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    #   @return [Array<String>]
    # @!attribute license_info
    #   <p>The layer's software license.</p>
    #   @return [String]
    # @!attribute compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    #   @return [Array<String>]
    class PublishLayerVersionResponse < Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info,
      :compatible_architectures,
      keyword_init: true)
      include Smithy::Schema::Structure

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
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
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
    class PublishVersionOutput < Struct.new(
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
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      keyword_init: true)
      include Smithy::Schema::Structure

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
    class PublishVersionRequest < Struct.new(
      :function_name,
      :code_sha256,
      :description,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class PutFunctionCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn,
      :function_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class PutFunctionCodeSigningConfigResponse < Struct.new(
      :code_signing_config_arn,
      :function_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute reserved_concurrent_executions
    #   <p>The number of concurrent executions that are reserved for this function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-concurrency.html">Managing Lambda reserved concurrency</a>.</p>
    #   @return [Integer]
    class PutFunctionConcurrencyOutput < Struct.new(
      :reserved_concurrent_executions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute reserved_concurrent_executions
    #   <p>The number of simultaneous executions to reserve for the function.</p>
    #   @return [Integer]
    class PutFunctionConcurrencyRequest < Struct.new(
      :function_name,
      :reserved_concurrent_executions,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute recursive_loop
    #   <p>If you set your function's recursive loop detection configuration to <code>Allow</code>, Lambda doesn't take any action when it detects your function being invoked as part of a recursive loop. We recommend that you only use this setting if your design intentionally uses a Lambda function to write data back to the same Amazon Web Services resource that invokes it.</p> <p>If you set your function's recursive loop detection configuration to <code>Terminate</code>, Lambda stops your function being invoked and notifies you when it detects your function being invoked as part of a recursive loop.</p> <p>By default, Lambda sets your function's configuration to <code>Terminate</code>.</p> <important> <p>If your design intentionally uses a Lambda function to write data back to the same Amazon Web Services resource that invokes the function, then use caution and implement suitable guard rails to prevent unexpected charges being billed to your Amazon Web Services account. To learn more about best practices for using recursive invocation patterns, see <a href="https://serverlessland.com/content/service/lambda/guides/aws-lambda-operator-guide/recursive-runaway">Recursive patterns that cause run-away Lambda functions</a> in Serverless Land.</p> </important>
    #   @return [String]
    class PutFunctionRecursionConfigRequest < Struct.new(
      :function_name,
      :recursive_loop,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recursive_loop
    #   <p>The status of your function's recursive loop detection configuration.</p> <p>When this value is set to <code>Allow</code>and Lambda detects your function being invoked as part of a recursive loop, it doesn't take any action.</p> <p>When this value is set to <code>Terminate</code> and Lambda detects your function being invoked as part of a recursive loop, it stops your function being invoked and notifies you. </p>
    #   @return [String]
    class PutFunctionRecursionConfigResponse < Struct.new(
      :recursive_loop,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :qualifier,
      :provisioned_concurrent_executions,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class PutProvisionedConcurrencyConfigResponse < Struct.new(
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :qualifier,
      :update_runtime_on,
      :runtime_version_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :update_runtime_on,
      :function_arn,
      :runtime_version_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lambda has detected your function being invoked in a recursive loop with other Amazon Web Services resources and stopped your function's invocation.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class RecursiveInvocationException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RecursiveLoop
      Allow = 'Allow'
      Terminate = 'Terminate'
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
      :layer_name,
      :version_number,
      :statement_id,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :statement_id,
      :qualifier,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request payload exceeded the <code>Invoke</code> request body JSON input quota. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class RequestTooLargeException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource already exists, or another operation is in progress.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ResourceConflictException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The operation conflicts with the resource's availability. For example, you tried to update an event source mapping in the CREATING state, or you tried to delete an event source mapping currently UPDATING.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource specified in the request does not exist.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The function is inactive and its VPC connection is no longer available. Wait for the VPC connection to reestablish and try again.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ResourceNotReadyException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResponseStreamingInvocationType
      RequestResponse = 'RequestResponse'
      DryRun = 'DryRun'
    end

    module Runtime
      nodejs = 'nodejs'
      nodejs43 = 'nodejs4.3'
      nodejs610 = 'nodejs6.10'
      nodejs810 = 'nodejs8.10'
      nodejs10x = 'nodejs10.x'
      nodejs12x = 'nodejs12.x'
      nodejs14x = 'nodejs14.x'
      nodejs16x = 'nodejs16.x'
      java8 = 'java8'
      java8al2 = 'java8.al2'
      java11 = 'java11'
      python27 = 'python2.7'
      python36 = 'python3.6'
      python37 = 'python3.7'
      python38 = 'python3.8'
      python39 = 'python3.9'
      dotnetcore10 = 'dotnetcore1.0'
      dotnetcore20 = 'dotnetcore2.0'
      dotnetcore21 = 'dotnetcore2.1'
      dotnetcore31 = 'dotnetcore3.1'
      dotnet6 = 'dotnet6'
      dotnet8 = 'dotnet8'
      nodejs43edge = 'nodejs4.3-edge'
      go1x = 'go1.x'
      ruby25 = 'ruby2.5'
      ruby27 = 'ruby2.7'
      provided = 'provided'
      providedal2 = 'provided.al2'
      nodejs18x = 'nodejs18.x'
      python310 = 'python3.10'
      java17 = 'java17'
      ruby32 = 'ruby3.2'
      ruby33 = 'ruby3.3'
      ruby34 = 'ruby3.4'
      python311 = 'python3.11'
      nodejs20x = 'nodejs20.x'
      providedal2023 = 'provided.al2023'
      python312 = 'python3.12'
      java21 = 'java21'
      python313 = 'python3.13'
      nodejs22x = 'nodejs22.x'
    end

    # <p>The ARN of the runtime and any errors that occured.</p>
    # @!attribute runtime_version_arn
    #   <p>The ARN of the runtime version you want the function to use.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Error response when Lambda is unable to retrieve the runtime version for a function.</p>
    #   @return [Types::RuntimeVersionError]
    class RuntimeVersionConfig < Struct.new(
      :runtime_version_arn,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Any error returned when the runtime version information for the function could not be retrieved.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class RuntimeVersionError < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>(Amazon SQS only) The scaling configuration for the event source. To remove the configuration, pass an empty value.</p>
    # @!attribute maximum_concurrency
    #   <p>Limits the number of concurrent instances that the Amazon SQS event source can invoke.</p>
    #   @return [Integer]
    class ScalingConfig < Struct.new(
      :maximum_concurrency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SchemaRegistryEventRecordFormat
      JSON = 'JSON'
      SOURCE = 'SOURCE'
    end

    # <p>The self-managed Apache Kafka cluster for your event source.</p>
    # @!attribute endpoints
    #   <p>The list of bootstrap servers for your Kafka brokers in the following format: <code>"KAFKA_BOOTSTRAP_SERVERS": ["abc.xyz.com:xxxx","abc2.xyz.com:xxxx"]</code>.</p>
    #   @return [Hash<String, Array<String>>]
    class SelfManagedEventSource < Struct.new(
      :endpoints,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    # @!attribute consumer_group_id
    #   <p> The identifier for the Kafka consumer group to join. The consumer group ID must be unique among all your Kafka event sources. After creating a Kafka event source mapping with the consumer group ID specified, you cannot update this value. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka-process.html#services-smaa-topic-add">Customizable consumer group ID</a>.</p>
    #   @return [String]
    # @!attribute schema_registry_config
    #   <p>Specific configuration settings for a Kafka schema registry.</p>
    #   @return [Types::KafkaSchemaRegistryConfig]
    class SelfManagedKafkaEventSourceConfig < Struct.new(
      :consumer_group_id,
      :schema_registry_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Lambda service encountered an internal error.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Lambda SnapStart</a> setting. Set <code>ApplyOn</code> to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version.</p>
    # @!attribute apply_on
    #   <p>Set to <code>PublishedVersions</code> to create a snapshot of the initialized execution environment when you publish a function version.</p>
    #   @return [String]
    class SnapStart < Struct.new(
      :apply_on,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SnapStartApplyOn
      PublishedVersions = 'PublishedVersions'
      None = 'None'
    end

    # <p>The <code>afterRestore()</code> <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-runtime-hooks.html">runtime hook</a> encountered an error. For more information, check the Amazon CloudWatch logs.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class SnapStartException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lambda is initializing your function. You can invoke the function when the <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">function state</a> becomes <code>Active</code>.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class SnapStartNotReadyException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SnapStartOptimizationStatus
      On = 'On'
      Off = 'Off'
    end

    # <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
    # @!attribute apply_on
    #   <p>When set to <code>PublishedVersions</code>, Lambda creates a snapshot of the execution environment when you publish a function version.</p>
    #   @return [String]
    # @!attribute optimization_status
    #   <p>When you provide a <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using">qualified Amazon Resource Name (ARN)</a>, this response element indicates whether SnapStart is activated for the specified function version.</p>
    #   @return [String]
    class SnapStartResponse < Struct.new(
      :apply_on,
      :optimization_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lambda couldn't restore the snapshot within the timeout limit.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class SnapStartTimeoutException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>To secure and define access to your event source, you can specify the authentication protocol, VPC components, or virtual host.</p>
    # @!attribute type
    #   <p>The type of authentication protocol, VPC components, or virtual host for your event source. For example: <code>"Type":"SASL_SCRAM_512_AUTH"</code>.</p> <ul> <li> <p> <code>BASIC_AUTH</code> – (Amazon MQ) The Secrets Manager secret that stores your broker credentials.</p> </li> <li> <p> <code>BASIC_AUTH</code> – (Self-managed Apache Kafka) The Secrets Manager ARN of your secret key used for SASL/PLAIN authentication of your Apache Kafka brokers.</p> </li> <li> <p> <code>VPC_SUBNET</code> – (Self-managed Apache Kafka) The subnets associated with your VPC. Lambda connects to these subnets to fetch data from your self-managed Apache Kafka cluster.</p> </li> <li> <p> <code>VPC_SECURITY_GROUP</code> – (Self-managed Apache Kafka) The VPC security group used to manage access to your self-managed Apache Kafka brokers.</p> </li> <li> <p> <code>SASL_SCRAM_256_AUTH</code> – (Self-managed Apache Kafka) The Secrets Manager ARN of your secret key used for SASL SCRAM-256 authentication of your self-managed Apache Kafka brokers.</p> </li> <li> <p> <code>SASL_SCRAM_512_AUTH</code> – (Amazon MSK, Self-managed Apache Kafka) The Secrets Manager ARN of your secret key used for SASL SCRAM-512 authentication of your self-managed Apache Kafka brokers.</p> </li> <li> <p> <code>VIRTUAL_HOST</code> –- (RabbitMQ) The name of the virtual host in your RabbitMQ broker. Lambda uses this RabbitMQ host as the event source. This property cannot be specified in an UpdateEventSourceMapping API call.</p> </li> <li> <p> <code>CLIENT_CERTIFICATE_TLS_AUTH</code> – (Amazon MSK, self-managed Apache Kafka) The Secrets Manager ARN of your secret key containing the certificate chain (X.509 PEM), private key (PKCS#8 PEM), and private key password (optional) used for mutual TLS authentication of your MSK/Apache Kafka brokers.</p> </li> <li> <p> <code>SERVER_ROOT_CA_CERTIFICATE</code> – (Self-managed Apache Kafka) The Secrets Manager ARN of your secret key containing the root CA certificate (X.509 PEM) used for TLS encryption of your Apache Kafka brokers. </p> </li> </ul>
    #   @return [String]
    # @!attribute uri
    #   <p>The value for your chosen configuration in <code>Type</code>. For example: <code>"URI": "arn:aws:secretsmanager:us-east-1:01234567890:secret:MyBrokerSecretName"</code>.</p>
    #   @return [String]
    class SourceAccessConfiguration < Struct.new(
      :type,
      :uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SourceAccessType
      BASIC_AUTH = 'BASIC_AUTH'
      VPC_SUBNET = 'VPC_SUBNET'
      VPC_SECURITY_GROUP = 'VPC_SECURITY_GROUP'
      SASL_SCRAM_512_AUTH = 'SASL_SCRAM_512_AUTH'
      SASL_SCRAM_256_AUTH = 'SASL_SCRAM_256_AUTH'
      VIRTUAL_HOST = 'VIRTUAL_HOST'
      CLIENT_CERTIFICATE_TLS_AUTH = 'CLIENT_CERTIFICATE_TLS_AUTH'
      SERVER_ROOT_CA_CERTIFICATE = 'SERVER_ROOT_CA_CERTIFICATE'
    end

    module State
      Pending = 'Pending'
      Active = 'Active'
      Inactive = 'Inactive'
      Failed = 'Failed'
    end

    module StateReasonCode
      Idle = 'Idle'
      Creating = 'Creating'
      Restoring = 'Restoring'
      EniLimitExceeded = 'EniLimitExceeded'
      InsufficientRolePermissions = 'InsufficientRolePermissions'
      InvalidConfiguration = 'InvalidConfiguration'
      InternalError = 'InternalError'
      SubnetOutOfIPAddresses = 'SubnetOutOfIPAddresses'
      InvalidSubnet = 'InvalidSubnet'
      InvalidSecurityGroup = 'InvalidSecurityGroup'
      ImageDeleted = 'ImageDeleted'
      ImageAccessDenied = 'ImageAccessDenied'
      InvalidImage = 'InvalidImage'
      KMSKeyAccessDenied = 'KMSKeyAccessDenied'
      KMSKeyNotFound = 'KMSKeyNotFound'
      InvalidStateKMSKey = 'InvalidStateKMSKey'
      DisabledKMSKey = 'DisabledKMSKey'
      EFSIOError = 'EFSIOError'
      EFSMountConnectivityError = 'EFSMountConnectivityError'
      EFSMountFailure = 'EFSMountFailure'
      EFSMountTimeout = 'EFSMountTimeout'
      InvalidRuntime = 'InvalidRuntime'
      InvalidZipFileException = 'InvalidZipFileException'
      FunctionError = 'FunctionError'
    end

    # <p>Lambda couldn't set up VPC access for the Lambda function because one or more configured subnets has no available IP addresses.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class SubnetIPAddressLimitReachedException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SystemLogLevel
      Debug = 'DEBUG'
      Info = 'INFO'
      Warn = 'WARN'
    end

    # @!attribute resource
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to apply to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains details about an error related to retrieving tags.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class TagsError < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ThrottleReason
      ConcurrentInvocationLimitExceeded = 'ConcurrentInvocationLimitExceeded'
      FunctionInvocationRateLimitExceeded = 'FunctionInvocationRateLimitExceeded'
      ReservedFunctionConcurrentInvocationLimitExceeded = 'ReservedFunctionConcurrentInvocationLimitExceeded'
      ReservedFunctionInvocationRateLimitExceeded = 'ReservedFunctionInvocationRateLimitExceeded'
      CallerRateLimitExceeded = 'CallerRateLimitExceeded'
      ConcurrentSnapshotCreateLimitExceeded = 'ConcurrentSnapshotCreateLimitExceeded'
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
      :retry_after_seconds,
      :type,
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a> tracing configuration. To sample and record incoming requests, set <code>Mode</code> to <code>Active</code>.</p>
    # @!attribute mode
    #   <p>The tracing mode.</p>
    #   @return [String]
    class TracingConfig < Struct.new(
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The function's X-Ray tracing configuration.</p>
    # @!attribute mode
    #   <p>The tracing mode.</p>
    #   @return [String]
    class TracingConfigResponse < Struct.new(
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TracingMode
      Active = 'Active'
      PassThrough = 'PassThrough'
    end

    # <p>The content type of the <code>Invoke</code> request body is not JSON.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class UnsupportedMediaTypeException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_signing_config
    #   <p>The code signing configuration</p>
    #   @return [Types::CodeSigningConfig]
    class UpdateCodeSigningConfigResponse < Struct.new(
      :code_signing_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka event sources only) A configuration object that specifies the destination of an event after Lambda processes it.</p>
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
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, Lambda never discards old records.</p> <note> <p>The minimum valid value for maximum record age is 60s. Although values less than 60 and greater than -1 fall within the parameter's absolute range, they are not allowed</p> </note>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, Lambda retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>.</p>
    #   @return [String]
    # @!attribute filter_criteria_error
    #   <p>An object that contains details about an error related to filter criteria encryption.</p>
    #   @return [Types::FilterCriteriaError]
    # @!attribute event_source_mapping_arn
    #   <p>The Amazon Resource Name (ARN) of the event source mapping.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon MSK and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class UpdateEventSourceMappingOutput < Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :filter_criteria,
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
      :scaling_config,
      :document_db_event_source_config,
      :kms_key_arn,
      :filter_criteria_error,
      :event_source_mapping_arn,
      :metrics_config,
      :provisioned_poller_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For Kinesis, DynamoDB, and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For Kinesis, DynamoDB, and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #   @return [Integer]
    # @!attribute destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Kafka only) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is infinite (-1).</p>
    #   @return [Integer]
    # @!attribute bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry.</p>
    #   @return [Boolean]
    # @!attribute maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process from each shard concurrently.</p>
    #   @return [Integer]
    # @!attribute source_access_configurations
    #   <p>An array of authentication protocols or VPC components required to secure your event source.</p>
    #   @return [Array<Types::SourceAccessConfiguration>]
    # @!attribute tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #   @return [Integer]
    # @!attribute function_response_types
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #   @return [Array<String>]
    # @!attribute scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    # @!attribute self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    # @!attribute document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    #   @return [Types::DocumentDBEventSourceConfig]
    # @!attribute kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>. By default, Lambda does not encrypt your filter criteria object. Specify this property to encrypt data using your own customer managed key. </p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    #   @return [Types::EventSourceMappingMetricsConfig]
    # @!attribute provisioned_poller_config
    #   <p>(Amazon MSK and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    #   @return [Types::ProvisionedPollerConfig]
    class UpdateEventSourceMappingRequest < Struct.new(
      :uuid,
      :function_name,
      :enabled,
      :batch_size,
      :filter_criteria,
      :maximum_batching_window_in_seconds,
      :destination_config,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :parallelization_factor,
      :source_access_configurations,
      :tumbling_window_in_seconds,
      :function_response_types,
      :scaling_config,
      :amazon_managed_kafka_event_source_config,
      :self_managed_kafka_event_source_config,
      :document_db_event_source_config,
      :kms_key_arn,
      :metrics_config,
      :provisioned_poller_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
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
    class UpdateFunctionCodeOutput < Struct.new(
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
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      keyword_init: true)
      include Smithy::Schema::Structure

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
    # @!attribute image_uri
    #   <p>URI of a container image in the Amazon ECR registry. Do not use for a function defined with a .zip file archive.</p>
    #   @return [String]
    # @!attribute publish
    #   <p>Set to true to publish a new version of the function after updating the code. This has the same effect as calling <a>PublishVersion</a> separately.</p>
    #   @return [Boolean]
    # @!attribute dry_run
    #   <p>Set to true to validate the request parameters and access permissions without modifying the function code.</p>
    #   @return [Boolean]
    # @!attribute revision_id
    #   <p>Update the function only if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.</p>
    #   @return [String]
    # @!attribute architectures
    #   <p>The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute source_kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt your function's .zip deployment package. If you don't provide a customer managed key, Lambda uses an Amazon Web Services managed key.</p>
    #   @return [String]
    class UpdateFunctionCodeRequest < Struct.new(
      :function_name,
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :image_uri,
      :publish,
      :dry_run,
      :revision_id,
      :architectures,
      :source_kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>Connection settings for an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a>.</p>
    #   @return [Array<Types::FileSystemConfig>]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #   @return [Types::ImageConfigResponse]
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #   @return [String]
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #   @return [String]
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
    class UpdateFunctionConfigurationOutput < Struct.new(
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
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      :architectures,
      :ephemeral_storage,
      :snap_start,
      :runtime_version_config,
      :logging_config,
      keyword_init: true)
      include Smithy::Schema::Structure

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
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
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
    #   <p>Connection settings for an Amazon EFS file system.</p>
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
    class UpdateFunctionConfigurationRequest < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The alias name.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
    #   @return [String]
    # @!attribute cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    #   @return [Types::Cors]
    # @!attribute invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    #   @return [String]
    class UpdateFunctionUrlConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :auth_type,
      :cors,
      :invoke_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute function_url
    #   <p>The HTTP URL endpoint for your function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of your function.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
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
      :function_url,
      :function_arn,
      :auth_type,
      :cors,
      :creation_time,
      :last_modified_time,
      :invoke_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UpdateRuntimeOn
      Auto = 'Auto'
      Manual = 'Manual'
      FunctionUpdate = 'FunctionUpdate'
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
      :subnet_ids,
      :security_group_ids,
      :ipv6_allowed_for_dual_stack,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :subnet_ids,
      :security_group_ids,
      :vpc_id,
      :ipv6_allowed_for_dual_stack,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
