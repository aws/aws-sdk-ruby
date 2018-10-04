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

Aws::Plugins::GlobalConfiguration.add_identifier(:lambdapreview)

module Aws::LambdaPreview
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :lambdapreview

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

    # Identifies a stream as an event source for an AWS Lambda function. It
    # can be either an Amazon Kinesis stream or a Amazon DynamoDB stream.
    # AWS Lambda invokes the specified function when records are posted to
    # the stream.
    #
    # This is the pull model, where AWS Lambda invokes the function. For
    # more information, go to [AWS Lambda: How it Works][1] in the AWS
    # Lambda Developer Guide.
    #
    # This association between an Amazon Kinesis stream and an AWS Lambda
    # function is called the event source mapping. You provide the
    # configuration information (for example, which stream to read from and
    # which AWS Lambda function to invoke) for the event source mapping in
    # the request body.
    #
    # Each event source, such as a Kinesis stream, can only be associated
    # with one AWS Lambda function. If you call AddEventSource for an event
    # source that is already mapped to another AWS Lambda function, the
    # existing mapping is updated to call the new function instead of the
    # old one.
    #
    # This operation requires permission for the `iam:PassRole` action for
    # the IAM role. It also requires permission for the
    # `lambda:AddEventSource` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html
    #
    # @option params [required, String] :event_source
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is
    #   the event source. Any record added to this stream causes AWS Lambda to
    #   invoke your Lambda function. AWS Lambda POSTs the Amazon Kinesis
    #   event, containing records, to your Lambda function as JSON.
    #
    # @option params [required, String] :function_name
    #   The Lambda function to invoke when AWS Lambda detects an event on the
    #   stream.
    #
    # @option params [required, String] :role
    #   The ARN of the IAM role (invocation role) that AWS Lambda can assume
    #   to read from the stream and invoke the function.
    #
    # @option params [Integer] :batch_size
    #   The largest number of records that AWS Lambda will give to your
    #   function in a single event. The default is 100 records.
    #
    # @option params [Hash<String,String>] :parameters
    #   A map (key-value pairs) defining the configuration for AWS Lambda to
    #   use when reading the event source. Currently, AWS Lambda supports only
    #   the `InitialPositionInStream` key. The valid values are:
    #   "TRIM\_HORIZON" and "LATEST". The default value is
    #   "TRIM\_HORIZON". For more information, go to [ShardIteratorType][1]
    #   in the Amazon Kinesis Service API Reference.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType
    #
    # @return [Types::EventSourceConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceConfiguration#event_source #event_source} => String
    #   * {Types::EventSourceConfiguration#function_name #function_name} => String
    #   * {Types::EventSourceConfiguration#parameters #parameters} => Hash&lt;String,String&gt;
    #   * {Types::EventSourceConfiguration#role #role} => String
    #   * {Types::EventSourceConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceConfiguration#is_active #is_active} => Boolean
    #   * {Types::EventSourceConfiguration#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_event_source({
    #     event_source: "String", # required
    #     function_name: "FunctionName", # required
    #     role: "RoleArn", # required
    #     batch_size: 1,
    #     parameters: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source #=> String
    #   resp.function_name #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["String"] #=> String
    #   resp.role #=> String
    #   resp.last_modified #=> Time
    #   resp.is_active #=> Boolean
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/AddEventSource AWS API Documentation
    #
    # @overload add_event_source(params = {})
    # @param [Hash] params ({})
    def add_event_source(params = {}, options = {})
      req = build_request(:add_event_source, params)
      req.send_request(options)
    end

    # Deletes the specified Lambda function code and configuration.
    #
    # This operation requires permission for the `lambda:DeleteFunction`
    # action.
    #
    # @option params [required, String] :function_name
    #   The Lambda function to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/DeleteFunction AWS API Documentation
    #
    # @overload delete_function(params = {})
    # @param [Hash] params ({})
    def delete_function(params = {}, options = {})
      req = build_request(:delete_function, params)
      req.send_request(options)
    end

    # Returns configuration information for the specified event source
    # mapping (see AddEventSource).
    #
    # This operation requires permission for the `lambda:GetEventSource`
    # action.
    #
    # @option params [required, String] :uuid
    #   The AWS Lambda assigned ID of the event source mapping.
    #
    # @return [Types::EventSourceConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceConfiguration#event_source #event_source} => String
    #   * {Types::EventSourceConfiguration#function_name #function_name} => String
    #   * {Types::EventSourceConfiguration#parameters #parameters} => Hash&lt;String,String&gt;
    #   * {Types::EventSourceConfiguration#role #role} => String
    #   * {Types::EventSourceConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceConfiguration#is_active #is_active} => Boolean
    #   * {Types::EventSourceConfiguration#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_source({
    #     uuid: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source #=> String
    #   resp.function_name #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["String"] #=> String
    #   resp.role #=> String
    #   resp.last_modified #=> Time
    #   resp.is_active #=> Boolean
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/GetEventSource AWS API Documentation
    #
    # @overload get_event_source(params = {})
    # @param [Hash] params ({})
    def get_event_source(params = {}, options = {})
      req = build_request(:get_event_source, params)
      req.send_request(options)
    end

    # Returns the configuration information of the Lambda function and a
    # presigned URL link to the .zip file you uploaded with UploadFunction
    # so you can download the .zip file. Note that the URL is valid for up
    # to 10 minutes. The configuration information is the same information
    # you provided as parameters when uploading the function.
    #
    # This operation requires permission for the `lambda:GetFunction`
    # action.
    #
    # @option params [required, String] :function_name
    #   The Lambda function name.
    #
    # @return [Types::GetFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionResponse#configuration #configuration} => Types::FunctionConfiguration
    #   * {Types::GetFunctionResponse#code #code} => Types::FunctionCodeLocation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.function_name #=> String
    #   resp.configuration.function_arn #=> String
    #   resp.configuration.configuration_id #=> String
    #   resp.configuration.runtime #=> String, one of "nodejs"
    #   resp.configuration.role #=> String
    #   resp.configuration.handler #=> String
    #   resp.configuration.mode #=> String, one of "event"
    #   resp.configuration.code_size #=> Integer
    #   resp.configuration.description #=> String
    #   resp.configuration.timeout #=> Integer
    #   resp.configuration.memory_size #=> Integer
    #   resp.configuration.last_modified #=> Time
    #   resp.code.repository_type #=> String
    #   resp.code.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/GetFunction AWS API Documentation
    #
    # @overload get_function(params = {})
    # @param [Hash] params ({})
    def get_function(params = {}, options = {})
      req = build_request(:get_function, params)
      req.send_request(options)
    end

    # Returns the configuration information of the Lambda function. This the
    # same information you provided as parameters when uploading the
    # function by using UploadFunction.
    #
    # This operation requires permission for the
    # `lambda:GetFunctionConfiguration` operation.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function for which you want to retrieve the
    #   configuration information.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#configuration_id #configuration_id} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#mode #mode} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_configuration({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.configuration_id #=> String
    #   resp.runtime #=> String, one of "nodejs"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.mode #=> String, one of "event"
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/GetFunctionConfiguration AWS API Documentation
    #
    # @overload get_function_configuration(params = {})
    # @param [Hash] params ({})
    def get_function_configuration(params = {}, options = {})
      req = build_request(:get_function_configuration, params)
      req.send_request(options)
    end

    # Submits an invocation request to AWS Lambda. Upon receiving the
    # request, Lambda executes the specified function asynchronously. To see
    # the logs generated by the Lambda function execution, see the
    # CloudWatch logs console.
    #
    # This operation requires permission for the `lambda:InvokeFunction`
    # action.
    #
    # @option params [required, String] :function_name
    #   The Lambda function name.
    #
    # @option params [required, String, IO] :invoke_args
    #   JSON that you want to provide to your Lambda function as input.
    #
    # @return [Types::InvokeAsyncResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeAsyncResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_async({
    #     function_name: "FunctionName", # required
    #     invoke_args: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/InvokeAsync AWS API Documentation
    #
    # @overload invoke_async(params = {})
    # @param [Hash] params ({})
    def invoke_async(params = {}, options = {})
      req = build_request(:invoke_async, params)
      req.send_request(options)
    end

    # Returns a list of event source mappings you created using the
    # `AddEventSource` (see AddEventSource), where you identify a stream as
    # event source. This list does not include Amazon S3 event sources.
    #
    # For each mapping, the API returns configuration information. You can
    # optionally specify filters to retrieve specific event source mappings.
    #
    # This operation requires permission for the `lambda:ListEventSources`
    # action.
    #
    # @option params [String] :event_source_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis stream.
    #
    # @option params [String] :function_name
    #   The name of the AWS Lambda function.
    #
    # @option params [String] :marker
    #   Optional string. An opaque pagination token returned from a previous
    #   `ListEventSources` operation. If present, specifies to continue the
    #   list from where the returning call left off.
    #
    # @option params [Integer] :max_items
    #   Optional integer. Specifies the maximum number of event sources to
    #   return in response. This value must be greater than 0.
    #
    # @return [Types::ListEventSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventSourcesResponse#next_marker #next_marker} => String
    #   * {Types::ListEventSourcesResponse#event_sources #event_sources} => Array&lt;Types::EventSourceConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_sources({
    #     event_source_arn: "String",
    #     function_name: "FunctionName",
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.event_sources #=> Array
    #   resp.event_sources[0].uuid #=> String
    #   resp.event_sources[0].batch_size #=> Integer
    #   resp.event_sources[0].event_source #=> String
    #   resp.event_sources[0].function_name #=> String
    #   resp.event_sources[0].parameters #=> Hash
    #   resp.event_sources[0].parameters["String"] #=> String
    #   resp.event_sources[0].role #=> String
    #   resp.event_sources[0].last_modified #=> Time
    #   resp.event_sources[0].is_active #=> Boolean
    #   resp.event_sources[0].status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/ListEventSources AWS API Documentation
    #
    # @overload list_event_sources(params = {})
    # @param [Hash] params ({})
    def list_event_sources(params = {}, options = {})
      req = build_request(:list_event_sources, params)
      req.send_request(options)
    end

    # Returns a list of your Lambda functions. For each function, the
    # response includes the function configuration information. You must use
    # GetFunction to retrieve the code for your function.
    #
    # This operation requires permission for the `lambda:ListFunctions`
    # action.
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions({
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
    #   resp.functions[0].configuration_id #=> String
    #   resp.functions[0].runtime #=> String, one of "nodejs"
    #   resp.functions[0].role #=> String
    #   resp.functions[0].handler #=> String
    #   resp.functions[0].mode #=> String, one of "event"
    #   resp.functions[0].code_size #=> Integer
    #   resp.functions[0].description #=> String
    #   resp.functions[0].timeout #=> Integer
    #   resp.functions[0].memory_size #=> Integer
    #   resp.functions[0].last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/ListFunctions AWS API Documentation
    #
    # @overload list_functions(params = {})
    # @param [Hash] params ({})
    def list_functions(params = {}, options = {})
      req = build_request(:list_functions, params)
      req.send_request(options)
    end

    # Removes an event source mapping. This means AWS Lambda will no longer
    # invoke the function for events in the associated source.
    #
    # This operation requires permission for the `lambda:RemoveEventSource`
    # action.
    #
    # @option params [required, String] :uuid
    #   The event source mapping ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_event_source({
    #     uuid: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/RemoveEventSource AWS API Documentation
    #
    # @overload remove_event_source(params = {})
    # @param [Hash] params ({})
    def remove_event_source(params = {}, options = {})
      req = build_request(:remove_event_source, params)
      req.send_request(options)
    end

    # Updates the configuration parameters for the specified Lambda function
    # by using the values provided in the request. You provide only the
    # parameters you want to change. This operation must only be used on an
    # existing Lambda function and cannot be used to update the function's
    # code.
    #
    # This operation requires permission for the
    # `lambda:UpdateFunctionConfiguration` action.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    # @option params [String] :role
    #   The Amazon Resource Name (ARN) of the IAM role that Lambda will assume
    #   when it executes your function.
    #
    # @option params [String] :handler
    #   The function that Lambda calls to begin executing your function. For
    #   Node.js, it is the *module-name.export* value in your function.
    #
    # @option params [String] :description
    #   A short user-defined function description. Lambda does not use this
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
    #   uses this memory size to infer the amount of CPU allocated to your
    #   function. Your function use-case determines your CPU and memory
    #   requirements. For example, a database operation might need less memory
    #   compared to an image processing function. The default value is 128 MB.
    #   The value must be a multiple of 64 MB.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#configuration_id #configuration_id} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#mode #mode} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
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
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.configuration_id #=> String
    #   resp.runtime #=> String, one of "nodejs"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.mode #=> String, one of "event"
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/UpdateFunctionConfiguration AWS API Documentation
    #
    # @overload update_function_configuration(params = {})
    # @param [Hash] params ({})
    def update_function_configuration(params = {}, options = {})
      req = build_request(:update_function_configuration, params)
      req.send_request(options)
    end

    # Creates a new Lambda function or updates an existing function. The
    # function metadata is created from the request parameters, and the code
    # for the function is provided by a .zip file in the request body. If
    # the function name already exists, the existing Lambda function is
    # updated with the new code and metadata.
    #
    # This operation requires permission for the `lambda:UploadFunction`
    # action.
    #
    # @option params [required, String] :function_name
    #   The name you want to assign to the function you are uploading. The
    #   function names appear in the console and are returned in the
    #   ListFunctions API. Function names are used to specify functions to
    #   other AWS Lambda APIs, such as InvokeAsync.
    #
    # @option params [required, String, IO] :function_zip
    #   A .zip file containing your packaged source code. For more information
    #   about creating a .zip file, go to [AWS LambdaL How it Works][1] in the
    #   AWS Lambda Developer Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/walkthrough-custom-events.html
    #
    # @option params [required, String] :runtime
    #   The runtime environment for the Lambda function you are uploading.
    #   Currently, Lambda supports only "nodejs" as the runtime.
    #
    # @option params [required, String] :role
    #   The Amazon Resource Name (ARN) of the IAM role that Lambda assumes
    #   when it executes your function to access any other Amazon Web Services
    #   (AWS) resources.
    #
    # @option params [required, String] :handler
    #   The function that Lambda calls to begin execution. For Node.js, it is
    #   the *module-name*.*export* value in your function.
    #
    # @option params [required, String] :mode
    #   How the Lambda function will be invoked. Lambda supports only the
    #   "event" mode.
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
    #   uses this memory size to infer the amount of CPU allocated to your
    #   function. Your function use-case determines your CPU and memory
    #   requirements. For example, database operation might need less memory
    #   compared to image processing function. The default value is 128 MB.
    #   The value must be a multiple of 64 MB.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#configuration_id #configuration_id} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#mode #mode} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_function({
    #     function_name: "FunctionName", # required
    #     function_zip: "data", # required
    #     runtime: "nodejs", # required, accepts nodejs
    #     role: "RoleArn", # required
    #     handler: "Handler", # required
    #     mode: "event", # required, accepts event
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.configuration_id #=> String
    #   resp.runtime #=> String, one of "nodejs"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.mode #=> String, one of "event"
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2014-11-11/UploadFunction AWS API Documentation
    #
    # @overload upload_function(params = {})
    # @param [Hash] params ({})
    def upload_function(params = {}, options = {})
      req = build_request(:upload_function, params)
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
      context[:gem_name] = 'aws-sdk-lambdapreview'
      context[:gem_version] = '1.3.0'
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
