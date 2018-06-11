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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:xray)

module Aws::XRay
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :xray

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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
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

    # Retrieves a list of traces specified by ID. Each trace is a collection
    # of segment documents that originates from a single request. Use
    # `GetTraceSummaries` to get a list of trace IDs.
    #
    # @option params [required, Array<String>] :trace_ids
    #   Specify the trace IDs of requests for which to retrieve segments.
    #
    # @option params [String] :next_token
    #   Pagination token. Not used.
    #
    # @return [Types::BatchGetTracesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetTracesResult#traces #traces} => Array&lt;Types::Trace&gt;
    #   * {Types::BatchGetTracesResult#unprocessed_trace_ids #unprocessed_trace_ids} => Array&lt;String&gt;
    #   * {Types::BatchGetTracesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_traces({
    #     trace_ids: ["TraceId"], # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.traces #=> Array
    #   resp.traces[0].id #=> String
    #   resp.traces[0].duration #=> Float
    #   resp.traces[0].segments #=> Array
    #   resp.traces[0].segments[0].id #=> String
    #   resp.traces[0].segments[0].document #=> String
    #   resp.unprocessed_trace_ids #=> Array
    #   resp.unprocessed_trace_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BatchGetTraces AWS API Documentation
    #
    # @overload batch_get_traces(params = {})
    # @param [Hash] params ({})
    def batch_get_traces(params = {}, options = {})
      req = build_request(:batch_get_traces, params)
      req.send_request(options)
    end

    # Retrieves the current encryption configuration for X-Ray data.
    #
    # @return [Types::GetEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEncryptionConfigResult#encryption_config #encryption_config} => Types::EncryptionConfig
    #
    # @example Response structure
    #
    #   resp.encryption_config.key_id #=> String
    #   resp.encryption_config.status #=> String, one of "UPDATING", "ACTIVE"
    #   resp.encryption_config.type #=> String, one of "NONE", "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetEncryptionConfig AWS API Documentation
    #
    # @overload get_encryption_config(params = {})
    # @param [Hash] params ({})
    def get_encryption_config(params = {}, options = {})
      req = build_request(:get_encryption_config, params)
      req.send_request(options)
    end

    # Retrieves a document that describes services that process incoming
    # requests, and downstream services that they call as a result. Root
    # services process incoming requests and make calls to downstream
    # services. Root services are applications that use the AWS X-Ray SDK.
    # Downstream services can be other applications, AWS resources, HTTP web
    # APIs, or SQL databases.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time frame for which to generate a graph.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time frame for which to generate a graph.
    #
    # @option params [String] :next_token
    #   Pagination token. Not used.
    #
    # @return [Types::GetServiceGraphResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceGraphResult#start_time #start_time} => Time
    #   * {Types::GetServiceGraphResult#end_time #end_time} => Time
    #   * {Types::GetServiceGraphResult#services #services} => Array&lt;Types::Service&gt;
    #   * {Types::GetServiceGraphResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_graph({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.services #=> Array
    #   resp.services[0].reference_id #=> Integer
    #   resp.services[0].name #=> String
    #   resp.services[0].names #=> Array
    #   resp.services[0].names[0] #=> String
    #   resp.services[0].root #=> Boolean
    #   resp.services[0].account_id #=> String
    #   resp.services[0].type #=> String
    #   resp.services[0].state #=> String
    #   resp.services[0].start_time #=> Time
    #   resp.services[0].end_time #=> Time
    #   resp.services[0].edges #=> Array
    #   resp.services[0].edges[0].reference_id #=> Integer
    #   resp.services[0].edges[0].start_time #=> Time
    #   resp.services[0].edges[0].end_time #=> Time
    #   resp.services[0].edges[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].edges[0].response_time_histogram #=> Array
    #   resp.services[0].edges[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].edges[0].response_time_histogram[0].count #=> Integer
    #   resp.services[0].edges[0].aliases #=> Array
    #   resp.services[0].edges[0].aliases[0].name #=> String
    #   resp.services[0].edges[0].aliases[0].names #=> Array
    #   resp.services[0].edges[0].aliases[0].names[0] #=> String
    #   resp.services[0].edges[0].aliases[0].type #=> String
    #   resp.services[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].duration_histogram #=> Array
    #   resp.services[0].duration_histogram[0].value #=> Float
    #   resp.services[0].duration_histogram[0].count #=> Integer
    #   resp.services[0].response_time_histogram #=> Array
    #   resp.services[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].response_time_histogram[0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetServiceGraph AWS API Documentation
    #
    # @overload get_service_graph(params = {})
    # @param [Hash] params ({})
    def get_service_graph(params = {}, options = {})
      req = build_request(:get_service_graph, params)
      req.send_request(options)
    end

    # Retrieves a service graph for one or more specific trace IDs.
    #
    # @option params [required, Array<String>] :trace_ids
    #   Trace IDs of requests for which to generate a service graph.
    #
    # @option params [String] :next_token
    #   Pagination token. Not used.
    #
    # @return [Types::GetTraceGraphResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTraceGraphResult#services #services} => Array&lt;Types::Service&gt;
    #   * {Types::GetTraceGraphResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trace_graph({
    #     trace_ids: ["TraceId"], # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].reference_id #=> Integer
    #   resp.services[0].name #=> String
    #   resp.services[0].names #=> Array
    #   resp.services[0].names[0] #=> String
    #   resp.services[0].root #=> Boolean
    #   resp.services[0].account_id #=> String
    #   resp.services[0].type #=> String
    #   resp.services[0].state #=> String
    #   resp.services[0].start_time #=> Time
    #   resp.services[0].end_time #=> Time
    #   resp.services[0].edges #=> Array
    #   resp.services[0].edges[0].reference_id #=> Integer
    #   resp.services[0].edges[0].start_time #=> Time
    #   resp.services[0].edges[0].end_time #=> Time
    #   resp.services[0].edges[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].edges[0].response_time_histogram #=> Array
    #   resp.services[0].edges[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].edges[0].response_time_histogram[0].count #=> Integer
    #   resp.services[0].edges[0].aliases #=> Array
    #   resp.services[0].edges[0].aliases[0].name #=> String
    #   resp.services[0].edges[0].aliases[0].names #=> Array
    #   resp.services[0].edges[0].aliases[0].names[0] #=> String
    #   resp.services[0].edges[0].aliases[0].type #=> String
    #   resp.services[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].duration_histogram #=> Array
    #   resp.services[0].duration_histogram[0].value #=> Float
    #   resp.services[0].duration_histogram[0].count #=> Integer
    #   resp.services[0].response_time_histogram #=> Array
    #   resp.services[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].response_time_histogram[0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceGraph AWS API Documentation
    #
    # @overload get_trace_graph(params = {})
    # @param [Hash] params ({})
    def get_trace_graph(params = {}, options = {})
      req = build_request(:get_trace_graph, params)
      req.send_request(options)
    end

    # Retrieves IDs and metadata for traces available for a specified time
    # frame using an optional filter. To get the full traces, pass the trace
    # IDs to `BatchGetTraces`.
    #
    # A filter expression can target traced requests that hit specific
    # service nodes or edges, have errors, or come from a known user. For
    # example, the following filter expression targets traces that pass
    # through `api.example.com`\:
    #
    # `service("api.example.com")`
    #
    # This filter expression finds traces that have an annotation named
    # `account` with the value `12345`\:
    #
    # `annotation.account = "12345"`
    #
    # For a full list of indexed fields and keywords that you can use in
    # filter expressions, see [Using Filter Expressions][1] in the *AWS
    # X-Ray Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time frame for which to retrieve traces.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time frame for which to retrieve traces.
    #
    # @option params [Boolean] :sampling
    #   Set to `true` to get summaries for only a subset of available traces.
    #
    # @option params [String] :filter_expression
    #   Specify a filter expression to retrieve trace summaries for services
    #   or requests that meet certain requirements.
    #
    # @option params [String] :next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::GetTraceSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTraceSummariesResult#trace_summaries #trace_summaries} => Array&lt;Types::TraceSummary&gt;
    #   * {Types::GetTraceSummariesResult#approximate_time #approximate_time} => Time
    #   * {Types::GetTraceSummariesResult#traces_processed_count #traces_processed_count} => Integer
    #   * {Types::GetTraceSummariesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trace_summaries({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     sampling: false,
    #     filter_expression: "FilterExpression",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.trace_summaries #=> Array
    #   resp.trace_summaries[0].id #=> String
    #   resp.trace_summaries[0].duration #=> Float
    #   resp.trace_summaries[0].response_time #=> Float
    #   resp.trace_summaries[0].has_fault #=> Boolean
    #   resp.trace_summaries[0].has_error #=> Boolean
    #   resp.trace_summaries[0].has_throttle #=> Boolean
    #   resp.trace_summaries[0].is_partial #=> Boolean
    #   resp.trace_summaries[0].http.http_url #=> String
    #   resp.trace_summaries[0].http.http_status #=> Integer
    #   resp.trace_summaries[0].http.http_method #=> String
    #   resp.trace_summaries[0].http.user_agent #=> String
    #   resp.trace_summaries[0].http.client_ip #=> String
    #   resp.trace_summaries[0].annotations #=> Hash
    #   resp.trace_summaries[0].annotations["AnnotationKey"] #=> Array
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].annotation_value.number_value #=> Float
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].annotation_value.boolean_value #=> Boolean
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].annotation_value.string_value #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids #=> Array
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].name #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].names #=> Array
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].names[0] #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].account_id #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].type #=> String
    #   resp.trace_summaries[0].users #=> Array
    #   resp.trace_summaries[0].users[0].user_name #=> String
    #   resp.trace_summaries[0].users[0].service_ids #=> Array
    #   resp.trace_summaries[0].users[0].service_ids[0].name #=> String
    #   resp.trace_summaries[0].users[0].service_ids[0].names #=> Array
    #   resp.trace_summaries[0].users[0].service_ids[0].names[0] #=> String
    #   resp.trace_summaries[0].users[0].service_ids[0].account_id #=> String
    #   resp.trace_summaries[0].users[0].service_ids[0].type #=> String
    #   resp.trace_summaries[0].service_ids #=> Array
    #   resp.trace_summaries[0].service_ids[0].name #=> String
    #   resp.trace_summaries[0].service_ids[0].names #=> Array
    #   resp.trace_summaries[0].service_ids[0].names[0] #=> String
    #   resp.trace_summaries[0].service_ids[0].account_id #=> String
    #   resp.trace_summaries[0].service_ids[0].type #=> String
    #   resp.approximate_time #=> Time
    #   resp.traces_processed_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceSummaries AWS API Documentation
    #
    # @overload get_trace_summaries(params = {})
    # @param [Hash] params ({})
    def get_trace_summaries(params = {}, options = {})
      req = build_request(:get_trace_summaries, params)
      req.send_request(options)
    end

    # Updates the encryption configuration for X-Ray data.
    #
    # @option params [String] :key_id
    #   An AWS KMS customer master key (CMK) in one of the following formats:
    #
    #   * **Alias** - The name of the key. For example, `alias/MyKey`.
    #
    #   * **Key ID** - The KMS key ID of the key. For example,
    #     `ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`.
    #
    #   * **ARN** - The full Amazon Resource Name of the key ID or alias. For
    #     example,
    #     `arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`.
    #     Use this format to specify a key in a different account.
    #
    #   Omit this key if you set `Type` to `NONE`.
    #
    # @option params [required, String] :type
    #   The type of encryption. Set to `KMS` to use your own key for
    #   encryption. Set to `NONE` for default encryption.
    #
    # @return [Types::PutEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEncryptionConfigResult#encryption_config #encryption_config} => Types::EncryptionConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_encryption_config({
    #     key_id: "EncryptionKeyId",
    #     type: "NONE", # required, accepts NONE, KMS
    #   })
    #
    # @example Response structure
    #
    #   resp.encryption_config.key_id #=> String
    #   resp.encryption_config.status #=> String, one of "UPDATING", "ACTIVE"
    #   resp.encryption_config.type #=> String, one of "NONE", "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutEncryptionConfig AWS API Documentation
    #
    # @overload put_encryption_config(params = {})
    # @param [Hash] params ({})
    def put_encryption_config(params = {}, options = {})
      req = build_request(:put_encryption_config, params)
      req.send_request(options)
    end

    # Used by the AWS X-Ray daemon to upload telemetry.
    #
    # @option params [required, Array<Types::TelemetryRecord>] :telemetry_records
    #
    # @option params [String] :ec2_instance_id
    #
    # @option params [String] :hostname
    #
    # @option params [String] :resource_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_telemetry_records({
    #     telemetry_records: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         segments_received_count: 1,
    #         segments_sent_count: 1,
    #         segments_spillover_count: 1,
    #         segments_rejected_count: 1,
    #         backend_connection_errors: {
    #           timeout_count: 1,
    #           connection_refused_count: 1,
    #           http_code_4_xx_count: 1,
    #           http_code_5_xx_count: 1,
    #           unknown_host_count: 1,
    #           other_count: 1,
    #         },
    #       },
    #     ],
    #     ec2_instance_id: "EC2InstanceId",
    #     hostname: "Hostname",
    #     resource_arn: "ResourceARN",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTelemetryRecords AWS API Documentation
    #
    # @overload put_telemetry_records(params = {})
    # @param [Hash] params ({})
    def put_telemetry_records(params = {}, options = {})
      req = build_request(:put_telemetry_records, params)
      req.send_request(options)
    end

    # Uploads segment documents to AWS X-Ray. The X-Ray SDK generates
    # segment documents and sends them to the X-Ray daemon, which uploads
    # them in batches. A segment document can be a completed segment, an
    # in-progress segment, or an array of subsegments.
    #
    # Segments must include the following fields. For the full segment
    # document schema, see [AWS X-Ray Segment Documents][1] in the *AWS
    # X-Ray Developer Guide*.
    #
    # **Required Segment Document Fields**
    #
    # * `name` - The name of the service that handled the request.
    #
    # * `id` - A 64-bit identifier for the segment, unique among segments in
    #   the same trace, in 16 hexadecimal digits.
    #
    # * `trace_id` - A unique identifier that connects all segments and
    #   subsegments originating from a single client request.
    #
    # * `start_time` - Time the segment or subsegment was created, in
    #   floating point seconds in epoch time, accurate to milliseconds. For
    #   example, `1480615200.010` or `1.480615200010E9`.
    #
    # * `end_time` - Time the segment or subsegment was closed. For example,
    #   `1480615200.090` or `1.480615200090E9`. Specify either an `end_time`
    #   or `in_progress`.
    #
    # * `in_progress` - Set to `true` instead of specifying an `end_time` to
    #   record that a segment has been started, but is not complete. Send an
    #   in progress segment when your application receives a request that
    #   will take a long time to serve, to trace the fact that the request
    #   was received. When the response is sent, send the complete segment
    #   to overwrite the in-progress segment.
    #
    # A `trace_id` consists of three numbers separated by hyphens. For
    # example, 1-58406520-a006649127e371903a2de979. This includes:
    #
    # **Trace ID Format**
    #
    # * The version number, i.e. `1`.
    #
    # * The time of the original request, in Unix epoch time, in 8
    #   hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in
    #   epoch time is `1480615200` seconds, or `58406520` in hexadecimal.
    #
    # * A 96-bit identifier for the trace, globally unique, in 24
    #   hexadecimal digits.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html
    #
    # @option params [required, Array<String>] :trace_segment_documents
    #   A string containing a JSON document defining one or more segments or
    #   subsegments.
    #
    # @return [Types::PutTraceSegmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutTraceSegmentsResult#unprocessed_trace_segments #unprocessed_trace_segments} => Array&lt;Types::UnprocessedTraceSegment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_trace_segments({
    #     trace_segment_documents: ["TraceSegmentDocument"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_trace_segments #=> Array
    #   resp.unprocessed_trace_segments[0].id #=> String
    #   resp.unprocessed_trace_segments[0].error_code #=> String
    #   resp.unprocessed_trace_segments[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTraceSegments AWS API Documentation
    #
    # @overload put_trace_segments(params = {})
    # @param [Hash] params ({})
    def put_trace_segments(params = {}, options = {})
      req = build_request(:put_trace_segments, params)
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
      context[:gem_name] = 'aws-sdk-xray'
      context[:gem_version] = '1.2.0'
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
