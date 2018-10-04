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

    # Creates an Amazon EKS control plane.
    #
    # The Amazon EKS control plane consists of control plane instances that
    # run the Kubernetes software, like `etcd` and the API server. The
    # control plane runs in an account managed by AWS, and the Kubernetes
    # API is exposed via the Amazon EKS API server endpoint.
    #
    # Amazon EKS worker nodes run in your AWS account and connect to your
    # cluster's control plane via the Kubernetes API server endpoint and a
    # certificate file that is created for your cluster.
    #
    # The cluster control plane is provisioned across multiple Availability
    # Zones and fronted by an Elastic Load Balancing Network Load Balancer.
    # Amazon EKS also provisions elastic network interfaces in your VPC
    # subnets to provide connectivity from the control plane instances to
    # the worker nodes (for example, to support `kubectl exec`, `logs`, and
    # `proxy` data flows).
    #
    # After you create an Amazon EKS cluster, you must configure your
    # Kubernetes tooling to communicate with the API server and launch
    # worker nodes into your cluster. For more information, see [Managing
    # Cluster Authentication][1] and [Launching Amazon EKS Worker
    # Nodes][2]in the *Amazon EKS User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html
    # [2]: http://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html
    #
    # @option params [required, String] :name
    #   The unique name to give to your cluster.
    #
    # @option params [String] :version
    #   The desired Kubernetes version for your cluster. If you do not specify
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
    #   [1]: http://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html
    #
    # @option params [required, Types::VpcConfigRequest] :resources_vpc_config
    #   The VPC subnets and security groups used by the cluster control plane.
    #   Amazon EKS VPC resources have specific requirements to work properly
    #   with Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*. You must specify at least two subnets.
    #   You may specify up to 5 security groups, but we recommend that you use
    #   a dedicated security group for your cluster control plane.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: http://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier you provide to ensure the
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
    #       subnet_ids: ["String"], # required
    #       security_group_ids: ["String"],
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
    # [1]: http://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html
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
    # <note markdown="1"> The API server endpoint and certificate authority data are not
    # available until the cluster reaches the `ACTIVE` state.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html
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

    # Lists the Amazon EKS clusters in your AWS account in the specified
    # Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of cluster results returned by `ListClusters` in
    #   paginated output. When this parameter is used, `ListClusters` only
    #   returns `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListClusters` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListClusters` returns up to 100 results
    #   and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListClusters` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
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
      context[:gem_version] = '1.4.0'
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
