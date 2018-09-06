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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:datapipeline)

module Aws::DataPipeline
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :datapipeline

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
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

    # Validates the specified pipeline and starts processing pipeline tasks.
    # If the pipeline does not pass validation, activation fails.
    #
    # If you need to pause the pipeline to investigate an issue with a
    # component, such as a data source or script, call DeactivatePipeline.
    #
    # To activate a finished pipeline, modify the end date for the pipeline
    # and then activate it.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @option params [Array<Types::ParameterValue>] :parameter_values
    #   A list of parameter values to pass to the pipeline at activation.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_timestamp
    #   The date and time to resume the pipeline. By default, the pipeline
    #   resumes from the last completed execution.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_pipeline({
    #     pipeline_id: "id", # required
    #     parameter_values: [
    #       {
    #         id: "fieldNameString", # required
    #         string_value: "fieldStringValue", # required
    #       },
    #     ],
    #     start_timestamp: Time.now,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ActivatePipeline AWS API Documentation
    #
    # @overload activate_pipeline(params = {})
    # @param [Hash] params ({})
    def activate_pipeline(params = {}, options = {})
      req = build_request(:activate_pipeline, params)
      req.send_request(options)
    end

    # Adds or modifies tags for the specified pipeline.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add, as key/value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     pipeline_id: "id", # required
    #     tags: [ # required
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Creates a new, empty pipeline. Use PutPipelineDefinition to populate
    # the pipeline.
    #
    # @option params [required, String] :name
    #   The name for the pipeline. You can use the same name for multiple
    #   pipelines associated with your AWS account, because AWS Data Pipeline
    #   assigns each pipeline a unique pipeline identifier.
    #
    # @option params [required, String] :unique_id
    #   A unique identifier. This identifier is not the same as the pipeline
    #   identifier assigned by AWS Data Pipeline. You are responsible for
    #   defining the format and ensuring the uniqueness of this identifier.
    #   You use this parameter to ensure idempotency during repeated calls to
    #   `CreatePipeline`. For example, if the first call to `CreatePipeline`
    #   does not succeed, you can pass in the same unique identifier and
    #   pipeline name combination on a subsequent call to `CreatePipeline`.
    #   `CreatePipeline` ensures that if a pipeline already exists with the
    #   same name and unique identifier, a new pipeline is not created.
    #   Instead, you'll receive the pipeline identifier from the previous
    #   attempt. The uniqueness of the name and unique identifier combination
    #   is scoped to the AWS account or IAM user credentials.
    #
    # @option params [String] :description
    #   The description for the pipeline.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to associate with the pipeline at creation. Tags let
    #   you control access to pipelines. For more information, see
    #   [Controlling User Access to Pipelines][1] in the *AWS Data Pipeline
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
    #
    # @return [Types::CreatePipelineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePipelineOutput#pipeline_id #pipeline_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipeline({
    #     name: "id", # required
    #     unique_id: "id", # required
    #     description: "string",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/CreatePipeline AWS API Documentation
    #
    # @overload create_pipeline(params = {})
    # @param [Hash] params ({})
    def create_pipeline(params = {}, options = {})
      req = build_request(:create_pipeline, params)
      req.send_request(options)
    end

    # Deactivates the specified running pipeline. The pipeline is set to the
    # `DEACTIVATING` state until the deactivation process completes.
    #
    # To resume a deactivated pipeline, use ActivatePipeline. By default,
    # the pipeline resumes from the last completed execution. Optionally,
    # you can specify the date and time to resume the pipeline.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @option params [Boolean] :cancel_active
    #   Indicates whether to cancel any running objects. The default is true,
    #   which sets the state of any running objects to `CANCELED`. If this
    #   value is false, the pipeline is deactivated after all running objects
    #   finish.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_pipeline({
    #     pipeline_id: "id", # required
    #     cancel_active: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DeactivatePipeline AWS API Documentation
    #
    # @overload deactivate_pipeline(params = {})
    # @param [Hash] params ({})
    def deactivate_pipeline(params = {}, options = {})
      req = build_request(:deactivate_pipeline, params)
      req.send_request(options)
    end

    # Deletes a pipeline, its pipeline definition, and its run history. AWS
    # Data Pipeline attempts to cancel instances associated with the
    # pipeline that are currently being processed by task runners.
    #
    # Deleting a pipeline cannot be undone. You cannot query or restore a
    # deleted pipeline. To temporarily pause a pipeline instead of deleting
    # it, call SetStatus with the status set to `PAUSE` on individual
    # components. Components that are paused by SetStatus can be resumed.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipeline({
    #     pipeline_id: "id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DeletePipeline AWS API Documentation
    #
    # @overload delete_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_pipeline(params = {}, options = {})
      req = build_request(:delete_pipeline, params)
      req.send_request(options)
    end

    # Gets the object definitions for a set of objects associated with the
    # pipeline. Object definitions are composed of a set of fields that
    # define the properties of the object.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline that contains the object definitions.
    #
    # @option params [required, Array<String>] :object_ids
    #   The IDs of the pipeline objects that contain the definitions to be
    #   described. You can pass as many as 25 identifiers in a single call to
    #   `DescribeObjects`.
    #
    # @option params [Boolean] :evaluate_expressions
    #   Indicates whether any expressions in the object should be evaluated
    #   when the object descriptions are returned.
    #
    # @option params [String] :marker
    #   The starting point for the results to be returned. For the first call,
    #   this value should be empty. As long as there are more results,
    #   continue to call `DescribeObjects` with the marker value from the
    #   previous call to retrieve the next set of results.
    #
    # @return [Types::DescribeObjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeObjectsOutput#pipeline_objects #pipeline_objects} => Array&lt;Types::PipelineObject&gt;
    #   * {Types::DescribeObjectsOutput#marker #marker} => String
    #   * {Types::DescribeObjectsOutput#has_more_results #has_more_results} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_objects({
    #     pipeline_id: "id", # required
    #     object_ids: ["id"], # required
    #     evaluate_expressions: false,
    #     marker: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_objects #=> Array
    #   resp.pipeline_objects[0].id #=> String
    #   resp.pipeline_objects[0].name #=> String
    #   resp.pipeline_objects[0].fields #=> Array
    #   resp.pipeline_objects[0].fields[0].key #=> String
    #   resp.pipeline_objects[0].fields[0].string_value #=> String
    #   resp.pipeline_objects[0].fields[0].ref_value #=> String
    #   resp.marker #=> String
    #   resp.has_more_results #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DescribeObjects AWS API Documentation
    #
    # @overload describe_objects(params = {})
    # @param [Hash] params ({})
    def describe_objects(params = {}, options = {})
      req = build_request(:describe_objects, params)
      req.send_request(options)
    end

    # Retrieves metadata about one or more pipelines. The information
    # retrieved includes the name of the pipeline, the pipeline identifier,
    # its current state, and the user account that owns the pipeline. Using
    # account credentials, you can retrieve metadata about pipelines that
    # you or your IAM users have created. If you are using an IAM user
    # account, you can retrieve metadata about only those pipelines for
    # which you have read permissions.
    #
    # To retrieve the full pipeline definition instead of metadata about the
    # pipeline, call GetPipelineDefinition.
    #
    # @option params [required, Array<String>] :pipeline_ids
    #   The IDs of the pipelines to describe. You can pass as many as 25
    #   identifiers in a single call. To obtain pipeline IDs, call
    #   ListPipelines.
    #
    # @return [Types::DescribePipelinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePipelinesOutput#pipeline_description_list #pipeline_description_list} => Array&lt;Types::PipelineDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pipelines({
    #     pipeline_ids: ["id"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_description_list #=> Array
    #   resp.pipeline_description_list[0].pipeline_id #=> String
    #   resp.pipeline_description_list[0].name #=> String
    #   resp.pipeline_description_list[0].fields #=> Array
    #   resp.pipeline_description_list[0].fields[0].key #=> String
    #   resp.pipeline_description_list[0].fields[0].string_value #=> String
    #   resp.pipeline_description_list[0].fields[0].ref_value #=> String
    #   resp.pipeline_description_list[0].description #=> String
    #   resp.pipeline_description_list[0].tags #=> Array
    #   resp.pipeline_description_list[0].tags[0].key #=> String
    #   resp.pipeline_description_list[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DescribePipelines AWS API Documentation
    #
    # @overload describe_pipelines(params = {})
    # @param [Hash] params ({})
    def describe_pipelines(params = {}, options = {})
      req = build_request(:describe_pipelines, params)
      req.send_request(options)
    end

    # Task runners call `EvaluateExpression` to evaluate a string in the
    # context of the specified object. For example, a task runner can
    # evaluate SQL queries stored in Amazon S3.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @option params [required, String] :object_id
    #   The ID of the object.
    #
    # @option params [required, String] :expression
    #   The expression to evaluate.
    #
    # @return [Types::EvaluateExpressionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EvaluateExpressionOutput#evaluated_expression #evaluated_expression} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.evaluate_expression({
    #     pipeline_id: "id", # required
    #     object_id: "id", # required
    #     expression: "longString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluated_expression #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/EvaluateExpression AWS API Documentation
    #
    # @overload evaluate_expression(params = {})
    # @param [Hash] params ({})
    def evaluate_expression(params = {}, options = {})
      req = build_request(:evaluate_expression, params)
      req.send_request(options)
    end

    # Gets the definition of the specified pipeline. You can call
    # `GetPipelineDefinition` to retrieve the pipeline definition that you
    # provided using PutPipelineDefinition.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @option params [String] :version
    #   The version of the pipeline definition to retrieve. Set this parameter
    #   to `latest` (default) to use the last definition saved to the pipeline
    #   or `active` to use the last definition that was activated.
    #
    # @return [Types::GetPipelineDefinitionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPipelineDefinitionOutput#pipeline_objects #pipeline_objects} => Array&lt;Types::PipelineObject&gt;
    #   * {Types::GetPipelineDefinitionOutput#parameter_objects #parameter_objects} => Array&lt;Types::ParameterObject&gt;
    #   * {Types::GetPipelineDefinitionOutput#parameter_values #parameter_values} => Array&lt;Types::ParameterValue&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline_definition({
    #     pipeline_id: "id", # required
    #     version: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_objects #=> Array
    #   resp.pipeline_objects[0].id #=> String
    #   resp.pipeline_objects[0].name #=> String
    #   resp.pipeline_objects[0].fields #=> Array
    #   resp.pipeline_objects[0].fields[0].key #=> String
    #   resp.pipeline_objects[0].fields[0].string_value #=> String
    #   resp.pipeline_objects[0].fields[0].ref_value #=> String
    #   resp.parameter_objects #=> Array
    #   resp.parameter_objects[0].id #=> String
    #   resp.parameter_objects[0].attributes #=> Array
    #   resp.parameter_objects[0].attributes[0].key #=> String
    #   resp.parameter_objects[0].attributes[0].string_value #=> String
    #   resp.parameter_values #=> Array
    #   resp.parameter_values[0].id #=> String
    #   resp.parameter_values[0].string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/GetPipelineDefinition AWS API Documentation
    #
    # @overload get_pipeline_definition(params = {})
    # @param [Hash] params ({})
    def get_pipeline_definition(params = {}, options = {})
      req = build_request(:get_pipeline_definition, params)
      req.send_request(options)
    end

    # Lists the pipeline identifiers for all active pipelines that you have
    # permission to access.
    #
    # @option params [String] :marker
    #   The starting point for the results to be returned. For the first call,
    #   this value should be empty. As long as there are more results,
    #   continue to call `ListPipelines` with the marker value from the
    #   previous call to retrieve the next set of results.
    #
    # @return [Types::ListPipelinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPipelinesOutput#pipeline_id_list #pipeline_id_list} => Array&lt;Types::PipelineIdName&gt;
    #   * {Types::ListPipelinesOutput#marker #marker} => String
    #   * {Types::ListPipelinesOutput#has_more_results #has_more_results} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipelines({
    #     marker: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_id_list #=> Array
    #   resp.pipeline_id_list[0].id #=> String
    #   resp.pipeline_id_list[0].name #=> String
    #   resp.marker #=> String
    #   resp.has_more_results #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ListPipelines AWS API Documentation
    #
    # @overload list_pipelines(params = {})
    # @param [Hash] params ({})
    def list_pipelines(params = {}, options = {})
      req = build_request(:list_pipelines, params)
      req.send_request(options)
    end

    # Task runners call `PollForTask` to receive a task to perform from AWS
    # Data Pipeline. The task runner specifies which tasks it can perform by
    # setting a value for the `workerGroup` parameter. The task returned can
    # come from any of the pipelines that match the `workerGroup` value
    # passed in by the task runner and that was launched using the IAM user
    # credentials specified by the task runner.
    #
    # If tasks are ready in the work queue, `PollForTask` returns a response
    # immediately. If no tasks are available in the queue, `PollForTask`
    # uses long-polling and holds on to a poll connection for up to a 90
    # seconds, during which time the first newly scheduled task is handed to
    # the task runner. To accomodate this, set the socket timeout in your
    # task runner to 90 seconds. The task runner should not call
    # `PollForTask` again on the same `workerGroup` until it receives a
    # response, and this can take up to 90 seconds.
    #
    # @option params [required, String] :worker_group
    #   The type of task the task runner is configured to accept and process.
    #   The worker group is set as a field on objects in the pipeline when
    #   they are created. You can only specify a single value for
    #   `workerGroup` in the call to `PollForTask`. There are no wildcard
    #   values permitted in `workerGroup`; the string must be an exact,
    #   case-sensitive, match.
    #
    # @option params [String] :hostname
    #   The public DNS name of the calling task runner.
    #
    # @option params [Types::InstanceIdentity] :instance_identity
    #   Identity information for the EC2 instance that is hosting the task
    #   runner. You can get this value from the instance using
    #   `http://169.254.169.254/latest/meta-data/instance-id`. For more
    #   information, see [Instance Metadata][1] in the *Amazon Elastic Compute
    #   Cloud User Guide.* Passing in this value proves that your task runner
    #   is running on an EC2 instance, and ensures the proper AWS Data
    #   Pipeline service charges are applied to your pipeline.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html
    #
    # @return [Types::PollForTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PollForTaskOutput#task_object #task_object} => Types::TaskObject
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.poll_for_task({
    #     worker_group: "string", # required
    #     hostname: "id",
    #     instance_identity: {
    #       document: "string",
    #       signature: "string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.task_object.task_id #=> String
    #   resp.task_object.pipeline_id #=> String
    #   resp.task_object.attempt_id #=> String
    #   resp.task_object.objects #=> Hash
    #   resp.task_object.objects["id"].id #=> String
    #   resp.task_object.objects["id"].name #=> String
    #   resp.task_object.objects["id"].fields #=> Array
    #   resp.task_object.objects["id"].fields[0].key #=> String
    #   resp.task_object.objects["id"].fields[0].string_value #=> String
    #   resp.task_object.objects["id"].fields[0].ref_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PollForTask AWS API Documentation
    #
    # @overload poll_for_task(params = {})
    # @param [Hash] params ({})
    def poll_for_task(params = {}, options = {})
      req = build_request(:poll_for_task, params)
      req.send_request(options)
    end

    # Adds tasks, schedules, and preconditions to the specified pipeline.
    # You can use `PutPipelineDefinition` to populate a new pipeline.
    #
    # `PutPipelineDefinition` also validates the configuration as it adds it
    # to the pipeline. Changes to the pipeline are saved unless one of the
    # following three validation errors exists in the pipeline.
    #
    # 1.  An object is missing a name or identifier field.
    # 2.  A string or reference field is empty.
    # 3.  The number of objects in the pipeline exceeds the maximum allowed
    #     objects.
    # 4.  The pipeline is in a FINISHED state.
    #
    # Pipeline object definitions are passed to the `PutPipelineDefinition`
    # action and returned by the GetPipelineDefinition action.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @option params [required, Array<Types::PipelineObject>] :pipeline_objects
    #   The objects that define the pipeline. These objects overwrite the
    #   existing pipeline definition.
    #
    # @option params [Array<Types::ParameterObject>] :parameter_objects
    #   The parameter objects used with the pipeline.
    #
    # @option params [Array<Types::ParameterValue>] :parameter_values
    #   The parameter values used with the pipeline.
    #
    # @return [Types::PutPipelineDefinitionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPipelineDefinitionOutput#validation_errors #validation_errors} => Array&lt;Types::ValidationError&gt;
    #   * {Types::PutPipelineDefinitionOutput#validation_warnings #validation_warnings} => Array&lt;Types::ValidationWarning&gt;
    #   * {Types::PutPipelineDefinitionOutput#errored #errored} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_pipeline_definition({
    #     pipeline_id: "id", # required
    #     pipeline_objects: [ # required
    #       {
    #         id: "id", # required
    #         name: "id", # required
    #         fields: [ # required
    #           {
    #             key: "fieldNameString", # required
    #             string_value: "fieldStringValue",
    #             ref_value: "fieldNameString",
    #           },
    #         ],
    #       },
    #     ],
    #     parameter_objects: [
    #       {
    #         id: "fieldNameString", # required
    #         attributes: [ # required
    #           {
    #             key: "attributeNameString", # required
    #             string_value: "attributeValueString", # required
    #           },
    #         ],
    #       },
    #     ],
    #     parameter_values: [
    #       {
    #         id: "fieldNameString", # required
    #         string_value: "fieldStringValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.validation_errors #=> Array
    #   resp.validation_errors[0].id #=> String
    #   resp.validation_errors[0].errors #=> Array
    #   resp.validation_errors[0].errors[0] #=> String
    #   resp.validation_warnings #=> Array
    #   resp.validation_warnings[0].id #=> String
    #   resp.validation_warnings[0].warnings #=> Array
    #   resp.validation_warnings[0].warnings[0] #=> String
    #   resp.errored #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PutPipelineDefinition AWS API Documentation
    #
    # @overload put_pipeline_definition(params = {})
    # @param [Hash] params ({})
    def put_pipeline_definition(params = {}, options = {})
      req = build_request(:put_pipeline_definition, params)
      req.send_request(options)
    end

    # Queries the specified pipeline for the names of objects that match the
    # specified set of conditions.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @option params [Types::Query] :query
    #   The query that defines the objects to be returned. The `Query` object
    #   can contain a maximum of ten selectors. The conditions in the query
    #   are limited to top-level String fields in the object. These filters
    #   can be applied to components, instances, and attempts.
    #
    # @option params [required, String] :sphere
    #   Indicates whether the query applies to components or instances. The
    #   possible values are: `COMPONENT`, `INSTANCE`, and `ATTEMPT`.
    #
    # @option params [String] :marker
    #   The starting point for the results to be returned. For the first call,
    #   this value should be empty. As long as there are more results,
    #   continue to call `QueryObjects` with the marker value from the
    #   previous call to retrieve the next set of results.
    #
    # @option params [Integer] :limit
    #   The maximum number of object names that `QueryObjects` will return in
    #   a single call. The default value is 100.
    #
    # @return [Types::QueryObjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryObjectsOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::QueryObjectsOutput#marker #marker} => String
    #   * {Types::QueryObjectsOutput#has_more_results #has_more_results} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_objects({
    #     pipeline_id: "id", # required
    #     query: {
    #       selectors: [
    #         {
    #           field_name: "string",
    #           operator: {
    #             type: "EQ", # accepts EQ, REF_EQ, LE, GE, BETWEEN
    #             values: ["string"],
    #           },
    #         },
    #       ],
    #     },
    #     sphere: "string", # required
    #     marker: "string",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.marker #=> String
    #   resp.has_more_results #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/QueryObjects AWS API Documentation
    #
    # @overload query_objects(params = {})
    # @param [Hash] params ({})
    def query_objects(params = {}, options = {})
      req = build_request(:query_objects, params)
      req.send_request(options)
    end

    # Removes existing tags from the specified pipeline.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     pipeline_id: "id", # required
    #     tag_keys: ["string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Task runners call `ReportTaskProgress` when assigned a task to
    # acknowledge that it has the task. If the web service does not receive
    # this acknowledgement within 2 minutes, it assigns the task in a
    # subsequent PollForTask call. After this initial acknowledgement, the
    # task runner only needs to report progress every 15 minutes to maintain
    # its ownership of the task. You can change this reporting time from 15
    # minutes by specifying a `reportProgressTimeout` field in your
    # pipeline.
    #
    # If a task runner does not report its status after 5 minutes, AWS Data
    # Pipeline assumes that the task runner is unable to process the task
    # and reassigns the task in a subsequent response to PollForTask. Task
    # runners should call `ReportTaskProgress` every 60 seconds.
    #
    # @option params [required, String] :task_id
    #   The ID of the task assigned to the task runner. This value is provided
    #   in the response for PollForTask.
    #
    # @option params [Array<Types::Field>] :fields
    #   Key-value pairs that define the properties of the
    #   ReportTaskProgressInput object.
    #
    # @return [Types::ReportTaskProgressOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReportTaskProgressOutput#canceled #canceled} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.report_task_progress({
    #     task_id: "taskId", # required
    #     fields: [
    #       {
    #         key: "fieldNameString", # required
    #         string_value: "fieldStringValue",
    #         ref_value: "fieldNameString",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.canceled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ReportTaskProgress AWS API Documentation
    #
    # @overload report_task_progress(params = {})
    # @param [Hash] params ({})
    def report_task_progress(params = {}, options = {})
      req = build_request(:report_task_progress, params)
      req.send_request(options)
    end

    # Task runners call `ReportTaskRunnerHeartbeat` every 15 minutes to
    # indicate that they are operational. If the AWS Data Pipeline Task
    # Runner is launched on a resource managed by AWS Data Pipeline, the web
    # service can use this call to detect when the task runner application
    # has failed and restart a new instance.
    #
    # @option params [required, String] :taskrunner_id
    #   The ID of the task runner. This value should be unique across your AWS
    #   account. In the case of AWS Data Pipeline Task Runner launched on a
    #   resource managed by AWS Data Pipeline, the web service provides a
    #   unique identifier when it launches the application. If you have
    #   written a custom task runner, you should assign a unique identifier
    #   for the task runner.
    #
    # @option params [String] :worker_group
    #   The type of task the task runner is configured to accept and process.
    #   The worker group is set as a field on objects in the pipeline when
    #   they are created. You can only specify a single value for
    #   `workerGroup`. There are no wildcard values permitted in
    #   `workerGroup`; the string must be an exact, case-sensitive, match.
    #
    # @option params [String] :hostname
    #   The public DNS name of the task runner.
    #
    # @return [Types::ReportTaskRunnerHeartbeatOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReportTaskRunnerHeartbeatOutput#terminate #terminate} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.report_task_runner_heartbeat({
    #     taskrunner_id: "id", # required
    #     worker_group: "string",
    #     hostname: "id",
    #   })
    #
    # @example Response structure
    #
    #   resp.terminate #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ReportTaskRunnerHeartbeat AWS API Documentation
    #
    # @overload report_task_runner_heartbeat(params = {})
    # @param [Hash] params ({})
    def report_task_runner_heartbeat(params = {}, options = {})
      req = build_request(:report_task_runner_heartbeat, params)
      req.send_request(options)
    end

    # Requests that the status of the specified physical or logical pipeline
    # objects be updated in the specified pipeline. This update might not
    # occur immediately, but is eventually consistent. The status that can
    # be set depends on the type of object (for example, DataNode or
    # Activity). You cannot perform this operation on `FINISHED` pipelines
    # and attempting to do so returns `InvalidRequestException`.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline that contains the objects.
    #
    # @option params [required, Array<String>] :object_ids
    #   The IDs of the objects. The corresponding objects can be either
    #   physical or components, but not a mix of both types.
    #
    # @option params [required, String] :status
    #   The status to be set on all the objects specified in `objectIds`. For
    #   components, use `PAUSE` or `RESUME`. For instances, use `TRY_CANCEL`,
    #   `RERUN`, or `MARK_FINISHED`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_status({
    #     pipeline_id: "id", # required
    #     object_ids: ["id"], # required
    #     status: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/SetStatus AWS API Documentation
    #
    # @overload set_status(params = {})
    # @param [Hash] params ({})
    def set_status(params = {}, options = {})
      req = build_request(:set_status, params)
      req.send_request(options)
    end

    # Task runners call `SetTaskStatus` to notify AWS Data Pipeline that a
    # task is completed and provide information about the final status. A
    # task runner makes this call regardless of whether the task was
    # sucessful. A task runner does not need to call `SetTaskStatus` for
    # tasks that are canceled by the web service during a call to
    # ReportTaskProgress.
    #
    # @option params [required, String] :task_id
    #   The ID of the task assigned to the task runner. This value is provided
    #   in the response for PollForTask.
    #
    # @option params [required, String] :task_status
    #   If `FINISHED`, the task successfully completed. If `FAILED`, the task
    #   ended unsuccessfully. Preconditions use false.
    #
    # @option params [String] :error_id
    #   If an error occurred during the task, this value specifies the error
    #   code. This value is set on the physical attempt object. It is used to
    #   display error information to the user. It should not start with string
    #   "Service\_" which is reserved by the system.
    #
    # @option params [String] :error_message
    #   If an error occurred during the task, this value specifies a text
    #   description of the error. This value is set on the physical attempt
    #   object. It is used to display error information to the user. The web
    #   service does not parse this value.
    #
    # @option params [String] :error_stack_trace
    #   If an error occurred during the task, this value specifies the stack
    #   trace associated with the error. This value is set on the physical
    #   attempt object. It is used to display error information to the user.
    #   The web service does not parse this value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_task_status({
    #     task_id: "taskId", # required
    #     task_status: "FINISHED", # required, accepts FINISHED, FAILED, FALSE
    #     error_id: "string",
    #     error_message: "errorMessage",
    #     error_stack_trace: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/SetTaskStatus AWS API Documentation
    #
    # @overload set_task_status(params = {})
    # @param [Hash] params ({})
    def set_task_status(params = {}, options = {})
      req = build_request(:set_task_status, params)
      req.send_request(options)
    end

    # Validates the specified pipeline definition to ensure that it is well
    # formed and can be run without error.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline.
    #
    # @option params [required, Array<Types::PipelineObject>] :pipeline_objects
    #   The objects that define the pipeline changes to validate against the
    #   pipeline.
    #
    # @option params [Array<Types::ParameterObject>] :parameter_objects
    #   The parameter objects used with the pipeline.
    #
    # @option params [Array<Types::ParameterValue>] :parameter_values
    #   The parameter values used with the pipeline.
    #
    # @return [Types::ValidatePipelineDefinitionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidatePipelineDefinitionOutput#validation_errors #validation_errors} => Array&lt;Types::ValidationError&gt;
    #   * {Types::ValidatePipelineDefinitionOutput#validation_warnings #validation_warnings} => Array&lt;Types::ValidationWarning&gt;
    #   * {Types::ValidatePipelineDefinitionOutput#errored #errored} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_pipeline_definition({
    #     pipeline_id: "id", # required
    #     pipeline_objects: [ # required
    #       {
    #         id: "id", # required
    #         name: "id", # required
    #         fields: [ # required
    #           {
    #             key: "fieldNameString", # required
    #             string_value: "fieldStringValue",
    #             ref_value: "fieldNameString",
    #           },
    #         ],
    #       },
    #     ],
    #     parameter_objects: [
    #       {
    #         id: "fieldNameString", # required
    #         attributes: [ # required
    #           {
    #             key: "attributeNameString", # required
    #             string_value: "attributeValueString", # required
    #           },
    #         ],
    #       },
    #     ],
    #     parameter_values: [
    #       {
    #         id: "fieldNameString", # required
    #         string_value: "fieldStringValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.validation_errors #=> Array
    #   resp.validation_errors[0].id #=> String
    #   resp.validation_errors[0].errors #=> Array
    #   resp.validation_errors[0].errors[0] #=> String
    #   resp.validation_warnings #=> Array
    #   resp.validation_warnings[0].id #=> String
    #   resp.validation_warnings[0].warnings #=> Array
    #   resp.validation_warnings[0].warnings[0] #=> String
    #   resp.errored #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ValidatePipelineDefinition AWS API Documentation
    #
    # @overload validate_pipeline_definition(params = {})
    # @param [Hash] params ({})
    def validate_pipeline_definition(params = {}, options = {})
      req = build_request(:validate_pipeline_definition, params)
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
      context[:gem_name] = 'aws-sdk-datapipeline'
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
