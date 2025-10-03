# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::Batch
  # An API client for Aws::Batch.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSBatchV20160810

    add_plugin(::Aws::Batch::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Batch::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Cancels a job in an Batch job queue. Jobs that are in a <code>SUBMITTED</code>, <code>PENDING</code>, or <code>RUNNABLE</code> state are cancelled and the job status is updated to <code>FAILED</code>.</p>
    #          <note>
    #             <p>A <code>PENDING</code> job is canceled after all dependency jobs are completed.
    #         Therefore, it may take longer than expected to cancel a job in <code>PENDING</code>
    #         status.</p>
    #             <p>When you try to cancel an array parent job in <code>PENDING</code>, Batch attempts to
    #         cancel all child jobs. The array parent job is canceled when all child jobs are
    #         completed.</p>
    #          </note>
    #          <p>Jobs that progressed to the <code>STARTING</code> or
    #         <code>RUNNING</code> state aren't canceled. However, the API operation still succeeds, even
    #       if no job is canceled. These jobs must be terminated with the <a>TerminateJob</a>
    #       operation.</p>
    # @param [Hash, Types::CancelJobRequest] params
    # @option params [String] :job_id
    #   <p>The Batch job ID of the job to cancel.</p>
    # @option params [String] :reason
    #   <p>A message to attach to the job that explains the reason for canceling it. This message is
    #         returned by future <a>DescribeJobs</a> operations on the job. It is also
    #         recorded in the Batch activity logs.</p>
    #            <p>This parameter has as limit of 1024 characters.</p>
    # @example To cancel a job
    #   # This example cancels a job with the specified job ID.
    #   params = {
    #     reason: "Cancelling job.",
    #     job_id: "1d828f65-7a4d-42e8-996d-3b900ed59dc4"
    #   }
    #   options = {}
    #   response = client.cancel_job(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "String", # required
    #     reason: "String", # required
    #   }
    #   options = {}
    #   response = client.cancel_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelJobResponse]
    def cancel_job(params = {}, options = {})
      request = build_request(:cancel_job, params)
      request.send_request(options)
    end

    # <p>Creates an Batch compute environment. You can create <code>MANAGED</code> or
    #         <code>UNMANAGED</code> compute environments. <code>MANAGED</code> compute environments can
    #       use Amazon EC2 or Fargate resources. <code>UNMANAGED</code> compute environments can only use
    #       EC2 resources.</p>
    #          <p>In a managed compute environment, Batch manages the capacity and instance types of the
    #       compute resources within the environment. This is based on the compute resource specification
    #       that you define or the <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html">launch template</a> that you
    #       specify when you create the compute environment. Either, you can choose to use EC2 On-Demand
    #       Instances and EC2 Spot Instances. Or, you can use Fargate and Fargate Spot capacity in
    #       your managed compute environment. You can optionally set a maximum price so that Spot
    #       Instances only launch when the Spot Instance price is less than a specified percentage of the
    #       On-Demand price.</p>
    #          <p>In an unmanaged compute environment, you can manage your own EC2 compute resources and
    #       have flexibility with how you configure your compute resources. For example, you can use
    #       custom AMIs. However, you must verify that each of your AMIs meet the Amazon ECS container instance
    #       AMI specification. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html">container instance AMIs</a> in the
    #         <i>Amazon Elastic Container Service Developer Guide</i>. After you created your unmanaged compute environment,
    #       you can use the <a>DescribeComputeEnvironments</a> operation to find the Amazon ECS
    #       cluster that's associated with it. Then, launch your container instances into that Amazon ECS
    #       cluster. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html">Launching an Amazon ECS container
    #         instance</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <note>
    #             <p>Batch doesn't automatically upgrade the AMIs in a compute environment after it's
    #       created. For more information on how to update a compute environment's AMI, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the <i>Batch User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateComputeEnvironmentRequest] params
    # @option params [String] :compute_environment_name
    #   <p>The name for your compute environment. It can be up to 128 characters long. It can contain uppercase and
    #    lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    # @option params [String] :type
    #   <p>The type of the compute environment: <code>MANAGED</code> or <code>UNMANAGED</code>. For
    #         more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute Environments</a> in the <i>Batch User Guide</i>.</p>
    # @option params [String] :state
    #   <p>The state of the compute environment. If the state is <code>ENABLED</code>, then the
    #         compute environment accepts jobs from a queue and can scale out automatically based on
    #         queues.</p>
    #            <p>If the state is <code>ENABLED</code>, then the Batch scheduler can attempt to place jobs
    #         from an associated job queue on the compute resources within the environment. If the compute
    #         environment is managed, then it can scale its instances out or in automatically, based on the
    #         job queue demand.</p>
    #            <p>If the state is <code>DISABLED</code>, then the Batch scheduler doesn't attempt to place
    #         jobs within the environment. Jobs in a <code>STARTING</code> or <code>RUNNING</code> state
    #         continue to progress normally. Managed compute environments in the <code>DISABLED</code> state
    #         don't scale out. </p>
    #            <note>
    #               <p>Compute environments in a <code>DISABLED</code> state may continue to incur billing
    #           charges. To prevent additional charges, turn off and then delete the compute environment.
    #           For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environment_parameters.html#compute_environment_state">State</a> in the <i>Batch User Guide</i>.</p>
    #            </note>
    #            <p>When an instance is idle, the instance scales down to the <code>minvCpus</code> value.
    #         However, the instance size doesn't change. For example, consider a <code>c5.8xlarge</code>
    #         instance with a <code>minvCpus</code> value of <code>4</code> and a <code>desiredvCpus</code>
    #         value of <code>36</code>. This instance doesn't scale down to a <code>c5.large</code>
    #         instance.</p>
    # @option params [Integer] :unmanagedv_cpus
    #   <p>The maximum number of vCPUs for an unmanaged compute environment. This parameter is only
    #         used for fair-share scheduling to reserve vCPU capacity for new share identifiers. If this
    #         parameter isn't provided for a fair-share job queue, no vCPU capacity is reserved.</p>
    #            <note>
    #               <p>This parameter is only supported when the <code>type</code> parameter is set to
    #             <code>UNMANAGED</code>.</p>
    #            </note>
    # @option params [Types::ComputeResource] :compute_resources
    #   <p>Details about the compute resources managed by the compute environment. This parameter is
    #         required for managed compute environments. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute Environments</a>
    #         in the <i>Batch User Guide</i>.</p>
    # @option params [String] :service_role
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that allows Batch to make calls to other Amazon Web Services
    #         services on your behalf. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html">Batch service IAM role</a> in the
    #           <i>Batch User Guide</i>.</p>
    #            <important>
    #               <p>If your account already created the Batch service-linked role, that role is used by
    #           default for your compute environment unless you specify a different role here. If the
    #           Batch service-linked role doesn't exist in your account, and no role is specified here,
    #           the service attempts to create the Batch service-linked role in your account.</p>
    #            </important>
    #            <p>If your specified role has a path other than <code>/</code>, then you must specify either
    #         the full role ARN (recommended) or prefix the role name with the path. For example, if a
    #         role with the name <code>bar</code> has a path of <code>/foo/</code>, specify
    #           <code>/foo/bar</code> as the role name. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names">Friendly
    #           names and paths</a> in the <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>Depending on how you created your Batch service role, its ARN might contain the
    #             <code>service-role</code> path prefix. When you only specify the name of the service role,
    #           Batch assumes that your ARN doesn't use the <code>service-role</code> path prefix. Because
    #           of this, we recommend that you specify the full ARN of your service role when you create
    #           compute environments.</p>
    #            </note>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the compute environment to help you categorize and organize
    #         your resources. Each tag consists of a key and an optional value. For more information, see
    #           <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #           Resources</a> in <i>Amazon Web Services General Reference</i>.</p>
    #            <p>These tags can be updated or removed using the <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html">UntagResource</a> API operations. These tags don't propagate to the underlying compute
    #         resources.</p>
    # @option params [Types::EksConfiguration] :eks_configuration
    #   <p>The details for the Amazon EKS cluster that supports the compute environment.</p>
    #            <note>
    #               <p>To create a compute environment that uses EKS resources, the caller must have
    #           permissions to call <code>eks:DescribeCluster</code>.</p>
    #            </note>
    # @option params [String] :context
    #   <p>Reserved.</p>
    # @example To create a managed EC2 compute environment
    #   # This example creates a managed compute environment with specific C4 instance types that are launched on demand. The compute environment is called C4OnDemand.
    #   params = {
    #     compute_environment_name: "C4OnDemand",
    #     state: ENABLED,
    #     type: MANAGED,
    #     compute_resources: {
    #       subnets: [
    #         "subnet-220c0e0a",
    #         "subnet-1a95556d",
    #         "subnet-978f6dce"
    #       ],
    #       tags: {
    #         "Name" => "Batch Instance - C4OnDemand"
    #       },
    #       desiredv_cpus: 48,
    #       minv_cpus: 0,
    #       instance_types: [
    #         "c4.large",
    #         "c4.xlarge",
    #         "c4.2xlarge",
    #         "c4.4xlarge",
    #         "c4.8xlarge"
    #       ],
    #       security_group_ids: [
    #         "sg-cf5093b2"
    #       ],
    #       instance_role: "ecsInstanceRole",
    #       maxv_cpus: 128,
    #       type: EC2,
    #       ec2_key_pair: "id_rsa"
    #     },
    #     service_role: "arn:aws:iam::012345678910:role/AWSBatchServiceRole"
    #   }
    #   options = {}
    #   response = client.create_compute_environment(params, options)
    #   response.to_h #=>
    #   {
    #     compute_environment_name: "C4OnDemand",
    #     compute_environment_arn: "arn:aws:batch:us-east-1:012345678910:compute-environment/C4OnDemand"
    #   }
    # @example To create a managed EC2 Spot compute environment
    #   # This example creates a managed compute environment with the M4 instance type that is launched when the Spot bid price is at or below 20% of the On-Demand price for the instance type. The compute environment is called M4Spot.
    #   params = {
    #     compute_environment_name: "M4Spot",
    #     state: ENABLED,
    #     type: MANAGED,
    #     compute_resources: {
    #       subnets: [
    #         "subnet-220c0e0a",
    #         "subnet-1a95556d",
    #         "subnet-978f6dce"
    #       ],
    #       type: SPOT,
    #       spot_iam_fleet_role: "arn:aws:iam::012345678910:role/aws-ec2-spot-fleet-role",
    #       tags: {
    #         "Name" => "Batch Instance - M4Spot"
    #       },
    #       desiredv_cpus: 4,
    #       minv_cpus: 0,
    #       instance_types: [
    #         "m4"
    #       ],
    #       security_group_ids: [
    #         "sg-cf5093b2"
    #       ],
    #       instance_role: "ecsInstanceRole",
    #       maxv_cpus: 128,
    #       bid_percentage: 20,
    #       ec2_key_pair: "id_rsa"
    #     },
    #     service_role: "arn:aws:iam::012345678910:role/AWSBatchServiceRole"
    #   }
    #   options = {}
    #   response = client.create_compute_environment(params, options)
    #   response.to_h #=>
    #   {
    #     compute_environment_name: "M4Spot",
    #     compute_environment_arn: "arn:aws:batch:us-east-1:012345678910:compute-environment/M4Spot"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compute_environment_name: "String", # required
    #     type: "MANAGED" # One of: ["MANAGED", "UNMANAGED"], # required
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     unmanagedv_cpus: 1,
    #     compute_resources: {
    #       type: "EC2" # One of: ["EC2", "SPOT", "FARGATE", "FARGATE_SPOT"], # required
    #       allocation_strategy: "BEST_FIT" # One of: ["BEST_FIT", "BEST_FIT_PROGRESSIVE", "SPOT_CAPACITY_OPTIMIZED", "SPOT_PRICE_CAPACITY_OPTIMIZED"],
    #       minv_cpus: 1,
    #       maxv_cpus: 1, # required
    #       desiredv_cpus: 1,
    #       instance_types: ["String"],
    #       image_id: "String",
    #       subnets: ["String"], # required
    #       security_group_ids: ["String"],
    #       ec2_key_pair: "String",
    #       instance_role: "String",
    #       tags: {
    #         "String" => "String"
    #       },
    #       placement_group: "String",
    #       bid_percentage: 1,
    #       spot_iam_fleet_role: "String",
    #       launch_template: {
    #         launch_template_id: "String",
    #         launch_template_name: "String",
    #         version: "String",
    #         overrides: [
    #           {
    #             launch_template_id: "String",
    #             launch_template_name: "String",
    #             version: "String",
    #             target_instance_types: ["String"],
    #             userdata_type: "EKS_BOOTSTRAP_SH" # One of: ["EKS_BOOTSTRAP_SH", "EKS_NODEADM"]
    #           }
    #         ],
    #         userdata_type: "EKS_BOOTSTRAP_SH" # One of: ["EKS_BOOTSTRAP_SH", "EKS_NODEADM"]
    #       },
    #       ec2_configuration: [
    #         {
    #           image_type: "ImageType", # required
    #           image_id_override: "ImageIdOverride",
    #           image_kubernetes_version: "KubernetesVersion"
    #         }
    #       ]
    #     },
    #     service_role: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     eks_configuration: {
    #       eks_cluster_arn: "String", # required
    #       kubernetes_namespace: "String", # required
    #     },
    #     context: "String"
    #   }
    #   options = {}
    #   response = client.create_compute_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute_environment_name: "String",
    #     compute_environment_arn: "String"
    #   }
    # @return [Types::CreateComputeEnvironmentResponse]
    def create_compute_environment(params = {}, options = {})
      request = build_request(:create_compute_environment, params)
      request.send_request(options)
    end

    # <p>Creates an Batch consumable resource.</p>
    # @param [Hash, Types::CreateConsumableResourceRequest] params
    # @option params [String] :consumable_resource_name
    #   <p>The name of the consumable resource. Must be unique.</p>
    # @option params [Integer] :total_quantity
    #   <p>The total amount of the consumable resource that is available. Must be non-negative.</p>
    # @option params [String] :resource_type
    #   <p>Indicates whether the resource is available to be re-used after a job completes. Can be 
    #               one of: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REPLENISHABLE</code> (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_REPLENISHABLE</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the consumable resource to help you categorize and organize your
    #               resources. Each tag consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging your Batch resources</a>.</p>
    # @example To create a consumable resource
    #   # Creates a Batch consumable resource.
    #   params = {
    #     consumable_resource_name: "myConsumableResource",
    #     total_quantity: 123,
    #     resource_type: "REPLENISHABLE",
    #     tags: {
    #       "Department" => "Engineering",
    #       "User" => "JaneDoe"
    #     }
    #   }
    #   options = {}
    #   response = client.create_consumable_resource(params, options)
    #   response.to_h #=>
    #   {
    #     consumable_resource_name: "myConsumableResource",
    #     consumable_resource_arn: "arn:aws:batch:us-east-1:012345678910:consumable-resource/myConsumableResource"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     consumable_resource_name: "String", # required
    #     total_quantity: 1,
    #     resource_type: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_consumable_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumable_resource_name: "String", # required
    #     consumable_resource_arn: "String", # required
    #   }
    # @return [Types::CreateConsumableResourceResponse]
    def create_consumable_resource(params = {}, options = {})
      request = build_request(:create_consumable_resource, params)
      request.send_request(options)
    end

    # <p>Creates an Batch job queue. When you create a job queue, you associate one or more
    #       compute environments to the queue and assign an order of preference for the compute
    #       environments.</p>
    #          <p>You also set a priority to the job queue that determines the order that the Batch
    #       scheduler places jobs onto its associated compute environments. For example, if a compute
    #       environment is associated with more than one job queue, the job queue with a higher priority
    #       is given preference for scheduling jobs to that compute environment.</p>
    # @param [Hash, Types::CreateJobQueueRequest] params
    # @option params [String] :job_queue_name
    #   <p>The name of the job queue. It can be up to 128 letters long. It can contain uppercase and
    #         lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    # @option params [String] :state
    #   <p>The state of the job queue. If the job queue state is <code>ENABLED</code>, it is able to
    #         accept jobs. If the job queue state is <code>DISABLED</code>, new jobs can't be added to the
    #         queue, but jobs already in the queue can finish.</p>
    # @option params [String] :scheduling_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the fair-share scheduling policy. Job queues that don't have a fair-share scheduling policy are scheduled in a first-in, first-out (FIFO) model.  After a job queue has a fair-share scheduling policy, it can be replaced but can't be removed.</p>
    #            <p>The format is
    #             <code>aws:<i>Partition</i>:batch:<i>Region</i>:<i>Account</i>:scheduling-policy/<i>Name</i>
    #               </code>.</p>
    #            <p>An example is
    #           <code>aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy</code>.</p>
    #            <p>A job queue without a fair-share scheduling policy is scheduled as a FIFO job queue and can't have a fair-share scheduling policy added. Jobs queues with a fair-share scheduling policy can have a maximum of 500 active share identifiers. When the limit has been reached, submissions of any jobs that add a new share identifier fail.</p>
    # @option params [Integer] :priority
    #   <p>The priority of the job queue. Job queues with a higher priority (or a higher integer
    #         value for the <code>priority</code> parameter) are evaluated first when associated with the
    #         same compute environment. Priority is determined in descending order. For example, a job queue
    #         with a priority value of <code>10</code> is given scheduling preference over a job queue with
    #         a priority value of <code>1</code>. All of the compute environments must be either EC2
    #           (<code>EC2</code> or <code>SPOT</code>) or Fargate (<code>FARGATE</code> or
    #           <code>FARGATE_SPOT</code>); EC2 and Fargate compute environments can't be mixed.</p>
    # @option params [Array<Types::ComputeEnvironmentOrder>] :compute_environment_order
    #   <p>The set of compute environments mapped to a job queue and their order relative to each
    #         other. The job scheduler uses this parameter to determine which compute environment runs a
    #         specific job. Compute environments must be in the <code>VALID</code> state before you can
    #         associate them with a job queue. You can associate up to three compute environments with a job
    #         queue. All of the compute environments must be either EC2 (<code>EC2</code> or
    #           <code>SPOT</code>) or Fargate (<code>FARGATE</code> or <code>FARGATE_SPOT</code>); EC2 and
    #         Fargate compute environments can't be mixed.</p>
    #            <note>
    #               <p>All compute environments that are associated with a job queue must share the same
    #           architecture. Batch doesn't support mixing compute environment architecture types in a
    #           single job queue.</p>
    #            </note>
    # @option params [Array<Types::ServiceEnvironmentOrder>] :service_environment_order
    #   <p>A list of service environments that this job queue can use to allocate jobs. All serviceEnvironments must have the same type. A job queue can't have both a serviceEnvironmentOrder and a computeEnvironmentOrder field.</p>
    # @option params [String] :job_queue_type
    #   <p>The type of job queue. For service jobs that run on SageMaker Training, this value is <code>SAGEMAKER_TRAINING</code>. For regular container jobs, this value is <code>EKS</code>, <code>ECS</code>, or <code>ECS_FARGATE</code> depending on the compute environment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the job queue to help you categorize and organize your
    #         resources. Each tag consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging your Batch resources</a>
    #         in <i>Batch User Guide</i>.</p>
    # @option params [Array<Types::JobStateTimeLimitAction>] :job_state_time_limit_actions
    #   <p>The set of actions that Batch performs on jobs that remain at the head of the job queue in the specified state longer than specified times. Batch will perform each action after <code>maxTimeSeconds</code> has passed. (<b>Note</b>: The minimum value for maxTimeSeconds is 600 (10 minutes) and its maximum value is 86,400 (24 hours).)</p>
    # @example To create a job queue with a single compute environment
    #   # This example creates a job queue called LowPriority that uses the M4Spot compute environment.
    #   params = {
    #     priority: 1,
    #     state: ENABLED,
    #     compute_environment_order: [
    #       {
    #         compute_environment: "M4Spot",
    #         order: 1
    #       }
    #     ],
    #     job_queue_name: "LowPriority"
    #   }
    #   options = {}
    #   response = client.create_job_queue(params, options)
    #   response.to_h #=>
    #   {
    #     job_queue_name: "LowPriority",
    #     job_queue_arn: "arn:aws:batch:us-east-1:012345678910:job-queue/LowPriority"
    #   }
    # @example To create a job queue with multiple compute environments
    #   # This example creates a job queue called HighPriority that uses the C4OnDemand compute environment with an order of 1 and the M4Spot compute environment with an order of 2.
    #   params = {
    #     priority: 10,
    #     state: ENABLED,
    #     compute_environment_order: [
    #       {
    #         compute_environment: "C4OnDemand",
    #         order: 1
    #       },
    #       {
    #         compute_environment: "M4Spot",
    #         order: 2
    #       }
    #     ],
    #     job_queue_name: "HighPriority"
    #   }
    #   options = {}
    #   response = client.create_job_queue(params, options)
    #   response.to_h #=>
    #   {
    #     job_queue_name: "HighPriority",
    #     job_queue_arn: "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_queue_name: "String", # required
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     scheduling_policy_arn: "String",
    #     priority: 1, # required
    #     compute_environment_order: [
    #       {
    #         order: 1, # required
    #         compute_environment: "String", # required
    #       }
    #     ],
    #     service_environment_order: [
    #       {
    #         order: 1, # required
    #         service_environment: "String", # required
    #       }
    #     ],
    #     job_queue_type: "EKS" # One of: ["EKS", "ECS", "ECS_FARGATE", "SAGEMAKER_TRAINING"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     job_state_time_limit_actions: [
    #       {
    #         reason: "String", # required
    #         state: "RUNNABLE" # One of: ["RUNNABLE"], # required
    #         max_time_seconds: 1, # required
    #         action: "CANCEL" # One of: ["CANCEL", "TERMINATE"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_job_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_queue_name: "String", # required
    #     job_queue_arn: "String", # required
    #   }
    # @return [Types::CreateJobQueueResponse]
    def create_job_queue(params = {}, options = {})
      request = build_request(:create_job_queue, params)
      request.send_request(options)
    end

    # <p>Creates an Batch scheduling policy.</p>
    # @param [Hash, Types::CreateSchedulingPolicyRequest] params
    # @option params [String] :name
    #   <p>The name of the fair-share scheduling policy. It can be up to 128 letters long. It can contain
    #         uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    # @option params [Types::FairsharePolicy] :fairshare_policy
    #   <p>The fair-share scheduling policy details.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the scheduling policy to help you categorize and organize your
    #         resources. Each tag consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #           Resources</a> in <i>Amazon Web Services General Reference</i>.</p>
    #            <p>These tags can be updated or removed using the <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html">UntagResource</a> API operations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     fairshare_policy: {
    #       share_decay_seconds: 1,
    #       compute_reservation: 1,
    #       share_distribution: [
    #         {
    #           share_identifier: "String", # required
    #           weight_factor: 1.0
    #         }
    #       ]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_scheduling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String", # required
    #     arn: "String", # required
    #   }
    # @return [Types::CreateSchedulingPolicyResponse]
    def create_scheduling_policy(params = {}, options = {})
      request = build_request(:create_scheduling_policy, params)
      request.send_request(options)
    end

    # <p>Creates a service environment for running service jobs. Service environments define capacity limits for specific service types such as SageMaker Training jobs.</p>
    # @param [Hash, Types::CreateServiceEnvironmentRequest] params
    # @option params [String] :service_environment_name
    #   <p>The name for the service environment. It can be up to 128 characters long and can contain letters, numbers, hyphens (-), and underscores (_).</p>
    # @option params [String] :service_environment_type
    #   <p>The type of service environment. For SageMaker Training jobs, specify <code>SAGEMAKER_TRAINING</code>.</p>
    # @option params [String] :state
    #   <p>The state of the service environment. Valid values are <code>ENABLED</code> and <code>DISABLED</code>. The default value is <code>ENABLED</code>.</p>
    # @option params [Array<Types::CapacityLimit>] :capacity_limits
    #   <p>The capacity limits for the service environment. The number of instances a job consumes is the total number of instances requested in the submit training job request resource configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the service environment to help you categorize and organize your resources. Each tag consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging your Batch resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_environment_name: "String", # required
    #     service_environment_type: "SAGEMAKER_TRAINING" # One of: ["SAGEMAKER_TRAINING"], # required
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     capacity_limits: [ # required
    #       {
    #         max_capacity: 1,
    #         capacity_unit: "String"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_service_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_environment_name: "String", # required
    #     service_environment_arn: "String", # required
    #   }
    # @return [Types::CreateServiceEnvironmentResponse]
    def create_service_environment(params = {}, options = {})
      request = build_request(:create_service_environment, params)
      request.send_request(options)
    end

    # <p>Deletes an Batch compute environment.</p>
    #          <p>Before you can delete a compute environment, you must set its state to
    #         <code>DISABLED</code> with the <a>UpdateComputeEnvironment</a> API operation and
    #       disassociate it from any job queues with the <a>UpdateJobQueue</a> API operation.
    #       Compute environments that use Fargate resources must terminate all active jobs on that
    #       compute environment before deleting the compute environment. If this isn't done, the compute
    #       environment enters an invalid state.</p>
    # @param [Hash, Types::DeleteComputeEnvironmentRequest] params
    # @option params [String] :compute_environment
    #   <p>The name or Amazon Resource Name (ARN) of the compute environment to delete.</p>
    # @example To delete a compute environment
    #   # This example deletes the P2OnDemand compute environment.
    #   params = {
    #     compute_environment: "P2OnDemand"
    #   }
    #   options = {}
    #   response = client.delete_compute_environment(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     compute_environment: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_compute_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteComputeEnvironmentResponse]
    def delete_compute_environment(params = {}, options = {})
      request = build_request(:delete_compute_environment, params)
      request.send_request(options)
    end

    # <p>Deletes the specified consumable resource.</p>
    # @param [Hash, Types::DeleteConsumableResourceRequest] params
    # @option params [String] :consumable_resource
    #   <p>The name or ARN of the consumable resource that will be deleted.</p>
    # @example To delete a consumable resource
    #   # Deletes the specified consumable resource.
    #   params = {
    #     consumable_resource: "myConsumableResource"
    #   }
    #   options = {}
    #   response = client.delete_consumable_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     consumable_resource: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_consumable_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConsumableResourceResponse]
    def delete_consumable_resource(params = {}, options = {})
      request = build_request(:delete_consumable_resource, params)
      request.send_request(options)
    end

    # <p>Deletes the specified job queue. You must first disable submissions for a queue with the
    #         <a>UpdateJobQueue</a> operation. All jobs in the queue are eventually terminated
    #       when you delete a job queue. The jobs are terminated at a rate of about 16 jobs each
    #       second.</p>
    #          <p>It's not necessary to disassociate compute environments from a queue before submitting a
    #         <code>DeleteJobQueue</code> request.</p>
    # @param [Hash, Types::DeleteJobQueueRequest] params
    # @option params [String] :job_queue
    #   <p>The short name or full Amazon Resource Name (ARN) of the queue to delete.</p>
    # @example To delete a job queue
    #   # This example deletes the GPGPU job queue.
    #   params = {
    #     job_queue: "GPGPU"
    #   }
    #   options = {}
    #   response = client.delete_job_queue(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     job_queue: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_job_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteJobQueueResponse]
    def delete_job_queue(params = {}, options = {})
      request = build_request(:delete_job_queue, params)
      request.send_request(options)
    end

    # <p>Deletes the specified scheduling policy.</p>
    #          <p>You can't delete a scheduling policy that's used in any job queues.</p>
    # @param [Hash, Types::DeleteSchedulingPolicyRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the scheduling policy to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_scheduling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSchedulingPolicyResponse]
    def delete_scheduling_policy(params = {}, options = {})
      request = build_request(:delete_scheduling_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a Service environment. Before you can delete a service environment, you must first set its state to <code>DISABLED</code> with the <code>UpdateServiceEnvironment</code> API operation and disassociate it from any job queues with the <code>UpdateJobQueue</code> API operation.</p>
    # @param [Hash, Types::DeleteServiceEnvironmentRequest] params
    # @option params [String] :service_environment
    #   <p>The name or ARN of the service environment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_environment: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_service_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServiceEnvironmentResponse]
    def delete_service_environment(params = {}, options = {})
      request = build_request(:delete_service_environment, params)
      request.send_request(options)
    end

    # <p>Deregisters an Batch job definition. Job definitions are permanently deleted after 180
    #       days.</p>
    # @param [Hash, Types::DeregisterJobDefinitionRequest] params
    # @option params [String] :job_definition
    #   <p>The name and revision (<code>name:revision</code>) or full Amazon Resource Name (ARN) of the job definition
    #         to deregister.</p>
    # @example To deregister a job definition
    #   # This example deregisters a job definition called sleep10.
    #   params = {
    #     job_definition: "sleep10"
    #   }
    #   options = {}
    #   response = client.deregister_job_definition(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     job_definition: "String", # required
    #   }
    #   options = {}
    #   response = client.deregister_job_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterJobDefinitionResponse]
    def deregister_job_definition(params = {}, options = {})
      request = build_request(:deregister_job_definition, params)
      request.send_request(options)
    end

    # <p>Describes one or more of your compute environments.</p>
    #          <p>If you're using an unmanaged compute environment, you can use the
    #         <code>DescribeComputeEnvironment</code> operation to determine the
    #         <code>ecsClusterArn</code> that you launch your Amazon ECS container instances into.</p>
    # @param [Hash, Types::DescribeComputeEnvironmentsRequest] params
    # @option params [Array<String>] :compute_environments
    #   <p>A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of cluster results returned by <code>DescribeComputeEnvironments</code>
    #         in paginated output. When this parameter is used, <code>DescribeComputeEnvironments</code>
    #         only returns <code>maxResults</code> results in a single page along with a
    #           <code>nextToken</code> response element. The remaining results of the initial request can be
    #         seen by sending another <code>DescribeComputeEnvironments</code> request with the returned
    #           <code>nextToken</code> value. This value can be between 1 and
    #         100. If this parameter isn't used, then <code>DescribeComputeEnvironments</code>
    #         returns up to 100 results and a <code>nextToken</code> value if
    #         applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #           <code>DescribeComputeEnvironments</code> request where <code>maxResults</code> was used and
    #         the results exceeded the value of that parameter. Pagination continues from the end of the
    #         previous results that returned the <code>nextToken</code> value. This value is
    #           <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example To describe a compute environment
    #   # This example describes the P2OnDemand compute environment.
    #   params = {
    #     compute_environments: [
    #       "P2OnDemand"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_compute_environments(params, options)
    #   response.to_h #=>
    #   {
    #     compute_environments: [
    #       {
    #         compute_environment_name: "P2OnDemand",
    #         compute_environment_arn: "arn:aws:batch:us-east-1:012345678910:compute-environment/P2OnDemand",
    #         ecs_cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/P2OnDemand_Batch_2c06f29d-d1fe-3a49-879d-42394c86effc",
    #         type: MANAGED,
    #         state: ENABLED,
    #         status: VALID,
    #         status_reason: "ComputeEnvironment Healthy",
    #         compute_resources: {
    #           type: EC2,
    #           minv_cpus: 0,
    #           maxv_cpus: 128,
    #           desiredv_cpus: 48,
    #           instance_types: [
    #             "p2"
    #           ],
    #           subnets: [
    #             "subnet-220c0e0a",
    #             "subnet-1a95556d",
    #             "subnet-978f6dce"
    #           ],
    #           security_group_ids: [
    #             "sg-cf5093b2"
    #           ],
    #           ec2_key_pair: "id_rsa",
    #           instance_role: "ecsInstanceRole",
    #           tags: {
    #             "Name" => "Batch Instance - P2OnDemand"
    #           }
    #         },
    #         service_role: "arn:aws:iam::012345678910:role/AWSBatchServiceRole"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compute_environments: ["String"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_compute_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute_environments: [
    #       {
    #         compute_environment_name: "String", # required
    #         compute_environment_arn: "String", # required
    #         unmanagedv_cpus: 1,
    #         ecs_cluster_arn: "String",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         type: "MANAGED" # One of: ["MANAGED", "UNMANAGED"],
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"],
    #         status_reason: "String",
    #         compute_resources: {
    #           type: "EC2" # One of: ["EC2", "SPOT", "FARGATE", "FARGATE_SPOT"], # required
    #           allocation_strategy: "BEST_FIT" # One of: ["BEST_FIT", "BEST_FIT_PROGRESSIVE", "SPOT_CAPACITY_OPTIMIZED", "SPOT_PRICE_CAPACITY_OPTIMIZED"],
    #           minv_cpus: 1,
    #           maxv_cpus: 1, # required
    #           desiredv_cpus: 1,
    #           instance_types: ["String"],
    #           image_id: "String",
    #           subnets: ["String"], # required
    #           security_group_ids: ["String"],
    #           ec2_key_pair: "String",
    #           instance_role: "String",
    #           tags: {
    #             "String" => "String"
    #           },
    #           placement_group: "String",
    #           bid_percentage: 1,
    #           spot_iam_fleet_role: "String",
    #           launch_template: {
    #             launch_template_id: "String",
    #             launch_template_name: "String",
    #             version: "String",
    #             overrides: [
    #               {
    #                 launch_template_id: "String",
    #                 launch_template_name: "String",
    #                 version: "String",
    #                 target_instance_types: ["String"],
    #                 userdata_type: "EKS_BOOTSTRAP_SH" # One of: ["EKS_BOOTSTRAP_SH", "EKS_NODEADM"]
    #               }
    #             ],
    #             userdata_type: "EKS_BOOTSTRAP_SH" # One of: ["EKS_BOOTSTRAP_SH", "EKS_NODEADM"]
    #           },
    #           ec2_configuration: [
    #             {
    #               image_type: "ImageType", # required
    #               image_id_override: "ImageIdOverride",
    #               image_kubernetes_version: "KubernetesVersion"
    #             }
    #           ]
    #         },
    #         service_role: "String",
    #         update_policy: {
    #           terminate_jobs_on_update: false,
    #           job_execution_timeout_minutes: 1
    #         },
    #         eks_configuration: {
    #           eks_cluster_arn: "String", # required
    #           kubernetes_namespace: "String", # required
    #         },
    #         container_orchestration_type: "ECS" # One of: ["ECS", "EKS"],
    #         uuid: "String",
    #         context: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeComputeEnvironmentsResponse]
    def describe_compute_environments(params = {}, options = {})
      request = build_request(:describe_compute_environments, params)
      request.send_request(options)
    end

    # <p>Returns a description of the specified consumable resource.</p>
    # @param [Hash, Types::DescribeConsumableResourceRequest] params
    # @option params [String] :consumable_resource
    #   <p>The name or ARN of the consumable resource whose description will be returned.</p>
    # @example To get a description of a consumable resource
    #   # Returns a description of the specified consumable resource.
    #   params = {
    #     consumable_resource: "myConsumableResource"
    #   }
    #   options = {}
    #   response = client.describe_consumable_resource(params, options)
    #   response.to_h #=>
    #   {
    #     consumable_resource_name: "myConsumableResource",
    #     consumable_resource_arn: "arn:aws:batch:us-east-1:012345678910:consumable-resource/myConsumableResource",
    #     total_quantity: 123,
    #     in_use_quantity: 123,
    #     available_quantity: 123,
    #     resource_type: "REPLENISHABLE",
    #     created_at: 123,
    #     tags: {
    #       "Department" => "Engineering",
    #       "User" => "JaneDoe"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     consumable_resource: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_consumable_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumable_resource_name: "String", # required
    #     consumable_resource_arn: "String", # required
    #     total_quantity: 1,
    #     in_use_quantity: 1,
    #     available_quantity: 1,
    #     resource_type: "String",
    #     created_at: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeConsumableResourceResponse]
    def describe_consumable_resource(params = {}, options = {})
      request = build_request(:describe_consumable_resource, params)
      request.send_request(options)
    end

    # <p>Describes a list of job definitions. You can specify a <code>status</code> (such as
    #         <code>ACTIVE</code>) to only return job definitions that match that status.</p>
    # @param [Hash, Types::DescribeJobDefinitionsRequest] params
    # @option params [Array<String>] :job_definitions
    #   <p>A list of up to 100 job definitions. Each entry in the list can either be an ARN in the
    #         format
    #           <code>arn:aws:batch:${Region}:${Account}:job-definition/${JobDefinitionName}:${Revision}</code>
    #         or a short version using the form <code>${JobDefinitionName}:${Revision}</code>. This
    #         parameter can't be used with other parameters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>DescribeJobDefinitions</code> in paginated
    #         output. When this parameter is used, <code>DescribeJobDefinitions</code> only returns
    #           <code>maxResults</code> results in a single page and a <code>nextToken</code> response
    #         element. The remaining results of the initial request can be seen by sending another
    #           <code>DescribeJobDefinitions</code> request with the returned <code>nextToken</code> value.
    #         This value can be between 1 and 100. If this parameter isn't
    #         used, then <code>DescribeJobDefinitions</code> returns up to 100 results and
    #         a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :job_definition_name
    #   <p>The name of the job definition to describe.</p>
    # @option params [String] :status
    #   <p>The status used to filter job definitions.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #           <code>DescribeJobDefinitions</code> request where <code>maxResults</code> was used and the
    #         results exceeded the value of that parameter. Pagination continues from the end of the
    #         previous results that returned the <code>nextToken</code> value. This value is
    #           <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example To describe active job definitions
    #   # This example describes all of your active job definitions.
    #   params = {
    #     status: "ACTIVE"
    #   }
    #   options = {}
    #   response = client.describe_job_definitions(params, options)
    #   response.to_h #=>
    #   {
    #     job_definitions: [
    #       {
    #         job_definition_name: "sleep60",
    #         job_definition_arn: "arn:aws:batch:us-east-1:012345678910:job-definition/sleep60:1",
    #         revision: 1,
    #         status: "ACTIVE",
    #         type: "container",
    #         container_properties: {
    #           image: "busybox",
    #           resource_requirements: [
    #             {
    #               type: MEMORY,
    #               value: "128"
    #             },
    #             {
    #               type: VCPU,
    #               value: "1"
    #             }
    #           ],
    #           command: [
    #             "sleep",
    #             "60"
    #           ],
    #           volumes: [
    #           ],
    #           environment: [
    #           ],
    #           mount_points: [
    #           ],
    #           ulimits: [
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_definitions: ["String"],
    #     max_results: 1,
    #     job_definition_name: "String",
    #     status: "String",
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_job_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_definitions: [
    #       {
    #         job_definition_name: "String", # required
    #         job_definition_arn: "String", # required
    #         revision: 1, # required
    #         status: "String",
    #         type: "String", # required
    #         scheduling_priority: 1,
    #         parameters: {
    #           "String" => "String"
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #           evaluate_on_exit: [
    #             {
    #               on_status_reason: "String",
    #               on_reason: "String",
    #               on_exit_code: "String",
    #               action: "RETRY" # One of: ["RETRY", "EXIT"], # required
    #             }
    #           ]
    #         },
    #         container_properties: {
    #           image: "String",
    #           vcpus: 1,
    #           memory: 1,
    #           command: ["String"],
    #           job_role_arn: "String",
    #           execution_role_arn: "String",
    #           volumes: [
    #             {
    #               host: {
    #                 source_path: "String"
    #               },
    #               name: "String",
    #               efs_volume_configuration: {
    #                 file_system_id: "String", # required
    #                 root_directory: "String",
    #                 transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                 transit_encryption_port: 1,
    #                 authorization_config: {
    #                   access_point_id: "String",
    #                   iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                 }
    #               }
    #             }
    #           ],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               container_path: "String",
    #               read_only: false,
    #               source_volume: "String"
    #             }
    #           ],
    #           readonly_root_filesystem: false,
    #           privileged: false,
    #           ulimits: [
    #             {
    #               hard_limit: 1, # required
    #               name: "String", # required
    #               soft_limit: 1, # required
    #             }
    #           ],
    #           user: "String",
    #           instance_type: "String",
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #             }
    #           ],
    #           linux_parameters: {
    #             devices: [
    #               {
    #                 host_path: "String", # required
    #                 container_path: "String",
    #                 permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #               }
    #             ],
    #             init_process_enabled: false,
    #             shared_memory_size: 1,
    #             tmpfs: [
    #               {
    #                 container_path: "String", # required
    #                 size: 1, # required
    #                 mount_options: ["String"]
    #               }
    #             ],
    #             max_swap: 1,
    #             swappiness: 1
    #           },
    #           log_configuration: {
    #             log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #             options: {
    #               "String" => "String"
    #             },
    #             secret_options: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               }
    #             ]
    #           },
    #           secrets: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             }
    #           ],
    #           network_configuration: {
    #             assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           fargate_platform_configuration: {
    #             platform_version: "String"
    #           },
    #           enable_execute_command: false,
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           },
    #           runtime_platform: {
    #             operating_system_family: "String",
    #             cpu_architecture: "String"
    #           },
    #           repository_credentials: {
    #             credentials_parameter: "String", # required
    #           }
    #         },
    #         timeout: {
    #           attempt_duration_seconds: 1
    #         },
    #         node_properties: {
    #           num_nodes: 1, # required
    #           main_node: 1, # required
    #           node_range_properties: [ # required
    #             {
    #               target_nodes: "String", # required
    #               container: {
    #                 image: "String",
    #                 vcpus: 1,
    #                 memory: 1,
    #                 command: ["String"],
    #                 job_role_arn: "String",
    #                 execution_role_arn: "String",
    #                 volumes: [
    #                   {
    #                     host: {
    #                       source_path: "String"
    #                     },
    #                     name: "String",
    #                     efs_volume_configuration: {
    #                       file_system_id: "String", # required
    #                       root_directory: "String",
    #                       transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                       transit_encryption_port: 1,
    #                       authorization_config: {
    #                         access_point_id: "String",
    #                         iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 environment: [
    #                   {
    #                     name: "String",
    #                     value: "String"
    #                   }
    #                 ],
    #                 mount_points: [
    #                   {
    #                     container_path: "String",
    #                     read_only: false,
    #                     source_volume: "String"
    #                   }
    #                 ],
    #                 readonly_root_filesystem: false,
    #                 privileged: false,
    #                 ulimits: [
    #                   {
    #                     hard_limit: 1, # required
    #                     name: "String", # required
    #                     soft_limit: 1, # required
    #                   }
    #                 ],
    #                 user: "String",
    #                 instance_type: "String",
    #                 resource_requirements: [
    #                   {
    #                     value: "String", # required
    #                     type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                   }
    #                 ],
    #                 linux_parameters: {
    #                   devices: [
    #                     {
    #                       host_path: "String", # required
    #                       container_path: "String",
    #                       permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #                     }
    #                   ],
    #                   init_process_enabled: false,
    #                   shared_memory_size: 1,
    #                   tmpfs: [
    #                     {
    #                       container_path: "String", # required
    #                       size: 1, # required
    #                       mount_options: ["String"]
    #                     }
    #                   ],
    #                   max_swap: 1,
    #                   swappiness: 1
    #                 },
    #                 log_configuration: {
    #                   log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #                   options: {
    #                     "String" => "String"
    #                   },
    #                   secret_options: [
    #                     {
    #                       name: "String", # required
    #                       value_from: "String", # required
    #                     }
    #                   ]
    #                 },
    #                 secrets: [
    #                   {
    #                     name: "String", # required
    #                     value_from: "String", # required
    #                   }
    #                 ],
    #                 network_configuration: {
    #                   assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                 },
    #                 fargate_platform_configuration: {
    #                   platform_version: "String"
    #                 },
    #                 enable_execute_command: false,
    #                 ephemeral_storage: {
    #                   size_in_gi_b: 1, # required
    #                 },
    #                 runtime_platform: {
    #                   operating_system_family: "String",
    #                   cpu_architecture: "String"
    #                 },
    #                 repository_credentials: {
    #                   credentials_parameter: "String", # required
    #                 }
    #               },
    #               instance_types: ["String"],
    #               ecs_properties: {
    #                 task_properties: [ # required
    #                   {
    #                     containers: [ # required
    #                       {
    #                         command: ["String"],
    #                         depends_on: [
    #                           {
    #                             container_name: "String",
    #                             condition: "String"
    #                           }
    #                         ],
    #                         environment: [
    #                           {
    #                             name: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         essential: false,
    #                         firelens_configuration: {
    #                           type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #                           options: {
    #                             "String" => "String"
    #                           }
    #                         },
    #                         image: "String", # required
    #                         linux_parameters: {
    #                           devices: [
    #                             {
    #                               host_path: "String", # required
    #                               container_path: "String",
    #                               permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #                             }
    #                           ],
    #                           init_process_enabled: false,
    #                           shared_memory_size: 1,
    #                           tmpfs: [
    #                             {
    #                               container_path: "String", # required
    #                               size: 1, # required
    #                               mount_options: ["String"]
    #                             }
    #                           ],
    #                           max_swap: 1,
    #                           swappiness: 1
    #                         },
    #                         log_configuration: {
    #                           log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #                           options: {
    #                             "String" => "String"
    #                           },
    #                           secret_options: [
    #                             {
    #                               name: "String", # required
    #                               value_from: "String", # required
    #                             }
    #                           ]
    #                         },
    #                         mount_points: [
    #                           {
    #                             container_path: "String",
    #                             read_only: false,
    #                             source_volume: "String"
    #                           }
    #                         ],
    #                         name: "String",
    #                         privileged: false,
    #                         readonly_root_filesystem: false,
    #                         repository_credentials: {
    #                           credentials_parameter: "String", # required
    #                         },
    #                         resource_requirements: [
    #                           {
    #                             value: "String", # required
    #                             type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                           }
    #                         ],
    #                         secrets: [
    #                           {
    #                             name: "String", # required
    #                             value_from: "String", # required
    #                           }
    #                         ],
    #                         ulimits: [
    #                           {
    #                             hard_limit: 1, # required
    #                             name: "String", # required
    #                             soft_limit: 1, # required
    #                           }
    #                         ],
    #                         user: "String"
    #                       }
    #                     ],
    #                     ephemeral_storage: {
    #                       size_in_gi_b: 1, # required
    #                     },
    #                     execution_role_arn: "String",
    #                     platform_version: "String",
    #                     ipc_mode: "String",
    #                     task_role_arn: "String",
    #                     pid_mode: "String",
    #                     network_configuration: {
    #                       assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                     },
    #                     runtime_platform: {
    #                       operating_system_family: "String",
    #                       cpu_architecture: "String"
    #                     },
    #                     volumes: [
    #                       {
    #                         host: {
    #                           source_path: "String"
    #                         },
    #                         name: "String",
    #                         efs_volume_configuration: {
    #                           file_system_id: "String", # required
    #                           root_directory: "String",
    #                           transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                           transit_encryption_port: 1,
    #                           authorization_config: {
    #                             access_point_id: "String",
    #                             iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                           }
    #                         }
    #                       }
    #                     ],
    #                     enable_execute_command: false
    #                   }
    #                 ]
    #               },
    #               eks_properties: {
    #                 pod_properties: {
    #                   service_account_name: "String",
    #                   host_network: false,
    #                   dns_policy: "String",
    #                   image_pull_secrets: [
    #                     {
    #                       name: "String", # required
    #                     }
    #                   ],
    #                   containers: [
    #                     {
    #                       name: "String",
    #                       image: "String", # required
    #                       image_pull_policy: "String",
    #                       command: ["String"],
    #                       args: ["String"],
    #                       env: [
    #                         {
    #                           name: "String", # required
    #                           value: "String"
    #                         }
    #                       ],
    #                       resources: {
    #                         limits: {
    #                           "String" => "Quantity"
    #                         },
    #                         requests: {
    #                           "String" => "Quantity"
    #                         }
    #                       },
    #                       volume_mounts: [
    #                         {
    #                           name: "String",
    #                           mount_path: "String",
    #                           sub_path: "String",
    #                           read_only: false
    #                         }
    #                       ],
    #                       security_context: {
    #                         run_as_user: 1,
    #                         run_as_group: 1,
    #                         privileged: false,
    #                         allow_privilege_escalation: false,
    #                         read_only_root_filesystem: false,
    #                         run_as_non_root: false
    #                       }
    #                     }
    #                   ],
    #                   init_containers: [
    #                     {
    #                       name: "String",
    #                       image: "String", # required
    #                       image_pull_policy: "String",
    #                       command: ["String"],
    #                       args: ["String"],
    #                       env: [
    #                         {
    #                           name: "String", # required
    #                           value: "String"
    #                         }
    #                       ],
    #                       resources: {
    #                         limits: {
    #                           "String" => "Quantity"
    #                         },
    #                         requests: {
    #                           "String" => "Quantity"
    #                         }
    #                       },
    #                       volume_mounts: [
    #                         {
    #                           name: "String",
    #                           mount_path: "String",
    #                           sub_path: "String",
    #                           read_only: false
    #                         }
    #                       ],
    #                       security_context: {
    #                         run_as_user: 1,
    #                         run_as_group: 1,
    #                         privileged: false,
    #                         allow_privilege_escalation: false,
    #                         read_only_root_filesystem: false,
    #                         run_as_non_root: false
    #                       }
    #                     }
    #                   ],
    #                   volumes: [
    #                     {
    #                       name: "String", # required
    #                       host_path: {
    #                         path: "String"
    #                       },
    #                       empty_dir: {
    #                         medium: "String",
    #                         size_limit: "Quantity"
    #                       },
    #                       secret: {
    #                         secret_name: "String", # required
    #                         optional: false
    #                       },
    #                       persistent_volume_claim: {
    #                         claim_name: "String", # required
    #                         read_only: false
    #                       }
    #                     }
    #                   ],
    #                   metadata: {
    #                     labels: {
    #                       "String" => "String"
    #                     },
    #                     annotations: {
    #                       "String" => "String"
    #                     },
    #                     namespace: "String"
    #                   },
    #                   share_process_namespace: false
    #                 }
    #               },
    #               consumable_resource_properties: {
    #                 consumable_resource_list: [
    #                   {
    #                     consumable_resource: "String",
    #                     quantity: 1
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         propagate_tags: false,
    #         platform_capabilities: ["EC2" # One of: ["EC2", "FARGATE"]],
    #         ecs_properties: {
    #           task_properties: [ # required
    #             {
    #               containers: [ # required
    #                 {
    #                   command: ["String"],
    #                   depends_on: [
    #                     {
    #                       container_name: "String",
    #                       condition: "String"
    #                     }
    #                   ],
    #                   environment: [
    #                     {
    #                       name: "String",
    #                       value: "String"
    #                     }
    #                   ],
    #                   essential: false,
    #                   firelens_configuration: {
    #                     type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #                     options: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   image: "String", # required
    #                   linux_parameters: {
    #                     devices: [
    #                       {
    #                         host_path: "String", # required
    #                         container_path: "String",
    #                         permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #                       }
    #                     ],
    #                     init_process_enabled: false,
    #                     shared_memory_size: 1,
    #                     tmpfs: [
    #                       {
    #                         container_path: "String", # required
    #                         size: 1, # required
    #                         mount_options: ["String"]
    #                       }
    #                     ],
    #                     max_swap: 1,
    #                     swappiness: 1
    #                   },
    #                   log_configuration: {
    #                     log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #                     options: {
    #                       "String" => "String"
    #                     },
    #                     secret_options: [
    #                       {
    #                         name: "String", # required
    #                         value_from: "String", # required
    #                       }
    #                     ]
    #                   },
    #                   mount_points: [
    #                     {
    #                       container_path: "String",
    #                       read_only: false,
    #                       source_volume: "String"
    #                     }
    #                   ],
    #                   name: "String",
    #                   privileged: false,
    #                   readonly_root_filesystem: false,
    #                   repository_credentials: {
    #                     credentials_parameter: "String", # required
    #                   },
    #                   resource_requirements: [
    #                     {
    #                       value: "String", # required
    #                       type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                     }
    #                   ],
    #                   secrets: [
    #                     {
    #                       name: "String", # required
    #                       value_from: "String", # required
    #                     }
    #                   ],
    #                   ulimits: [
    #                     {
    #                       hard_limit: 1, # required
    #                       name: "String", # required
    #                       soft_limit: 1, # required
    #                     }
    #                   ],
    #                   user: "String"
    #                 }
    #               ],
    #               ephemeral_storage: {
    #                 size_in_gi_b: 1, # required
    #               },
    #               execution_role_arn: "String",
    #               platform_version: "String",
    #               ipc_mode: "String",
    #               task_role_arn: "String",
    #               pid_mode: "String",
    #               network_configuration: {
    #                 assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               },
    #               runtime_platform: {
    #                 operating_system_family: "String",
    #                 cpu_architecture: "String"
    #               },
    #               volumes: [
    #                 {
    #                   host: {
    #                     source_path: "String"
    #                   },
    #                   name: "String",
    #                   efs_volume_configuration: {
    #                     file_system_id: "String", # required
    #                     root_directory: "String",
    #                     transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                     transit_encryption_port: 1,
    #                     authorization_config: {
    #                       access_point_id: "String",
    #                       iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                     }
    #                   }
    #                 }
    #               ],
    #               enable_execute_command: false
    #             }
    #           ]
    #         },
    #         eks_properties: {
    #           pod_properties: {
    #             service_account_name: "String",
    #             host_network: false,
    #             dns_policy: "String",
    #             image_pull_secrets: [
    #               {
    #                 name: "String", # required
    #               }
    #             ],
    #             containers: [
    #               {
    #                 name: "String",
    #                 image: "String", # required
    #                 image_pull_policy: "String",
    #                 command: ["String"],
    #                 args: ["String"],
    #                 env: [
    #                   {
    #                     name: "String", # required
    #                     value: "String"
    #                   }
    #                 ],
    #                 resources: {
    #                   limits: {
    #                     "String" => "Quantity"
    #                   },
    #                   requests: {
    #                     "String" => "Quantity"
    #                   }
    #                 },
    #                 volume_mounts: [
    #                   {
    #                     name: "String",
    #                     mount_path: "String",
    #                     sub_path: "String",
    #                     read_only: false
    #                   }
    #                 ],
    #                 security_context: {
    #                   run_as_user: 1,
    #                   run_as_group: 1,
    #                   privileged: false,
    #                   allow_privilege_escalation: false,
    #                   read_only_root_filesystem: false,
    #                   run_as_non_root: false
    #                 }
    #               }
    #             ],
    #             init_containers: [
    #               {
    #                 name: "String",
    #                 image: "String", # required
    #                 image_pull_policy: "String",
    #                 command: ["String"],
    #                 args: ["String"],
    #                 env: [
    #                   {
    #                     name: "String", # required
    #                     value: "String"
    #                   }
    #                 ],
    #                 resources: {
    #                   limits: {
    #                     "String" => "Quantity"
    #                   },
    #                   requests: {
    #                     "String" => "Quantity"
    #                   }
    #                 },
    #                 volume_mounts: [
    #                   {
    #                     name: "String",
    #                     mount_path: "String",
    #                     sub_path: "String",
    #                     read_only: false
    #                   }
    #                 ],
    #                 security_context: {
    #                   run_as_user: 1,
    #                   run_as_group: 1,
    #                   privileged: false,
    #                   allow_privilege_escalation: false,
    #                   read_only_root_filesystem: false,
    #                   run_as_non_root: false
    #                 }
    #               }
    #             ],
    #             volumes: [
    #               {
    #                 name: "String", # required
    #                 host_path: {
    #                   path: "String"
    #                 },
    #                 empty_dir: {
    #                   medium: "String",
    #                   size_limit: "Quantity"
    #                 },
    #                 secret: {
    #                   secret_name: "String", # required
    #                   optional: false
    #                 },
    #                 persistent_volume_claim: {
    #                   claim_name: "String", # required
    #                   read_only: false
    #                 }
    #               }
    #             ],
    #             metadata: {
    #               labels: {
    #                 "String" => "String"
    #               },
    #               annotations: {
    #                 "String" => "String"
    #               },
    #               namespace: "String"
    #             },
    #             share_process_namespace: false
    #           }
    #         },
    #         container_orchestration_type: "ECS" # One of: ["ECS", "EKS"],
    #         consumable_resource_properties: {
    #           consumable_resource_list: [
    #             {
    #               consumable_resource: "String",
    #               quantity: 1
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeJobDefinitionsResponse]
    def describe_job_definitions(params = {}, options = {})
      request = build_request(:describe_job_definitions, params)
      request.send_request(options)
    end

    # <p>Describes one or more of your job queues.</p>
    # @param [Hash, Types::DescribeJobQueuesRequest] params
    # @option params [Array<String>] :job_queues
    #   <p>A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>DescribeJobQueues</code> in paginated
    #         output. When this parameter is used, <code>DescribeJobQueues</code> only returns
    #           <code>maxResults</code> results in a single page and a <code>nextToken</code> response
    #         element. The remaining results of the initial request can be seen by sending another
    #           <code>DescribeJobQueues</code> request with the returned <code>nextToken</code> value. This
    #         value can be between 1 and 100. If this parameter isn't used,
    #         then <code>DescribeJobQueues</code> returns up to 100 results and a
    #           <code>nextToken</code> value if applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #           <code>DescribeJobQueues</code> request where <code>maxResults</code> was used and the
    #         results exceeded the value of that parameter. Pagination continues from the end of the
    #         previous results that returned the <code>nextToken</code> value. This value is
    #           <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example To describe a job queue
    #   # This example describes the HighPriority job queue.
    #   params = {
    #     job_queues: [
    #       "HighPriority"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_job_queues(params, options)
    #   response.to_h #=>
    #   {
    #     job_queues: [
    #       {
    #         job_queue_name: "HighPriority",
    #         job_queue_arn: "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority",
    #         state: ENABLED,
    #         status: VALID,
    #         status_reason: "JobQueue Healthy",
    #         priority: 1,
    #         compute_environment_order: [
    #           {
    #             order: 1,
    #             compute_environment: "arn:aws:batch:us-east-1:012345678910:compute-environment/C4OnDemand"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_queues: ["String"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_job_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_queues: [
    #       {
    #         job_queue_name: "String", # required
    #         job_queue_arn: "String", # required
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         scheduling_policy_arn: "String",
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"],
    #         status_reason: "String",
    #         priority: 1, # required
    #         compute_environment_order: [ # required
    #           {
    #             order: 1, # required
    #             compute_environment: "String", # required
    #           }
    #         ],
    #         service_environment_order: [
    #           {
    #             order: 1, # required
    #             service_environment: "String", # required
    #           }
    #         ],
    #         job_queue_type: "EKS" # One of: ["EKS", "ECS", "ECS_FARGATE", "SAGEMAKER_TRAINING"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         job_state_time_limit_actions: [
    #           {
    #             reason: "String", # required
    #             state: "RUNNABLE" # One of: ["RUNNABLE"], # required
    #             max_time_seconds: 1, # required
    #             action: "CANCEL" # One of: ["CANCEL", "TERMINATE"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeJobQueuesResponse]
    def describe_job_queues(params = {}, options = {})
      request = build_request(:describe_job_queues, params)
      request.send_request(options)
    end

    # <p>Describes a list of Batch jobs.</p>
    # @param [Hash, Types::DescribeJobsRequest] params
    # @option params [Array<String>] :jobs
    #   <p>A list of up to 100 job IDs.</p>
    # @example To describe a specific job
    #   # This example describes a job with the specified job ID.
    #   params = {
    #     jobs: [
    #       "24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_jobs(params, options)
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         job_name: "example",
    #         job_id: "24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9",
    #         job_queue: "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority",
    #         status: SUCCEEDED,
    #         created_at: 1480460782010,
    #         started_at: 1480460816500,
    #         stopped_at: 1480460880699,
    #         depends_on: [
    #         ],
    #         job_definition: "sleep60",
    #         parameters: {
    #         },
    #         container: {
    #           image: "busybox",
    #           vcpus: 1,
    #           memory: 128,
    #           command: [
    #             "sleep",
    #             "60"
    #           ],
    #           volumes: [
    #           ],
    #           environment: [
    #           ],
    #           mount_points: [
    #           ],
    #           ulimits: [
    #           ],
    #           exit_code: 0,
    #           container_instance_arn: "arn:aws:ecs:us-east-1:012345678910:container-instance/5406d7cd-58bd-4b8f-9936-48d7c6b1526c"
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     jobs: ["String"], # required
    #   }
    #   options = {}
    #   response = client.describe_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         job_arn: "String",
    #         job_name: "String", # required
    #         job_id: "String", # required
    #         job_queue: "String", # required
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"], # required
    #         share_identifier: "String",
    #         scheduling_priority: 1,
    #         attempts: [
    #           {
    #             container: {
    #               container_instance_arn: "String",
    #               task_arn: "String",
    #               exit_code: 1,
    #               reason: "String",
    #               log_stream_name: "String",
    #               network_interfaces: [
    #                 {
    #                   attachment_id: "String",
    #                   ipv6_address: "String",
    #                   private_ipv4_address: "String"
    #                 }
    #               ]
    #             },
    #             started_at: 1,
    #             stopped_at: 1,
    #             status_reason: "String",
    #             task_properties: [
    #               {
    #                 container_instance_arn: "String",
    #                 task_arn: "String",
    #                 containers: [
    #                   {
    #                     exit_code: 1,
    #                     name: "String",
    #                     reason: "String",
    #                     log_stream_name: "String",
    #                     network_interfaces: [
    #                       {
    #                         attachment_id: "String",
    #                         ipv6_address: "String",
    #                         private_ipv4_address: "String"
    #                       }
    #                     ]
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         ],
    #         status_reason: "String",
    #         created_at: 1,
    #         retry_strategy: {
    #           attempts: 1,
    #           evaluate_on_exit: [
    #             {
    #               on_status_reason: "String",
    #               on_reason: "String",
    #               on_exit_code: "String",
    #               action: "RETRY" # One of: ["RETRY", "EXIT"], # required
    #             }
    #           ]
    #         },
    #         started_at: 1, # required
    #         stopped_at: 1,
    #         depends_on: [
    #           {
    #             job_id: "String",
    #             type: "N_TO_N" # One of: ["N_TO_N", "SEQUENTIAL"]
    #           }
    #         ],
    #         job_definition: "String", # required
    #         parameters: {
    #           "String" => "String"
    #         },
    #         container: {
    #           image: "String",
    #           vcpus: 1,
    #           memory: 1,
    #           command: ["String"],
    #           job_role_arn: "String",
    #           execution_role_arn: "String",
    #           volumes: [
    #             {
    #               host: {
    #                 source_path: "String"
    #               },
    #               name: "String",
    #               efs_volume_configuration: {
    #                 file_system_id: "String", # required
    #                 root_directory: "String",
    #                 transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                 transit_encryption_port: 1,
    #                 authorization_config: {
    #                   access_point_id: "String",
    #                   iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                 }
    #               }
    #             }
    #           ],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               container_path: "String",
    #               read_only: false,
    #               source_volume: "String"
    #             }
    #           ],
    #           readonly_root_filesystem: false,
    #           ulimits: [
    #             {
    #               hard_limit: 1, # required
    #               name: "String", # required
    #               soft_limit: 1, # required
    #             }
    #           ],
    #           privileged: false,
    #           user: "String",
    #           exit_code: 1,
    #           reason: "String",
    #           container_instance_arn: "String",
    #           task_arn: "String",
    #           log_stream_name: "String",
    #           instance_type: "String",
    #           network_interfaces: [
    #             {
    #               attachment_id: "String",
    #               ipv6_address: "String",
    #               private_ipv4_address: "String"
    #             }
    #           ],
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #             }
    #           ],
    #           linux_parameters: {
    #             devices: [
    #               {
    #                 host_path: "String", # required
    #                 container_path: "String",
    #                 permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #               }
    #             ],
    #             init_process_enabled: false,
    #             shared_memory_size: 1,
    #             tmpfs: [
    #               {
    #                 container_path: "String", # required
    #                 size: 1, # required
    #                 mount_options: ["String"]
    #               }
    #             ],
    #             max_swap: 1,
    #             swappiness: 1
    #           },
    #           log_configuration: {
    #             log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #             options: {
    #               "String" => "String"
    #             },
    #             secret_options: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               }
    #             ]
    #           },
    #           secrets: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             }
    #           ],
    #           network_configuration: {
    #             assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           fargate_platform_configuration: {
    #             platform_version: "String"
    #           },
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           },
    #           runtime_platform: {
    #             operating_system_family: "String",
    #             cpu_architecture: "String"
    #           },
    #           repository_credentials: {
    #             credentials_parameter: "String", # required
    #           },
    #           enable_execute_command: false
    #         },
    #         node_details: {
    #           node_index: 1,
    #           is_main_node: false
    #         },
    #         node_properties: {
    #           num_nodes: 1, # required
    #           main_node: 1, # required
    #           node_range_properties: [ # required
    #             {
    #               target_nodes: "String", # required
    #               container: {
    #                 image: "String",
    #                 vcpus: 1,
    #                 memory: 1,
    #                 command: ["String"],
    #                 job_role_arn: "String",
    #                 execution_role_arn: "String",
    #                 volumes: [
    #                   {
    #                     host: {
    #                       source_path: "String"
    #                     },
    #                     name: "String",
    #                     efs_volume_configuration: {
    #                       file_system_id: "String", # required
    #                       root_directory: "String",
    #                       transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                       transit_encryption_port: 1,
    #                       authorization_config: {
    #                         access_point_id: "String",
    #                         iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 environment: [
    #                   {
    #                     name: "String",
    #                     value: "String"
    #                   }
    #                 ],
    #                 mount_points: [
    #                   {
    #                     container_path: "String",
    #                     read_only: false,
    #                     source_volume: "String"
    #                   }
    #                 ],
    #                 readonly_root_filesystem: false,
    #                 privileged: false,
    #                 ulimits: [
    #                   {
    #                     hard_limit: 1, # required
    #                     name: "String", # required
    #                     soft_limit: 1, # required
    #                   }
    #                 ],
    #                 user: "String",
    #                 instance_type: "String",
    #                 resource_requirements: [
    #                   {
    #                     value: "String", # required
    #                     type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                   }
    #                 ],
    #                 linux_parameters: {
    #                   devices: [
    #                     {
    #                       host_path: "String", # required
    #                       container_path: "String",
    #                       permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #                     }
    #                   ],
    #                   init_process_enabled: false,
    #                   shared_memory_size: 1,
    #                   tmpfs: [
    #                     {
    #                       container_path: "String", # required
    #                       size: 1, # required
    #                       mount_options: ["String"]
    #                     }
    #                   ],
    #                   max_swap: 1,
    #                   swappiness: 1
    #                 },
    #                 log_configuration: {
    #                   log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #                   options: {
    #                     "String" => "String"
    #                   },
    #                   secret_options: [
    #                     {
    #                       name: "String", # required
    #                       value_from: "String", # required
    #                     }
    #                   ]
    #                 },
    #                 secrets: [
    #                   {
    #                     name: "String", # required
    #                     value_from: "String", # required
    #                   }
    #                 ],
    #                 network_configuration: {
    #                   assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                 },
    #                 fargate_platform_configuration: {
    #                   platform_version: "String"
    #                 },
    #                 enable_execute_command: false,
    #                 ephemeral_storage: {
    #                   size_in_gi_b: 1, # required
    #                 },
    #                 runtime_platform: {
    #                   operating_system_family: "String",
    #                   cpu_architecture: "String"
    #                 },
    #                 repository_credentials: {
    #                   credentials_parameter: "String", # required
    #                 }
    #               },
    #               instance_types: ["String"],
    #               ecs_properties: {
    #                 task_properties: [ # required
    #                   {
    #                     containers: [ # required
    #                       {
    #                         command: ["String"],
    #                         depends_on: [
    #                           {
    #                             container_name: "String",
    #                             condition: "String"
    #                           }
    #                         ],
    #                         environment: [
    #                           {
    #                             name: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         essential: false,
    #                         firelens_configuration: {
    #                           type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #                           options: {
    #                             "String" => "String"
    #                           }
    #                         },
    #                         image: "String", # required
    #                         linux_parameters: {
    #                           devices: [
    #                             {
    #                               host_path: "String", # required
    #                               container_path: "String",
    #                               permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #                             }
    #                           ],
    #                           init_process_enabled: false,
    #                           shared_memory_size: 1,
    #                           tmpfs: [
    #                             {
    #                               container_path: "String", # required
    #                               size: 1, # required
    #                               mount_options: ["String"]
    #                             }
    #                           ],
    #                           max_swap: 1,
    #                           swappiness: 1
    #                         },
    #                         log_configuration: {
    #                           log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #                           options: {
    #                             "String" => "String"
    #                           },
    #                           secret_options: [
    #                             {
    #                               name: "String", # required
    #                               value_from: "String", # required
    #                             }
    #                           ]
    #                         },
    #                         mount_points: [
    #                           {
    #                             container_path: "String",
    #                             read_only: false,
    #                             source_volume: "String"
    #                           }
    #                         ],
    #                         name: "String",
    #                         privileged: false,
    #                         readonly_root_filesystem: false,
    #                         repository_credentials: {
    #                           credentials_parameter: "String", # required
    #                         },
    #                         resource_requirements: [
    #                           {
    #                             value: "String", # required
    #                             type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                           }
    #                         ],
    #                         secrets: [
    #                           {
    #                             name: "String", # required
    #                             value_from: "String", # required
    #                           }
    #                         ],
    #                         ulimits: [
    #                           {
    #                             hard_limit: 1, # required
    #                             name: "String", # required
    #                             soft_limit: 1, # required
    #                           }
    #                         ],
    #                         user: "String"
    #                       }
    #                     ],
    #                     ephemeral_storage: {
    #                       size_in_gi_b: 1, # required
    #                     },
    #                     execution_role_arn: "String",
    #                     platform_version: "String",
    #                     ipc_mode: "String",
    #                     task_role_arn: "String",
    #                     pid_mode: "String",
    #                     network_configuration: {
    #                       assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                     },
    #                     runtime_platform: {
    #                       operating_system_family: "String",
    #                       cpu_architecture: "String"
    #                     },
    #                     volumes: [
    #                       {
    #                         host: {
    #                           source_path: "String"
    #                         },
    #                         name: "String",
    #                         efs_volume_configuration: {
    #                           file_system_id: "String", # required
    #                           root_directory: "String",
    #                           transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                           transit_encryption_port: 1,
    #                           authorization_config: {
    #                             access_point_id: "String",
    #                             iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                           }
    #                         }
    #                       }
    #                     ],
    #                     enable_execute_command: false
    #                   }
    #                 ]
    #               },
    #               eks_properties: {
    #                 pod_properties: {
    #                   service_account_name: "String",
    #                   host_network: false,
    #                   dns_policy: "String",
    #                   image_pull_secrets: [
    #                     {
    #                       name: "String", # required
    #                     }
    #                   ],
    #                   containers: [
    #                     {
    #                       name: "String",
    #                       image: "String", # required
    #                       image_pull_policy: "String",
    #                       command: ["String"],
    #                       args: ["String"],
    #                       env: [
    #                         {
    #                           name: "String", # required
    #                           value: "String"
    #                         }
    #                       ],
    #                       resources: {
    #                         limits: {
    #                           "String" => "Quantity"
    #                         },
    #                         requests: {
    #                           "String" => "Quantity"
    #                         }
    #                       },
    #                       volume_mounts: [
    #                         {
    #                           name: "String",
    #                           mount_path: "String",
    #                           sub_path: "String",
    #                           read_only: false
    #                         }
    #                       ],
    #                       security_context: {
    #                         run_as_user: 1,
    #                         run_as_group: 1,
    #                         privileged: false,
    #                         allow_privilege_escalation: false,
    #                         read_only_root_filesystem: false,
    #                         run_as_non_root: false
    #                       }
    #                     }
    #                   ],
    #                   init_containers: [
    #                     {
    #                       name: "String",
    #                       image: "String", # required
    #                       image_pull_policy: "String",
    #                       command: ["String"],
    #                       args: ["String"],
    #                       env: [
    #                         {
    #                           name: "String", # required
    #                           value: "String"
    #                         }
    #                       ],
    #                       resources: {
    #                         limits: {
    #                           "String" => "Quantity"
    #                         },
    #                         requests: {
    #                           "String" => "Quantity"
    #                         }
    #                       },
    #                       volume_mounts: [
    #                         {
    #                           name: "String",
    #                           mount_path: "String",
    #                           sub_path: "String",
    #                           read_only: false
    #                         }
    #                       ],
    #                       security_context: {
    #                         run_as_user: 1,
    #                         run_as_group: 1,
    #                         privileged: false,
    #                         allow_privilege_escalation: false,
    #                         read_only_root_filesystem: false,
    #                         run_as_non_root: false
    #                       }
    #                     }
    #                   ],
    #                   volumes: [
    #                     {
    #                       name: "String", # required
    #                       host_path: {
    #                         path: "String"
    #                       },
    #                       empty_dir: {
    #                         medium: "String",
    #                         size_limit: "Quantity"
    #                       },
    #                       secret: {
    #                         secret_name: "String", # required
    #                         optional: false
    #                       },
    #                       persistent_volume_claim: {
    #                         claim_name: "String", # required
    #                         read_only: false
    #                       }
    #                     }
    #                   ],
    #                   metadata: {
    #                     labels: {
    #                       "String" => "String"
    #                     },
    #                     annotations: {
    #                       "String" => "String"
    #                     },
    #                     namespace: "String"
    #                   },
    #                   share_process_namespace: false
    #                 }
    #               },
    #               consumable_resource_properties: {
    #                 consumable_resource_list: [
    #                   {
    #                     consumable_resource: "String",
    #                     quantity: 1
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #         array_properties: {
    #           status_summary: {
    #             "String" => 1
    #           },
    #           size: 1,
    #           index: 1
    #         },
    #         timeout: {
    #           attempt_duration_seconds: 1
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         propagate_tags: false,
    #         platform_capabilities: ["EC2" # One of: ["EC2", "FARGATE"]],
    #         eks_properties: {
    #           pod_properties: {
    #             service_account_name: "String",
    #             host_network: false,
    #             dns_policy: "String",
    #             image_pull_secrets: [
    #               {
    #                 name: "String", # required
    #               }
    #             ],
    #             containers: [
    #               {
    #                 name: "String",
    #                 image: "String",
    #                 image_pull_policy: "String",
    #                 command: ["String"],
    #                 args: ["String"],
    #                 env: [
    #                   {
    #                     name: "String", # required
    #                     value: "String"
    #                   }
    #                 ],
    #                 resources: {
    #                   limits: {
    #                     "String" => "Quantity"
    #                   },
    #                   requests: {
    #                     "String" => "Quantity"
    #                   }
    #                 },
    #                 exit_code: 1,
    #                 reason: "String",
    #                 volume_mounts: [
    #                   {
    #                     name: "String",
    #                     mount_path: "String",
    #                     sub_path: "String",
    #                     read_only: false
    #                   }
    #                 ],
    #                 security_context: {
    #                   run_as_user: 1,
    #                   run_as_group: 1,
    #                   privileged: false,
    #                   allow_privilege_escalation: false,
    #                   read_only_root_filesystem: false,
    #                   run_as_non_root: false
    #                 }
    #               }
    #             ],
    #             init_containers: [
    #               {
    #                 name: "String",
    #                 image: "String",
    #                 image_pull_policy: "String",
    #                 command: ["String"],
    #                 args: ["String"],
    #                 env: [
    #                   {
    #                     name: "String", # required
    #                     value: "String"
    #                   }
    #                 ],
    #                 resources: {
    #                   limits: {
    #                     "String" => "Quantity"
    #                   },
    #                   requests: {
    #                     "String" => "Quantity"
    #                   }
    #                 },
    #                 exit_code: 1,
    #                 reason: "String",
    #                 volume_mounts: [
    #                   {
    #                     name: "String",
    #                     mount_path: "String",
    #                     sub_path: "String",
    #                     read_only: false
    #                   }
    #                 ],
    #                 security_context: {
    #                   run_as_user: 1,
    #                   run_as_group: 1,
    #                   privileged: false,
    #                   allow_privilege_escalation: false,
    #                   read_only_root_filesystem: false,
    #                   run_as_non_root: false
    #                 }
    #               }
    #             ],
    #             volumes: [
    #               {
    #                 name: "String", # required
    #                 host_path: {
    #                   path: "String"
    #                 },
    #                 empty_dir: {
    #                   medium: "String",
    #                   size_limit: "Quantity"
    #                 },
    #                 secret: {
    #                   secret_name: "String", # required
    #                   optional: false
    #                 },
    #                 persistent_volume_claim: {
    #                   claim_name: "String", # required
    #                   read_only: false
    #                 }
    #               }
    #             ],
    #             pod_name: "String",
    #             node_name: "String",
    #             metadata: {
    #               labels: {
    #                 "String" => "String"
    #               },
    #               annotations: {
    #                 "String" => "String"
    #               },
    #               namespace: "String"
    #             },
    #             share_process_namespace: false
    #           }
    #         },
    #         eks_attempts: [
    #           {
    #             containers: [
    #               {
    #                 name: "String",
    #                 container_id: "String",
    #                 exit_code: 1,
    #                 reason: "String"
    #               }
    #             ],
    #             init_containers: [
    #               {
    #                 name: "String",
    #                 container_id: "String",
    #                 exit_code: 1,
    #                 reason: "String"
    #               }
    #             ],
    #             eks_cluster_arn: "String",
    #             pod_name: "String",
    #             pod_namespace: "String",
    #             node_name: "String",
    #             started_at: 1,
    #             stopped_at: 1,
    #             status_reason: "String"
    #           }
    #         ],
    #         ecs_properties: {
    #           task_properties: [
    #             {
    #               containers: [
    #                 {
    #                   command: ["String"],
    #                   depends_on: [
    #                     {
    #                       container_name: "String",
    #                       condition: "String"
    #                     }
    #                   ],
    #                   environment: [
    #                     {
    #                       name: "String",
    #                       value: "String"
    #                     }
    #                   ],
    #                   essential: false,
    #                   firelens_configuration: {
    #                     type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #                     options: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   image: "String",
    #                   linux_parameters: {
    #                     devices: [
    #                       {
    #                         host_path: "String", # required
    #                         container_path: "String",
    #                         permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #                       }
    #                     ],
    #                     init_process_enabled: false,
    #                     shared_memory_size: 1,
    #                     tmpfs: [
    #                       {
    #                         container_path: "String", # required
    #                         size: 1, # required
    #                         mount_options: ["String"]
    #                       }
    #                     ],
    #                     max_swap: 1,
    #                     swappiness: 1
    #                   },
    #                   log_configuration: {
    #                     log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #                     options: {
    #                       "String" => "String"
    #                     },
    #                     secret_options: [
    #                       {
    #                         name: "String", # required
    #                         value_from: "String", # required
    #                       }
    #                     ]
    #                   },
    #                   mount_points: [
    #                     {
    #                       container_path: "String",
    #                       read_only: false,
    #                       source_volume: "String"
    #                     }
    #                   ],
    #                   name: "String",
    #                   privileged: false,
    #                   readonly_root_filesystem: false,
    #                   repository_credentials: {
    #                     credentials_parameter: "String", # required
    #                   },
    #                   resource_requirements: [
    #                     {
    #                       value: "String", # required
    #                       type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                     }
    #                   ],
    #                   secrets: [
    #                     {
    #                       name: "String", # required
    #                       value_from: "String", # required
    #                     }
    #                   ],
    #                   ulimits: [
    #                     {
    #                       hard_limit: 1, # required
    #                       name: "String", # required
    #                       soft_limit: 1, # required
    #                     }
    #                   ],
    #                   user: "String",
    #                   exit_code: 1,
    #                   reason: "String",
    #                   log_stream_name: "String",
    #                   network_interfaces: [
    #                     {
    #                       attachment_id: "String",
    #                       ipv6_address: "String",
    #                       private_ipv4_address: "String"
    #                     }
    #                   ]
    #                 }
    #               ],
    #               container_instance_arn: "String",
    #               task_arn: "String",
    #               ephemeral_storage: {
    #                 size_in_gi_b: 1, # required
    #               },
    #               execution_role_arn: "String",
    #               platform_version: "String",
    #               ipc_mode: "String",
    #               task_role_arn: "String",
    #               pid_mode: "String",
    #               network_configuration: {
    #                 assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               },
    #               runtime_platform: {
    #                 operating_system_family: "String",
    #                 cpu_architecture: "String"
    #               },
    #               volumes: [
    #                 {
    #                   host: {
    #                     source_path: "String"
    #                   },
    #                   name: "String",
    #                   efs_volume_configuration: {
    #                     file_system_id: "String", # required
    #                     root_directory: "String",
    #                     transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                     transit_encryption_port: 1,
    #                     authorization_config: {
    #                       access_point_id: "String",
    #                       iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                     }
    #                   }
    #                 }
    #               ],
    #               enable_execute_command: false
    #             }
    #           ]
    #         },
    #         is_cancelled: false,
    #         is_terminated: false,
    #         consumable_resource_properties: {
    #           consumable_resource_list: [
    #             {
    #               consumable_resource: "String",
    #               quantity: 1
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeJobsResponse]
    def describe_jobs(params = {}, options = {})
      request = build_request(:describe_jobs, params)
      request.send_request(options)
    end

    # <p>Describes one or more of your scheduling policies.</p>
    # @param [Hash, Types::DescribeSchedulingPoliciesRequest] params
    # @option params [Array<String>] :arns
    #   <p>A list of up to 100 scheduling policy Amazon Resource Name (ARN) entries.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arns: ["String"], # required
    #   }
    #   options = {}
    #   response = client.describe_scheduling_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduling_policies: [
    #       {
    #         name: "String", # required
    #         arn: "String", # required
    #         fairshare_policy: {
    #           share_decay_seconds: 1,
    #           compute_reservation: 1,
    #           share_distribution: [
    #             {
    #               share_identifier: "String", # required
    #               weight_factor: 1.0
    #             }
    #           ]
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSchedulingPoliciesResponse]
    def describe_scheduling_policies(params = {}, options = {})
      request = build_request(:describe_scheduling_policies, params)
      request.send_request(options)
    end

    # <p>Describes one or more of your service environments.</p>
    # @param [Hash, Types::DescribeServiceEnvironmentsRequest] params
    # @option params [Array<String>] :service_environments
    #   <p>An array of service environment names or ARN entries.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>DescribeServiceEnvironments</code> in paginated output. When this parameter is used, <code>DescribeServiceEnvironments</code> only returns <code>maxResults</code> results in a single page and a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeServiceEnvironments</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter isn't used, then <code>DescribeServiceEnvironments</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeServiceEnvironments</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_environments: ["String"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_service_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_environments: [
    #       {
    #         service_environment_name: "String", # required
    #         service_environment_arn: "String", # required
    #         service_environment_type: "SAGEMAKER_TRAINING" # One of: ["SAGEMAKER_TRAINING"], # required
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"],
    #         capacity_limits: [ # required
    #           {
    #             max_capacity: 1,
    #             capacity_unit: "String"
    #           }
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeServiceEnvironmentsResponse]
    def describe_service_environments(params = {}, options = {})
      request = build_request(:describe_service_environments, params)
      request.send_request(options)
    end

    # <p>The details of a service job.</p>
    # @param [Hash, Types::DescribeServiceJobRequest] params
    # @option params [String] :job_id
    #   <p>The job ID for the service job to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_service_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attempts: [
    #       {
    #         service_resource_id: {
    #           name: "TrainingJobArn" # One of: ["TrainingJobArn"], # required
    #           value: "String", # required
    #         },
    #         started_at: 1,
    #         stopped_at: 1,
    #         status_reason: "String"
    #       }
    #     ],
    #     created_at: 1,
    #     is_terminated: false,
    #     job_arn: "String",
    #     job_id: "String", # required
    #     job_name: "String", # required
    #     job_queue: "String", # required
    #     latest_attempt: {
    #       service_resource_id: {
    #         name: "TrainingJobArn" # One of: ["TrainingJobArn"], # required
    #         value: "String", # required
    #       }
    #     },
    #     retry_strategy: {
    #       attempts: 1, # required
    #       evaluate_on_exit: [
    #         {
    #           action: "RETRY" # One of: ["RETRY", "EXIT"],
    #           on_status_reason: "String"
    #         }
    #       ]
    #     },
    #     scheduling_priority: 1,
    #     service_request_payload: "String",
    #     service_job_type: "SAGEMAKER_TRAINING" # One of: ["SAGEMAKER_TRAINING"], # required
    #     share_identifier: "String",
    #     started_at: 1, # required
    #     status: "SUBMITTED" # One of: ["SUBMITTED", "PENDING", "RUNNABLE", "SCHEDULED", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"], # required
    #     status_reason: "String",
    #     stopped_at: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     timeout_config: {
    #       attempt_duration_seconds: 1
    #     }
    #   }
    # @return [Types::DescribeServiceJobResponse]
    def describe_service_job(params = {}, options = {})
      request = build_request(:describe_service_job, params)
      request.send_request(options)
    end

    # <p>Provides a list of the first 100 <code>RUNNABLE</code> jobs associated to a single job queue.</p>
    # @param [Hash, Types::GetJobQueueSnapshotRequest] params
    # @option params [String] :job_queue
    #   <p>The job queue’s name or full queue Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_queue: "String", # required
    #   }
    #   options = {}
    #   response = client.get_job_queue_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     front_of_queue: {
    #       jobs: [
    #         {
    #           job_arn: "String",
    #           earliest_time_at_position: 1
    #         }
    #       ],
    #       last_updated_at: 1
    #     }
    #   }
    # @return [Types::GetJobQueueSnapshotResponse]
    def get_job_queue_snapshot(params = {}, options = {})
      request = build_request(:get_job_queue_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns a list of Batch consumable resources.</p>
    # @param [Hash, Types::ListConsumableResourcesRequest] params
    # @option params [Array<Types::KeyValuesPair>] :filters
    #   <p>The filters to apply to the consumable resource list query. If used, only those consumable 
    #               resources that match the filter are listed. Filter names and values can be:</p>
    #            <ul>
    #               <li>
    #                  <p>name: <code>CONSUMABLE_RESOURCE_NAME </code>
    #                  </p>
    #                  <p>values: case-insensitive matches for the consumable resource name. If a filter 
    #                       value ends with an asterisk (*), it matches any consumable resource name that begins 
    #                       with the string before the '*'.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>ListConsumableResources</code> in paginated
    #               output. When this parameter is used, <code>ListConsumableResources</code> only returns
    #               <code>maxResults</code> results in a single page and a <code>nextToken</code> response
    #               element. The remaining results of the initial request can be seen by sending another
    #               <code>ListConsumableResources</code> request with the returned <code>nextToken</code> value.
    #               This value can be between 1 and 100. If this parameter isn't
    #               used, then <code>ListConsumableResources</code> returns up to 100 results and
    #               a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated 
    #               <code>ListConsumableResources</code> request where <code>maxResults</code> was used and the 
    #               results exceeded the value of that parameter. Pagination continues from the end of the previous 
    #               results that returned the <code>nextToken</code> value. This value is <code>null</code> when 
    #               there are no more results to return.</p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example To get a list of a consumable resources
    #   # Returns a list of the consumable resources for your account.
    #   params = {
    #     filters: [
    #       {
    #         name: "CONSUMABLE_RESOURCE_NAME",
    #         values: [
    #           "my*"
    #         ]
    #       }
    #     ],
    #     max_results: 123
    #   }
    #   options = {}
    #   response = client.list_consumable_resources(params, options)
    #   response.to_h #=>
    #   {
    #     consumable_resources: [
    #       {
    #         consumable_resource_arn: "arn:aws:batch:us-east-1:012345678910:consumable-resource/myConsumableResource",
    #         consumable_resource_name: "myConsumableResource",
    #         in_use_quantity: 12,
    #         resource_type: "REPLENISHABLE",
    #         total_quantity: 123
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_consumable_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumable_resources: [ # required
    #       {
    #         consumable_resource_arn: "String", # required
    #         consumable_resource_name: "String", # required
    #         total_quantity: 1,
    #         in_use_quantity: 1,
    #         resource_type: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListConsumableResourcesResponse]
    def list_consumable_resources(params = {}, options = {})
      request = build_request(:list_consumable_resources, params)
      request.send_request(options)
    end

    # <p>Returns a list of Batch jobs.</p>
    #          <p>You must specify only one of the following items:</p>
    #          <ul>
    #             <li>
    #                <p>A job queue ID to return a list of jobs in that job queue</p>
    #             </li>
    #             <li>
    #                <p>A multi-node parallel job ID to return a list of nodes for that job</p>
    #             </li>
    #             <li>
    #                <p>An array job ID to return a list of the children for that job</p>
    #             </li>
    #          </ul>
    #          <p>You can filter the results by job status with the <code>jobStatus</code> parameter. If you
    #       don't specify a status, only <code>RUNNING</code> jobs are returned.</p>
    # @param [Hash, Types::ListJobsRequest] params
    # @option params [String] :job_queue
    #   <p>The name or full Amazon Resource Name (ARN) of the job queue used to list jobs.</p>
    # @option params [String] :array_job_id
    #   <p>The job ID for an array job. Specifying an array job ID with this parameter lists all
    #         child jobs from within the specified array.</p>
    # @option params [String] :multi_node_job_id
    #   <p>The job ID for a multi-node parallel job. Specifying a multi-node parallel job ID with
    #         this parameter lists all nodes that are associated with the specified job.</p>
    # @option params [String] :job_status
    #   <p>The job status used to filter jobs in the specified queue. If the <code>filters</code>
    #         parameter is specified, the <code>jobStatus</code> parameter is ignored and jobs with any
    #         status are returned. If you don't specify a status, only <code>RUNNING</code> jobs are
    #         returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>ListJobs</code> in a paginated output. When this parameter is used, <code>ListJobs</code> returns up to <code>maxResults</code> results in a single page and a <code>nextToken</code> response element, if applicable. The remaining results of the initial request can be seen by sending another <code>ListJobs</code> request with the returned <code>nextToken</code> value.</p>
    #            <p>The following outlines key parameters and limitations:</p>
    #            <ul>
    #               <li>
    #                  <p>The minimum value is 1. </p>
    #               </li>
    #               <li>
    #                  <p>When <code>--job-status</code> is used, Batch returns up to 1000 values. </p>
    #               </li>
    #               <li>
    #                  <p>When <code>--filters</code> is used, Batch returns up to 100 values.</p>
    #               </li>
    #               <li>
    #                  <p>If neither parameter is used, then <code>ListJobs</code> returns up to
    #         1000 results (jobs that are in the <code>RUNNING</code> status) and a <code>nextToken</code> value, if applicable.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>ListJobs</code>
    #         request where <code>maxResults</code> was used and the results exceeded the value of that
    #         parameter. Pagination continues from the end of the previous results that returned the
    #           <code>nextToken</code> value. This value is <code>null</code> when there are no more results
    #         to return.</p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Array<Types::KeyValuesPair>] :filters
    #   <p>The filter to apply to the query. Only one filter can be used at a time. When the filter
    #         is used, <code>jobStatus</code> is ignored. The filter doesn't apply to child jobs in an array
    #         or multi-node parallel (MNP) jobs. The results are sorted by the <code>createdAt</code> field,
    #         with the most recent jobs being first.</p>
    #            <dl>
    #               <dt>JOB_NAME</dt>
    #               <dd>
    #                  <p>The value of the filter is a case-insensitive match for the job name. If the value
    #               ends with an asterisk (*), the filter matches any job name that begins with the string
    #               before the '*'. This corresponds to the <code>jobName</code> value. For example,
    #                 <code>test1</code> matches both <code>Test1</code> and <code>test1</code>, and
    #                 <code>test1*</code> matches both <code>test1</code> and <code>Test10</code>. When the
    #                 <code>JOB_NAME</code> filter is used, the results are grouped by the job name and
    #               version.</p>
    #               </dd>
    #               <dt>JOB_DEFINITION</dt>
    #               <dd>
    #                  <p>The value for the filter is the name or Amazon Resource Name (ARN) of the job definition. This
    #               corresponds to the <code>jobDefinition</code> value. The value is case sensitive. When
    #               the value for the filter is the job definition name, the results include all the jobs
    #               that used any revision of that job definition name. If the value ends with an asterisk
    #               (*), the filter matches any job definition name that begins with the string before the
    #               '*'. For example, <code>jd1</code> matches only <code>jd1</code>, and <code>jd1*</code>
    #               matches both <code>jd1</code> and <code>jd1A</code>. The version of the job definition
    #               that's used doesn't affect the sort order. When the <code>JOB_DEFINITION</code> filter
    #               is used and the ARN is used (which is in the form
    #                 <code>arn:${Partition}:batch:${Region}:${Account}:job-definition/${JobDefinitionName}:${Revision}</code>),
    #               the results include jobs that used the specified revision of the job definition.
    #               Asterisk (*) isn't supported when the ARN is used.</p>
    #               </dd>
    #               <dt>BEFORE_CREATED_AT</dt>
    #               <dd>
    #                  <p>The value for the filter is the time that's before the job was created. This
    #               corresponds to the <code>createdAt</code> value. The value is a string representation of
    #               the number of milliseconds since 00:00:00 UTC (midnight) on January 1, 1970.</p>
    #               </dd>
    #               <dt>AFTER_CREATED_AT</dt>
    #               <dd>
    #                  <p>The value for the filter is the time that's after the job was created. This
    #               corresponds to the <code>createdAt</code> value. The value is a string representation of
    #               the number of milliseconds since 00:00:00 UTC (midnight) on January 1, 1970.</p>
    #               </dd>
    #            </dl>
    # @example To list running jobs
    #   # This example lists the running jobs in the HighPriority job queue.
    #   params = {
    #     job_queue: "HighPriority"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    #   response.to_h #=>
    #   {
    #     job_summary_list: [
    #       {
    #         job_id: "e66ff5fd-a1ff-4640-b1a2-0b0a142f49bb",
    #         job_name: "example"
    #       }
    #     ]
    #   }
    # @example To list submitted jobs
    #   # This example lists jobs in the HighPriority job queue that are in the SUBMITTED job status.
    #   params = {
    #     job_queue: "HighPriority",
    #     job_status: SUBMITTED
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    #   response.to_h #=>
    #   {
    #     job_summary_list: [
    #       {
    #         job_id: "68f0c163-fbd4-44e6-9fd1-25b14a434786",
    #         job_name: "example"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_queue: "String",
    #     array_job_id: "String",
    #     multi_node_job_id: "String",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"],
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summary_list: [ # required
    #       {
    #         job_arn: "String",
    #         job_id: "String", # required
    #         job_name: "String", # required
    #         created_at: 1,
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"],
    #         status_reason: "String",
    #         started_at: 1,
    #         stopped_at: 1,
    #         container: {
    #           exit_code: 1,
    #           reason: "String"
    #         },
    #         array_properties: {
    #           size: 1,
    #           index: 1
    #         },
    #         node_properties: {
    #           is_main_node: false,
    #           num_nodes: 1,
    #           node_index: 1
    #         },
    #         job_definition: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListJobsResponse]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of Batch jobs that require a specific consumable resource.</p>
    # @param [Hash, Types::ListJobsByConsumableResourceRequest] params
    # @option params [String] :consumable_resource
    #   <p>The name or ARN of the consumable resource.</p>
    # @option params [Array<Types::KeyValuesPair>] :filters
    #   <p>The filters to apply to the job list query. If used, only those jobs requiring the specified 
    #               consumable resource (<code>consumableResource</code>) and that match the value of the filters
    #               are listed. The filter names and values can be:</p>
    #            <ul>
    #               <li>
    #                  <p>name: <code>JOB_STATUS</code>
    #                  </p>
    #                  <p>values: <code>SUBMITTED | PENDING | RUNNABLE | STARTING | RUNNING | SUCCEEDED | FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>name: <code>JOB_NAME </code>
    #                  </p>
    #                  <p>The values are case-insensitive matches for the job name. If a filter value ends 
    #                       with an asterisk (*), it matches any job name that begins with the string before 
    #                       the '*'.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>ListJobsByConsumableResource</code> in paginated
    #               output. When this parameter is used, <code>ListJobsByConsumableResource</code> only returns
    #               <code>maxResults</code> results in a single page and a <code>nextToken</code> response
    #               element. The remaining results of the initial request can be seen by sending another
    #               <code>ListJobsByConsumableResource</code> request with the returned <code>nextToken</code> value.
    #               This value can be between 1 and 100. If this parameter isn't
    #               used, then <code>ListJobsByConsumableResource</code> returns up to 100 results 
    #               and a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated 
    #               <code>ListJobsByConsumableResource</code> request where <code>maxResults</code> was used and the 
    #               results exceeded the value of that parameter. Pagination continues from the end of the previous 
    #               results that returned the <code>nextToken</code> value. This value is <code>null</code> when 
    #               there are no more results to return.</p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example To get a list of Batch jobs by consumable resource
    #   # Returns a list of Batch jobs that require a specific consumable resource.
    #   params = {
    #     consumable_resource: "myConsumableResource",
    #     filters: [
    #       {
    #         name: "CONSUMABLE_RESOURCE_NAME",
    #         values: [
    #           "my*"
    #         ]
    #       }
    #     ],
    #     max_results: 123
    #   }
    #   options = {}
    #   response = client.list_jobs_by_consumable_resource(params, options)
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         consumable_resource_properties: {
    #           consumable_resource_list: [
    #             {
    #               consumable_resource: "myConsumableResource",
    #               quantity: 123
    #             }
    #           ]
    #         },
    #         created_at: 1480460782010,
    #         job_arn: "arn:aws:batch:us-east-1:012345678910:job/myJob",
    #         job_definition_arn: "arn:aws:batch:us-east-1:012345678910:job-definition/myJobDef",
    #         job_name: "myJob",
    #         job_queue_arn: "arn:aws:batch:us-east-1:012345678910:job-queue/myJobQueue",
    #         job_status: "PENDING",
    #         quantity: 123
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     consumable_resource: "String", # required
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_jobs_by_consumable_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [ # required
    #       {
    #         job_arn: "String", # required
    #         job_queue_arn: "String", # required
    #         job_name: "String", # required
    #         job_definition_arn: "String",
    #         share_identifier: "String",
    #         job_status: "String", # required
    #         quantity: 1, # required
    #         status_reason: "String",
    #         started_at: 1,
    #         created_at: 1, # required
    #         consumable_resource_properties: { # required
    #           consumable_resource_list: [
    #             {
    #               consumable_resource: "String",
    #               quantity: 1
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListJobsByConsumableResourceResponse]
    def list_jobs_by_consumable_resource(params = {}, options = {})
      request = build_request(:list_jobs_by_consumable_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of Batch scheduling policies.</p>
    # @param [Hash, Types::ListSchedulingPoliciesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that's returned by <code>ListSchedulingPolicies</code> in
    #         paginated output. When this parameter is used, <code>ListSchedulingPolicies</code> only
    #         returns <code>maxResults</code> results in a single page and a <code>nextToken</code> response
    #         element. You can see the remaining results of the initial request by sending another
    #           <code>ListSchedulingPolicies</code> request with the returned <code>nextToken</code> value.
    #         This value can be between 1 and 100. If this parameter isn't
    #         used, <code>ListSchedulingPolicies</code> returns up to 100 results and a
    #           <code>nextToken</code> value if applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated
    #           <code>ListSchedulingPolicies</code> request where <code>maxResults</code> was used and the
    #         results exceeded the value of that parameter. Pagination continues from the end of the
    #         previous results that returned the <code>nextToken</code> value. This value is
    #           <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_scheduling_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduling_policies: [
    #       {
    #         arn: "String", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSchedulingPoliciesResponse]
    def list_scheduling_policies(params = {}, options = {})
      request = build_request(:list_scheduling_policies, params)
      request.send_request(options)
    end

    # <p>Returns a list of service jobs for a specified job queue.</p>
    # @param [Hash, Types::ListServiceJobsRequest] params
    # @option params [String] :job_queue
    #   <p>The name or ARN of the job queue with which to list service jobs.</p>
    # @option params [String] :job_status
    #   <p>The job status with which to filter service jobs. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>ListServiceJobs</code> in paginated output. When this parameter is used, <code>ListServiceJobs</code> only returns <code>maxResults</code> results in a single page and a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListServiceJobs</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter isn't used, then <code>ListServiceJobs</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>ListServiceJobs</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Array<Types::KeyValuesPair>] :filters
    #   <p>The filter to apply to the query. Only one filter can be used at a time. When the filter
    #              is used, <code>jobStatus</code> is ignored. The results are sorted by the <code>createdAt</code> field,
    #              with the most recent jobs being first.</p>
    #            <dl>
    #               <dt>JOB_NAME</dt>
    #               <dd>
    #                  <p>The value of the filter is a case-insensitive match for the job name. If the value
    #                          ends with an asterisk (*), the filter matches any job name that begins with the string
    #                          before the '*'. This corresponds to the <code>jobName</code> value. For example,
    #                          <code>test1</code> matches both <code>Test1</code> and <code>test1</code>, and
    #                          <code>test1*</code> matches both <code>test1</code> and <code>Test10</code>. When the
    #                          <code>JOB_NAME</code> filter is used, the results are grouped by the job name and
    #                          version.</p>
    #               </dd>
    #               <dt>BEFORE_CREATED_AT</dt>
    #               <dd>
    #                  <p>The value for the filter is the time that's before the job was created. This
    #                          corresponds to the <code>createdAt</code> value. The value is a string representation of
    #                          the number of milliseconds since 00:00:00 UTC (midnight) on January 1, 1970.</p>
    #               </dd>
    #               <dt>AFTER_CREATED_AT</dt>
    #               <dd>
    #                  <p>The value for the filter is the time that's after the job was created. This
    #                          corresponds to the <code>createdAt</code> value. The value is a string representation of
    #                          the number of milliseconds since 00:00:00 UTC (midnight) on January 1, 1970.</p>
    #               </dd>
    #            </dl>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_queue: "String",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "PENDING", "RUNNABLE", "SCHEDULED", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"],
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_service_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summary_list: [ # required
    #       {
    #         latest_attempt: {
    #           service_resource_id: {
    #             name: "TrainingJobArn" # One of: ["TrainingJobArn"], # required
    #             value: "String", # required
    #           }
    #         },
    #         created_at: 1,
    #         job_arn: "String",
    #         job_id: "String", # required
    #         job_name: "String", # required
    #         service_job_type: "SAGEMAKER_TRAINING" # One of: ["SAGEMAKER_TRAINING"], # required
    #         share_identifier: "String",
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "PENDING", "RUNNABLE", "SCHEDULED", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"],
    #         status_reason: "String",
    #         started_at: 1,
    #         stopped_at: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListServiceJobsResponse]
    def list_service_jobs(params = {}, options = {})
      request = build_request(:list_service_jobs, params)
      request.send_request(options)
    end

    # <p>Lists the tags for an Batch resource. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #  and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't supported.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource that tags are listed for. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #    and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't supported.</p>
    # @example ListTagsForResource Example
    #   # This demonstrates calling the ListTagsForResource action.
    #   params = {
    #     resource_arn: "arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "Stage" => "Alpha",
    #       "Department" => "Engineering",
    #       "User" => "JaneDoe"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Registers an Batch job definition.</p>
    # @param [Hash, Types::RegisterJobDefinitionRequest] params
    # @option params [String] :job_definition_name
    #   <p>The name of the job definition to register. It can be up to 128 letters long. It can
    #         contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    # @option params [String] :type
    #   <p>The type of job definition. For more information about multi-node parallel jobs, see
    #           <a href="https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html">Creating a multi-node
    #           parallel job definition</a> in the <i>Batch User Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>container</code>, then one of the following is required: <code>containerProperties</code>, <code>ecsProperties</code>, or <code>eksProperties</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>multinode</code>, then <code>nodeProperties</code> is required.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If the job is run on Fargate resources, then <code>multinode</code> isn't supported.</p>
    #            </note>
    # @option params [Hash<String, String>] :parameters
    #   <p>Default parameter substitution placeholders to set in the job definition. Parameters are
    #         specified as a key-value pair mapping. Parameters in a <code>SubmitJob</code> request override
    #         any corresponding parameter defaults from the job definition.</p>
    # @option params [Integer] :scheduling_priority
    #   <p>The scheduling priority for jobs that are submitted with this job definition. This only
    #         affects jobs in job queues with a fair-share policy. Jobs with a higher scheduling priority
    #         are scheduled before jobs with a lower scheduling priority.</p>
    #            <p>The minimum supported value is 0 and the maximum supported value is 9999.</p>
    # @option params [Types::ContainerProperties] :container_properties
    #   <p>An object with properties specific to Amazon ECS-based single-node container-based jobs. If the
    #         job definition's <code>type</code> parameter is <code>container</code>, then you must specify
    #         either <code>containerProperties</code> or <code>nodeProperties</code>. This must not be
    #         specified for Amazon EKS-based job definitions.</p>
    #            <note>
    #               <p>If the job runs on Fargate resources, then you must not specify
    #             <code>nodeProperties</code>; use only <code>containerProperties</code>.</p>
    #            </note>
    # @option params [Types::NodeProperties] :node_properties
    #   <p>An object with properties specific to multi-node parallel jobs. If you specify node
    #         properties for a job, it becomes a multi-node parallel job. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html">Multi-node Parallel
    #           Jobs</a> in the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>If the job runs on Fargate resources, then you must not specify
    #             <code>nodeProperties</code>; use <code>containerProperties</code> instead.</p>
    #            </note>
    #            <note>
    #               <p>If the job runs on Amazon EKS resources, then you must not specify
    #             <code>nodeProperties</code>.</p>
    #            </note>
    # @option params [Types::RetryStrategy] :retry_strategy
    #   <p>The retry strategy to use for failed jobs that are submitted with this job definition. Any
    #         retry strategy that's specified during a <a>SubmitJob</a> operation overrides the
    #         retry strategy defined here. If a job is terminated due to a timeout, it isn't retried.</p>
    # @option params [Boolean] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the job or job definition to the
    #         corresponding Amazon ECS task. If no value is specified, the tags are not propagated. Tags can only
    #         be propagated to the tasks during task creation. For tags with the same name, job tags are
    #         given priority over job definitions tags. If the total number of combined tags from the job
    #         and job definition is over 50, the job is moved to the <code>FAILED</code> state.</p>
    #            <note>
    #               <p>If the job runs on Amazon EKS resources, then you must not specify
    #           <code>propagateTags</code>.</p>
    #            </note>
    # @option params [Types::JobTimeout] :timeout
    #   <p>The timeout configuration for jobs that are submitted with this job definition, after
    #         which Batch terminates your jobs if they have not finished. If a job is terminated due to a
    #         timeout, it isn't retried. The minimum value for the timeout is 60 seconds. Any timeout
    #         configuration that's specified during a <a>SubmitJob</a> operation overrides the
    #         timeout configuration defined here. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/job_timeouts.html">Job Timeouts</a> in the
    #           <i>Batch User Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the job definition to help you categorize and organize your
    #         resources. Each tag consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging Amazon Web Services Resources</a> in
    #           <i>Batch User Guide</i>.</p>
    # @option params [Array<String>] :platform_capabilities
    #   <p>The platform capabilities required by the job definition. If no value is specified, it
    #         defaults to <code>EC2</code>. To run the job on Fargate resources, specify
    #           <code>FARGATE</code>.</p>
    #            <note>
    #               <p>If the job runs on Amazon EKS resources, then you must not specify
    #             <code>platformCapabilities</code>.</p>
    #            </note>
    # @option params [Types::EksProperties] :eks_properties
    #   <p>An object with properties that are specific to Amazon EKS-based jobs. This must not be
    #         specified for Amazon ECS based job definitions.</p>
    # @option params [Types::EcsProperties] :ecs_properties
    #   <p>An object with properties that are specific to Amazon ECS-based jobs. This must not be
    #         specified for Amazon EKS-based job definitions.</p>
    # @option params [Types::ConsumableResourceProperties] :consumable_resource_properties
    #   <p>Contains a list of consumable resources required by the job.</p>
    # @example RegisterJobDefinition with tags
    #   # This demonstrates calling the RegisterJobDefinition action, including tags.
    #   params = {
    #     job_definition_name: "sleep30",
    #     type: container,
    #     container_properties: {
    #       image: "busybox",
    #       command: [
    #         "sleep",
    #         "30"
    #       ],
    #       resource_requirements: [
    #         {
    #           type: MEMORY,
    #           value: "128"
    #         },
    #         {
    #           type: VCPU,
    #           value: "1"
    #         }
    #       ]
    #     },
    #     tags: {
    #       "Department" => "Engineering",
    #       "User" => "JaneDoe"
    #     }
    #   }
    #   options = {}
    #   response = client.register_job_definition(params, options)
    #   response.to_h #=>
    #   {
    #     job_definition_name: "sleep30",
    #     job_definition_arn: "arn:aws:batch:us-east-1:012345678910:job-definition/sleep30:1",
    #     revision: 1
    #   }
    # @example To register a job definition
    #   # This example registers a job definition for a simple container job.
    #   params = {
    #     container_properties: {
    #       image: "busybox",
    #       command: [
    #         "sleep",
    #         "10"
    #       ],
    #       resource_requirements: [
    #         {
    #           type: MEMORY,
    #           value: "128"
    #         },
    #         {
    #           type: VCPU,
    #           value: "1"
    #         }
    #       ]
    #     },
    #     type: container,
    #     job_definition_name: "sleep10"
    #   }
    #   options = {}
    #   response = client.register_job_definition(params, options)
    #   response.to_h #=>
    #   {
    #     job_definition_name: "sleep10",
    #     job_definition_arn: "arn:aws:batch:us-east-1:012345678910:job-definition/sleep10:1",
    #     revision: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_definition_name: "String", # required
    #     type: "container" # One of: ["container", "multinode"], # required
    #     parameters: {
    #       "String" => "String"
    #     },
    #     scheduling_priority: 1,
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
    #             source_path: "String"
    #           },
    #           name: "String",
    #           efs_volume_configuration: {
    #             file_system_id: "String", # required
    #             root_directory: "String",
    #             transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             transit_encryption_port: 1,
    #             authorization_config: {
    #               access_point_id: "String",
    #               iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           }
    #         }
    #       ],
    #       environment: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ],
    #       mount_points: [
    #         {
    #           container_path: "String",
    #           read_only: false,
    #           source_volume: "String"
    #         }
    #       ],
    #       readonly_root_filesystem: false,
    #       privileged: false,
    #       ulimits: [
    #         {
    #           hard_limit: 1, # required
    #           name: "String", # required
    #           soft_limit: 1, # required
    #         }
    #       ],
    #       user: "String",
    #       instance_type: "String",
    #       resource_requirements: [
    #         {
    #           value: "String", # required
    #           type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #         }
    #       ],
    #       linux_parameters: {
    #         devices: [
    #           {
    #             host_path: "String", # required
    #             container_path: "String",
    #             permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #           }
    #         ],
    #         init_process_enabled: false,
    #         shared_memory_size: 1,
    #         tmpfs: [
    #           {
    #             container_path: "String", # required
    #             size: 1, # required
    #             mount_options: ["String"]
    #           }
    #         ],
    #         max_swap: 1,
    #         swappiness: 1
    #       },
    #       log_configuration: {
    #         log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #         options: {
    #           "String" => "String"
    #         },
    #         secret_options: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           }
    #         ]
    #       },
    #       secrets: [
    #         {
    #           name: "String", # required
    #           value_from: "String", # required
    #         }
    #       ],
    #       network_configuration: {
    #         assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       fargate_platform_configuration: {
    #         platform_version: "String"
    #       },
    #       enable_execute_command: false,
    #       ephemeral_storage: {
    #         size_in_gi_b: 1, # required
    #       },
    #       runtime_platform: {
    #         operating_system_family: "String",
    #         cpu_architecture: "String"
    #       },
    #       repository_credentials: {
    #         credentials_parameter: "String", # required
    #       }
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
    #                   source_path: "String"
    #                 },
    #                 name: "String",
    #                 efs_volume_configuration: {
    #                   file_system_id: "String", # required
    #                   root_directory: "String",
    #                   transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                   transit_encryption_port: 1,
    #                   authorization_config: {
    #                     access_point_id: "String",
    #                     iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                   }
    #                 }
    #               }
    #             ],
    #             environment: [
    #               {
    #                 name: "String",
    #                 value: "String"
    #               }
    #             ],
    #             mount_points: [
    #               {
    #                 container_path: "String",
    #                 read_only: false,
    #                 source_volume: "String"
    #               }
    #             ],
    #             readonly_root_filesystem: false,
    #             privileged: false,
    #             ulimits: [
    #               {
    #                 hard_limit: 1, # required
    #                 name: "String", # required
    #                 soft_limit: 1, # required
    #               }
    #             ],
    #             user: "String",
    #             instance_type: "String",
    #             resource_requirements: [
    #               {
    #                 value: "String", # required
    #                 type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #               }
    #             ],
    #             linux_parameters: {
    #               devices: [
    #                 {
    #                   host_path: "String", # required
    #                   container_path: "String",
    #                   permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #                 }
    #               ],
    #               init_process_enabled: false,
    #               shared_memory_size: 1,
    #               tmpfs: [
    #                 {
    #                   container_path: "String", # required
    #                   size: 1, # required
    #                   mount_options: ["String"]
    #                 }
    #               ],
    #               max_swap: 1,
    #               swappiness: 1
    #             },
    #             log_configuration: {
    #               log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #               options: {
    #                 "String" => "String"
    #               },
    #               secret_options: [
    #                 {
    #                   name: "String", # required
    #                   value_from: "String", # required
    #                 }
    #               ]
    #             },
    #             secrets: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               }
    #             ],
    #             network_configuration: {
    #               assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             },
    #             fargate_platform_configuration: {
    #               platform_version: "String"
    #             },
    #             enable_execute_command: false,
    #             ephemeral_storage: {
    #               size_in_gi_b: 1, # required
    #             },
    #             runtime_platform: {
    #               operating_system_family: "String",
    #               cpu_architecture: "String"
    #             },
    #             repository_credentials: {
    #               credentials_parameter: "String", # required
    #             }
    #           },
    #           instance_types: ["String"],
    #           ecs_properties: {
    #             task_properties: [ # required
    #               {
    #                 containers: [ # required
    #                   {
    #                     command: ["String"],
    #                     depends_on: [
    #                       {
    #                         container_name: "String",
    #                         condition: "String"
    #                       }
    #                     ],
    #                     environment: [
    #                       {
    #                         name: "String",
    #                         value: "String"
    #                       }
    #                     ],
    #                     essential: false,
    #                     firelens_configuration: {
    #                       type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #                       options: {
    #                         "String" => "String"
    #                       }
    #                     },
    #                     image: "String", # required
    #                     linux_parameters: {
    #                       devices: [
    #                         {
    #                           host_path: "String", # required
    #                           container_path: "String",
    #                           permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #                         }
    #                       ],
    #                       init_process_enabled: false,
    #                       shared_memory_size: 1,
    #                       tmpfs: [
    #                         {
    #                           container_path: "String", # required
    #                           size: 1, # required
    #                           mount_options: ["String"]
    #                         }
    #                       ],
    #                       max_swap: 1,
    #                       swappiness: 1
    #                     },
    #                     log_configuration: {
    #                       log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #                       options: {
    #                         "String" => "String"
    #                       },
    #                       secret_options: [
    #                         {
    #                           name: "String", # required
    #                           value_from: "String", # required
    #                         }
    #                       ]
    #                     },
    #                     mount_points: [
    #                       {
    #                         container_path: "String",
    #                         read_only: false,
    #                         source_volume: "String"
    #                       }
    #                     ],
    #                     name: "String",
    #                     privileged: false,
    #                     readonly_root_filesystem: false,
    #                     repository_credentials: {
    #                       credentials_parameter: "String", # required
    #                     },
    #                     resource_requirements: [
    #                       {
    #                         value: "String", # required
    #                         type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                       }
    #                     ],
    #                     secrets: [
    #                       {
    #                         name: "String", # required
    #                         value_from: "String", # required
    #                       }
    #                     ],
    #                     ulimits: [
    #                       {
    #                         hard_limit: 1, # required
    #                         name: "String", # required
    #                         soft_limit: 1, # required
    #                       }
    #                     ],
    #                     user: "String"
    #                   }
    #                 ],
    #                 ephemeral_storage: {
    #                   size_in_gi_b: 1, # required
    #                 },
    #                 execution_role_arn: "String",
    #                 platform_version: "String",
    #                 ipc_mode: "String",
    #                 task_role_arn: "String",
    #                 pid_mode: "String",
    #                 network_configuration: {
    #                   assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                 },
    #                 runtime_platform: {
    #                   operating_system_family: "String",
    #                   cpu_architecture: "String"
    #                 },
    #                 volumes: [
    #                   {
    #                     host: {
    #                       source_path: "String"
    #                     },
    #                     name: "String",
    #                     efs_volume_configuration: {
    #                       file_system_id: "String", # required
    #                       root_directory: "String",
    #                       transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                       transit_encryption_port: 1,
    #                       authorization_config: {
    #                         access_point_id: "String",
    #                         iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 enable_execute_command: false
    #               }
    #             ]
    #           },
    #           eks_properties: {
    #             pod_properties: {
    #               service_account_name: "String",
    #               host_network: false,
    #               dns_policy: "String",
    #               image_pull_secrets: [
    #                 {
    #                   name: "String", # required
    #                 }
    #               ],
    #               containers: [
    #                 {
    #                   name: "String",
    #                   image: "String", # required
    #                   image_pull_policy: "String",
    #                   command: ["String"],
    #                   args: ["String"],
    #                   env: [
    #                     {
    #                       name: "String", # required
    #                       value: "String"
    #                     }
    #                   ],
    #                   resources: {
    #                     limits: {
    #                       "String" => "Quantity"
    #                     },
    #                     requests: {
    #                       "String" => "Quantity"
    #                     }
    #                   },
    #                   volume_mounts: [
    #                     {
    #                       name: "String",
    #                       mount_path: "String",
    #                       sub_path: "String",
    #                       read_only: false
    #                     }
    #                   ],
    #                   security_context: {
    #                     run_as_user: 1,
    #                     run_as_group: 1,
    #                     privileged: false,
    #                     allow_privilege_escalation: false,
    #                     read_only_root_filesystem: false,
    #                     run_as_non_root: false
    #                   }
    #                 }
    #               ],
    #               init_containers: [
    #                 {
    #                   name: "String",
    #                   image: "String", # required
    #                   image_pull_policy: "String",
    #                   command: ["String"],
    #                   args: ["String"],
    #                   env: [
    #                     {
    #                       name: "String", # required
    #                       value: "String"
    #                     }
    #                   ],
    #                   resources: {
    #                     limits: {
    #                       "String" => "Quantity"
    #                     },
    #                     requests: {
    #                       "String" => "Quantity"
    #                     }
    #                   },
    #                   volume_mounts: [
    #                     {
    #                       name: "String",
    #                       mount_path: "String",
    #                       sub_path: "String",
    #                       read_only: false
    #                     }
    #                   ],
    #                   security_context: {
    #                     run_as_user: 1,
    #                     run_as_group: 1,
    #                     privileged: false,
    #                     allow_privilege_escalation: false,
    #                     read_only_root_filesystem: false,
    #                     run_as_non_root: false
    #                   }
    #                 }
    #               ],
    #               volumes: [
    #                 {
    #                   name: "String", # required
    #                   host_path: {
    #                     path: "String"
    #                   },
    #                   empty_dir: {
    #                     medium: "String",
    #                     size_limit: "Quantity"
    #                   },
    #                   secret: {
    #                     secret_name: "String", # required
    #                     optional: false
    #                   },
    #                   persistent_volume_claim: {
    #                     claim_name: "String", # required
    #                     read_only: false
    #                   }
    #                 }
    #               ],
    #               metadata: {
    #                 labels: {
    #                   "String" => "String"
    #                 },
    #                 annotations: {
    #                   "String" => "String"
    #                 },
    #                 namespace: "String"
    #               },
    #               share_process_namespace: false
    #             }
    #           },
    #           consumable_resource_properties: {
    #             consumable_resource_list: [
    #               {
    #                 consumable_resource: "String",
    #                 quantity: 1
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     },
    #     retry_strategy: {
    #       attempts: 1,
    #       evaluate_on_exit: [
    #         {
    #           on_status_reason: "String",
    #           on_reason: "String",
    #           on_exit_code: "String",
    #           action: "RETRY" # One of: ["RETRY", "EXIT"], # required
    #         }
    #       ]
    #     },
    #     propagate_tags: false,
    #     timeout: {
    #       attempt_duration_seconds: 1
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     platform_capabilities: ["EC2" # One of: ["EC2", "FARGATE"]],
    #     eks_properties: {
    #       pod_properties: {
    #         service_account_name: "String",
    #         host_network: false,
    #         dns_policy: "String",
    #         image_pull_secrets: [
    #           {
    #             name: "String", # required
    #           }
    #         ],
    #         containers: [
    #           {
    #             name: "String",
    #             image: "String", # required
    #             image_pull_policy: "String",
    #             command: ["String"],
    #             args: ["String"],
    #             env: [
    #               {
    #                 name: "String", # required
    #                 value: "String"
    #               }
    #             ],
    #             resources: {
    #               limits: {
    #                 "String" => "Quantity"
    #               },
    #               requests: {
    #                 "String" => "Quantity"
    #               }
    #             },
    #             volume_mounts: [
    #               {
    #                 name: "String",
    #                 mount_path: "String",
    #                 sub_path: "String",
    #                 read_only: false
    #               }
    #             ],
    #             security_context: {
    #               run_as_user: 1,
    #               run_as_group: 1,
    #               privileged: false,
    #               allow_privilege_escalation: false,
    #               read_only_root_filesystem: false,
    #               run_as_non_root: false
    #             }
    #           }
    #         ],
    #         init_containers: [
    #           {
    #             name: "String",
    #             image: "String", # required
    #             image_pull_policy: "String",
    #             command: ["String"],
    #             args: ["String"],
    #             env: [
    #               {
    #                 name: "String", # required
    #                 value: "String"
    #               }
    #             ],
    #             resources: {
    #               limits: {
    #                 "String" => "Quantity"
    #               },
    #               requests: {
    #                 "String" => "Quantity"
    #               }
    #             },
    #             volume_mounts: [
    #               {
    #                 name: "String",
    #                 mount_path: "String",
    #                 sub_path: "String",
    #                 read_only: false
    #               }
    #             ],
    #             security_context: {
    #               run_as_user: 1,
    #               run_as_group: 1,
    #               privileged: false,
    #               allow_privilege_escalation: false,
    #               read_only_root_filesystem: false,
    #               run_as_non_root: false
    #             }
    #           }
    #         ],
    #         volumes: [
    #           {
    #             name: "String", # required
    #             host_path: {
    #               path: "String"
    #             },
    #             empty_dir: {
    #               medium: "String",
    #               size_limit: "Quantity"
    #             },
    #             secret: {
    #               secret_name: "String", # required
    #               optional: false
    #             },
    #             persistent_volume_claim: {
    #               claim_name: "String", # required
    #               read_only: false
    #             }
    #           }
    #         ],
    #         metadata: {
    #           labels: {
    #             "String" => "String"
    #           },
    #           annotations: {
    #             "String" => "String"
    #           },
    #           namespace: "String"
    #         },
    #         share_process_namespace: false
    #       }
    #     },
    #     ecs_properties: {
    #       task_properties: [ # required
    #         {
    #           containers: [ # required
    #             {
    #               command: ["String"],
    #               depends_on: [
    #                 {
    #                   container_name: "String",
    #                   condition: "String"
    #                 }
    #               ],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               essential: false,
    #               firelens_configuration: {
    #                 type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #                 options: {
    #                   "String" => "String"
    #                 }
    #               },
    #               image: "String", # required
    #               linux_parameters: {
    #                 devices: [
    #                   {
    #                     host_path: "String", # required
    #                     container_path: "String",
    #                     permissions: ["READ" # One of: ["READ", "WRITE", "MKNOD"]]
    #                   }
    #                 ],
    #                 init_process_enabled: false,
    #                 shared_memory_size: 1,
    #                 tmpfs: [
    #                   {
    #                     container_path: "String", # required
    #                     size: 1, # required
    #                     mount_options: ["String"]
    #                   }
    #                 ],
    #                 max_swap: 1,
    #                 swappiness: 1
    #               },
    #               log_configuration: {
    #                 log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #                 options: {
    #                   "String" => "String"
    #                 },
    #                 secret_options: [
    #                   {
    #                     name: "String", # required
    #                     value_from: "String", # required
    #                   }
    #                 ]
    #               },
    #               mount_points: [
    #                 {
    #                   container_path: "String",
    #                   read_only: false,
    #                   source_volume: "String"
    #                 }
    #               ],
    #               name: "String",
    #               privileged: false,
    #               readonly_root_filesystem: false,
    #               repository_credentials: {
    #                 credentials_parameter: "String", # required
    #               },
    #               resource_requirements: [
    #                 {
    #                   value: "String", # required
    #                   type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                 }
    #               ],
    #               secrets: [
    #                 {
    #                   name: "String", # required
    #                   value_from: "String", # required
    #                 }
    #               ],
    #               ulimits: [
    #                 {
    #                   hard_limit: 1, # required
    #                   name: "String", # required
    #                   soft_limit: 1, # required
    #                 }
    #               ],
    #               user: "String"
    #             }
    #           ],
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           },
    #           execution_role_arn: "String",
    #           platform_version: "String",
    #           ipc_mode: "String",
    #           task_role_arn: "String",
    #           pid_mode: "String",
    #           network_configuration: {
    #             assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           runtime_platform: {
    #             operating_system_family: "String",
    #             cpu_architecture: "String"
    #           },
    #           volumes: [
    #             {
    #               host: {
    #                 source_path: "String"
    #               },
    #               name: "String",
    #               efs_volume_configuration: {
    #                 file_system_id: "String", # required
    #                 root_directory: "String",
    #                 transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                 transit_encryption_port: 1,
    #                 authorization_config: {
    #                   access_point_id: "String",
    #                   iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                 }
    #               }
    #             }
    #           ],
    #           enable_execute_command: false
    #         }
    #       ]
    #     },
    #     consumable_resource_properties: {
    #       consumable_resource_list: [
    #         {
    #           consumable_resource: "String",
    #           quantity: 1
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.register_job_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_definition_name: "String", # required
    #     job_definition_arn: "String", # required
    #     revision: 1, # required
    #   }
    # @return [Types::RegisterJobDefinitionResponse]
    def register_job_definition(params = {}, options = {})
      request = build_request(:register_job_definition, params)
      request.send_request(options)
    end

    # <p>Submits an Batch job from a job definition. Parameters that are specified during <a>SubmitJob</a> override parameters defined in the job definition. vCPU and memory
    #       requirements that are specified in the <code>resourceRequirements</code> objects in the job
    #       definition are the exception. They can't be overridden this way using the <code>memory</code>
    #       and <code>vcpus</code> parameters. Rather, you must specify updates to job definition
    #       parameters in a <code>resourceRequirements</code> object that's included in the
    #         <code>containerOverrides</code> parameter.</p>
    #          <note>
    #             <p>Job queues with a scheduling policy are limited to 500 active share identifiers at
    #         a time. </p>
    #          </note>
    #          <important>
    #             <p>Jobs that run on Fargate resources can't be guaranteed to run for more than 14 days.
    #         This is because, after 14 days, Fargate resources might become unavailable and job might be
    #         terminated.</p>
    #          </important>
    # @param [Hash, Types::SubmitJobRequest] params
    # @option params [String] :job_name
    #   <p>The name of the job. It can be up to 128 letters long. The first character must be
    #         alphanumeric, can contain uppercase and lowercase letters, numbers, hyphens (-), and
    #         underscores (_).</p>
    # @option params [String] :job_queue
    #   <p>The job queue where the job is submitted. You can specify either the name or the Amazon Resource Name (ARN)
    #         of the queue.</p>
    # @option params [String] :share_identifier
    #   <p>The share identifier for the job. Don't specify this parameter if the job queue doesn't
    #         have a fair-share scheduling policy. If the job queue has a fair-share scheduling policy, then this parameter must
    #         be specified.</p>
    #            <p>This string is limited to 255 alphanumeric characters, and can be followed by an asterisk
    #         (*).</p>
    # @option params [Integer] :scheduling_priority_override
    #   <p>The scheduling priority for the job. This only affects jobs in job queues with a 
    #         fair-share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower
    #         scheduling priority. This overrides any scheduling priority in the job definition and works only 
    #         within a single share identifier.</p>
    #            <p>The minimum supported value is 0 and the maximum supported value is 9999.</p>
    # @option params [Types::ArrayProperties] :array_properties
    #   <p>The array properties for the submitted job, such as the size of the array. The array size
    #         can be between 2 and 10,000. If you specify array properties for a job, it becomes an array
    #         job. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html">Array Jobs</a> in the <i>Batch User Guide</i>.</p>
    # @option params [Array<Types::JobDependency>] :depends_on
    #   <p>A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can
    #         specify a <code>SEQUENTIAL</code> type dependency without specifying a job ID for array jobs
    #         so that each child array job completes sequentially, starting at index 0. You can also specify
    #         an <code>N_TO_N</code> type dependency with a job ID for array jobs. In that case, each index
    #         child of this job must wait for the corresponding index child of each dependency to complete
    #         before it can begin.</p>
    # @option params [String] :job_definition
    #   <p>The job definition used by this job. This value can be one of
    #         <code>definition-name</code>, <code>definition-name:revision</code>, or the Amazon Resource Name (ARN) for the
    #         job definition, with or without the revision
    #             (<code>arn:aws:batch:<i>region</i>:<i>account</i>:job-definition/<i>definition-name</i>:<i>revision</i>
    #               </code>,
    #         or
    #             <code>arn:aws:batch:<i>region</i>:<i>account</i>:job-definition/<i>definition-name</i>
    #               </code>).</p>
    #            <p>If the revision is not specified, then the latest active revision is used.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>Additional parameters passed to the job that replace parameter substitution placeholders
    #         that are set in the job definition. Parameters are specified as a key and value pair mapping.
    #         Parameters in a <code>SubmitJob</code> request override any corresponding parameter defaults
    #         from the job definition.</p>
    # @option params [Types::ContainerOverrides] :container_overrides
    #   <p>An object with properties that override the defaults for the job definition that specify
    #         the name of a container in the specified job definition and the overrides it should receive.
    #         You can override the default command for a container, which is specified in the job definition
    #         or the Docker image, with a <code>command</code> override. You can also override existing
    #         environment variables on a container or add new environment variables to it with an
    #           <code>environment</code> override.</p>
    # @option params [Types::NodeOverrides] :node_overrides
    #   <p>A list of node overrides in JSON format that specify the node range to target and the
    #         container overrides for that node range.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources; use
    #             <code>containerOverrides</code> instead.</p>
    #            </note>
    # @option params [Types::RetryStrategy] :retry_strategy
    #   <p>The retry strategy to use for failed jobs from this <a>SubmitJob</a> operation.
    #         When a retry strategy is specified here, it overrides the retry strategy defined in the job
    #         definition.</p>
    # @option params [Boolean] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the job or job definition to the
    #         corresponding Amazon ECS task. If no value is specified, the tags aren't propagated. Tags can only
    #         be propagated to the tasks during task creation. For tags with the same name, job tags are
    #         given priority over job definitions tags. If the total number of combined tags from the job
    #         and job definition is over 50, the job is moved to the <code>FAILED</code> state. When
    #         specified, this overrides the tag propagation setting in the job definition.</p>
    # @option params [Types::JobTimeout] :timeout
    #   <p>The timeout configuration for this <a>SubmitJob</a> operation. You can specify
    #         a timeout duration after which Batch terminates your jobs if they haven't finished. If a job
    #         is terminated due to a timeout, it isn't retried. The minimum value for the timeout is 60
    #         seconds. This configuration overrides any timeout configuration specified in the job
    #         definition. For array jobs, child jobs have the same timeout configuration as the parent job.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html">Job Timeouts</a> in the
    #           <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the job request to help you categorize and organize your
    #         resources. Each tag consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #           Resources</a> in <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Types::EksPropertiesOverride] :eks_properties_override
    #   <p>An object, with properties that override defaults for the job definition, can only be specified for jobs that are run on Amazon EKS resources.</p>
    # @option params [Types::EcsPropertiesOverride] :ecs_properties_override
    #   <p>An object, with properties that override defaults for the job definition, can only be specified for jobs that are run on Amazon ECS resources.</p>
    # @option params [Types::ConsumableResourceProperties] :consumable_resource_properties_override
    #   <p>An object that contains overrides for the consumable resources of a job.</p>
    # @example To submit a job to a queue
    #   # This example submits a simple container job called example to the HighPriority job queue.
    #   params = {
    #     job_name: "example",
    #     job_queue: "HighPriority",
    #     job_definition: "sleep60"
    #   }
    #   options = {}
    #   response = client.submit_job(params, options)
    #   response.to_h #=>
    #   {
    #     job_name: "example",
    #     job_id: "876da822-4198-45f2-a252-6cea32512ea8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "String", # required
    #     job_queue: "String", # required
    #     share_identifier: "String",
    #     scheduling_priority_override: 1,
    #     array_properties: {
    #       size: 1
    #     },
    #     depends_on: [
    #       {
    #         job_id: "String",
    #         type: "N_TO_N" # One of: ["N_TO_N", "SEQUENTIAL"]
    #       }
    #     ],
    #     job_definition: "String", # required
    #     parameters: {
    #       "String" => "String"
    #     },
    #     container_overrides: {
    #       vcpus: 1,
    #       memory: 1,
    #       command: ["String"],
    #       instance_type: "String",
    #       environment: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ],
    #       resource_requirements: [
    #         {
    #           value: "String", # required
    #           type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #         }
    #       ]
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
    #                 value: "String"
    #               }
    #             ],
    #             resource_requirements: [
    #               {
    #                 value: "String", # required
    #                 type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #               }
    #             ]
    #           },
    #           ecs_properties_override: {
    #             task_properties: [
    #               {
    #                 containers: [
    #                   {
    #                     command: ["String"],
    #                     environment: [
    #                       {
    #                         name: "String",
    #                         value: "String"
    #                       }
    #                     ],
    #                     name: "String",
    #                     resource_requirements: [
    #                       {
    #                         value: "String", # required
    #                         type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                       }
    #                     ]
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           instance_types: ["String"],
    #           eks_properties_override: {
    #             pod_properties: {
    #               containers: [
    #                 {
    #                   name: "String",
    #                   image: "String",
    #                   command: ["String"],
    #                   args: ["String"],
    #                   env: [
    #                     {
    #                       name: "String", # required
    #                       value: "String"
    #                     }
    #                   ],
    #                   resources: {
    #                     limits: {
    #                       "String" => "Quantity"
    #                     },
    #                     requests: {
    #                       "String" => "Quantity"
    #                     }
    #                   }
    #                 }
    #               ],
    #               init_containers: [
    #                 {
    #                   name: "String",
    #                   image: "String",
    #                   command: ["String"],
    #                   args: ["String"],
    #                   env: [
    #                     {
    #                       name: "String", # required
    #                       value: "String"
    #                     }
    #                   ],
    #                   resources: {
    #                     limits: {
    #                       "String" => "Quantity"
    #                     },
    #                     requests: {
    #                       "String" => "Quantity"
    #                     }
    #                   }
    #                 }
    #               ],
    #               metadata: {
    #                 labels: {
    #                   "String" => "String"
    #                 },
    #                 annotations: {
    #                   "String" => "String"
    #                 },
    #                 namespace: "String"
    #               }
    #             }
    #           },
    #           consumable_resource_properties_override: {
    #             consumable_resource_list: [
    #               {
    #                 consumable_resource: "String",
    #                 quantity: 1
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     },
    #     retry_strategy: {
    #       attempts: 1,
    #       evaluate_on_exit: [
    #         {
    #           on_status_reason: "String",
    #           on_reason: "String",
    #           on_exit_code: "String",
    #           action: "RETRY" # One of: ["RETRY", "EXIT"], # required
    #         }
    #       ]
    #     },
    #     propagate_tags: false,
    #     timeout: {
    #       attempt_duration_seconds: 1
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     eks_properties_override: {
    #       pod_properties: {
    #         containers: [
    #           {
    #             name: "String",
    #             image: "String",
    #             command: ["String"],
    #             args: ["String"],
    #             env: [
    #               {
    #                 name: "String", # required
    #                 value: "String"
    #               }
    #             ],
    #             resources: {
    #               limits: {
    #                 "String" => "Quantity"
    #               },
    #               requests: {
    #                 "String" => "Quantity"
    #               }
    #             }
    #           }
    #         ],
    #         init_containers: [
    #           {
    #             name: "String",
    #             image: "String",
    #             command: ["String"],
    #             args: ["String"],
    #             env: [
    #               {
    #                 name: "String", # required
    #                 value: "String"
    #               }
    #             ],
    #             resources: {
    #               limits: {
    #                 "String" => "Quantity"
    #               },
    #               requests: {
    #                 "String" => "Quantity"
    #               }
    #             }
    #           }
    #         ],
    #         metadata: {
    #           labels: {
    #             "String" => "String"
    #           },
    #           annotations: {
    #             "String" => "String"
    #           },
    #           namespace: "String"
    #         }
    #       }
    #     },
    #     ecs_properties_override: {
    #       task_properties: [
    #         {
    #           containers: [
    #             {
    #               command: ["String"],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               name: "String",
    #               resource_requirements: [
    #                 {
    #                   value: "String", # required
    #                   type: "GPU" # One of: ["GPU", "VCPU", "MEMORY"], # required
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     consumable_resource_properties_override: {
    #       consumable_resource_list: [
    #         {
    #           consumable_resource: "String",
    #           quantity: 1
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.submit_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "String",
    #     job_name: "String", # required
    #     job_id: "String", # required
    #   }
    # @return [Types::SubmitJobResponse]
    def submit_job(params = {}, options = {})
      request = build_request(:submit_job, params)
      request.send_request(options)
    end

    # <p>Submits a service job to a specified job queue to run on SageMaker AI. A service job is a unit of work that you submit to Batch for execution on SageMaker AI.</p>
    # @param [Hash, Types::SubmitServiceJobRequest] params
    # @option params [String] :job_name
    #   <p>The name of the service job. It can be up to 128 characters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    # @option params [String] :job_queue
    #   <p>The job queue into which the service job is submitted. You can specify either the name or the ARN of the queue. The job queue must have the type <code>SAGEMAKER_TRAINING</code>.</p>
    # @option params [Types::ServiceJobRetryStrategy] :retry_strategy
    #   <p>The retry strategy to use for failed service jobs that are submitted with this service job request. </p>
    # @option params [Integer] :scheduling_priority
    #   <p>The scheduling priority of the service job.  Valid values are integers between 0 and 9999.</p>
    # @option params [String] :service_request_payload
    #   <p>The request, in JSON, for the service that the SubmitServiceJob operation is queueing. </p>
    # @option params [String] :service_job_type
    #   <p>The type of service job. For SageMaker Training jobs, specify <code>SAGEMAKER_TRAINING</code>.</p>
    # @option params [String] :share_identifier
    #   <p>The share identifier for the service job. Don't specify this parameter if the job
    #               queue doesn't have a fair-share scheduling policy. If the job queue has a fair-share
    #               scheduling policy, then this parameter must be specified.</p>
    # @option params [Types::ServiceJobTimeout] :timeout_config
    #   <p>The timeout configuration for the service job. If none is specified, Batch defers to the default timeout of the underlying service handling the job.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the service job request. Each tag consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging your Batch resources</a>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. This token is used to ensure idempotency of requests. If this parameter is specified and two submit requests with identical payloads and <code>clientToken</code>s are received, these requests are considered the same request and the second request is rejected.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "String", # required
    #     job_queue: "String", # required
    #     retry_strategy: {
    #       attempts: 1, # required
    #       evaluate_on_exit: [
    #         {
    #           action: "RETRY" # One of: ["RETRY", "EXIT"],
    #           on_status_reason: "String"
    #         }
    #       ]
    #     },
    #     scheduling_priority: 1,
    #     service_request_payload: "String", # required
    #     service_job_type: "SAGEMAKER_TRAINING" # One of: ["SAGEMAKER_TRAINING"], # required
    #     share_identifier: "String",
    #     timeout_config: {
    #       attempt_duration_seconds: 1
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.submit_service_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "String",
    #     job_name: "String", # required
    #     job_id: "String", # required
    #   }
    # @return [Types::SubmitServiceJobResponse]
    def submit_service_job(params = {}, options = {})
      request = build_request(:submit_service_job, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    #       If existing tags on a resource aren't specified in the request parameters, they aren't
    #       changed. When a resource is deleted, the tags that are associated with that resource are
    #       deleted as well. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #  and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't supported.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that tags are added to. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #    and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't supported.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the resource to help you categorize and organize your
    #         resources. Each tag consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #           Resources</a> in <i>Amazon Web Services General Reference</i>.</p>
    # @example TagResource Example
    #   # This demonstrates calling the TagResource action.
    #   params = {
    #     resource_arn: "arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1",
    #     tags: {
    #       "Stage" => "Alpha"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Terminates a job in a job queue. Jobs that are in the <code>STARTING</code> or
    #         <code>RUNNING</code> state are terminated, which causes them to transition to
    #         <code>FAILED</code>. Jobs that have not progressed to the <code>STARTING</code> state are
    #       cancelled.</p>
    # @param [Hash, Types::TerminateJobRequest] params
    # @option params [String] :job_id
    #   <p>The Batch job ID of the job to terminate.</p>
    # @option params [String] :reason
    #   <p>A message to attach to the job that explains the reason for canceling it. This message is
    #         returned by future <a>DescribeJobs</a> operations on the job. It is also
    #         recorded in the Batch activity logs.</p>
    #            <p>This parameter has as limit of 1024 characters.</p>
    # @example To terminate a job
    #   # This example terminates a job with the specified job ID.
    #   params = {
    #     reason: "Terminating job.",
    #     job_id: "61e743ed-35e4-48da-b2de-5c8333821c84"
    #   }
    #   options = {}
    #   response = client.terminate_job(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "String", # required
    #     reason: "String", # required
    #   }
    #   options = {}
    #   response = client.terminate_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TerminateJobResponse]
    def terminate_job(params = {}, options = {})
      request = build_request(:terminate_job, params)
      request.send_request(options)
    end

    # <p>Terminates a service job in a job queue. </p>
    # @param [Hash, Types::TerminateServiceJobRequest] params
    # @option params [String] :job_id
    #   <p>The service job ID of the service job to terminate.</p>
    # @option params [String] :reason
    #   <p>A message to attach to the service job that explains the reason for canceling it. This message is returned by <code>DescribeServiceJob</code> operations on the service job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "String", # required
    #     reason: "String", # required
    #   }
    #   options = {}
    #   response = client.terminate_service_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TerminateServiceJobResponse]
    def terminate_service_job(params = {}, options = {})
      request = build_request(:terminate_service_job, params)
      request.send_request(options)
    end

    # <p>Deletes specified tags from an Batch resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #    and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't supported.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    # @example UntagResource Example
    #   # This demonstrates calling the UntagResource action.
    #   params = {
    #     resource_arn: "arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1",
    #     tag_keys: [
    #       "Stage"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an Batch compute environment.</p>
    # @param [Hash, Types::UpdateComputeEnvironmentRequest] params
    # @option params [String] :compute_environment
    #   <p>The name or full Amazon Resource Name (ARN) of the compute environment to update.</p>
    # @option params [String] :state
    #   <p>The state of the compute environment. Compute environments in the <code>ENABLED</code>
    #         state can accept jobs from a queue and scale in or out automatically based on the workload
    #         demand of its associated queues.</p>
    #            <p>If the state is <code>ENABLED</code>, then the Batch scheduler can attempt to place jobs
    #         from an associated job queue on the compute resources within the environment. If the compute
    #         environment is managed, then it can scale its instances out or in automatically, based on the
    #         job queue demand.</p>
    #            <p>If the state is <code>DISABLED</code>, then the Batch scheduler doesn't attempt to place
    #         jobs within the environment. Jobs in a <code>STARTING</code> or <code>RUNNING</code> state
    #         continue to progress normally. Managed compute environments in the <code>DISABLED</code> state
    #         don't scale out. </p>
    #            <note>
    #               <p>Compute environments in a <code>DISABLED</code> state may continue to incur billing
    #           charges. To prevent additional charges, turn off and then delete the compute environment.
    #           For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environment_parameters.html#compute_environment_state">State</a> in the <i>Batch User Guide</i>.</p>
    #            </note>
    #            <p>When an instance is idle, the instance scales down to the <code>minvCpus</code> value.
    #         However, the instance size doesn't change. For example, consider a <code>c5.8xlarge</code>
    #         instance with a <code>minvCpus</code> value of <code>4</code> and a <code>desiredvCpus</code>
    #         value of <code>36</code>. This instance doesn't scale down to a <code>c5.large</code>
    #         instance.</p>
    # @option params [Integer] :unmanagedv_cpus
    #   <p>The maximum number of vCPUs expected to be used for an unmanaged compute environment.
    #         Don't specify this parameter for a managed compute environment. This parameter is only used
    #         for fair-share scheduling to reserve vCPU capacity for new share identifiers. If this
    #         parameter isn't provided for a fair-share job queue, no vCPU capacity is reserved.</p>
    # @option params [Types::ComputeResourceUpdate] :compute_resources
    #   <p>Details of the compute resources managed by the compute environment. Required for a
    #         managed compute environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute Environments</a> in the
    #           <i>Batch User Guide</i>.</p>
    # @option params [String] :service_role
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that allows Batch to make calls to other Amazon Web Services
    #         services on your behalf. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html">Batch service IAM role</a> in the
    #           <i>Batch User Guide</i>.</p>
    #            <important>
    #               <p>If the compute environment has a service-linked role, it can't be changed to use a
    #           regular IAM role. Likewise, if the compute environment has a regular IAM role, it can't
    #           be changed to use a service-linked role. To update the parameters for the compute
    #           environment that require an infrastructure update to change, the <b>AWSServiceRoleForBatch</b> service-linked role must be used. For more information,
    #           see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating
    #             compute environments</a> in the <i>Batch User Guide</i>.</p>
    #            </important>
    #            <p>If your specified role has a path other than <code>/</code>, then you must either specify
    #         the full role ARN (recommended) or prefix the role name with the path.</p>
    #            <note>
    #               <p>Depending on how you created your Batch service role, its ARN might contain the
    #             <code>service-role</code> path prefix. When you only specify the name of the service role,
    #           Batch assumes that your ARN doesn't use the <code>service-role</code> path prefix. Because
    #           of this, we recommend that you specify the full ARN of your service role when you create
    #           compute environments.</p>
    #            </note>
    # @option params [Types::UpdatePolicy] :update_policy
    #   <p>Specifies the updated infrastructure update policy for the compute environment. For more
    #         information about infrastructure updates, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in
    #         the <i>Batch User Guide</i>.</p>
    # @option params [String] :context
    #   <p>Reserved.</p>
    # @example To update a compute environment
    #   # This example disables the P2OnDemand compute environment so it can be deleted.
    #   params = {
    #     compute_environment: "P2OnDemand",
    #     state: DISABLED
    #   }
    #   options = {}
    #   response = client.update_compute_environment(params, options)
    #   response.to_h #=>
    #   {
    #     compute_environment_name: "P2OnDemand",
    #     compute_environment_arn: "arn:aws:batch:us-east-1:012345678910:compute-environment/P2OnDemand"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compute_environment: "String", # required
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     unmanagedv_cpus: 1,
    #     compute_resources: {
    #       minv_cpus: 1,
    #       maxv_cpus: 1,
    #       desiredv_cpus: 1,
    #       subnets: ["String"],
    #       security_group_ids: ["String"],
    #       allocation_strategy: "BEST_FIT_PROGRESSIVE" # One of: ["BEST_FIT_PROGRESSIVE", "SPOT_CAPACITY_OPTIMIZED", "SPOT_PRICE_CAPACITY_OPTIMIZED"],
    #       instance_types: ["String"],
    #       ec2_key_pair: "String",
    #       instance_role: "String",
    #       tags: {
    #         "String" => "String"
    #       },
    #       placement_group: "String",
    #       bid_percentage: 1,
    #       launch_template: {
    #         launch_template_id: "String",
    #         launch_template_name: "String",
    #         version: "String",
    #         overrides: [
    #           {
    #             launch_template_id: "String",
    #             launch_template_name: "String",
    #             version: "String",
    #             target_instance_types: ["String"],
    #             userdata_type: "EKS_BOOTSTRAP_SH" # One of: ["EKS_BOOTSTRAP_SH", "EKS_NODEADM"]
    #           }
    #         ],
    #         userdata_type: "EKS_BOOTSTRAP_SH" # One of: ["EKS_BOOTSTRAP_SH", "EKS_NODEADM"]
    #       },
    #       ec2_configuration: [
    #         {
    #           image_type: "ImageType", # required
    #           image_id_override: "ImageIdOverride",
    #           image_kubernetes_version: "KubernetesVersion"
    #         }
    #       ],
    #       update_to_latest_image_version: false,
    #       type: "EC2" # One of: ["EC2", "SPOT", "FARGATE", "FARGATE_SPOT"],
    #       image_id: "String"
    #     },
    #     service_role: "String",
    #     update_policy: {
    #       terminate_jobs_on_update: false,
    #       job_execution_timeout_minutes: 1
    #     },
    #     context: "String"
    #   }
    #   options = {}
    #   response = client.update_compute_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute_environment_name: "String",
    #     compute_environment_arn: "String"
    #   }
    # @return [Types::UpdateComputeEnvironmentResponse]
    def update_compute_environment(params = {}, options = {})
      request = build_request(:update_compute_environment, params)
      request.send_request(options)
    end

    # <p>Updates a consumable resource.</p>
    # @param [Hash, Types::UpdateConsumableResourceRequest] params
    # @option params [String] :consumable_resource
    #   <p>The name or ARN of the consumable resource to be updated.</p>
    # @option params [String] :operation
    #   <p>Indicates how the quantity of the consumable resource will be updated. Must be one of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SET</code>
    #                  </p>
    #                  <p>Sets the quantity of the resource to the value specified by the <code>quantity</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ADD</code>
    #                  </p>
    #                  <p>Increases the quantity of the resource by the value specified by the <code>quantity</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVE</code>
    #                  </p>
    #                  <p>Reduces the quantity of the resource by the value specified by the <code>quantity</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :quantity
    #   <p>The change in the total quantity of the consumable resource. The <code>operation</code>
    #               parameter determines whether the value specified here will be the new total quantity, or
    #               the amount by which the total quantity will be increased or reduced. Must be a non-negative 
    #               value.</p>
    # @option params [String] :client_token
    #   <p>If this parameter is specified and two update requests with identical payloads and 
    #             <code>clientToken</code>s are received, these requests are considered the same request. Both requests will succeed, but the update will only happen once. A <code>clientToken</code> is valid for 8 hours.</p>
    # @example To update a consumable resource
    #   # Updates a consumable resource.
    #   params = {
    #     consumable_resource: "myConsumableResource",
    #     operation: "ADD",
    #     quantity: 12
    #   }
    #   options = {}
    #   response = client.update_consumable_resource(params, options)
    #   response.to_h #=>
    #   {
    #     consumable_resource_name: "myConsumableResource",
    #     consumable_resource_arn: "arn:aws:batch:us-east-1:012345678910:consumable-resource/myConsumableResource",
    #     total_quantity: 135
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     consumable_resource: "String", # required
    #     operation: "String",
    #     quantity: 1,
    #     client_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.update_consumable_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumable_resource_name: "String", # required
    #     consumable_resource_arn: "String", # required
    #     total_quantity: 1
    #   }
    # @return [Types::UpdateConsumableResourceResponse]
    def update_consumable_resource(params = {}, options = {})
      request = build_request(:update_consumable_resource, params)
      request.send_request(options)
    end

    # <p>Updates a job queue.</p>
    # @param [Hash, Types::UpdateJobQueueRequest] params
    # @option params [String] :job_queue
    #   <p>The name or the Amazon Resource Name (ARN) of the job queue.</p>
    # @option params [String] :state
    #   <p>Describes the queue's ability to accept new jobs. If the job queue state is
    #           <code>ENABLED</code>, it can accept jobs. If the job queue state is <code>DISABLED</code>,
    #         new jobs can't be added to the queue, but jobs already in the queue can finish.</p>
    # @option params [String] :scheduling_policy_arn
    #   <p>Amazon Resource Name (ARN) of the fair-share scheduling policy. Once a job queue is created, the fair-share
    #         scheduling policy can be replaced but not removed. The format is
    #             <code>aws:<i>Partition</i>:batch:<i>Region</i>:<i>Account</i>:scheduling-policy/<i>Name</i>
    #               </code>.
    #         For example,
    #           <code>aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy</code>.</p>
    # @option params [Integer] :priority
    #   <p>The priority of the job queue. Job queues with a higher priority (or a higher integer
    #         value for the <code>priority</code> parameter) are evaluated first when associated with the
    #         same compute environment. Priority is determined in descending order. For example, a job queue
    #         with a priority value of <code>10</code> is given scheduling preference over a job queue with
    #         a priority value of <code>1</code>. All of the compute environments must be either EC2
    #           (<code>EC2</code> or <code>SPOT</code>) or Fargate (<code>FARGATE</code> or
    #           <code>FARGATE_SPOT</code>). EC2 and Fargate compute environments can't be mixed.</p>
    # @option params [Array<Types::ComputeEnvironmentOrder>] :compute_environment_order
    #   <p>Details the set of compute environments mapped to a job queue and their order relative to
    #         each other. This is one of the parameters used by the job scheduler to determine which compute
    #         environment runs a given job. Compute environments must be in the <code>VALID</code> state
    #         before you can associate them with a job queue. All of the compute environments must be either
    #         EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate (<code>FARGATE</code> or
    #           <code>FARGATE_SPOT</code>). EC2 and Fargate compute environments can't be mixed.</p>
    #            <note>
    #               <p>All compute environments that are associated with a job queue must share the same
    #           architecture. Batch doesn't support mixing compute environment architecture types in a
    #           single job queue.</p>
    #            </note>
    # @option params [Array<Types::ServiceEnvironmentOrder>] :service_environment_order
    #   <p>The order of the service environment associated with the job queue. Job queues with a higher priority are evaluated first when associated with the same service environment.</p>
    # @option params [Array<Types::JobStateTimeLimitAction>] :job_state_time_limit_actions
    #   <p>The set of actions that Batch perform on jobs that remain at the head of the job queue in the specified state longer than specified times. Batch will perform each action after <code>maxTimeSeconds</code> has passed. (<b>Note</b>: The minimum value for maxTimeSeconds is 600 (10 minutes) and its maximum value is 86,400 (24 hours).)</p>
    # @example To update a job queue
    #   # This example disables a job queue so that it can be deleted.
    #   params = {
    #     state: DISABLED,
    #     job_queue: "GPGPU"
    #   }
    #   options = {}
    #   response = client.update_job_queue(params, options)
    #   response.to_h #=>
    #   {
    #     job_queue_name: "GPGPU",
    #     job_queue_arn: "arn:aws:batch:us-east-1:012345678910:job-queue/GPGPU"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_queue: "String", # required
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     scheduling_policy_arn: "String",
    #     priority: 1,
    #     compute_environment_order: [
    #       {
    #         order: 1, # required
    #         compute_environment: "String", # required
    #       }
    #     ],
    #     service_environment_order: [
    #       {
    #         order: 1, # required
    #         service_environment: "String", # required
    #       }
    #     ],
    #     job_state_time_limit_actions: [
    #       {
    #         reason: "String", # required
    #         state: "RUNNABLE" # One of: ["RUNNABLE"], # required
    #         max_time_seconds: 1, # required
    #         action: "CANCEL" # One of: ["CANCEL", "TERMINATE"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_job_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_queue_name: "String",
    #     job_queue_arn: "String"
    #   }
    # @return [Types::UpdateJobQueueResponse]
    def update_job_queue(params = {}, options = {})
      request = build_request(:update_job_queue, params)
      request.send_request(options)
    end

    # <p>Updates a scheduling policy.</p>
    # @param [Hash, Types::UpdateSchedulingPolicyRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the scheduling policy to update.</p>
    # @option params [Types::FairsharePolicy] :fairshare_policy
    #   <p>The fair-share policy scheduling details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "String", # required
    #     fairshare_policy: {
    #       share_decay_seconds: 1,
    #       compute_reservation: 1,
    #       share_distribution: [
    #         {
    #           share_identifier: "String", # required
    #           weight_factor: 1.0
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_scheduling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSchedulingPolicyResponse]
    def update_scheduling_policy(params = {}, options = {})
      request = build_request(:update_scheduling_policy, params)
      request.send_request(options)
    end

    # <p>Updates a service environment. You can update the state of a service environment from <code>ENABLED</code> to <code>DISABLED</code> to prevent new service jobs from being placed in the service environment.</p>
    # @param [Hash, Types::UpdateServiceEnvironmentRequest] params
    # @option params [String] :service_environment
    #   <p>The name or ARN of the service environment to update.</p>
    # @option params [String] :state
    #   <p>The state of the service environment. </p>
    # @option params [Array<Types::CapacityLimit>] :capacity_limits
    #   <p>The capacity limits for the service environment. This defines the maximum resources that can be used by service jobs in this environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_environment: "String", # required
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     capacity_limits: [
    #       {
    #         max_capacity: 1,
    #         capacity_unit: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_service_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_environment_name: "String", # required
    #     service_environment_arn: "String", # required
    #   }
    # @return [Types::UpdateServiceEnvironmentResponse]
    def update_service_environment(params = {}, options = {})
      request = build_request(:update_service_environment, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-batch'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
