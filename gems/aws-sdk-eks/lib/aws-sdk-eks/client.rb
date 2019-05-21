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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:eks)

module Aws::EKS
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
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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
    #   permissions for Amazon EKS to make calls to other AWS API operations
    #   on your behalf. For more information, see [Amazon EKS Service IAM
    #   Role][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
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
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Deletes the Amazon EKS cluster control plane.
    #
    # <note markdown="1"> If you have active services in your cluster that are associated with a
    # load balancer, you must delete those services before deleting the
    # cluster so that the load balancers are deleted properly. Otherwise,
    # you can have orphaned resources in your VPC that prevent you from
    # being able to delete the VPC. For more information, see [Deleting a
    # Cluster][1] in the *Amazon EKS User Guide*.
    #
    #  </note>
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
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
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
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # Returns descriptive information about an update against your Amazon
    # EKS cluster.
    #
    # When the status of the update is `Succeeded`, the update is complete.
    # If an update fails, the status is `Failed`, and an error detail
    # explains the reason for the failure.
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster to update.
    #
    # @option params [required, String] :update_id
    #   The ID of the update to describe.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown"
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

    # Lists the updates associated with an Amazon EKS cluster in your AWS
    # account, in the specified Region.
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster to list updates for.
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_updates({
    #     name: "String", # required
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
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown"
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
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown"
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
      context[:gem_version] = '1.19.0'
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
    # | waiter_name     | params              | :delay   | :max_attempts |
    # | --------------- | ------------------- | -------- | ------------- |
    # | cluster_active  | {#describe_cluster} | 30       | 40            |
    # | cluster_deleted | {#describe_cluster} | 30       | 40            |
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
        cluster_deleted: Waiters::ClusterDeleted
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
