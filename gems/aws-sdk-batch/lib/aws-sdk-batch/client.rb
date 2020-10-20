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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:batch)

module Aws::Batch
  # An API client for Batch.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Batch::Client.new(
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

    @identifier = :batch

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Cancels a job in an AWS Batch job queue. Jobs that are in the
    # `SUBMITTED`, `PENDING`, or `RUNNABLE` state are cancelled. Jobs that
    # have progressed to `STARTING` or `RUNNING` are not cancelled (but the
    # API operation still succeeds, even if no job is cancelled); these jobs
    # must be terminated with the TerminateJob operation.
    #
    # @option params [required, String] :job_id
    #   The AWS Batch job ID of the job to cancel.
    #
    # @option params [required, String] :reason
    #   A message to attach to the job that explains the reason for canceling
    #   it. This message is returned by future DescribeJobs operations on the
    #   job. This message is also recorded in the AWS Batch activity logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To cancel a job
    #
    #   # This example cancels a job with the specified job ID.
    #
    #   resp = client.cancel_job({
    #     job_id: "1d828f65-7a4d-42e8-996d-3b900ed59dc4", 
    #     reason: "Cancelling job.", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     job_id: "String", # required
    #     reason: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CancelJob AWS API Documentation
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # Creates an AWS Batch compute environment. You can create `MANAGED` or
    # `UNMANAGED` compute environments.
    #
    # In a managed compute environment, AWS Batch manages the capacity and
    # instance types of the compute resources within the environment. This
    # is based on the compute resource specification that you define or the
    # [launch template][1] that you specify when you create the compute
    # environment. You can choose to use Amazon EC2 On-Demand Instances or
    # Spot Instances in your managed compute environment. You can optionally
    # set a maximum price so that Spot Instances only launch when the Spot
    # Instance price is below a specified percentage of the On-Demand price.
    #
    # <note markdown="1"> Multi-node parallel jobs are not supported on Spot Instances.
    #
    #  </note>
    #
    # In an unmanaged compute environment, you can manage your own compute
    # resources. This provides more compute resource configuration options,
    # such as using a custom AMI, but you must ensure that your AMI meets
    # the Amazon ECS container instance AMI specification. For more
    # information, see [Container Instance AMIs][2] in the *Amazon Elastic
    # Container Service Developer Guide*. After you have created your
    # unmanaged compute environment, you can use the
    # DescribeComputeEnvironments operation to find the Amazon ECS cluster
    # that is associated with it. Then, manually launch your container
    # instances into that Amazon ECS cluster. For more information, see
    # [Launching an Amazon ECS Container Instance][3] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    # <note markdown="1"> AWS Batch does not upgrade the AMIs in a compute environment after it
    # is created (for example, when a newer version of the Amazon
    # ECS-optimized AMI is available). You are responsible for the
    # management of the guest operating system (including updates and
    # security patches) and any additional application software or utilities
    # that you install on the compute resources. To use a new AMI for your
    # AWS Batch jobs:
    #
    #  1.  Create a new compute environment with the new AMI.
    #
    # 2.  Add the compute environment to an existing job queue.
    #
    # 3.  Remove the old compute environment from your job queue.
    #
    # 4.  Delete the old compute environment.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html
    #
    # @option params [required, String] :compute_environment_name
    #   The name for your compute environment. Up to 128 letters (uppercase
    #   and lowercase), numbers, hyphens, and underscores are allowed.
    #
    # @option params [required, String] :type
    #   The type of the compute environment. For more information, see
    #   [Compute Environments][1] in the *AWS Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #
    # @option params [String] :state
    #   The state of the compute environment. If the state is `ENABLED`, then
    #   the compute environment accepts jobs from a queue and can scale out
    #   automatically based on queues.
    #
    # @option params [Types::ComputeResource] :compute_resources
    #   Details of the compute resources managed by the compute environment.
    #   This parameter is required for managed compute environments. For more
    #   information, see [Compute Environments][1] in the *AWS Batch User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #
    # @option params [required, String] :service_role
    #   The full Amazon Resource Name (ARN) of the IAM role that allows AWS
    #   Batch to make calls to other AWS services on your behalf.
    #
    #   If your specified role has a path other than `/`, then you must either
    #   specify the full role ARN (this is recommended) or prefix the role
    #   name with the path.
    #
    #   <note markdown="1"> Depending on how you created your AWS Batch service role, its ARN may
    #   contain the `service-role` path prefix. When you only specify the name
    #   of the service role, AWS Batch assumes that your ARN does not use the
    #   `service-role` path prefix. Because of this, we recommend that you
    #   specify the full ARN of your service role when you create compute
    #   environments.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that you apply to the compute environment to help you
    #   categorize and organize your resources. Each tag consists of a key and
    #   an optional value. For more information, see [Tagging AWS
    #   Resources][1] in *AWS General Reference*.
    #
    #   These tags can be updated or removed using the [TagResource][2] and
    #   [UntagResource][3] API operations. These tags do not propagate to the
    #   underlying compute resources.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html
    #
    # @return [Types::CreateComputeEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComputeEnvironmentResponse#compute_environment_name #compute_environment_name} => String
    #   * {Types::CreateComputeEnvironmentResponse#compute_environment_arn #compute_environment_arn} => String
    #
    #
    # @example Example: To create a managed EC2 compute environment
    #
    #   # This example creates a managed compute environment with specific C4 instance types that are launched on demand. The
    #   # compute environment is called C4OnDemand.
    #
    #   resp = client.create_compute_environment({
    #     type: "MANAGED", 
    #     compute_environment_name: "C4OnDemand", 
    #     compute_resources: {
    #       type: "EC2", 
    #       desiredv_cpus: 48, 
    #       ec2_key_pair: "id_rsa", 
    #       instance_role: "ecsInstanceRole", 
    #       instance_types: [
    #         "c4.large", 
    #         "c4.xlarge", 
    #         "c4.2xlarge", 
    #         "c4.4xlarge", 
    #         "c4.8xlarge", 
    #       ], 
    #       maxv_cpus: 128, 
    #       minv_cpus: 0, 
    #       security_group_ids: [
    #         "sg-cf5093b2", 
    #       ], 
    #       subnets: [
    #         "subnet-220c0e0a", 
    #         "subnet-1a95556d", 
    #         "subnet-978f6dce", 
    #       ], 
    #       tags: {
    #         "Name" => "Batch Instance - C4OnDemand", 
    #       }, 
    #     }, 
    #     service_role: "arn:aws:iam::012345678910:role/AWSBatchServiceRole", 
    #     state: "ENABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     compute_environment_arn: "arn:aws:batch:us-east-1:012345678910:compute-environment/C4OnDemand", 
    #     compute_environment_name: "C4OnDemand", 
    #   }
    #
    # @example Example: To create a managed EC2 Spot compute environment
    #
    #   # This example creates a managed compute environment with the M4 instance type that is launched when the Spot bid price is
    #   # at or below 20% of the On-Demand price for the instance type. The compute environment is called M4Spot.
    #
    #   resp = client.create_compute_environment({
    #     type: "MANAGED", 
    #     compute_environment_name: "M4Spot", 
    #     compute_resources: {
    #       type: "SPOT", 
    #       bid_percentage: 20, 
    #       desiredv_cpus: 4, 
    #       ec2_key_pair: "id_rsa", 
    #       instance_role: "ecsInstanceRole", 
    #       instance_types: [
    #         "m4", 
    #       ], 
    #       maxv_cpus: 128, 
    #       minv_cpus: 0, 
    #       security_group_ids: [
    #         "sg-cf5093b2", 
    #       ], 
    #       spot_iam_fleet_role: "arn:aws:iam::012345678910:role/aws-ec2-spot-fleet-role", 
    #       subnets: [
    #         "subnet-220c0e0a", 
    #         "subnet-1a95556d", 
    #         "subnet-978f6dce", 
    #       ], 
    #       tags: {
    #         "Name" => "Batch Instance - M4Spot", 
    #       }, 
    #     }, 
    #     service_role: "arn:aws:iam::012345678910:role/AWSBatchServiceRole", 
    #     state: "ENABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     compute_environment_arn: "arn:aws:batch:us-east-1:012345678910:compute-environment/M4Spot", 
    #     compute_environment_name: "M4Spot", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_compute_environment({
    #     compute_environment_name: "String", # required
    #     type: "MANAGED", # required, accepts MANAGED, UNMANAGED
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     compute_resources: {
    #       type: "EC2", # required, accepts EC2, SPOT
    #       allocation_strategy: "BEST_FIT", # accepts BEST_FIT, BEST_FIT_PROGRESSIVE, SPOT_CAPACITY_OPTIMIZED
    #       minv_cpus: 1, # required
    #       maxv_cpus: 1, # required
    #       desiredv_cpus: 1,
    #       instance_types: ["String"], # required
    #       image_id: "String",
    #       subnets: ["String"], # required
    #       security_group_ids: ["String"],
    #       ec2_key_pair: "String",
    #       instance_role: "String", # required
    #       tags: {
    #         "String" => "String",
    #       },
    #       placement_group: "String",
    #       bid_percentage: 1,
    #       spot_iam_fleet_role: "String",
    #       launch_template: {
    #         launch_template_id: "String",
    #         launch_template_name: "String",
    #         version: "String",
    #       },
    #     },
    #     service_role: "String", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.compute_environment_name #=> String
    #   resp.compute_environment_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateComputeEnvironment AWS API Documentation
    #
    # @overload create_compute_environment(params = {})
    # @param [Hash] params ({})
    def create_compute_environment(params = {}, options = {})
      req = build_request(:create_compute_environment, params)
      req.send_request(options)
    end

    # Creates an AWS Batch job queue. When you create a job queue, you
    # associate one or more compute environments to the queue and assign an
    # order of preference for the compute environments.
    #
    # You also set a priority to the job queue that determines the order in
    # which the AWS Batch scheduler places jobs onto its associated compute
    # environments. For example, if a compute environment is associated with
    # more than one job queue, the job queue with a higher priority is given
    # preference for scheduling jobs to that compute environment.
    #
    # @option params [required, String] :job_queue_name
    #   The name of the job queue.
    #
    # @option params [String] :state
    #   The state of the job queue. If the job queue state is `ENABLED`, it is
    #   able to accept jobs. If the job queue state is `DISABLED`, new jobs
    #   cannot be added to the queue, but jobs already in the queue can
    #   finish.
    #
    # @option params [required, Integer] :priority
    #   The priority of the job queue. Job queues with a higher priority (or a
    #   higher integer value for the `priority` parameter) are evaluated first
    #   when associated with the same compute environment. Priority is
    #   determined in descending order, for example, a job queue with a
    #   priority value of `10` is given scheduling preference over a job queue
    #   with a priority value of `1`.
    #
    # @option params [required, Array<Types::ComputeEnvironmentOrder>] :compute_environment_order
    #   The set of compute environments mapped to a job queue and their order
    #   relative to each other. The job scheduler uses this parameter to
    #   determine which compute environment should execute a given job.
    #   Compute environments must be in the `VALID` state before you can
    #   associate them with a job queue. You can associate up to three compute
    #   environments with a job queue.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that you apply to the job queue to help you categorize and
    #   organize your resources. Each tag consists of a key and an optional
    #   value. For more information, see [Tagging AWS Resources][1] in *AWS
    #   General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateJobQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobQueueResponse#job_queue_name #job_queue_name} => String
    #   * {Types::CreateJobQueueResponse#job_queue_arn #job_queue_arn} => String
    #
    #
    # @example Example: To create a job queue with a single compute environment
    #
    #   # This example creates a job queue called LowPriority that uses the M4Spot compute environment.
    #
    #   resp = client.create_job_queue({
    #     compute_environment_order: [
    #       {
    #         compute_environment: "M4Spot", 
    #         order: 1, 
    #       }, 
    #     ], 
    #     job_queue_name: "LowPriority", 
    #     priority: 1, 
    #     state: "ENABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_queue_arn: "arn:aws:batch:us-east-1:012345678910:job-queue/LowPriority", 
    #     job_queue_name: "LowPriority", 
    #   }
    #
    # @example Example: To create a job queue with multiple compute environments
    #
    #   # This example creates a job queue called HighPriority that uses the C4OnDemand compute environment with an order of 1 and
    #   # the M4Spot compute environment with an order of 2.
    #
    #   resp = client.create_job_queue({
    #     compute_environment_order: [
    #       {
    #         compute_environment: "C4OnDemand", 
    #         order: 1, 
    #       }, 
    #       {
    #         compute_environment: "M4Spot", 
    #         order: 2, 
    #       }, 
    #     ], 
    #     job_queue_name: "HighPriority", 
    #     priority: 10, 
    #     state: "ENABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_queue_arn: "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority", 
    #     job_queue_name: "HighPriority", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job_queue({
    #     job_queue_name: "String", # required
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     priority: 1, # required
    #     compute_environment_order: [ # required
    #       {
    #         order: 1, # required
    #         compute_environment: "String", # required
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_queue_name #=> String
    #   resp.job_queue_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateJobQueue AWS API Documentation
    #
    # @overload create_job_queue(params = {})
    # @param [Hash] params ({})
    def create_job_queue(params = {}, options = {})
      req = build_request(:create_job_queue, params)
      req.send_request(options)
    end

    # Deletes an AWS Batch compute environment.
    #
    # Before you can delete a compute environment, you must set its state to
    # `DISABLED` with the UpdateComputeEnvironment API operation and
    # disassociate it from any job queues with the UpdateJobQueue API
    # operation.
    #
    # @option params [required, String] :compute_environment
    #   The name or Amazon Resource Name (ARN) of the compute environment to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a compute environment
    #
    #   # This example deletes the P2OnDemand compute environment.
    #
    #   resp = client.delete_compute_environment({
    #     compute_environment: "P2OnDemand", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_compute_environment({
    #     compute_environment: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteComputeEnvironment AWS API Documentation
    #
    # @overload delete_compute_environment(params = {})
    # @param [Hash] params ({})
    def delete_compute_environment(params = {}, options = {})
      req = build_request(:delete_compute_environment, params)
      req.send_request(options)
    end

    # Deletes the specified job queue. You must first disable submissions
    # for a queue with the UpdateJobQueue operation. All jobs in the queue
    # are terminated when you delete a job queue.
    #
    # It is not necessary to disassociate compute environments from a queue
    # before submitting a `DeleteJobQueue` request.
    #
    # @option params [required, String] :job_queue
    #   The short name or full Amazon Resource Name (ARN) of the queue to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a job queue
    #
    #   # This example deletes the GPGPU job queue.
    #
    #   resp = client.delete_job_queue({
    #     job_queue: "GPGPU", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_queue({
    #     job_queue: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteJobQueue AWS API Documentation
    #
    # @overload delete_job_queue(params = {})
    # @param [Hash] params ({})
    def delete_job_queue(params = {}, options = {})
      req = build_request(:delete_job_queue, params)
      req.send_request(options)
    end

    # Deregisters an AWS Batch job definition. Job definitions will be
    # permanently deleted after 180 days.
    #
    # @option params [required, String] :job_definition
    #   The name and revision (`name:revision`) or full Amazon Resource Name
    #   (ARN) of the job definition to deregister.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To deregister a job definition
    #
    #   # This example deregisters a job definition called sleep10.
    #
    #   resp = client.deregister_job_definition({
    #     job_definition: "sleep10", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_job_definition({
    #     job_definition: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeregisterJobDefinition AWS API Documentation
    #
    # @overload deregister_job_definition(params = {})
    # @param [Hash] params ({})
    def deregister_job_definition(params = {}, options = {})
      req = build_request(:deregister_job_definition, params)
      req.send_request(options)
    end

    # Describes one or more of your compute environments.
    #
    # If you are using an unmanaged compute environment, you can use the
    # `DescribeComputeEnvironment` operation to determine the
    # `ecsClusterArn` that you should launch your Amazon ECS container
    # instances into.
    #
    # @option params [Array<String>] :compute_environments
    #   A list of up to 100 compute environment names or full Amazon Resource
    #   Name (ARN) entries.
    #
    # @option params [Integer] :max_results
    #   The maximum number of cluster results returned by
    #   `DescribeComputeEnvironments` in paginated output. When this parameter
    #   is used, `DescribeComputeEnvironments` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `DescribeComputeEnvironments` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `DescribeComputeEnvironments` returns up
    #   to 100 results and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeComputeEnvironments` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::DescribeComputeEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComputeEnvironmentsResponse#compute_environments #compute_environments} => Array&lt;Types::ComputeEnvironmentDetail&gt;
    #   * {Types::DescribeComputeEnvironmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe a compute environment
    #
    #   # This example describes the P2OnDemand compute environment.
    #
    #   resp = client.describe_compute_environments({
    #     compute_environments: [
    #       "P2OnDemand", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     compute_environments: [
    #       {
    #         type: "MANAGED", 
    #         compute_environment_arn: "arn:aws:batch:us-east-1:012345678910:compute-environment/P2OnDemand", 
    #         compute_environment_name: "P2OnDemand", 
    #         compute_resources: {
    #           type: "EC2", 
    #           desiredv_cpus: 48, 
    #           ec2_key_pair: "id_rsa", 
    #           instance_role: "ecsInstanceRole", 
    #           instance_types: [
    #             "p2", 
    #           ], 
    #           maxv_cpus: 128, 
    #           minv_cpus: 0, 
    #           security_group_ids: [
    #             "sg-cf5093b2", 
    #           ], 
    #           subnets: [
    #             "subnet-220c0e0a", 
    #             "subnet-1a95556d", 
    #             "subnet-978f6dce", 
    #           ], 
    #           tags: {
    #             "Name" => "Batch Instance - P2OnDemand", 
    #           }, 
    #         }, 
    #         ecs_cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/P2OnDemand_Batch_2c06f29d-d1fe-3a49-879d-42394c86effc", 
    #         service_role: "arn:aws:iam::012345678910:role/AWSBatchServiceRole", 
    #         state: "ENABLED", 
    #         status: "VALID", 
    #         status_reason: "ComputeEnvironment Healthy", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_compute_environments({
    #     compute_environments: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.compute_environments #=> Array
    #   resp.compute_environments[0].compute_environment_name #=> String
    #   resp.compute_environments[0].compute_environment_arn #=> String
    #   resp.compute_environments[0].ecs_cluster_arn #=> String
    #   resp.compute_environments[0].tags #=> Hash
    #   resp.compute_environments[0].tags["TagKey"] #=> String
    #   resp.compute_environments[0].type #=> String, one of "MANAGED", "UNMANAGED"
    #   resp.compute_environments[0].state #=> String, one of "ENABLED", "DISABLED"
    #   resp.compute_environments[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"
    #   resp.compute_environments[0].status_reason #=> String
    #   resp.compute_environments[0].compute_resources.type #=> String, one of "EC2", "SPOT"
    #   resp.compute_environments[0].compute_resources.allocation_strategy #=> String, one of "BEST_FIT", "BEST_FIT_PROGRESSIVE", "SPOT_CAPACITY_OPTIMIZED"
    #   resp.compute_environments[0].compute_resources.minv_cpus #=> Integer
    #   resp.compute_environments[0].compute_resources.maxv_cpus #=> Integer
    #   resp.compute_environments[0].compute_resources.desiredv_cpus #=> Integer
    #   resp.compute_environments[0].compute_resources.instance_types #=> Array
    #   resp.compute_environments[0].compute_resources.instance_types[0] #=> String
    #   resp.compute_environments[0].compute_resources.image_id #=> String
    #   resp.compute_environments[0].compute_resources.subnets #=> Array
    #   resp.compute_environments[0].compute_resources.subnets[0] #=> String
    #   resp.compute_environments[0].compute_resources.security_group_ids #=> Array
    #   resp.compute_environments[0].compute_resources.security_group_ids[0] #=> String
    #   resp.compute_environments[0].compute_resources.ec2_key_pair #=> String
    #   resp.compute_environments[0].compute_resources.instance_role #=> String
    #   resp.compute_environments[0].compute_resources.tags #=> Hash
    #   resp.compute_environments[0].compute_resources.tags["String"] #=> String
    #   resp.compute_environments[0].compute_resources.placement_group #=> String
    #   resp.compute_environments[0].compute_resources.bid_percentage #=> Integer
    #   resp.compute_environments[0].compute_resources.spot_iam_fleet_role #=> String
    #   resp.compute_environments[0].compute_resources.launch_template.launch_template_id #=> String
    #   resp.compute_environments[0].compute_resources.launch_template.launch_template_name #=> String
    #   resp.compute_environments[0].compute_resources.launch_template.version #=> String
    #   resp.compute_environments[0].service_role #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeComputeEnvironments AWS API Documentation
    #
    # @overload describe_compute_environments(params = {})
    # @param [Hash] params ({})
    def describe_compute_environments(params = {}, options = {})
      req = build_request(:describe_compute_environments, params)
      req.send_request(options)
    end

    # Describes a list of job definitions. You can specify a `status` (such
    # as `ACTIVE`) to only return job definitions that match that status.
    #
    # @option params [Array<String>] :job_definitions
    #   A list of up to 100 job definition names or full Amazon Resource Name
    #   (ARN) entries.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by `DescribeJobDefinitions` in
    #   paginated output. When this parameter is used,
    #   `DescribeJobDefinitions` only returns `maxResults` results in a single
    #   page along with a `nextToken` response element. The remaining results
    #   of the initial request can be seen by sending another
    #   `DescribeJobDefinitions` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `DescribeJobDefinitions` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #
    # @option params [String] :job_definition_name
    #   The name of the job definition to describe.
    #
    # @option params [String] :status
    #   The status with which to filter job definitions.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeJobDefinitions` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::DescribeJobDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobDefinitionsResponse#job_definitions #job_definitions} => Array&lt;Types::JobDefinition&gt;
    #   * {Types::DescribeJobDefinitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe active job definitions
    #
    #   # This example describes all of your active job definitions.
    #
    #   resp = client.describe_job_definitions({
    #     status: "ACTIVE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_definitions: [
    #       {
    #         type: "container", 
    #         container_properties: {
    #           command: [
    #             "sleep", 
    #             "60", 
    #           ], 
    #           environment: [
    #           ], 
    #           image: "busybox", 
    #           memory: 128, 
    #           mount_points: [
    #           ], 
    #           ulimits: [
    #           ], 
    #           vcpus: 1, 
    #           volumes: [
    #           ], 
    #         }, 
    #         job_definition_arn: "arn:aws:batch:us-east-1:012345678910:job-definition/sleep60:1", 
    #         job_definition_name: "sleep60", 
    #         revision: 1, 
    #         status: "ACTIVE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_definitions({
    #     job_definitions: ["String"],
    #     max_results: 1,
    #     job_definition_name: "String",
    #     status: "String",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_definitions #=> Array
    #   resp.job_definitions[0].job_definition_name #=> String
    #   resp.job_definitions[0].job_definition_arn #=> String
    #   resp.job_definitions[0].revision #=> Integer
    #   resp.job_definitions[0].status #=> String
    #   resp.job_definitions[0].type #=> String
    #   resp.job_definitions[0].parameters #=> Hash
    #   resp.job_definitions[0].parameters["String"] #=> String
    #   resp.job_definitions[0].retry_strategy.attempts #=> Integer
    #   resp.job_definitions[0].retry_strategy.evaluate_on_exit #=> Array
    #   resp.job_definitions[0].retry_strategy.evaluate_on_exit[0].on_status_reason #=> String
    #   resp.job_definitions[0].retry_strategy.evaluate_on_exit[0].on_reason #=> String
    #   resp.job_definitions[0].retry_strategy.evaluate_on_exit[0].on_exit_code #=> String
    #   resp.job_definitions[0].retry_strategy.evaluate_on_exit[0].action #=> String, one of "RETRY", "EXIT"
    #   resp.job_definitions[0].container_properties.image #=> String
    #   resp.job_definitions[0].container_properties.vcpus #=> Integer
    #   resp.job_definitions[0].container_properties.memory #=> Integer
    #   resp.job_definitions[0].container_properties.command #=> Array
    #   resp.job_definitions[0].container_properties.command[0] #=> String
    #   resp.job_definitions[0].container_properties.job_role_arn #=> String
    #   resp.job_definitions[0].container_properties.execution_role_arn #=> String
    #   resp.job_definitions[0].container_properties.volumes #=> Array
    #   resp.job_definitions[0].container_properties.volumes[0].host.source_path #=> String
    #   resp.job_definitions[0].container_properties.volumes[0].name #=> String
    #   resp.job_definitions[0].container_properties.environment #=> Array
    #   resp.job_definitions[0].container_properties.environment[0].name #=> String
    #   resp.job_definitions[0].container_properties.environment[0].value #=> String
    #   resp.job_definitions[0].container_properties.mount_points #=> Array
    #   resp.job_definitions[0].container_properties.mount_points[0].container_path #=> String
    #   resp.job_definitions[0].container_properties.mount_points[0].read_only #=> Boolean
    #   resp.job_definitions[0].container_properties.mount_points[0].source_volume #=> String
    #   resp.job_definitions[0].container_properties.readonly_root_filesystem #=> Boolean
    #   resp.job_definitions[0].container_properties.privileged #=> Boolean
    #   resp.job_definitions[0].container_properties.ulimits #=> Array
    #   resp.job_definitions[0].container_properties.ulimits[0].hard_limit #=> Integer
    #   resp.job_definitions[0].container_properties.ulimits[0].name #=> String
    #   resp.job_definitions[0].container_properties.ulimits[0].soft_limit #=> Integer
    #   resp.job_definitions[0].container_properties.user #=> String
    #   resp.job_definitions[0].container_properties.instance_type #=> String
    #   resp.job_definitions[0].container_properties.resource_requirements #=> Array
    #   resp.job_definitions[0].container_properties.resource_requirements[0].value #=> String
    #   resp.job_definitions[0].container_properties.resource_requirements[0].type #=> String, one of "GPU"
    #   resp.job_definitions[0].container_properties.linux_parameters.devices #=> Array
    #   resp.job_definitions[0].container_properties.linux_parameters.devices[0].host_path #=> String
    #   resp.job_definitions[0].container_properties.linux_parameters.devices[0].container_path #=> String
    #   resp.job_definitions[0].container_properties.linux_parameters.devices[0].permissions #=> Array
    #   resp.job_definitions[0].container_properties.linux_parameters.devices[0].permissions[0] #=> String, one of "READ", "WRITE", "MKNOD"
    #   resp.job_definitions[0].container_properties.linux_parameters.init_process_enabled #=> Boolean
    #   resp.job_definitions[0].container_properties.linux_parameters.shared_memory_size #=> Integer
    #   resp.job_definitions[0].container_properties.linux_parameters.tmpfs #=> Array
    #   resp.job_definitions[0].container_properties.linux_parameters.tmpfs[0].container_path #=> String
    #   resp.job_definitions[0].container_properties.linux_parameters.tmpfs[0].size #=> Integer
    #   resp.job_definitions[0].container_properties.linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.job_definitions[0].container_properties.linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.job_definitions[0].container_properties.linux_parameters.max_swap #=> Integer
    #   resp.job_definitions[0].container_properties.linux_parameters.swappiness #=> Integer
    #   resp.job_definitions[0].container_properties.log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"
    #   resp.job_definitions[0].container_properties.log_configuration.options #=> Hash
    #   resp.job_definitions[0].container_properties.log_configuration.options["String"] #=> String
    #   resp.job_definitions[0].container_properties.log_configuration.secret_options #=> Array
    #   resp.job_definitions[0].container_properties.log_configuration.secret_options[0].name #=> String
    #   resp.job_definitions[0].container_properties.log_configuration.secret_options[0].value_from #=> String
    #   resp.job_definitions[0].container_properties.secrets #=> Array
    #   resp.job_definitions[0].container_properties.secrets[0].name #=> String
    #   resp.job_definitions[0].container_properties.secrets[0].value_from #=> String
    #   resp.job_definitions[0].timeout.attempt_duration_seconds #=> Integer
    #   resp.job_definitions[0].node_properties.num_nodes #=> Integer
    #   resp.job_definitions[0].node_properties.main_node #=> Integer
    #   resp.job_definitions[0].node_properties.node_range_properties #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].target_nodes #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.image #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.vcpus #=> Integer
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.memory #=> Integer
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.command #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.command[0] #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.job_role_arn #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.execution_role_arn #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.volumes #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.volumes[0].host.source_path #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.volumes[0].name #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.environment #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.environment[0].name #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.environment[0].value #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.mount_points #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.mount_points[0].container_path #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.mount_points[0].read_only #=> Boolean
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.mount_points[0].source_volume #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.readonly_root_filesystem #=> Boolean
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.privileged #=> Boolean
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.ulimits #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.ulimits[0].hard_limit #=> Integer
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.ulimits[0].name #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.ulimits[0].soft_limit #=> Integer
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.user #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.instance_type #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.resource_requirements #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.resource_requirements[0].value #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.resource_requirements[0].type #=> String, one of "GPU"
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.devices #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.devices[0].host_path #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.devices[0].container_path #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.devices[0].permissions #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.devices[0].permissions[0] #=> String, one of "READ", "WRITE", "MKNOD"
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.init_process_enabled #=> Boolean
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.shared_memory_size #=> Integer
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs[0].container_path #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs[0].size #=> Integer
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.max_swap #=> Integer
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.linux_parameters.swappiness #=> Integer
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.log_configuration.options #=> Hash
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.log_configuration.options["String"] #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.log_configuration.secret_options #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.log_configuration.secret_options[0].name #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.log_configuration.secret_options[0].value_from #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.secrets #=> Array
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.secrets[0].name #=> String
    #   resp.job_definitions[0].node_properties.node_range_properties[0].container.secrets[0].value_from #=> String
    #   resp.job_definitions[0].tags #=> Hash
    #   resp.job_definitions[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobDefinitions AWS API Documentation
    #
    # @overload describe_job_definitions(params = {})
    # @param [Hash] params ({})
    def describe_job_definitions(params = {}, options = {})
      req = build_request(:describe_job_definitions, params)
      req.send_request(options)
    end

    # Describes one or more of your job queues.
    #
    # @option params [Array<String>] :job_queues
    #   A list of up to 100 queue names or full queue Amazon Resource Name
    #   (ARN) entries.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by `DescribeJobQueues` in
    #   paginated output. When this parameter is used, `DescribeJobQueues`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `DescribeJobQueues` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If this parameter is not used, then `DescribeJobQueues` returns
    #   up to 100 results and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeJobQueues` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::DescribeJobQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobQueuesResponse#job_queues #job_queues} => Array&lt;Types::JobQueueDetail&gt;
    #   * {Types::DescribeJobQueuesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe a job queue
    #
    #   # This example describes the HighPriority job queue.
    #
    #   resp = client.describe_job_queues({
    #     job_queues: [
    #       "HighPriority", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_queues: [
    #       {
    #         compute_environment_order: [
    #           {
    #             compute_environment: "arn:aws:batch:us-east-1:012345678910:compute-environment/C4OnDemand", 
    #             order: 1, 
    #           }, 
    #         ], 
    #         job_queue_arn: "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority", 
    #         job_queue_name: "HighPriority", 
    #         priority: 1, 
    #         state: "ENABLED", 
    #         status: "VALID", 
    #         status_reason: "JobQueue Healthy", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_queues({
    #     job_queues: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_queues #=> Array
    #   resp.job_queues[0].job_queue_name #=> String
    #   resp.job_queues[0].job_queue_arn #=> String
    #   resp.job_queues[0].state #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_queues[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"
    #   resp.job_queues[0].status_reason #=> String
    #   resp.job_queues[0].priority #=> Integer
    #   resp.job_queues[0].compute_environment_order #=> Array
    #   resp.job_queues[0].compute_environment_order[0].order #=> Integer
    #   resp.job_queues[0].compute_environment_order[0].compute_environment #=> String
    #   resp.job_queues[0].tags #=> Hash
    #   resp.job_queues[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobQueues AWS API Documentation
    #
    # @overload describe_job_queues(params = {})
    # @param [Hash] params ({})
    def describe_job_queues(params = {}, options = {})
      req = build_request(:describe_job_queues, params)
      req.send_request(options)
    end

    # Describes a list of AWS Batch jobs.
    #
    # @option params [required, Array<String>] :jobs
    #   A list of up to 100 job IDs.
    #
    # @return [Types::DescribeJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobsResponse#jobs #jobs} => Array&lt;Types::JobDetail&gt;
    #
    #
    # @example Example: To describe a specific job
    #
    #   # This example describes a job with the specified job ID.
    #
    #   resp = client.describe_jobs({
    #     jobs: [
    #       "24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     jobs: [
    #       {
    #         container: {
    #           command: [
    #             "sleep", 
    #             "60", 
    #           ], 
    #           container_instance_arn: "arn:aws:ecs:us-east-1:012345678910:container-instance/5406d7cd-58bd-4b8f-9936-48d7c6b1526c", 
    #           environment: [
    #           ], 
    #           exit_code: 0, 
    #           image: "busybox", 
    #           memory: 128, 
    #           mount_points: [
    #           ], 
    #           ulimits: [
    #           ], 
    #           vcpus: 1, 
    #           volumes: [
    #           ], 
    #         }, 
    #         created_at: 1480460782010, 
    #         depends_on: [
    #         ], 
    #         job_definition: "sleep60", 
    #         job_id: "24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9", 
    #         job_name: "example", 
    #         job_queue: "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority", 
    #         parameters: {
    #         }, 
    #         started_at: 1480460816500, 
    #         status: "SUCCEEDED", 
    #         stopped_at: 1480460880699, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_jobs({
    #     jobs: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_arn #=> String
    #   resp.jobs[0].job_name #=> String
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].job_queue #=> String
    #   resp.jobs[0].status #=> String, one of "SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"
    #   resp.jobs[0].attempts #=> Array
    #   resp.jobs[0].attempts[0].container.container_instance_arn #=> String
    #   resp.jobs[0].attempts[0].container.task_arn #=> String
    #   resp.jobs[0].attempts[0].container.exit_code #=> Integer
    #   resp.jobs[0].attempts[0].container.reason #=> String
    #   resp.jobs[0].attempts[0].container.log_stream_name #=> String
    #   resp.jobs[0].attempts[0].container.network_interfaces #=> Array
    #   resp.jobs[0].attempts[0].container.network_interfaces[0].attachment_id #=> String
    #   resp.jobs[0].attempts[0].container.network_interfaces[0].ipv6_address #=> String
    #   resp.jobs[0].attempts[0].container.network_interfaces[0].private_ipv_4_address #=> String
    #   resp.jobs[0].attempts[0].started_at #=> Integer
    #   resp.jobs[0].attempts[0].stopped_at #=> Integer
    #   resp.jobs[0].attempts[0].status_reason #=> String
    #   resp.jobs[0].status_reason #=> String
    #   resp.jobs[0].created_at #=> Integer
    #   resp.jobs[0].retry_strategy.attempts #=> Integer
    #   resp.jobs[0].retry_strategy.evaluate_on_exit #=> Array
    #   resp.jobs[0].retry_strategy.evaluate_on_exit[0].on_status_reason #=> String
    #   resp.jobs[0].retry_strategy.evaluate_on_exit[0].on_reason #=> String
    #   resp.jobs[0].retry_strategy.evaluate_on_exit[0].on_exit_code #=> String
    #   resp.jobs[0].retry_strategy.evaluate_on_exit[0].action #=> String, one of "RETRY", "EXIT"
    #   resp.jobs[0].started_at #=> Integer
    #   resp.jobs[0].stopped_at #=> Integer
    #   resp.jobs[0].depends_on #=> Array
    #   resp.jobs[0].depends_on[0].job_id #=> String
    #   resp.jobs[0].depends_on[0].type #=> String, one of "N_TO_N", "SEQUENTIAL"
    #   resp.jobs[0].job_definition #=> String
    #   resp.jobs[0].parameters #=> Hash
    #   resp.jobs[0].parameters["String"] #=> String
    #   resp.jobs[0].container.image #=> String
    #   resp.jobs[0].container.vcpus #=> Integer
    #   resp.jobs[0].container.memory #=> Integer
    #   resp.jobs[0].container.command #=> Array
    #   resp.jobs[0].container.command[0] #=> String
    #   resp.jobs[0].container.job_role_arn #=> String
    #   resp.jobs[0].container.execution_role_arn #=> String
    #   resp.jobs[0].container.volumes #=> Array
    #   resp.jobs[0].container.volumes[0].host.source_path #=> String
    #   resp.jobs[0].container.volumes[0].name #=> String
    #   resp.jobs[0].container.environment #=> Array
    #   resp.jobs[0].container.environment[0].name #=> String
    #   resp.jobs[0].container.environment[0].value #=> String
    #   resp.jobs[0].container.mount_points #=> Array
    #   resp.jobs[0].container.mount_points[0].container_path #=> String
    #   resp.jobs[0].container.mount_points[0].read_only #=> Boolean
    #   resp.jobs[0].container.mount_points[0].source_volume #=> String
    #   resp.jobs[0].container.readonly_root_filesystem #=> Boolean
    #   resp.jobs[0].container.ulimits #=> Array
    #   resp.jobs[0].container.ulimits[0].hard_limit #=> Integer
    #   resp.jobs[0].container.ulimits[0].name #=> String
    #   resp.jobs[0].container.ulimits[0].soft_limit #=> Integer
    #   resp.jobs[0].container.privileged #=> Boolean
    #   resp.jobs[0].container.user #=> String
    #   resp.jobs[0].container.exit_code #=> Integer
    #   resp.jobs[0].container.reason #=> String
    #   resp.jobs[0].container.container_instance_arn #=> String
    #   resp.jobs[0].container.task_arn #=> String
    #   resp.jobs[0].container.log_stream_name #=> String
    #   resp.jobs[0].container.instance_type #=> String
    #   resp.jobs[0].container.network_interfaces #=> Array
    #   resp.jobs[0].container.network_interfaces[0].attachment_id #=> String
    #   resp.jobs[0].container.network_interfaces[0].ipv6_address #=> String
    #   resp.jobs[0].container.network_interfaces[0].private_ipv_4_address #=> String
    #   resp.jobs[0].container.resource_requirements #=> Array
    #   resp.jobs[0].container.resource_requirements[0].value #=> String
    #   resp.jobs[0].container.resource_requirements[0].type #=> String, one of "GPU"
    #   resp.jobs[0].container.linux_parameters.devices #=> Array
    #   resp.jobs[0].container.linux_parameters.devices[0].host_path #=> String
    #   resp.jobs[0].container.linux_parameters.devices[0].container_path #=> String
    #   resp.jobs[0].container.linux_parameters.devices[0].permissions #=> Array
    #   resp.jobs[0].container.linux_parameters.devices[0].permissions[0] #=> String, one of "READ", "WRITE", "MKNOD"
    #   resp.jobs[0].container.linux_parameters.init_process_enabled #=> Boolean
    #   resp.jobs[0].container.linux_parameters.shared_memory_size #=> Integer
    #   resp.jobs[0].container.linux_parameters.tmpfs #=> Array
    #   resp.jobs[0].container.linux_parameters.tmpfs[0].container_path #=> String
    #   resp.jobs[0].container.linux_parameters.tmpfs[0].size #=> Integer
    #   resp.jobs[0].container.linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.jobs[0].container.linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.jobs[0].container.linux_parameters.max_swap #=> Integer
    #   resp.jobs[0].container.linux_parameters.swappiness #=> Integer
    #   resp.jobs[0].container.log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"
    #   resp.jobs[0].container.log_configuration.options #=> Hash
    #   resp.jobs[0].container.log_configuration.options["String"] #=> String
    #   resp.jobs[0].container.log_configuration.secret_options #=> Array
    #   resp.jobs[0].container.log_configuration.secret_options[0].name #=> String
    #   resp.jobs[0].container.log_configuration.secret_options[0].value_from #=> String
    #   resp.jobs[0].container.secrets #=> Array
    #   resp.jobs[0].container.secrets[0].name #=> String
    #   resp.jobs[0].container.secrets[0].value_from #=> String
    #   resp.jobs[0].node_details.node_index #=> Integer
    #   resp.jobs[0].node_details.is_main_node #=> Boolean
    #   resp.jobs[0].node_properties.num_nodes #=> Integer
    #   resp.jobs[0].node_properties.main_node #=> Integer
    #   resp.jobs[0].node_properties.node_range_properties #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].target_nodes #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.image #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.vcpus #=> Integer
    #   resp.jobs[0].node_properties.node_range_properties[0].container.memory #=> Integer
    #   resp.jobs[0].node_properties.node_range_properties[0].container.command #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.command[0] #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.job_role_arn #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.execution_role_arn #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.volumes #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.volumes[0].host.source_path #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.volumes[0].name #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.environment #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.environment[0].name #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.environment[0].value #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.mount_points #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.mount_points[0].container_path #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.mount_points[0].read_only #=> Boolean
    #   resp.jobs[0].node_properties.node_range_properties[0].container.mount_points[0].source_volume #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.readonly_root_filesystem #=> Boolean
    #   resp.jobs[0].node_properties.node_range_properties[0].container.privileged #=> Boolean
    #   resp.jobs[0].node_properties.node_range_properties[0].container.ulimits #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.ulimits[0].hard_limit #=> Integer
    #   resp.jobs[0].node_properties.node_range_properties[0].container.ulimits[0].name #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.ulimits[0].soft_limit #=> Integer
    #   resp.jobs[0].node_properties.node_range_properties[0].container.user #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.instance_type #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.resource_requirements #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.resource_requirements[0].value #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.resource_requirements[0].type #=> String, one of "GPU"
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.devices #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.devices[0].host_path #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.devices[0].container_path #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.devices[0].permissions #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.devices[0].permissions[0] #=> String, one of "READ", "WRITE", "MKNOD"
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.init_process_enabled #=> Boolean
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.shared_memory_size #=> Integer
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs[0].container_path #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs[0].size #=> Integer
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.max_swap #=> Integer
    #   resp.jobs[0].node_properties.node_range_properties[0].container.linux_parameters.swappiness #=> Integer
    #   resp.jobs[0].node_properties.node_range_properties[0].container.log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"
    #   resp.jobs[0].node_properties.node_range_properties[0].container.log_configuration.options #=> Hash
    #   resp.jobs[0].node_properties.node_range_properties[0].container.log_configuration.options["String"] #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.log_configuration.secret_options #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.log_configuration.secret_options[0].name #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.log_configuration.secret_options[0].value_from #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.secrets #=> Array
    #   resp.jobs[0].node_properties.node_range_properties[0].container.secrets[0].name #=> String
    #   resp.jobs[0].node_properties.node_range_properties[0].container.secrets[0].value_from #=> String
    #   resp.jobs[0].array_properties.status_summary #=> Hash
    #   resp.jobs[0].array_properties.status_summary["String"] #=> Integer
    #   resp.jobs[0].array_properties.size #=> Integer
    #   resp.jobs[0].array_properties.index #=> Integer
    #   resp.jobs[0].timeout.attempt_duration_seconds #=> Integer
    #   resp.jobs[0].tags #=> Hash
    #   resp.jobs[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobs AWS API Documentation
    #
    # @overload describe_jobs(params = {})
    # @param [Hash] params ({})
    def describe_jobs(params = {}, options = {})
      req = build_request(:describe_jobs, params)
      req.send_request(options)
    end

    # Returns a list of AWS Batch jobs.
    #
    # You must specify only one of the following:
    #
    # * a job queue ID to return a list of jobs in that job queue
    #
    # * a multi-node parallel job ID to return a list of that job's nodes
    #
    # * an array job ID to return a list of that job's children
    #
    # You can filter the results by job status with the `jobStatus`
    # parameter. If you do not specify a status, only `RUNNING` jobs are
    # returned.
    #
    # @option params [String] :job_queue
    #   The name or full Amazon Resource Name (ARN) of the job queue with
    #   which to list jobs.
    #
    # @option params [String] :array_job_id
    #   The job ID for an array job. Specifying an array job ID with this
    #   parameter lists all child jobs from within the specified array.
    #
    # @option params [String] :multi_node_job_id
    #   The job ID for a multi-node parallel job. Specifying a multi-node
    #   parallel job ID with this parameter lists all nodes that are
    #   associated with the specified job.
    #
    # @option params [String] :job_status
    #   The job status with which to filter jobs in the specified queue. If
    #   you do not specify a status, only `RUNNING` jobs are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by `ListJobs` in paginated
    #   output. When this parameter is used, `ListJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListJobs` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListJobs` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated `ListJobs`
    #   request where `maxResults` was used and the results exceeded the value
    #   of that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is `null` when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#job_summary_list #job_summary_list} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list running jobs
    #
    #   # This example lists the running jobs in the HighPriority job queue.
    #
    #   resp = client.list_jobs({
    #     job_queue: "HighPriority", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_summary_list: [
    #       {
    #         job_id: "e66ff5fd-a1ff-4640-b1a2-0b0a142f49bb", 
    #         job_name: "example", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To list submitted jobs
    #
    #   # This example lists jobs in the HighPriority job queue that are in the SUBMITTED job status.
    #
    #   resp = client.list_jobs({
    #     job_queue: "HighPriority", 
    #     job_status: "SUBMITTED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_summary_list: [
    #       {
    #         job_id: "68f0c163-fbd4-44e6-9fd1-25b14a434786", 
    #         job_name: "example", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     job_queue: "String",
    #     array_job_id: "String",
    #     multi_node_job_id: "String",
    #     job_status: "SUBMITTED", # accepts SUBMITTED, PENDING, RUNNABLE, STARTING, RUNNING, SUCCEEDED, FAILED
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summary_list #=> Array
    #   resp.job_summary_list[0].job_arn #=> String
    #   resp.job_summary_list[0].job_id #=> String
    #   resp.job_summary_list[0].job_name #=> String
    #   resp.job_summary_list[0].created_at #=> Integer
    #   resp.job_summary_list[0].status #=> String, one of "SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"
    #   resp.job_summary_list[0].status_reason #=> String
    #   resp.job_summary_list[0].started_at #=> Integer
    #   resp.job_summary_list[0].stopped_at #=> Integer
    #   resp.job_summary_list[0].container.exit_code #=> Integer
    #   resp.job_summary_list[0].container.reason #=> String
    #   resp.job_summary_list[0].array_properties.size #=> Integer
    #   resp.job_summary_list[0].array_properties.index #=> Integer
    #   resp.job_summary_list[0].node_properties.is_main_node #=> Boolean
    #   resp.job_summary_list[0].node_properties.num_nodes #=> Integer
    #   resp.job_summary_list[0].node_properties.node_index #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # List the tags for an AWS Batch resource. AWS Batch resources that
    # support tags are compute environments, jobs, job definitions, and job
    # queues. ARNs for child jobs of array and multi-node parallel (MNP)
    # jobs are not supported.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. AWS Batch resources that support tags are compute
    #   environments, jobs, job definitions, and job queues. ARNs for child
    #   jobs of array and multi-node parallel (MNP) jobs are not supported.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: ListTagsForResource Example
    #
    #   # This demonstrates calling the ListTagsForResource action.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "Department" => "Engineering", 
    #       "Stage" => "Alpha", 
    #       "User" => "JaneDoe", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Registers an AWS Batch job definition.
    #
    # @option params [required, String] :job_definition_name
    #   The name of the job definition to register. Up to 128 letters
    #   (uppercase and lowercase), numbers, hyphens, and underscores are
    #   allowed.
    #
    # @option params [required, String] :type
    #   The type of job definition.
    #
    # @option params [Hash<String,String>] :parameters
    #   Default parameter substitution placeholders to set in the job
    #   definition. Parameters are specified as a key-value pair mapping.
    #   Parameters in a `SubmitJob` request override any corresponding
    #   parameter defaults from the job definition.
    #
    # @option params [Types::ContainerProperties] :container_properties
    #   An object with various properties specific to single-node
    #   container-based jobs. If the job definition's `type` parameter is
    #   `container`, then you must specify either `containerProperties` or
    #   `nodeProperties`.
    #
    # @option params [Types::NodeProperties] :node_properties
    #   An object with various properties specific to multi-node parallel
    #   jobs. If you specify node properties for a job, it becomes a
    #   multi-node parallel job. For more information, see [Multi-node
    #   Parallel Jobs][1] in the *AWS Batch User Guide*. If the job
    #   definition's `type` parameter is `container`, then you must specify
    #   either `containerProperties` or `nodeProperties`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html
    #
    # @option params [Types::RetryStrategy] :retry_strategy
    #   The retry strategy to use for failed jobs that are submitted with this
    #   job definition. Any retry strategy that is specified during a
    #   SubmitJob operation overrides the retry strategy defined here. If a
    #   job is terminated due to a timeout, it is not retried.
    #
    # @option params [Types::JobTimeout] :timeout
    #   The timeout configuration for jobs that are submitted with this job
    #   definition, after which AWS Batch terminates your jobs if they have
    #   not finished. If a job is terminated due to a timeout, it is not
    #   retried. The minimum value for the timeout is 60 seconds. Any timeout
    #   configuration that is specified during a SubmitJob operation overrides
    #   the timeout configuration defined here. For more information, see [Job
    #   Timeouts][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that you apply to the job definition to help you categorize
    #   and organize your resources. Each tag consists of a key and an
    #   optional value. For more information, see [Tagging AWS Resources][1]
    #   in *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::RegisterJobDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterJobDefinitionResponse#job_definition_name #job_definition_name} => String
    #   * {Types::RegisterJobDefinitionResponse#job_definition_arn #job_definition_arn} => String
    #   * {Types::RegisterJobDefinitionResponse#revision #revision} => Integer
    #
    #
    # @example Example: To register a job definition
    #
    #   # This example registers a job definition for a simple container job.
    #
    #   resp = client.register_job_definition({
    #     type: "container", 
    #     container_properties: {
    #       command: [
    #         "sleep", 
    #         "10", 
    #       ], 
    #       image: "busybox", 
    #       memory: 128, 
    #       vcpus: 1, 
    #     }, 
    #     job_definition_name: "sleep10", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_definition_arn: "arn:aws:batch:us-east-1:012345678910:job-definition/sleep10:1", 
    #     job_definition_name: "sleep10", 
    #     revision: 1, 
    #   }
    #
    # @example Example: RegisterJobDefinition with tags
    #
    #   # This demonstrates calling the RegisterJobDefinition action, including tags.
    #
    #   resp = client.register_job_definition({
    #     type: "container", 
    #     container_properties: {
    #       command: [
    #         "sleep", 
    #         "30", 
    #       ], 
    #       image: "busybox", 
    #       memory: 128, 
    #       vcpus: 1, 
    #     }, 
    #     job_definition_name: "sleep30", 
    #     tags: {
    #       "Department" => "Engineering", 
    #       "User" => "JaneDoe", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_definition_arn: "arn:aws:batch:us-east-1:012345678910:job-definition/sleep30:1", 
    #     job_definition_name: "sleep30", 
    #     revision: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_job_definition({
    #     job_definition_name: "String", # required
    #     type: "container", # required, accepts container, multinode
    #     parameters: {
    #       "String" => "String",
    #     },
    #     container_properties: {
    #       image: "String",
    #       vcpus: 1,
    #       memory: 1,
    #       command: ["String"],
    #       job_role_arn: "String",
    #       execution_role_arn: "String",
    #       volumes: [
    #         {
    #           host: {
    #             source_path: "String",
    #           },
    #           name: "String",
    #         },
    #       ],
    #       environment: [
    #         {
    #           name: "String",
    #           value: "String",
    #         },
    #       ],
    #       mount_points: [
    #         {
    #           container_path: "String",
    #           read_only: false,
    #           source_volume: "String",
    #         },
    #       ],
    #       readonly_root_filesystem: false,
    #       privileged: false,
    #       ulimits: [
    #         {
    #           hard_limit: 1, # required
    #           name: "String", # required
    #           soft_limit: 1, # required
    #         },
    #       ],
    #       user: "String",
    #       instance_type: "String",
    #       resource_requirements: [
    #         {
    #           value: "String", # required
    #           type: "GPU", # required, accepts GPU
    #         },
    #       ],
    #       linux_parameters: {
    #         devices: [
    #           {
    #             host_path: "String", # required
    #             container_path: "String",
    #             permissions: ["READ"], # accepts READ, WRITE, MKNOD
    #           },
    #         ],
    #         init_process_enabled: false,
    #         shared_memory_size: 1,
    #         tmpfs: [
    #           {
    #             container_path: "String", # required
    #             size: 1, # required
    #             mount_options: ["String"],
    #           },
    #         ],
    #         max_swap: 1,
    #         swappiness: 1,
    #       },
    #       log_configuration: {
    #         log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #         options: {
    #           "String" => "String",
    #         },
    #         secret_options: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           },
    #         ],
    #       },
    #       secrets: [
    #         {
    #           name: "String", # required
    #           value_from: "String", # required
    #         },
    #       ],
    #     },
    #     node_properties: {
    #       num_nodes: 1, # required
    #       main_node: 1, # required
    #       node_range_properties: [ # required
    #         {
    #           target_nodes: "String", # required
    #           container: {
    #             image: "String",
    #             vcpus: 1,
    #             memory: 1,
    #             command: ["String"],
    #             job_role_arn: "String",
    #             execution_role_arn: "String",
    #             volumes: [
    #               {
    #                 host: {
    #                   source_path: "String",
    #                 },
    #                 name: "String",
    #               },
    #             ],
    #             environment: [
    #               {
    #                 name: "String",
    #                 value: "String",
    #               },
    #             ],
    #             mount_points: [
    #               {
    #                 container_path: "String",
    #                 read_only: false,
    #                 source_volume: "String",
    #               },
    #             ],
    #             readonly_root_filesystem: false,
    #             privileged: false,
    #             ulimits: [
    #               {
    #                 hard_limit: 1, # required
    #                 name: "String", # required
    #                 soft_limit: 1, # required
    #               },
    #             ],
    #             user: "String",
    #             instance_type: "String",
    #             resource_requirements: [
    #               {
    #                 value: "String", # required
    #                 type: "GPU", # required, accepts GPU
    #               },
    #             ],
    #             linux_parameters: {
    #               devices: [
    #                 {
    #                   host_path: "String", # required
    #                   container_path: "String",
    #                   permissions: ["READ"], # accepts READ, WRITE, MKNOD
    #                 },
    #               ],
    #               init_process_enabled: false,
    #               shared_memory_size: 1,
    #               tmpfs: [
    #                 {
    #                   container_path: "String", # required
    #                   size: 1, # required
    #                   mount_options: ["String"],
    #                 },
    #               ],
    #               max_swap: 1,
    #               swappiness: 1,
    #             },
    #             log_configuration: {
    #               log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #               options: {
    #                 "String" => "String",
    #               },
    #               secret_options: [
    #                 {
    #                   name: "String", # required
    #                   value_from: "String", # required
    #                 },
    #               ],
    #             },
    #             secrets: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #     },
    #     retry_strategy: {
    #       attempts: 1,
    #       evaluate_on_exit: [
    #         {
    #           on_status_reason: "String",
    #           on_reason: "String",
    #           on_exit_code: "String",
    #           action: "RETRY", # required, accepts RETRY, EXIT
    #         },
    #       ],
    #     },
    #     timeout: {
    #       attempt_duration_seconds: 1,
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_definition_name #=> String
    #   resp.job_definition_arn #=> String
    #   resp.revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/RegisterJobDefinition AWS API Documentation
    #
    # @overload register_job_definition(params = {})
    # @param [Hash] params ({})
    def register_job_definition(params = {}, options = {})
      req = build_request(:register_job_definition, params)
      req.send_request(options)
    end

    # Submits an AWS Batch job from a job definition. Parameters specified
    # during SubmitJob override parameters defined in the job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job. The first character must be alphanumeric, and up
    #   to 128 letters (uppercase and lowercase), numbers, hyphens, and
    #   underscores are allowed.
    #
    # @option params [required, String] :job_queue
    #   The job queue into which the job is submitted. You can specify either
    #   the name or the Amazon Resource Name (ARN) of the queue.
    #
    # @option params [Types::ArrayProperties] :array_properties
    #   The array properties for the submitted job, such as the size of the
    #   array. The array size can be between 2 and 10,000. If you specify
    #   array properties for a job, it becomes an array job. For more
    #   information, see [Array Jobs][1] in the *AWS Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html
    #
    # @option params [Array<Types::JobDependency>] :depends_on
    #   A list of dependencies for the job. A job can depend upon a maximum of
    #   20 jobs. You can specify a `SEQUENTIAL` type dependency without
    #   specifying a job ID for array jobs so that each child array job
    #   completes sequentially, starting at index 0. You can also specify an
    #   `N_TO_N` type dependency with a job ID for array jobs. In that case,
    #   each index child of this job must wait for the corresponding index
    #   child of each dependency to complete before it can begin.
    #
    # @option params [required, String] :job_definition
    #   The job definition used by this job. This value can be one of `name`,
    #   `name:revision`, or the Amazon Resource Name (ARN) for the job
    #   definition. If `name` is specified without a revision then the latest
    #   active revision is used.
    #
    # @option params [Hash<String,String>] :parameters
    #   Additional parameters passed to the job that replace parameter
    #   substitution placeholders that are set in the job definition.
    #   Parameters are specified as a key and value pair mapping. Parameters
    #   in a `SubmitJob` request override any corresponding parameter defaults
    #   from the job definition.
    #
    # @option params [Types::ContainerOverrides] :container_overrides
    #   A list of container overrides in JSON format that specify the name of
    #   a container in the specified job definition and the overrides it
    #   should receive. You can override the default command for a container
    #   (that is specified in the job definition or the Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the job definition or Docker image)
    #   on a container or add new environment variables to it with an
    #   `environment` override.
    #
    # @option params [Types::NodeOverrides] :node_overrides
    #   A list of node overrides in JSON format that specify the node range to
    #   target and the container overrides for that node range.
    #
    # @option params [Types::RetryStrategy] :retry_strategy
    #   The retry strategy to use for failed jobs from this SubmitJob
    #   operation. When a retry strategy is specified here, it overrides the
    #   retry strategy defined in the job definition.
    #
    # @option params [Types::JobTimeout] :timeout
    #   The timeout configuration for this SubmitJob operation. You can
    #   specify a timeout duration after which AWS Batch terminates your jobs
    #   if they have not finished. If a job is terminated due to a timeout, it
    #   is not retried. The minimum value for the timeout is 60 seconds. This
    #   configuration overrides any timeout configuration specified in the job
    #   definition. For array jobs, child jobs have the same timeout
    #   configuration as the parent job. For more information, see [Job
    #   Timeouts][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that you apply to the job request to help you categorize and
    #   organize your resources. Each tag consists of a key and an optional
    #   value. For more information, see [Tagging AWS Resources][1] in *AWS
    #   General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::SubmitJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitJobResponse#job_arn #job_arn} => String
    #   * {Types::SubmitJobResponse#job_name #job_name} => String
    #   * {Types::SubmitJobResponse#job_id #job_id} => String
    #
    #
    # @example Example: To submit a job to a queue
    #
    #   # This example submits a simple container job called example to the HighPriority job queue.
    #
    #   resp = client.submit_job({
    #     job_definition: "sleep60", 
    #     job_name: "example", 
    #     job_queue: "HighPriority", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_id: "876da822-4198-45f2-a252-6cea32512ea8", 
    #     job_name: "example", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_job({
    #     job_name: "String", # required
    #     job_queue: "String", # required
    #     array_properties: {
    #       size: 1,
    #     },
    #     depends_on: [
    #       {
    #         job_id: "String",
    #         type: "N_TO_N", # accepts N_TO_N, SEQUENTIAL
    #       },
    #     ],
    #     job_definition: "String", # required
    #     parameters: {
    #       "String" => "String",
    #     },
    #     container_overrides: {
    #       vcpus: 1,
    #       memory: 1,
    #       command: ["String"],
    #       instance_type: "String",
    #       environment: [
    #         {
    #           name: "String",
    #           value: "String",
    #         },
    #       ],
    #       resource_requirements: [
    #         {
    #           value: "String", # required
    #           type: "GPU", # required, accepts GPU
    #         },
    #       ],
    #     },
    #     node_overrides: {
    #       num_nodes: 1,
    #       node_property_overrides: [
    #         {
    #           target_nodes: "String", # required
    #           container_overrides: {
    #             vcpus: 1,
    #             memory: 1,
    #             command: ["String"],
    #             instance_type: "String",
    #             environment: [
    #               {
    #                 name: "String",
    #                 value: "String",
    #               },
    #             ],
    #             resource_requirements: [
    #               {
    #                 value: "String", # required
    #                 type: "GPU", # required, accepts GPU
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #     },
    #     retry_strategy: {
    #       attempts: 1,
    #       evaluate_on_exit: [
    #         {
    #           on_status_reason: "String",
    #           on_reason: "String",
    #           on_exit_code: "String",
    #           action: "RETRY", # required, accepts RETRY, EXIT
    #         },
    #       ],
    #     },
    #     timeout: {
    #       attempt_duration_seconds: 1,
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_name #=> String
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/SubmitJob AWS API Documentation
    #
    # @overload submit_job(params = {})
    # @param [Hash] params ({})
    def submit_job(params = {}, options = {})
      req = build_request(:submit_job, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # `resourceArn`. If existing tags on a resource are not specified in the
    # request parameters, they are not changed. When a resource is deleted,
    # the tags associated with that resource are deleted as well. AWS Batch
    # resources that support tags are compute environments, jobs, job
    # definitions, and job queues. ARNs for child jobs of array and
    # multi-node parallel (MNP) jobs are not supported.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #   AWS Batch resources that support tags are compute environments, jobs,
    #   job definitions, and job queues. ARNs for child jobs of array and
    #   multi-node parallel (MNP) jobs are not supported.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags that you apply to the resource to help you categorize and
    #   organize your resources. Each tag consists of a key and an optional
    #   value. For more information, see [Tagging AWS Resources][1] in *AWS
    #   General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: TagResource Example
    #
    #   # This demonstrates calling the TagResource action.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1", 
    #     tags: {
    #       "Stage" => "Alpha", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Terminates a job in a job queue. Jobs that are in the `STARTING` or
    # `RUNNING` state are terminated, which causes them to transition to
    # `FAILED`. Jobs that have not progressed to the `STARTING` state are
    # cancelled.
    #
    # @option params [required, String] :job_id
    #   The AWS Batch job ID of the job to terminate.
    #
    # @option params [required, String] :reason
    #   A message to attach to the job that explains the reason for canceling
    #   it. This message is returned by future DescribeJobs operations on the
    #   job. This message is also recorded in the AWS Batch activity logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To terminate a job
    #
    #   # This example terminates a job with the specified job ID.
    #
    #   resp = client.terminate_job({
    #     job_id: "61e743ed-35e4-48da-b2de-5c8333821c84", 
    #     reason: "Terminating job.", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_job({
    #     job_id: "String", # required
    #     reason: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/TerminateJob AWS API Documentation
    #
    # @overload terminate_job(params = {})
    # @param [Hash] params ({})
    def terminate_job(params = {}, options = {})
      req = build_request(:terminate_job, params)
      req.send_request(options)
    end

    # Deletes specified tags from an AWS Batch resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to delete
    #   tags. AWS Batch resources that support tags are compute environments,
    #   jobs, job definitions, and job queues. ARNs for child jobs of array
    #   and multi-node parallel (MNP) jobs are not supported.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UntagResource Example
    #
    #   # This demonstrates calling the UntagResource action.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1", 
    #     tag_keys: [
    #       "Stage", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an AWS Batch compute environment.
    #
    # @option params [required, String] :compute_environment
    #   The name or full Amazon Resource Name (ARN) of the compute environment
    #   to update.
    #
    # @option params [String] :state
    #   The state of the compute environment. Compute environments in the
    #   `ENABLED` state can accept jobs from a queue and scale in or out
    #   automatically based on the workload demand of its associated queues.
    #
    # @option params [Types::ComputeResourceUpdate] :compute_resources
    #   Details of the compute resources managed by the compute environment.
    #   Required for a managed compute environment.
    #
    # @option params [String] :service_role
    #   The full Amazon Resource Name (ARN) of the IAM role that allows AWS
    #   Batch to make calls to other AWS services on your behalf.
    #
    #   If your specified role has a path other than `/`, then you must either
    #   specify the full role ARN (this is recommended) or prefix the role
    #   name with the path.
    #
    #   <note markdown="1"> Depending on how you created your AWS Batch service role, its ARN may
    #   contain the `service-role` path prefix. When you only specify the name
    #   of the service role, AWS Batch assumes that your ARN does not use the
    #   `service-role` path prefix. Because of this, we recommend that you
    #   specify the full ARN of your service role when you create compute
    #   environments.
    #
    #    </note>
    #
    # @return [Types::UpdateComputeEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateComputeEnvironmentResponse#compute_environment_name #compute_environment_name} => String
    #   * {Types::UpdateComputeEnvironmentResponse#compute_environment_arn #compute_environment_arn} => String
    #
    #
    # @example Example: To update a compute environment
    #
    #   # This example disables the P2OnDemand compute environment so it can be deleted.
    #
    #   resp = client.update_compute_environment({
    #     compute_environment: "P2OnDemand", 
    #     state: "DISABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     compute_environment_arn: "arn:aws:batch:us-east-1:012345678910:compute-environment/P2OnDemand", 
    #     compute_environment_name: "P2OnDemand", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_compute_environment({
    #     compute_environment: "String", # required
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     compute_resources: {
    #       minv_cpus: 1,
    #       maxv_cpus: 1,
    #       desiredv_cpus: 1,
    #     },
    #     service_role: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.compute_environment_name #=> String
    #   resp.compute_environment_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateComputeEnvironment AWS API Documentation
    #
    # @overload update_compute_environment(params = {})
    # @param [Hash] params ({})
    def update_compute_environment(params = {}, options = {})
      req = build_request(:update_compute_environment, params)
      req.send_request(options)
    end

    # Updates a job queue.
    #
    # @option params [required, String] :job_queue
    #   The name or the Amazon Resource Name (ARN) of the job queue.
    #
    # @option params [String] :state
    #   Describes the queue's ability to accept new jobs. If the job queue
    #   state is `ENABLED`, it is able to accept jobs. If the job queue state
    #   is `DISABLED`, new jobs cannot be added to the queue, but jobs already
    #   in the queue can finish.
    #
    # @option params [Integer] :priority
    #   The priority of the job queue. Job queues with a higher priority (or a
    #   higher integer value for the `priority` parameter) are evaluated first
    #   when associated with the same compute environment. Priority is
    #   determined in descending order, for example, a job queue with a
    #   priority value of `10` is given scheduling preference over a job queue
    #   with a priority value of `1`.
    #
    # @option params [Array<Types::ComputeEnvironmentOrder>] :compute_environment_order
    #   Details the set of compute environments mapped to a job queue and
    #   their order relative to each other. This is one of the parameters used
    #   by the job scheduler to determine which compute environment should
    #   execute a given job.
    #
    # @return [Types::UpdateJobQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobQueueResponse#job_queue_name #job_queue_name} => String
    #   * {Types::UpdateJobQueueResponse#job_queue_arn #job_queue_arn} => String
    #
    #
    # @example Example: To update a job queue
    #
    #   # This example disables a job queue so that it can be deleted.
    #
    #   resp = client.update_job_queue({
    #     job_queue: "GPGPU", 
    #     state: "DISABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_queue_arn: "arn:aws:batch:us-east-1:012345678910:job-queue/GPGPU", 
    #     job_queue_name: "GPGPU", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_queue({
    #     job_queue: "String", # required
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     priority: 1,
    #     compute_environment_order: [
    #       {
    #         order: 1, # required
    #         compute_environment: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_queue_name #=> String
    #   resp.job_queue_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateJobQueue AWS API Documentation
    #
    # @overload update_job_queue(params = {})
    # @param [Hash] params ({})
    def update_job_queue(params = {}, options = {})
      req = build_request(:update_job_queue, params)
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
      context[:gem_name] = 'aws-sdk-batch'
      context[:gem_version] = '1.40.0'
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
