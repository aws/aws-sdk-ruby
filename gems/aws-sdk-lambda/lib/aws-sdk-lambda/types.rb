# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lambda
  module Types

    # Limits that are related to concurrency and storage. All file and
    # storage sizes are in bytes.
    #
    # @!attribute [rw] total_code_size
    #   The amount of storage space that you can use for all deployment
    #   packages and layer archives.
    #   @return [Integer]
    #
    # @!attribute [rw] code_size_unzipped
    #   The maximum size of a function's deployment package and layers when
    #   they're extracted.
    #   @return [Integer]
    #
    # @!attribute [rw] code_size_zipped
    #   The maximum size of a deployment package when it's uploaded
    #   directly to Lambda. Use Amazon S3 for larger files.
    #   @return [Integer]
    #
    # @!attribute [rw] concurrent_executions
    #   The maximum number of simultaneous function executions.
    #   @return [Integer]
    #
    # @!attribute [rw] unreserved_concurrent_executions
    #   The maximum number of simultaneous function executions, minus the
    #   capacity that's reserved for individual functions with
    #   PutFunctionConcurrency.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AccountLimit AWS API Documentation
    #
    class AccountLimit < Struct.new(
      :total_code_size,
      :code_size_unzipped,
      :code_size_zipped,
      :concurrent_executions,
      :unreserved_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of functions and amount of storage in use.
    #
    # @!attribute [rw] total_code_size
    #   The amount of storage space, in bytes, that's being used by
    #   deployment packages and layer archives.
    #   @return [Integer]
    #
    # @!attribute [rw] function_count
    #   The number of Lambda functions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AccountUsage AWS API Documentation
    #
    class AccountUsage < Struct.new(
      :total_code_size,
      :function_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] statement_id
    #   An identifier that distinguishes the policy from others on the same
    #   layer version.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The API action that grants access to the layer. For example,
    #   `lambda:GetLayerVersion`.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   An account ID, or `*` to grant layer usage permission to all
    #   accounts in an organization, or all Amazon Web Services accounts (if
    #   `organizationId` is not specified). For the last case, make sure
    #   that you really do want all Amazon Web Services accounts to have
    #   usage permission to this layer.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   With the principal set to `*`, grant permission to all accounts in
    #   the specified organization.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Only update the policy if the revision ID matches the ID specified.
    #   Use this option to avoid modifying a policy that has changed since
    #   you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddLayerVersionPermissionRequest AWS API Documentation
    #
    class AddLayerVersionPermissionRequest < Struct.new(
      :layer_name,
      :version_number,
      :statement_id,
      :action,
      :principal,
      :organization_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statement
    #   The permission statement.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddLayerVersionPermissionResponse AWS API Documentation
    #
    class AddLayerVersionPermissionResponse < Struct.new(
      :statement,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   A statement identifier that differentiates the statement from others
    #   in the same policy.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action that the principal can use on the function. For example,
    #   `lambda:InvokeFunction` or `lambda:GetFunction`.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The Amazon Web Service or Amazon Web Services account that invokes
    #   the function. If you specify a service, use `SourceArn` or
    #   `SourceAccount` to limit who can invoke the function through that
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   For Amazon Web Services, the ARN of the Amazon Web Services resource
    #   that invokes the function. For example, an Amazon S3 bucket or
    #   Amazon SNS topic.
    #
    #   Note that Lambda configures the comparison using the `StringLike`
    #   operator.
    #   @return [String]
    #
    # @!attribute [rw] source_account
    #   For Amazon Web Service, the ID of the Amazon Web Services account
    #   that owns the resource. Use this together with `SourceArn` to ensure
    #   that the specified account owns the resource. It is possible for an
    #   Amazon S3 bucket to be deleted by its owner and recreated by another
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] event_source_token
    #   For Alexa Smart Home functions, a token that the invoker must
    #   supply.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to add permissions to a published version
    #   of the function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Update the policy only if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a policy that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @!attribute [rw] principal_org_id
    #   The identifier for your organization in Organizations. Use this to
    #   grant permissions to all the Amazon Web Services accounts under this
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] function_url_auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users
    #   only. Set to `NONE` if you want to bypass IAM authentication to
    #   create a public endpoint. For more information, see [Security and
    #   auth model for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddPermissionRequest AWS API Documentation
    #
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
      :function_url_auth_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statement
    #   The permission statement that's added to the function policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddPermissionResponse AWS API Documentation
    #
    class AddPermissionResponse < Struct.new(
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information about a Lambda function [alias][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
    #
    # @!attribute [rw] alias_arn
    #   The Amazon Resource Name (ARN) of the alias.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The function version that the alias invokes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html
    #   @return [Types::AliasRoutingConfiguration]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier that changes when you update the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AliasConfiguration AWS API Documentation
    #
    class AliasConfiguration < Struct.new(
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The [traffic-shifting][1] configuration of a Lambda function alias.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html
    #
    # @!attribute [rw] additional_version_weights
    #   The second version, and the percentage of traffic that's routed to
    #   it.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AliasRoutingConfiguration AWS API Documentation
    #
    class AliasRoutingConfiguration < Struct.new(
      :additional_version_weights)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of signing profiles that can sign a code package.
    #
    # @!attribute [rw] signing_profile_version_arns
    #   The Amazon Resource Name (ARN) for each of the signing profiles. A
    #   signing profile defines a trusted user who can sign a code package.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AllowedPublishers AWS API Documentation
    #
    class AllowedPublishers < Struct.new(
      :signing_profile_version_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specific configuration settings for an Amazon Managed Streaming for
    # Apache Kafka (Amazon MSK) event source.
    #
    # @!attribute [rw] consumer_group_id
    #   The identifier for the Kafka consumer group to join. The consumer
    #   group ID must be unique among all your Kafka event sources. After
    #   creating a Kafka event source mapping with the consumer group ID
    #   specified, you cannot update this value. For more information, see
    #   [Customizable consumer group ID][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-consumer-group-id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AmazonManagedKafkaEventSourceConfig AWS API Documentation
    #
    class AmazonManagedKafkaEventSourceConfig < Struct.new(
      :consumer_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a [Code signing configuration][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html
    #
    # @!attribute [rw] code_signing_config_id
    #   Unique identifer for the Code signing configuration.
    #   @return [String]
    #
    # @!attribute [rw] code_signing_config_arn
    #   The Amazon Resource Name (ARN) of the Code signing configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Code signing configuration description.
    #   @return [String]
    #
    # @!attribute [rw] allowed_publishers
    #   List of allowed publishers.
    #   @return [Types::AllowedPublishers]
    #
    # @!attribute [rw] code_signing_policies
    #   The code signing policy controls the validation failure action for
    #   signature mismatch or expiry.
    #   @return [Types::CodeSigningPolicies]
    #
    # @!attribute [rw] last_modified
    #   The date and time that the Code signing configuration was last
    #   modified, in ISO-8601 format (YYYY-MM-DDThh:mm:ss.sTZD).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeSigningConfig AWS API Documentation
    #
    class CodeSigningConfig < Struct.new(
      :code_signing_config_id,
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified code signing configuration does not exist.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeSigningConfigNotFoundException AWS API Documentation
    #
    class CodeSigningConfigNotFoundException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Code signing configuration [policies][1] specify the validation
    # failure action for signature mismatch or expiry.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html#config-codesigning-policies
    #
    # @!attribute [rw] untrusted_artifact_on_deployment
    #   Code signing configuration policy for deployment validation failure.
    #   If you set the policy to `Enforce`, Lambda blocks the deployment
    #   request if signature validation checks fail. If you set the policy
    #   to `Warn`, Lambda allows the deployment and creates a CloudWatch
    #   log.
    #
    #   Default value: `Warn`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeSigningPolicies AWS API Documentation
    #
    class CodeSigningPolicies < Struct.new(
      :untrusted_artifact_on_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your Amazon Web Services account has exceeded its maximum total code
    # size. For more information, see [Lambda quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeStorageExceededException AWS API Documentation
    #
    class CodeStorageExceededException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code signature failed one or more of the validation checks for
    # signature mismatch or expiry, and the code signing policy is set to
    # ENFORCE. Lambda blocks the deployment.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeVerificationFailedException AWS API Documentation
    #
    class CodeVerificationFailedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reserved_concurrent_executions
    #   The number of concurrent executions that are reserved for this
    #   function. For more information, see [Managing Lambda reserved
    #   concurrency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-concurrency.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Concurrency AWS API Documentation
    #
    class Concurrency < Struct.new(
      :reserved_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The [cross-origin resource sharing (CORS)][1] settings for your Lambda
    # function URL. Use CORS to grant access to your function URL from any
    # origin. You can also use CORS to control access for specific HTTP
    # headers and methods in requests to your function URL.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #
    # @!attribute [rw] allow_credentials
    #   Whether to allow cookies or other credentials in requests to your
    #   function URL. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_headers
    #   The HTTP headers that origins can include in requests to your
    #   function URL. For example: `Date`, `Keep-Alive`, `X-Custom-Header`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_methods
    #   The HTTP methods that are allowed when calling your function URL.
    #   For example: `GET`, `POST`, `DELETE`, or the wildcard character
    #   (`*`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_origins
    #   The origins that can access your function URL. You can list any
    #   number of specific origins, separated by a comma. For example:
    #   `https://www.example.com`, `http://localhost:60905`.
    #
    #   Alternatively, you can grant access to all origins using the
    #   wildcard character (`*`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] expose_headers
    #   The HTTP headers in your function response that you want to expose
    #   to origins that call your function URL. For example: `Date`,
    #   `Keep-Alive`, `X-Custom-Header`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_age
    #   The maximum amount of time, in seconds, that web browsers can cache
    #   results of a preflight request. By default, this is set to `0`,
    #   which means that the browser doesn't cache results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Cors AWS API Documentation
    #
    class Cors < Struct.new(
      :allow_credentials,
      :allow_headers,
      :allow_methods,
      :allow_origins,
      :expose_headers,
      :max_age)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The function version that the alias invokes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing
    #   @return [Types::AliasRoutingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateAliasRequest AWS API Documentation
    #
    class CreateAliasRequest < Struct.new(
      :function_name,
      :name,
      :function_version,
      :description,
      :routing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   Descriptive name for this code signing configuration.
    #   @return [String]
    #
    # @!attribute [rw] allowed_publishers
    #   Signing profiles for this code signing configuration.
    #   @return [Types::AllowedPublishers]
    #
    # @!attribute [rw] code_signing_policies
    #   The code signing policies define the actions to take if the
    #   validation checks fail.
    #   @return [Types::CodeSigningPolicies]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateCodeSigningConfigRequest AWS API Documentation
    #
    class CreateCodeSigningConfigRequest < Struct.new(
      :description,
      :allowed_publishers,
      :code_signing_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config
    #   The code signing configuration.
    #   @return [Types::CodeSigningConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateCodeSigningConfigResponse AWS API Documentation
    #
    class CreateCodeSigningConfigResponse < Struct.new(
      :code_signing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #
    #   * **Amazon Kinesis** – The ARN of the data stream or a stream
    #     consumer.
    #
    #   * **Amazon DynamoDB Streams** – The ARN of the stream.
    #
    #   * **Amazon Simple Queue Service** – The ARN of the queue.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** – The ARN of the
    #     cluster.
    #
    #   * **Amazon MQ** – The ARN of the broker.
    #
    #   * **Amazon DocumentDB** – The ARN of the DocumentDB change stream.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `MyFunction`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** – `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   When true, the event source mapping is active. When false, Lambda
    #   pauses polling and invocation.
    #
    #   Default: True
    #   @return [Boolean]
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records in each batch that Lambda pulls from
    #   your stream or queue and sends to your function. Lambda passes all
    #   of the records in the batch to the function in a single call, up to
    #   the payload limit for synchronous invocation (6 MB).
    #
    #   * **Amazon Kinesis** – Default 100. Max 10,000.
    #
    #   * **Amazon DynamoDB Streams** – Default 100. Max 10,000.
    #
    #   * **Amazon Simple Queue Service** – Default 10. For standard queues
    #     the max is 10,000. For FIFO queues the max is 10.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** – Default 100. Max
    #     10,000.
    #
    #   * **Self-managed Apache Kafka** – Default 100. Max 10,000.
    #
    #   * **Amazon MQ (ActiveMQ and RabbitMQ)** – Default 100. Max 10,000.
    #
    #   * **DocumentDB** – Default 100. Max 10,000.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_criteria
    #   An object that defines the filter criteria that determine whether
    #   Lambda should process an event. For more information, see [Lambda
    #   event filtering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum amount of time, in seconds, that Lambda spends gathering
    #   records before invoking the function. You can configure
    #   `MaximumBatchingWindowInSeconds` to any value from 0 seconds to 300
    #   seconds in increments of seconds.
    #
    #   For streams and Amazon SQS event sources, the default batching
    #   window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka,
    #   Amazon MQ, and DocumentDB event sources, the default batching window
    #   is 500 ms. Note that because you can only change
    #   `MaximumBatchingWindowInSeconds` in increments of seconds, you
    #   cannot revert back to the 500 ms default batching window after you
    #   have changed it. To restore the default batching window, you must
    #   create a new event source mapping.
    #
    #   Related setting: For streams and Amazon SQS event sources, when you
    #   set `BatchSize` to a value greater than 10, you must set
    #   `MaximumBatchingWindowInSeconds` to at least 1.
    #   @return [Integer]
    #
    # @!attribute [rw] parallelization_factor
    #   (Kinesis and DynamoDB Streams only) The number of batches to process
    #   from each shard concurrently.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_position
    #   The position in a stream from which to start reading. Required for
    #   Amazon Kinesis and Amazon DynamoDB Stream event sources.
    #   `AT_TIMESTAMP` is supported only for Amazon Kinesis streams, Amazon
    #   DocumentDB, Amazon MSK, and self-managed Apache Kafka.
    #   @return [String]
    #
    # @!attribute [rw] starting_position_timestamp
    #   With `StartingPosition` set to `AT_TIMESTAMP`, the time from which
    #   to start reading. `StartingPositionTimestamp` cannot be in the
    #   future.
    #   @return [Time]
    #
    # @!attribute [rw] destination_config
    #   (Kinesis and DynamoDB Streams only) A standard Amazon SQS queue or
    #   standard Amazon SNS topic destination for discarded records.
    #   @return [Types::DestinationConfig]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Kinesis and DynamoDB Streams only) Discard records older than the
    #   specified age. The default value is infinite (-1).
    #   @return [Integer]
    #
    # @!attribute [rw] bisect_batch_on_function_error
    #   (Kinesis and DynamoDB Streams only) If the function returns an
    #   error, split the batch in two and retry.
    #   @return [Boolean]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Kinesis and DynamoDB Streams only) Discard records after the
    #   specified number of retries. The default value is infinite (-1).
    #   When set to infinite (-1), failed records are retried until the
    #   record expires.
    #   @return [Integer]
    #
    # @!attribute [rw] tumbling_window_in_seconds
    #   (Kinesis and DynamoDB Streams only) The duration in seconds of a
    #   processing window for DynamoDB and Kinesis Streams event sources. A
    #   value of 0 seconds indicates no tumbling window.
    #   @return [Integer]
    #
    # @!attribute [rw] topics
    #   The name of the Kafka topic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] queues
    #   (MQ) The name of the Amazon MQ broker destination queue to consume.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_access_configurations
    #   An array of authentication protocols or VPC components required to
    #   secure your event source.
    #   @return [Array<Types::SourceAccessConfiguration>]
    #
    # @!attribute [rw] self_managed_event_source
    #   The self-managed Apache Kafka cluster to receive records from.
    #   @return [Types::SelfManagedEventSource]
    #
    # @!attribute [rw] function_response_types
    #   (Kinesis, DynamoDB Streams, and Amazon SQS) A list of current
    #   response type enums applied to the event source mapping.
    #   @return [Array<String>]
    #
    # @!attribute [rw] amazon_managed_kafka_event_source_config
    #   Specific configuration settings for an Amazon Managed Streaming for
    #   Apache Kafka (Amazon MSK) event source.
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    #
    # @!attribute [rw] self_managed_kafka_event_source_config
    #   Specific configuration settings for a self-managed Apache Kafka
    #   event source.
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    #
    # @!attribute [rw] scaling_config
    #   (Amazon SQS only) The scaling configuration for the event source.
    #   For more information, see [Configuring maximum concurrency for
    #   Amazon SQS event sources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] document_db_event_source_config
    #   Specific configuration settings for a DocumentDB event source.
    #   @return [Types::DocumentDBEventSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateEventSourceMappingRequest AWS API Documentation
    #
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
      :tumbling_window_in_seconds,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :function_response_types,
      :amazon_managed_kafka_event_source_config,
      :self_managed_kafka_event_source_config,
      :scaling_config,
      :document_db_event_source_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The identifier of the function's [runtime][1]. Runtime is required
    #   if the deployment package is a .zip file archive.
    #
    #   The following list includes deprecated runtimes. For more
    #   information, see [Runtime deprecation policy][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The name of the method within your code that Lambda calls to run
    #   your function. Handler is required if the deployment package is a
    #   .zip file archive. The format includes the file name. It can also
    #   include namespaces and other qualifiers, depending on the runtime.
    #   For more information, see [Lambda programming model][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The code for the function.
    #   @return [Types::FunctionCode]
    #
    # @!attribute [rw] description
    #   A description of the function.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time (in seconds) that Lambda allows a function to run
    #   before stopping it. The default is 3 seconds. The maximum allowed
    #   value is 900 seconds. For more information, see [Lambda execution
    #   environment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The amount of [memory available to the function][1] at runtime.
    #   Increasing the function memory also increases its CPU allocation.
    #   The default value is 128 MB. The value can be any multiple of 1 MB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console
    #   @return [Integer]
    #
    # @!attribute [rw] publish
    #   Set to true to publish the first version of the function during
    #   creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_config
    #   For network connectivity to Amazon Web Services resources in a VPC,
    #   specify a list of security groups and subnets in the VPC. When you
    #   connect a function to a VPC, it can access resources and the
    #   internet only through that VPC. For more information, see
    #   [Configuring a Lambda function to access resources in a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] package_type
    #   The type of deployment package. Set to `Image` for container image
    #   and set to `Zip` for .zip file archive.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_config
    #   A dead-letter queue configuration that specifies the queue or topic
    #   where Lambda sends asynchronous events when they fail processing.
    #   For more information, see [Dead-letter queues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] environment
    #   Environment variables that are accessible from function code during
    #   execution.
    #   @return [Types::Environment]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the Key Management Service (KMS) customer managed key
    #   that's used to encrypt your function's [environment variables][1].
    #   When [Lambda SnapStart][2] is activated, Lambda also uses this key
    #   is to encrypt your function's snapshot. If you deploy your function
    #   using a container image, Lambda also uses this key to encrypt your
    #   function when it's deployed. Note that this is not the same key
    #   that's used to protect your container image in the Amazon Elastic
    #   Container Registry (Amazon ECR). If you don't provide a customer
    #   managed key, Lambda uses a default service key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html
    #   @return [String]
    #
    # @!attribute [rw] tracing_config
    #   Set `Mode` to `Active` to sample and trace a subset of incoming
    #   requests with [X-Ray][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html
    #   @return [Types::TracingConfig]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the function.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] layers
    #   A list of [function layers][1] to add to the function's execution
    #   environment. Specify each layer by its ARN, including the version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] file_system_configs
    #   Connection settings for an Amazon EFS file system.
    #   @return [Array<Types::FileSystemConfig>]
    #
    # @!attribute [rw] image_config
    #   Container image [configuration values][1] that override the values
    #   in the container image Dockerfile.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-images.html#configuration-images-settings
    #   @return [Types::ImageConfig]
    #
    # @!attribute [rw] code_signing_config_arn
    #   To enable code signing for this function, specify the ARN of a
    #   code-signing configuration. A code-signing configuration includes a
    #   set of signing profiles, which define the trusted publishers for
    #   this function.
    #   @return [String]
    #
    # @!attribute [rw] architectures
    #   The instruction set architecture that the function supports. Enter a
    #   string array with one of the valid values (arm64 or x86\_64). The
    #   default value is `x86_64`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ephemeral_storage
    #   The size of the function's `/tmp` directory in MB. The default
    #   value is 512, but can be any whole number between 512 and 10,240 MB.
    #   @return [Types::EphemeralStorage]
    #
    # @!attribute [rw] snap_start
    #   The function's [SnapStart][1] setting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html
    #   @return [Types::SnapStart]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateFunctionRequest AWS API Documentation
    #
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
      :snap_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The alias name.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users
    #   only. Set to `NONE` if you want to bypass IAM authentication to
    #   create a public endpoint. For more information, see [Security and
    #   auth model for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #   @return [String]
    #
    # @!attribute [rw] cors
    #   The [cross-origin resource sharing (CORS)][1] settings for your
    #   function URL.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #   @return [Types::Cors]
    #
    # @!attribute [rw] invoke_mode
    #   Use one of the following options:
    #
    #   * `BUFFERED` – This is the default option. Lambda invokes your
    #     function using the `Invoke` API operation. Invocation results are
    #     available when the payload is complete. The maximum payload size
    #     is 6 MB.
    #
    #   * `RESPONSE_STREAM` – Your function streams payload results as they
    #     become available. Lambda invokes your function using the
    #     `InvokeWithResponseStream` API operation. The maximum response
    #     payload size is 20 MB, however, you can [request a quota
    #     increase][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateFunctionUrlConfigRequest AWS API Documentation
    #
    class CreateFunctionUrlConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :auth_type,
      :cors,
      :invoke_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_url
    #   The HTTP URL endpoint for your function.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of your function.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users
    #   only. Set to `NONE` if you want to bypass IAM authentication to
    #   create a public endpoint. For more information, see [Security and
    #   auth model for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #   @return [String]
    #
    # @!attribute [rw] cors
    #   The [cross-origin resource sharing (CORS)][1] settings for your
    #   function URL.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #   @return [Types::Cors]
    #
    # @!attribute [rw] creation_time
    #   When the function URL was created, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] invoke_mode
    #   Use one of the following options:
    #
    #   * `BUFFERED` – This is the default option. Lambda invokes your
    #     function using the `Invoke` API operation. Invocation results are
    #     available when the payload is complete. The maximum payload size
    #     is 6 MB.
    #
    #   * `RESPONSE_STREAM` – Your function streams payload results as they
    #     become available. Lambda invokes your function using the
    #     `InvokeWithResponseStream` API operation. The maximum response
    #     payload size is 20 MB, however, you can [request a quota
    #     increase][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateFunctionUrlConfigResponse AWS API Documentation
    #
    class CreateFunctionUrlConfigResponse < Struct.new(
      :function_url,
      :function_arn,
      :auth_type,
      :cors,
      :creation_time,
      :invoke_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The [dead-letter queue][1] for failed asynchronous invocations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS
    #   topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeadLetterConfig AWS API Documentation
    #
    class DeadLetterConfig < Struct.new(
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteAliasRequest AWS API Documentation
    #
    class DeleteAliasRequest < Struct.new(
      :function_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteCodeSigningConfigRequest AWS API Documentation
    #
    class DeleteCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteCodeSigningConfigResponse AWS API Documentation
    #
    class DeleteCodeSigningConfigResponse < Aws::EmptyStructure; end

    # @!attribute [rw] uuid
    #   The identifier of the event source mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteEventSourceMappingRequest AWS API Documentation
    #
    class DeleteEventSourceMappingRequest < Struct.new(
      :uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionCodeSigningConfigRequest AWS API Documentation
    #
    class DeleteFunctionCodeSigningConfigRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionConcurrencyRequest AWS API Documentation
    #
    class DeleteFunctionConcurrencyRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   A version number or alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionEventInvokeConfigRequest AWS API Documentation
    #
    class DeleteFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function or version.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:1`
    #     (with version).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version to delete. You can't delete a version that an
    #   alias references.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionRequest AWS API Documentation
    #
    class DeleteFunctionRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionUrlConfigRequest AWS API Documentation
    #
    class DeleteFunctionUrlConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteLayerVersionRequest AWS API Documentation
    #
    class DeleteLayerVersionRequest < Struct.new(
      :layer_name,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The version number or alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteProvisionedConcurrencyConfigRequest AWS API Documentation
    #
    class DeleteProvisionedConcurrencyConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration object that specifies the destination of an event
    # after Lambda processes it.
    #
    # @!attribute [rw] on_success
    #   The destination configuration for successful invocations.
    #   @return [Types::OnSuccess]
    #
    # @!attribute [rw] on_failure
    #   The destination configuration for failed invocations.
    #   @return [Types::OnFailure]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DestinationConfig AWS API Documentation
    #
    class DestinationConfig < Struct.new(
      :on_success,
      :on_failure)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specific configuration settings for a DocumentDB event source.
    #
    # @!attribute [rw] database_name
    #   The name of the database to consume within the DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] collection_name
    #   The name of the collection to consume within the database. If you do
    #   not specify a collection, Lambda consumes all collections.
    #   @return [String]
    #
    # @!attribute [rw] full_document
    #   Determines what DocumentDB sends to your event stream during
    #   document update operations. If set to UpdateLookup, DocumentDB sends
    #   a delta describing the changes, along with a copy of the entire
    #   document. Otherwise, DocumentDB sends only a partial document that
    #   contains the changes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DocumentDBEventSourceConfig AWS API Documentation
    #
    class DocumentDBEventSourceConfig < Struct.new(
      :database_name,
      :collection_name,
      :full_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Need additional permissions to configure VPC settings.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EC2AccessDeniedException AWS API Documentation
    #
    class EC2AccessDeniedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon EC2 throttled Lambda during Lambda function initialization
    # using the execution role provided for the function.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EC2ThrottledException AWS API Documentation
    #
    class EC2ThrottledException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda received an unexpected Amazon EC2 client exception while
    # setting up for the Lambda function.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] ec2_error_code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EC2UnexpectedException AWS API Documentation
    #
    class EC2UnexpectedException < Struct.new(
      :type,
      :message,
      :ec2_error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred when reading from or writing to a connected file
    # system.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EFSIOException AWS API Documentation
    #
    class EFSIOException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lambda function couldn't make a network connection to the
    # configured file system.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EFSMountConnectivityException AWS API Documentation
    #
    class EFSMountConnectivityException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lambda function couldn't mount the configured file system due to
    # a permission or configuration issue.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EFSMountFailureException AWS API Documentation
    #
    class EFSMountFailureException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lambda function made a network connection to the configured file
    # system, but the mount operation timed out.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EFSMountTimeoutException AWS API Documentation
    #
    class EFSMountTimeoutException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda couldn't create an elastic network interface in the VPC,
    # specified as part of Lambda function configuration, because the limit
    # for network interfaces has been reached. For more information, see
    # [Lambda quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ENILimitReachedException AWS API Documentation
    #
    class ENILimitReachedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A function's environment variable settings. You can use environment
    # variables to adjust your function's behavior without updating code.
    # An environment variable is a pair of strings that are stored in a
    # function's version-specific configuration.
    #
    # @!attribute [rw] variables
    #   Environment variable key-value pairs. For more information, see
    #   [Using Lambda environment variables][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :variables)
      SENSITIVE = [:variables]
      include Aws::Structure
    end

    # Error messages for environment variables that couldn't be applied.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EnvironmentError AWS API Documentation
    #
    class EnvironmentError < Struct.new(
      :error_code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # The results of an operation to update or read environment variables.
    # If the operation succeeds, the response contains the environment
    # variables. If it fails, the response contains details about the error.
    #
    # @!attribute [rw] variables
    #   Environment variable key-value pairs. Omitted from CloudTrail logs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error
    #   Error messages for environment variables that couldn't be applied.
    #   @return [Types::EnvironmentError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EnvironmentResponse AWS API Documentation
    #
    class EnvironmentResponse < Struct.new(
      :variables,
      :error)
      SENSITIVE = [:variables]
      include Aws::Structure
    end

    # The size of the function's `/tmp` directory in MB. The default value
    # is 512, but it can be any whole number between 512 and 10,240 MB.
    #
    # @!attribute [rw] size
    #   The size of the function's `/tmp` directory.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EphemeralStorage AWS API Documentation
    #
    class EphemeralStorage < Struct.new(
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A mapping between an Amazon Web Services resource and a Lambda
    # function. For details, see CreateEventSourceMapping.
    #
    # @!attribute [rw] uuid
    #   The identifier of the event source mapping.
    #   @return [String]
    #
    # @!attribute [rw] starting_position
    #   The position in a stream from which to start reading. Required for
    #   Amazon Kinesis and Amazon DynamoDB Stream event sources.
    #   `AT_TIMESTAMP` is supported only for Amazon Kinesis streams, Amazon
    #   DocumentDB, Amazon MSK, and self-managed Apache Kafka.
    #   @return [String]
    #
    # @!attribute [rw] starting_position_timestamp
    #   With `StartingPosition` set to `AT_TIMESTAMP`, the time from which
    #   to start reading. `StartingPositionTimestamp` cannot be in the
    #   future.
    #   @return [Time]
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records in each batch that Lambda pulls from
    #   your stream or queue and sends to your function. Lambda passes all
    #   of the records in the batch to the function in a single call, up to
    #   the payload limit for synchronous invocation (6 MB).
    #
    #   Default value: Varies by service. For Amazon SQS, the default is 10.
    #   For all other services, the default is 100.
    #
    #   Related setting: When you set `BatchSize` to a value greater than
    #   10, you must set `MaximumBatchingWindowInSeconds` to at least 1.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum amount of time, in seconds, that Lambda spends gathering
    #   records before invoking the function. You can configure
    #   `MaximumBatchingWindowInSeconds` to any value from 0 seconds to 300
    #   seconds in increments of seconds.
    #
    #   For streams and Amazon SQS event sources, the default batching
    #   window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka,
    #   Amazon MQ, and DocumentDB event sources, the default batching window
    #   is 500 ms. Note that because you can only change
    #   `MaximumBatchingWindowInSeconds` in increments of seconds, you
    #   cannot revert back to the 500 ms default batching window after you
    #   have changed it. To restore the default batching window, you must
    #   create a new event source mapping.
    #
    #   Related setting: For streams and Amazon SQS event sources, when you
    #   set `BatchSize` to a value greater than 10, you must set
    #   `MaximumBatchingWindowInSeconds` to at least 1.
    #   @return [Integer]
    #
    # @!attribute [rw] parallelization_factor
    #   (Kinesis and DynamoDB Streams only) The number of batches to process
    #   concurrently from each shard. The default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   An object that defines the filter criteria that determine whether
    #   Lambda should process an event. For more information, see [Lambda
    #   event filtering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] function_arn
    #   The ARN of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date that the event source mapping was last updated or that its
    #   state changed.
    #   @return [Time]
    #
    # @!attribute [rw] last_processing_result
    #   The result of the last Lambda invocation of your function.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the event source mapping. It can be one of the
    #   following: `Creating`, `Enabling`, `Enabled`, `Disabling`,
    #   `Disabled`, `Updating`, or `Deleting`.
    #   @return [String]
    #
    # @!attribute [rw] state_transition_reason
    #   Indicates whether a user or Lambda made the last change to the event
    #   source mapping.
    #   @return [String]
    #
    # @!attribute [rw] destination_config
    #   (Kinesis and DynamoDB Streams only) An Amazon SQS queue or Amazon
    #   SNS topic destination for discarded records.
    #   @return [Types::DestinationConfig]
    #
    # @!attribute [rw] topics
    #   The name of the Kafka topic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] queues
    #   (Amazon MQ) The name of the Amazon MQ broker destination queue to
    #   consume.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_access_configurations
    #   An array of the authentication protocol, VPC components, or virtual
    #   host to secure and define your event source.
    #   @return [Array<Types::SourceAccessConfiguration>]
    #
    # @!attribute [rw] self_managed_event_source
    #   The self-managed Apache Kafka cluster for your event source.
    #   @return [Types::SelfManagedEventSource]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Kinesis and DynamoDB Streams only) Discard records older than the
    #   specified age. The default value is -1, which sets the maximum age
    #   to infinite. When the value is set to infinite, Lambda never
    #   discards old records.
    #
    #   <note markdown="1"> The minimum valid value for maximum record age is 60s. Although
    #   values less than 60 and greater than -1 fall within the parameter's
    #   absolute range, they are not allowed
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] bisect_batch_on_function_error
    #   (Kinesis and DynamoDB Streams only) If the function returns an
    #   error, split the batch in two and retry. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Kinesis and DynamoDB Streams only) Discard records after the
    #   specified number of retries. The default value is -1, which sets the
    #   maximum number of retries to infinite. When MaximumRetryAttempts is
    #   infinite, Lambda retries failed records until the record expires in
    #   the event source.
    #   @return [Integer]
    #
    # @!attribute [rw] tumbling_window_in_seconds
    #   (Kinesis and DynamoDB Streams only) The duration in seconds of a
    #   processing window for DynamoDB and Kinesis Streams event sources. A
    #   value of 0 seconds indicates no tumbling window.
    #   @return [Integer]
    #
    # @!attribute [rw] function_response_types
    #   (Kinesis, DynamoDB Streams, and Amazon SQS) A list of current
    #   response type enums applied to the event source mapping.
    #   @return [Array<String>]
    #
    # @!attribute [rw] amazon_managed_kafka_event_source_config
    #   Specific configuration settings for an Amazon Managed Streaming for
    #   Apache Kafka (Amazon MSK) event source.
    #   @return [Types::AmazonManagedKafkaEventSourceConfig]
    #
    # @!attribute [rw] self_managed_kafka_event_source_config
    #   Specific configuration settings for a self-managed Apache Kafka
    #   event source.
    #   @return [Types::SelfManagedKafkaEventSourceConfig]
    #
    # @!attribute [rw] scaling_config
    #   (Amazon SQS only) The scaling configuration for the event source.
    #   For more information, see [Configuring maximum concurrency for
    #   Amazon SQS event sources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] document_db_event_source_config
    #   Specific configuration settings for a DocumentDB event source.
    #   @return [Types::DocumentDBEventSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EventSourceMappingConfiguration AWS API Documentation
    #
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
      :document_db_event_source_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the connection between a Lambda function and an [Amazon
    # EFS file system][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Amazon EFS access point that
    #   provides access to the file system.
    #   @return [String]
    #
    # @!attribute [rw] local_mount_path
    #   The path where the function can access the file system, starting
    #   with `/mnt/`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FileSystemConfig AWS API Documentation
    #
    class FileSystemConfig < Struct.new(
      :arn,
      :local_mount_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure within a `FilterCriteria` object that defines an event
    # filtering pattern.
    #
    # @!attribute [rw] pattern
    #   A filter pattern. For more information on the syntax of a filter
    #   pattern, see [ Filter rule syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-syntax
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the filters for an event source.
    #
    # @!attribute [rw] filters
    #   A list of filters.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FilterCriteria AWS API Documentation
    #
    class FilterCriteria < Struct.new(
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code for the Lambda function. You can either specify an object in
    # Amazon S3, upload a .zip file archive deployment package directly, or
    # specify the URI of a container image.
    #
    # @!attribute [rw] zip_file
    #   The base64-encoded contents of the deployment package. Amazon Web
    #   Services SDK and CLI clients handle the encoding for you.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   An Amazon S3 bucket in the same Amazon Web Services Region as your
    #   function. The bucket can be in a different Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key of the deployment package.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   For versioned objects, the version of the deployment package object
    #   to use.
    #   @return [String]
    #
    # @!attribute [rw] image_uri
    #   URI of a [container image][1] in the Amazon ECR registry.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionCode AWS API Documentation
    #
    class FunctionCode < Struct.new(
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :image_uri)
      SENSITIVE = [:zip_file]
      include Aws::Structure
    end

    # Details about a function's deployment package.
    #
    # @!attribute [rw] repository_type
    #   The service that's hosting the file.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   A presigned URL that you can use to download the deployment package.
    #   @return [String]
    #
    # @!attribute [rw] image_uri
    #   URI of a container image in the Amazon ECR registry.
    #   @return [String]
    #
    # @!attribute [rw] resolved_image_uri
    #   The resolved URI for the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionCodeLocation AWS API Documentation
    #
    class FunctionCodeLocation < Struct.new(
      :repository_type,
      :location,
      :image_uri,
      :resolved_image_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a function's configuration.
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The function's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The identifier of the function's [runtime][1]. Runtime is required
    #   if the deployment package is a .zip file archive.
    #
    #   The following list includes deprecated runtimes. For more
    #   information, see [Runtime deprecation policy][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The function that Lambda calls to begin running your function.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size of the function's deployment package, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The function's description.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time in seconds that Lambda allows a function to run
    #   before stopping it.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The amount of memory available to the function at runtime.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified
    #   The date and time that the function was last updated, in [ISO-8601
    #   format][1] (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA256 hash of the function's deployment package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The function's networking configuration.
    #   @return [Types::VpcConfigResponse]
    #
    # @!attribute [rw] dead_letter_config
    #   The function's dead letter queue.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] environment
    #   The function's [environment variables][1]. Omitted from CloudTrail
    #   logs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html
    #   @return [Types::EnvironmentResponse]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key that's used to encrypt the function's [environment
    #   variables][1]. When [Lambda SnapStart][2] is activated, this key is
    #   also used to encrypt the function's snapshot. This key is returned
    #   only if you've configured a customer managed key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html
    #   @return [String]
    #
    # @!attribute [rw] tracing_config
    #   The function's X-Ray tracing configuration.
    #   @return [Types::TracingConfigResponse]
    #
    # @!attribute [rw] master_arn
    #   For Lambda@Edge functions, the ARN of the main function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The latest updated revision of the function or alias.
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   The function's [layers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<Types::Layer>]
    #
    # @!attribute [rw] state
    #   The current state of the function. When the state is `Inactive`, you
    #   can reactivate the function by invoking it.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the function's current state.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_code
    #   The reason code for the function's current state. When the code is
    #   `Creating`, you can't invoke or modify the function.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status
    #   The status of the last update that was performed on the function.
    #   This is first set to `Successful` after function creation completes.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status_reason
    #   The reason for the last update that was performed on the function.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status_reason_code
    #   The reason code for the last update that was performed on the
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] file_system_configs
    #   Connection settings for an [Amazon EFS file system][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html
    #   @return [Array<Types::FileSystemConfig>]
    #
    # @!attribute [rw] package_type
    #   The type of deployment package. Set to `Image` for container image
    #   and set `Zip` for .zip file archive.
    #   @return [String]
    #
    # @!attribute [rw] image_config_response
    #   The function's image configuration values.
    #   @return [Types::ImageConfigResponse]
    #
    # @!attribute [rw] signing_profile_version_arn
    #   The ARN of the signing profile version.
    #   @return [String]
    #
    # @!attribute [rw] signing_job_arn
    #   The ARN of the signing job.
    #   @return [String]
    #
    # @!attribute [rw] architectures
    #   The instruction set architecture that the function supports.
    #   Architecture is a string array with one of the valid values. The
    #   default architecture value is `x86_64`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ephemeral_storage
    #   The size of the function’s `/tmp` directory in MB. The default value
    #   is 512, but it can be any whole number between 512 and 10,240 MB.
    #   @return [Types::EphemeralStorage]
    #
    # @!attribute [rw] snap_start
    #   Set `ApplyOn` to `PublishedVersions` to create a snapshot of the
    #   initialized execution environment when you publish a function
    #   version. For more information, see [Improving startup performance
    #   with Lambda SnapStart][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html
    #   @return [Types::SnapStartResponse]
    #
    # @!attribute [rw] runtime_version_config
    #   The ARN of the runtime and any errors that occured.
    #   @return [Types::RuntimeVersionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionConfiguration AWS API Documentation
    #
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
      :code_sha_256,
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
      :runtime_version_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] last_modified
    #   The date and time that the configuration was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the function.
    #   @return [String]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   The maximum number of times to retry when the function returns an
    #   error.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_event_age_in_seconds
    #   The maximum age of a request that Lambda sends to a function for
    #   processing.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_config
    #   A destination for events after they have been sent to a function for
    #   processing.
    #
    #   **Destinations**
    #
    #   * **Function** - The Amazon Resource Name (ARN) of a Lambda
    #     function.
    #
    #   * **Queue** - The ARN of a standard SQS queue.
    #
    #   * **Topic** - The ARN of a standard SNS topic.
    #
    #   * **Event Bus** - The ARN of an Amazon EventBridge event bus.
    #   @return [Types::DestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionEventInvokeConfig AWS API Documentation
    #
    class FunctionEventInvokeConfig < Struct.new(
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a Lambda function URL.
    #
    # @!attribute [rw] function_url
    #   The HTTP URL endpoint for your function.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of your function.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the function URL was created, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   When the function URL configuration was last updated, in [ISO-8601
    #   format][1] (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] cors
    #   The [cross-origin resource sharing (CORS)][1] settings for your
    #   function URL.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #   @return [Types::Cors]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users
    #   only. Set to `NONE` if you want to bypass IAM authentication to
    #   create a public endpoint. For more information, see [Security and
    #   auth model for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #   @return [String]
    #
    # @!attribute [rw] invoke_mode
    #   Use one of the following options:
    #
    #   * `BUFFERED` – This is the default option. Lambda invokes your
    #     function using the `Invoke` API operation. Invocation results are
    #     available when the payload is complete. The maximum payload size
    #     is 6 MB.
    #
    #   * `RESPONSE_STREAM` – Your function streams payload results as they
    #     become available. Lambda invokes your function using the
    #     `InvokeWithResponseStream` API operation. The maximum response
    #     payload size is 20 MB, however, you can [request a quota
    #     increase][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionUrlConfig AWS API Documentation
    #
    class FunctionUrlConfig < Struct.new(
      :function_url,
      :function_arn,
      :creation_time,
      :last_modified_time,
      :cors,
      :auth_type,
      :invoke_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettingsRequest AWS API Documentation
    #
    class GetAccountSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] account_limit
    #   Limits that are related to concurrency and code storage.
    #   @return [Types::AccountLimit]
    #
    # @!attribute [rw] account_usage
    #   The number of functions and amount of storage in use.
    #   @return [Types::AccountUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettingsResponse AWS API Documentation
    #
    class GetAccountSettingsResponse < Struct.new(
      :account_limit,
      :account_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAliasRequest AWS API Documentation
    #
    class GetAliasRequest < Struct.new(
      :function_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetCodeSigningConfigRequest AWS API Documentation
    #
    class GetCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config
    #   The code signing configuration
    #   @return [Types::CodeSigningConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetCodeSigningConfigResponse AWS API Documentation
    #
    class GetCodeSigningConfigResponse < Struct.new(
      :code_signing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] uuid
    #   The identifier of the event source mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetEventSourceMappingRequest AWS API Documentation
    #
    class GetEventSourceMappingRequest < Struct.new(
      :uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionCodeSigningConfigRequest AWS API Documentation
    #
    class GetFunctionCodeSigningConfigRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionCodeSigningConfigResponse AWS API Documentation
    #
    class GetFunctionCodeSigningConfigResponse < Struct.new(
      :code_signing_config_arn,
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConcurrencyRequest AWS API Documentation
    #
    class GetFunctionConcurrencyRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reserved_concurrent_executions
    #   The number of simultaneous executions that are reserved for the
    #   function.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConcurrencyResponse AWS API Documentation
    #
    class GetFunctionConcurrencyResponse < Struct.new(
      :reserved_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to get details about a published version
    #   of the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConfigurationRequest AWS API Documentation
    #
    class GetFunctionConfigurationRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   A version number or alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionEventInvokeConfigRequest AWS API Documentation
    #
    class GetFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to get details about a published version
    #   of the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionRequest AWS API Documentation
    #
    class GetFunctionRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The configuration of the function or version.
    #   @return [Types::FunctionConfiguration]
    #
    # @!attribute [rw] code
    #   The deployment package of the function or version.
    #   @return [Types::FunctionCodeLocation]
    #
    # @!attribute [rw] tags
    #   The function's [tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] concurrency
    #   The function's [reserved concurrency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html
    #   @return [Types::Concurrency]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionResponse AWS API Documentation
    #
    class GetFunctionResponse < Struct.new(
      :configuration,
      :code,
      :tags,
      :concurrency)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionUrlConfigRequest AWS API Documentation
    #
    class GetFunctionUrlConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_url
    #   The HTTP URL endpoint for your function.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of your function.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users
    #   only. Set to `NONE` if you want to bypass IAM authentication to
    #   create a public endpoint. For more information, see [Security and
    #   auth model for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #   @return [String]
    #
    # @!attribute [rw] cors
    #   The [cross-origin resource sharing (CORS)][1] settings for your
    #   function URL.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #   @return [Types::Cors]
    #
    # @!attribute [rw] creation_time
    #   When the function URL was created, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   When the function URL configuration was last updated, in [ISO-8601
    #   format][1] (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] invoke_mode
    #   Use one of the following options:
    #
    #   * `BUFFERED` – This is the default option. Lambda invokes your
    #     function using the `Invoke` API operation. Invocation results are
    #     available when the payload is complete. The maximum payload size
    #     is 6 MB.
    #
    #   * `RESPONSE_STREAM` – Your function streams payload results as they
    #     become available. Lambda invokes your function using the
    #     `InvokeWithResponseStream` API operation. The maximum response
    #     payload size is 20 MB, however, you can [request a quota
    #     increase][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionUrlConfigResponse AWS API Documentation
    #
    class GetFunctionUrlConfigResponse < Struct.new(
      :function_url,
      :function_arn,
      :auth_type,
      :cors,
      :creation_time,
      :last_modified_time,
      :invoke_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the layer version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionByArnRequest AWS API Documentation
    #
    class GetLayerVersionByArnRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionPolicyRequest AWS API Documentation
    #
    class GetLayerVersionPolicyRequest < Struct.new(
      :layer_name,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy document.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionPolicyResponse AWS API Documentation
    #
    class GetLayerVersionPolicyResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionRequest AWS API Documentation
    #
    class GetLayerVersionRequest < Struct.new(
      :layer_name,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   Details about the layer version.
    #   @return [Types::LayerVersionContentOutput]
    #
    # @!attribute [rw] layer_arn
    #   The ARN of the layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_version_arn
    #   The ARN of the layer version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the layer version was created, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_runtimes
    #   The layer's compatible runtimes.
    #
    #   The following list includes deprecated runtimes. For more
    #   information, see [Runtime deprecation policy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_info
    #   The layer's software license.
    #   @return [String]
    #
    # @!attribute [rw] compatible_architectures
    #   A list of compatible [instruction set architectures][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionResponse AWS API Documentation
    #
    class GetLayerVersionResponse < Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info,
      :compatible_architectures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to get the policy for that resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The version number or alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetProvisionedConcurrencyConfigRequest AWS API Documentation
    #
    class GetProvisionedConcurrencyConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] requested_provisioned_concurrent_executions
    #   The amount of provisioned concurrency requested.
    #   @return [Integer]
    #
    # @!attribute [rw] available_provisioned_concurrent_executions
    #   The amount of provisioned concurrency available.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_provisioned_concurrent_executions
    #   The amount of provisioned concurrency allocated. When a weighted
    #   alias is used during linear and canary deployments, this value
    #   fluctuates depending on the amount of concurrency that is
    #   provisioned for the function versions.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the allocation process.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   For failed allocations, the reason that provisioned concurrency
    #   could not be allocated.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that a user last updated the configuration, in
    #   [ISO 8601 format][1].
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetProvisionedConcurrencyConfigResponse AWS API Documentation
    #
    class GetProvisionedConcurrencyConfigResponse < Struct.new(
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version of the function. This can be `$LATEST` or a
    #   published version number. If no value is specified, the
    #   configuration for the `$LATEST` version is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetRuntimeManagementConfigRequest AWS API Documentation
    #
    class GetRuntimeManagementConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_runtime_on
    #   The current runtime update mode of the function.
    #   @return [String]
    #
    # @!attribute [rw] runtime_version_arn
    #   The ARN of the runtime the function is configured to use. If the
    #   runtime update mode is **Manual**, the ARN is returned, otherwise
    #   `null` is returned.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of your function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetRuntimeManagementConfigResponse AWS API Documentation
    #
    class GetRuntimeManagementConfigResponse < Struct.new(
      :update_runtime_on,
      :runtime_version_arn,
      :function_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration values that override the container image Dockerfile
    # settings. For more information, see [Container image settings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms
    #
    # @!attribute [rw] entry_point
    #   Specifies the entry point to their application, which is typically
    #   the location of the runtime executable.
    #   @return [Array<String>]
    #
    # @!attribute [rw] command
    #   Specifies parameters that you want to pass in with ENTRYPOINT.
    #   @return [Array<String>]
    #
    # @!attribute [rw] working_directory
    #   Specifies the working directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ImageConfig AWS API Documentation
    #
    class ImageConfig < Struct.new(
      :entry_point,
      :command,
      :working_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error response to `GetFunctionConfiguration`.
    #
    # @!attribute [rw] error_code
    #   Error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ImageConfigError AWS API Documentation
    #
    class ImageConfigError < Struct.new(
      :error_code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # Response to a `GetFunctionConfiguration` request.
    #
    # @!attribute [rw] image_config
    #   Configuration values that override the container image Dockerfile.
    #   @return [Types::ImageConfig]
    #
    # @!attribute [rw] error
    #   Error response to `GetFunctionConfiguration`.
    #   @return [Types::ImageConfigError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ImageConfigResponse AWS API Documentation
    #
    class ImageConfigResponse < Struct.new(
      :image_config,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code signature failed the integrity check. If the integrity check
    # fails, then Lambda blocks deployment, even if the code signing policy
    # is set to WARN.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidCodeSignatureException AWS API Documentation
    #
    class InvalidCodeSignatureException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters in the request is not valid.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request body could not be parsed as JSON.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidRequestContentException AWS API Documentation
    #
    class InvalidRequestContentException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The runtime or runtime version specified is not supported.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidRuntimeException AWS API Documentation
    #
    class InvalidRuntimeException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The security group ID provided in the Lambda function VPC
    # configuration is not valid.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidSecurityGroupIDException AWS API Documentation
    #
    class InvalidSecurityGroupIDException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The subnet ID provided in the Lambda function VPC configuration is not
    # valid.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidSubnetIDException AWS API Documentation
    #
    class InvalidSubnetIDException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda could not unzip the deployment package.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidZipFileException AWS API Documentation
    #
    class InvalidZipFileException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] invocation_type
    #   Choose from the following options.
    #
    #   * `RequestResponse` (default) – Invoke the function synchronously.
    #     Keep the connection open until the function returns a response or
    #     times out. The API response includes the function response and
    #     additional data.
    #
    #   * `Event` – Invoke the function asynchronously. Send events that
    #     fail multiple times to the function's dead-letter queue (if one
    #     is configured). The API response only includes a status code.
    #
    #   * `DryRun` – Validate parameter values and verify that the user or
    #     role has permission to invoke the function.
    #   @return [String]
    #
    # @!attribute [rw] log_type
    #   Set to `Tail` to include the execution log in the response. Applies
    #   to synchronously invoked functions only.
    #   @return [String]
    #
    # @!attribute [rw] client_context
    #   Up to 3,583 bytes of base64-encoded data about the invoking client
    #   to pass to the function in the context object.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The JSON that you want to provide to your Lambda function as input.
    #
    #   You can enter the JSON directly. For example, `--payload '\{ "key":
    #   "value" \}'`. You can also specify a file path. For example,
    #   `--payload file://payload.json`.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to invoke a published version of the
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvocationRequest AWS API Documentation
    #
    class InvocationRequest < Struct.new(
      :function_name,
      :invocation_type,
      :log_type,
      :client_context,
      :payload,
      :qualifier)
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The HTTP status code is in the 200 range for a successful request.
    #   For the `RequestResponse` invocation type, this status code is 200.
    #   For the `Event` invocation type, this status code is 202. For the
    #   `DryRun` invocation type, the status code is 204.
    #   @return [Integer]
    #
    # @!attribute [rw] function_error
    #   If present, indicates that an error occurred during function
    #   execution. Details about the error are included in the response
    #   payload.
    #   @return [String]
    #
    # @!attribute [rw] log_result
    #   The last 4 KB of the execution log, which is base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The response from the function, or an error object.
    #   @return [String]
    #
    # @!attribute [rw] executed_version
    #   The version of the function that executed. When you invoke a
    #   function with an alias, this indicates which version the alias
    #   resolved to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvocationResponse AWS API Documentation
    #
    class InvocationResponse < Struct.new(
      :status_code,
      :function_error,
      :log_result,
      :payload,
      :executed_version)
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] invoke_args
    #   The JSON that you want to provide to your Lambda function as input.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsyncRequest AWS API Documentation
    #
    class InvokeAsyncRequest < Struct.new(
      :function_name,
      :invoke_args)
      SENSITIVE = []
      include Aws::Structure
    end

    # A success response (`202 Accepted`) indicates that the request is
    # queued for invocation.
    #
    # @!attribute [rw] status
    #   The status code.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsyncResponse AWS API Documentation
    #
    class InvokeAsyncResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A chunk of the streamed response payload.
    #
    # @!attribute [rw] payload
    #   Data returned by your Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeResponseStreamUpdate AWS API Documentation
    #
    class InvokeResponseStreamUpdate < Struct.new(
      :payload,
      :event_type)
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # A response confirming that the event stream is complete.
    #
    # @!attribute [rw] error_code
    #   An error code.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   The details of any returned error.
    #   @return [String]
    #
    # @!attribute [rw] log_result
    #   The last 4 KB of the execution log, which is base64-encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeWithResponseStreamCompleteEvent AWS API Documentation
    #
    class InvokeWithResponseStreamCompleteEvent < Struct.new(
      :error_code,
      :error_details,
      :log_result,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] invocation_type
    #   Use one of the following options:
    #
    #   * `RequestResponse` (default) – Invoke the function synchronously.
    #     Keep the connection open until the function returns a response or
    #     times out. The API operation response includes the function
    #     response and additional data.
    #
    #   * `DryRun` – Validate parameter values and verify that the IAM user
    #     or role has permission to invoke the function.
    #   @return [String]
    #
    # @!attribute [rw] log_type
    #   Set to `Tail` to include the execution log in the response. Applies
    #   to synchronously invoked functions only.
    #   @return [String]
    #
    # @!attribute [rw] client_context
    #   Up to 3,583 bytes of base64-encoded data about the invoking client
    #   to pass to the function in the context object.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The alias name.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The JSON that you want to provide to your Lambda function as input.
    #
    #   You can enter the JSON directly. For example, `--payload '\{ "key":
    #   "value" \}'`. You can also specify a file path. For example,
    #   `--payload file://payload.json`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeWithResponseStreamRequest AWS API Documentation
    #
    class InvokeWithResponseStreamRequest < Struct.new(
      :function_name,
      :invocation_type,
      :log_type,
      :client_context,
      :qualifier,
      :payload)
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   For a successful request, the HTTP status code is in the 200 range.
    #   For the `RequestResponse` invocation type, this status code is 200.
    #   For the `DryRun` invocation type, this status code is 204.
    #   @return [Integer]
    #
    # @!attribute [rw] executed_version
    #   The version of the function that executed. When you invoke a
    #   function with an alias, this indicates which version the alias
    #   resolved to.
    #   @return [String]
    #
    # @!attribute [rw] event_stream
    #   The stream of response payloads.
    #   @return [Types::InvokeWithResponseStreamResponseEvent]
    #
    # @!attribute [rw] response_stream_content_type
    #   The type of data the stream is returning.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeWithResponseStreamResponse AWS API Documentation
    #
    class InvokeWithResponseStreamResponse < Struct.new(
      :status_code,
      :executed_version,
      :event_stream,
      :response_stream_content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda couldn't decrypt the environment variables because KMS access
    # was denied. Check the Lambda function's KMS permissions.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/KMSAccessDeniedException AWS API Documentation
    #
    class KMSAccessDeniedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda couldn't decrypt the environment variables because the KMS key
    # used is disabled. Check the Lambda function's KMS key settings.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/KMSDisabledException AWS API Documentation
    #
    class KMSDisabledException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda couldn't decrypt the environment variables because the state
    # of the KMS key used is not valid for Decrypt. Check the function's
    # KMS key settings.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/KMSInvalidStateException AWS API Documentation
    #
    class KMSInvalidStateException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda couldn't decrypt the environment variables because the KMS key
    # was not found. Check the function's KMS key settings.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/KMSNotFoundException AWS API Documentation
    #
    class KMSNotFoundException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An [Lambda layer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the function layer.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size of the layer archive in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] signing_profile_version_arn
    #   The Amazon Resource Name (ARN) for a signing profile version.
    #   @return [String]
    #
    # @!attribute [rw] signing_job_arn
    #   The Amazon Resource Name (ARN) of a signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Layer AWS API Documentation
    #
    class Layer < Struct.new(
      :arn,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A ZIP archive that contains the contents of an [Lambda layer][1]. You
    # can specify either an Amazon S3 location, or upload a layer archive
    # directly.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @!attribute [rw] s3_bucket
    #   The Amazon S3 bucket of the layer archive.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key of the layer archive.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   For versioned objects, the version of the layer archive object to
    #   use.
    #   @return [String]
    #
    # @!attribute [rw] zip_file
    #   The base64-encoded contents of the layer archive. Amazon Web
    #   Services SDK and Amazon Web Services CLI clients handle the encoding
    #   for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/LayerVersionContentInput AWS API Documentation
    #
    class LayerVersionContentInput < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :zip_file)
      SENSITIVE = [:zip_file]
      include Aws::Structure
    end

    # Details about a version of an [Lambda layer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @!attribute [rw] location
    #   A link to the layer archive in Amazon S3 that is valid for 10
    #   minutes.
    #   @return [String]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA-256 hash of the layer archive.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size of the layer archive in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] signing_profile_version_arn
    #   The Amazon Resource Name (ARN) for a signing profile version.
    #   @return [String]
    #
    # @!attribute [rw] signing_job_arn
    #   The Amazon Resource Name (ARN) of a signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/LayerVersionContentOutput AWS API Documentation
    #
    class LayerVersionContentOutput < Struct.new(
      :location,
      :code_sha_256,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a version of an [Lambda layer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @!attribute [rw] layer_version_arn
    #   The ARN of the layer version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the version was created, in ISO 8601 format. For
    #   example, `2018-11-27T15:10:45.123+0000`.
    #   @return [Time]
    #
    # @!attribute [rw] compatible_runtimes
    #   The layer's compatible runtimes.
    #
    #   The following list includes deprecated runtimes. For more
    #   information, see [Runtime deprecation policy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_info
    #   The layer's open-source license.
    #   @return [String]
    #
    # @!attribute [rw] compatible_architectures
    #   A list of compatible [instruction set architectures][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/LayerVersionsListItem AWS API Documentation
    #
    class LayerVersionsListItem < Struct.new(
      :layer_version_arn,
      :version,
      :description,
      :created_date,
      :compatible_runtimes,
      :license_info,
      :compatible_architectures)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an [Lambda layer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @!attribute [rw] layer_name
    #   The name of the layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_arn
    #   The Amazon Resource Name (ARN) of the function layer.
    #   @return [String]
    #
    # @!attribute [rw] latest_matching_version
    #   The newest version of the layer.
    #   @return [Types::LayerVersionsListItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/LayersListItem AWS API Documentation
    #
    class LayersListItem < Struct.new(
      :layer_name,
      :layer_arn,
      :latest_matching_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   Specify a function version to only list aliases that invoke that
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Limit the number of aliases returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListAliasesRequest AWS API Documentation
    #
    class ListAliasesRequest < Struct.new(
      :function_name,
      :function_version,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] aliases
    #   A list of aliases.
    #   @return [Array<Types::AliasConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListAliasesResponse AWS API Documentation
    #
    class ListAliasesResponse < Struct.new(
      :next_marker,
      :aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListCodeSigningConfigsRequest AWS API Documentation
    #
    class ListCodeSigningConfigsRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] code_signing_configs
    #   The code signing configurations
    #   @return [Array<Types::CodeSigningConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListCodeSigningConfigsResponse AWS API Documentation
    #
    class ListCodeSigningConfigsResponse < Struct.new(
      :next_marker,
      :code_signing_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #
    #   * **Amazon Kinesis** – The ARN of the data stream or a stream
    #     consumer.
    #
    #   * **Amazon DynamoDB Streams** – The ARN of the stream.
    #
    #   * **Amazon Simple Queue Service** – The ARN of the queue.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** – The ARN of the
    #     cluster.
    #
    #   * **Amazon MQ** – The ARN of the broker.
    #
    #   * **Amazon DocumentDB** – The ARN of the DocumentDB change stream.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `MyFunction`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** – `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A pagination token returned by a previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of event source mappings to return. Note that
    #   ListEventSourceMappings returns a maximum of 100 items in each
    #   response, even if you set the number higher.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappingsRequest AWS API Documentation
    #
    class ListEventSourceMappingsRequest < Struct.new(
      :event_source_arn,
      :function_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   A pagination token that's returned when the response doesn't
    #   contain all event source mappings.
    #   @return [String]
    #
    # @!attribute [rw] event_source_mappings
    #   A list of event source mappings.
    #   @return [Array<Types::EventSourceMappingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappingsResponse AWS API Documentation
    #
    class ListEventSourceMappingsResponse < Struct.new(
      :next_marker,
      :event_source_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of configurations to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionEventInvokeConfigsRequest AWS API Documentation
    #
    class ListFunctionEventInvokeConfigsRequest < Struct.new(
      :function_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_event_invoke_configs
    #   A list of configurations.
    #   @return [Array<Types::FunctionEventInvokeConfig>]
    #
    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionEventInvokeConfigsResponse AWS API Documentation
    #
    class ListFunctionEventInvokeConfigsResponse < Struct.new(
      :function_event_invoke_configs,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of function URLs to return in the response. Note
    #   that `ListFunctionUrlConfigs` returns a maximum of 50 items in each
    #   response, even if you set the number higher.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionUrlConfigsRequest AWS API Documentation
    #
    class ListFunctionUrlConfigsRequest < Struct.new(
      :function_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_url_configs
    #   A list of function URL configurations.
    #   @return [Array<Types::FunctionUrlConfig>]
    #
    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionUrlConfigsResponse AWS API Documentation
    #
    class ListFunctionUrlConfigsResponse < Struct.new(
      :function_url_configs,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsByCodeSigningConfigRequest AWS API Documentation
    #
    class ListFunctionsByCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] function_arns
    #   The function ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsByCodeSigningConfigResponse AWS API Documentation
    #
    class ListFunctionsByCodeSigningConfigResponse < Struct.new(
      :next_marker,
      :function_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] master_region
    #   For Lambda@Edge functions, the Amazon Web Services Region of the
    #   master function. For example, `us-east-1` filters the list of
    #   functions to include only Lambda@Edge functions replicated from a
    #   master function in US East (N. Virginia). If specified, you must set
    #   `FunctionVersion` to `ALL`.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   Set to `ALL` to include entries for all published versions of each
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of functions to return in the response. Note that
    #   `ListFunctions` returns a maximum of 50 items in each response, even
    #   if you set the number higher.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsRequest AWS API Documentation
    #
    class ListFunctionsRequest < Struct.new(
      :master_region,
      :function_version,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Lambda functions.
    #
    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] functions
    #   A list of Lambda functions.
    #   @return [Array<Types::FunctionConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsResponse AWS API Documentation
    #
    class ListFunctionsResponse < Struct.new(
      :next_marker,
      :functions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compatible_runtime
    #   A runtime identifier. For example, `go1.x`.
    #
    #   The following list includes deprecated runtimes. For more
    #   information, see [Runtime deprecation policy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #   @return [String]
    #
    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A pagination token returned by a previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of versions to return.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_architecture
    #   The compatible [instruction set architecture][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayerVersionsRequest AWS API Documentation
    #
    class ListLayerVersionsRequest < Struct.new(
      :compatible_runtime,
      :layer_name,
      :marker,
      :max_items,
      :compatible_architecture)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   A pagination token returned when the response doesn't contain all
    #   versions.
    #   @return [String]
    #
    # @!attribute [rw] layer_versions
    #   A list of versions.
    #   @return [Array<Types::LayerVersionsListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayerVersionsResponse AWS API Documentation
    #
    class ListLayerVersionsResponse < Struct.new(
      :next_marker,
      :layer_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compatible_runtime
    #   A runtime identifier. For example, `go1.x`.
    #
    #   The following list includes deprecated runtimes. For more
    #   information, see [Runtime deprecation policy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A pagination token returned by a previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of layers to return.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_architecture
    #   The compatible [instruction set architecture][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayersRequest AWS API Documentation
    #
    class ListLayersRequest < Struct.new(
      :compatible_runtime,
      :marker,
      :max_items,
      :compatible_architecture)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   A pagination token returned when the response doesn't contain all
    #   layers.
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   A list of function layers.
    #   @return [Array<Types::LayersListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayersResponse AWS API Documentation
    #
    class ListLayersResponse < Struct.new(
      :next_marker,
      :layers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Specify a number to limit the number of configurations returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListProvisionedConcurrencyConfigsRequest AWS API Documentation
    #
    class ListProvisionedConcurrencyConfigsRequest < Struct.new(
      :function_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_concurrency_configs
    #   A list of provisioned concurrency configurations.
    #   @return [Array<Types::ProvisionedConcurrencyConfigListItem>]
    #
    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListProvisionedConcurrencyConfigsResponse AWS API Documentation
    #
    class ListProvisionedConcurrencyConfigsResponse < Struct.new(
      :provisioned_concurrency_configs,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource
    #   The function's Amazon Resource Name (ARN). Note: Lambda does not
    #   support adding tags to aliases or versions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The function's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of versions to return. Note that
    #   `ListVersionsByFunction` returns a maximum of 50 items in each
    #   response, even if you set the number higher.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListVersionsByFunctionRequest AWS API Documentation
    #
    class ListVersionsByFunctionRequest < Struct.new(
      :function_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   A list of Lambda function versions.
    #   @return [Array<Types::FunctionConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListVersionsByFunctionResponse AWS API Documentation
    #
    class ListVersionsByFunctionResponse < Struct.new(
      :next_marker,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A destination for events that failed processing.
    #
    # @!attribute [rw] destination
    #   The Amazon Resource Name (ARN) of the destination resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/OnFailure AWS API Documentation
    #
    class OnFailure < Struct.new(
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A destination for events that were processed successfully.
    #
    # @!attribute [rw] destination
    #   The Amazon Resource Name (ARN) of the destination resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/OnSuccess AWS API Documentation
    #
    class OnSuccess < Struct.new(
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The permissions policy for the resource is too large. For more
    # information, see [Lambda quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PolicyLengthExceededException AWS API Documentation
    #
    class PolicyLengthExceededException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RevisionId provided does not match the latest RevisionId for the
    # Lambda function or alias. Call the `GetFunction` or the `GetAlias` API
    # operation to retrieve the latest RevisionId for your resource.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PreconditionFailedException AWS API Documentation
    #
    class PreconditionFailedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the provisioned concurrency configuration for a function
    # alias or version.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the alias or version.
    #   @return [String]
    #
    # @!attribute [rw] requested_provisioned_concurrent_executions
    #   The amount of provisioned concurrency requested.
    #   @return [Integer]
    #
    # @!attribute [rw] available_provisioned_concurrent_executions
    #   The amount of provisioned concurrency available.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_provisioned_concurrent_executions
    #   The amount of provisioned concurrency allocated. When a weighted
    #   alias is used during linear and canary deployments, this value
    #   fluctuates depending on the amount of concurrency that is
    #   provisioned for the function versions.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the allocation process.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   For failed allocations, the reason that provisioned concurrency
    #   could not be allocated.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that a user last updated the configuration, in
    #   [ISO 8601 format][1].
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ProvisionedConcurrencyConfigListItem AWS API Documentation
    #
    class ProvisionedConcurrencyConfigListItem < Struct.new(
      :function_arn,
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified configuration does not exist.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ProvisionedConcurrencyConfigNotFoundException AWS API Documentation
    #
    class ProvisionedConcurrencyConfigNotFoundException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The function layer archive.
    #   @return [Types::LayerVersionContentInput]
    #
    # @!attribute [rw] compatible_runtimes
    #   A list of compatible [function runtimes][1]. Used for filtering with
    #   ListLayers and ListLayerVersions.
    #
    #   The following list includes deprecated runtimes. For more
    #   information, see [Runtime deprecation policy][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_info
    #   The layer's software license. It can be any of the following:
    #
    #   * An [SPDX license identifier][1]. For example, `MIT`.
    #
    #   * The URL of a license hosted on the internet. For example,
    #     `https://opensource.org/licenses/MIT`.
    #
    #   * The full text of the license.
    #
    #
    #
    #   [1]: https://spdx.org/licenses/
    #   @return [String]
    #
    # @!attribute [rw] compatible_architectures
    #   A list of compatible [instruction set architectures][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishLayerVersionRequest AWS API Documentation
    #
    class PublishLayerVersionRequest < Struct.new(
      :layer_name,
      :description,
      :content,
      :compatible_runtimes,
      :license_info,
      :compatible_architectures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   Details about the layer version.
    #   @return [Types::LayerVersionContentOutput]
    #
    # @!attribute [rw] layer_arn
    #   The ARN of the layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_version_arn
    #   The ARN of the layer version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the layer version was created, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_runtimes
    #   The layer's compatible runtimes.
    #
    #   The following list includes deprecated runtimes. For more
    #   information, see [Runtime deprecation policy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_info
    #   The layer's software license.
    #   @return [String]
    #
    # @!attribute [rw] compatible_architectures
    #   A list of compatible [instruction set architectures][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishLayerVersionResponse AWS API Documentation
    #
    class PublishLayerVersionResponse < Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info,
      :compatible_architectures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] code_sha_256
    #   Only publish a version if the hash value matches the value that's
    #   specified. Use this option to avoid publishing a version if the
    #   function code has changed since you last updated it. You can get the
    #   hash for the version that you uploaded from the output of
    #   UpdateFunctionCode.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the version to override the description in the
    #   function configuration.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Only update the function if the revision ID matches the ID that's
    #   specified. Use this option to avoid publishing a version if the
    #   function configuration has changed since you last updated it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishVersionRequest AWS API Documentation
    #
    class PublishVersionRequest < Struct.new(
      :function_name,
      :code_sha_256,
      :description,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionCodeSigningConfigRequest AWS API Documentation
    #
    class PutFunctionCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn,
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionCodeSigningConfigResponse AWS API Documentation
    #
    class PutFunctionCodeSigningConfigResponse < Struct.new(
      :code_signing_config_arn,
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] reserved_concurrent_executions
    #   The number of simultaneous executions to reserve for the function.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionConcurrencyRequest AWS API Documentation
    #
    class PutFunctionConcurrencyRequest < Struct.new(
      :function_name,
      :reserved_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   A version number or alias name.
    #   @return [String]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   The maximum number of times to retry when the function returns an
    #   error.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_event_age_in_seconds
    #   The maximum age of a request that Lambda sends to a function for
    #   processing.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_config
    #   A destination for events after they have been sent to a function for
    #   processing.
    #
    #   **Destinations**
    #
    #   * **Function** - The Amazon Resource Name (ARN) of a Lambda
    #     function.
    #
    #   * **Queue** - The ARN of a standard SQS queue.
    #
    #   * **Topic** - The ARN of a standard SNS topic.
    #
    #   * **Event Bus** - The ARN of an Amazon EventBridge event bus.
    #   @return [Types::DestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionEventInvokeConfigRequest AWS API Documentation
    #
    class PutFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The version number or alias name.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_concurrent_executions
    #   The amount of provisioned concurrency to allocate for the version or
    #   alias.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutProvisionedConcurrencyConfigRequest AWS API Documentation
    #
    class PutProvisionedConcurrencyConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :provisioned_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] requested_provisioned_concurrent_executions
    #   The amount of provisioned concurrency requested.
    #   @return [Integer]
    #
    # @!attribute [rw] available_provisioned_concurrent_executions
    #   The amount of provisioned concurrency available.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_provisioned_concurrent_executions
    #   The amount of provisioned concurrency allocated. When a weighted
    #   alias is used during linear and canary deployments, this value
    #   fluctuates depending on the amount of concurrency that is
    #   provisioned for the function versions.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the allocation process.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   For failed allocations, the reason that provisioned concurrency
    #   could not be allocated.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that a user last updated the configuration, in
    #   [ISO 8601 format][1].
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutProvisionedConcurrencyConfigResponse AWS API Documentation
    #
    class PutProvisionedConcurrencyConfigResponse < Struct.new(
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version of the function. This can be `$LATEST` or a
    #   published version number. If no value is specified, the
    #   configuration for the `$LATEST` version is returned.
    #   @return [String]
    #
    # @!attribute [rw] update_runtime_on
    #   Specify the runtime update mode.
    #
    #   * **Auto (default)** - Automatically update to the most recent and
    #     secure runtime version using a [Two-phase runtime version
    #     rollout][1]. This is the best choice for most customers to ensure
    #     they always benefit from runtime updates.
    #
    #   * **Function update** - Lambda updates the runtime of your function
    #     to the most recent and secure runtime version when you update your
    #     function. This approach synchronizes runtime updates with function
    #     deployments, giving you control over when runtime updates are
    #     applied and allowing you to detect and mitigate rare runtime
    #     update incompatibilities early. When using this setting, you need
    #     to regularly update your functions to keep their runtime
    #     up-to-date.
    #
    #   * **Manual** - You specify a runtime version in your function
    #     configuration. The function will use this runtime version
    #     indefinitely. In the rare case where a new runtime version is
    #     incompatible with an existing function, this allows you to roll
    #     back your function to an earlier runtime version. For more
    #     information, see [Roll back a runtime version][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback
    #   @return [String]
    #
    # @!attribute [rw] runtime_version_arn
    #   The ARN of the runtime version you want the function to use.
    #
    #   <note markdown="1"> This is only required if you're using the **Manual** runtime update
    #   mode.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutRuntimeManagementConfigRequest AWS API Documentation
    #
    class PutRuntimeManagementConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :update_runtime_on,
      :runtime_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_runtime_on
    #   The runtime update mode.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The ARN of the function
    #   @return [String]
    #
    # @!attribute [rw] runtime_version_arn
    #   The ARN of the runtime the function is configured to use. If the
    #   runtime update mode is **manual**, the ARN is returned, otherwise
    #   `null` is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutRuntimeManagementConfigResponse AWS API Documentation
    #
    class PutRuntimeManagementConfigResponse < Struct.new(
      :update_runtime_on,
      :function_arn,
      :runtime_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda has detected your function being invoked in a recursive loop
    # with other Amazon Web Services resources and stopped your function's
    # invocation.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RecursiveInvocationException AWS API Documentation
    #
    class RecursiveInvocationException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] statement_id
    #   The identifier that was specified when the statement was added.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Only update the policy if the revision ID matches the ID specified.
    #   Use this option to avoid modifying a policy that has changed since
    #   you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemoveLayerVersionPermissionRequest AWS API Documentation
    #
    class RemoveLayerVersionPermissionRequest < Struct.new(
      :layer_name,
      :version_number,
      :statement_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   Statement ID of the permission to remove.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to remove permissions from a published
    #   version of the function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Update the policy only if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a policy that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemovePermissionRequest AWS API Documentation
    #
    class RemovePermissionRequest < Struct.new(
      :function_name,
      :statement_id,
      :qualifier,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request payload exceeded the `Invoke` request body JSON input
    # quota. For more information, see [Lambda quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RequestTooLargeException AWS API Documentation
    #
    class RequestTooLargeException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource already exists, or another operation is in progress.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation conflicts with the resource's availability. For
    # example, you tried to update an event source mapping in the CREATING
    # state, or you tried to delete an event source mapping currently
    # UPDATING.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request does not exist.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function is inactive and its VPC connection is no longer
    # available. Wait for the VPC connection to reestablish and try again.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ResourceNotReadyException AWS API Documentation
    #
    class ResourceNotReadyException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ARN of the runtime and any errors that occured.
    #
    # @!attribute [rw] runtime_version_arn
    #   The ARN of the runtime version you want the function to use.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Error response when Lambda is unable to retrieve the runtime version
    #   for a function.
    #   @return [Types::RuntimeVersionError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RuntimeVersionConfig AWS API Documentation
    #
    class RuntimeVersionConfig < Struct.new(
      :runtime_version_arn,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Any error returned when the runtime version information for the
    # function could not be retrieved.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RuntimeVersionError AWS API Documentation
    #
    class RuntimeVersionError < Struct.new(
      :error_code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # (Amazon SQS only) The scaling configuration for the event source. To
    # remove the configuration, pass an empty value.
    #
    # @!attribute [rw] maximum_concurrency
    #   Limits the number of concurrent instances that the Amazon SQS event
    #   source can invoke.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ScalingConfig AWS API Documentation
    #
    class ScalingConfig < Struct.new(
      :maximum_concurrency)
      SENSITIVE = []
      include Aws::Structure
    end

    # The self-managed Apache Kafka cluster for your event source.
    #
    # @!attribute [rw] endpoints
    #   The list of bootstrap servers for your Kafka brokers in the
    #   following format: `"KAFKA_BOOTSTRAP_SERVERS":
    #   ["abc.xyz.com:xxxx","abc2.xyz.com:xxxx"]`.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SelfManagedEventSource AWS API Documentation
    #
    class SelfManagedEventSource < Struct.new(
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specific configuration settings for a self-managed Apache Kafka event
    # source.
    #
    # @!attribute [rw] consumer_group_id
    #   The identifier for the Kafka consumer group to join. The consumer
    #   group ID must be unique among all your Kafka event sources. After
    #   creating a Kafka event source mapping with the consumer group ID
    #   specified, you cannot update this value. For more information, see
    #   [Customizable consumer group ID][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-consumer-group-id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SelfManagedKafkaEventSourceConfig AWS API Documentation
    #
    class SelfManagedKafkaEventSourceConfig < Struct.new(
      :consumer_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lambda service encountered an internal error.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function's [Lambda SnapStart][1] setting. Set `ApplyOn` to
    # `PublishedVersions` to create a snapshot of the initialized execution
    # environment when you publish a function version.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html
    #
    # @!attribute [rw] apply_on
    #   Set to `PublishedVersions` to create a snapshot of the initialized
    #   execution environment when you publish a function version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SnapStart AWS API Documentation
    #
    class SnapStart < Struct.new(
      :apply_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `afterRestore()` [runtime hook][1] encountered an error. For more
    # information, check the Amazon CloudWatch logs.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart-runtime-hooks.html
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SnapStartException AWS API Documentation
    #
    class SnapStartException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda is initializing your function. You can invoke the function when
    # the [function state][1] becomes `Active`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SnapStartNotReadyException AWS API Documentation
    #
    class SnapStartNotReadyException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function's [SnapStart][1] setting.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html
    #
    # @!attribute [rw] apply_on
    #   When set to `PublishedVersions`, Lambda creates a snapshot of the
    #   execution environment when you publish a function version.
    #   @return [String]
    #
    # @!attribute [rw] optimization_status
    #   When you provide a [qualified Amazon Resource Name (ARN)][1], this
    #   response element indicates whether SnapStart is activated for the
    #   specified function version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SnapStartResponse AWS API Documentation
    #
    class SnapStartResponse < Struct.new(
      :apply_on,
      :optimization_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda couldn't restore the snapshot within the timeout limit.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SnapStartTimeoutException AWS API Documentation
    #
    class SnapStartTimeoutException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # To secure and define access to your event source, you can specify the
    # authentication protocol, VPC components, or virtual host.
    #
    # @!attribute [rw] type
    #   The type of authentication protocol, VPC components, or virtual host
    #   for your event source. For example: `"Type":"SASL_SCRAM_512_AUTH"`.
    #
    #   * `BASIC_AUTH` – (Amazon MQ) The Secrets Manager secret that stores
    #     your broker credentials.
    #
    #   * `BASIC_AUTH` – (Self-managed Apache Kafka) The Secrets Manager ARN
    #     of your secret key used for SASL/PLAIN authentication of your
    #     Apache Kafka brokers.
    #
    #   * `VPC_SUBNET` – (Self-managed Apache Kafka) The subnets associated
    #     with your VPC. Lambda connects to these subnets to fetch data from
    #     your self-managed Apache Kafka cluster.
    #
    #   * `VPC_SECURITY_GROUP` – (Self-managed Apache Kafka) The VPC
    #     security group used to manage access to your self-managed Apache
    #     Kafka brokers.
    #
    #   * `SASL_SCRAM_256_AUTH` – (Self-managed Apache Kafka) The Secrets
    #     Manager ARN of your secret key used for SASL SCRAM-256
    #     authentication of your self-managed Apache Kafka brokers.
    #
    #   * `SASL_SCRAM_512_AUTH` – (Amazon MSK, Self-managed Apache Kafka)
    #     The Secrets Manager ARN of your secret key used for SASL SCRAM-512
    #     authentication of your self-managed Apache Kafka brokers.
    #
    #   * `VIRTUAL_HOST` –- (RabbitMQ) The name of the virtual host in your
    #     RabbitMQ broker. Lambda uses this RabbitMQ host as the event
    #     source. This property cannot be specified in an
    #     UpdateEventSourceMapping API call.
    #
    #   * `CLIENT_CERTIFICATE_TLS_AUTH` – (Amazon MSK, self-managed Apache
    #     Kafka) The Secrets Manager ARN of your secret key containing the
    #     certificate chain (X.509 PEM), private key (PKCS#8 PEM), and
    #     private key password (optional) used for mutual TLS authentication
    #     of your MSK/Apache Kafka brokers.
    #
    #   * `SERVER_ROOT_CA_CERTIFICATE` – (Self-managed Apache Kafka) The
    #     Secrets Manager ARN of your secret key containing the root CA
    #     certificate (X.509 PEM) used for TLS encryption of your Apache
    #     Kafka brokers.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The value for your chosen configuration in `Type`. For example:
    #   `"URI":
    #   "arn:aws:secretsmanager:us-east-1:01234567890:secret:MyBrokerSecretName"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SourceAccessConfiguration AWS API Documentation
    #
    class SourceAccessConfiguration < Struct.new(
      :type,
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda couldn't set up VPC access for the Lambda function because one
    # or more configured subnets has no available IP addresses.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SubnetIPAddressLimitReachedException AWS API Documentation
    #
    class SubnetIPAddressLimitReachedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource
    #   The function's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to the function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request throughput limit was exceeded. For more information, see
    # [Lambda quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html#api-requests
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds the caller should wait before retrying.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :retry_after_seconds,
      :type,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function's [X-Ray][1] tracing configuration. To sample and record
    # incoming requests, set `Mode` to `Active`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html
    #
    # @!attribute [rw] mode
    #   The tracing mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TracingConfig AWS API Documentation
    #
    class TracingConfig < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function's X-Ray tracing configuration.
    #
    # @!attribute [rw] mode
    #   The tracing mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TracingConfigResponse AWS API Documentation
    #
    class TracingConfigResponse < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content type of the `Invoke` request body is not JSON.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UnsupportedMediaTypeException AWS API Documentation
    #
    class UnsupportedMediaTypeException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource
    #   The function's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the function.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The function version that the alias invokes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing
    #   @return [Types::AliasRoutingConfiguration]
    #
    # @!attribute [rw] revision_id
    #   Only update the alias if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying an alias that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateAliasRequest AWS API Documentation
    #
    class UpdateAliasRequest < Struct.new(
      :function_name,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Descriptive name for this code signing configuration.
    #   @return [String]
    #
    # @!attribute [rw] allowed_publishers
    #   Signing profiles for this code signing configuration.
    #   @return [Types::AllowedPublishers]
    #
    # @!attribute [rw] code_signing_policies
    #   The code signing policy.
    #   @return [Types::CodeSigningPolicies]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateCodeSigningConfigRequest AWS API Documentation
    #
    class UpdateCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config
    #   The code signing configuration
    #   @return [Types::CodeSigningConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateCodeSigningConfigResponse AWS API Documentation
    #
    class UpdateCodeSigningConfigResponse < Struct.new(
      :code_signing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] uuid
    #   The identifier of the event source mapping.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `MyFunction`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** – `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   When true, the event source mapping is active. When false, Lambda
    #   pauses polling and invocation.
    #
    #   Default: True
    #   @return [Boolean]
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records in each batch that Lambda pulls from
    #   your stream or queue and sends to your function. Lambda passes all
    #   of the records in the batch to the function in a single call, up to
    #   the payload limit for synchronous invocation (6 MB).
    #
    #   * **Amazon Kinesis** – Default 100. Max 10,000.
    #
    #   * **Amazon DynamoDB Streams** – Default 100. Max 10,000.
    #
    #   * **Amazon Simple Queue Service** – Default 10. For standard queues
    #     the max is 10,000. For FIFO queues the max is 10.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** – Default 100. Max
    #     10,000.
    #
    #   * **Self-managed Apache Kafka** – Default 100. Max 10,000.
    #
    #   * **Amazon MQ (ActiveMQ and RabbitMQ)** – Default 100. Max 10,000.
    #
    #   * **DocumentDB** – Default 100. Max 10,000.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_criteria
    #   An object that defines the filter criteria that determine whether
    #   Lambda should process an event. For more information, see [Lambda
    #   event filtering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum amount of time, in seconds, that Lambda spends gathering
    #   records before invoking the function. You can configure
    #   `MaximumBatchingWindowInSeconds` to any value from 0 seconds to 300
    #   seconds in increments of seconds.
    #
    #   For streams and Amazon SQS event sources, the default batching
    #   window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka,
    #   Amazon MQ, and DocumentDB event sources, the default batching window
    #   is 500 ms. Note that because you can only change
    #   `MaximumBatchingWindowInSeconds` in increments of seconds, you
    #   cannot revert back to the 500 ms default batching window after you
    #   have changed it. To restore the default batching window, you must
    #   create a new event source mapping.
    #
    #   Related setting: For streams and Amazon SQS event sources, when you
    #   set `BatchSize` to a value greater than 10, you must set
    #   `MaximumBatchingWindowInSeconds` to at least 1.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_config
    #   (Kinesis and DynamoDB Streams only) A standard Amazon SQS queue or
    #   standard Amazon SNS topic destination for discarded records.
    #   @return [Types::DestinationConfig]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Kinesis and DynamoDB Streams only) Discard records older than the
    #   specified age. The default value is infinite (-1).
    #   @return [Integer]
    #
    # @!attribute [rw] bisect_batch_on_function_error
    #   (Kinesis and DynamoDB Streams only) If the function returns an
    #   error, split the batch in two and retry.
    #   @return [Boolean]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Kinesis and DynamoDB Streams only) Discard records after the
    #   specified number of retries. The default value is infinite (-1).
    #   When set to infinite (-1), failed records are retried until the
    #   record expires.
    #   @return [Integer]
    #
    # @!attribute [rw] parallelization_factor
    #   (Kinesis and DynamoDB Streams only) The number of batches to process
    #   from each shard concurrently.
    #   @return [Integer]
    #
    # @!attribute [rw] source_access_configurations
    #   An array of authentication protocols or VPC components required to
    #   secure your event source.
    #   @return [Array<Types::SourceAccessConfiguration>]
    #
    # @!attribute [rw] tumbling_window_in_seconds
    #   (Kinesis and DynamoDB Streams only) The duration in seconds of a
    #   processing window for DynamoDB and Kinesis Streams event sources. A
    #   value of 0 seconds indicates no tumbling window.
    #   @return [Integer]
    #
    # @!attribute [rw] function_response_types
    #   (Kinesis, DynamoDB Streams, and Amazon SQS) A list of current
    #   response type enums applied to the event source mapping.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_config
    #   (Amazon SQS only) The scaling configuration for the event source.
    #   For more information, see [Configuring maximum concurrency for
    #   Amazon SQS event sources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] document_db_event_source_config
    #   Specific configuration settings for a DocumentDB event source.
    #   @return [Types::DocumentDBEventSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateEventSourceMappingRequest AWS API Documentation
    #
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
      :document_db_event_source_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] zip_file
    #   The base64-encoded contents of the deployment package. Amazon Web
    #   Services SDK and CLI clients handle the encoding for you. Use only
    #   with a function defined with a .zip file archive deployment package.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   An Amazon S3 bucket in the same Amazon Web Services Region as your
    #   function. The bucket can be in a different Amazon Web Services
    #   account. Use only with a function defined with a .zip file archive
    #   deployment package.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key of the deployment package. Use only with a
    #   function defined with a .zip file archive deployment package.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   For versioned objects, the version of the deployment package object
    #   to use.
    #   @return [String]
    #
    # @!attribute [rw] image_uri
    #   URI of a container image in the Amazon ECR registry. Do not use for
    #   a function defined with a .zip file archive.
    #   @return [String]
    #
    # @!attribute [rw] publish
    #   Set to true to publish a new version of the function after updating
    #   the code. This has the same effect as calling PublishVersion
    #   separately.
    #   @return [Boolean]
    #
    # @!attribute [rw] dry_run
    #   Set to true to validate the request parameters and access
    #   permissions without modifying the function code.
    #   @return [Boolean]
    #
    # @!attribute [rw] revision_id
    #   Update the function only if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a function that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @!attribute [rw] architectures
    #   The instruction set architecture that the function supports. Enter a
    #   string array with one of the valid values (arm64 or x86\_64). The
    #   default value is `x86_64`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionCodeRequest AWS API Documentation
    #
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
      :architectures)
      SENSITIVE = [:zip_file]
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The name of the method within your code that Lambda calls to run
    #   your function. Handler is required if the deployment package is a
    #   .zip file archive. The format includes the file name. It can also
    #   include namespaces and other qualifiers, depending on the runtime.
    #   For more information, see [Lambda programming model][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the function.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time (in seconds) that Lambda allows a function to run
    #   before stopping it. The default is 3 seconds. The maximum allowed
    #   value is 900 seconds. For more information, see [Lambda execution
    #   environment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The amount of [memory available to the function][1] at runtime.
    #   Increasing the function memory also increases its CPU allocation.
    #   The default value is 128 MB. The value can be any multiple of 1 MB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_config
    #   For network connectivity to Amazon Web Services resources in a VPC,
    #   specify a list of security groups and subnets in the VPC. When you
    #   connect a function to a VPC, it can access resources and the
    #   internet only through that VPC. For more information, see
    #   [Configuring a Lambda function to access resources in a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] environment
    #   Environment variables that are accessible from function code during
    #   execution.
    #   @return [Types::Environment]
    #
    # @!attribute [rw] runtime
    #   The identifier of the function's [runtime][1]. Runtime is required
    #   if the deployment package is a .zip file archive.
    #
    #   The following list includes deprecated runtimes. For more
    #   information, see [Runtime deprecation policy][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_config
    #   A dead-letter queue configuration that specifies the queue or topic
    #   where Lambda sends asynchronous events when they fail processing.
    #   For more information, see [Dead-letter queues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the Key Management Service (KMS) customer managed key
    #   that's used to encrypt your function's [environment variables][1].
    #   When [Lambda SnapStart][2] is activated, Lambda also uses this key
    #   is to encrypt your function's snapshot. If you deploy your function
    #   using a container image, Lambda also uses this key to encrypt your
    #   function when it's deployed. Note that this is not the same key
    #   that's used to protect your container image in the Amazon Elastic
    #   Container Registry (Amazon ECR). If you don't provide a customer
    #   managed key, Lambda uses a default service key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html
    #   @return [String]
    #
    # @!attribute [rw] tracing_config
    #   Set `Mode` to `Active` to sample and trace a subset of incoming
    #   requests with [X-Ray][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html
    #   @return [Types::TracingConfig]
    #
    # @!attribute [rw] revision_id
    #   Update the function only if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a function that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   A list of [function layers][1] to add to the function's execution
    #   environment. Specify each layer by its ARN, including the version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] file_system_configs
    #   Connection settings for an Amazon EFS file system.
    #   @return [Array<Types::FileSystemConfig>]
    #
    # @!attribute [rw] image_config
    #   [Container image configuration values][1] that override the values
    #   in the container image Docker file.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html
    #   @return [Types::ImageConfig]
    #
    # @!attribute [rw] ephemeral_storage
    #   The size of the function's `/tmp` directory in MB. The default
    #   value is 512, but can be any whole number between 512 and 10,240 MB.
    #   @return [Types::EphemeralStorage]
    #
    # @!attribute [rw] snap_start
    #   The function's [SnapStart][1] setting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html
    #   @return [Types::SnapStart]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionConfigurationRequest AWS API Documentation
    #
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
      :snap_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   A version number or alias name.
    #   @return [String]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   The maximum number of times to retry when the function returns an
    #   error.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_event_age_in_seconds
    #   The maximum age of a request that Lambda sends to a function for
    #   processing.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_config
    #   A destination for events after they have been sent to a function for
    #   processing.
    #
    #   **Destinations**
    #
    #   * **Function** - The Amazon Resource Name (ARN) of a Lambda
    #     function.
    #
    #   * **Queue** - The ARN of a standard SQS queue.
    #
    #   * **Topic** - The ARN of a standard SNS topic.
    #
    #   * **Event Bus** - The ARN of an Amazon EventBridge event bus.
    #   @return [Types::DestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionEventInvokeConfigRequest AWS API Documentation
    #
    class UpdateFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The alias name.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users
    #   only. Set to `NONE` if you want to bypass IAM authentication to
    #   create a public endpoint. For more information, see [Security and
    #   auth model for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #   @return [String]
    #
    # @!attribute [rw] cors
    #   The [cross-origin resource sharing (CORS)][1] settings for your
    #   function URL.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #   @return [Types::Cors]
    #
    # @!attribute [rw] invoke_mode
    #   Use one of the following options:
    #
    #   * `BUFFERED` – This is the default option. Lambda invokes your
    #     function using the `Invoke` API operation. Invocation results are
    #     available when the payload is complete. The maximum payload size
    #     is 6 MB.
    #
    #   * `RESPONSE_STREAM` – Your function streams payload results as they
    #     become available. Lambda invokes your function using the
    #     `InvokeWithResponseStream` API operation. The maximum response
    #     payload size is 20 MB, however, you can [request a quota
    #     increase][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionUrlConfigRequest AWS API Documentation
    #
    class UpdateFunctionUrlConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :auth_type,
      :cors,
      :invoke_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_url
    #   The HTTP URL endpoint for your function.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of your function.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users
    #   only. Set to `NONE` if you want to bypass IAM authentication to
    #   create a public endpoint. For more information, see [Security and
    #   auth model for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #   @return [String]
    #
    # @!attribute [rw] cors
    #   The [cross-origin resource sharing (CORS)][1] settings for your
    #   function URL.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #   @return [Types::Cors]
    #
    # @!attribute [rw] creation_time
    #   When the function URL was created, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   When the function URL configuration was last updated, in [ISO-8601
    #   format][1] (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] invoke_mode
    #   Use one of the following options:
    #
    #   * `BUFFERED` – This is the default option. Lambda invokes your
    #     function using the `Invoke` API operation. Invocation results are
    #     available when the payload is complete. The maximum payload size
    #     is 6 MB.
    #
    #   * `RESPONSE_STREAM` – Your function streams payload results as they
    #     become available. Lambda invokes your function using the
    #     `InvokeWithResponseStream` API operation. The maximum response
    #     payload size is 20 MB, however, you can [request a quota
    #     increase][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionUrlConfigResponse AWS API Documentation
    #
    class UpdateFunctionUrlConfigResponse < Struct.new(
      :function_url,
      :function_arn,
      :auth_type,
      :cors,
      :creation_time,
      :last_modified_time,
      :invoke_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC security groups and subnets that are attached to a Lambda
    # function. For more information, see [Configuring a Lambda function to
    # access resources in a VPC][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of VPC security group IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC security groups and subnets that are attached to a Lambda
    # function.
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of VPC security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/VpcConfigResponse AWS API Documentation
    #
    class VpcConfigResponse < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that includes a chunk of the response payload. When the
    # stream has ended, Lambda includes a `InvokeComplete` object.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeWithResponseStreamResponseEvent AWS API Documentation
    #
    class InvokeWithResponseStreamResponseEvent < Enumerator

      def event_types
        [
          :payload_chunk,
          :invoke_complete
        ]
      end

    end

  end
end
