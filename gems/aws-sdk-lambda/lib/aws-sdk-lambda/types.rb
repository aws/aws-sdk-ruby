# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lambda
  module Types

    # Provides limits of code size and concurrency associated with the
    # current account and region.
    #
    # @!attribute [rw] total_code_size
    #   Maximum size, in bytes, of a code package you can upload per region.
    #   The default size is 75 GB.
    #   @return [Integer]
    #
    # @!attribute [rw] code_size_unzipped
    #   Size, in bytes, of code/dependencies that you can zip into a
    #   deployment package (uncompressed zip/jar size) for uploading. The
    #   default limit is 250 MB.
    #   @return [Integer]
    #
    # @!attribute [rw] code_size_zipped
    #   Size, in bytes, of a single zipped code/dependencies package you can
    #   upload for your Lambda function(.zip/.jar file). Try using Amazon S3
    #   for uploading larger files. Default limit is 50 MB.
    #   @return [Integer]
    #
    # @!attribute [rw] concurrent_executions
    #   Number of simultaneous executions of your function per region. For
    #   more information or to request a limit increase for concurrent
    #   executions, see [Lambda Function Concurrent Executions][1]. The
    #   default limit is 1000.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html
    #   @return [Integer]
    #
    # @!attribute [rw] unreserved_concurrent_executions
    #   The number of concurrent executions available to functions that do
    #   not have concurrency limits set. For more information, see
    #   concurrent-executions.
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
      include Aws::Structure
    end

    # Provides code size usage and function count associated with the
    # current account and region.
    #
    # @!attribute [rw] total_code_size
    #   Total size, in bytes, of the account's deployment packages per
    #   region.
    #   @return [Integer]
    #
    # @!attribute [rw] function_count
    #   The number of your account's existing functions per region.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AccountUsage AWS API Documentation
    #
    class AccountUsage < Struct.new(
      :total_code_size,
      :function_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddPermissionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         statement_id: "StatementId", # required
    #         action: "Action", # required
    #         principal: "Principal", # required
    #         source_arn: "Arn",
    #         source_account: "SourceOwner",
    #         event_source_token: "EventSourceToken",
    #         qualifier: "Qualifier",
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   Name of the Lambda function whose resource policy you are updating
    #   by adding a new permission.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   A unique statement identifier.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The AWS Lambda action you want to allow in this statement. Each
    #   Lambda action is a string starting with `lambda:` followed by the
    #   API name . For example, `lambda:CreateFunction`. You can use
    #   wildcard (`lambda:*`) to grant permission for all AWS Lambda
    #   actions.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal who is getting this permission. It can be Amazon S3
    #   service Principal (`s3.amazonaws.com`) if you want Amazon S3 to
    #   invoke the function, an AWS account ID if you are granting
    #   cross-account permission, or any valid AWS service principal such as
    #   `sns.amazonaws.com`. For example, you might want to allow a custom
    #   application in another AWS account to push events to AWS Lambda by
    #   invoking your function.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   This is optional; however, when granting permission to invoke your
    #   function, you should specify this field with the Amazon Resource
    #   Name (ARN) as its value. This ensures that only events generated
    #   from the specified source can invoke the function.
    #
    #   If you add a permission without providing the source ARN, any AWS
    #   account that creates a mapping to your function ARN can send events
    #   to invoke your Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] source_account
    #   This parameter is used for S3 and SES. The AWS account ID (without a
    #   hyphen) of the source owner. For example, if the `SourceArn`
    #   identifies a bucket, then this is the bucket owner's account ID.
    #   You can use this additional condition to ensure the bucket you
    #   specify is owned by a specific account (it is possible the bucket
    #   owner deleted the bucket and some other AWS account created the
    #   bucket). You can also use this condition to specify all sources
    #   (that is, you don't specify the `SourceArn`) owned by a specific
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] event_source_token
    #   A unique token that must be supplied by the principal invoking the
    #   function. This is currently only used for Alexa Smart Home
    #   functions.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   You can use this optional query parameter to describe a qualified
    #   ARN using a function version or an alias name. The permission will
    #   then apply to the specific qualified ARN. For example, if you
    #   specify function version 2 as the qualifier, then permission applies
    #   only when request is made using qualified function ARN:
    #
    #   `arn:aws:lambda:aws-region:acct-id:function:function-name:2`
    #
    #   If you specify an alias name, for example `PROD`, then the
    #   permission is valid only for requests made using the alias ARN:
    #
    #   `arn:aws:lambda:aws-region:acct-id:function:function-name:PROD`
    #
    #   If the qualifier is not specified, the permission is valid only when
    #   requests is made using unqualified function ARN.
    #
    #   `arn:aws:lambda:aws-region:acct-id:function:function-name`
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you
    #   pass doesn't match the latest `RevisionId` of the function or
    #   alias, it will fail with an error message, advising you to retrieve
    #   the latest function version or alias `RevisionID` using either or .
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
      :revision_id)
      include Aws::Structure
    end

    # @!attribute [rw] statement
    #   The permission statement you specified in the request. The response
    #   returns the same as a string using a backslash ("\\") as an escape
    #   character in the JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddPermissionResponse AWS API Documentation
    #
    class AddPermissionResponse < Struct.new(
      :statement)
      include Aws::Structure
    end

    # Provides configuration information about a Lambda function version
    # alias.
    #
    # @!attribute [rw] alias_arn
    #   Lambda function ARN that is qualified using the alias name as the
    #   suffix. For example, if you create an alias called `BETA` that
    #   points to a helloworld function version, the ARN is
    #   `arn:aws:lambda:aws-regions:acct-id:function:helloworld:BETA`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Alias name.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   Function version to which the alias points.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Alias description.
    #   @return [String]
    #
    # @!attribute [rw] routing_config
    #   Specifies an additional function versions the alias points to,
    #   allowing you to dictate what percentage of traffic will invoke each
    #   version. For more information, see
    #   lambda-traffic-shifting-using-aliases.
    #   @return [Types::AliasRoutingConfiguration]
    #
    # @!attribute [rw] revision_id
    #   Represents the latest updated revision of the function or alias.
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
      include Aws::Structure
    end

    # The parent object that implements what percentage of traffic will
    # invoke each function version. For more information, see
    # lambda-traffic-shifting-using-aliases.
    #
    # @note When making an API call, you may pass AliasRoutingConfiguration
    #   data as a hash:
    #
    #       {
    #         additional_version_weights: {
    #           "AdditionalVersion" => 1.0,
    #         },
    #       }
    #
    # @!attribute [rw] additional_version_weights
    #   Set this value to dictate what percentage of traffic will invoke the
    #   updated function version. If set to an empty string, 100 percent of
    #   traffic will invoke `function-version`. For more information, see
    #   lambda-traffic-shifting-using-aliases.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AliasRoutingConfiguration AWS API Documentation
    #
    class AliasRoutingConfiguration < Struct.new(
      :additional_version_weights)
      include Aws::Structure
    end

    # @!attribute [rw] reserved_concurrent_executions
    #   The number of concurrent executions reserved for this function. For
    #   more information, see concurrent-executions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Concurrency AWS API Documentation
    #
    class Concurrency < Struct.new(
      :reserved_concurrent_executions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAliasRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         name: "Alias", # required
    #         function_version: "Version", # required
    #         description: "Description",
    #         routing_config: {
    #           additional_version_weights: {
    #             "AdditionalVersion" => 1.0,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] function_name
    #   Name of the Lambda function for which you want to create an alias.
    #   Note that the length constraint applies only to the ARN. If you
    #   specify only the function name, it is limited to 64 characters in
    #   length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the alias you are creating.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   Lambda function version for which you are creating the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_config
    #   Specifies an additional version your alias can point to, allowing
    #   you to dictate what percentage of traffic will invoke each version.
    #   For more information, see lambda-traffic-shifting-using-aliases.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEventSourceMappingRequest
    #   data as a hash:
    #
    #       {
    #         event_source_arn: "Arn", # required
    #         function_name: "FunctionName", # required
    #         enabled: false,
    #         batch_size: 1,
    #         starting_position: "TRIM_HORIZON", # accepts TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #         starting_position_timestamp: Time.now,
    #       }
    #
    # @!attribute [rw] event_source_arn
    #   The Amazon Resource Name (ARN) of the event source. Any record added
    #   to this source could cause AWS Lambda to invoke your Lambda
    #   function, it depends on the `BatchSize`. AWS Lambda POSTs the
    #   event's records to your Lambda function as JSON.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The Lambda function to invoke when AWS Lambda detects an event on
    #   the stream.
    #
    #   You can specify the function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`).
    #
    #   If you are using versioning, you can also provide a qualified
    #   function ARN (ARN that is qualified with function version or alias
    #   name as suffix). For more information about versioning, see [AWS
    #   Lambda Function Versioning and Aliases][1]
    #
    #   AWS Lambda also allows you to specify only the function name with
    #   the account ID qualifier (for example, `account-id:Thumbnail`).
    #
    #   Note that the length constraint applies only to the ARN. If you
    #   specify only the function name, it is limited to 64 characters in
    #   length.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether AWS Lambda should begin polling the event source.
    #   By default, `Enabled` is true.
    #   @return [Boolean]
    #
    # @!attribute [rw] batch_size
    #   The largest number of records that AWS Lambda will retrieve from
    #   your event source at the time of invoking your function. Your
    #   function receives an event with all the retrieved records. The
    #   default for Amazon Kinesis and Amazon DynamoDB is 100 records. For
    #   SQS, the default is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_position
    #   The position in the DynamoDB or Kinesis stream where AWS Lambda
    #   should start reading. For more information, see
    #   [GetShardIterator][1] in the *Amazon Kinesis API Reference Guide* or
    #   [GetShardIterator][2] in the *Amazon DynamoDB API Reference Guide*.
    #   The `AT_TIMESTAMP` value is supported only for [Kinesis streams][3].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html
    #   [3]: http://docs.aws.amazon.com/streams/latest/dev/amazon-kinesis-streams.html
    #   @return [String]
    #
    # @!attribute [rw] starting_position_timestamp
    #   The timestamp of the data record from which to start reading. Used
    #   with [shard iterator type][1] AT\_TIMESTAMP. If a record with this
    #   exact timestamp does not exist, the iterator returned is for the
    #   next (later) record. If the timestamp is older than the current trim
    #   horizon, the iterator returned is for the oldest untrimmed data
    #   record (TRIM\_HORIZON). Valid only for [Kinesis streams][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType
    #   [2]: http://docs.aws.amazon.com/streams/latest/dev/amazon-kinesis-streams.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateEventSourceMappingRequest AWS API Documentation
    #
    class CreateEventSourceMappingRequest < Struct.new(
      :event_source_arn,
      :function_name,
      :enabled,
      :batch_size,
      :starting_position,
      :starting_position_timestamp)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFunctionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         runtime: "nodejs", # required, accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, java8, python2.7, python3.6, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x
    #         role: "RoleArn", # required
    #         handler: "Handler", # required
    #         code: { # required
    #           zip_file: "data",
    #           s3_bucket: "S3Bucket",
    #           s3_key: "S3Key",
    #           s3_object_version: "S3ObjectVersion",
    #         },
    #         description: "Description",
    #         timeout: 1,
    #         memory_size: 1,
    #         publish: false,
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #         },
    #         dead_letter_config: {
    #           target_arn: "ResourceArn",
    #         },
    #         environment: {
    #           variables: {
    #             "EnvironmentVariableName" => "EnvironmentVariableValue",
    #           },
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         tracing_config: {
    #           mode: "Active", # accepts Active, PassThrough
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] function_name
    #   The name you want to assign to the function you are uploading. The
    #   function names appear in the console and are returned in the
    #   ListFunctions API. Function names are used to specify functions to
    #   other AWS Lambda API operations, such as Invoke. Note that the
    #   length constraint applies only to the ARN. If you specify only the
    #   function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for the Lambda function you are uploading.
    #
    #   To use the Python runtime v3.6, set the value to "python3.6". To
    #   use the Python runtime v2.7, set the value to "python2.7". To use
    #   the Node.js runtime v6.10, set the value to "nodejs6.10". To use
    #   the Node.js runtime v4.3, set the value to "nodejs4.3". To use the
    #   .NET Core runtime v1.0, set the value to "dotnetcore1.0". To use
    #   the .NET Core runtime v2.0, set the value to "dotnetcore2.0".
    #
    #   <note markdown="1"> Node v0.10.42 is currently marked as deprecated. You must migrate
    #   existing functions to the newer Node.js runtime versions available
    #   on AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. Failure
    #   to do so will result in an invalid parameter error being returned.
    #   Note that you will have to follow this procedure for each region
    #   that contains functions written in the Node v0.10.42 runtime.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the IAM role that Lambda assumes
    #   when it executes your function to access any other Amazon Web
    #   Services (AWS) resources. For more information, see [AWS Lambda: How
    #   it Works][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The function within your code that Lambda calls to begin execution.
    #   For Node.js, it is the *module-name*.*export* value in your
    #   function. For Java, it can be `package.class-name::handler` or
    #   `package.class-name`. For more information, see [Lambda Function
    #   Handler (Java)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/java-programming-model-handler-types.html
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The code for the Lambda function.
    #   @return [Types::FunctionCode]
    #
    # @!attribute [rw] description
    #   A short, user-defined function description. Lambda does not use this
    #   value. Assign a meaningful description as you see fit.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The function execution time at which Lambda should terminate the
    #   function. Because the execution time has cost implications, we
    #   recommend you set this value based on your expected execution time.
    #   The default is 3 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The amount of memory, in MB, your Lambda function is given. Lambda
    #   uses this memory size to infer the amount of CPU and memory
    #   allocated to your function. Your function use-case determines your
    #   CPU and memory requirements. For example, a database operation might
    #   need less memory compared to an image processing function. The
    #   default value is 128 MB. The value must be a multiple of 64 MB.
    #   @return [Integer]
    #
    # @!attribute [rw] publish
    #   This boolean parameter can be used to request AWS Lambda to create
    #   the Lambda function and publish a version as an atomic operation.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_config
    #   If your Lambda function accesses resources in a VPC, you provide
    #   this parameter identifying the list of security group IDs and subnet
    #   IDs. These must belong to the same VPC. You must provide at least
    #   one security group and one subnet ID.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] dead_letter_config
    #   The parent object that contains the target ARN (Amazon Resource
    #   Name) of an Amazon SQS queue or Amazon SNS topic. For more
    #   information, see dlq.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] environment
    #   The parent object that contains your environment's configuration
    #   settings.
    #   @return [Types::Environment]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt your
    #   function's environment variables. If not provided, AWS Lambda will
    #   use a default service key.
    #   @return [String]
    #
    # @!attribute [rw] tracing_config
    #   The parent object that contains your function's tracing settings.
    #   @return [Types::TracingConfig]
    #
    # @!attribute [rw] tags
    #   The list of tags (key-value pairs) assigned to the new function. For
    #   more information, see [Tagging Lambda Functions][1] in the **AWS
    #   Lambda Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [Hash<String,String>]
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
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :tags)
      include Aws::Structure
    end

    # The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS
    # topic you specify as your Dead Letter Queue (DLQ). For more
    # information, see dlq.
    #
    # @note When making an API call, you may pass DeadLetterConfig
    #   data as a hash:
    #
    #       {
    #         target_arn: "ResourceArn",
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS
    #   topic you specify as your Dead Letter Queue (DLQ). dlq. For more
    #   information, see dlq.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeadLetterConfig AWS API Documentation
    #
    class DeadLetterConfig < Struct.new(
      :target_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAliasRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         name: "Alias", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The Lambda function name for which the alias is created. Deleting an
    #   alias does not delete the function version to which it is pointing.
    #   Note that the length constraint applies only to the ARN. If you
    #   specify only the function name, it is limited to 64 characters in
    #   length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the alias to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteAliasRequest AWS API Documentation
    #
    class DeleteAliasRequest < Struct.new(
      :function_name,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventSourceMappingRequest
    #   data as a hash:
    #
    #       {
    #         uuid: "String", # required
    #       }
    #
    # @!attribute [rw] uuid
    #   The event source mapping ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteEventSourceMappingRequest AWS API Documentation
    #
    class DeleteEventSourceMappingRequest < Struct.new(
      :uuid)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFunctionConcurrencyRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the function you are removing concurrent execution
    #   limits from. For more information, see concurrent-executions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionConcurrencyRequest AWS API Documentation
    #
    class DeleteFunctionConcurrencyRequest < Struct.new(
      :function_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFunctionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The Lambda function to delete.
    #
    #   You can specify the function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you
    #   are using versioning, you can also provide a qualified function ARN
    #   (ARN that is qualified with function version or alias name as
    #   suffix). AWS Lambda also allows you to specify only the function
    #   name with the account ID qualifier (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Using this optional parameter you can specify a function version
    #   (but not the `$LATEST` version) to direct AWS Lambda to delete a
    #   specific function version. If the function version has one or more
    #   aliases pointing to it, you will get an error because you cannot
    #   have aliases pointing to it. You can delete any function version but
    #   not the `$LATEST`, that is, you cannot specify `$LATEST` as the
    #   value of this parameter. The `$LATEST` version can be deleted only
    #   when you want to delete all the function versions and aliases.
    #
    #   You can only specify a function version, not an alias name, using
    #   this parameter. You cannot delete a function version using its
    #   alias.
    #
    #   If you don't specify this parameter, AWS Lambda will delete the
    #   function, including all of its versions and aliases.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionRequest AWS API Documentation
    #
    class DeleteFunctionRequest < Struct.new(
      :function_name,
      :qualifier)
      include Aws::Structure
    end

    # The parent object that contains your environment's configuration
    # settings.
    #
    # @note When making an API call, you may pass Environment
    #   data as a hash:
    #
    #       {
    #         variables: {
    #           "EnvironmentVariableName" => "EnvironmentVariableValue",
    #         },
    #       }
    #
    # @!attribute [rw] variables
    #   The key-value pairs that represent your environment's configuration
    #   settings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :variables)
      include Aws::Structure
    end

    # The parent object that contains error information associated with your
    # configuration settings.
    #
    # @!attribute [rw] error_code
    #   The error code returned by the environment error object.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message returned by the environment error object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EnvironmentError AWS API Documentation
    #
    class EnvironmentError < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # The parent object returned that contains your environment's
    # configuration settings or any error information associated with your
    # configuration settings.
    #
    # @!attribute [rw] variables
    #   The key-value pairs returned that represent your environment's
    #   configuration settings or error information.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error
    #   The parent object that contains error information associated with
    #   your configuration settings.
    #   @return [Types::EnvironmentError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EnvironmentResponse AWS API Documentation
    #
    class EnvironmentResponse < Struct.new(
      :variables,
      :error)
      include Aws::Structure
    end

    # Describes mapping between an Amazon Kinesis or DynamoDB stream or an
    # Amazon SQS queue and a Lambda function.
    #
    # @!attribute [rw] uuid
    #   The AWS Lambda assigned opaque identifier for the mapping.
    #   @return [String]
    #
    # @!attribute [rw] batch_size
    #   The largest number of records that AWS Lambda will retrieve from
    #   your event source at the time of invoking your function. Your
    #   function receives an event with all the retrieved records.
    #   @return [Integer]
    #
    # @!attribute [rw] event_source_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB
    #   stream or the SQS queue that is the source of events.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Lambda function to invoke when AWS Lambda detects an event on
    #   the poll-based source.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The UTC time string indicating the last time the event mapping was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_processing_result
    #   The result of the last AWS Lambda invocation of your Lambda
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the event source mapping. It can be `Creating`,
    #   `Enabled`, `Disabled`, `Enabling`, `Disabling`, `Updating`, or
    #   `Deleting`.
    #   @return [String]
    #
    # @!attribute [rw] state_transition_reason
    #   The reason the event source mapping is in its current state. It is
    #   either user-requested or an AWS Lambda-initiated state transition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EventSourceMappingConfiguration AWS API Documentation
    #
    class EventSourceMappingConfiguration < Struct.new(
      :uuid,
      :batch_size,
      :event_source_arn,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason)
      include Aws::Structure
    end

    # The code for the Lambda function.
    #
    # @note When making an API call, you may pass FunctionCode
    #   data as a hash:
    #
    #       {
    #         zip_file: "data",
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion",
    #       }
    #
    # @!attribute [rw] zip_file
    #   The contents of your zip file containing your deployment package. If
    #   you are using the web API directly, the contents of the zip file
    #   must be base64-encoded. If you are using the AWS SDKs or the AWS
    #   CLI, the SDKs or CLI will do the encoding for you. For more
    #   information about creating a .zip file, see [Execution
    #   Permissions][1] in the **AWS Lambda Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   Amazon S3 bucket name where the .zip file containing your deployment
    #   package is stored. This bucket must reside in the same AWS region
    #   where you are creating the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 object (the deployment package) key name you want to
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   The Amazon S3 object (the deployment package) version you want to
    #   upload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionCode AWS API Documentation
    #
    class FunctionCode < Struct.new(
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version)
      include Aws::Structure
    end

    # The object for the Lambda function location.
    #
    # @!attribute [rw] repository_type
    #   The repository from which you can download the function.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The presigned URL you can use to download the function's .zip file
    #   that you previously uploaded. The URL is valid for up to 10 minutes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionCodeLocation AWS API Documentation
    #
    class FunctionCodeLocation < Struct.new(
      :repository_type,
      :location)
      include Aws::Structure
    end

    # A complex type that describes function metadata.
    #
    # @!attribute [rw] function_name
    #   The name of the function. Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) assigned to the function.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the IAM role that Lambda assumes
    #   when it executes your function to access any other Amazon Web
    #   Services (AWS) resources.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The function Lambda calls to begin executing your function.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size, in bytes, of the function .zip file you uploaded.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The user-provided description.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The function execution time at which Lambda should terminate the
    #   function. Because the execution time has cost implications, we
    #   recommend you set this value based on your expected execution time.
    #   The default is 3 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The memory size, in MB, you configured for the function. Must be a
    #   multiple of 64 MB.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified
    #   The time stamp of the last time you updated the function. The time
    #   stamp is conveyed as a string complying with ISO-8601 in this way
    #   YYYY-MM-DDThh:mm:ssTZD (e.g., 1997-07-16T19:20:30+01:00). For more
    #   information, see [Date and Time Formats][1].
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] code_sha_256
    #   It is the SHA256 hash of your function deployment package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration associated with your Lambda function.
    #   @return [Types::VpcConfigResponse]
    #
    # @!attribute [rw] dead_letter_config
    #   The parent object that contains the target ARN (Amazon Resource
    #   Name) of an Amazon SQS queue or Amazon SNS topic. For more
    #   information, see dlq.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] environment
    #   The parent object that contains your environment's configuration
    #   settings.
    #   @return [Types::EnvironmentResponse]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt your
    #   function's environment variables. If empty, it means you are using
    #   the AWS Lambda default service key.
    #   @return [String]
    #
    # @!attribute [rw] tracing_config
    #   The parent object that contains your function's tracing settings.
    #   @return [Types::TracingConfigResponse]
    #
    # @!attribute [rw] master_arn
    #   Returns the ARN (Amazon Resource Name) of the master function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Represents the latest updated revision of the function or alias.
    #   @return [String]
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
      :revision_id)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettingsRequest AWS API Documentation
    #
    class GetAccountSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] account_limit
    #   Provides limits of code size and concurrency associated with the
    #   current account and region.
    #   @return [Types::AccountLimit]
    #
    # @!attribute [rw] account_usage
    #   Provides code size usage and function count associated with the
    #   current account and region.
    #   @return [Types::AccountUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettingsResponse AWS API Documentation
    #
    class GetAccountSettingsResponse < Struct.new(
      :account_limit,
      :account_usage)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAliasRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         name: "Alias", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   Function name for which the alias is created. An alias is a
    #   subresource that exists only in the context of an existing Lambda
    #   function so you must specify the function name. Note that the length
    #   constraint applies only to the ARN. If you specify only the function
    #   name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the alias for which you want to retrieve information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAliasRequest AWS API Documentation
    #
    class GetAliasRequest < Struct.new(
      :function_name,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEventSourceMappingRequest
    #   data as a hash:
    #
    #       {
    #         uuid: "String", # required
    #       }
    #
    # @!attribute [rw] uuid
    #   The AWS Lambda assigned ID of the event source mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetEventSourceMappingRequest AWS API Documentation
    #
    class GetEventSourceMappingRequest < Struct.new(
      :uuid)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function for which you want to retrieve the
    #   configuration information.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Using this optional parameter you can specify a function version or
    #   an alias name. If you specify function version, the API uses
    #   qualified function ARN and returns information about the specific
    #   function version. If you specify an alias name, the API uses the
    #   alias ARN and returns information about the function version to
    #   which the alias points.
    #
    #   If you don't specify this parameter, the API uses unqualified
    #   function ARN, and returns information about the `$LATEST` function
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConfigurationRequest AWS API Documentation
    #
    class GetFunctionConfigurationRequest < Struct.new(
      :function_name,
      :qualifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The Lambda function name.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Use this optional parameter to specify a function version or an
    #   alias name. If you specify function version, the API uses qualified
    #   function ARN for the request and returns information about the
    #   specific Lambda function version. If you specify an alias name, the
    #   API uses the alias ARN and returns information about the function
    #   version to which the alias points. If you don't provide this
    #   parameter, the API uses unqualified function ARN and returns
    #   information about the `$LATEST` version of the Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionRequest AWS API Documentation
    #
    class GetFunctionRequest < Struct.new(
      :function_name,
      :qualifier)
      include Aws::Structure
    end

    # This response contains the object for the Lambda function location
    # (see FunctionCodeLocation.
    #
    # @!attribute [rw] configuration
    #   A complex type that describes function metadata.
    #   @return [Types::FunctionConfiguration]
    #
    # @!attribute [rw] code
    #   The object for the Lambda function location.
    #   @return [Types::FunctionCodeLocation]
    #
    # @!attribute [rw] tags
    #   Returns the list of tags associated with the function. For more
    #   information, see [Tagging Lambda Functions][1] in the **AWS Lambda
    #   Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] concurrency
    #   The concurrent execution limit set for this function. For more
    #   information, see concurrent-executions.
    #   @return [Types::Concurrency]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionResponse AWS API Documentation
    #
    class GetFunctionResponse < Struct.new(
      :configuration,
      :code,
      :tags,
      :concurrency)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPolicyRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   Function name whose resource policy you want to retrieve.
    #
    #   You can specify the function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you
    #   are using versioning, you can also provide a qualified function ARN
    #   (ARN that is qualified with function version or alias name as
    #   suffix). AWS Lambda also allows you to specify only the function
    #   name with the account ID qualifier (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   You can specify this optional query parameter to specify a function
    #   version or an alias name in which case this API will return all
    #   permissions associated with the specific qualified ARN. If you
    #   don't provide this parameter, the API will return permissions that
    #   apply to the unqualified function ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :function_name,
      :qualifier)
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource policy associated with the specified function. The
    #   response returns the same as a string using a backslash ("\\") as
    #   an escape character in the JSON.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Represents the latest updated revision of the function or alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy,
      :revision_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass InvocationRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         invocation_type: "Event", # accepts Event, RequestResponse, DryRun
    #         log_type: "None", # accepts None, Tail
    #         client_context: "String",
    #         payload: "data",
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The Lambda function name.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] invocation_type
    #   By default, the `Invoke` API assumes `RequestResponse` invocation
    #   type. You can optionally request asynchronous execution by
    #   specifying `Event` as the `InvocationType`. You can also use this
    #   parameter to request AWS Lambda to not execute the function but do
    #   some verification, such as if the caller is authorized to invoke the
    #   function and if the inputs are valid. You request this by specifying
    #   `DryRun` as the `InvocationType`. This is useful in a cross-account
    #   scenario when you want to verify access to a function without
    #   running it.
    #   @return [String]
    #
    # @!attribute [rw] log_type
    #   You can set this optional parameter to `Tail` in the request only if
    #   you specify the `InvocationType` parameter with value
    #   `RequestResponse`. In this case, AWS Lambda returns the
    #   base64-encoded last 4 KB of log data produced by your Lambda
    #   function in the `x-amz-log-result` header.
    #   @return [String]
    #
    # @!attribute [rw] client_context
    #   Using the `ClientContext` you can pass client-specific information
    #   to the Lambda function you are invoking. You can then process the
    #   client information in your Lambda function as you choose through the
    #   context variable. For an example of a `ClientContext` JSON, see
    #   [PutEvents][1] in the *Amazon Mobile Analytics API Reference and
    #   User Guide*.
    #
    #   The ClientContext JSON must be base64-encoded and has a maximum size
    #   of 3583 bytes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mobileanalytics/latest/ug/PutEvents.html
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   JSON that you want to provide to your Lambda function as input.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   You can use this optional parameter to specify a Lambda function
    #   version or alias name. If you specify a function version, the API
    #   uses the qualified function ARN to invoke a specific Lambda
    #   function. If you specify an alias name, the API uses the alias ARN
    #   to invoke the Lambda function version to which the alias points.
    #
    #   If you don't provide this parameter, then the API uses unqualified
    #   function ARN which results in invocation of the `$LATEST` version.
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
      include Aws::Structure
    end

    # Upon success, returns an empty response. Otherwise, throws an
    # exception.
    #
    # @!attribute [rw] status_code
    #   The HTTP status code will be in the 200 range for successful
    #   request. For the `RequestResponse` invocation type this status code
    #   will be 200. For the `Event` invocation type this status code will
    #   be 202. For the `DryRun` invocation type the status code will be
    #   204.
    #   @return [Integer]
    #
    # @!attribute [rw] function_error
    #   Indicates whether an error occurred while executing the Lambda
    #   function. If an error occurred this field will have one of two
    #   values; `Handled` or `Unhandled`. `Handled` errors are errors that
    #   are reported by the function while the `Unhandled` errors are those
    #   detected and reported by AWS Lambda. Unhandled errors include out of
    #   memory errors and function timeouts. For information about how to
    #   report an `Handled` error, see [Programming Model][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/programming-model.html
    #   @return [String]
    #
    # @!attribute [rw] log_result
    #   It is the base64-encoded logs for the Lambda function invocation.
    #   This is present only if the invocation type is `RequestResponse` and
    #   the logs were requested.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   It is the JSON representation of the object returned by the Lambda
    #   function. This is present only if the invocation type is
    #   `RequestResponse`.
    #
    #   In the event of a function error this field contains a message
    #   describing the error. For the `Handled` errors the Lambda function
    #   will report this message. For `Unhandled` errors AWS Lambda reports
    #   the message.
    #   @return [String]
    #
    # @!attribute [rw] executed_version
    #   The function version that has been executed. This value is returned
    #   only if the invocation type is `RequestResponse`. For more
    #   information, see lambda-traffic-shifting-using-aliases.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass InvokeAsyncRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         invoke_args: "data", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The Lambda function name. Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] invoke_args
    #   JSON that you want to provide to your Lambda function as input.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsyncRequest AWS API Documentation
    #
    class InvokeAsyncRequest < Struct.new(
      :function_name,
      :invoke_args)
      include Aws::Structure
    end

    # Upon success, it returns empty response. Otherwise, throws an
    # exception.
    #
    # @!attribute [rw] status
    #   It will be 202 upon success.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsyncResponse AWS API Documentation
    #
    class InvokeAsyncResponse < Struct.new(
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAliasesRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         function_version: "Version",
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] function_name
    #   Lambda function name for which the alias is created. Note that the
    #   length constraint applies only to the ARN. If you specify only the
    #   function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   If you specify this optional parameter, the API returns only the
    #   aliases that are pointing to the specific Lambda function version,
    #   otherwise the API returns all of the aliases created for the Lambda
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Optional string. An opaque pagination token returned from a previous
    #   `ListAliases` operation. If present, indicates where to continue the
    #   listing.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Optional integer. Specifies the maximum number of aliases to return
    #   in response. This parameter value must be greater than 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListAliasesRequest AWS API Documentation
    #
    class ListAliasesRequest < Struct.new(
      :function_name,
      :function_version,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   A string, present if there are more aliases.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventSourceMappingsRequest
    #   data as a hash:
    #
    #       {
    #         event_source_arn: "Arn",
    #         function_name: "FunctionName",
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] event_source_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB
    #   stream, or an SQS queue. (This parameter is optional.)
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   You can specify the function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you
    #   are using versioning, you can also provide a qualified function ARN
    #   (ARN that is qualified with function version or alias name as
    #   suffix). AWS Lambda also allows you to specify only the function
    #   name with the account ID qualifier (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Optional string. An opaque pagination token returned from a previous
    #   `ListEventSourceMappings` operation. If present, specifies to
    #   continue the list from where the returning call left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Optional integer. Specifies the maximum number of event sources to
    #   return in response. This value must be greater than 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappingsRequest AWS API Documentation
    #
    class ListEventSourceMappingsRequest < Struct.new(
      :event_source_arn,
      :function_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains a list of event sources (see EventSourceMappingConfiguration)
    #
    # @!attribute [rw] next_marker
    #   A string, present if there are more event source mappings.
    #   @return [String]
    #
    # @!attribute [rw] event_source_mappings
    #   An array of `EventSourceMappingConfiguration` objects.
    #   @return [Array<Types::EventSourceMappingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappingsResponse AWS API Documentation
    #
    class ListEventSourceMappingsResponse < Struct.new(
      :next_marker,
      :event_source_mappings)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFunctionsRequest
    #   data as a hash:
    #
    #       {
    #         master_region: "MasterRegion",
    #         function_version: "ALL", # accepts ALL
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] master_region
    #   Optional string. If not specified, will return only regular function
    #   versions (i.e., non-replicated versions).
    #
    #   Valid values are:
    #
    #   The region from which the functions are replicated. For example, if
    #   you specify `us-east-1`, only functions replicated from that region
    #   will be returned.
    #
    #   `ALL`\: Will return all functions from any region. If specified, you
    #   also must specify a valid FunctionVersion parameter.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   Optional string. If not specified, only the unqualified functions
    #   ARNs (Amazon Resource Names) will be returned.
    #
    #   Valid value:
    #
    #   `ALL`\: Will return all versions, including `$LATEST` which will
    #   have fully qualified ARNs (Amazon Resource Names).
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Optional string. An opaque pagination token returned from a previous
    #   `ListFunctions` operation. If present, indicates where to continue
    #   the listing.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Optional integer. Specifies the maximum number of AWS Lambda
    #   functions to return in response. This parameter value must be
    #   greater than 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsRequest AWS API Documentation
    #
    class ListFunctionsRequest < Struct.new(
      :master_region,
      :function_version,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains a list of AWS Lambda function configurations (see
    # FunctionConfiguration.
    #
    # @!attribute [rw] next_marker
    #   A string, present if there are more functions.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource: "FunctionArn", # required
    #       }
    #
    # @!attribute [rw] resource
    #   The ARN (Amazon Resource Name) of the function. For more
    #   information, see [Tagging Lambda Functions][1] in the **AWS Lambda
    #   Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags assigned to the function. For more information, see
    #   [Tagging Lambda Functions][1] in the **AWS Lambda Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVersionsByFunctionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] function_name
    #   Function name whose versions to list. You can specify a function
    #   name (for example, `Thumbnail`) or you can specify Amazon Resource
    #   Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Optional string. An opaque pagination token returned from a previous
    #   `ListVersionsByFunction` operation. If present, indicates where to
    #   continue the listing.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Optional integer. Specifies the maximum number of AWS Lambda
    #   function versions to return in response. This parameter value must
    #   be greater than 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListVersionsByFunctionRequest AWS API Documentation
    #
    class ListVersionsByFunctionRequest < Struct.new(
      :function_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   A string, present if there are more function versions.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass PublishVersionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         code_sha_256: "String",
    #         description: "Description",
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   The Lambda function name. You can specify a function name (for
    #   example, `Thumbnail`) or you can specify Amazon Resource Name (ARN)
    #   of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA256 hash of the deployment package you want to publish. This
    #   provides validation on the code you are publishing. If you provide
    #   this parameter, the value must match the SHA256 of the $LATEST
    #   version for the publication to succeed. You can use the **DryRun**
    #   parameter of UpdateFunctionCode to verify the hash value that will
    #   be returned before publishing your new version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the version you are publishing. If not provided,
    #   AWS Lambda copies the description from the $LATEST version.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you
    #   pass doesn't match the latest `RevisionId` of the function or
    #   alias, it will fail with an error message, advising you to retrieve
    #   the latest function version or alias `RevisionID` using either or .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishVersionRequest AWS API Documentation
    #
    class PublishVersionRequest < Struct.new(
      :function_name,
      :code_sha_256,
      :description,
      :revision_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutFunctionConcurrencyRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         reserved_concurrent_executions: 1, # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the function you are setting concurrent execution limits
    #   on. For more information, see concurrent-executions.
    #   @return [String]
    #
    # @!attribute [rw] reserved_concurrent_executions
    #   The concurrent execution limit reserved for this function. For more
    #   information, see concurrent-executions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionConcurrencyRequest AWS API Documentation
    #
    class PutFunctionConcurrencyRequest < Struct.new(
      :function_name,
      :reserved_concurrent_executions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemovePermissionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         statement_id: "NamespacedStatementId", # required
    #         qualifier: "Qualifier",
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   Lambda function whose resource policy you want to remove a
    #   permission from.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   Statement ID of the permission to remove.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   You can specify this optional parameter to remove permission
    #   associated with a specific function version or function alias. If
    #   you don't specify this parameter, the API removes permission
    #   associated with the unqualified function ARN.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you
    #   pass doesn't match the latest `RevisionId` of the function or
    #   alias, it will fail with an error message, advising you to retrieve
    #   the latest function version or alias `RevisionID` using either or .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemovePermissionRequest AWS API Documentation
    #
    class RemovePermissionRequest < Struct.new(
      :function_name,
      :statement_id,
      :qualifier,
      :revision_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource: "FunctionArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource
    #   The ARN (Amazon Resource Name) of the Lambda function. For more
    #   information, see [Tagging Lambda Functions][1] in the **AWS Lambda
    #   Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags (key-value pairs) you are assigning to the Lambda
    #   function. For more information, see [Tagging Lambda Functions][1] in
    #   the **AWS Lambda Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource,
      :tags)
      include Aws::Structure
    end

    # The parent object that contains your function's tracing settings.
    #
    # @note When making an API call, you may pass TracingConfig
    #   data as a hash:
    #
    #       {
    #         mode: "Active", # accepts Active, PassThrough
    #       }
    #
    # @!attribute [rw] mode
    #   Can be either PassThrough or Active. If PassThrough, Lambda will
    #   only trace the request from an upstream service if it contains a
    #   tracing header with "sampled=1". If Active, Lambda will respect
    #   any tracing header it receives from an upstream service. If no
    #   tracing header is received, Lambda will call X-Ray for a tracing
    #   decision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TracingConfig AWS API Documentation
    #
    class TracingConfig < Struct.new(
      :mode)
      include Aws::Structure
    end

    # Parent object of the tracing information associated with your Lambda
    # function.
    #
    # @!attribute [rw] mode
    #   The tracing mode associated with your Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TracingConfigResponse AWS API Documentation
    #
    class TracingConfigResponse < Struct.new(
      :mode)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource: "FunctionArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource
    #   The ARN (Amazon Resource Name) of the function. For more
    #   information, see [Tagging Lambda Functions][1] in the **AWS Lambda
    #   Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to be deleted from the function. For more
    #   information, see [Tagging Lambda Functions][1] in the **AWS Lambda
    #   Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource,
      :tag_keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAliasRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         name: "Alias", # required
    #         function_version: "Version",
    #         description: "Description",
    #         routing_config: {
    #           additional_version_weights: {
    #             "AdditionalVersion" => 1.0,
    #           },
    #         },
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   The function name for which the alias is created. Note that the
    #   length constraint applies only to the ARN. If you specify only the
    #   function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The alias name.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   Using this parameter you can change the Lambda function version to
    #   which the alias points.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   You can change the description of the alias using this parameter.
    #   @return [String]
    #
    # @!attribute [rw] routing_config
    #   Specifies an additional version your alias can point to, allowing
    #   you to dictate what percentage of traffic will invoke each version.
    #   For more information, see lambda-traffic-shifting-using-aliases.
    #   @return [Types::AliasRoutingConfiguration]
    #
    # @!attribute [rw] revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you
    #   pass doesn't match the latest `RevisionId` of the function or
    #   alias, it will fail with an error message, advising you to retrieve
    #   the latest function version or alias `RevisionID` using either or .
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEventSourceMappingRequest
    #   data as a hash:
    #
    #       {
    #         uuid: "String", # required
    #         function_name: "FunctionName",
    #         enabled: false,
    #         batch_size: 1,
    #       }
    #
    # @!attribute [rw] uuid
    #   The event source mapping identifier.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The Lambda function to which you want the stream records sent.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #
    #   If you are using versioning, you can also provide a qualified
    #   function ARN (ARN that is qualified with function version or alias
    #   name as suffix). For more information about versioning, see [AWS
    #   Lambda Function Versioning and Aliases][1]
    #
    #   Note that the length constraint applies only to the ARN. If you
    #   specify only the function name, it is limited to 64 character in
    #   length.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether AWS Lambda should actively poll the stream or not.
    #   If disabled, AWS Lambda will not poll the stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] batch_size
    #   The maximum number of stream records that can be sent to your Lambda
    #   function for a single invocation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateEventSourceMappingRequest AWS API Documentation
    #
    class UpdateEventSourceMappingRequest < Struct.new(
      :uuid,
      :function_name,
      :enabled,
      :batch_size)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFunctionCodeRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         zip_file: "data",
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion",
    #         publish: false,
    #         dry_run: false,
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   The existing Lambda function name whose code you want to replace.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] zip_file
    #   The contents of your zip file containing your deployment package. If
    #   you are using the web API directly, the contents of the zip file
    #   must be base64-encoded. If you are using the AWS SDKs or the AWS
    #   CLI, the SDKs or CLI will do the encoding for you. For more
    #   information about creating a .zip file, see [Execution
    #   Permissions][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   Amazon S3 bucket name where the .zip file containing your deployment
    #   package is stored. This bucket must reside in the same AWS Region
    #   where you are creating the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 object (the deployment package) key name you want to
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   The Amazon S3 object (the deployment package) version you want to
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] publish
    #   This boolean parameter can be used to request AWS Lambda to update
    #   the Lambda function and publish a version as an atomic operation.
    #   @return [Boolean]
    #
    # @!attribute [rw] dry_run
    #   This boolean parameter can be used to test your request to AWS
    #   Lambda to update the Lambda function and publish a version as an
    #   atomic operation. It will do all necessary computation and
    #   validation of your code but will not upload it or a publish a
    #   version. Each time this operation is invoked, the `CodeSha256` hash
    #   value of the provided code will also be computed and returned in the
    #   response.
    #   @return [Boolean]
    #
    # @!attribute [rw] revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you
    #   pass doesn't match the latest `RevisionId` of the function or
    #   alias, it will fail with an error message, advising you to retrieve
    #   the latest function version or alias `RevisionID` using either or .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionCodeRequest AWS API Documentation
    #
    class UpdateFunctionCodeRequest < Struct.new(
      :function_name,
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :publish,
      :dry_run,
      :revision_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFunctionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         role: "RoleArn",
    #         handler: "Handler",
    #         description: "Description",
    #         timeout: 1,
    #         memory_size: 1,
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #         },
    #         environment: {
    #           variables: {
    #             "EnvironmentVariableName" => "EnvironmentVariableValue",
    #           },
    #         },
    #         runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, java8, python2.7, python3.6, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x
    #         dead_letter_config: {
    #           target_arn: "ResourceArn",
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         tracing_config: {
    #           mode: "Active", # accepts Active, PassThrough
    #         },
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
    #   Lambda also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies
    #   only to the ARN. If you specify only the function name, it is
    #   limited to 64 character in length.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the IAM role that Lambda will
    #   assume when it executes your function.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The function that Lambda calls to begin executing your function. For
    #   Node.js, it is the `module-name.export` value in your function.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A short user-defined function description. AWS Lambda does not use
    #   this value. Assign a meaningful description as you see fit.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The function execution time at which AWS Lambda should terminate the
    #   function. Because the execution time has cost implications, we
    #   recommend you set this value based on your expected execution time.
    #   The default is 3 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The amount of memory, in MB, your Lambda function is given. AWS
    #   Lambda uses this memory size to infer the amount of CPU allocated to
    #   your function. Your function use-case determines your CPU and memory
    #   requirements. For example, a database operation might need less
    #   memory compared to an image processing function. The default value
    #   is 128 MB. The value must be a multiple of 64 MB.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_config
    #   If your Lambda function accesses resources in a VPC, you provide
    #   this parameter identifying the list of security group IDs and subnet
    #   IDs. These must belong to the same VPC. You must provide at least
    #   one security group and one subnet ID.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] environment
    #   The parent object that contains your environment's configuration
    #   settings.
    #   @return [Types::Environment]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for the Lambda function.
    #
    #   To use the Python runtime v3.6, set the value to "python3.6". To
    #   use the Python runtime v2.7, set the value to "python2.7". To use
    #   the Node.js runtime v6.10, set the value to "nodejs6.10". To use
    #   the Node.js runtime v4.3, set the value to "nodejs4.3". To use the
    #   .NET Core runtime v1.0, set the value to "dotnetcore1.0". To use
    #   the .NET Core runtime v2.0, set the value to "dotnetcore2.0".
    #
    #   <note markdown="1"> Node v0.10.42 is currently marked as deprecated. You must migrate
    #   existing functions to the newer Node.js runtime versions available
    #   on AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. Failure
    #   to do so will result in an invalid parameter error being returned.
    #   Note that you will have to follow this procedure for each region
    #   that contains functions written in the Node v0.10.42 runtime.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_config
    #   The parent object that contains the target ARN (Amazon Resource
    #   Name) of an Amazon SQS queue or Amazon SNS topic. For more
    #   information, see dlq.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt your
    #   function's environment variables. If you elect to use the AWS
    #   Lambda default service key, pass in an empty string ("") for this
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] tracing_config
    #   The parent object that contains your function's tracing settings.
    #   @return [Types::TracingConfig]
    #
    # @!attribute [rw] revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you
    #   pass doesn't match the latest `RevisionId` of the function or
    #   alias, it will fail with an error message, advising you to retrieve
    #   the latest function version or alias `RevisionID` using either or .
    #   @return [String]
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
      :revision_id)
      include Aws::Structure
    end

    # If your Lambda function accesses resources in a VPC, you provide this
    # parameter identifying the list of security group IDs and subnet IDs.
    # These must belong to the same VPC. You must provide at least one
    # security group and one subnet ID.
    #
    # @note When making an API call, you may pass VpcConfig
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   A list of one or more subnet IDs in your VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of one or more security groups IDs in your VPC.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids)
      include Aws::Structure
    end

    # VPC configuration associated with your Lambda function.
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs associated with the Lambda function.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs associated with the Lambda function.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID associated with you Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/VpcConfigResponse AWS API Documentation
    #
    class VpcConfigResponse < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :vpc_id)
      include Aws::Structure
    end

  end
end
