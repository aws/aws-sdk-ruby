# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Lambda
    module Types

      # @note When making an API call, pass AddPermissionRequest
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
      #       }
      class AddPermissionRequest < Aws::Structure.new(
        :function_name,
        :statement_id,
        :action,
        :principal,
        :source_arn,
        :source_account,
        :event_source_token,
        :qualifier)

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
        #   limited to 64 character in length.
        #   @return [String]

        # @!attribute [rw] statement_id
        #   A unique statement identifier.
        #   @return [String]

        # @!attribute [rw] action
        #   The AWS Lambda action you want to allow in this statement. Each
        #   Lambda action is a string starting with `lambda:` followed by the
        #   API name (see Operations). For example, `lambda:CreateFunction`. You
        #   can use wildcard (`lambda:*`) to grant permission for all AWS Lambda
        #   actions.
        #   @return [String]

        # @!attribute [rw] principal
        #   The principal who is getting this permission. It can be Amazon S3
        #   service Principal (`s3.amazonaws.com`) if you want Amazon S3 to
        #   invoke the function, an AWS account ID if you are granting
        #   cross-account permission, or any valid AWS service principal such as
        #   `sns.amazonaws.com`. For example, you might want to allow a custom
        #   application in another AWS account to push events to AWS Lambda by
        #   invoking your function.
        #   @return [String]

        # @!attribute [rw] source_arn
        #   This is optional; however, when granting Amazon S3 permission to
        #   invoke your function, you should specify this field with the bucket
        #   Amazon Resource Name (ARN) as its value. This ensures that only
        #   events generated from the specified bucket can invoke the function.
        #
        #   <important>If you add a permission for the Amazon S3 principal without providing the source ARN, any AWS account that creates a mapping to your function ARN can send events to invoke your Lambda function from Amazon S3.</important>
        #   @return [String]

        # @!attribute [rw] source_account
        #   The AWS account ID (without a hyphen) of the source owner. For
        #   example, if the `SourceArn` identifies a bucket, then this is the
        #   bucket owner\'s account ID. You can use this additional condition to
        #   ensure the bucket you specify is owned by a specific account (it is
        #   possible the bucket owner deleted the bucket and some other AWS
        #   account created the bucket). You can also use this condition to
        #   specify all sources (that is, you don\'t specify the `SourceArn`)
        #   owned by a specific account.
        #   @return [String]

        # @!attribute [rw] event_source_token
        #   @return [String]

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

      end

      class AddPermissionResponse < Aws::Structure.new(
        :statement)

        # @!attribute [rw] statement
        #   The permission statement you specified in the request. The response
        #   returns the same as a string using a backslash (\"\\\") as an escape
        #   character in the JSON.
        #   @return [String]

      end

      # Provides configuration information about a Lambda function version
      # alias.
      class AliasConfiguration < Aws::Structure.new(
        :alias_arn,
        :name,
        :function_version,
        :description)

        # @!attribute [rw] alias_arn
        #   Lambda function ARN that is qualified using the alias name as the
        #   suffix. For example, if you create an alias called `BETA` that
        #   points to a helloworld function version, the ARN is
        #   `arn:aws:lambda:aws-regions:acct-id:function:helloworld:BETA`.
        #   @return [String]

        # @!attribute [rw] name
        #   Alias name.
        #   @return [String]

        # @!attribute [rw] function_version
        #   Function version to which the alias points.
        #   @return [String]

        # @!attribute [rw] description
        #   Alias description.
        #   @return [String]

      end

      # @note When making an API call, pass CreateAliasRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         name: "Alias", # required
      #         function_version: "Version", # required
      #         description: "Description",
      #       }
      class CreateAliasRequest < Aws::Structure.new(
        :function_name,
        :name,
        :function_version,
        :description)

        # @!attribute [rw] function_name
        #   Name of the Lambda function for which you want to create an alias.
        #   @return [String]

        # @!attribute [rw] name
        #   Name for the alias you are creating.
        #   @return [String]

        # @!attribute [rw] function_version
        #   Lambda function version for which you are creating the alias.
        #   @return [String]

        # @!attribute [rw] description
        #   Description of the alias.
        #   @return [String]

      end

      # @note When making an API call, pass CreateEventSourceMappingRequest
      #   data as a hash:
      #
      #       {
      #         event_source_arn: "Arn", # required
      #         function_name: "FunctionName", # required
      #         enabled: false,
      #         batch_size: 1,
      #         starting_position: "TRIM_HORIZON", # required, accepts TRIM_HORIZON, LATEST
      #       }
      class CreateEventSourceMappingRequest < Aws::Structure.new(
        :event_source_arn,
        :function_name,
        :enabled,
        :batch_size,
        :starting_position)

        # @!attribute [rw] event_source_arn
        #   The Amazon Resource Name (ARN) of the Amazon Kinesis or the Amazon
        #   DynamoDB stream that is the event source. Any record added to this
        #   stream could cause AWS Lambda to invoke your Lambda function, it
        #   depends on the `BatchSize`. AWS Lambda POSTs the Amazon Kinesis
        #   event, containing records, to your Lambda function as JSON.
        #   @return [String]

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
        #   specify only the function name, it is limited to 64 character in
        #   length.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
        #   @return [String]

        # @!attribute [rw] enabled
        #   Indicates whether AWS Lambda should begin polling the event source.
        #   By default, `Enabled` is true.
        #   @return [Boolean]

        # @!attribute [rw] batch_size
        #   The largest number of records that AWS Lambda will retrieve from
        #   your event source at the time of invoking your function. Your
        #   function receives an event with all the retrieved records. The
        #   default is 100 records.
        #   @return [Integer]

        # @!attribute [rw] starting_position
        #   The position in the stream where AWS Lambda should start reading.
        #   For more information, go to [ShardIteratorType][1] in the *Amazon
        #   Kinesis API Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType
        #   @return [String]

      end

      # @note When making an API call, pass CreateFunctionRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         runtime: "nodejs", # required, accepts nodejs, nodejs4.3, java8, python2.7
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
      #       }
      class CreateFunctionRequest < Aws::Structure.new(
        :function_name,
        :runtime,
        :role,
        :handler,
        :code,
        :description,
        :timeout,
        :memory_size,
        :publish,
        :vpc_config)

        # @!attribute [rw] function_name
        #   The name you want to assign to the function you are uploading. The
        #   function names appear in the console and are returned in the
        #   ListFunctions API. Function names are used to specify functions to
        #   other AWS Lambda APIs, such as Invoke.
        #   @return [String]

        # @!attribute [rw] runtime
        #   The runtime environment for the Lambda function you are uploading.
        #   @return [String]

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

        # @!attribute [rw] code
        #   The code for the Lambda function.
        #   @return [Types::FunctionCode]

        # @!attribute [rw] description
        #   A short, user-defined function description. Lambda does not use this
        #   value. Assign a meaningful description as you see fit.
        #   @return [String]

        # @!attribute [rw] timeout
        #   The function execution time at which Lambda should terminate the
        #   function. Because the execution time has cost implications, we
        #   recommend you set this value based on your expected execution time.
        #   The default is 3 seconds.
        #   @return [Integer]

        # @!attribute [rw] memory_size
        #   The amount of memory, in MB, your Lambda function is given. Lambda
        #   uses this memory size to infer the amount of CPU and memory
        #   allocated to your function. Your function use-case determines your
        #   CPU and memory requirements. For example, a database operation might
        #   need less memory compared to an image processing function. The
        #   default value is 128 MB. The value must be a multiple of 64 MB.
        #   @return [Integer]

        # @!attribute [rw] publish
        #   This boolean parameter can be used to request AWS Lambda to create
        #   the Lambda function and publish a version as an atomic operation.
        #   @return [Boolean]

        # @!attribute [rw] vpc_config
        #   If your Lambda function accesses resources in a VPC, you provide
        #   this parameter identifying the list of security group IDs and subnet
        #   IDs. These must belong to the same VPC. You must provide at least
        #   one security group and one subnet ID.
        #   @return [Types::VpcConfig]

      end

      # @note When making an API call, pass DeleteAliasRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         name: "Alias", # required
      #       }
      class DeleteAliasRequest < Aws::Structure.new(
        :function_name,
        :name)

        # @!attribute [rw] function_name
        #   The Lambda function name for which the alias is created. Deleting an
        #   alias does not delete the function version to which it is pointing.
        #   @return [String]

        # @!attribute [rw] name
        #   Name of the alias to delete.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteEventSourceMappingRequest
      #   data as a hash:
      #
      #       {
      #         uuid: "String", # required
      #       }
      class DeleteEventSourceMappingRequest < Aws::Structure.new(
        :uuid)

        # @!attribute [rw] uuid
        #   The event source mapping ID.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteFunctionRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         qualifier: "Qualifier",
      #       }
      class DeleteFunctionRequest < Aws::Structure.new(
        :function_name,
        :qualifier)

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
        #   limited to 64 character in length.
        #   @return [String]

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
        #   If you don\'t specify this parameter, AWS Lambda will delete the
        #   function, including all of its versions and aliases.
        #   @return [String]

      end

      # Describes mapping between an Amazon Kinesis stream and a Lambda
      # function.
      class EventSourceMappingConfiguration < Aws::Structure.new(
        :uuid,
        :batch_size,
        :event_source_arn,
        :function_arn,
        :last_modified,
        :last_processing_result,
        :state,
        :state_transition_reason)

        # @!attribute [rw] uuid
        #   The AWS Lambda assigned opaque identifier for the mapping.
        #   @return [String]

        # @!attribute [rw] batch_size
        #   The largest number of records that AWS Lambda will retrieve from
        #   your event source at the time of invoking your function. Your
        #   function receives an event with all the retrieved records.
        #   @return [Integer]

        # @!attribute [rw] event_source_arn
        #   The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is
        #   the source of events.
        #   @return [String]

        # @!attribute [rw] function_arn
        #   The Lambda function to invoke when AWS Lambda detects an event on
        #   the stream.
        #   @return [String]

        # @!attribute [rw] last_modified
        #   The UTC time string indicating the last time the event mapping was
        #   updated.
        #   @return [Time]

        # @!attribute [rw] last_processing_result
        #   The result of the last AWS Lambda invocation of your Lambda
        #   function.
        #   @return [String]

        # @!attribute [rw] state
        #   The state of the event source mapping. It can be `Creating`,
        #   `Enabled`, `Disabled`, `Enabling`, `Disabling`, `Updating`, or
        #   `Deleting`.
        #   @return [String]

        # @!attribute [rw] state_transition_reason
        #   The reason the event source mapping is in its current state. It is
        #   either user-requested or an AWS Lambda-initiated state transition.
        #   @return [String]

      end

      # The code for the Lambda function.
      # @note When making an API call, pass FunctionCode
      #   data as a hash:
      #
      #       {
      #         zip_file: "data",
      #         s3_bucket: "S3Bucket",
      #         s3_key: "S3Key",
      #         s3_object_version: "S3ObjectVersion",
      #       }
      class FunctionCode < Aws::Structure.new(
        :zip_file,
        :s3_bucket,
        :s3_key,
        :s3_object_version)

        # @!attribute [rw] zip_file
        #   A zip file containing your deployment package. If you are using the
        #   API directly, the zip file must be base64-encoded (if you are using
        #   the AWS SDKs or the AWS CLI, the SDKs or CLI will do the encoding
        #   for you). For more information about creating a .zip file, go to
        #   [Execution Permissions][1] in the *AWS Lambda Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html
        #   @return [String]

        # @!attribute [rw] s3_bucket
        #   Amazon S3 bucket name where the .zip file containing your deployment
        #   package is stored. This bucket must reside in the same AWS region
        #   where you are creating the Lambda function.
        #   @return [String]

        # @!attribute [rw] s3_key
        #   The Amazon S3 object (the deployment package) key name you want to
        #   upload.
        #   @return [String]

        # @!attribute [rw] s3_object_version
        #   The Amazon S3 object (the deployment package) version you want to
        #   upload.
        #   @return [String]

      end

      # The object for the Lambda function location.
      class FunctionCodeLocation < Aws::Structure.new(
        :repository_type,
        :location)

        # @!attribute [rw] repository_type
        #   The repository from which you can download the function.
        #   @return [String]

        # @!attribute [rw] location
        #   The presigned URL you can use to download the function\'s .zip file
        #   that you previously uploaded. The URL is valid for up to 10 minutes.
        #   @return [String]

      end

      # A complex type that describes function metadata.
      class FunctionConfiguration < Aws::Structure.new(
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
        :vpc_config)

        # @!attribute [rw] function_name
        #   The name of the function.
        #   @return [String]

        # @!attribute [rw] function_arn
        #   The Amazon Resource Name (ARN) assigned to the function.
        #   @return [String]

        # @!attribute [rw] runtime
        #   The runtime environment for the Lambda function.
        #   @return [String]

        # @!attribute [rw] role
        #   The Amazon Resource Name (ARN) of the IAM role that Lambda assumes
        #   when it executes your function to access any other Amazon Web
        #   Services (AWS) resources.
        #   @return [String]

        # @!attribute [rw] handler
        #   The function Lambda calls to begin executing your function.
        #   @return [String]

        # @!attribute [rw] code_size
        #   The size, in bytes, of the function .zip file you uploaded.
        #   @return [Integer]

        # @!attribute [rw] description
        #   The user-provided description.
        #   @return [String]

        # @!attribute [rw] timeout
        #   The function execution time at which Lambda should terminate the
        #   function. Because the execution time has cost implications, we
        #   recommend you set this value based on your expected execution time.
        #   The default is 3 seconds.
        #   @return [Integer]

        # @!attribute [rw] memory_size
        #   The memory size, in MB, you configured for the function. Must be a
        #   multiple of 64 MB.
        #   @return [Integer]

        # @!attribute [rw] last_modified
        #   The time stamp of the last time you updated the function.
        #   @return [Time]

        # @!attribute [rw] code_sha_256
        #   It is the SHA256 hash of your function deployment package.
        #   @return [String]

        # @!attribute [rw] version
        #   The version of the Lambda function.
        #   @return [String]

        # @!attribute [rw] vpc_config
        #   VPC configuration associated with your Lambda function.
        #   @return [Types::VpcConfigResponse]

      end

      # @note When making an API call, pass GetAliasRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         name: "Alias", # required
      #       }
      class GetAliasRequest < Aws::Structure.new(
        :function_name,
        :name)

        # @!attribute [rw] function_name
        #   Function name for which the alias is created. An alias is a
        #   subresource that exists only in the context of an existing Lambda
        #   function so you must specify the function name.
        #   @return [String]

        # @!attribute [rw] name
        #   Name of the alias for which you want to retrieve information.
        #   @return [String]

      end

      # @note When making an API call, pass GetEventSourceMappingRequest
      #   data as a hash:
      #
      #       {
      #         uuid: "String", # required
      #       }
      class GetEventSourceMappingRequest < Aws::Structure.new(
        :uuid)

        # @!attribute [rw] uuid
        #   The AWS Lambda assigned ID of the event source mapping.
        #   @return [String]

      end

      # @note When making an API call, pass GetFunctionConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         qualifier: "Qualifier",
      #       }
      class GetFunctionConfigurationRequest < Aws::Structure.new(
        :function_name,
        :qualifier)

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
        #   limited to 64 character in length.
        #   @return [String]

        # @!attribute [rw] qualifier
        #   Using this optional parameter you can specify a function version or
        #   an alias name. If you specify function version, the API uses
        #   qualified function ARN and returns information about the specific
        #   function version. If you specify an alias name, the API uses the
        #   alias ARN and returns information about the function version to
        #   which the alias points.
        #
        #   If you don\'t specify this parameter, the API uses unqualified
        #   function ARN, and returns information about the `$LATEST` function
        #   version.
        #   @return [String]

      end

      # @note When making an API call, pass GetFunctionRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         qualifier: "Qualifier",
      #       }
      class GetFunctionRequest < Aws::Structure.new(
        :function_name,
        :qualifier)

        # @!attribute [rw] function_name
        #   The Lambda function name.
        #
        #   You can specify a function name (for example, `Thumbnail`) or you
        #   can specify Amazon Resource Name (ARN) of the function (for example,
        #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
        #   Lambda also allows you to specify a partial ARN (for example,
        #   `account-id:Thumbnail`). Note that the length constraint applies
        #   only to the ARN. If you specify only the function name, it is
        #   limited to 64 character in length.
        #   @return [String]

        # @!attribute [rw] qualifier
        #   Using this optional parameter to specify a function version or an
        #   alias name. If you specify function version, the API uses qualified
        #   function ARN for the request and returns information about the
        #   specific Lambda function version. If you specify an alias name, the
        #   API uses the alias ARN and returns information about the function
        #   version to which the alias points. If you don\'t provide this
        #   parameter, the API uses unqualified function ARN and returns
        #   information about the `$LATEST` version of the Lambda function.
        #   @return [String]

      end

      # This response contains the object for the Lambda function location
      # (see API\_FunctionCodeLocation.
      class GetFunctionResponse < Aws::Structure.new(
        :configuration,
        :code)

        # @!attribute [rw] configuration
        #   A complex type that describes function metadata.
        #   @return [Types::FunctionConfiguration]

        # @!attribute [rw] code
        #   The object for the Lambda function location.
        #   @return [Types::FunctionCodeLocation]

      end

      # @note When making an API call, pass GetPolicyRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         qualifier: "Qualifier",
      #       }
      class GetPolicyRequest < Aws::Structure.new(
        :function_name,
        :qualifier)

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
        #   limited to 64 character in length.
        #   @return [String]

        # @!attribute [rw] qualifier
        #   You can specify this optional query parameter to specify a function
        #   version or an alias name in which case this API will return all
        #   permissions associated with the specific qualified ARN. If you
        #   don\'t provide this parameter, the API will return permissions that
        #   apply to the unqualified function ARN.
        #   @return [String]

      end

      class GetPolicyResponse < Aws::Structure.new(
        :policy)

        # @!attribute [rw] policy
        #   The resource policy associated with the specified function. The
        #   response returns the same as a string using a backslash (\"\\\") as
        #   an escape character in the JSON.
        #   @return [String]

      end

      # @note When making an API call, pass InvocationRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         invocation_type: "Event", # accepts Event, RequestResponse, DryRun
      #         log_type: "None", # accepts None, Tail
      #         client_context: "String",
      #         payload: "data",
      #         qualifier: "Qualifier",
      #       }
      class InvocationRequest < Aws::Structure.new(
        :function_name,
        :invocation_type,
        :log_type,
        :client_context,
        :payload,
        :qualifier)

        # @!attribute [rw] function_name
        #   The Lambda function name.
        #
        #   You can specify a function name (for example, `Thumbnail`) or you
        #   can specify Amazon Resource Name (ARN) of the function (for example,
        #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
        #   Lambda also allows you to specify a partial ARN (for example,
        #   `account-id:Thumbnail`). Note that the length constraint applies
        #   only to the ARN. If you specify only the function name, it is
        #   limited to 64 character in length.
        #   @return [String]

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

        # @!attribute [rw] log_type
        #   You can set this optional parameter to `Tail` in the request only if
        #   you specify the `InvocationType` parameter with value
        #   `RequestResponse`. In this case, AWS Lambda returns the
        #   base64-encoded last 4 KB of log data produced by your Lambda
        #   function in the `x-amz-log-results` header.
        #   @return [String]

        # @!attribute [rw] client_context
        #   Using the `ClientContext` you can pass client-specific information
        #   to the Lambda function you are invoking. You can then process the
        #   client information in your Lambda function as you choose through the
        #   context variable. For an example of a `ClientContext` JSON, see
        #   [PutEvents][1] in the *Amazon Mobile Analytics API Reference and
        #   User Guide*.
        #
        #   The ClientContext JSON must be base64-encoded.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/mobileanalytics/latest/ug/PutEvents.html
        #   @return [String]

        # @!attribute [rw] payload
        #   JSON that you want to provide to your Lambda function as input.
        #   @return [String]

        # @!attribute [rw] qualifier
        #   You can use this optional parameter to specify a Lambda function
        #   version or alias name. If you specify a function version, the API
        #   uses the qualified function ARN to invoke a specific Lambda
        #   function. If you specify an alias name, the API uses the alias ARN
        #   to invoke the Lambda function version to which the alias points.
        #
        #   If you don\'t provide this parameter, then the API uses unqualified
        #   function ARN which results in invocation of the `$LATEST` version.
        #   @return [String]

      end

      # Upon success, returns an empty response. Otherwise, throws an
      # exception.
      class InvocationResponse < Aws::Structure.new(
        :status_code,
        :function_error,
        :log_result,
        :payload)

        # @!attribute [rw] status_code
        #   The HTTP status code will be in the 200 range for successful
        #   request. For the `RequestResonse` invocation type this status code
        #   will be 200. For the `Event` invocation type this status code will
        #   be 202. For the `DryRun` invocation type the status code will be
        #   204.
        #   @return [Integer]

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

        # @!attribute [rw] log_result
        #   It is the base64-encoded logs for the Lambda function invocation.
        #   This is present only if the invocation type is `RequestResponse` and
        #   the logs were requested.
        #   @return [String]

        # @!attribute [rw] payload
        #   It is the JSON representation of the object returned by the Lambda
        #   function. In This is present only if the invocation type is
        #   `RequestResponse`.
        #
        #   In the event of a function error this field contains a message
        #   describing the error. For the `Handled` errors the Lambda function
        #   will report this message. For `Unhandled` errors AWS Lambda reports
        #   the message.
        #   @return [String]

      end

      # @note When making an API call, pass InvokeAsyncRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         invoke_args: "data", # required
      #       }
      class InvokeAsyncRequest < Aws::Structure.new(
        :function_name,
        :invoke_args)

        # @!attribute [rw] function_name
        #   The Lambda function name.
        #   @return [String]

        # @!attribute [rw] invoke_args
        #   JSON that you want to provide to your Lambda function as input.
        #   @return [IO]

      end

      # Upon success, it returns empty response. Otherwise, throws an
      # exception.
      class InvokeAsyncResponse < Aws::Structure.new(
        :status)

        # @!attribute [rw] status
        #   It will be 202 upon success.
        #   @return [Integer]

      end

      # @note When making an API call, pass ListAliasesRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         function_version: "Version",
      #         marker: "String",
      #         max_items: 1,
      #       }
      class ListAliasesRequest < Aws::Structure.new(
        :function_name,
        :function_version,
        :marker,
        :max_items)

        # @!attribute [rw] function_name
        #   Lambda function name for which the alias is created.
        #   @return [String]

        # @!attribute [rw] function_version
        #   If you specify this optional parameter, the API returns only the
        #   aliases that are pointing to the specific Lambda function version,
        #   otherwise the API returns all of the aliases created for the Lambda
        #   function.
        #   @return [String]

        # @!attribute [rw] marker
        #   Optional string. An opaque pagination token returned from a previous
        #   `ListAliases` operation. If present, indicates where to continue the
        #   listing.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Optional integer. Specifies the maximum number of aliases to return
        #   in response. This parameter value must be greater than 0.
        #   @return [Integer]

      end

      class ListAliasesResponse < Aws::Structure.new(
        :next_marker,
        :aliases)

        # @!attribute [rw] next_marker
        #   A string, present if there are more aliases.
        #   @return [String]

        # @!attribute [rw] aliases
        #   A list of aliases.
        #   @return [Array<Types::AliasConfiguration>]

      end

      # @note When making an API call, pass ListEventSourceMappingsRequest
      #   data as a hash:
      #
      #       {
      #         event_source_arn: "Arn",
      #         function_name: "FunctionName",
      #         marker: "String",
      #         max_items: 1,
      #       }
      class ListEventSourceMappingsRequest < Aws::Structure.new(
        :event_source_arn,
        :function_name,
        :marker,
        :max_items)

        # @!attribute [rw] event_source_arn
        #   The Amazon Resource Name (ARN) of the Amazon Kinesis stream.
        #   @return [String]

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
        #   limited to 64 character in length.
        #   @return [String]

        # @!attribute [rw] marker
        #   Optional string. An opaque pagination token returned from a previous
        #   `ListEventSourceMappings` operation. If present, specifies to
        #   continue the list from where the returning call left off.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Optional integer. Specifies the maximum number of event sources to
        #   return in response. This value must be greater than 0.
        #   @return [Integer]

      end

      # Contains a list of event sources (see
      # API\_EventSourceMappingConfiguration)
      class ListEventSourceMappingsResponse < Aws::Structure.new(
        :next_marker,
        :event_source_mappings)

        # @!attribute [rw] next_marker
        #   A string, present if there are more event source mappings.
        #   @return [String]

        # @!attribute [rw] event_source_mappings
        #   An array of `EventSourceMappingConfiguration` objects.
        #   @return [Array<Types::EventSourceMappingConfiguration>]

      end

      # @note When making an API call, pass ListFunctionsRequest
      #   data as a hash:
      #
      #       {
      #         marker: "String",
      #         max_items: 1,
      #       }
      class ListFunctionsRequest < Aws::Structure.new(
        :marker,
        :max_items)

        # @!attribute [rw] marker
        #   Optional string. An opaque pagination token returned from a previous
        #   `ListFunctions` operation. If present, indicates where to continue
        #   the listing.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Optional integer. Specifies the maximum number of AWS Lambda
        #   functions to return in response. This parameter value must be
        #   greater than 0.
        #   @return [Integer]

      end

      # Contains a list of AWS Lambda function configurations (see
      # FunctionConfiguration.
      class ListFunctionsResponse < Aws::Structure.new(
        :next_marker,
        :functions)

        # @!attribute [rw] next_marker
        #   A string, present if there are more functions.
        #   @return [String]

        # @!attribute [rw] functions
        #   A list of Lambda functions.
        #   @return [Array<Types::FunctionConfiguration>]

      end

      # @note When making an API call, pass ListVersionsByFunctionRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         marker: "String",
      #         max_items: 1,
      #       }
      class ListVersionsByFunctionRequest < Aws::Structure.new(
        :function_name,
        :marker,
        :max_items)

        # @!attribute [rw] function_name
        #   Function name whose versions to list. You can specify a function
        #   name (for example, `Thumbnail`) or you can specify Amazon Resource
        #   Name (ARN) of the function (for example,
        #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
        #   Lambda also allows you to specify a partial ARN (for example,
        #   `account-id:Thumbnail`). Note that the length constraint applies
        #   only to the ARN. If you specify only the function name, it is
        #   limited to 64 character in length.
        #   @return [String]

        # @!attribute [rw] marker
        #   Optional string. An opaque pagination token returned from a previous
        #   `ListVersionsByFunction` operation. If present, indicates where to
        #   continue the listing.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Optional integer. Specifies the maximum number of AWS Lambda
        #   function versions to return in response. This parameter value must
        #   be greater than 0.
        #   @return [Integer]

      end

      class ListVersionsByFunctionResponse < Aws::Structure.new(
        :next_marker,
        :versions)

        # @!attribute [rw] next_marker
        #   A string, present if there are more function versions.
        #   @return [String]

        # @!attribute [rw] versions
        #   A list of Lambda function versions.
        #   @return [Array<Types::FunctionConfiguration>]

      end

      # @note When making an API call, pass PublishVersionRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         code_sha_256: "String",
      #         description: "Description",
      #       }
      class PublishVersionRequest < Aws::Structure.new(
        :function_name,
        :code_sha_256,
        :description)

        # @!attribute [rw] function_name
        #   The Lambda function name. You can specify a function name (for
        #   example, `Thumbnail`) or you can specify Amazon Resource Name (ARN)
        #   of the function (for example,
        #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
        #   Lambda also allows you to specify a partial ARN (for example,
        #   `account-id:Thumbnail`). Note that the length constraint applies
        #   only to the ARN. If you specify only the function name, it is
        #   limited to 64 character in length.
        #   @return [String]

        # @!attribute [rw] code_sha_256
        #   The SHA256 hash of the deployment package you want to publish. This
        #   provides validation on the code you are publishing. If you provide
        #   this parameter value must match the SHA256 of the $LATEST version
        #   for the publication to succeed.
        #   @return [String]

        # @!attribute [rw] description
        #   The description for the version you are publishing. If not provided,
        #   AWS Lambda copies the description from the $LATEST version.
        #   @return [String]

      end

      # @note When making an API call, pass RemovePermissionRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         statement_id: "StatementId", # required
      #         qualifier: "Qualifier",
      #       }
      class RemovePermissionRequest < Aws::Structure.new(
        :function_name,
        :statement_id,
        :qualifier)

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
        #   limited to 64 character in length.
        #   @return [String]

        # @!attribute [rw] statement_id
        #   Statement ID of the permission to remove.
        #   @return [String]

        # @!attribute [rw] qualifier
        #   You can specify this optional parameter to remove permission
        #   associated with a specific function version or function alias. If
        #   you don\'t specify this parameter, the API removes permission
        #   associated with the unqualified function ARN.
        #   @return [String]

      end

      # @note When making an API call, pass UpdateAliasRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         name: "Alias", # required
      #         function_version: "Version",
      #         description: "Description",
      #       }
      class UpdateAliasRequest < Aws::Structure.new(
        :function_name,
        :name,
        :function_version,
        :description)

        # @!attribute [rw] function_name
        #   The function name for which the alias is created.
        #   @return [String]

        # @!attribute [rw] name
        #   The alias name.
        #   @return [String]

        # @!attribute [rw] function_version
        #   Using this parameter you can change the Lambda function version to
        #   which the alias points.
        #   @return [String]

        # @!attribute [rw] description
        #   You can change the description of the alias using this parameter.
        #   @return [String]

      end

      # @note When making an API call, pass UpdateEventSourceMappingRequest
      #   data as a hash:
      #
      #       {
      #         uuid: "String", # required
      #         function_name: "FunctionName",
      #         enabled: false,
      #         batch_size: 1,
      #       }
      class UpdateEventSourceMappingRequest < Aws::Structure.new(
        :uuid,
        :function_name,
        :enabled,
        :batch_size)

        # @!attribute [rw] uuid
        #   The event source mapping identifier.
        #   @return [String]

        # @!attribute [rw] function_name
        #   The Lambda function to which you want the stream records sent.
        #
        #   You can specify a function name (for example, `Thumbnail`) or you
        #   can specify Amazon Resource Name (ARN) of the function (for example,
        #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
        #   Lambda also allows you to specify a partial ARN (for example,
        #   `account-id:Thumbnail`).
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

        # @!attribute [rw] enabled
        #   Specifies whether AWS Lambda should actively poll the stream or not.
        #   If disabled, AWS Lambda will not poll the stream.
        #   @return [Boolean]

        # @!attribute [rw] batch_size
        #   The maximum number of stream records that can be sent to your Lambda
        #   function for a single invocation.
        #   @return [Integer]

      end

      # @note When making an API call, pass UpdateFunctionCodeRequest
      #   data as a hash:
      #
      #       {
      #         function_name: "FunctionName", # required
      #         zip_file: "data",
      #         s3_bucket: "S3Bucket",
      #         s3_key: "S3Key",
      #         s3_object_version: "S3ObjectVersion",
      #         publish: false,
      #       }
      class UpdateFunctionCodeRequest < Aws::Structure.new(
        :function_name,
        :zip_file,
        :s3_bucket,
        :s3_key,
        :s3_object_version,
        :publish)

        # @!attribute [rw] function_name
        #   The existing Lambda function name whose code you want to replace.
        #
        #   You can specify a function name (for example, `Thumbnail`) or you
        #   can specify Amazon Resource Name (ARN) of the function (for example,
        #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS
        #   Lambda also allows you to specify a partial ARN (for example,
        #   `account-id:Thumbnail`). Note that the length constraint applies
        #   only to the ARN. If you specify only the function name, it is
        #   limited to 64 character in length.
        #   @return [String]

        # @!attribute [rw] zip_file
        #   Based64-encoded .zip file containing your packaged source code.
        #   @return [String]

        # @!attribute [rw] s3_bucket
        #   Amazon S3 bucket name where the .zip file containing your deployment
        #   package is stored. This bucket must reside in the same AWS region
        #   where you are creating the Lambda function.
        #   @return [String]

        # @!attribute [rw] s3_key
        #   The Amazon S3 object (the deployment package) key name you want to
        #   upload.
        #   @return [String]

        # @!attribute [rw] s3_object_version
        #   The Amazon S3 object (the deployment package) version you want to
        #   upload.
        #   @return [String]

        # @!attribute [rw] publish
        #   This boolean parameter can be used to request AWS Lambda to update
        #   the Lambda function and publish a version as an atomic operation.
        #   @return [Boolean]

      end

      # @note When making an API call, pass UpdateFunctionConfigurationRequest
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
      #         runtime: "nodejs", # accepts nodejs, nodejs4.3, java8, python2.7
      #       }
      class UpdateFunctionConfigurationRequest < Aws::Structure.new(
        :function_name,
        :role,
        :handler,
        :description,
        :timeout,
        :memory_size,
        :vpc_config,
        :runtime)

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

        # @!attribute [rw] role
        #   The Amazon Resource Name (ARN) of the IAM role that Lambda will
        #   assume when it executes your function.
        #   @return [String]

        # @!attribute [rw] handler
        #   The function that Lambda calls to begin executing your function. For
        #   Node.js, it is the `module-name.export` value in your function.
        #   @return [String]

        # @!attribute [rw] description
        #   A short user-defined function description. AWS Lambda does not use
        #   this value. Assign a meaningful description as you see fit.
        #   @return [String]

        # @!attribute [rw] timeout
        #   The function execution time at which AWS Lambda should terminate the
        #   function. Because the execution time has cost implications, we
        #   recommend you set this value based on your expected execution time.
        #   The default is 3 seconds.
        #   @return [Integer]

        # @!attribute [rw] memory_size
        #   The amount of memory, in MB, your Lambda function is given. AWS
        #   Lambda uses this memory size to infer the amount of CPU allocated to
        #   your function. Your function use-case determines your CPU and memory
        #   requirements. For example, a database operation might need less
        #   memory compared to an image processing function. The default value
        #   is 128 MB. The value must be a multiple of 64 MB.
        #   @return [Integer]

        # @!attribute [rw] vpc_config
        #   If your Lambda function accesses resources in a VPC, you provide
        #   this parameter identifying the list of security group IDs and subnet
        #   IDs. These must belong to the same VPC. You must provide at least
        #   one security group and one subnet ID.
        #   @return [Types::VpcConfig]

        # @!attribute [rw] runtime
        #   @return [String]

      end

      # If your Lambda function accesses resources in a VPC, you provide this
      # parameter identifying the list of security group IDs and subnet IDs.
      # These must belong to the same VPC. You must provide at least one
      # security group and one subnet ID.
      # @note When making an API call, pass VpcConfig
      #   data as a hash:
      #
      #       {
      #         subnet_ids: ["SubnetId"],
      #         security_group_ids: ["SecurityGroupId"],
      #       }
      class VpcConfig < Aws::Structure.new(
        :subnet_ids,
        :security_group_ids)

        # @!attribute [rw] subnet_ids
        #   A list of one or more subnet IDs in your VPC.
        #   @return [Array<String>]

        # @!attribute [rw] security_group_ids
        #   A list of one or more security groups IDs in your VPC.
        #   @return [Array<String>]

      end

      # VPC configuration associated with your Lambda function.
      class VpcConfigResponse < Aws::Structure.new(
        :subnet_ids,
        :security_group_ids,
        :vpc_id)

        # @!attribute [rw] subnet_ids
        #   A list of subnet IDs associated with the Lambda function.
        #   @return [Array<String>]

        # @!attribute [rw] security_group_ids
        #   A list of security group IDs associated with the Lambda function.
        #   @return [Array<String>]

        # @!attribute [rw] vpc_id
        #   The VPC ID associated with you Lambda function.
        #   @return [String]

      end

    end
  end
end
