# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotthingsgraph)

module Aws::IoTThingsGraph
  # An API client for IoTThingsGraph.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTThingsGraph::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :iotthingsgraph

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates a device with a concrete thing that is in the user's
    # registry.
    #
    # A thing can be associated with only one device at a time. If you
    # associate a thing with a new device id, its previous association will
    # be removed.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing to which the entity is to be associated.
    #
    # @option params [required, String] :entity_id
    #   The ID of the device to be associated with the thing.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME`
    #
    # @option params [Integer] :namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_entity_to_thing({
    #     thing_name: "ThingName", # required
    #     entity_id: "Urn", # required
    #     namespace_version: 1,
    #   })
    #
    # @overload associate_entity_to_thing(params = {})
    # @param [Hash] params ({})
    def associate_entity_to_thing(params = {}, options = {})
      req = build_request(:associate_entity_to_thing, params)
      req.send_request(options)
    end

    # Creates a workflow template. Workflows can be created only in the
    # user's namespace. (The public namespace contains only entities.) The
    # workflow can contain only entities in the specified namespace. The
    # workflow is validated against the entities in the latest version of
    # the user's namespace unless another namespace version is specified in
    # the request.
    #
    # @option params [required, Types::DefinitionDocument] :definition
    #   The workflow `DefinitionDocument`.
    #
    # @option params [Integer] :compatible_namespace_version
    #   The namespace version in which the workflow is to be created.
    #
    #   If no value is specified, the latest version is used by default.
    #
    # @return [Types::CreateFlowTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFlowTemplateResponse#summary #summary} => Types::FlowTemplateSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow_template({
    #     definition: { # required
    #       language: "GRAPHQL", # required, accepts GRAPHQL
    #       text: "DefinitionText", # required
    #     },
    #     compatible_namespace_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.id #=> String
    #   resp.summary.arn #=> String
    #   resp.summary.revision_number #=> Integer
    #   resp.summary.created_at #=> Time
    #
    # @overload create_flow_template(params = {})
    # @param [Hash] params ({})
    def create_flow_template(params = {}, options = {})
      req = build_request(:create_flow_template, params)
      req.send_request(options)
    end

    # Creates a system instance.
    #
    # This action validates the system instance, prepares the
    # deployment-related resources. For Greengrass deployments, it updates
    # the Greengrass group that is specified by the `greengrassGroupName`
    # parameter. It also adds a file to the S3 bucket specified by the
    # `s3BucketName` parameter. You need to call `DeploySystemInstance`
    # after running this action.
    #
    # For Greengrass deployments, since this action modifies and adds
    # resources to a Greengrass group and an S3 bucket on the caller's
    # behalf, the calling identity must have write permissions to both the
    # specified Greengrass group and S3 bucket. Otherwise, the call will
    # fail with an authorization error.
    #
    # For cloud deployments, this action requires a `flowActionsRoleArn`
    # value. This is an IAM role that has permissions to access AWS
    # services, such as AWS Lambda and AWS IoT, that the flow uses when it
    # executes.
    #
    # If the definition document doesn't specify a version of the user's
    # namespace, the latest version will be used by default.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata, consisting of key-value pairs, that can be used to
    #   categorize your system instances.
    #
    # @option params [required, Types::DefinitionDocument] :definition
    #   A document that defines an entity.
    #
    # @option params [required, String] :target
    #   The target type of the deployment. Valid values are `GREENGRASS` and
    #   `CLOUD`.
    #
    # @option params [String] :greengrass_group_name
    #   The name of the Greengrass group where the system instance will be
    #   deployed. This value is required if the value of the `target`
    #   parameter is `GREENGRASS`.
    #
    # @option params [String] :s3_bucket_name
    #   The name of the Amazon Simple Storage Service bucket that will be used
    #   to store and deploy the system instance's resource file. This value
    #   is required if the value of the `target` parameter is `GREENGRASS`.
    #
    # @option params [Types::MetricsConfiguration] :metrics_configuration
    #   An object that specifies whether cloud metrics are collected in a
    #   deployment and, if so, what role is used to collect metrics.
    #
    # @option params [String] :flow_actions_role_arn
    #   The ARN of the IAM role that AWS IoT Things Graph will assume when it
    #   executes the flow. This role must have read and write access to AWS
    #   Lambda and AWS IoT and any other AWS services that the flow uses when
    #   it executes. This value is required if the value of the `target`
    #   parameter is `CLOUD`.
    #
    # @return [Types::CreateSystemInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSystemInstanceResponse#summary #summary} => Types::SystemInstanceSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_system_instance({
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     definition: { # required
    #       language: "GRAPHQL", # required, accepts GRAPHQL
    #       text: "DefinitionText", # required
    #     },
    #     target: "GREENGRASS", # required, accepts GREENGRASS, CLOUD
    #     greengrass_group_name: "GroupName",
    #     s3_bucket_name: "S3BucketName",
    #     metrics_configuration: {
    #       cloud_metric_enabled: false,
    #       metric_rule_role_arn: "RoleArn",
    #     },
    #     flow_actions_role_arn: "RoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.id #=> String
    #   resp.summary.arn #=> String
    #   resp.summary.status #=> String, one of "NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"
    #   resp.summary.target #=> String, one of "GREENGRASS", "CLOUD"
    #   resp.summary.greengrass_group_name #=> String
    #   resp.summary.created_at #=> Time
    #   resp.summary.updated_at #=> Time
    #   resp.summary.greengrass_group_id #=> String
    #   resp.summary.greengrass_group_version_id #=> String
    #
    # @overload create_system_instance(params = {})
    # @param [Hash] params ({})
    def create_system_instance(params = {}, options = {})
      req = build_request(:create_system_instance, params)
      req.send_request(options)
    end

    # Creates a system. The system is validated against the entities in the
    # latest version of the user's namespace unless another namespace
    # version is specified in the request.
    #
    # @option params [required, Types::DefinitionDocument] :definition
    #   The `DefinitionDocument` used to create the system.
    #
    # @option params [Integer] :compatible_namespace_version
    #   The namespace version in which the system is to be created.
    #
    #   If no value is specified, the latest version is used by default.
    #
    # @return [Types::CreateSystemTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSystemTemplateResponse#summary #summary} => Types::SystemTemplateSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_system_template({
    #     definition: { # required
    #       language: "GRAPHQL", # required, accepts GRAPHQL
    #       text: "DefinitionText", # required
    #     },
    #     compatible_namespace_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.id #=> String
    #   resp.summary.arn #=> String
    #   resp.summary.revision_number #=> Integer
    #   resp.summary.created_at #=> Time
    #
    # @overload create_system_template(params = {})
    # @param [Hash] params ({})
    def create_system_template(params = {}, options = {})
      req = build_request(:create_system_template, params)
      req.send_request(options)
    end

    # Deletes a workflow. Any new system or deployment that contains this
    # workflow will fail to update or deploy. Existing deployments that
    # contain the workflow will continue to run (since they use a snapshot
    # of the workflow taken at the time of deployment).
    #
    # @option params [required, String] :id
    #   The ID of the workflow to be deleted.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow_template({
    #     id: "Urn", # required
    #   })
    #
    # @overload delete_flow_template(params = {})
    # @param [Hash] params ({})
    def delete_flow_template(params = {}, options = {})
      req = build_request(:delete_flow_template, params)
      req.send_request(options)
    end

    # Deletes the specified namespace. This action deletes all of the
    # entities in the namespace. Delete the systems and flows that use
    # entities in the namespace before performing this action.
    #
    # @return [Types::DeleteNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNamespaceResponse#namespace_arn #namespace_arn} => String
    #   * {Types::DeleteNamespaceResponse#namespace_name #namespace_name} => String
    #
    # @example Response structure
    #
    #   resp.namespace_arn #=> String
    #   resp.namespace_name #=> String
    #
    # @overload delete_namespace(params = {})
    # @param [Hash] params ({})
    def delete_namespace(params = {}, options = {})
      req = build_request(:delete_namespace, params)
      req.send_request(options)
    end

    # Deletes a system instance. Only system instances that have never been
    # deployed, or that have been undeployed can be deleted.
    #
    # Users can create a new system instance that has the same ID as a
    # deleted system instance.
    #
    # @option params [String] :id
    #   The ID of the system instance to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_system_instance({
    #     id: "Urn",
    #   })
    #
    # @overload delete_system_instance(params = {})
    # @param [Hash] params ({})
    def delete_system_instance(params = {}, options = {})
      req = build_request(:delete_system_instance, params)
      req.send_request(options)
    end

    # Deletes a system. New deployments can't contain the system after its
    # deletion. Existing deployments that contain the system will continue
    # to work because they use a snapshot of the system that is taken when
    # it is deployed.
    #
    # @option params [required, String] :id
    #   The ID of the system to be deleted.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_system_template({
    #     id: "Urn", # required
    #   })
    #
    # @overload delete_system_template(params = {})
    # @param [Hash] params ({})
    def delete_system_template(params = {}, options = {})
      req = build_request(:delete_system_template, params)
      req.send_request(options)
    end

    # **Greengrass and Cloud Deployments**
    #
    # Deploys the system instance to the target specified in
    # `CreateSystemInstance`.
    #
    # **Greengrass Deployments**
    #
    # If the system or any workflows and entities have been updated before
    # this action is called, then the deployment will create a new Amazon
    # Simple Storage Service resource file and then deploy it.
    #
    # Since this action creates a Greengrass deployment on the caller's
    # behalf, the calling identity must have write permissions to the
    # specified Greengrass group. Otherwise, the call will fail with an
    # authorization error.
    #
    # For information about the artifacts that get added to your Greengrass
    # core device when you use this API, see [AWS IoT Things Graph and AWS
    # IoT Greengrass][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html
    #
    # @option params [String] :id
    #   The ID of the system instance. This value is returned by the
    #   `CreateSystemInstance` action.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME`
    #
    # @return [Types::DeploySystemInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeploySystemInstanceResponse#summary #summary} => Types::SystemInstanceSummary
    #   * {Types::DeploySystemInstanceResponse#greengrass_deployment_id #greengrass_deployment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deploy_system_instance({
    #     id: "Urn",
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.id #=> String
    #   resp.summary.arn #=> String
    #   resp.summary.status #=> String, one of "NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"
    #   resp.summary.target #=> String, one of "GREENGRASS", "CLOUD"
    #   resp.summary.greengrass_group_name #=> String
    #   resp.summary.created_at #=> Time
    #   resp.summary.updated_at #=> Time
    #   resp.summary.greengrass_group_id #=> String
    #   resp.summary.greengrass_group_version_id #=> String
    #   resp.greengrass_deployment_id #=> String
    #
    # @overload deploy_system_instance(params = {})
    # @param [Hash] params ({})
    def deploy_system_instance(params = {}, options = {})
      req = build_request(:deploy_system_instance, params)
      req.send_request(options)
    end

    # Deprecates the specified workflow. This action marks the workflow for
    # deletion. Deprecated flows can't be deployed, but existing
    # deployments will continue to run.
    #
    # @option params [required, String] :id
    #   The ID of the workflow to be deleted.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_flow_template({
    #     id: "Urn", # required
    #   })
    #
    # @overload deprecate_flow_template(params = {})
    # @param [Hash] params ({})
    def deprecate_flow_template(params = {}, options = {})
      req = build_request(:deprecate_flow_template, params)
      req.send_request(options)
    end

    # Deprecates the specified system.
    #
    # @option params [required, String] :id
    #   The ID of the system to delete.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_system_template({
    #     id: "Urn", # required
    #   })
    #
    # @overload deprecate_system_template(params = {})
    # @param [Hash] params ({})
    def deprecate_system_template(params = {}, options = {})
      req = build_request(:deprecate_system_template, params)
      req.send_request(options)
    end

    # Gets the latest version of the user's namespace and the public
    # version that it is tracking.
    #
    # @option params [String] :namespace_name
    #   The name of the user's namespace. Set this to `aws` to get the public
    #   namespace.
    #
    # @return [Types::DescribeNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNamespaceResponse#namespace_arn #namespace_arn} => String
    #   * {Types::DescribeNamespaceResponse#namespace_name #namespace_name} => String
    #   * {Types::DescribeNamespaceResponse#tracking_namespace_name #tracking_namespace_name} => String
    #   * {Types::DescribeNamespaceResponse#tracking_namespace_version #tracking_namespace_version} => Integer
    #   * {Types::DescribeNamespaceResponse#namespace_version #namespace_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_namespace({
    #     namespace_name: "NamespaceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace_arn #=> String
    #   resp.namespace_name #=> String
    #   resp.tracking_namespace_name #=> String
    #   resp.tracking_namespace_version #=> Integer
    #   resp.namespace_version #=> Integer
    #
    # @overload describe_namespace(params = {})
    # @param [Hash] params ({})
    def describe_namespace(params = {}, options = {})
      req = build_request(:describe_namespace, params)
      req.send_request(options)
    end

    # Dissociates a device entity from a concrete thing. The action takes
    # only the type of the entity that you need to dissociate because only
    # one entity of a particular type can be associated with a thing.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing to disassociate.
    #
    # @option params [required, String] :entity_type
    #   The entity type from which to disassociate the thing.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dissociate_entity_from_thing({
    #     thing_name: "ThingName", # required
    #     entity_type: "DEVICE", # required, accepts DEVICE, SERVICE, DEVICE_MODEL, CAPABILITY, STATE, ACTION, EVENT, PROPERTY, MAPPING, ENUM
    #   })
    #
    # @overload dissociate_entity_from_thing(params = {})
    # @param [Hash] params ({})
    def dissociate_entity_from_thing(params = {}, options = {})
      req = build_request(:dissociate_entity_from_thing, params)
      req.send_request(options)
    end

    # Gets definitions of the specified entities. Uses the latest version of
    # the user's namespace by default. This API returns the following TDM
    # entities.
    #
    # * Properties
    #
    # * States
    #
    # * Events
    #
    # * Actions
    #
    # * Capabilities
    #
    # * Mappings
    #
    # * Devices
    #
    # * Device Models
    #
    # * Services
    #
    # This action doesn't return definitions for systems, flows, and
    # deployments.
    #
    # @option params [required, Array<String>] :ids
    #   An array of entity IDs.
    #
    #   The IDs should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME`
    #
    # @option params [Integer] :namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #
    # @return [Types::GetEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEntitiesResponse#descriptions #descriptions} => Array&lt;Types::EntityDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_entities({
    #     ids: ["Urn"], # required
    #     namespace_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.descriptions #=> Array
    #   resp.descriptions[0].id #=> String
    #   resp.descriptions[0].arn #=> String
    #   resp.descriptions[0].type #=> String, one of "DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"
    #   resp.descriptions[0].created_at #=> Time
    #   resp.descriptions[0].definition.language #=> String, one of "GRAPHQL"
    #   resp.descriptions[0].definition.text #=> String
    #
    # @overload get_entities(params = {})
    # @param [Hash] params ({})
    def get_entities(params = {}, options = {})
      req = build_request(:get_entities, params)
      req.send_request(options)
    end

    # Gets the latest version of the `DefinitionDocument` and
    # `FlowTemplateSummary` for the specified workflow.
    #
    # @option params [required, String] :id
    #   The ID of the workflow.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #
    # @option params [Integer] :revision_number
    #   The number of the workflow revision to retrieve.
    #
    # @return [Types::GetFlowTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFlowTemplateResponse#description #description} => Types::FlowTemplateDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_flow_template({
    #     id: "Urn", # required
    #     revision_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.description.summary.id #=> String
    #   resp.description.summary.arn #=> String
    #   resp.description.summary.revision_number #=> Integer
    #   resp.description.summary.created_at #=> Time
    #   resp.description.definition.language #=> String, one of "GRAPHQL"
    #   resp.description.definition.text #=> String
    #   resp.description.validated_namespace_version #=> Integer
    #
    # @overload get_flow_template(params = {})
    # @param [Hash] params ({})
    def get_flow_template(params = {}, options = {})
      req = build_request(:get_flow_template, params)
      req.send_request(options)
    end

    # Gets revisions of the specified workflow. Only the last 100 revisions
    # are stored. If the workflow has been deprecated, this action will
    # return revisions that occurred before the deprecation. This action
    # won't work for workflows that have been deleted.
    #
    # @option params [required, String] :id
    #   The ID of the workflow.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::GetFlowTemplateRevisionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFlowTemplateRevisionsResponse#summaries #summaries} => Array&lt;Types::FlowTemplateSummary&gt;
    #   * {Types::GetFlowTemplateRevisionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_flow_template_revisions({
    #     id: "Urn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].id #=> String
    #   resp.summaries[0].arn #=> String
    #   resp.summaries[0].revision_number #=> Integer
    #   resp.summaries[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload get_flow_template_revisions(params = {})
    # @param [Hash] params ({})
    def get_flow_template_revisions(params = {}, options = {})
      req = build_request(:get_flow_template_revisions, params)
      req.send_request(options)
    end

    # Gets the status of a namespace deletion task.
    #
    # @return [Types::GetNamespaceDeletionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNamespaceDeletionStatusResponse#namespace_arn #namespace_arn} => String
    #   * {Types::GetNamespaceDeletionStatusResponse#namespace_name #namespace_name} => String
    #   * {Types::GetNamespaceDeletionStatusResponse#status #status} => String
    #   * {Types::GetNamespaceDeletionStatusResponse#error_code #error_code} => String
    #   * {Types::GetNamespaceDeletionStatusResponse#error_message #error_message} => String
    #
    # @example Response structure
    #
    #   resp.namespace_arn #=> String
    #   resp.namespace_name #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.error_code #=> String, one of "VALIDATION_FAILED"
    #   resp.error_message #=> String
    #
    # @overload get_namespace_deletion_status(params = {})
    # @param [Hash] params ({})
    def get_namespace_deletion_status(params = {}, options = {})
      req = build_request(:get_namespace_deletion_status, params)
      req.send_request(options)
    end

    # Gets a system instance.
    #
    # @option params [required, String] :id
    #   The ID of the system deployment instance. This value is returned by
    #   `CreateSystemInstance`.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME`
    #
    # @return [Types::GetSystemInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSystemInstanceResponse#description #description} => Types::SystemInstanceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_system_instance({
    #     id: "Urn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description.summary.id #=> String
    #   resp.description.summary.arn #=> String
    #   resp.description.summary.status #=> String, one of "NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"
    #   resp.description.summary.target #=> String, one of "GREENGRASS", "CLOUD"
    #   resp.description.summary.greengrass_group_name #=> String
    #   resp.description.summary.created_at #=> Time
    #   resp.description.summary.updated_at #=> Time
    #   resp.description.summary.greengrass_group_id #=> String
    #   resp.description.summary.greengrass_group_version_id #=> String
    #   resp.description.definition.language #=> String, one of "GRAPHQL"
    #   resp.description.definition.text #=> String
    #   resp.description.s3_bucket_name #=> String
    #   resp.description.metrics_configuration.cloud_metric_enabled #=> Boolean
    #   resp.description.metrics_configuration.metric_rule_role_arn #=> String
    #   resp.description.validated_namespace_version #=> Integer
    #   resp.description.validated_dependency_revisions #=> Array
    #   resp.description.validated_dependency_revisions[0].id #=> String
    #   resp.description.validated_dependency_revisions[0].revision_number #=> Integer
    #   resp.description.flow_actions_role_arn #=> String
    #
    # @overload get_system_instance(params = {})
    # @param [Hash] params ({})
    def get_system_instance(params = {}, options = {})
      req = build_request(:get_system_instance, params)
      req.send_request(options)
    end

    # Gets a system.
    #
    # @option params [required, String] :id
    #   The ID of the system to get. This ID must be in the user's namespace.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #
    # @option params [Integer] :revision_number
    #   The number that specifies the revision of the system to get.
    #
    # @return [Types::GetSystemTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSystemTemplateResponse#description #description} => Types::SystemTemplateDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_system_template({
    #     id: "Urn", # required
    #     revision_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.description.summary.id #=> String
    #   resp.description.summary.arn #=> String
    #   resp.description.summary.revision_number #=> Integer
    #   resp.description.summary.created_at #=> Time
    #   resp.description.definition.language #=> String, one of "GRAPHQL"
    #   resp.description.definition.text #=> String
    #   resp.description.validated_namespace_version #=> Integer
    #
    # @overload get_system_template(params = {})
    # @param [Hash] params ({})
    def get_system_template(params = {}, options = {})
      req = build_request(:get_system_template, params)
      req.send_request(options)
    end

    # Gets revisions made to the specified system template. Only the
    # previous 100 revisions are stored. If the system has been deprecated,
    # this action will return the revisions that occurred before its
    # deprecation. This action won't work with systems that have been
    # deleted.
    #
    # @option params [required, String] :id
    #   The ID of the system template.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::GetSystemTemplateRevisionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSystemTemplateRevisionsResponse#summaries #summaries} => Array&lt;Types::SystemTemplateSummary&gt;
    #   * {Types::GetSystemTemplateRevisionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_system_template_revisions({
    #     id: "Urn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].id #=> String
    #   resp.summaries[0].arn #=> String
    #   resp.summaries[0].revision_number #=> Integer
    #   resp.summaries[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload get_system_template_revisions(params = {})
    # @param [Hash] params ({})
    def get_system_template_revisions(params = {}, options = {})
      req = build_request(:get_system_template_revisions, params)
      req.send_request(options)
    end

    # Gets the status of the specified upload.
    #
    # @option params [required, String] :upload_id
    #   The ID of the upload. This value is returned by the
    #   `UploadEntityDefinitions` action.
    #
    # @return [Types::GetUploadStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUploadStatusResponse#upload_id #upload_id} => String
    #   * {Types::GetUploadStatusResponse#upload_status #upload_status} => String
    #   * {Types::GetUploadStatusResponse#namespace_arn #namespace_arn} => String
    #   * {Types::GetUploadStatusResponse#namespace_name #namespace_name} => String
    #   * {Types::GetUploadStatusResponse#namespace_version #namespace_version} => Integer
    #   * {Types::GetUploadStatusResponse#failure_reason #failure_reason} => Array&lt;String&gt;
    #   * {Types::GetUploadStatusResponse#created_date #created_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upload_status({
    #     upload_id: "UploadId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.upload_id #=> String
    #   resp.upload_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.namespace_arn #=> String
    #   resp.namespace_name #=> String
    #   resp.namespace_version #=> Integer
    #   resp.failure_reason #=> Array
    #   resp.failure_reason[0] #=> String
    #   resp.created_date #=> Time
    #
    # @overload get_upload_status(params = {})
    # @param [Hash] params ({})
    def get_upload_status(params = {}, options = {})
      req = build_request(:get_upload_status, params)
      req.send_request(options)
    end

    # Returns a list of objects that contain information about events in a
    # flow execution.
    #
    # @option params [required, String] :flow_execution_id
    #   The ID of the flow execution.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::ListFlowExecutionMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowExecutionMessagesResponse#messages #messages} => Array&lt;Types::FlowExecutionMessage&gt;
    #   * {Types::ListFlowExecutionMessagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flow_execution_messages({
    #     flow_execution_id: "FlowExecutionId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.messages #=> Array
    #   resp.messages[0].message_id #=> String
    #   resp.messages[0].event_type #=> String, one of "EXECUTION_STARTED", "EXECUTION_FAILED", "EXECUTION_ABORTED", "EXECUTION_SUCCEEDED", "STEP_STARTED", "STEP_FAILED", "STEP_SUCCEEDED", "ACTIVITY_SCHEDULED", "ACTIVITY_STARTED", "ACTIVITY_FAILED", "ACTIVITY_SUCCEEDED", "START_FLOW_EXECUTION_TASK", "SCHEDULE_NEXT_READY_STEPS_TASK", "THING_ACTION_TASK", "THING_ACTION_TASK_FAILED", "THING_ACTION_TASK_SUCCEEDED", "ACKNOWLEDGE_TASK_MESSAGE"
    #   resp.messages[0].timestamp #=> Time
    #   resp.messages[0].payload #=> String
    #   resp.next_token #=> String
    #
    # @overload list_flow_execution_messages(params = {})
    # @param [Hash] params ({})
    def list_flow_execution_messages(params = {}, options = {})
      req = build_request(:list_flow_execution_messages, params)
      req.send_request(options)
    end

    # Lists all tags on an AWS IoT Things Graph resource.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tags to return.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags are to be
    #   returned.
    #
    # @option params [String] :next_token
    #   The token that specifies the next page of results to return.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     max_results: 1,
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Searches for entities of the specified type. You can search for
    # entities in your namespace and the public namespace that you're
    # tracking.
    #
    # @option params [required, Array<String>] :entity_types
    #   The entity types for which to search.
    #
    # @option params [Array<Types::EntityFilter>] :filters
    #   Optional filter to apply to the search. Valid filters are `NAME`
    #   `NAMESPACE`, `SEMANTIC_TYPE_PATH` and `REFERENCED_ENTITY_ID`.
    #   `REFERENCED_ENTITY_ID` filters on entities that are used by the entity
    #   in the result set. For example, you can filter on the ID of a property
    #   that is used in a state.
    #
    #   Multiple filters function as OR criteria in the query. Multiple values
    #   passed inside the filter function as AND criteria.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [Integer] :namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #
    # @return [Types::SearchEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchEntitiesResponse#descriptions #descriptions} => Array&lt;Types::EntityDescription&gt;
    #   * {Types::SearchEntitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_entities({
    #     entity_types: ["DEVICE"], # required, accepts DEVICE, SERVICE, DEVICE_MODEL, CAPABILITY, STATE, ACTION, EVENT, PROPERTY, MAPPING, ENUM
    #     filters: [
    #       {
    #         name: "NAME", # accepts NAME, NAMESPACE, SEMANTIC_TYPE_PATH, REFERENCED_ENTITY_ID
    #         value: ["EntityFilterValue"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     namespace_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.descriptions #=> Array
    #   resp.descriptions[0].id #=> String
    #   resp.descriptions[0].arn #=> String
    #   resp.descriptions[0].type #=> String, one of "DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"
    #   resp.descriptions[0].created_at #=> Time
    #   resp.descriptions[0].definition.language #=> String, one of "GRAPHQL"
    #   resp.descriptions[0].definition.text #=> String
    #   resp.next_token #=> String
    #
    # @overload search_entities(params = {})
    # @param [Hash] params ({})
    def search_entities(params = {}, options = {})
      req = build_request(:search_entities, params)
      req.send_request(options)
    end

    # Searches for AWS IoT Things Graph workflow execution instances.
    #
    # @option params [required, String] :system_instance_id
    #   The ID of the system instance that contains the flow.
    #
    # @option params [String] :flow_execution_id
    #   The ID of a flow execution.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time of the earliest flow execution to return.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The date and time of the latest flow execution to return.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::SearchFlowExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFlowExecutionsResponse#summaries #summaries} => Array&lt;Types::FlowExecutionSummary&gt;
    #   * {Types::SearchFlowExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_flow_executions({
    #     system_instance_id: "Urn", # required
    #     flow_execution_id: "FlowExecutionId",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].flow_execution_id #=> String
    #   resp.summaries[0].status #=> String, one of "RUNNING", "ABORTED", "SUCCEEDED", "FAILED"
    #   resp.summaries[0].system_instance_id #=> String
    #   resp.summaries[0].flow_template_id #=> String
    #   resp.summaries[0].created_at #=> Time
    #   resp.summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload search_flow_executions(params = {})
    # @param [Hash] params ({})
    def search_flow_executions(params = {}, options = {})
      req = build_request(:search_flow_executions, params)
      req.send_request(options)
    end

    # Searches for summary information about workflows.
    #
    # @option params [Array<Types::FlowTemplateFilter>] :filters
    #   An array of objects that limit the result set. The only valid filter
    #   is `DEVICE_MODEL_ID`.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::SearchFlowTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFlowTemplatesResponse#summaries #summaries} => Array&lt;Types::FlowTemplateSummary&gt;
    #   * {Types::SearchFlowTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_flow_templates({
    #     filters: [
    #       {
    #         name: "DEVICE_MODEL_ID", # required, accepts DEVICE_MODEL_ID
    #         value: ["FlowTemplateFilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].id #=> String
    #   resp.summaries[0].arn #=> String
    #   resp.summaries[0].revision_number #=> Integer
    #   resp.summaries[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload search_flow_templates(params = {})
    # @param [Hash] params ({})
    def search_flow_templates(params = {}, options = {})
      req = build_request(:search_flow_templates, params)
      req.send_request(options)
    end

    # Searches for system instances in the user's account.
    #
    # @option params [Array<Types::SystemInstanceFilter>] :filters
    #   Optional filter to apply to the search. Valid filters are
    #   `SYSTEM_TEMPLATE_ID`, `STATUS`, and `GREENGRASS_GROUP_NAME`.
    #
    #   Multiple filters function as OR criteria in the query. Multiple values
    #   passed inside the filter function as AND criteria.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::SearchSystemInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSystemInstancesResponse#summaries #summaries} => Array&lt;Types::SystemInstanceSummary&gt;
    #   * {Types::SearchSystemInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_system_instances({
    #     filters: [
    #       {
    #         name: "SYSTEM_TEMPLATE_ID", # accepts SYSTEM_TEMPLATE_ID, STATUS, GREENGRASS_GROUP_NAME
    #         value: ["SystemInstanceFilterValue"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].id #=> String
    #   resp.summaries[0].arn #=> String
    #   resp.summaries[0].status #=> String, one of "NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"
    #   resp.summaries[0].target #=> String, one of "GREENGRASS", "CLOUD"
    #   resp.summaries[0].greengrass_group_name #=> String
    #   resp.summaries[0].created_at #=> Time
    #   resp.summaries[0].updated_at #=> Time
    #   resp.summaries[0].greengrass_group_id #=> String
    #   resp.summaries[0].greengrass_group_version_id #=> String
    #   resp.next_token #=> String
    #
    # @overload search_system_instances(params = {})
    # @param [Hash] params ({})
    def search_system_instances(params = {}, options = {})
      req = build_request(:search_system_instances, params)
      req.send_request(options)
    end

    # Searches for summary information about systems in the user's account.
    # You can filter by the ID of a workflow to return only systems that use
    # the specified workflow.
    #
    # @option params [Array<Types::SystemTemplateFilter>] :filters
    #   An array of filters that limit the result set. The only valid filter
    #   is `FLOW_TEMPLATE_ID`.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::SearchSystemTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSystemTemplatesResponse#summaries #summaries} => Array&lt;Types::SystemTemplateSummary&gt;
    #   * {Types::SearchSystemTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_system_templates({
    #     filters: [
    #       {
    #         name: "FLOW_TEMPLATE_ID", # required, accepts FLOW_TEMPLATE_ID
    #         value: ["SystemTemplateFilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].id #=> String
    #   resp.summaries[0].arn #=> String
    #   resp.summaries[0].revision_number #=> Integer
    #   resp.summaries[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload search_system_templates(params = {})
    # @param [Hash] params ({})
    def search_system_templates(params = {}, options = {})
      req = build_request(:search_system_templates, params)
      req.send_request(options)
    end

    # Searches for things associated with the specified entity. You can
    # search by both device and device model.
    #
    # For example, if two different devices, camera1 and camera2, implement
    # the camera device model, the user can associate thing1 to camera1 and
    # thing2 to camera2. `SearchThings(camera2)` will return only thing2,
    # but `SearchThings(camera)` will return both thing1 and thing2.
    #
    # This action searches for exact matches and doesn't perform partial
    # text matching.
    #
    # @option params [required, String] :entity_id
    #   The ID of the entity to which the things are associated.
    #
    #   The IDs should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME`
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [Integer] :namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #
    # @return [Types::SearchThingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchThingsResponse#things #things} => Array&lt;Types::Thing&gt;
    #   * {Types::SearchThingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_things({
    #     entity_id: "Urn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     namespace_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.things #=> Array
    #   resp.things[0].thing_arn #=> String
    #   resp.things[0].thing_name #=> String
    #   resp.next_token #=> String
    #
    # @overload search_things(params = {})
    # @param [Hash] params ({})
    def search_things(params = {}, options = {})
      req = build_request(:search_things, params)
      req.send_request(options)
    end

    # Creates a tag for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags are
    #   returned.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to add to the resource.&gt;
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a system instance from its target (Cloud or Greengrass).
    #
    # @option params [String] :id
    #   The ID of the system instance to remove from its target.
    #
    # @return [Types::UndeploySystemInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UndeploySystemInstanceResponse#summary #summary} => Types::SystemInstanceSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.undeploy_system_instance({
    #     id: "Urn",
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.id #=> String
    #   resp.summary.arn #=> String
    #   resp.summary.status #=> String, one of "NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"
    #   resp.summary.target #=> String, one of "GREENGRASS", "CLOUD"
    #   resp.summary.greengrass_group_name #=> String
    #   resp.summary.created_at #=> Time
    #   resp.summary.updated_at #=> Time
    #   resp.summary.greengrass_group_id #=> String
    #   resp.summary.greengrass_group_version_id #=> String
    #
    # @overload undeploy_system_instance(params = {})
    # @param [Hash] params ({})
    def undeploy_system_instance(params = {}, options = {})
      req = build_request(:undeploy_system_instance, params)
      req.send_request(options)
    end

    # Removes a tag from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags are to be
    #   removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag key names to remove from the resource. You don't
    #   specify the value. Both the key and its associated value are removed.
    #
    #   This parameter to the API requires a JSON text string argument. For
    #   information on how to format a JSON parameter for the various command
    #   line tool environments, see [Using JSON for Parameters][1] in the *AWS
    #   CLI User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#cli-using-param-json
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified workflow. All deployed systems and system
    # instances that use the workflow will see the changes in the flow when
    # it is redeployed. If you don't want this behavior, copy the workflow
    # (creating a new workflow with a different ID), and update the copy.
    # The workflow can contain only entities in the specified namespace.
    #
    # @option params [required, String] :id
    #   The ID of the workflow to be updated.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #
    # @option params [required, Types::DefinitionDocument] :definition
    #   The `DefinitionDocument` that contains the updated workflow
    #   definition.
    #
    # @option params [Integer] :compatible_namespace_version
    #   The version of the user's namespace.
    #
    #   If no value is specified, the latest version is used by default. Use
    #   the `GetFlowTemplateRevisions` if you want to find earlier revisions
    #   of the flow to update.
    #
    # @return [Types::UpdateFlowTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowTemplateResponse#summary #summary} => Types::FlowTemplateSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_template({
    #     id: "Urn", # required
    #     definition: { # required
    #       language: "GRAPHQL", # required, accepts GRAPHQL
    #       text: "DefinitionText", # required
    #     },
    #     compatible_namespace_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.id #=> String
    #   resp.summary.arn #=> String
    #   resp.summary.revision_number #=> Integer
    #   resp.summary.created_at #=> Time
    #
    # @overload update_flow_template(params = {})
    # @param [Hash] params ({})
    def update_flow_template(params = {}, options = {})
      req = build_request(:update_flow_template, params)
      req.send_request(options)
    end

    # Updates the specified system. You don't need to run this action after
    # updating a workflow. Any deployment that uses the system will see the
    # changes in the system when it is redeployed.
    #
    # @option params [required, String] :id
    #   The ID of the system to be updated.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #
    # @option params [required, Types::DefinitionDocument] :definition
    #   The `DefinitionDocument` that contains the updated system definition.
    #
    # @option params [Integer] :compatible_namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #
    #   If no value is specified, the latest version is used by default.
    #
    # @return [Types::UpdateSystemTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSystemTemplateResponse#summary #summary} => Types::SystemTemplateSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_system_template({
    #     id: "Urn", # required
    #     definition: { # required
    #       language: "GRAPHQL", # required, accepts GRAPHQL
    #       text: "DefinitionText", # required
    #     },
    #     compatible_namespace_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.id #=> String
    #   resp.summary.arn #=> String
    #   resp.summary.revision_number #=> Integer
    #   resp.summary.created_at #=> Time
    #
    # @overload update_system_template(params = {})
    # @param [Hash] params ({})
    def update_system_template(params = {}, options = {})
      req = build_request(:update_system_template, params)
      req.send_request(options)
    end

    # Asynchronously uploads one or more entity definitions to the user's
    # namespace. The `document` parameter is required if
    # `syncWithPublicNamespace` and `deleteExistingEntites` are false. If
    # the `syncWithPublicNamespace` parameter is set to `true`, the user's
    # namespace will synchronize with the latest version of the public
    # namespace. If `deprecateExistingEntities` is set to true, all entities
    # in the latest version will be deleted before the new
    # `DefinitionDocument` is uploaded.
    #
    # When a user uploads entity definitions for the first time, the service
    # creates a new namespace for the user. The new namespace tracks the
    # public namespace. Currently users can have only one namespace. The
    # namespace version increments whenever a user uploads entity
    # definitions that are backwards-incompatible and whenever a user sets
    # the `syncWithPublicNamespace` parameter or the
    # `deprecateExistingEntities` parameter to `true`.
    #
    # The IDs for all of the entities should be in URN format. Each entity
    # must be in the user's namespace. Users can't create entities in the
    # public namespace, but entity definitions can refer to entities in the
    # public namespace.
    #
    # Valid entities are `Device`, `DeviceModel`, `Service`, `Capability`,
    # `State`, `Action`, `Event`, `Property`, `Mapping`, `Enum`.
    #
    # @option params [Types::DefinitionDocument] :document
    #   The `DefinitionDocument` that defines the updated entities.
    #
    # @option params [Boolean] :sync_with_public_namespace
    #   A Boolean that specifies whether to synchronize with the latest
    #   version of the public namespace. If set to `true`, the upload will
    #   create a new namespace version.
    #
    # @option params [Boolean] :deprecate_existing_entities
    #   A Boolean that specifies whether to deprecate all entities in the
    #   latest version before uploading the new `DefinitionDocument`. If set
    #   to `true`, the upload will create a new namespace version.
    #
    # @return [Types::UploadEntityDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UploadEntityDefinitionsResponse#upload_id #upload_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_entity_definitions({
    #     document: {
    #       language: "GRAPHQL", # required, accepts GRAPHQL
    #       text: "DefinitionText", # required
    #     },
    #     sync_with_public_namespace: false,
    #     deprecate_existing_entities: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.upload_id #=> String
    #
    # @overload upload_entity_definitions(params = {})
    # @param [Hash] params ({})
    def upload_entity_definitions(params = {}, options = {})
      req = build_request(:upload_entity_definitions, params)
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
      context[:gem_name] = 'aws-sdk-iotthingsgraph'
      context[:gem_version] = '1.12.0'
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
