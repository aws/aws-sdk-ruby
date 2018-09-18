# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lambda)

module Aws::Lambda
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :lambda

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds a permission to the resource policy associated with the specified
    # AWS Lambda function. You use resource policies to grant permissions to
    # event sources that use *push* model. In a *push* model, event sources
    # (such as Amazon S3 and custom applications) invoke your Lambda
    # function. Each permission you add to the resource policy allows an
    # event source, permission to invoke the Lambda function.
    #
    # For information about the push model, see [Lambda Functions][1].
    #
    # If you are using versioning, the permissions you add are specific to
    # the Lambda function version or alias you specify in the
    # `AddPermission` request via the `Qualifier` parameter. For more
    # information about versioning, see [AWS Lambda Function Versioning and
    # Aliases][2].
    #
    # This operation requires permission for the `lambda:AddPermission`
    # action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html
    # [2]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   Name of the Lambda function whose resource policy you are updating by
    #   adding a new permission.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you can
    #   specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [required, String] :statement_id
    #   A unique statement identifier.
    #
    # @option params [required, String] :action
    #   The AWS Lambda action you want to allow in this statement. Each Lambda
    #   action is a string starting with `lambda:` followed by the API name .
    #   For example, `lambda:CreateFunction`. You can use wildcard
    #   (`lambda:*`) to grant permission for all AWS Lambda actions.
    #
    # @option params [required, String] :principal
    #   The principal who is getting this permission. It can be Amazon S3
    #   service Principal (`s3.amazonaws.com`) if you want Amazon S3 to invoke
    #   the function, an AWS account ID if you are granting cross-account
    #   permission, or any valid AWS service principal such as
    #   `sns.amazonaws.com`. For example, you might want to allow a custom
    #   application in another AWS account to push events to AWS Lambda by
    #   invoking your function.
    #
    # @option params [String] :source_arn
    #   This is optional; however, when granting permission to invoke your
    #   function, you should specify this field with the Amazon Resource Name
    #   (ARN) as its value. This ensures that only events generated from the
    #   specified source can invoke the function.
    #
    #   If you add a permission without providing the source ARN, any AWS
    #   account that creates a mapping to your function ARN can send events to
    #   invoke your Lambda function.
    #
    # @option params [String] :source_account
    #   This parameter is used for S3 and SES. The AWS account ID (without a
    #   hyphen) of the source owner. For example, if the `SourceArn`
    #   identifies a bucket, then this is the bucket owner's account ID. You
    #   can use this additional condition to ensure the bucket you specify is
    #   owned by a specific account (it is possible the bucket owner deleted
    #   the bucket and some other AWS account created the bucket). You can
    #   also use this condition to specify all sources (that is, you don't
    #   specify the `SourceArn`) owned by a specific account.
    #
    # @option params [String] :event_source_token
    #   A unique token that must be supplied by the principal invoking the
    #   function. This is currently only used for Alexa Smart Home functions.
    #
    # @option params [String] :qualifier
    #   You can use this optional query parameter to describe a qualified ARN
    #   using a function version or an alias name. The permission will then
    #   apply to the specific qualified ARN. For example, if you specify
    #   function version 2 as the qualifier, then permission applies only when
    #   request is made using qualified function ARN:
    #
    #   `arn:aws:lambda:aws-region:acct-id:function:function-name:2`
    #
    #   If you specify an alias name, for example `PROD`, then the permission
    #   is valid only for requests made using the alias ARN:
    #
    #   `arn:aws:lambda:aws-region:acct-id:function:function-name:PROD`
    #
    #   If the qualifier is not specified, the permission is valid only when
    #   requests is made using unqualified function ARN.
    #
    #   `arn:aws:lambda:aws-region:acct-id:function:function-name`
    #
    # @option params [String] :revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you pass
    #   doesn't match the latest `RevisionId` of the function or alias, it
    #   will fail with an error message, advising you to retrieve the latest
    #   function version or alias `RevisionID` using either or .
    #
    # @return [Types::AddPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddPermissionResponse#statement #statement} => String
    #
    #
    # @example Example: add-permission
    #
    #   # This example adds a permission for an S3 bucket to invoke a Lambda function.
    #
    #   resp = client.add_permission({
    #     action: "lambda:InvokeFunction", 
    #     function_name: "MyFunction", 
    #     principal: "s3.amazonaws.com", 
    #     source_account: "123456789012", 
    #     source_arn: "arn:aws:s3:::examplebucket/*", 
    #     statement_id: "ID-1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     statement: "ID-1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_permission({
    #     function_name: "FunctionName", # required
    #     statement_id: "StatementId", # required
    #     action: "Action", # required
    #     principal: "Principal", # required
    #     source_arn: "Arn",
    #     source_account: "SourceOwner",
    #     event_source_token: "EventSourceToken",
    #     qualifier: "Qualifier",
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.statement #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddPermission AWS API Documentation
    #
    # @overload add_permission(params = {})
    # @param [Hash] params ({})
    def add_permission(params = {}, options = {})
      req = build_request(:add_permission, params)
      req.send_request(options)
    end

    # Creates an alias that points to the specified Lambda function version.
    # For more information, see [Introduction to AWS Lambda Aliases][1].
    #
    # Alias names are unique for a given function. This requires permission
    # for the lambda:CreateAlias action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
    #
    # @option params [required, String] :function_name
    #   Name of the Lambda function for which you want to create an alias.
    #   Note that the length constraint applies only to the ARN. If you
    #   specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [required, String] :name
    #   Name for the alias you are creating.
    #
    # @option params [required, String] :function_version
    #   Lambda function version for which you are creating the alias.
    #
    # @option params [String] :description
    #   Description of the alias.
    #
    # @option params [Types::AliasRoutingConfiguration] :routing_config
    #   Specifies an additional version your alias can point to, allowing you
    #   to dictate what percentage of traffic will invoke each version. For
    #   more information, see lambda-traffic-shifting-using-aliases.
    #
    # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AliasConfiguration#alias_arn #alias_arn} => String
    #   * {Types::AliasConfiguration#name #name} => String
    #   * {Types::AliasConfiguration#function_version #function_version} => String
    #   * {Types::AliasConfiguration#description #description} => String
    #   * {Types::AliasConfiguration#routing_config #routing_config} => Types::AliasRoutingConfiguration
    #   * {Types::AliasConfiguration#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "Version", # required
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_arn #=> String
    #   resp.name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config.additional_version_weights #=> Hash
    #   resp.routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Identifies a poll-based event source for a Lambda function. It can be
    # either an Amazon Kinesis or DynamoDB stream, or an Amazon SQS queue.
    # AWS Lambda invokes the specified function when records are posted to
    # the event source.
    #
    # This association between a poll-based source and a Lambda function is
    # called the event source mapping.
    #
    # You provide mapping information (for example, which stream or SQS
    # queue to read from and which Lambda function to invoke) in the request
    # body.
    #
    # Amazon Kinesis or DynamoDB stream event sources can be associated with
    # multiple AWS Lambda functions and a given Lambda function can be
    # associated with multiple AWS event sources. For Amazon SQS, you can
    # configure multiple queues as event sources for a single Lambda
    # function, but an SQS queue can be mapped only to a single Lambda
    # function.
    #
    # If you are using versioning, you can specify a specific function
    # version or an alias via the function name parameter. For more
    # information about versioning, see [AWS Lambda Function Versioning and
    # Aliases][1].
    #
    # This operation requires permission for the
    # `lambda:CreateEventSourceMapping` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :event_source_arn
    #   The Amazon Resource Name (ARN) of the event source. Any record added
    #   to this source could cause AWS Lambda to invoke your Lambda function,
    #   it depends on the `BatchSize`. AWS Lambda POSTs the event's records
    #   to your Lambda function as JSON.
    #
    # @option params [required, String] :function_name
    #   The Lambda function to invoke when AWS Lambda detects an event on the
    #   stream.
    #
    #   You can specify the function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`).
    #
    #   If you are using versioning, you can also provide a qualified function
    #   ARN (ARN that is qualified with function version or alias name as
    #   suffix). For more information about versioning, see [AWS Lambda
    #   Function Versioning and Aliases][1]
    #
    #   AWS Lambda also allows you to specify only the function name with the
    #   account ID qualifier (for example, `account-id:Thumbnail`).
    #
    #   Note that the length constraint applies only to the ARN. If you
    #   specify only the function name, it is limited to 64 characters in
    #   length.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [Boolean] :enabled
    #   Indicates whether AWS Lambda should begin polling the event source. By
    #   default, `Enabled` is true.
    #
    # @option params [Integer] :batch_size
    #   The largest number of records that AWS Lambda will retrieve from your
    #   event source at the time of invoking your function. Your function
    #   receives an event with all the retrieved records. The default for
    #   Amazon Kinesis and Amazon DynamoDB is 100 records. For SQS, the
    #   default is 1.
    #
    # @option params [String] :starting_position
    #   The position in the DynamoDB or Kinesis stream where AWS Lambda should
    #   start reading. For more information, see [GetShardIterator][1] in the
    #   *Amazon Kinesis API Reference Guide* or [GetShardIterator][2] in the
    #   *Amazon DynamoDB API Reference Guide*. The `AT_TIMESTAMP` value is
    #   supported only for [Kinesis streams][3].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html
    #   [3]: http://docs.aws.amazon.com/streams/latest/dev/amazon-kinesis-streams.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :starting_position_timestamp
    #   The timestamp of the data record from which to start reading. Used
    #   with [shard iterator type][1] AT\_TIMESTAMP. If a record with this
    #   exact timestamp does not exist, the iterator returned is for the next
    #   (later) record. If the timestamp is older than the current trim
    #   horizon, the iterator returned is for the oldest untrimmed data record
    #   (TRIM\_HORIZON). Valid only for [Kinesis streams][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType
    #   [2]: http://docs.aws.amazon.com/streams/latest/dev/amazon-kinesis-streams.html
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_source_mapping({
    #     event_source_arn: "Arn", # required
    #     function_name: "FunctionName", # required
    #     enabled: false,
    #     batch_size: 1,
    #     starting_position: "TRIM_HORIZON", # accepts TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #     starting_position_timestamp: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateEventSourceMapping AWS API Documentation
    #
    # @overload create_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def create_event_source_mapping(params = {}, options = {})
      req = build_request(:create_event_source_mapping, params)
      req.send_request(options)
    end

    # Creates a new Lambda function. The function metadata is created from
    # the request parameters, and the code for the function is provided by a
    # .zip file in the request body. If the function name already exists,
    # the operation will fail. Note that the function name is
    # case-sensitive.
    #
    # If you are using versioning, you can also publish a version of the
    # Lambda function you are creating using the `Publish` parameter. For
    # more information about versioning, see [AWS Lambda Function Versioning
    # and Aliases][1].
    #
    # This operation requires permission for the `lambda:CreateFunction`
    # action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name you want to assign to the function you are uploading. The
    #   function names appear in the console and are returned in the
    #   ListFunctions API. Function names are used to specify functions to
    #   other AWS Lambda API operations, such as Invoke. Note that the length
    #   constraint applies only to the ARN. If you specify only the function
    #   name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :runtime
    #   The runtime environment for the Lambda function you are uploading.
    #
    #   To use the Python runtime v3.6, set the value to "python3.6". To use
    #   the Python runtime v2.7, set the value to "python2.7". To use the
    #   Node.js runtime v6.10, set the value to "nodejs6.10". To use the
    #   Node.js runtime v4.3, set the value to "nodejs4.3". To use the .NET
    #   Core runtime v1.0, set the value to "dotnetcore1.0". To use the .NET
    #   Core runtime v2.0, set the value to "dotnetcore2.0".
    #
    #   <note markdown="1"> Node v0.10.42 is currently marked as deprecated. You must migrate
    #   existing functions to the newer Node.js runtime versions available on
    #   AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. Failure to
    #   do so will result in an invalid parameter error being returned. Note
    #   that you will have to follow this procedure for each region that
    #   contains functions written in the Node v0.10.42 runtime.
    #
    #    </note>
    #
    # @option params [required, String] :role
    #   The Amazon Resource Name (ARN) of the IAM role that Lambda assumes
    #   when it executes your function to access any other Amazon Web Services
    #   (AWS) resources. For more information, see [AWS Lambda: How it
    #   Works][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html
    #
    # @option params [required, String] :handler
    #   The function within your code that Lambda calls to begin execution.
    #   For Node.js, it is the *module-name*.*export* value in your function.
    #   For Java, it can be `package.class-name::handler` or
    #   `package.class-name`. For more information, see [Lambda Function
    #   Handler (Java)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/java-programming-model-handler-types.html
    #
    # @option params [required, Types::FunctionCode] :code
    #   The code for the Lambda function.
    #
    # @option params [String] :description
    #   A short, user-defined function description. Lambda does not use this
    #   value. Assign a meaningful description as you see fit.
    #
    # @option params [Integer] :timeout
    #   The function execution time at which Lambda should terminate the
    #   function. Because the execution time has cost implications, we
    #   recommend you set this value based on your expected execution time.
    #   The default is 3 seconds.
    #
    # @option params [Integer] :memory_size
    #   The amount of memory, in MB, your Lambda function is given. Lambda
    #   uses this memory size to infer the amount of CPU and memory allocated
    #   to your function. Your function use-case determines your CPU and
    #   memory requirements. For example, a database operation might need less
    #   memory compared to an image processing function. The default value is
    #   128 MB. The value must be a multiple of 64 MB.
    #
    # @option params [Boolean] :publish
    #   This boolean parameter can be used to request AWS Lambda to create the
    #   Lambda function and publish a version as an atomic operation.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   If your Lambda function accesses resources in a VPC, you provide this
    #   parameter identifying the list of security group IDs and subnet IDs.
    #   These must belong to the same VPC. You must provide at least one
    #   security group and one subnet ID.
    #
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   The parent object that contains the target ARN (Amazon Resource Name)
    #   of an Amazon SQS queue or Amazon SNS topic. For more information, see
    #   dlq.
    #
    # @option params [Types::Environment] :environment
    #   The parent object that contains your environment's configuration
    #   settings.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt your
    #   function's environment variables. If not provided, AWS Lambda will
    #   use a default service key.
    #
    # @option params [Types::TracingConfig] :tracing_config
    #   The parent object that contains your function's tracing settings.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of tags (key-value pairs) assigned to the new function. For
    #   more information, see [Tagging Lambda Functions][1] in the **AWS
    #   Lambda Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #
    #
    # @example Example: create-function
    #
    #   # This example creates a Lambda function.
    #
    #   resp = client.create_function({
    #     code: {
    #     }, 
    #     description: "", 
    #     function_name: "MyFunction", 
    #     handler: "souce_file.handler_name", # is of the form of the name of your source file and then name of your function handler
    #     memory_size: 128, 
    #     publish: true, 
    #     role: "arn:aws:iam::123456789012:role/service-role/role-name", # replace with the actual arn of the execution role you created
    #     runtime: "nodejs4.3", 
    #     timeout: 15, 
    #     vpc_config: {
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "", 
    #     code_size: 123, 
    #     description: "", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:MyFunction", 
    #     function_name: "MyFunction", 
    #     handler: "source_file.handler_name", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/service-role/role-name", 
    #     runtime: "nodejs4.3", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function({
    #     function_name: "FunctionName", # required
    #     runtime: "nodejs", # required, accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, java8, python2.7, python3.6, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x
    #     role: "RoleArn", # required
    #     handler: "Handler", # required
    #     code: { # required
    #       zip_file: "data",
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #     },
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     publish: false,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn",
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue",
    #       },
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active", # accepts Active, PassThrough
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateFunction AWS API Documentation
    #
    # @overload create_function(params = {})
    # @param [Hash] params ({})
    def create_function(params = {}, options = {})
      req = build_request(:create_function, params)
      req.send_request(options)
    end

    # Deletes the specified Lambda function alias. For more information, see
    # [Introduction to AWS Lambda Aliases][1].
    #
    # This requires permission for the lambda:DeleteAlias action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
    #
    # @option params [required, String] :function_name
    #   The Lambda function name for which the alias is created. Deleting an
    #   alias does not delete the function version to which it is pointing.
    #   Note that the length constraint applies only to the ARN. If you
    #   specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [required, String] :name
    #   Name of the alias to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a Lambda function alias
    #
    #   # This operation deletes a Lambda function alias
    #
    #   resp = client.delete_alias({
    #     function_name: "myFunction", 
    #     name: "alias", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Removes an event source mapping. This means AWS Lambda will no longer
    # invoke the function for events in the associated source.
    #
    # This operation requires permission for the
    # `lambda:DeleteEventSourceMapping` action.
    #
    # @option params [required, String] :uuid
    #   The event source mapping ID.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #
    #
    # @example Example: To delete a Lambda function event source mapping
    #
    #   # This operation deletes a Lambda function event source mapping
    #
    #   resp = client.delete_event_source_mapping({
    #     uuid: "12345kxodurf3443", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     batch_size: 123, 
    #     event_source_arn: "arn:aws:s3:::examplebucket/*", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     last_processing_result: "", 
    #     state: "", 
    #     state_transition_reason: "", 
    #     uuid: "12345kxodurf3443", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_source_mapping({
    #     uuid: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteEventSourceMapping AWS API Documentation
    #
    # @overload delete_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def delete_event_source_mapping(params = {}, options = {})
      req = build_request(:delete_event_source_mapping, params)
      req.send_request(options)
    end

    # Deletes the specified Lambda function code and configuration.
    #
    # If you are using the versioning feature and you don't specify a
    # function version in your `DeleteFunction` request, AWS Lambda will
    # delete the function, including all its versions, and any aliases
    # pointing to the function versions. To delete a specific function
    # version, you must provide the function version via the `Qualifier`
    # parameter. For information about function versioning, see [AWS Lambda
    # Function Versioning and Aliases][1].
    #
    # When you delete a function the associated resource policy is also
    # deleted. You will need to delete the event source mappings explicitly.
    #
    # This operation requires permission for the `lambda:DeleteFunction`
    # action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The Lambda function to delete.
    #
    #   You can specify the function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you are
    #   using versioning, you can also provide a qualified function ARN (ARN
    #   that is qualified with function version or alias name as suffix). AWS
    #   Lambda also allows you to specify only the function name with the
    #   account ID qualifier (for example, `account-id:Thumbnail`). Note that
    #   the length constraint applies only to the ARN. If you specify only the
    #   function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Using this optional parameter you can specify a function version (but
    #   not the `$LATEST` version) to direct AWS Lambda to delete a specific
    #   function version. If the function version has one or more aliases
    #   pointing to it, you will get an error because you cannot have aliases
    #   pointing to it. You can delete any function version but not the
    #   `$LATEST`, that is, you cannot specify `$LATEST` as the value of this
    #   parameter. The `$LATEST` version can be deleted only when you want to
    #   delete all the function versions and aliases.
    #
    #   You can only specify a function version, not an alias name, using this
    #   parameter. You cannot delete a function version using its alias.
    #
    #   If you don't specify this parameter, AWS Lambda will delete the
    #   function, including all of its versions and aliases.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a Lambda function
    #
    #   # This operation deletes a Lambda function
    #
    #   resp = client.delete_function({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunction AWS API Documentation
    #
    # @overload delete_function(params = {})
    # @param [Hash] params ({})
    def delete_function(params = {}, options = {})
      req = build_request(:delete_function, params)
      req.send_request(options)
    end

    # Removes concurrent execution limits from this function. For more
    # information, see concurrent-executions.
    #
    # @option params [required, String] :function_name
    #   The name of the function you are removing concurrent execution limits
    #   from. For more information, see concurrent-executions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_concurrency({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionConcurrency AWS API Documentation
    #
    # @overload delete_function_concurrency(params = {})
    # @param [Hash] params ({})
    def delete_function_concurrency(params = {}, options = {})
      req = build_request(:delete_function_concurrency, params)
      req.send_request(options)
    end

    # Returns a customer's account settings.
    #
    # You can use this operation to retrieve Lambda limits information, such
    # as code size and concurrency limits. For more information about
    # limits, see [AWS Lambda Limits][1]. You can also retrieve resource
    # usage statistics, such as code storage usage and function count.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/limits.html
    #
    # @return [Types::GetAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResponse#account_limit #account_limit} => Types::AccountLimit
    #   * {Types::GetAccountSettingsResponse#account_usage #account_usage} => Types::AccountUsage
    #
    #
    # @example Example: To retrieves a Lambda customer's account settings
    #
    #   # This operation retrieves a Lambda customer's account settings
    #
    #   resp = client.get_account_settings({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_limit: {
    #     }, 
    #     account_usage: {
    #     }, 
    #   }
    #
    # @example Response structure
    #
    #   resp.account_limit.total_code_size #=> Integer
    #   resp.account_limit.code_size_unzipped #=> Integer
    #   resp.account_limit.code_size_zipped #=> Integer
    #   resp.account_limit.concurrent_executions #=> Integer
    #   resp.account_limit.unreserved_concurrent_executions #=> Integer
    #   resp.account_usage.total_code_size #=> Integer
    #   resp.account_usage.function_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Returns the specified alias information such as the alias ARN,
    # description, and function version it is pointing to. For more
    # information, see [Introduction to AWS Lambda Aliases][1].
    #
    # This requires permission for the `lambda:GetAlias` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
    #
    # @option params [required, String] :function_name
    #   Function name for which the alias is created. An alias is a
    #   subresource that exists only in the context of an existing Lambda
    #   function so you must specify the function name. Note that the length
    #   constraint applies only to the ARN. If you specify only the function
    #   name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   Name of the alias for which you want to retrieve information.
    #
    # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AliasConfiguration#alias_arn #alias_arn} => String
    #   * {Types::AliasConfiguration#name #name} => String
    #   * {Types::AliasConfiguration#function_version #function_version} => String
    #   * {Types::AliasConfiguration#description #description} => String
    #   * {Types::AliasConfiguration#routing_config #routing_config} => Types::AliasRoutingConfiguration
    #   * {Types::AliasConfiguration#revision_id #revision_id} => String
    #
    #
    # @example Example: To retrieve a Lambda function alias
    #
    #   # This operation retrieves a Lambda function alias
    #
    #   resp = client.get_alias({
    #     function_name: "myFunction", 
    #     name: "myFunctionAlias", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunctionAlias", 
    #     description: "", 
    #     function_version: "1", 
    #     name: "myFunctionAlias", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_arn #=> String
    #   resp.name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config.additional_version_weights #=> Hash
    #   resp.routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAlias AWS API Documentation
    #
    # @overload get_alias(params = {})
    # @param [Hash] params ({})
    def get_alias(params = {}, options = {})
      req = build_request(:get_alias, params)
      req.send_request(options)
    end

    # Returns configuration information for the specified event source
    # mapping (see CreateEventSourceMapping).
    #
    # This operation requires permission for the
    # `lambda:GetEventSourceMapping` action.
    #
    # @option params [required, String] :uuid
    #   The AWS Lambda assigned ID of the event source mapping.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #
    #
    # @example Example: To retrieve a Lambda function's event source mapping
    #
    #   # This operation retrieves a Lambda function's event source mapping
    #
    #   resp = client.get_event_source_mapping({
    #     uuid: "123489-xxxxx-kdla8d89d7", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     batch_size: 123, 
    #     event_source_arn: "arn:aws:iam::123456789012:eventsource", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     last_processing_result: "", 
    #     state: "", 
    #     state_transition_reason: "", 
    #     uuid: "123489-xxxxx-kdla8d89d7", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_source_mapping({
    #     uuid: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetEventSourceMapping AWS API Documentation
    #
    # @overload get_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def get_event_source_mapping(params = {}, options = {})
      req = build_request(:get_event_source_mapping, params)
      req.send_request(options)
    end

    # Returns the configuration information of the Lambda function and a
    # presigned URL link to the .zip file you uploaded with CreateFunction
    # so you can download the .zip file. Note that the URL is valid for up
    # to 10 minutes. The configuration information is the same information
    # you provided as parameters when uploading the function.
    #
    # Using the optional `Qualifier` parameter, you can specify a specific
    # function version for which you want this information. If you don't
    # specify this parameter, the API uses unqualified function ARN which
    # return information about the `$LATEST` version of the Lambda function.
    # For more information, see [AWS Lambda Function Versioning and
    # Aliases][1].
    #
    # This operation requires permission for the `lambda:GetFunction`
    # action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The Lambda function name.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you can
    #   specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [String] :qualifier
    #   Use this optional parameter to specify a function version or an alias
    #   name. If you specify function version, the API uses qualified function
    #   ARN for the request and returns information about the specific Lambda
    #   function version. If you specify an alias name, the API uses the alias
    #   ARN and returns information about the function version to which the
    #   alias points. If you don't provide this parameter, the API uses
    #   unqualified function ARN and returns information about the `$LATEST`
    #   version of the Lambda function.
    #
    # @return [Types::GetFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionResponse#configuration #configuration} => Types::FunctionConfiguration
    #   * {Types::GetFunctionResponse#code #code} => Types::FunctionCodeLocation
    #   * {Types::GetFunctionResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetFunctionResponse#concurrency #concurrency} => Types::Concurrency
    #
    #
    # @example Example: To retrieve a Lambda function's event source mapping
    #
    #   # This operation retrieves a Lambda function's event source mapping
    #
    #   resp = client.get_function({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code: {
    #       location: "somelocation", 
    #       repository_type: "S3", 
    #     }, 
    #     configuration: {
    #       code_sha_256: "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=", 
    #       code_size: 262, 
    #       description: "A starter AWS Lambda function.", 
    #       environment: {
    #         variables: {
    #           "S3_BUCKET" => "test", 
    #         }, 
    #       }, 
    #       function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #       function_name: "myFunction", 
    #       handler: "index.handler", 
    #       last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #       memory_size: 128, 
    #       role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #       runtime: "nodejs4.3", 
    #       timeout: 3, 
    #       version: "$LATEST", 
    #       vpc_config: {
    #         security_group_ids: [
    #         ], 
    #         subnet_ids: [
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.function_name #=> String
    #   resp.configuration.function_arn #=> String
    #   resp.configuration.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x"
    #   resp.configuration.role #=> String
    #   resp.configuration.handler #=> String
    #   resp.configuration.code_size #=> Integer
    #   resp.configuration.description #=> String
    #   resp.configuration.timeout #=> Integer
    #   resp.configuration.memory_size #=> Integer
    #   resp.configuration.last_modified #=> Time
    #   resp.configuration.code_sha_256 #=> String
    #   resp.configuration.version #=> String
    #   resp.configuration.vpc_config.subnet_ids #=> Array
    #   resp.configuration.vpc_config.subnet_ids[0] #=> String
    #   resp.configuration.vpc_config.security_group_ids #=> Array
    #   resp.configuration.vpc_config.security_group_ids[0] #=> String
    #   resp.configuration.vpc_config.vpc_id #=> String
    #   resp.configuration.dead_letter_config.target_arn #=> String
    #   resp.configuration.environment.variables #=> Hash
    #   resp.configuration.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.configuration.environment.error.error_code #=> String
    #   resp.configuration.environment.error.message #=> String
    #   resp.configuration.kms_key_arn #=> String
    #   resp.configuration.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.configuration.master_arn #=> String
    #   resp.configuration.revision_id #=> String
    #   resp.code.repository_type #=> String
    #   resp.code.location #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.concurrency.reserved_concurrent_executions #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunction AWS API Documentation
    #
    # @overload get_function(params = {})
    # @param [Hash] params ({})
    def get_function(params = {}, options = {})
      req = build_request(:get_function, params)
      req.send_request(options)
    end

    # Returns the configuration information of the Lambda function. This the
    # same information you provided as parameters when uploading the
    # function by using CreateFunction.
    #
    # If you are using the versioning feature, you can retrieve this
    # information for a specific function version by using the optional
    # `Qualifier` parameter and specifying the function version or alias
    # that points to it. If you don't provide it, the API returns
    # information about the $LATEST version of the function. For more
    # information about versioning, see [AWS Lambda Function Versioning and
    # Aliases][1].
    #
    # This operation requires permission for the
    # `lambda:GetFunctionConfiguration` operation.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function for which you want to retrieve the
    #   configuration information.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you can
    #   specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [String] :qualifier
    #   Using this optional parameter you can specify a function version or an
    #   alias name. If you specify function version, the API uses qualified
    #   function ARN and returns information about the specific function
    #   version. If you specify an alias name, the API uses the alias ARN and
    #   returns information about the function version to which the alias
    #   points.
    #
    #   If you don't specify this parameter, the API uses unqualified
    #   function ARN, and returns information about the `$LATEST` function
    #   version.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #
    #
    # @example Example: To retrieve a Lambda function's event source mapping
    #
    #   # This operation retrieves a Lambda function's event source mapping
    #
    #   resp = client.get_function_configuration({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=", 
    #     code_size: 123, 
    #     dead_letter_config: {
    #     }, 
    #     description: "", 
    #     environment: {
    #     }, 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     kms_key_arn: "", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_configuration({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConfiguration AWS API Documentation
    #
    # @overload get_function_configuration(params = {})
    # @param [Hash] params ({})
    def get_function_configuration(params = {}, options = {})
      req = build_request(:get_function_configuration, params)
      req.send_request(options)
    end

    # Returns the resource policy associated with the specified Lambda
    # function.
    #
    # If you are using the versioning feature, you can get the resource
    # policy associated with the specific Lambda function version or alias
    # by specifying the version or alias name using the `Qualifier`
    # parameter. For more information about versioning, see [AWS Lambda
    # Function Versioning and Aliases][1].
    #
    # You need permission for the `lambda:GetPolicy action.`
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   Function name whose resource policy you want to retrieve.
    #
    #   You can specify the function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you are
    #   using versioning, you can also provide a qualified function ARN (ARN
    #   that is qualified with function version or alias name as suffix). AWS
    #   Lambda also allows you to specify only the function name with the
    #   account ID qualifier (for example, `account-id:Thumbnail`). Note that
    #   the length constraint applies only to the ARN. If you specify only the
    #   function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   You can specify this optional query parameter to specify a function
    #   version or an alias name in which case this API will return all
    #   permissions associated with the specific qualified ARN. If you don't
    #   provide this parameter, the API will return permissions that apply to
    #   the unqualified function ARN.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy #policy} => String
    #   * {Types::GetPolicyResponse#revision_id #revision_id} => String
    #
    #
    # @example Example: To retrieve a Lambda function policy
    #
    #   # This operation retrieves a Lambda function policy
    #
    #   resp = client.get_policy({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Invokes a specific Lambda function. For an example, see [Create the
    # Lambda Function and Test It Manually][1].
    #
    # If you are using the versioning feature, you can invoke the specific
    # function version by providing function version or alias name that is
    # pointing to the function version using the `Qualifier` parameter in
    # the request. If you don't provide the `Qualifier` parameter, the
    # `$LATEST` version of the Lambda function is invoked. Invocations occur
    # at least once in response to an event and functions must be idempotent
    # to handle this. For information about the versioning feature, see [AWS
    # Lambda Function Versioning and Aliases][2].
    #
    # This operation requires permission for the `lambda:InvokeFunction`
    # action.
    #
    # <note markdown="1"> The `TooManyRequestsException` noted below will return the following:
    # `ConcurrentInvocationLimitExceeded` will be returned if you have no
    # functions with reserved concurrency and have exceeded your account
    # concurrent limit or if a function without reserved concurrency exceeds
    # the account's unreserved concurrency limit.
    # `ReservedFunctionConcurrentInvocationLimitExceeded` will be returned
    # when a function with reserved concurrency exceeds its configured
    # concurrency limit.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/with-dynamodb-create-function.html#with-dbb-invoke-manually
    # [2]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The Lambda function name.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you can
    #   specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [String] :invocation_type
    #   By default, the `Invoke` API assumes `RequestResponse` invocation
    #   type. You can optionally request asynchronous execution by specifying
    #   `Event` as the `InvocationType`. You can also use this parameter to
    #   request AWS Lambda to not execute the function but do some
    #   verification, such as if the caller is authorized to invoke the
    #   function and if the inputs are valid. You request this by specifying
    #   `DryRun` as the `InvocationType`. This is useful in a cross-account
    #   scenario when you want to verify access to a function without running
    #   it.
    #
    # @option params [String] :log_type
    #   You can set this optional parameter to `Tail` in the request only if
    #   you specify the `InvocationType` parameter with value
    #   `RequestResponse`. In this case, AWS Lambda returns the base64-encoded
    #   last 4 KB of log data produced by your Lambda function in the
    #   `x-amz-log-result` header.
    #
    # @option params [String] :client_context
    #   Using the `ClientContext` you can pass client-specific information to
    #   the Lambda function you are invoking. You can then process the client
    #   information in your Lambda function as you choose through the context
    #   variable. For an example of a `ClientContext` JSON, see [PutEvents][1]
    #   in the *Amazon Mobile Analytics API Reference and User Guide*.
    #
    #   The ClientContext JSON must be base64-encoded and has a maximum size
    #   of 3583 bytes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mobileanalytics/latest/ug/PutEvents.html
    #
    # @option params [String, IO] :payload
    #   JSON that you want to provide to your Lambda function as input.
    #
    # @option params [String] :qualifier
    #   You can use this optional parameter to specify a Lambda function
    #   version or alias name. If you specify a function version, the API uses
    #   the qualified function ARN to invoke a specific Lambda function. If
    #   you specify an alias name, the API uses the alias ARN to invoke the
    #   Lambda function version to which the alias points.
    #
    #   If you don't provide this parameter, then the API uses unqualified
    #   function ARN which results in invocation of the `$LATEST` version.
    #
    # @return [Types::InvocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvocationResponse#status_code #status_code} => Integer
    #   * {Types::InvocationResponse#function_error #function_error} => String
    #   * {Types::InvocationResponse#log_result #log_result} => String
    #   * {Types::InvocationResponse#payload #payload} => String
    #   * {Types::InvocationResponse#executed_version #executed_version} => String
    #
    #
    # @example Example: To invoke a Lambda function
    #
    #   # This operation invokes a Lambda function
    #
    #   resp = client.invoke({
    #     client_context: "MyApp", 
    #     function_name: "MyFunction", 
    #     invocation_type: "Event", 
    #     log_type: "Tail", 
    #     payload: "fileb://file-path/input.json", 
    #     qualifier: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     function_error: "", 
    #     log_result: "", 
    #     payload: "?", 
    #     status_code: 123, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke({
    #     function_name: "NamespacedFunctionName", # required
    #     invocation_type: "Event", # accepts Event, RequestResponse, DryRun
    #     log_type: "None", # accepts None, Tail
    #     client_context: "String",
    #     payload: "data",
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.function_error #=> String
    #   resp.log_result #=> String
    #   resp.payload #=> String
    #   resp.executed_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Invoke AWS API Documentation
    #
    # @overload invoke(params = {})
    # @param [Hash] params ({})
    def invoke(params = {}, options = {})
      req = build_request(:invoke, params)
      req.send_request(options)
    end

    # This API is deprecated. We recommend you use `Invoke` API (see
    # Invoke).
    #
    # Submits an invocation request to AWS Lambda. Upon receiving the
    # request, Lambda executes the specified function asynchronously. To see
    # the logs generated by the Lambda function execution, see the
    # CloudWatch Logs console.
    #
    # This operation requires permission for the `lambda:InvokeFunction`
    # action.
    #
    # @option params [required, String] :function_name
    #   The Lambda function name. Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [required, String, IO] :invoke_args
    #   JSON that you want to provide to your Lambda function as input.
    #
    # @return [Types::InvokeAsyncResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeAsyncResponse#status #status} => Integer
    #
    #
    # @example Example: To invoke a Lambda function asynchronously
    #
    #   # This operation invokes a Lambda function asynchronously
    #
    #   resp = client.invoke_async({
    #     function_name: "myFunction", 
    #     invoke_args: "fileb://file-path/input.json", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     status: 123, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_async({
    #     function_name: "NamespacedFunctionName", # required
    #     invoke_args: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsync AWS API Documentation
    #
    # @overload invoke_async(params = {})
    # @param [Hash] params ({})
    def invoke_async(params = {}, options = {})
      req = build_request(:invoke_async, params)
      req.send_request(options)
    end

    # Returns list of aliases created for a Lambda function. For each alias,
    # the response includes information such as the alias ARN, description,
    # alias name, and the function version to which it points. For more
    # information, see [Introduction to AWS Lambda Aliases][1].
    #
    # This requires permission for the lambda:ListAliases action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
    #
    # @option params [required, String] :function_name
    #   Lambda function name for which the alias is created. Note that the
    #   length constraint applies only to the ARN. If you specify only the
    #   function name, it is limited to 64 characters in length.
    #
    # @option params [String] :function_version
    #   If you specify this optional parameter, the API returns only the
    #   aliases that are pointing to the specific Lambda function version,
    #   otherwise the API returns all of the aliases created for the Lambda
    #   function.
    #
    # @option params [String] :marker
    #   Optional string. An opaque pagination token returned from a previous
    #   `ListAliases` operation. If present, indicates where to continue the
    #   listing.
    #
    # @option params [Integer] :max_items
    #   Optional integer. Specifies the maximum number of aliases to return in
    #   response. This parameter value must be greater than 0.
    #
    # @return [Types::ListAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesResponse#next_marker #next_marker} => String
    #   * {Types::ListAliasesResponse#aliases #aliases} => Array&lt;Types::AliasConfiguration&gt;
    #
    #
    # @example Example: To retrieve a Lambda function aliases
    #
    #   # This operation retrieves a Lambda function's aliases
    #
    #   resp = client.list_aliases({
    #     function_name: "myFunction", 
    #     function_version: "1", 
    #     marker: "", 
    #     max_items: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     aliases: [
    #     ], 
    #     next_marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases({
    #     function_name: "FunctionName", # required
    #     function_version: "Version",
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.aliases #=> Array
    #   resp.aliases[0].alias_arn #=> String
    #   resp.aliases[0].name #=> String
    #   resp.aliases[0].function_version #=> String
    #   resp.aliases[0].description #=> String
    #   resp.aliases[0].routing_config.additional_version_weights #=> Hash
    #   resp.aliases[0].routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.aliases[0].revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Returns a list of event source mappings you created using the
    # `CreateEventSourceMapping` (see CreateEventSourceMapping).
    #
    # For each mapping, the API returns configuration information. You can
    # optionally specify filters to retrieve specific event source mappings.
    #
    # If you are using the versioning feature, you can get list of event
    # source mappings for a specific Lambda function version or an alias as
    # described in the `FunctionName` parameter. For information about the
    # versioning feature, see [AWS Lambda Function Versioning and
    # Aliases][1].
    #
    # This operation requires permission for the
    # `lambda:ListEventSourceMappings` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [String] :event_source_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB
    #   stream, or an SQS queue. (This parameter is optional.)
    #
    # @option params [String] :function_name
    #   The name of the Lambda function.
    #
    #   You can specify the function name (for example, `Thumbnail`) or you
    #   can specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you are
    #   using versioning, you can also provide a qualified function ARN (ARN
    #   that is qualified with function version or alias name as suffix). AWS
    #   Lambda also allows you to specify only the function name with the
    #   account ID qualifier (for example, `account-id:Thumbnail`). Note that
    #   the length constraint applies only to the ARN. If you specify only the
    #   function name, it is limited to 64 characters in length.
    #
    # @option params [String] :marker
    #   Optional string. An opaque pagination token returned from a previous
    #   `ListEventSourceMappings` operation. If present, specifies to continue
    #   the list from where the returning call left off.
    #
    # @option params [Integer] :max_items
    #   Optional integer. Specifies the maximum number of event sources to
    #   return in response. This value must be greater than 0.
    #
    # @return [Types::ListEventSourceMappingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventSourceMappingsResponse#next_marker #next_marker} => String
    #   * {Types::ListEventSourceMappingsResponse#event_source_mappings #event_source_mappings} => Array&lt;Types::EventSourceMappingConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_source_mappings({
    #     event_source_arn: "Arn",
    #     function_name: "FunctionName",
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.event_source_mappings #=> Array
    #   resp.event_source_mappings[0].uuid #=> String
    #   resp.event_source_mappings[0].batch_size #=> Integer
    #   resp.event_source_mappings[0].event_source_arn #=> String
    #   resp.event_source_mappings[0].function_arn #=> String
    #   resp.event_source_mappings[0].last_modified #=> Time
    #   resp.event_source_mappings[0].last_processing_result #=> String
    #   resp.event_source_mappings[0].state #=> String
    #   resp.event_source_mappings[0].state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappings AWS API Documentation
    #
    # @overload list_event_source_mappings(params = {})
    # @param [Hash] params ({})
    def list_event_source_mappings(params = {}, options = {})
      req = build_request(:list_event_source_mappings, params)
      req.send_request(options)
    end

    # Returns a list of your Lambda functions. For each function, the
    # response includes the function configuration information. You must use
    # GetFunction to retrieve the code for your function.
    #
    # This operation requires permission for the `lambda:ListFunctions`
    # action.
    #
    # If you are using the versioning feature, you can list all of your
    # functions or only `$LATEST` versions. For information about the
    # versioning feature, see [AWS Lambda Function Versioning and
    # Aliases][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [String] :master_region
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
    #
    # @option params [String] :function_version
    #   Optional string. If not specified, only the unqualified functions ARNs
    #   (Amazon Resource Names) will be returned.
    #
    #   Valid value:
    #
    #   `ALL`\: Will return all versions, including `$LATEST` which will have
    #   fully qualified ARNs (Amazon Resource Names).
    #
    # @option params [String] :marker
    #   Optional string. An opaque pagination token returned from a previous
    #   `ListFunctions` operation. If present, indicates where to continue the
    #   listing.
    #
    # @option params [Integer] :max_items
    #   Optional integer. Specifies the maximum number of AWS Lambda functions
    #   to return in response. This parameter value must be greater than 0.
    #
    # @return [Types::ListFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionsResponse#next_marker #next_marker} => String
    #   * {Types::ListFunctionsResponse#functions #functions} => Array&lt;Types::FunctionConfiguration&gt;
    #
    #
    # @example Example: To retrieve a list of Lambda functions
    #
    #   # This operation retrieves a Lambda functions
    #
    #   resp = client.list_functions({
    #     marker: "", 
    #     max_items: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     functions: [
    #     ], 
    #     next_marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions({
    #     master_region: "MasterRegion",
    #     function_version: "ALL", # accepts ALL
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.functions #=> Array
    #   resp.functions[0].function_name #=> String
    #   resp.functions[0].function_arn #=> String
    #   resp.functions[0].runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x"
    #   resp.functions[0].role #=> String
    #   resp.functions[0].handler #=> String
    #   resp.functions[0].code_size #=> Integer
    #   resp.functions[0].description #=> String
    #   resp.functions[0].timeout #=> Integer
    #   resp.functions[0].memory_size #=> Integer
    #   resp.functions[0].last_modified #=> Time
    #   resp.functions[0].code_sha_256 #=> String
    #   resp.functions[0].version #=> String
    #   resp.functions[0].vpc_config.subnet_ids #=> Array
    #   resp.functions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.functions[0].vpc_config.security_group_ids #=> Array
    #   resp.functions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.functions[0].vpc_config.vpc_id #=> String
    #   resp.functions[0].dead_letter_config.target_arn #=> String
    #   resp.functions[0].environment.variables #=> Hash
    #   resp.functions[0].environment.variables["EnvironmentVariableName"] #=> String
    #   resp.functions[0].environment.error.error_code #=> String
    #   resp.functions[0].environment.error.message #=> String
    #   resp.functions[0].kms_key_arn #=> String
    #   resp.functions[0].tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.functions[0].master_arn #=> String
    #   resp.functions[0].revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctions AWS API Documentation
    #
    # @overload list_functions(params = {})
    # @param [Hash] params ({})
    def list_functions(params = {}, options = {})
      req = build_request(:list_functions, params)
      req.send_request(options)
    end

    # Returns a list of tags assigned to a function when supplied the
    # function ARN (Amazon Resource Name). For more information on Tagging,
    # see [Tagging Lambda Functions][1] in the **AWS Lambda Developer
    # Guide**.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, String] :resource
    #   The ARN (Amazon Resource Name) of the function. For more information,
    #   see [Tagging Lambda Functions][1] in the **AWS Lambda Developer
    #   Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource: "FunctionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # List all versions of a function. For information about the versioning
    # feature, see [AWS Lambda Function Versioning and Aliases][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   Function name whose versions to list. You can specify a function name
    #   (for example, `Thumbnail`) or you can specify Amazon Resource Name
    #   (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [String] :marker
    #   Optional string. An opaque pagination token returned from a previous
    #   `ListVersionsByFunction` operation. If present, indicates where to
    #   continue the listing.
    #
    # @option params [Integer] :max_items
    #   Optional integer. Specifies the maximum number of AWS Lambda function
    #   versions to return in response. This parameter value must be greater
    #   than 0.
    #
    # @return [Types::ListVersionsByFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVersionsByFunctionResponse#next_marker #next_marker} => String
    #   * {Types::ListVersionsByFunctionResponse#versions #versions} => Array&lt;Types::FunctionConfiguration&gt;
    #
    #
    # @example Example: To retrieve a list of Lambda function versions
    #
    #   # This operation retrieves a Lambda function versions
    #
    #   resp = client.list_versions_by_function({
    #     function_name: "myFunction", 
    #     marker: "", 
    #     max_items: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_marker: "", 
    #     versions: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_versions_by_function({
    #     function_name: "NamespacedFunctionName", # required
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].function_name #=> String
    #   resp.versions[0].function_arn #=> String
    #   resp.versions[0].runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x"
    #   resp.versions[0].role #=> String
    #   resp.versions[0].handler #=> String
    #   resp.versions[0].code_size #=> Integer
    #   resp.versions[0].description #=> String
    #   resp.versions[0].timeout #=> Integer
    #   resp.versions[0].memory_size #=> Integer
    #   resp.versions[0].last_modified #=> Time
    #   resp.versions[0].code_sha_256 #=> String
    #   resp.versions[0].version #=> String
    #   resp.versions[0].vpc_config.subnet_ids #=> Array
    #   resp.versions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.versions[0].vpc_config.security_group_ids #=> Array
    #   resp.versions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.versions[0].vpc_config.vpc_id #=> String
    #   resp.versions[0].dead_letter_config.target_arn #=> String
    #   resp.versions[0].environment.variables #=> Hash
    #   resp.versions[0].environment.variables["EnvironmentVariableName"] #=> String
    #   resp.versions[0].environment.error.error_code #=> String
    #   resp.versions[0].environment.error.message #=> String
    #   resp.versions[0].kms_key_arn #=> String
    #   resp.versions[0].tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.versions[0].master_arn #=> String
    #   resp.versions[0].revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListVersionsByFunction AWS API Documentation
    #
    # @overload list_versions_by_function(params = {})
    # @param [Hash] params ({})
    def list_versions_by_function(params = {}, options = {})
      req = build_request(:list_versions_by_function, params)
      req.send_request(options)
    end

    # Publishes a version of your function from the current snapshot of
    # $LATEST. That is, AWS Lambda takes a snapshot of the function code and
    # configuration information from $LATEST and publishes a new version.
    # The code and configuration cannot be modified after publication. For
    # information about the versioning feature, see [AWS Lambda Function
    # Versioning and Aliases][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The Lambda function name. You can specify a function name (for
    #   example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of
    #   the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [String] :code_sha_256
    #   The SHA256 hash of the deployment package you want to publish. This
    #   provides validation on the code you are publishing. If you provide
    #   this parameter, the value must match the SHA256 of the $LATEST version
    #   for the publication to succeed. You can use the **DryRun** parameter
    #   of UpdateFunctionCode to verify the hash value that will be returned
    #   before publishing your new version.
    #
    # @option params [String] :description
    #   The description for the version you are publishing. If not provided,
    #   AWS Lambda copies the description from the $LATEST version.
    #
    # @option params [String] :revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you pass
    #   doesn't match the latest `RevisionId` of the function or alias, it
    #   will fail with an error message, advising you to retrieve the latest
    #   function version or alias `RevisionID` using either or .
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #
    #
    # @example Example: To publish a version of a Lambda function
    #
    #   # This operation publishes a version of a Lambda function
    #
    #   resp = client.publish_version({
    #     code_sha_256: "", 
    #     description: "", 
    #     function_name: "myFunction", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "", 
    #     code_size: 123, 
    #     description: "", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_version({
    #     function_name: "FunctionName", # required
    #     code_sha_256: "String",
    #     description: "Description",
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishVersion AWS API Documentation
    #
    # @overload publish_version(params = {})
    # @param [Hash] params ({})
    def publish_version(params = {}, options = {})
      req = build_request(:publish_version, params)
      req.send_request(options)
    end

    # Sets a limit on the number of concurrent executions available to this
    # function. It is a subset of your account's total concurrent execution
    # limit per region. Note that Lambda automatically reserves a buffer of
    # 100 concurrent executions for functions without any reserved
    # concurrency limit. This means if your account limit is 1000, you have
    # a total of 900 available to allocate to individual functions. For more
    # information, see concurrent-executions.
    #
    # @option params [required, String] :function_name
    #   The name of the function you are setting concurrent execution limits
    #   on. For more information, see concurrent-executions.
    #
    # @option params [required, Integer] :reserved_concurrent_executions
    #   The concurrent execution limit reserved for this function. For more
    #   information, see concurrent-executions.
    #
    # @return [Types::Concurrency] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Concurrency#reserved_concurrent_executions #reserved_concurrent_executions} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_function_concurrency({
    #     function_name: "FunctionName", # required
    #     reserved_concurrent_executions: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_concurrent_executions #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionConcurrency AWS API Documentation
    #
    # @overload put_function_concurrency(params = {})
    # @param [Hash] params ({})
    def put_function_concurrency(params = {}, options = {})
      req = build_request(:put_function_concurrency, params)
      req.send_request(options)
    end

    # You can remove individual permissions from an resource policy
    # associated with a Lambda function by providing a statement ID that you
    # provided when you added the permission.
    #
    # If you are using versioning, the permissions you remove are specific
    # to the Lambda function version or alias you specify in the
    # `AddPermission` request via the `Qualifier` parameter. For more
    # information about versioning, see [AWS Lambda Function Versioning and
    # Aliases][1].
    #
    # Note that removal of a permission will cause an active event source to
    # lose permission to the function.
    #
    # You need permission for the `lambda:RemovePermission` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   Lambda function whose resource policy you want to remove a permission
    #   from.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you can
    #   specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [required, String] :statement_id
    #   Statement ID of the permission to remove.
    #
    # @option params [String] :qualifier
    #   You can specify this optional parameter to remove permission
    #   associated with a specific function version or function alias. If you
    #   don't specify this parameter, the API removes permission associated
    #   with the unqualified function ARN.
    #
    # @option params [String] :revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you pass
    #   doesn't match the latest `RevisionId` of the function or alias, it
    #   will fail with an error message, advising you to retrieve the latest
    #   function version or alias `RevisionID` using either or .
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove a Lambda function's permissions
    #
    #   # This operation removes a Lambda function's permissions
    #
    #   resp = client.remove_permission({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #     statement_id: "role-statement-id", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission({
    #     function_name: "FunctionName", # required
    #     statement_id: "NamespacedStatementId", # required
    #     qualifier: "Qualifier",
    #     revision_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemovePermission AWS API Documentation
    #
    # @overload remove_permission(params = {})
    # @param [Hash] params ({})
    def remove_permission(params = {}, options = {})
      req = build_request(:remove_permission, params)
      req.send_request(options)
    end

    # Creates a list of tags (key-value pairs) on the Lambda function.
    # Requires the Lambda function ARN (Amazon Resource Name). If a key is
    # specified without a value, Lambda creates a tag with the specified key
    # and a value of null. For more information, see [Tagging Lambda
    # Functions][1] in the **AWS Lambda Developer Guide**.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, String] :resource
    #   The ARN (Amazon Resource Name) of the Lambda function. For more
    #   information, see [Tagging Lambda Functions][1] in the **AWS Lambda
    #   Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tags (key-value pairs) you are assigning to the Lambda
    #   function. For more information, see [Tagging Lambda Functions][1] in
    #   the **AWS Lambda Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource: "FunctionArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a Lambda function. Requires the function ARN (Amazon
    # Resource Name). For more information, see [Tagging Lambda
    # Functions][1] in the **AWS Lambda Developer Guide**.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, String] :resource
    #   The ARN (Amazon Resource Name) of the function. For more information,
    #   see [Tagging Lambda Functions][1] in the **AWS Lambda Developer
    #   Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to be deleted from the function. For more
    #   information, see [Tagging Lambda Functions][1] in the **AWS Lambda
    #   Developer Guide**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource: "FunctionArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Using this API you can update the function version to which the alias
    # points and the alias description. For more information, see
    # [Introduction to AWS Lambda Aliases][1].
    #
    # This requires permission for the lambda:UpdateAlias action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
    #
    # @option params [required, String] :function_name
    #   The function name for which the alias is created. Note that the length
    #   constraint applies only to the ARN. If you specify only the function
    #   name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   The alias name.
    #
    # @option params [String] :function_version
    #   Using this parameter you can change the Lambda function version to
    #   which the alias points.
    #
    # @option params [String] :description
    #   You can change the description of the alias using this parameter.
    #
    # @option params [Types::AliasRoutingConfiguration] :routing_config
    #   Specifies an additional version your alias can point to, allowing you
    #   to dictate what percentage of traffic will invoke each version. For
    #   more information, see lambda-traffic-shifting-using-aliases.
    #
    # @option params [String] :revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you pass
    #   doesn't match the latest `RevisionId` of the function or alias, it
    #   will fail with an error message, advising you to retrieve the latest
    #   function version or alias `RevisionID` using either or .
    #
    # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AliasConfiguration#alias_arn #alias_arn} => String
    #   * {Types::AliasConfiguration#name #name} => String
    #   * {Types::AliasConfiguration#function_version #function_version} => String
    #   * {Types::AliasConfiguration#description #description} => String
    #   * {Types::AliasConfiguration#routing_config #routing_config} => Types::AliasRoutingConfiguration
    #   * {Types::AliasConfiguration#revision_id #revision_id} => String
    #
    #
    # @example Example: To update a Lambda function alias
    #
    #   # This operation updates a Lambda function alias
    #
    #   resp = client.update_alias({
    #     description: "", 
    #     function_name: "myFunction", 
    #     function_version: "1", 
    #     name: "functionAlias", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:functionAlias", 
    #     description: "", 
    #     function_version: "1", 
    #     name: "functionAlias", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0,
    #       },
    #     },
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_arn #=> String
    #   resp.name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config.additional_version_weights #=> Hash
    #   resp.routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateAlias AWS API Documentation
    #
    # @overload update_alias(params = {})
    # @param [Hash] params ({})
    def update_alias(params = {}, options = {})
      req = build_request(:update_alias, params)
      req.send_request(options)
    end

    # You can update an event source mapping. This is useful if you want to
    # change the parameters of the existing mapping without losing your
    # position in the stream. You can change which function will receive the
    # stream records, but to change the stream itself, you must create a new
    # mapping.
    #
    # If you are using the versioning feature, you can update the event
    # source mapping to map to a specific Lambda function version or alias
    # as described in the `FunctionName` parameter. For information about
    # the versioning feature, see [AWS Lambda Function Versioning and
    # Aliases][1].
    #
    # If you disable the event source mapping, AWS Lambda stops polling. If
    # you enable again, it will resume polling from the time it had stopped
    # polling, so you don't lose processing of any records. However, if you
    # delete event source mapping and create it again, it will reset.
    #
    # This operation requires permission for the
    # `lambda:UpdateEventSourceMapping` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :uuid
    #   The event source mapping identifier.
    #
    # @option params [String] :function_name
    #   The Lambda function to which you want the stream records sent.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you can
    #   specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    #   If you are using versioning, you can also provide a qualified function
    #   ARN (ARN that is qualified with function version or alias name as
    #   suffix). For more information about versioning, see [AWS Lambda
    #   Function Versioning and Aliases][1]
    #
    #   Note that the length constraint applies only to the ARN. If you
    #   specify only the function name, it is limited to 64 character in
    #   length.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [Boolean] :enabled
    #   Specifies whether AWS Lambda should actively poll the stream or not.
    #   If disabled, AWS Lambda will not poll the stream.
    #
    # @option params [Integer] :batch_size
    #   The maximum number of stream records that can be sent to your Lambda
    #   function for a single invocation.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #
    #
    # @example Example: To update a Lambda function event source mapping
    #
    #   # This operation updates a Lambda function event source mapping
    #
    #   resp = client.update_event_source_mapping({
    #     batch_size: 123, 
    #     enabled: true, 
    #     function_name: "myFunction", 
    #     uuid: "1234xCy789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     batch_size: 123, 
    #     event_source_arn: "arn:aws:s3:::examplebucket/*", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     last_processing_result: "", 
    #     state: "", 
    #     state_transition_reason: "", 
    #     uuid: "1234xCy789012", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_source_mapping({
    #     uuid: "String", # required
    #     function_name: "FunctionName",
    #     enabled: false,
    #     batch_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateEventSourceMapping AWS API Documentation
    #
    # @overload update_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def update_event_source_mapping(params = {}, options = {})
      req = build_request(:update_event_source_mapping, params)
      req.send_request(options)
    end

    # Updates the code for the specified Lambda function. This operation
    # must only be used on an existing Lambda function and cannot be used to
    # update the function configuration.
    #
    # If you are using the versioning feature, note this API will always
    # update the $LATEST version of your Lambda function. For information
    # about the versioning feature, see [AWS Lambda Function Versioning and
    # Aliases][1].
    #
    # This operation requires permission for the `lambda:UpdateFunctionCode`
    # action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The existing Lambda function name whose code you want to replace.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you can
    #   specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [String, IO] :zip_file
    #   The contents of your zip file containing your deployment package. If
    #   you are using the web API directly, the contents of the zip file must
    #   be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the
    #   SDKs or CLI will do the encoding for you. For more information about
    #   creating a .zip file, see [Execution Permissions][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html
    #
    # @option params [String] :s3_bucket
    #   Amazon S3 bucket name where the .zip file containing your deployment
    #   package is stored. This bucket must reside in the same AWS Region
    #   where you are creating the Lambda function.
    #
    # @option params [String] :s3_key
    #   The Amazon S3 object (the deployment package) key name you want to
    #   upload.
    #
    # @option params [String] :s3_object_version
    #   The Amazon S3 object (the deployment package) version you want to
    #   upload.
    #
    # @option params [Boolean] :publish
    #   This boolean parameter can be used to request AWS Lambda to update the
    #   Lambda function and publish a version as an atomic operation.
    #
    # @option params [Boolean] :dry_run
    #   This boolean parameter can be used to test your request to AWS Lambda
    #   to update the Lambda function and publish a version as an atomic
    #   operation. It will do all necessary computation and validation of your
    #   code but will not upload it or a publish a version. Each time this
    #   operation is invoked, the `CodeSha256` hash value of the provided code
    #   will also be computed and returned in the response.
    #
    # @option params [String] :revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you pass
    #   doesn't match the latest `RevisionId` of the function or alias, it
    #   will fail with an error message, advising you to retrieve the latest
    #   function version or alias `RevisionID` using either or .
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #
    #
    # @example Example: To update a Lambda function's code
    #
    #   # This operation updates a Lambda function's code
    #
    #   resp = client.update_function_code({
    #     function_name: "myFunction", 
    #     publish: true, 
    #     s3_bucket: "myBucket", 
    #     s3_key: "myKey", 
    #     s3_object_version: "1", 
    #     zip_file: "fileb://file-path/file.zip", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=", 
    #     code_size: 123, 
    #     description: "", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_code({
    #     function_name: "FunctionName", # required
    #     zip_file: "data",
    #     s3_bucket: "S3Bucket",
    #     s3_key: "S3Key",
    #     s3_object_version: "S3ObjectVersion",
    #     publish: false,
    #     dry_run: false,
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionCode AWS API Documentation
    #
    # @overload update_function_code(params = {})
    # @param [Hash] params ({})
    def update_function_code(params = {}, options = {})
      req = build_request(:update_function_code, params)
      req.send_request(options)
    end

    # Updates the configuration parameters for the specified Lambda function
    # by using the values provided in the request. You provide only the
    # parameters you want to change. This operation must only be used on an
    # existing Lambda function and cannot be used to update the function's
    # code.
    #
    # If you are using the versioning feature, note this API will always
    # update the $LATEST version of your Lambda function. For information
    # about the versioning feature, see [AWS Lambda Function Versioning and
    # Aliases][1].
    #
    # This operation requires permission for the
    # `lambda:UpdateFunctionConfiguration` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   You can specify a function name (for example, `Thumbnail`) or you can
    #   specify Amazon Resource Name (ARN) of the function (for example,
    #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
    #   also allows you to specify a partial ARN (for example,
    #   `account-id:Thumbnail`). Note that the length constraint applies only
    #   to the ARN. If you specify only the function name, it is limited to 64
    #   character in length.
    #
    # @option params [String] :role
    #   The Amazon Resource Name (ARN) of the IAM role that Lambda will assume
    #   when it executes your function.
    #
    # @option params [String] :handler
    #   The function that Lambda calls to begin executing your function. For
    #   Node.js, it is the `module-name.export` value in your function.
    #
    # @option params [String] :description
    #   A short user-defined function description. AWS Lambda does not use
    #   this value. Assign a meaningful description as you see fit.
    #
    # @option params [Integer] :timeout
    #   The function execution time at which AWS Lambda should terminate the
    #   function. Because the execution time has cost implications, we
    #   recommend you set this value based on your expected execution time.
    #   The default is 3 seconds.
    #
    # @option params [Integer] :memory_size
    #   The amount of memory, in MB, your Lambda function is given. AWS Lambda
    #   uses this memory size to infer the amount of CPU allocated to your
    #   function. Your function use-case determines your CPU and memory
    #   requirements. For example, a database operation might need less memory
    #   compared to an image processing function. The default value is 128 MB.
    #   The value must be a multiple of 64 MB.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   If your Lambda function accesses resources in a VPC, you provide this
    #   parameter identifying the list of security group IDs and subnet IDs.
    #   These must belong to the same VPC. You must provide at least one
    #   security group and one subnet ID.
    #
    # @option params [Types::Environment] :environment
    #   The parent object that contains your environment's configuration
    #   settings.
    #
    # @option params [String] :runtime
    #   The runtime environment for the Lambda function.
    #
    #   To use the Python runtime v3.6, set the value to "python3.6". To use
    #   the Python runtime v2.7, set the value to "python2.7". To use the
    #   Node.js runtime v6.10, set the value to "nodejs6.10". To use the
    #   Node.js runtime v4.3, set the value to "nodejs4.3". To use the .NET
    #   Core runtime v1.0, set the value to "dotnetcore1.0". To use the .NET
    #   Core runtime v2.0, set the value to "dotnetcore2.0".
    #
    #   <note markdown="1"> Node v0.10.42 is currently marked as deprecated. You must migrate
    #   existing functions to the newer Node.js runtime versions available on
    #   AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. Failure to
    #   do so will result in an invalid parameter error being returned. Note
    #   that you will have to follow this procedure for each region that
    #   contains functions written in the Node v0.10.42 runtime.
    #
    #    </note>
    #
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   The parent object that contains the target ARN (Amazon Resource Name)
    #   of an Amazon SQS queue or Amazon SNS topic. For more information, see
    #   dlq.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt your
    #   function's environment variables. If you elect to use the AWS Lambda
    #   default service key, pass in an empty string ("") for this
    #   parameter.
    #
    # @option params [Types::TracingConfig] :tracing_config
    #   The parent object that contains your function's tracing settings.
    #
    # @option params [String] :revision_id
    #   An optional value you can use to ensure you are updating the latest
    #   update of the function version or alias. If the `RevisionID` you pass
    #   doesn't match the latest `RevisionId` of the function or alias, it
    #   will fail with an error message, advising you to retrieve the latest
    #   function version or alias `RevisionID` using either or .
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #
    #
    # @example Example: To update a Lambda function's configuration
    #
    #   # This operation updates a Lambda function's configuration
    #
    #   resp = client.update_function_configuration({
    #     description: "", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     vpc_config: {
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=", 
    #     code_size: 123, 
    #     description: "", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_configuration({
    #     function_name: "FunctionName", # required
    #     role: "RoleArn",
    #     handler: "Handler",
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue",
    #       },
    #     },
    #     runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, java8, python2.7, python3.6, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x
    #     dead_letter_config: {
    #       target_arn: "ResourceArn",
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active", # accepts Active, PassThrough
    #     },
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionConfiguration AWS API Documentation
    #
    # @overload update_function_configuration(params = {})
    # @param [Hash] params ({})
    def update_function_configuration(params = {}, options = {})
      req = build_request(:update_function_configuration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-lambda'
      context[:gem_version] = '1.10.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
