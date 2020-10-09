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

Aws::Plugins::GlobalConfiguration.add_identifier(:eks)

module Aws::EKS
  # An API client for EKS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EKS::Client.new(
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

    @identifier = :eks

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

    # Creates an Amazon EKS control plane.
    #
    # The Amazon EKS control plane consists of control plane instances that
    # run the Kubernetes software, such as `etcd` and the API server. The
    # control plane runs in an account managed by AWS, and the Kubernetes
    # API is exposed via the Amazon EKS API server endpoint. Each Amazon EKS
    # cluster control plane is single-tenant and unique and runs on its own
    # set of Amazon EC2 instances.
    #
    # The cluster control plane is provisioned across multiple Availability
    # Zones and fronted by an Elastic Load Balancing Network Load Balancer.
    # Amazon EKS also provisions elastic network interfaces in your VPC
    # subnets to provide connectivity from the control plane instances to
    # the worker nodes (for example, to support `kubectl exec`, `logs`, and
    # `proxy` data flows).
    #
    # Amazon EKS worker nodes run in your AWS account and connect to your
    # cluster's control plane via the Kubernetes API server endpoint and a
    # certificate file that is created for your cluster.
    #
    # You can use the `endpointPublicAccess` and `endpointPrivateAccess`
    # parameters to enable or disable public and private access to your
    # cluster's Kubernetes API server endpoint. By default, public access
    # is enabled, and private access is disabled. For more information, see
    # [Amazon EKS Cluster Endpoint Access Control][1] in the <i> <i>Amazon
    # EKS User Guide</i> </i>.
    #
    # You can use the `logging` parameter to enable or disable exporting the
    # Kubernetes control plane logs for your cluster to CloudWatch Logs. By
    # default, cluster control plane logs aren't exported to CloudWatch
    # Logs. For more information, see [Amazon EKS Cluster Control Plane
    # Logs][2] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    # <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    # apply to exported control plane logs. For more information, see
    # [Amazon CloudWatch Pricing][3].
    #
    #  </note>
    #
    # Cluster creation typically takes between 10 and 15 minutes. After you
    # create an Amazon EKS cluster, you must configure your Kubernetes
    # tooling to communicate with the API server and launch worker nodes
    # into your cluster. For more information, see [Managing Cluster
    # Authentication][4] and [Launching Amazon EKS Worker Nodes][5] in the
    # *Amazon EKS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    # [2]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    # [3]: http://aws.amazon.com/cloudwatch/pricing/
    # [4]: https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html
    # [5]: https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html
    #
    # @option params [required, String] :name
    #   The unique name to give to your cluster.
    #
    # @option params [String] :version
    #   The desired Kubernetes version for your cluster. If you don't specify
    #   a value here, the latest version available in Amazon EKS is used.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the Kubernetes control plane to make calls to AWS API
    #   operations on your behalf. For more information, see [Amazon EKS
    #   Service IAM Role][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html
    #
    # @option params [required, Types::VpcConfigRequest] :resources_vpc_config
    #   The VPC configuration used by the cluster control plane. Amazon EKS
    #   VPC resources have specific requirements to work properly with
    #   Kubernetes. For more information, see [Cluster VPC Considerations][1]
    #   and [Cluster Security Group Considerations][2] in the *Amazon EKS User
    #   Guide*. You must specify at least two subnets. You can specify up to
    #   five security groups, but we recommend that you use a dedicated
    #   security group for your cluster control plane.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #
    # @option params [Types::KubernetesNetworkConfigRequest] :kubernetes_network_config
    #   The Kubernetes network configuration for the cluster.
    #
    # @option params [Types::Logging] :logging
    #   Enable or disable exporting the Kubernetes control plane logs for your
    #   cluster to CloudWatch Logs. By default, cluster control plane logs
    #   aren't exported to CloudWatch Logs. For more information, see [Amazon
    #   EKS Cluster Control Plane Logs][1] in the <i> <i>Amazon EKS User
    #   Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [Amazon CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The metadata to apply to the cluster to assist with categorization and
    #   organization. Each tag consists of a key and an optional value, both
    #   of which you define.
    #
    # @option params [Array<Types::EncryptionConfig>] :encryption_config
    #   The encryption configuration for the cluster.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To create a new cluster
    #
    #   # The following example creates an Amazon EKS cluster called prod.
    #
    #   resp = client.create_cluster({
    #     version: "1.10", 
    #     name: "prod", 
    #     client_request_token: "1d2129a1-3d38-460a-9756-e5b91fddb951", 
    #     resources_vpc_config: {
    #       security_group_ids: [
    #         "sg-6979fe18", 
    #       ], 
    #       subnet_ids: [
    #         "subnet-6782e71e", 
    #         "subnet-e7e761ac", 
    #       ], 
    #     }, 
    #     role_arn: "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     name: "ClusterName", # required
    #     version: "String",
    #     role_arn: "String", # required
    #     resources_vpc_config: { # required
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #       endpoint_public_access: false,
    #       endpoint_private_access: false,
    #       public_access_cidrs: ["String"],
    #     },
    #     kubernetes_network_config: {
    #       service_ipv_4_cidr: "String",
    #     },
    #     logging: {
    #       cluster_logging: [
    #         {
    #           types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #           enabled: false,
    #         },
    #       ],
    #     },
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     encryption_config: [
    #       {
    #         resources: ["String"],
    #         provider: {
    #           key_arn: "String",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.version #=> String
    #   resp.cluster.endpoint #=> String
    #   resp.cluster.role_arn #=> String
    #   resp.cluster.resources_vpc_config.subnet_ids #=> Array
    #   resp.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.security_group_ids #=> Array
    #   resp.cluster.resources_vpc_config.security_group_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.resources_vpc_config.public_access_cidrs #=> Array
    #   resp.cluster.resources_vpc_config.public_access_cidrs[0] #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_4_cidr #=> String
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.identity.oidc.issuer #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #   resp.cluster.tags #=> Hash
    #   resp.cluster.tags["TagKey"] #=> String
    #   resp.cluster.encryption_config #=> Array
    #   resp.cluster.encryption_config[0].resources #=> Array
    #   resp.cluster.encryption_config[0].resources[0] #=> String
    #   resp.cluster.encryption_config[0].provider.key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates an AWS Fargate profile for your Amazon EKS cluster. You must
    # have at least one Fargate profile in a cluster to be able to run pods
    # on Fargate.
    #
    # The Fargate profile allows an administrator to declare which pods run
    # on Fargate and specify which pods run on which Fargate profile. This
    # declaration is done through the profile’s selectors. Each profile can
    # have up to five selectors that contain a namespace and labels. A
    # namespace is required for every selector. The label field consists of
    # multiple optional key-value pairs. Pods that match the selectors are
    # scheduled on Fargate. If a to-be-scheduled pod matches any of the
    # selectors in the Fargate profile, then that pod is run on Fargate.
    #
    # When you create a Fargate profile, you must specify a pod execution
    # role to use with the pods that are scheduled with the profile. This
    # role is added to the cluster's Kubernetes [Role Based Access
    # Control][1] (RBAC) for authorization so that the `kubelet` that is
    # running on the Fargate infrastructure can register with your Amazon
    # EKS cluster so that it can appear in your cluster as a node. The pod
    # execution role also provides IAM permissions to the Fargate
    # infrastructure to allow read access to Amazon ECR image repositories.
    # For more information, see [Pod Execution Role][2] in the *Amazon EKS
    # User Guide*.
    #
    # Fargate profiles are immutable. However, you can create a new updated
    # profile to replace an existing profile and then delete the original
    # after the updated profile has finished creating.
    #
    # If any Fargate profiles in a cluster are in the `DELETING` status, you
    # must wait for that Fargate profile to finish deleting before you can
    # create any other profiles in that cluster.
    #
    # For more information, see [AWS Fargate Profile][3] in the *Amazon EKS
    # User Guide*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/admin/authorization/rbac/
    # [2]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    # [3]: https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html
    #
    # @option params [required, String] :fargate_profile_name
    #   The name of the Fargate profile.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster to apply the Fargate profile to.
    #
    # @option params [required, String] :pod_execution_role_arn
    #   The Amazon Resource Name (ARN) of the pod execution role to use for
    #   pods that match the selectors in the Fargate profile. The pod
    #   execution role allows Fargate infrastructure to register with your
    #   cluster as a node, and it provides read access to Amazon ECR image
    #   repositories. For more information, see [Pod Execution Role][1] in the
    #   *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    #
    # @option params [Array<String>] :subnets
    #   The IDs of subnets to launch your pods into. At this time, pods
    #   running on Fargate are not assigned public IP addresses, so only
    #   private subnets (with no direct route to an Internet Gateway) are
    #   accepted for this parameter.
    #
    # @option params [Array<Types::FargateProfileSelector>] :selectors
    #   The selectors to match for pods to use this Fargate profile. Each
    #   selector must have an associated namespace. Optionally, you can also
    #   specify labels for a namespace. You may specify up to five selectors
    #   in a Fargate profile.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The metadata to apply to the Fargate profile to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value, both of which you define. Fargate profile tags do not
    #   propagate to any other resources associated with the Fargate profile,
    #   such as the pods that are scheduled with it.
    #
    # @return [Types::CreateFargateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFargateProfileResponse#fargate_profile #fargate_profile} => Types::FargateProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fargate_profile({
    #     fargate_profile_name: "String", # required
    #     cluster_name: "String", # required
    #     pod_execution_role_arn: "String", # required
    #     subnets: ["String"],
    #     selectors: [
    #       {
    #         namespace: "String",
    #         labels: {
    #           "String" => "String",
    #         },
    #       },
    #     ],
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fargate_profile.fargate_profile_name #=> String
    #   resp.fargate_profile.fargate_profile_arn #=> String
    #   resp.fargate_profile.cluster_name #=> String
    #   resp.fargate_profile.created_at #=> Time
    #   resp.fargate_profile.pod_execution_role_arn #=> String
    #   resp.fargate_profile.subnets #=> Array
    #   resp.fargate_profile.subnets[0] #=> String
    #   resp.fargate_profile.selectors #=> Array
    #   resp.fargate_profile.selectors[0].namespace #=> String
    #   resp.fargate_profile.selectors[0].labels #=> Hash
    #   resp.fargate_profile.selectors[0].labels["String"] #=> String
    #   resp.fargate_profile.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.fargate_profile.tags #=> Hash
    #   resp.fargate_profile.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateFargateProfile AWS API Documentation
    #
    # @overload create_fargate_profile(params = {})
    # @param [Hash] params ({})
    def create_fargate_profile(params = {}, options = {})
      req = build_request(:create_fargate_profile, params)
      req.send_request(options)
    end

    # Creates a managed worker node group for an Amazon EKS cluster. You can
    # only create a node group for your cluster that is equal to the current
    # Kubernetes version for the cluster. All node groups are created with
    # the latest AMI release version for the respective minor Kubernetes
    # version of the cluster, unless you deploy a custom AMI using a launch
    # template. For more information about using launch templates, see
    # [Launch template support][1].
    #
    # An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group
    # and associated Amazon EC2 instances that are managed by AWS for an
    # Amazon EKS cluster. Each node group uses a version of the Amazon
    # EKS-optimized Amazon Linux 2 AMI. For more information, see [Managed
    # Node Groups][2] in the *Amazon EKS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    # [2]: https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster to create the node group in.
    #
    # @option params [required, String] :nodegroup_name
    #   The unique name to give your node group.
    #
    # @option params [Types::NodegroupScalingConfig] :scaling_config
    #   The scaling configuration details for the Auto Scaling group that is
    #   created for your node group.
    #
    # @option params [Integer] :disk_size
    #   The root device disk size (in GiB) for your node group instances. The
    #   default disk size is 20 GiB. If you specify `launchTemplate`, then
    #   don't specify `diskSize`, or the node group deployment will fail. For
    #   more information about using launch templates with Amazon EKS, see
    #   [Launch template support][1] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [required, Array<String>] :subnets
    #   The subnets to use for the Auto Scaling group that is created for your
    #   node group. These subnets must have the tag key
    #   `kubernetes.io/cluster/CLUSTER_NAME` with a value of `shared`, where
    #   `CLUSTER_NAME` is replaced with the name of your cluster. If you
    #   specify `launchTemplate`, then don't specify [ `SubnetId` ][1] in
    #   your launch template, or the node group deployment will fail. For more
    #   information about using launch templates with Amazon EKS, see [Launch
    #   template support][2] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [Array<String>] :instance_types
    #   The instance type to use for your node group. You can specify a single
    #   instance type for a node group. The default value for `instanceTypes`
    #   is `t3.medium`. If you choose a GPU instance type, be sure to specify
    #   `AL2_x86_64_GPU` with the `amiType` parameter. If you specify
    #   `launchTemplate`, then don't specify `instanceTypes`, or the node
    #   group deployment will fail. For more information about using launch
    #   templates with Amazon EKS, see [Launch template support][1] in the
    #   Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [String] :ami_type
    #   The AMI type for your node group. GPU instance types should use the
    #   `AL2_x86_64_GPU` AMI type. Non-GPU instances should use the
    #   `AL2_x86_64` AMI type. Arm instances should use the `AL2_ARM_64` AMI
    #   type. All types use the Amazon EKS-optimized Amazon Linux 2 AMI. If
    #   you specify `launchTemplate`, and your launch template uses a custom
    #   AMI, then don't specify `amiType`, or the node group deployment will
    #   fail. For more information about using launch templates with Amazon
    #   EKS, see [Launch template support][1] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [Types::RemoteAccessConfig] :remote_access
    #   The remote access (SSH) configuration to use with your node group. If
    #   you specify `launchTemplate`, then don't specify `remoteAccess`, or
    #   the node group deployment will fail. For more information about using
    #   launch templates with Amazon EKS, see [Launch template support][1] in
    #   the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [required, String] :node_role
    #   The Amazon Resource Name (ARN) of the IAM role to associate with your
    #   node group. The Amazon EKS worker node `kubelet` daemon makes calls to
    #   AWS APIs on your behalf. Worker nodes receive permissions for these
    #   API calls through an IAM instance profile and associated policies.
    #   Before you can launch worker nodes and register them into a cluster,
    #   you must create an IAM role for those worker nodes to use when they
    #   are launched. For more information, see [Amazon EKS Worker Node IAM
    #   Role][1] in the <i> <i>Amazon EKS User Guide</i> </i>. If you specify
    #   `launchTemplate`, then don't specify [ `IamInstanceProfile` ][2] in
    #   your launch template, or the node group deployment will fail. For more
    #   information about using launch templates with Amazon EKS, see [Launch
    #   template support][3] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html
    #   [3]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [Hash<String,String>] :labels
    #   The Kubernetes labels to be applied to the nodes in the node group
    #   when they are created.
    #
    # @option params [Hash<String,String>] :tags
    #   The metadata to apply to the node group to assist with categorization
    #   and organization. Each tag consists of a key and an optional value,
    #   both of which you define. Node group tags do not propagate to any
    #   other resources associated with the node group, such as the Amazon EC2
    #   instances or subnets.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   An object representing a node group's launch template specification.
    #   If specified, then do not specify `instanceTypes`, `diskSize`, or
    #   `remoteAccess` and make sure that the launch template meets the
    #   requirements in `launchTemplateSpecification`.
    #
    # @option params [String] :version
    #   The Kubernetes version to use for your managed nodes. By default, the
    #   Kubernetes version of the cluster is used, and this is the only
    #   accepted specified value. If you specify `launchTemplate`, and your
    #   launch template uses a custom AMI, then don't specify `version`, or
    #   the node group deployment will fail. For more information about using
    #   launch templates with Amazon EKS, see [Launch template support][1] in
    #   the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [String] :release_version
    #   The AMI version of the Amazon EKS-optimized AMI to use with your node
    #   group. By default, the latest available AMI version for the node
    #   group's current Kubernetes version is used. For more information, see
    #   [Amazon EKS-Optimized Linux AMI Versions][1] in the *Amazon EKS User
    #   Guide*. If you specify `launchTemplate`, and your launch template uses
    #   a custom AMI, then don't specify `releaseVersion`, or the node group
    #   deployment will fail. For more information about using launch
    #   templates with Amazon EKS, see [Launch template support][2] in the
    #   Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @return [Types::CreateNodegroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNodegroupResponse#nodegroup #nodegroup} => Types::Nodegroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_nodegroup({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #     scaling_config: {
    #       min_size: 1,
    #       max_size: 1,
    #       desired_size: 1,
    #     },
    #     disk_size: 1,
    #     subnets: ["String"], # required
    #     instance_types: ["String"],
    #     ami_type: "AL2_x86_64", # accepts AL2_x86_64, AL2_x86_64_GPU, AL2_ARM_64
    #     remote_access: {
    #       ec2_ssh_key: "String",
    #       source_security_groups: ["String"],
    #     },
    #     node_role: "String", # required
    #     labels: {
    #       "labelKey" => "labelValue",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_request_token: "String",
    #     launch_template: {
    #       name: "String",
    #       version: "String",
    #       id: "String",
    #     },
    #     version: "String",
    #     release_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.nodegroup.nodegroup_name #=> String
    #   resp.nodegroup.nodegroup_arn #=> String
    #   resp.nodegroup.cluster_name #=> String
    #   resp.nodegroup.version #=> String
    #   resp.nodegroup.release_version #=> String
    #   resp.nodegroup.created_at #=> Time
    #   resp.nodegroup.modified_at #=> Time
    #   resp.nodegroup.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"
    #   resp.nodegroup.scaling_config.min_size #=> Integer
    #   resp.nodegroup.scaling_config.max_size #=> Integer
    #   resp.nodegroup.scaling_config.desired_size #=> Integer
    #   resp.nodegroup.instance_types #=> Array
    #   resp.nodegroup.instance_types[0] #=> String
    #   resp.nodegroup.subnets #=> Array
    #   resp.nodegroup.subnets[0] #=> String
    #   resp.nodegroup.remote_access.ec2_ssh_key #=> String
    #   resp.nodegroup.remote_access.source_security_groups #=> Array
    #   resp.nodegroup.remote_access.source_security_groups[0] #=> String
    #   resp.nodegroup.ami_type #=> String, one of "AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64"
    #   resp.nodegroup.node_role #=> String
    #   resp.nodegroup.labels #=> Hash
    #   resp.nodegroup.labels["labelKey"] #=> String
    #   resp.nodegroup.resources.auto_scaling_groups #=> Array
    #   resp.nodegroup.resources.auto_scaling_groups[0].name #=> String
    #   resp.nodegroup.resources.remote_access_security_group #=> String
    #   resp.nodegroup.disk_size #=> Integer
    #   resp.nodegroup.health.issues #=> Array
    #   resp.nodegroup.health.issues[0].code #=> String, one of "AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable"
    #   resp.nodegroup.health.issues[0].message #=> String
    #   resp.nodegroup.health.issues[0].resource_ids #=> Array
    #   resp.nodegroup.health.issues[0].resource_ids[0] #=> String
    #   resp.nodegroup.launch_template.name #=> String
    #   resp.nodegroup.launch_template.version #=> String
    #   resp.nodegroup.launch_template.id #=> String
    #   resp.nodegroup.tags #=> Hash
    #   resp.nodegroup.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateNodegroup AWS API Documentation
    #
    # @overload create_nodegroup(params = {})
    # @param [Hash] params ({})
    def create_nodegroup(params = {}, options = {})
      req = build_request(:create_nodegroup, params)
      req.send_request(options)
    end

    # Deletes the Amazon EKS cluster control plane.
    #
    # If you have active services in your cluster that are associated with a
    # load balancer, you must delete those services before deleting the
    # cluster so that the load balancers are deleted properly. Otherwise,
    # you can have orphaned resources in your VPC that prevent you from
    # being able to delete the VPC. For more information, see [Deleting a
    # Cluster][1] in the *Amazon EKS User Guide*.
    #
    # If you have managed node groups or Fargate profiles attached to the
    # cluster, you must delete them first. For more information, see
    # DeleteNodegroup and DeleteFargateProfile.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html
    #
    # @option params [required, String] :name
    #   The name of the cluster to delete.
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To delete a cluster
    #
    #   # This example command deletes a cluster named `devel` in your default region.
    #
    #   resp = client.delete_cluster({
    #     name: "devel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.version #=> String
    #   resp.cluster.endpoint #=> String
    #   resp.cluster.role_arn #=> String
    #   resp.cluster.resources_vpc_config.subnet_ids #=> Array
    #   resp.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.security_group_ids #=> Array
    #   resp.cluster.resources_vpc_config.security_group_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.resources_vpc_config.public_access_cidrs #=> Array
    #   resp.cluster.resources_vpc_config.public_access_cidrs[0] #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_4_cidr #=> String
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.identity.oidc.issuer #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #   resp.cluster.tags #=> Hash
    #   resp.cluster.tags["TagKey"] #=> String
    #   resp.cluster.encryption_config #=> Array
    #   resp.cluster.encryption_config[0].resources #=> Array
    #   resp.cluster.encryption_config[0].resources[0] #=> String
    #   resp.cluster.encryption_config[0].provider.key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes an AWS Fargate profile.
    #
    # When you delete a Fargate profile, any pods running on Fargate that
    # were created with the profile are deleted. If those pods match another
    # Fargate profile, then they are scheduled on Fargate with that profile.
    # If they no longer match any Fargate profiles, then they are not
    # scheduled on Fargate and they may remain in a pending state.
    #
    # Only one Fargate profile in a cluster can be in the `DELETING` status
    # at a time. You must wait for a Fargate profile to finish deleting
    # before you can delete any other profiles in that cluster.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster associated with the Fargate profile
    #   to delete.
    #
    # @option params [required, String] :fargate_profile_name
    #   The name of the Fargate profile to delete.
    #
    # @return [Types::DeleteFargateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFargateProfileResponse#fargate_profile #fargate_profile} => Types::FargateProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fargate_profile({
    #     cluster_name: "String", # required
    #     fargate_profile_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fargate_profile.fargate_profile_name #=> String
    #   resp.fargate_profile.fargate_profile_arn #=> String
    #   resp.fargate_profile.cluster_name #=> String
    #   resp.fargate_profile.created_at #=> Time
    #   resp.fargate_profile.pod_execution_role_arn #=> String
    #   resp.fargate_profile.subnets #=> Array
    #   resp.fargate_profile.subnets[0] #=> String
    #   resp.fargate_profile.selectors #=> Array
    #   resp.fargate_profile.selectors[0].namespace #=> String
    #   resp.fargate_profile.selectors[0].labels #=> Hash
    #   resp.fargate_profile.selectors[0].labels["String"] #=> String
    #   resp.fargate_profile.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.fargate_profile.tags #=> Hash
    #   resp.fargate_profile.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteFargateProfile AWS API Documentation
    #
    # @overload delete_fargate_profile(params = {})
    # @param [Hash] params ({})
    def delete_fargate_profile(params = {}, options = {})
      req = build_request(:delete_fargate_profile, params)
      req.send_request(options)
    end

    # Deletes an Amazon EKS node group for a cluster.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster that is associated with your node
    #   group.
    #
    # @option params [required, String] :nodegroup_name
    #   The name of the node group to delete.
    #
    # @return [Types::DeleteNodegroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNodegroupResponse#nodegroup #nodegroup} => Types::Nodegroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_nodegroup({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.nodegroup.nodegroup_name #=> String
    #   resp.nodegroup.nodegroup_arn #=> String
    #   resp.nodegroup.cluster_name #=> String
    #   resp.nodegroup.version #=> String
    #   resp.nodegroup.release_version #=> String
    #   resp.nodegroup.created_at #=> Time
    #   resp.nodegroup.modified_at #=> Time
    #   resp.nodegroup.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"
    #   resp.nodegroup.scaling_config.min_size #=> Integer
    #   resp.nodegroup.scaling_config.max_size #=> Integer
    #   resp.nodegroup.scaling_config.desired_size #=> Integer
    #   resp.nodegroup.instance_types #=> Array
    #   resp.nodegroup.instance_types[0] #=> String
    #   resp.nodegroup.subnets #=> Array
    #   resp.nodegroup.subnets[0] #=> String
    #   resp.nodegroup.remote_access.ec2_ssh_key #=> String
    #   resp.nodegroup.remote_access.source_security_groups #=> Array
    #   resp.nodegroup.remote_access.source_security_groups[0] #=> String
    #   resp.nodegroup.ami_type #=> String, one of "AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64"
    #   resp.nodegroup.node_role #=> String
    #   resp.nodegroup.labels #=> Hash
    #   resp.nodegroup.labels["labelKey"] #=> String
    #   resp.nodegroup.resources.auto_scaling_groups #=> Array
    #   resp.nodegroup.resources.auto_scaling_groups[0].name #=> String
    #   resp.nodegroup.resources.remote_access_security_group #=> String
    #   resp.nodegroup.disk_size #=> Integer
    #   resp.nodegroup.health.issues #=> Array
    #   resp.nodegroup.health.issues[0].code #=> String, one of "AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable"
    #   resp.nodegroup.health.issues[0].message #=> String
    #   resp.nodegroup.health.issues[0].resource_ids #=> Array
    #   resp.nodegroup.health.issues[0].resource_ids[0] #=> String
    #   resp.nodegroup.launch_template.name #=> String
    #   resp.nodegroup.launch_template.version #=> String
    #   resp.nodegroup.launch_template.id #=> String
    #   resp.nodegroup.tags #=> Hash
    #   resp.nodegroup.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteNodegroup AWS API Documentation
    #
    # @overload delete_nodegroup(params = {})
    # @param [Hash] params ({})
    def delete_nodegroup(params = {}, options = {})
      req = build_request(:delete_nodegroup, params)
      req.send_request(options)
    end

    # Returns descriptive information about an Amazon EKS cluster.
    #
    # The API server endpoint and certificate authority data returned by
    # this operation are required for `kubelet` and `kubectl` to communicate
    # with your Kubernetes API server. For more information, see [Create a
    # kubeconfig for Amazon EKS][1].
    #
    # <note markdown="1"> The API server endpoint and certificate authority data aren't
    # available until the cluster reaches the `ACTIVE` state.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html
    #
    # @option params [required, String] :name
    #   The name of the cluster to describe.
    #
    # @return [Types::DescribeClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To describe a cluster
    #
    #   # This example command provides a description of the specified cluster in your default region.
    #
    #   resp = client.describe_cluster({
    #     name: "devel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       version: "1.10", 
    #       name: "devel", 
    #       arn: "arn:aws:eks:us-west-2:012345678910:cluster/devel", 
    #       certificate_authority: {
    #         data: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUN5RENDQWJDZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRFNE1EVXpNVEl6TVRFek1Wb1hEVEk0TURVeU9ESXpNVEV6TVZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTTZWCjVUaG4rdFcySm9Xa2hQMzRlVUZMNitaRXJOZGIvWVdrTmtDdWNGS2RaaXl2TjlMVmdvUmV2MjlFVFZlN1ZGbSsKUTJ3ZURyRXJiQyt0dVlibkFuN1ZLYmE3ay9hb1BHekZMdmVnb0t6b0M1N2NUdGVwZzRIazRlK2tIWHNaME10MApyb3NzcjhFM1ROeExETnNJTThGL1cwdjhsTGNCbWRPcjQyV2VuTjFHZXJnaDNSZ2wzR3JIazBnNTU0SjFWenJZCm9hTi8zODFUczlOTFF2QTBXb0xIcjBFRlZpTFdSZEoyZ3lXaC9ybDVyOFNDOHZaQXg1YW1BU0hVd01aTFpWRC8KTDBpOW4wRVM0MkpVdzQyQmxHOEdpd3NhTkJWV3lUTHZKclNhRXlDSHFtVVZaUTFDZkFXUjl0L3JleVVOVXM3TApWV1FqM3BFbk9RMitMSWJrc0RzQ0F3RUFBYU1qTUNFd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQkFNZ3RsQ1dIQ2U2YzVHMXl2YlFTS0Q4K2hUalkKSm1NSG56L2EvRGt0WG9YUjFVQzIrZUgzT1BZWmVjRVZZZHVaSlZCckNNQ2VWR0ZkeWdBYlNLc1FxWDg0S2RXbAp1MU5QaERDSmEyRHliN2pVMUV6VThTQjFGZUZ5ZFE3a0hNS1E1blpBRVFQOTY4S01hSGUrSm0yQ2x1UFJWbEJVCjF4WlhTS1gzTVZ0K1Q0SU1EV2d6c3JRSjVuQkRjdEtLcUZtM3pKdVVubHo5ZEpVckdscEltMjVJWXJDckxYUFgKWkUwRUtRNWEzMHhkVWNrTHRGQkQrOEtBdFdqSS9yZUZPNzM1YnBMdVoyOTBaNm42QlF3elRrS0p4cnhVc3QvOAppNGsxcnlsaUdWMm5SSjBUYjNORkczNHgrYWdzYTRoSTFPbU90TFM0TmgvRXJxT3lIUXNDc2hEQUtKUT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=", 
    #       }, 
    #       created_at: Time.parse(1527807879.988), 
    #       endpoint: "https://A0DCCD80A04F01705DD065655C30CC3D.yl4.us-west-2.eks.amazonaws.com", 
    #       resources_vpc_config: {
    #         security_group_ids: [
    #           "sg-6979fe18", 
    #         ], 
    #         subnet_ids: [
    #           "subnet-6782e71e", 
    #           "subnet-e7e761ac", 
    #         ], 
    #         vpc_id: "vpc-950809ec", 
    #       }, 
    #       role_arn: "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI", 
    #       status: "ACTIVE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.version #=> String
    #   resp.cluster.endpoint #=> String
    #   resp.cluster.role_arn #=> String
    #   resp.cluster.resources_vpc_config.subnet_ids #=> Array
    #   resp.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.security_group_ids #=> Array
    #   resp.cluster.resources_vpc_config.security_group_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.resources_vpc_config.public_access_cidrs #=> Array
    #   resp.cluster.resources_vpc_config.public_access_cidrs[0] #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_4_cidr #=> String
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.identity.oidc.issuer #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #   resp.cluster.tags #=> Hash
    #   resp.cluster.tags["TagKey"] #=> String
    #   resp.cluster.encryption_config #=> Array
    #   resp.cluster.encryption_config[0].resources #=> Array
    #   resp.cluster.encryption_config[0].resources[0] #=> String
    #   resp.cluster.encryption_config[0].provider.key_arn #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * cluster_active
    #   * cluster_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # Returns descriptive information about an AWS Fargate profile.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster associated with the Fargate
    #   profile.
    #
    # @option params [required, String] :fargate_profile_name
    #   The name of the Fargate profile to describe.
    #
    # @return [Types::DescribeFargateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFargateProfileResponse#fargate_profile #fargate_profile} => Types::FargateProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fargate_profile({
    #     cluster_name: "String", # required
    #     fargate_profile_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fargate_profile.fargate_profile_name #=> String
    #   resp.fargate_profile.fargate_profile_arn #=> String
    #   resp.fargate_profile.cluster_name #=> String
    #   resp.fargate_profile.created_at #=> Time
    #   resp.fargate_profile.pod_execution_role_arn #=> String
    #   resp.fargate_profile.subnets #=> Array
    #   resp.fargate_profile.subnets[0] #=> String
    #   resp.fargate_profile.selectors #=> Array
    #   resp.fargate_profile.selectors[0].namespace #=> String
    #   resp.fargate_profile.selectors[0].labels #=> Hash
    #   resp.fargate_profile.selectors[0].labels["String"] #=> String
    #   resp.fargate_profile.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.fargate_profile.tags #=> Hash
    #   resp.fargate_profile.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeFargateProfile AWS API Documentation
    #
    # @overload describe_fargate_profile(params = {})
    # @param [Hash] params ({})
    def describe_fargate_profile(params = {}, options = {})
      req = build_request(:describe_fargate_profile, params)
      req.send_request(options)
    end

    # Returns descriptive information about an Amazon EKS node group.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster associated with the node group.
    #
    # @option params [required, String] :nodegroup_name
    #   The name of the node group to describe.
    #
    # @return [Types::DescribeNodegroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNodegroupResponse#nodegroup #nodegroup} => Types::Nodegroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_nodegroup({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.nodegroup.nodegroup_name #=> String
    #   resp.nodegroup.nodegroup_arn #=> String
    #   resp.nodegroup.cluster_name #=> String
    #   resp.nodegroup.version #=> String
    #   resp.nodegroup.release_version #=> String
    #   resp.nodegroup.created_at #=> Time
    #   resp.nodegroup.modified_at #=> Time
    #   resp.nodegroup.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"
    #   resp.nodegroup.scaling_config.min_size #=> Integer
    #   resp.nodegroup.scaling_config.max_size #=> Integer
    #   resp.nodegroup.scaling_config.desired_size #=> Integer
    #   resp.nodegroup.instance_types #=> Array
    #   resp.nodegroup.instance_types[0] #=> String
    #   resp.nodegroup.subnets #=> Array
    #   resp.nodegroup.subnets[0] #=> String
    #   resp.nodegroup.remote_access.ec2_ssh_key #=> String
    #   resp.nodegroup.remote_access.source_security_groups #=> Array
    #   resp.nodegroup.remote_access.source_security_groups[0] #=> String
    #   resp.nodegroup.ami_type #=> String, one of "AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64"
    #   resp.nodegroup.node_role #=> String
    #   resp.nodegroup.labels #=> Hash
    #   resp.nodegroup.labels["labelKey"] #=> String
    #   resp.nodegroup.resources.auto_scaling_groups #=> Array
    #   resp.nodegroup.resources.auto_scaling_groups[0].name #=> String
    #   resp.nodegroup.resources.remote_access_security_group #=> String
    #   resp.nodegroup.disk_size #=> Integer
    #   resp.nodegroup.health.issues #=> Array
    #   resp.nodegroup.health.issues[0].code #=> String, one of "AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable"
    #   resp.nodegroup.health.issues[0].message #=> String
    #   resp.nodegroup.health.issues[0].resource_ids #=> Array
    #   resp.nodegroup.health.issues[0].resource_ids[0] #=> String
    #   resp.nodegroup.launch_template.name #=> String
    #   resp.nodegroup.launch_template.version #=> String
    #   resp.nodegroup.launch_template.id #=> String
    #   resp.nodegroup.tags #=> Hash
    #   resp.nodegroup.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * nodegroup_active
    #   * nodegroup_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeNodegroup AWS API Documentation
    #
    # @overload describe_nodegroup(params = {})
    # @param [Hash] params ({})
    def describe_nodegroup(params = {}, options = {})
      req = build_request(:describe_nodegroup, params)
      req.send_request(options)
    end

    # Returns descriptive information about an update against your Amazon
    # EKS cluster or associated managed node group.
    #
    # When the status of the update is `Succeeded`, the update is complete.
    # If an update fails, the status is `Failed`, and an error detail
    # explains the reason for the failure.
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster associated with the update.
    #
    # @option params [required, String] :update_id
    #   The ID of the update to describe.
    #
    # @option params [String] :nodegroup_name
    #   The name of the Amazon EKS node group associated with the update.
    #
    # @return [Types::DescribeUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUpdateResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_update({
    #     name: "String", # required
    #     update_id: "String", # required
    #     nodegroup_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeUpdate AWS API Documentation
    #
    # @overload describe_update(params = {})
    # @param [Hash] params ({})
    def describe_update(params = {}, options = {})
      req = build_request(:describe_update, params)
      req.send_request(options)
    end

    # Lists the Amazon EKS clusters in your AWS account in the specified
    # Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of cluster results returned by `ListClusters` in
    #   paginated output. When you use this parameter, `ListClusters` returns
    #   only `maxResults` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListClusters` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If you don't
    #   use this parameter, `ListClusters` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListClusters` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResponse#clusters #clusters} => Array&lt;String&gt;
    #   * {Types::ListClustersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list your available clusters
    #
    #   # This example command lists all of your available clusters in your default region.
    #
    #   resp = client.list_clusters({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     clusters: [
    #       "devel", 
    #       "prod", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Lists the AWS Fargate profiles associated with the specified cluster
    # in your AWS account in the specified Region.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster that you would like to listFargate
    #   profiles in.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Fargate profile results returned by
    #   `ListFargateProfiles` in paginated output. When you use this
    #   parameter, `ListFargateProfiles` returns only `maxResults` results in
    #   a single page along with a `nextToken` response element. You can see
    #   the remaining results of the initial request by sending another
    #   `ListFargateProfiles` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If you don't use this parameter,
    #   `ListFargateProfiles` returns up to 100 results and a `nextToken`
    #   value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListFargateProfiles` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    # @return [Types::ListFargateProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFargateProfilesResponse#fargate_profile_names #fargate_profile_names} => Array&lt;String&gt;
    #   * {Types::ListFargateProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fargate_profiles({
    #     cluster_name: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.fargate_profile_names #=> Array
    #   resp.fargate_profile_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListFargateProfiles AWS API Documentation
    #
    # @overload list_fargate_profiles(params = {})
    # @param [Hash] params ({})
    def list_fargate_profiles(params = {}, options = {})
      req = build_request(:list_fargate_profiles, params)
      req.send_request(options)
    end

    # Lists the Amazon EKS managed node groups associated with the specified
    # cluster in your AWS account in the specified Region. Self-managed node
    # groups are not listed.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster that you would like to list node
    #   groups in.
    #
    # @option params [Integer] :max_results
    #   The maximum number of node group results returned by `ListNodegroups`
    #   in paginated output. When you use this parameter, `ListNodegroups`
    #   returns only `maxResults` results in a single page along with a
    #   `nextToken` response element. You can see the remaining results of the
    #   initial request by sending another `ListNodegroups` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   you don't use this parameter, `ListNodegroups` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListNodegroups` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    # @return [Types::ListNodegroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNodegroupsResponse#nodegroups #nodegroups} => Array&lt;String&gt;
    #   * {Types::ListNodegroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodegroups({
    #     cluster_name: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.nodegroups #=> Array
    #   resp.nodegroups[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListNodegroups AWS API Documentation
    #
    # @overload list_nodegroups(params = {})
    # @param [Hash] params ({})
    def list_nodegroups(params = {}, options = {})
      req = build_request(:list_nodegroups, params)
      req.send_request(options)
    end

    # List the tags for an Amazon EKS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the supported resources are Amazon EKS
    #   clusters and managed node groups.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: To list tags for a cluster
    #
    #   # This example lists all of the tags for the `beta` cluster.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:eks:us-west-2:012345678910:cluster/beta", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "aws:tag:domain" => "beta", 
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the updates associated with an Amazon EKS cluster or managed
    # node group in your AWS account, in the specified Region.
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster to list updates for.
    #
    # @option params [String] :nodegroup_name
    #   The name of the Amazon EKS managed node group to list updates for.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated `ListUpdates`
    #   request where `maxResults` was used and the results exceeded the value
    #   of that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of update results returned by `ListUpdates` in
    #   paginated output. When you use this parameter, `ListUpdates` returns
    #   only `maxResults` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListUpdates` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If you don't
    #   use this parameter, `ListUpdates` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #
    # @return [Types::ListUpdatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUpdatesResponse#update_ids #update_ids} => Array&lt;String&gt;
    #   * {Types::ListUpdatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_updates({
    #     name: "String", # required
    #     nodegroup_name: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.update_ids #=> Array
    #   resp.update_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListUpdates AWS API Documentation
    #
    # @overload list_updates(params = {})
    # @param [Hash] params ({})
    def list_updates(params = {}, options = {})
      req = build_request(:list_updates, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # `resourceArn`. If existing tags on a resource are not specified in the
    # request parameters, they are not changed. When a resource is deleted,
    # the tags associated with that resource are deleted as well. Tags that
    # you create for Amazon EKS resources do not propagate to any other
    # resources associated with the cluster. For example, if you tag a
    # cluster with this operation, that tag does not automatically propagate
    # to the subnets and worker nodes associated with the cluster.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #   Currently, the supported resources are Amazon EKS clusters and managed
    #   node groups.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource. A tag is an array of key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to delete
    #   tags. Currently, the supported resources are Amazon EKS clusters and
    #   managed node groups.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an Amazon EKS cluster configuration. Your cluster continues to
    # function during the update. The response output includes an update ID
    # that you can use to track the status of your cluster update with the
    # DescribeUpdate API operation.
    #
    # You can use this API operation to enable or disable exporting the
    # Kubernetes control plane logs for your cluster to CloudWatch Logs. By
    # default, cluster control plane logs aren't exported to CloudWatch
    # Logs. For more information, see [Amazon EKS Cluster Control Plane
    # Logs][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    # <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    # apply to exported control plane logs. For more information, see
    # [Amazon CloudWatch Pricing][2].
    #
    #  </note>
    #
    # You can also use this API operation to enable or disable public and
    # private access to your cluster's Kubernetes API server endpoint. By
    # default, public access is enabled, and private access is disabled. For
    # more information, see [Amazon EKS Cluster Endpoint Access Control][3]
    # in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    # At this time, you can not update the subnets or security group IDs for
    # an existing cluster.
    #
    # Cluster updates are asynchronous, and they should finish within a few
    # minutes. During an update, the cluster status moves to `UPDATING`
    # (this status transition is eventually consistent). When the update is
    # complete (either `Failed` or `Successful`), the cluster status moves
    # to `Active`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    # [2]: http://aws.amazon.com/cloudwatch/pricing/
    # [3]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster to update.
    #
    # @option params [Types::VpcConfigRequest] :resources_vpc_config
    #   An object representing the VPC configuration to use for an Amazon EKS
    #   cluster.
    #
    # @option params [Types::Logging] :logging
    #   Enable or disable exporting the Kubernetes control plane logs for your
    #   cluster to CloudWatch Logs. By default, cluster control plane logs
    #   aren't exported to CloudWatch Logs. For more information, see [Amazon
    #   EKS Cluster Control Plane Logs][1] in the <i> <i>Amazon EKS User
    #   Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [Amazon CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateClusterConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterConfigResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_config({
    #     name: "String", # required
    #     resources_vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #       endpoint_public_access: false,
    #       endpoint_private_access: false,
    #       public_access_cidrs: ["String"],
    #     },
    #     logging: {
    #       cluster_logging: [
    #         {
    #           types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #           enabled: false,
    #         },
    #       ],
    #     },
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterConfig AWS API Documentation
    #
    # @overload update_cluster_config(params = {})
    # @param [Hash] params ({})
    def update_cluster_config(params = {}, options = {})
      req = build_request(:update_cluster_config, params)
      req.send_request(options)
    end

    # Updates an Amazon EKS cluster to the specified Kubernetes version.
    # Your cluster continues to function during the update. The response
    # output includes an update ID that you can use to track the status of
    # your cluster update with the DescribeUpdate API operation.
    #
    # Cluster updates are asynchronous, and they should finish within a few
    # minutes. During an update, the cluster status moves to `UPDATING`
    # (this status transition is eventually consistent). When the update is
    # complete (either `Failed` or `Successful`), the cluster status moves
    # to `Active`.
    #
    # If your cluster has managed node groups attached to it, all of your
    # node groups’ Kubernetes versions must match the cluster’s Kubernetes
    # version in order to update the cluster to a new Kubernetes version.
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster to update.
    #
    # @option params [required, String] :version
    #   The desired Kubernetes version following a successful update.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateClusterVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterVersionResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_version({
    #     name: "String", # required
    #     version: "String", # required
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterVersion AWS API Documentation
    #
    # @overload update_cluster_version(params = {})
    # @param [Hash] params ({})
    def update_cluster_version(params = {}, options = {})
      req = build_request(:update_cluster_version, params)
      req.send_request(options)
    end

    # Updates an Amazon EKS managed node group configuration. Your node
    # group continues to function during the update. The response output
    # includes an update ID that you can use to track the status of your
    # node group update with the DescribeUpdate API operation. Currently you
    # can update the Kubernetes labels for a node group or the scaling
    # configuration.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster that the managed node group resides
    #   in.
    #
    # @option params [required, String] :nodegroup_name
    #   The name of the managed node group to update.
    #
    # @option params [Types::UpdateLabelsPayload] :labels
    #   The Kubernetes labels to be applied to the nodes in the node group
    #   after the update.
    #
    # @option params [Types::NodegroupScalingConfig] :scaling_config
    #   The scaling configuration details for the Auto Scaling group after the
    #   update.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateNodegroupConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNodegroupConfigResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_nodegroup_config({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #     labels: {
    #       add_or_update_labels: {
    #         "labelKey" => "labelValue",
    #       },
    #       remove_labels: ["String"],
    #     },
    #     scaling_config: {
    #       min_size: 1,
    #       max_size: 1,
    #       desired_size: 1,
    #     },
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupConfig AWS API Documentation
    #
    # @overload update_nodegroup_config(params = {})
    # @param [Hash] params ({})
    def update_nodegroup_config(params = {}, options = {})
      req = build_request(:update_nodegroup_config, params)
      req.send_request(options)
    end

    # Updates the Kubernetes version or AMI version of an Amazon EKS managed
    # node group.
    #
    # You can update a node group using a launch template only if the node
    # group was originally deployed with a launch template. If you need to
    # update a custom AMI in a node group that was deployed with a launch
    # template, then update your custom AMI, specify the new ID in a new
    # version of the launch template, and then update the node group to the
    # new version of the launch template.
    #
    # If you update without a launch template, then you can update to the
    # latest available AMI version of a node group's current Kubernetes
    # version by not specifying a Kubernetes version in the request. You can
    # update to the latest AMI version of your cluster's current Kubernetes
    # version by specifying your cluster's Kubernetes version in the
    # request. For more information, see [Amazon EKS-Optimized Linux AMI
    # Versions][1] in the *Amazon EKS User Guide*.
    #
    # You cannot roll back a node group to an earlier Kubernetes version or
    # AMI version.
    #
    # When a node in a managed node group is terminated due to a scaling
    # action or update, the pods in that node are drained first. Amazon EKS
    # attempts to drain the nodes gracefully and will fail if it is unable
    # to do so. You can `force` the update if Amazon EKS is unable to drain
    # the nodes as a result of a pod disruption budget issue.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster that is associated with the managed
    #   node group to update.
    #
    # @option params [required, String] :nodegroup_name
    #   The name of the managed node group to update.
    #
    # @option params [String] :version
    #   The Kubernetes version to update to. If no version is specified, then
    #   the Kubernetes version of the node group does not change. You can
    #   specify the Kubernetes version of the cluster to update the node group
    #   to the latest AMI version of the cluster's Kubernetes version. If you
    #   specify `launchTemplate`, and your launch template uses a custom AMI,
    #   then don't specify `version`, or the node group update will fail. For
    #   more information about using launch templates with Amazon EKS, see
    #   [Launch template support][1] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [String] :release_version
    #   The AMI version of the Amazon EKS-optimized AMI to use for the update.
    #   By default, the latest available AMI version for the node group's
    #   Kubernetes version is used. For more information, see [Amazon
    #   EKS-Optimized Linux AMI Versions ][1] in the *Amazon EKS User Guide*.
    #   If you specify `launchTemplate`, and your launch template uses a
    #   custom AMI, then don't specify `releaseVersion`, or the node group
    #   update will fail. For more information about using launch templates
    #   with Amazon EKS, see [Launch template support][2] in the Amazon EKS
    #   User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   An object representing a node group's launch template specification.
    #   You can only update a node group using a launch template if the node
    #   group was originally deployed with a launch template.
    #
    # @option params [Boolean] :force
    #   Force the update if the existing node group's pods are unable to be
    #   drained due to a pod disruption budget issue. If an update fails
    #   because pods could not be drained, you can force the update after it
    #   fails to terminate the old node whether or not any pods are running on
    #   the node.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateNodegroupVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNodegroupVersionResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_nodegroup_version({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #     version: "String",
    #     release_version: "String",
    #     launch_template: {
    #       name: "String",
    #       version: "String",
    #       id: "String",
    #     },
    #     force: false,
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupVersion AWS API Documentation
    #
    # @overload update_nodegroup_version(params = {})
    # @param [Hash] params ({})
    def update_nodegroup_version(params = {}, options = {})
      req = build_request(:update_nodegroup_version, params)
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
      context[:gem_name] = 'aws-sdk-eks'
      context[:gem_version] = '1.45.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name       | params                      | :delay   | :max_attempts |
    # | ----------------- | --------------------------- | -------- | ------------- |
    # | cluster_active    | {Client#describe_cluster}   | 30       | 40            |
    # | cluster_deleted   | {Client#describe_cluster}   | 30       | 40            |
    # | nodegroup_active  | {Client#describe_nodegroup} | 30       | 80            |
    # | nodegroup_deleted | {Client#describe_nodegroup} | 30       | 40            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        cluster_active: Waiters::ClusterActive,
        cluster_deleted: Waiters::ClusterDeleted,
        nodegroup_active: Waiters::NodegroupActive,
        nodegroup_deleted: Waiters::NodegroupDeleted
      }
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
