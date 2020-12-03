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

Aws::Plugins::GlobalConfiguration.add_identifier(:applicationautoscaling)

module Aws::ApplicationAutoScaling
  # An API client for ApplicationAutoScaling.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ApplicationAutoScaling::Client.new(
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

    @identifier = :applicationautoscaling

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

    # Deletes the specified scaling policy for an Application Auto Scaling
    # scalable target.
    #
    # Deleting a step scaling policy deletes the underlying alarm action,
    # but does not delete the CloudWatch alarm associated with the scaling
    # policy, even if it no longer has an associated action.
    #
    # For more information, see [Delete a Step Scaling Policy][1] and
    # [Delete a Target Tracking Scaling Policy][2] in the *Application Auto
    # Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html#delete-step-scaling-policy
    # [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html#delete-target-tracking-policy
    #
    # @option params [required, String] :policy_name
    #   The name of the scaling policy.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [required, String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a scaling policy
    #
    #   # This example deletes a scaling policy for the Amazon ECS service called web-app, which is running in the default
    #   # cluster.
    #
    #   resp = client.delete_scaling_policy({
    #     policy_name: "web-app-cpu-lt-25", 
    #     resource_id: "service/default/web-app", 
    #     scalable_dimension: "ecs:service:DesiredCount", 
    #     service_namespace: "ecs", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scaling_policy({
    #     policy_name: "ResourceIdMaxLen1600", # required
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScalingPolicy AWS API Documentation
    #
    # @overload delete_scaling_policy(params = {})
    # @param [Hash] params ({})
    def delete_scaling_policy(params = {}, options = {})
      req = build_request(:delete_scaling_policy, params)
      req.send_request(options)
    end

    # Deletes the specified scheduled action for an Application Auto Scaling
    # scalable target.
    #
    # For more information, see [Delete a Scheduled Action][1] in the
    # *Application Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html#delete-scheduled-action
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the scheduled action.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource associated with the scheduled action.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [required, String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_action({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     scheduled_action_name: "ResourceIdMaxLen1600", # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScheduledAction AWS API Documentation
    #
    # @overload delete_scheduled_action(params = {})
    # @param [Hash] params ({})
    def delete_scheduled_action(params = {}, options = {})
      req = build_request(:delete_scheduled_action, params)
      req.send_request(options)
    end

    # Deregisters an Application Auto Scaling scalable target when you have
    # finished using it. To see which resources have been registered, use
    # [DescribeScalableTargets][1].
    #
    # <note markdown="1"> Deregistering a scalable target deletes the scaling policies and the
    # scheduled actions that are associated with it.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [required, String] :scalable_dimension
    #   The scalable dimension associated with the scalable target. This
    #   string consists of the service namespace, resource type, and scaling
    #   property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To deregister a scalable target
    #
    #   # This example deregisters a scalable target for an Amazon ECS service called web-app that is running in the default
    #   # cluster.
    #
    #   resp = client.deregister_scalable_target({
    #     resource_id: "service/default/web-app", 
    #     scalable_dimension: "ecs:service:DesiredCount", 
    #     service_namespace: "ecs", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_scalable_target({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeregisterScalableTarget AWS API Documentation
    #
    # @overload deregister_scalable_target(params = {})
    # @param [Hash] params ({})
    def deregister_scalable_target(params = {}, options = {})
      req = build_request(:deregister_scalable_target, params)
      req.send_request(options)
    end

    # Gets information about the scalable targets in the specified
    # namespace.
    #
    # You can filter the results using `ResourceIds` and
    # `ScalableDimension`.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [Array<String>] :resource_ids
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier. If
    #   you specify a scalable dimension, you must also specify a resource ID.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [String] :scalable_dimension
    #   The scalable dimension associated with the scalable target. This
    #   string consists of the service namespace, resource type, and scaling
    #   property. If you specify a scalable dimension, you must also specify a
    #   resource ID.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of scalable targets. This value can be between 1
    #   and 50. The default value is 50.
    #
    #   If this parameter is used, the operation returns up to `MaxResults`
    #   results at a time, along with a `NextToken` value. To get the next set
    #   of results, include the `NextToken` value in a subsequent call. If
    #   this parameter is not used, the operation returns up to 50 results and
    #   a `NextToken` value, if applicable.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::DescribeScalableTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalableTargetsResponse#scalable_targets #scalable_targets} => Array&lt;Types::ScalableTarget&gt;
    #   * {Types::DescribeScalableTargetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe scalable targets
    #
    #   # This example describes the scalable targets for the ECS service namespace.
    #
    #   resp = client.describe_scalable_targets({
    #     service_namespace: "ecs", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scalable_targets: [
    #       {
    #         creation_time: Time.parse("2019-05-06T11:21:46.199Z"), 
    #         max_capacity: 10, 
    #         min_capacity: 1, 
    #         resource_id: "service/default/web-app", 
    #         role_arn: "arn:aws:iam::012345678910:role/aws-service-role/ecs.application-autoscaling.amazonaws.com/AWSServiceRoleForApplicationAutoScaling_ECSService", 
    #         scalable_dimension: "ecs:service:DesiredCount", 
    #         service_namespace: "ecs", 
    #         suspended_state: {
    #           dynamic_scaling_in_suspended: false, 
    #           dynamic_scaling_out_suspended: false, 
    #           scheduled_scaling_suspended: false, 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scalable_targets({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     resource_ids: ["ResourceIdMaxLen1600"],
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scalable_targets #=> Array
    #   resp.scalable_targets[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka"
    #   resp.scalable_targets[0].resource_id #=> String
    #   resp.scalable_targets[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize"
    #   resp.scalable_targets[0].min_capacity #=> Integer
    #   resp.scalable_targets[0].max_capacity #=> Integer
    #   resp.scalable_targets[0].role_arn #=> String
    #   resp.scalable_targets[0].creation_time #=> Time
    #   resp.scalable_targets[0].suspended_state.dynamic_scaling_in_suspended #=> Boolean
    #   resp.scalable_targets[0].suspended_state.dynamic_scaling_out_suspended #=> Boolean
    #   resp.scalable_targets[0].suspended_state.scheduled_scaling_suspended #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalableTargets AWS API Documentation
    #
    # @overload describe_scalable_targets(params = {})
    # @param [Hash] params ({})
    def describe_scalable_targets(params = {}, options = {})
      req = build_request(:describe_scalable_targets, params)
      req.send_request(options)
    end

    # Provides descriptive information about the scaling activities in the
    # specified namespace from the previous six weeks.
    #
    # You can filter the results using `ResourceId` and `ScalableDimension`.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [String] :resource_id
    #   The identifier of the resource associated with the scaling activity.
    #   This string consists of the resource type and unique identifier. If
    #   you specify a scalable dimension, you must also specify a resource ID.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property. If you specify a scalable
    #   dimension, you must also specify a resource ID.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of scalable targets. This value can be between 1
    #   and 50. The default value is 50.
    #
    #   If this parameter is used, the operation returns up to `MaxResults`
    #   results at a time, along with a `NextToken` value. To get the next set
    #   of results, include the `NextToken` value in a subsequent call. If
    #   this parameter is not used, the operation returns up to 50 results and
    #   a `NextToken` value, if applicable.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::DescribeScalingActivitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingActivitiesResponse#scaling_activities #scaling_activities} => Array&lt;Types::ScalingActivity&gt;
    #   * {Types::DescribeScalingActivitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe scaling activities for a scalable target
    #
    #   # This example describes the scaling activities for an Amazon ECS service called web-app that is running in the default
    #   # cluster.
    #
    #   resp = client.describe_scaling_activities({
    #     resource_id: "service/default/web-app", 
    #     scalable_dimension: "ecs:service:DesiredCount", 
    #     service_namespace: "ecs", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scaling_activities: [
    #       {
    #         activity_id: "e6c5f7d1-dbbb-4a3f-89b2-51f33e766399", 
    #         cause: "monitor alarm web-app-cpu-lt-25 in state ALARM triggered policy web-app-cpu-lt-25", 
    #         description: "Setting desired count to 1.", 
    #         end_time: Time.parse("2019-05-06T16:04:32.111Z"), 
    #         resource_id: "service/default/web-app", 
    #         scalable_dimension: "ecs:service:DesiredCount", 
    #         service_namespace: "ecs", 
    #         start_time: Time.parse("2019-05-06T16:03:58.171Z"), 
    #         status_code: "Successful", 
    #         status_message: "Successfully set desired count to 1. Change successfully fulfilled by ecs.", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_activities({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_activities #=> Array
    #   resp.scaling_activities[0].activity_id #=> String
    #   resp.scaling_activities[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka"
    #   resp.scaling_activities[0].resource_id #=> String
    #   resp.scaling_activities[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize"
    #   resp.scaling_activities[0].description #=> String
    #   resp.scaling_activities[0].cause #=> String
    #   resp.scaling_activities[0].start_time #=> Time
    #   resp.scaling_activities[0].end_time #=> Time
    #   resp.scaling_activities[0].status_code #=> String, one of "Pending", "InProgress", "Successful", "Overridden", "Unfulfilled", "Failed"
    #   resp.scaling_activities[0].status_message #=> String
    #   resp.scaling_activities[0].details #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingActivities AWS API Documentation
    #
    # @overload describe_scaling_activities(params = {})
    # @param [Hash] params ({})
    def describe_scaling_activities(params = {}, options = {})
      req = build_request(:describe_scaling_activities, params)
      req.send_request(options)
    end

    # Describes the Application Auto Scaling scaling policies for the
    # specified service namespace.
    #
    # You can filter the results using `ResourceId`, `ScalableDimension`,
    # and `PolicyNames`.
    #
    # For more information, see [Target Tracking Scaling Policies][1] and
    # [Step Scaling Policies][2] in the *Application Auto Scaling User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html
    # [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html
    #
    # @option params [Array<String>] :policy_names
    #   The names of the scaling policies to describe.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [String] :resource_id
    #   The identifier of the resource associated with the scaling policy.
    #   This string consists of the resource type and unique identifier. If
    #   you specify a scalable dimension, you must also specify a resource ID.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property. If you specify a scalable
    #   dimension, you must also specify a resource ID.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of scalable targets. This value can be between 1
    #   and 50. The default value is 50.
    #
    #   If this parameter is used, the operation returns up to `MaxResults`
    #   results at a time, along with a `NextToken` value. To get the next set
    #   of results, include the `NextToken` value in a subsequent call. If
    #   this parameter is not used, the operation returns up to 50 results and
    #   a `NextToken` value, if applicable.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::DescribeScalingPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingPoliciesResponse#scaling_policies #scaling_policies} => Array&lt;Types::ScalingPolicy&gt;
    #   * {Types::DescribeScalingPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe scaling policies
    #
    #   # This example describes the scaling policies for the ECS service namespace.
    #
    #   resp = client.describe_scaling_policies({
    #     service_namespace: "ecs", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "", 
    #     scaling_policies: [
    #       {
    #         alarms: [
    #           {
    #             alarm_arn: "arn:aws:cloudwatch:us-west-2:012345678910:alarm:web-app-cpu-gt-75", 
    #             alarm_name: "web-app-cpu-gt-75", 
    #           }, 
    #         ], 
    #         creation_time: Time.parse("2019-05-06T12:11:39.230Z"), 
    #         policy_arn: "arn:aws:autoscaling:us-west-2:012345678910:scalingPolicy:6d8972f3-efc8-437c-92d1-6270f29a66e7:resource/ecs/service/default/web-app:policyName/web-app-cpu-gt-75", 
    #         policy_name: "web-app-cpu-gt-75", 
    #         policy_type: "StepScaling", 
    #         resource_id: "service/default/web-app", 
    #         scalable_dimension: "ecs:service:DesiredCount", 
    #         service_namespace: "ecs", 
    #         step_scaling_policy_configuration: {
    #           adjustment_type: "PercentChangeInCapacity", 
    #           cooldown: 60, 
    #           step_adjustments: [
    #             {
    #               metric_interval_lower_bound: 0, 
    #               scaling_adjustment: 200, 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_policies({
    #     policy_names: ["ResourceIdMaxLen1600"],
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_policies #=> Array
    #   resp.scaling_policies[0].policy_arn #=> String
    #   resp.scaling_policies[0].policy_name #=> String
    #   resp.scaling_policies[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka"
    #   resp.scaling_policies[0].resource_id #=> String
    #   resp.scaling_policies[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize"
    #   resp.scaling_policies[0].policy_type #=> String, one of "StepScaling", "TargetTrackingScaling"
    #   resp.scaling_policies[0].step_scaling_policy_configuration.adjustment_type #=> String, one of "ChangeInCapacity", "PercentChangeInCapacity", "ExactCapacity"
    #   resp.scaling_policies[0].step_scaling_policy_configuration.step_adjustments #=> Array
    #   resp.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0].metric_interval_lower_bound #=> Float
    #   resp.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0].metric_interval_upper_bound #=> Float
    #   resp.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0].scaling_adjustment #=> Integer
    #   resp.scaling_policies[0].step_scaling_policy_configuration.min_adjustment_magnitude #=> Integer
    #   resp.scaling_policies[0].step_scaling_policy_configuration.cooldown #=> Integer
    #   resp.scaling_policies[0].step_scaling_policy_configuration.metric_aggregation_type #=> String, one of "Average", "Minimum", "Maximum"
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.predefined_metric_specification.predefined_metric_type #=> String, one of "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut", "SageMakerVariantInvocationsPerInstance", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "AppStreamAverageCapacityUtilization", "ComprehendInferenceUtilization", "LambdaProvisionedConcurrencyUtilization", "CassandraReadCapacityUtilization", "CassandraWriteCapacityUtilization", "KafkaBrokerStorageUtilization"
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.predefined_metric_specification.resource_label #=> String
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.metric_name #=> String
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.namespace #=> String
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.dimensions #=> Array
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.dimensions[0].name #=> String
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.dimensions[0].value #=> String
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.statistic #=> String, one of "Average", "Minimum", "Maximum", "SampleCount", "Sum"
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.unit #=> String
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.scaling_policies[0].alarms #=> Array
    #   resp.scaling_policies[0].alarms[0].alarm_name #=> String
    #   resp.scaling_policies[0].alarms[0].alarm_arn #=> String
    #   resp.scaling_policies[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingPolicies AWS API Documentation
    #
    # @overload describe_scaling_policies(params = {})
    # @param [Hash] params ({})
    def describe_scaling_policies(params = {}, options = {})
      req = build_request(:describe_scaling_policies, params)
      req.send_request(options)
    end

    # Describes the Application Auto Scaling scheduled actions for the
    # specified service namespace.
    #
    # You can filter the results using the `ResourceId`,
    # `ScalableDimension`, and `ScheduledActionNames` parameters.
    #
    # For more information, see [Scheduled Scaling][1] in the *Application
    # Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html
    #
    # @option params [Array<String>] :scheduled_action_names
    #   The names of the scheduled actions to describe.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [String] :resource_id
    #   The identifier of the resource associated with the scheduled action.
    #   This string consists of the resource type and unique identifier. If
    #   you specify a scalable dimension, you must also specify a resource ID.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property. If you specify a scalable
    #   dimension, you must also specify a resource ID.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of scheduled action results. This value can be
    #   between 1 and 50. The default value is 50.
    #
    #   If this parameter is used, the operation returns up to `MaxResults`
    #   results at a time, along with a `NextToken` value. To get the next set
    #   of results, include the `NextToken` value in a subsequent call. If
    #   this parameter is not used, the operation returns up to 50 results and
    #   a `NextToken` value, if applicable.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::DescribeScheduledActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScheduledActionsResponse#scheduled_actions #scheduled_actions} => Array&lt;Types::ScheduledAction&gt;
    #   * {Types::DescribeScheduledActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_actions({
    #     scheduled_action_names: ["ResourceIdMaxLen1600"],
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_actions #=> Array
    #   resp.scheduled_actions[0].scheduled_action_name #=> String
    #   resp.scheduled_actions[0].scheduled_action_arn #=> String
    #   resp.scheduled_actions[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka"
    #   resp.scheduled_actions[0].schedule #=> String
    #   resp.scheduled_actions[0].resource_id #=> String
    #   resp.scheduled_actions[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize"
    #   resp.scheduled_actions[0].start_time #=> Time
    #   resp.scheduled_actions[0].end_time #=> Time
    #   resp.scheduled_actions[0].scalable_target_action.min_capacity #=> Integer
    #   resp.scheduled_actions[0].scalable_target_action.max_capacity #=> Integer
    #   resp.scheduled_actions[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScheduledActions AWS API Documentation
    #
    # @overload describe_scheduled_actions(params = {})
    # @param [Hash] params ({})
    def describe_scheduled_actions(params = {}, options = {})
      req = build_request(:describe_scheduled_actions, params)
      req.send_request(options)
    end

    # Creates or updates a scaling policy for an Application Auto Scaling
    # scalable target.
    #
    # Each scalable target is identified by a service namespace, resource
    # ID, and scalable dimension. A scaling policy applies to the scalable
    # target identified by those three attributes. You cannot create a
    # scaling policy until you have registered the resource as a scalable
    # target.
    #
    # Multiple scaling policies can be in force at the same time for the
    # same scalable target. You can have one or more target tracking scaling
    # policies, one or more step scaling policies, or both. However, there
    # is a chance that multiple policies could conflict, instructing the
    # scalable target to scale out or in at the same time. Application Auto
    # Scaling gives precedence to the policy that provides the largest
    # capacity for both scale out and scale in. For example, if one policy
    # increases capacity by 3, another policy increases capacity by 200
    # percent, and the current capacity is 10, Application Auto Scaling uses
    # the policy with the highest calculated capacity (200% of 10 = 20) and
    # scales out to 30.
    #
    # We recommend caution, however, when using target tracking scaling
    # policies with step scaling policies because conflicts between these
    # policies can cause undesirable behavior. For example, if the step
    # scaling policy initiates a scale-in activity before the target
    # tracking policy is ready to scale in, the scale-in activity will not
    # be blocked. After the scale-in activity completes, the target tracking
    # policy could instruct the scalable target to scale out again.
    #
    # For more information, see [Target Tracking Scaling Policies][1] and
    # [Step Scaling Policies][2] in the *Application Auto Scaling User
    # Guide*.
    #
    # <note markdown="1"> If a scalable target is deregistered, the scalable target is no longer
    # available to execute scaling policies. Any scaling policies that were
    # specified for the scalable target are deleted.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html
    # [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html
    #
    # @option params [required, String] :policy_name
    #   The name of the scaling policy.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource associated with the scaling policy.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [required, String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @option params [String] :policy_type
    #   The policy type. This parameter is required if you are creating a
    #   scaling policy.
    #
    #   The following policy types are supported:
    #
    #   `TargetTrackingScaling`—Not supported for Amazon EMR
    #
    #   `StepScaling`—Not supported for DynamoDB, Amazon Comprehend, Lambda,
    #   Amazon Keyspaces (for Apache Cassandra), or Amazon MSK.
    #
    #   For more information, see [Target Tracking Scaling Policies][1] and
    #   [Step Scaling Policies][2] in the *Application Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html
    #
    # @option params [Types::StepScalingPolicyConfiguration] :step_scaling_policy_configuration
    #   A step scaling policy.
    #
    #   This parameter is required if you are creating a policy and the policy
    #   type is `StepScaling`.
    #
    # @option params [Types::TargetTrackingScalingPolicyConfiguration] :target_tracking_scaling_policy_configuration
    #   A target tracking scaling policy. Includes support for predefined or
    #   customized metrics.
    #
    #   This parameter is required if you are creating a policy and the policy
    #   type is `TargetTrackingScaling`.
    #
    # @return [Types::PutScalingPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutScalingPolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::PutScalingPolicyResponse#alarms #alarms} => Array&lt;Types::Alarm&gt;
    #
    #
    # @example Example: To apply a target tracking scaling policy with a predefined metric specification
    #
    #   # The following example applies a target tracking scaling policy with a predefined metric specification to an Amazon ECS
    #   # service called web-app in the default cluster. The policy keeps the average CPU utilization of the service at 75
    #   # percent, with scale-out and scale-in cooldown periods of 60 seconds.
    #
    #   resp = client.put_scaling_policy({
    #     policy_name: "cpu75-target-tracking-scaling-policy", 
    #     policy_type: "TargetTrackingScaling", 
    #     resource_id: "service/default/web-app", 
    #     scalable_dimension: "ecs:service:DesiredCount", 
    #     service_namespace: "ecs", 
    #     target_tracking_scaling_policy_configuration: {
    #       predefined_metric_specification: {
    #         predefined_metric_type: "ECSServiceAverageCPUUtilization", 
    #       }, 
    #       scale_in_cooldown: 60, 
    #       scale_out_cooldown: 60, 
    #       target_value: 75, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alarms: [
    #       {
    #         alarm_arn: "arn:aws:cloudwatch:us-west-2:012345678910:alarm:TargetTracking-service/default/web-app-AlarmHigh-d4f0770c-b46e-434a-a60f-3b36d653feca", 
    #         alarm_name: "TargetTracking-service/default/web-app-AlarmHigh-d4f0770c-b46e-434a-a60f-3b36d653feca", 
    #       }, 
    #       {
    #         alarm_arn: "arn:aws:cloudwatch:us-west-2:012345678910:alarm:TargetTracking-service/default/web-app-AlarmLow-1b437334-d19b-4a63-a812-6c67aaf2910d", 
    #         alarm_name: "TargetTracking-service/default/web-app-AlarmLow-1b437334-d19b-4a63-a812-6c67aaf2910d", 
    #       }, 
    #     ], 
    #     policy_arn: "arn:aws:autoscaling:us-west-2:012345678910:scalingPolicy:6d8972f3-efc8-437c-92d1-6270f29a66e7:resource/ecs/service/default/web-app:policyName/cpu75-target-tracking-scaling-policy", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy({
    #     policy_name: "PolicyName", # required
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #     policy_type: "StepScaling", # accepts StepScaling, TargetTrackingScaling
    #     step_scaling_policy_configuration: {
    #       adjustment_type: "ChangeInCapacity", # accepts ChangeInCapacity, PercentChangeInCapacity, ExactCapacity
    #       step_adjustments: [
    #         {
    #           metric_interval_lower_bound: 1.0,
    #           metric_interval_upper_bound: 1.0,
    #           scaling_adjustment: 1, # required
    #         },
    #       ],
    #       min_adjustment_magnitude: 1,
    #       cooldown: 1,
    #       metric_aggregation_type: "Average", # accepts Average, Minimum, Maximum
    #     },
    #     target_tracking_scaling_policy_configuration: {
    #       target_value: 1.0, # required
    #       predefined_metric_specification: {
    #         predefined_metric_type: "DynamoDBReadCapacityUtilization", # required, accepts DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, SageMakerVariantInvocationsPerInstance, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, AppStreamAverageCapacityUtilization, ComprehendInferenceUtilization, LambdaProvisionedConcurrencyUtilization, CassandraReadCapacityUtilization, CassandraWriteCapacityUtilization, KafkaBrokerStorageUtilization
    #         resource_label: "ResourceLabel",
    #       },
    #       customized_metric_specification: {
    #         metric_name: "MetricName", # required
    #         namespace: "MetricNamespace", # required
    #         dimensions: [
    #           {
    #             name: "MetricDimensionName", # required
    #             value: "MetricDimensionValue", # required
    #           },
    #         ],
    #         statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #         unit: "MetricUnit",
    #       },
    #       scale_out_cooldown: 1,
    #       scale_in_cooldown: 1,
    #       disable_scale_in: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_arn #=> String
    #   resp.alarms #=> Array
    #   resp.alarms[0].alarm_name #=> String
    #   resp.alarms[0].alarm_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScalingPolicy AWS API Documentation
    #
    # @overload put_scaling_policy(params = {})
    # @param [Hash] params ({})
    def put_scaling_policy(params = {}, options = {})
      req = build_request(:put_scaling_policy, params)
      req.send_request(options)
    end

    # Creates or updates a scheduled action for an Application Auto Scaling
    # scalable target.
    #
    # Each scalable target is identified by a service namespace, resource
    # ID, and scalable dimension. A scheduled action applies to the scalable
    # target identified by those three attributes. You cannot create a
    # scheduled action until you have registered the resource as a scalable
    # target.
    #
    # When start and end times are specified with a recurring schedule using
    # a cron expression or rates, they form the boundaries of when the
    # recurring action starts and stops.
    #
    # To update a scheduled action, specify the parameters that you want to
    # change. If you don't specify start and end times, the old values are
    # deleted.
    #
    # For more information, see [Scheduled Scaling][1] in the *Application
    # Auto Scaling User Guide*.
    #
    # <note markdown="1"> If a scalable target is deregistered, the scalable target is no longer
    # available to run scheduled actions. Any scheduled actions that were
    # specified for the scalable target are deleted.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [String] :schedule
    #   The schedule for this action. The following formats are supported:
    #
    #   * At expressions - "`at(yyyy-mm-ddThh:mm:ss)`"
    #
    #   * Rate expressions - "`rate(value unit)`"
    #
    #   * Cron expressions - "`cron(fields)`"
    #
    #   At expressions are useful for one-time schedules. Specify the time in
    #   UTC.
    #
    #   For rate expressions, *value* is a positive integer and *unit* is
    #   `minute` \| `minutes` \| `hour` \| `hours` \| `day` \| `days`.
    #
    #   For more information about cron expressions, see [Cron Expressions][1]
    #   in the *Amazon CloudWatch Events User Guide*.
    #
    #   For examples of using these expressions, see [Scheduled Scaling][2] in
    #   the *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #   [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the scheduled action. This name must be unique among all
    #   other scheduled actions on the specified scalable target.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource associated with the scheduled action.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [required, String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time for this scheduled action to start.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The date and time for the recurring schedule to end.
    #
    # @option params [Types::ScalableTargetAction] :scalable_target_action
    #   The new minimum and maximum capacity. You can set both values or just
    #   one. At the scheduled time, if the current capacity is below the
    #   minimum capacity, Application Auto Scaling scales out to the minimum
    #   capacity. If the current capacity is above the maximum capacity,
    #   Application Auto Scaling scales in to the maximum capacity.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scheduled_action({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     schedule: "ResourceIdMaxLen1600",
    #     scheduled_action_name: "ScheduledActionName", # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     scalable_target_action: {
    #       min_capacity: 1,
    #       max_capacity: 1,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScheduledAction AWS API Documentation
    #
    # @overload put_scheduled_action(params = {})
    # @param [Hash] params ({})
    def put_scheduled_action(params = {}, options = {})
      req = build_request(:put_scheduled_action, params)
      req.send_request(options)
    end

    # Registers or updates a scalable target.
    #
    # A scalable target is a resource that Application Auto Scaling can
    # scale out and scale in. Scalable targets are uniquely identified by
    # the combination of resource ID, scalable dimension, and namespace.
    #
    # When you register a new scalable target, you must specify values for
    # minimum and maximum capacity. Current capacity will be adjusted within
    # the specified range when scaling starts. Application Auto Scaling
    # scaling policies will not scale capacity to values that are outside of
    # this range.
    #
    # After you register a scalable target, you do not need to register it
    # again to use other Application Auto Scaling operations. To see which
    # resources have been registered, use [DescribeScalableTargets][1]. You
    # can also view the scaling policies for a service namespace by using
    # [DescribeScalableTargets][1]. If you no longer need a scalable target,
    # you can deregister it by using [DeregisterScalableTarget][2].
    #
    # To update a scalable target, specify the parameters that you want to
    # change. Include the parameters that identify the scalable target:
    # resource ID, scalable dimension, and namespace. Any parameters that
    # you don't specify are not changed by this update request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html
    # [2]: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource that is associated with the scalable
    #   target. This string consists of the resource type and unique
    #   identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available in
    #     our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type and
    #     unique identifier are specified using the endpoint ARN. Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function` and
    #     the unique identifier is the function name with a function version
    #     or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the unique
    #     identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #
    # @option params [required, String] :scalable_dimension
    #   The scalable dimension associated with the scalable target. This
    #   string consists of the service namespace, resource type, and scaling
    #   property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance count
    #     of an EMR Instance Group.
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    #     Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` - The
    #     number of inference units for an Amazon Comprehend entity recognizer
    #     endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read capacity
    #     for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size (in
    #     GiB) for brokers in an Amazon MSK cluster.
    #
    # @option params [Integer] :min_capacity
    #   The minimum value that you plan to scale in to. When a scaling policy
    #   is in effect, Application Auto Scaling can scale in (contract) as
    #   needed to the minimum capacity limit in response to changing demand.
    #
    #   This parameter is required if you are registering a scalable target.
    #   For certain resources, the minimum value allowed is 0. This includes
    #   Lambda provisioned concurrency, Spot Fleet, ECS services, Aurora DB
    #   clusters, EMR clusters, and custom resources. For all other resources,
    #   the minimum value allowed is 1.
    #
    # @option params [Integer] :max_capacity
    #   The maximum value that you plan to scale out to. When a scaling policy
    #   is in effect, Application Auto Scaling can scale out (expand) as
    #   needed to the maximum capacity limit in response to changing demand.
    #
    #   This parameter is required if you are registering a scalable target.
    #
    #   Although you can specify a large maximum capacity, note that service
    #   quotas may impose lower limits. Each service has its own default
    #   quotas for the maximum capacity of the resource. If you want to
    #   specify a higher limit, you can request an increase. For more
    #   information, consult the documentation for that service. For
    #   information about the default quotas for each service, see [Service
    #   Endpoints and Quotas][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html
    #
    # @option params [String] :role_arn
    #   This parameter is required for services that do not support
    #   service-linked roles (such as Amazon EMR), and it must specify the ARN
    #   of an IAM role that allows Application Auto Scaling to modify the
    #   scalable target on your behalf.
    #
    #   If the service supports service-linked roles, Application Auto Scaling
    #   uses a service-linked role, which it creates if it does not yet exist.
    #   For more information, see [Application Auto Scaling IAM Roles][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles
    #
    # @option params [Types::SuspendedState] :suspended_state
    #   An embedded object that contains attributes and attribute values that
    #   are used to suspend and resume automatic scaling. Setting the value of
    #   an attribute to `true` suspends the specified scaling activities.
    #   Setting it to `false` (default) resumes the specified scaling
    #   activities.
    #
    #   **Suspension Outcomes**
    #
    #   * For `DynamicScalingInSuspended`, while a suspension is in effect,
    #     all scale-in activities that are triggered by a scaling policy are
    #     suspended.
    #
    #   * For `DynamicScalingOutSuspended`, while a suspension is in effect,
    #     all scale-out activities that are triggered by a scaling policy are
    #     suspended.
    #
    #   * For `ScheduledScalingSuspended`, while a suspension is in effect,
    #     all scaling activities that involve scheduled actions are suspended.
    #
    #   For more information, see [Suspending and Resuming Scaling][1] in the
    #   *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To register an ECS service as a scalable target
    #
    #   # This example registers a scalable target from an Amazon ECS service called web-app that is running on the default
    #   # cluster, with a minimum desired count of 1 task and a maximum desired count of 10 tasks.
    #
    #   resp = client.register_scalable_target({
    #     max_capacity: 10, 
    #     min_capacity: 1, 
    #     resource_id: "service/default/web-app", 
    #     scalable_dimension: "ecs:service:DesiredCount", 
    #     service_namespace: "ecs", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_scalable_target({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #     min_capacity: 1,
    #     max_capacity: 1,
    #     role_arn: "ResourceIdMaxLen1600",
    #     suspended_state: {
    #       dynamic_scaling_in_suspended: false,
    #       dynamic_scaling_out_suspended: false,
    #       scheduled_scaling_suspended: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/RegisterScalableTarget AWS API Documentation
    #
    # @overload register_scalable_target(params = {})
    # @param [Hash] params ({})
    def register_scalable_target(params = {}, options = {})
      req = build_request(:register_scalable_target, params)
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
      context[:gem_name] = 'aws-sdk-applicationautoscaling'
      context[:gem_version] = '1.48.0'
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
