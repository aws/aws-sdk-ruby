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

Aws::Plugins::GlobalConfiguration.add_identifier(:ecs)

module Aws::ECS
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :ecs

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

    # Creates a new Amazon ECS cluster. By default, your account receives a
    # `default` cluster when you launch your first container instance.
    # However, you can create your own cluster with a unique name with the
    # `CreateCluster` action.
    #
    # <note markdown="1"> When you call the CreateCluster API operation, Amazon ECS attempts to
    # create the service-linked role for your account so that required
    # resources in other AWS services can be managed on your behalf.
    # However, if the IAM user that makes the call does not have permissions
    # to create the service-linked role, it is not created. For more
    # information, see [Using Service-Linked Roles for Amazon ECS][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #
    # @option params [String] :cluster_name
    #   The name of your cluster. If you do not specify a name for your
    #   cluster, you create a cluster named `default`. Up to 255 letters
    #   (uppercase and lowercase), numbers, hyphens, and underscores are
    #   allowed.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To create a new cluster
    #
    #   # This example creates a cluster in your default region.
    #
    #   resp = client.create_cluster({
    #     cluster_name: "my_cluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster", 
    #       cluster_name: "my_cluster", 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       status: "ACTIVE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     cluster_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.registered_container_instances_count #=> Integer
    #   resp.cluster.running_tasks_count #=> Integer
    #   resp.cluster.pending_tasks_count #=> Integer
    #   resp.cluster.active_services_count #=> Integer
    #   resp.cluster.statistics #=> Array
    #   resp.cluster.statistics[0].name #=> String
    #   resp.cluster.statistics[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Runs and maintains a desired number of tasks from a specified task
    # definition. If the number of tasks running in a service drops below
    # `desiredCount`, Amazon ECS spawns another copy of the task in the
    # specified cluster. To update an existing service, see UpdateService.
    #
    # In addition to maintaining the desired count of tasks in your service,
    # you can optionally run your service behind a load balancer. The load
    # balancer distributes traffic across the tasks that are associated with
    # the service. For more information, see [Service Load Balancing][1] in
    # the *Amazon Elastic Container Service Developer Guide*.
    #
    # You can optionally specify a deployment configuration for your
    # service. During a deployment, the service scheduler uses the
    # `minimumHealthyPercent` and `maximumPercent` parameters to determine
    # the deployment strategy. The deployment is triggered by changing the
    # task definition or the desired count of a service with an
    # UpdateService operation.
    #
    # The `minimumHealthyPercent` represents a lower limit on the number of
    # your service's tasks that must remain in the `RUNNING` state during a
    # deployment, as a percentage of the `desiredCount` (rounded up to the
    # nearest integer). This parameter enables you to deploy without using
    # additional cluster capacity. For example, if your service has a
    # `desiredCount` of four tasks and a `minimumHealthyPercent` of 50%, the
    # scheduler can stop two existing tasks to free up cluster capacity
    # before starting two new tasks. Tasks for services that *do not* use a
    # load balancer are considered healthy if they are in the `RUNNING`
    # state. Tasks for services that *do* use a load balancer are considered
    # healthy if they are in the `RUNNING` state and the container instance
    # they are hosted on is reported as healthy by the load balancer. The
    # default value for a replica service for `minimumHealthyPercent` is 50%
    # in the console and 100% for the AWS CLI, the AWS SDKs, and the APIs.
    # The default value for a daemon service for `minimumHealthyPercent` is
    # 0% for the AWS CLI, the AWS SDKs, and the APIs and 50% for the
    # console.
    #
    # The `maximumPercent` parameter represents an upper limit on the number
    # of your service's tasks that are allowed in the `RUNNING` or
    # `PENDING` state during a deployment, as a percentage of the
    # `desiredCount` (rounded down to the nearest integer). This parameter
    # enables you to define the deployment batch size. For example, if your
    # replica service has a `desiredCount` of four tasks and a
    # `maximumPercent` value of 200%, the scheduler can start four new tasks
    # before stopping the four older tasks (provided that the cluster
    # resources required to do this are available). The default value for a
    # replica service for `maximumPercent` is 200%. If you are using a
    # daemon service type, the `maximumPercent` should remain at 100%, which
    # is the default value.
    #
    # When the service scheduler launches new tasks, it determines task
    # placement in your cluster using the following logic:
    #
    # * Determine which of the container instances in your cluster can
    #   support your service's task definition (for example, they have the
    #   required CPU, memory, ports, and container instance attributes).
    #
    # * By default, the service scheduler attempts to balance tasks across
    #   Availability Zones in this manner (although you can choose a
    #   different placement strategy) with the `placementStrategy`
    #   parameter):
    #
    #   * Sort the valid container instances, giving priority to instances
    #     that have the fewest number of running tasks for this service in
    #     their respective Availability Zone. For example, if zone A has one
    #     running service task and zones B and C each have zero, valid
    #     container instances in either zone B or C are considered optimal
    #     for placement.
    #
    #   * Place the new service task on a valid container instance in an
    #     optimal Availability Zone (based on the previous steps), favoring
    #     container instances with the fewest number of running tasks for
    #     this service.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster on
    #   which to run your service. If you do not specify a cluster, the
    #   default cluster is assumed.
    #
    # @option params [required, String] :service_name
    #   The name of your service. Up to 255 letters (uppercase and lowercase),
    #   numbers, hyphens, and underscores are allowed. Service names must be
    #   unique within a cluster, but you can have similarly named services in
    #   multiple clusters within a Region or across multiple Regions.
    #
    # @option params [required, String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` is not
    #   specified, the latest `ACTIVE` revision is used.
    #
    # @option params [Array<Types::LoadBalancer>] :load_balancers
    #   A load balancer object representing the load balancer to use with your
    #   service. Currently, you are limited to one load balancer or target
    #   group per service. After you create a service, the load balancer name
    #   or target group ARN, container name, and container port specified in
    #   the service definition are immutable.
    #
    #   For Classic Load Balancers, this object must contain the load balancer
    #   name, the container name (as it appears in a container definition),
    #   and the container port to access from the load balancer. When a task
    #   from this service is placed on a container instance, the container
    #   instance is registered with the load balancer specified here.
    #
    #   For Application Load Balancers and Network Load Balancers, this object
    #   must contain the load balancer target group ARN, the container name
    #   (as it appears in a container definition), and the container port to
    #   access from the load balancer. When a task from this service is placed
    #   on a container instance, the container instance and port combination
    #   is registered as a target in the target group specified here.
    #
    #   Services with tasks that use the `awsvpc` network mode (for example,
    #   those with the Fargate launch type) only support Application Load
    #   Balancers and Network Load Balancers; Classic Load Balancers are not
    #   supported. Also, when you create any target groups for these services,
    #   you must choose `ip` as the target type, not `instance`, because tasks
    #   that use the `awsvpc` network mode are associated with an elastic
    #   network interface, not an Amazon EC2 instance.
    #
    # @option params [Array<Types::ServiceRegistry>] :service_registries
    #   The details of the service discovery registries to assign to this
    #   service. For more information, see [Service Discovery][1].
    #
    #   <note markdown="1"> Service discovery is supported for Fargate tasks if using platform
    #   version v1.1.0 or later. For more information, see [AWS Fargate
    #   Platform Versions][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   [2]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #
    # @option params [Integer] :desired_count
    #   The number of instantiations of the specified task definition to place
    #   and keep running on your cluster.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 32 ASCII characters are allowed.
    #
    # @option params [String] :launch_type
    #   The launch type on which to run your service.
    #
    # @option params [String] :platform_version
    #   The platform version on which to run your service. If one is not
    #   specified, the latest version is used by default.
    #
    # @option params [String] :role
    #   The name or full Amazon Resource Name (ARN) of the IAM role that
    #   allows Amazon ECS to make calls to your load balancer on your behalf.
    #   This parameter is only permitted if you are using a load balancer with
    #   your service and your task definition does not use the `awsvpc`
    #   network mode. If you specify the `role` parameter, you must also
    #   specify a load balancer object with the `loadBalancers` parameter.
    #
    #   If your account has already created the Amazon ECS service-linked
    #   role, that role is used by default for your service unless you specify
    #   a role here. The service-linked role is required if your task
    #   definition uses the `awsvpc` network mode, in which case you should
    #   not specify a role here. For more information, see [Using
    #   Service-Linked Roles for Amazon ECS][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   If your specified role has a path other than `/`, then you must either
    #   specify the full role ARN (this is recommended) or prefix the role
    #   name with the path. For example, if a role with the name `bar` has a
    #   path of `/foo/` then you would specify `/foo/bar` as the role name.
    #   For more information, see [Friendly Names and Paths][2] in the *IAM
    #   User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names
    #
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   Optional deployment parameters that control how many tasks run during
    #   the deployment and the ordering of stopping and starting tasks.
    #
    # @option params [Array<Types::PlacementConstraint>] :placement_constraints
    #   An array of placement constraint objects to use for tasks in your
    #   service. You can specify a maximum of 10 constraints per task (this
    #   limit includes constraints in the task definition and those specified
    #   at run time).
    #
    # @option params [Array<Types::PlacementStrategy>] :placement_strategy
    #   The placement strategy objects to use for tasks in your service. You
    #   can specify a maximum of five strategy rules per service.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The network configuration for the service. This parameter is required
    #   for task definitions that use the `awsvpc` network mode to receive
    #   their own Elastic Network Interface, and it is not supported for other
    #   network modes. For more information, see [Task Networking][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #
    # @option params [Integer] :health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service scheduler
    #   should ignore unhealthy Elastic Load Balancing target health checks
    #   after a task has first started. This is only valid if your service is
    #   configured to use a load balancer. If your service's tasks take a
    #   while to start and respond to Elastic Load Balancing health checks,
    #   you can specify a health check grace period of up to 7,200 seconds
    #   during which the ECS service scheduler ignores health check status.
    #   This grace period can prevent the ECS service scheduler from marking
    #   tasks as unhealthy and stopping them before they have time to come up.
    #
    # @option params [String] :scheduling_strategy
    #   The scheduling strategy to use for the service. For more information,
    #   see [Services][1].
    #
    #   There are two service scheduler strategies available:
    #
    #   * `REPLICA`-The replica scheduling strategy places and maintains the
    #     desired number of tasks across your cluster. By default, the service
    #     scheduler spreads tasks across Availability Zones. You can use task
    #     placement strategies and constraints to customize task placement
    #     decisions.
    #
    #   * `DAEMON`-The daemon scheduling strategy deploys exactly one task on
    #     each active container instance that meets all of the task placement
    #     constraints that you specify in your cluster. When using this
    #     strategy, there is no need to specify a desired number of tasks, a
    #     task placement strategy, or use Service Auto Scaling policies.
    #
    #     <note markdown="1"> Fargate tasks do not support the `DAEMON` scheduling strategy.
    #
    #      </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguideecs_services.html
    #
    # @return [Types::CreateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceResponse#service #service} => Types::Service
    #
    #
    # @example Example: To create a new service
    #
    #   # This example creates a service in your default region called ``ecs-simple-service``. The service uses the
    #   # ``hello_world`` task definition and it maintains 10 copies of that task.
    #
    #   resp = client.create_service({
    #     desired_count: 10, 
    #     service_name: "ecs-simple-service", 
    #     task_definition: "hello_world", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service: {
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default", 
    #       created_at: Time.parse("2016-08-29T16:13:47.298Z"), 
    #       deployment_configuration: {
    #         maximum_percent: 200, 
    #         minimum_healthy_percent: 100, 
    #       }, 
    #       deployments: [
    #         {
    #           created_at: Time.parse("2016-08-29T16:13:47.298Z"), 
    #           desired_count: 10, 
    #           id: "ecs-svc/9223370564342348388", 
    #           pending_count: 0, 
    #           running_count: 0, 
    #           status: "PRIMARY", 
    #           task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6", 
    #           updated_at: Time.parse("2016-08-29T16:13:47.298Z"), 
    #         }, 
    #         {
    #           created_at: Time.parse("2016-08-29T15:52:44.481Z"), 
    #           desired_count: 0, 
    #           id: "ecs-svc/9223370564343611322", 
    #           pending_count: 0, 
    #           running_count: 0, 
    #           status: "ACTIVE", 
    #           task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6", 
    #           updated_at: Time.parse("2016-08-29T16:11:38.941Z"), 
    #         }, 
    #       ], 
    #       desired_count: 10, 
    #       events: [
    #       ], 
    #       load_balancers: [
    #       ], 
    #       pending_count: 0, 
    #       running_count: 0, 
    #       service_arn: "arn:aws:ecs:us-east-1:012345678910:service/ecs-simple-service", 
    #       service_name: "ecs-simple-service", 
    #       status: "ACTIVE", 
    #       task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6", 
    #     }, 
    #   }
    #
    # @example Example: To create a new service behind a load balancer
    #
    #   # This example creates a service in your default region called ``ecs-simple-service-elb``. The service uses the
    #   # ``ecs-demo`` task definition and it maintains 10 copies of that task. You must reference an existing load balancer in
    #   # the same region by its name.
    #
    #   resp = client.create_service({
    #     desired_count: 10, 
    #     load_balancers: [
    #       {
    #         container_name: "simple-app", 
    #         container_port: 80, 
    #         load_balancer_name: "EC2Contai-EcsElast-15DCDAURT3ZO2", 
    #       }, 
    #     ], 
    #     role: "ecsServiceRole", 
    #     service_name: "ecs-simple-service-elb", 
    #     task_definition: "console-sample-app-static", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service: {
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default", 
    #       created_at: Time.parse("2016-08-29T16:02:54.884Z"), 
    #       deployment_configuration: {
    #         maximum_percent: 200, 
    #         minimum_healthy_percent: 100, 
    #       }, 
    #       deployments: [
    #         {
    #           created_at: Time.parse("2016-08-29T16:02:54.884Z"), 
    #           desired_count: 10, 
    #           id: "ecs-svc/9223370564343000923", 
    #           pending_count: 0, 
    #           running_count: 0, 
    #           status: "PRIMARY", 
    #           task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-static:6", 
    #           updated_at: Time.parse("2016-08-29T16:02:54.884Z"), 
    #         }, 
    #       ], 
    #       desired_count: 10, 
    #       events: [
    #       ], 
    #       load_balancers: [
    #         {
    #           container_name: "simple-app", 
    #           container_port: 80, 
    #           load_balancer_name: "EC2Contai-EcsElast-15DCDAURT3ZO2", 
    #         }, 
    #       ], 
    #       pending_count: 0, 
    #       role_arn: "arn:aws:iam::012345678910:role/ecsServiceRole", 
    #       running_count: 0, 
    #       service_arn: "arn:aws:ecs:us-east-1:012345678910:service/ecs-simple-service-elb", 
    #       service_name: "ecs-simple-service-elb", 
    #       status: "ACTIVE", 
    #       task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-static:6", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service({
    #     cluster: "String",
    #     service_name: "String", # required
    #     task_definition: "String", # required
    #     load_balancers: [
    #       {
    #         target_group_arn: "String",
    #         load_balancer_name: "String",
    #         container_name: "String",
    #         container_port: 1,
    #       },
    #     ],
    #     service_registries: [
    #       {
    #         registry_arn: "String",
    #         port: 1,
    #         container_name: "String",
    #         container_port: 1,
    #       },
    #     ],
    #     desired_count: 1,
    #     client_token: "String",
    #     launch_type: "EC2", # accepts EC2, FARGATE
    #     platform_version: "String",
    #     role: "String",
    #     deployment_configuration: {
    #       maximum_percent: 1,
    #       minimum_healthy_percent: 1,
    #     },
    #     placement_constraints: [
    #       {
    #         type: "distinctInstance", # accepts distinctInstance, memberOf
    #         expression: "String",
    #       },
    #     ],
    #     placement_strategy: [
    #       {
    #         type: "random", # accepts random, spread, binpack
    #         field: "String",
    #       },
    #     ],
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     health_check_grace_period_seconds: 1,
    #     scheduling_strategy: "REPLICA", # accepts REPLICA, DAEMON
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.service_name #=> String
    #   resp.service.cluster_arn #=> String
    #   resp.service.load_balancers #=> Array
    #   resp.service.load_balancers[0].target_group_arn #=> String
    #   resp.service.load_balancers[0].load_balancer_name #=> String
    #   resp.service.load_balancers[0].container_name #=> String
    #   resp.service.load_balancers[0].container_port #=> Integer
    #   resp.service.service_registries #=> Array
    #   resp.service.service_registries[0].registry_arn #=> String
    #   resp.service.service_registries[0].port #=> Integer
    #   resp.service.service_registries[0].container_name #=> String
    #   resp.service.service_registries[0].container_port #=> Integer
    #   resp.service.status #=> String
    #   resp.service.desired_count #=> Integer
    #   resp.service.running_count #=> Integer
    #   resp.service.pending_count #=> Integer
    #   resp.service.launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.service.platform_version #=> String
    #   resp.service.task_definition #=> String
    #   resp.service.deployment_configuration.maximum_percent #=> Integer
    #   resp.service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.service.deployments #=> Array
    #   resp.service.deployments[0].id #=> String
    #   resp.service.deployments[0].status #=> String
    #   resp.service.deployments[0].task_definition #=> String
    #   resp.service.deployments[0].desired_count #=> Integer
    #   resp.service.deployments[0].pending_count #=> Integer
    #   resp.service.deployments[0].running_count #=> Integer
    #   resp.service.deployments[0].created_at #=> Time
    #   resp.service.deployments[0].updated_at #=> Time
    #   resp.service.deployments[0].launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.service.deployments[0].platform_version #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.role_arn #=> String
    #   resp.service.events #=> Array
    #   resp.service.events[0].id #=> String
    #   resp.service.events[0].created_at #=> Time
    #   resp.service.events[0].message #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.placement_constraints #=> Array
    #   resp.service.placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.service.placement_constraints[0].expression #=> String
    #   resp.service.placement_strategy #=> Array
    #   resp.service.placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.service.placement_strategy[0].field #=> String
    #   resp.service.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.health_check_grace_period_seconds #=> Integer
    #   resp.service.scheduling_strategy #=> String, one of "REPLICA", "DAEMON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateService AWS API Documentation
    #
    # @overload create_service(params = {})
    # @param [Hash] params ({})
    def create_service(params = {}, options = {})
      req = build_request(:create_service, params)
      req.send_request(options)
    end

    # Deletes one or more custom attributes from an Amazon ECS resource.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   contains the resource to delete attributes. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, Array<Types::Attribute>] :attributes
    #   The attributes to delete from your resource. You can specify up to 10
    #   attributes per request. For custom attributes, specify the attribute
    #   name and target ID, but do not specify the value. If you specify the
    #   target ID using the short form, you must also specify the target type.
    #
    # @return [Types::DeleteAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAttributesResponse#attributes #attributes} => Array&lt;Types::Attribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attributes({
    #     cluster: "String",
    #     attributes: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance", # accepts container-instance
    #         target_id: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].value #=> String
    #   resp.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.attributes[0].target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAttributes AWS API Documentation
    #
    # @overload delete_attributes(params = {})
    # @param [Hash] params ({})
    def delete_attributes(params = {}, options = {})
      req = build_request(:delete_attributes, params)
      req.send_request(options)
    end

    # Deletes the specified cluster. You must deregister all container
    # instances from this cluster before you may delete it. You can list the
    # container instances in a cluster with ListContainerInstances and
    # deregister them with DeregisterContainerInstance.
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   delete.
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To delete an empty cluster
    #
    #   # This example deletes an empty cluster in your default region.
    #
    #   resp = client.delete_cluster({
    #     cluster: "my_cluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster", 
    #       cluster_name: "my_cluster", 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       status: "INACTIVE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.registered_container_instances_count #=> Integer
    #   resp.cluster.running_tasks_count #=> Integer
    #   resp.cluster.pending_tasks_count #=> Integer
    #   resp.cluster.active_services_count #=> Integer
    #   resp.cluster.statistics #=> Array
    #   resp.cluster.statistics[0].name #=> String
    #   resp.cluster.statistics[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes a specified service within a cluster. You can delete a service
    # if you have no running tasks in it and the desired task count is zero.
    # If the service is actively maintaining tasks, you cannot delete it,
    # and you must update the service to a desired task count of zero. For
    # more information, see UpdateService.
    #
    # <note markdown="1"> When you delete a service, if there are still running tasks that
    # require cleanup, the service status moves from `ACTIVE` to `DRAINING`,
    # and the service is no longer visible in the console or in ListServices
    # API operations. After the tasks have stopped, then the service status
    # moves from `DRAINING` to `INACTIVE`. Services in the `DRAINING` or
    # `INACTIVE` status can still be viewed with DescribeServices API
    # operations. However, in the future, `INACTIVE` services may be cleaned
    # up and purged from Amazon ECS record keeping, and DescribeServices API
    # operations on those services return a `ServiceNotFoundException`
    # error.
    #
    #  </note>
    #
    # If you attempt to create a new service with the same name as an
    # existing service in either `ACTIVE` or `DRAINING` status, you will
    # receive an error.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the service to delete. If you do not specify a cluster, the
    #   default cluster is assumed.
    #
    # @option params [required, String] :service
    #   The name of the service to delete.
    #
    # @option params [Boolean] :force
    #   If `true`, allows you to delete a service even if it has not been
    #   scaled down to zero tasks. It is only necessary to use this if the
    #   service is using the `REPLICA` scheduling strategy.
    #
    # @return [Types::DeleteServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceResponse#service #service} => Types::Service
    #
    #
    # @example Example: To delete a service
    #
    #   # This example deletes the my-http-service service. The service must have a desired count and running count of 0 before
    #   # you can delete it.
    #
    #   resp = client.delete_service({
    #     service: "my-http-service", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service({
    #     cluster: "String",
    #     service: "String", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.service_name #=> String
    #   resp.service.cluster_arn #=> String
    #   resp.service.load_balancers #=> Array
    #   resp.service.load_balancers[0].target_group_arn #=> String
    #   resp.service.load_balancers[0].load_balancer_name #=> String
    #   resp.service.load_balancers[0].container_name #=> String
    #   resp.service.load_balancers[0].container_port #=> Integer
    #   resp.service.service_registries #=> Array
    #   resp.service.service_registries[0].registry_arn #=> String
    #   resp.service.service_registries[0].port #=> Integer
    #   resp.service.service_registries[0].container_name #=> String
    #   resp.service.service_registries[0].container_port #=> Integer
    #   resp.service.status #=> String
    #   resp.service.desired_count #=> Integer
    #   resp.service.running_count #=> Integer
    #   resp.service.pending_count #=> Integer
    #   resp.service.launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.service.platform_version #=> String
    #   resp.service.task_definition #=> String
    #   resp.service.deployment_configuration.maximum_percent #=> Integer
    #   resp.service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.service.deployments #=> Array
    #   resp.service.deployments[0].id #=> String
    #   resp.service.deployments[0].status #=> String
    #   resp.service.deployments[0].task_definition #=> String
    #   resp.service.deployments[0].desired_count #=> Integer
    #   resp.service.deployments[0].pending_count #=> Integer
    #   resp.service.deployments[0].running_count #=> Integer
    #   resp.service.deployments[0].created_at #=> Time
    #   resp.service.deployments[0].updated_at #=> Time
    #   resp.service.deployments[0].launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.service.deployments[0].platform_version #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.role_arn #=> String
    #   resp.service.events #=> Array
    #   resp.service.events[0].id #=> String
    #   resp.service.events[0].created_at #=> Time
    #   resp.service.events[0].message #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.placement_constraints #=> Array
    #   resp.service.placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.service.placement_constraints[0].expression #=> String
    #   resp.service.placement_strategy #=> Array
    #   resp.service.placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.service.placement_strategy[0].field #=> String
    #   resp.service.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.health_check_grace_period_seconds #=> Integer
    #   resp.service.scheduling_strategy #=> String, one of "REPLICA", "DAEMON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteService AWS API Documentation
    #
    # @overload delete_service(params = {})
    # @param [Hash] params ({})
    def delete_service(params = {}, options = {})
      req = build_request(:delete_service, params)
      req.send_request(options)
    end

    # Deregisters an Amazon ECS container instance from the specified
    # cluster. This instance is no longer available to run tasks.
    #
    # If you intend to use the container instance for some other purpose
    # after deregistration, you should stop all of the tasks running on the
    # container instance before deregistration. That prevents any orphaned
    # tasks from consuming resources.
    #
    # Deregistering a container instance removes the instance from a
    # cluster, but it does not terminate the EC2 instance; if you are
    # finished using the instance, be sure to terminate it in the Amazon EC2
    # console to stop billing.
    #
    # <note markdown="1"> If you terminate a running container instance, Amazon ECS
    # automatically deregisters the instance from your cluster (stopped
    # container instances or instances with disconnected agents are not
    # automatically deregistered when terminated).
    #
    #  </note>
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the container instance to deregister. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, String] :container_instance
    #   The container instance ID or full ARN of the container instance to
    #   deregister. The ARN contains the `arn:aws:ecs` namespace, followed by
    #   the Region of the container instance, the AWS account ID of the
    #   container instance owner, the `container-instance` namespace, and then
    #   the container instance ID. For example,
    #   `arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID
    #   `.
    #
    # @option params [Boolean] :force
    #   Forces the deregistration of the container instance. If you have tasks
    #   running on the container instance when you deregister it with the
    #   `force` option, these tasks remain running until you terminate the
    #   instance or the tasks stop through some other means, but they are
    #   orphaned (no longer monitored or accounted for by Amazon ECS). If an
    #   orphaned task on your container instance is part of an Amazon ECS
    #   service, then the service scheduler starts another copy of that task,
    #   on a different container instance if possible.
    #
    #   Any containers in orphaned service tasks that are registered with a
    #   Classic Load Balancer or an Application Load Balancer target group are
    #   deregistered. They begin connection draining according to the settings
    #   on the load balancer or target group.
    #
    # @return [Types::DeregisterContainerInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterContainerInstanceResponse#container_instance #container_instance} => Types::ContainerInstance
    #
    #
    # @example Example: To deregister a container instance from a cluster
    #
    #   # This example deregisters a container instance from the specified cluster in your default region. If there are still
    #   # tasks running on the container instance, you must either stop those tasks before deregistering, or use the force option.
    #
    #   resp = client.deregister_container_instance({
    #     cluster: "default", 
    #     container_instance: "container_instance_UUID", 
    #     force: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_container_instance({
    #     cluster: "String",
    #     container_instance: "String", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instance.container_instance_arn #=> String
    #   resp.container_instance.ec2_instance_id #=> String
    #   resp.container_instance.version #=> Integer
    #   resp.container_instance.version_info.agent_version #=> String
    #   resp.container_instance.version_info.agent_hash #=> String
    #   resp.container_instance.version_info.docker_version #=> String
    #   resp.container_instance.remaining_resources #=> Array
    #   resp.container_instance.remaining_resources[0].name #=> String
    #   resp.container_instance.remaining_resources[0].type #=> String
    #   resp.container_instance.remaining_resources[0].double_value #=> Float
    #   resp.container_instance.remaining_resources[0].long_value #=> Integer
    #   resp.container_instance.remaining_resources[0].integer_value #=> Integer
    #   resp.container_instance.remaining_resources[0].string_set_value #=> Array
    #   resp.container_instance.remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.registered_resources #=> Array
    #   resp.container_instance.registered_resources[0].name #=> String
    #   resp.container_instance.registered_resources[0].type #=> String
    #   resp.container_instance.registered_resources[0].double_value #=> Float
    #   resp.container_instance.registered_resources[0].long_value #=> Integer
    #   resp.container_instance.registered_resources[0].integer_value #=> Integer
    #   resp.container_instance.registered_resources[0].string_set_value #=> Array
    #   resp.container_instance.registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.status #=> String
    #   resp.container_instance.agent_connected #=> Boolean
    #   resp.container_instance.running_tasks_count #=> Integer
    #   resp.container_instance.pending_tasks_count #=> Integer
    #   resp.container_instance.agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instance.attributes #=> Array
    #   resp.container_instance.attributes[0].name #=> String
    #   resp.container_instance.attributes[0].value #=> String
    #   resp.container_instance.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instance.attributes[0].target_id #=> String
    #   resp.container_instance.registered_at #=> Time
    #   resp.container_instance.attachments #=> Array
    #   resp.container_instance.attachments[0].id #=> String
    #   resp.container_instance.attachments[0].type #=> String
    #   resp.container_instance.attachments[0].status #=> String
    #   resp.container_instance.attachments[0].details #=> Array
    #   resp.container_instance.attachments[0].details[0].name #=> String
    #   resp.container_instance.attachments[0].details[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterContainerInstance AWS API Documentation
    #
    # @overload deregister_container_instance(params = {})
    # @param [Hash] params ({})
    def deregister_container_instance(params = {}, options = {})
      req = build_request(:deregister_container_instance, params)
      req.send_request(options)
    end

    # Deregisters the specified task definition by family and revision. Upon
    # deregistration, the task definition is marked as `INACTIVE`. Existing
    # tasks and services that reference an `INACTIVE` task definition
    # continue to run without disruption. Existing services that reference
    # an `INACTIVE` task definition can still scale up or down by modifying
    # the service's desired count.
    #
    # You cannot use an `INACTIVE` task definition to run new tasks or
    # create new services, and you cannot update an existing service to
    # reference an `INACTIVE` task definition (although there may be up to a
    # 10-minute window following deregistration where these restrictions
    # have not yet taken effect).
    #
    # <note markdown="1"> At this time, `INACTIVE` task definitions remain discoverable in your
    # account indefinitely; however, this behavior is subject to change in
    # the future, so you should not rely on `INACTIVE` task definitions
    # persisting beyond the lifecycle of any associated tasks and services.
    #
    #  </note>
    #
    # @option params [required, String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full Amazon
    #   Resource Name (ARN) of the task definition to deregister. You must
    #   specify a `revision`.
    #
    # @return [Types::DeregisterTaskDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterTaskDefinitionResponse#task_definition #task_definition} => Types::TaskDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_task_definition({
    #     task_definition: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_definition.task_definition_arn #=> String
    #   resp.task_definition.container_definitions #=> Array
    #   resp.task_definition.container_definitions[0].name #=> String
    #   resp.task_definition.container_definitions[0].image #=> String
    #   resp.task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.task_definition.container_definitions[0].cpu #=> Integer
    #   resp.task_definition.container_definitions[0].memory #=> Integer
    #   resp.task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.task_definition.container_definitions[0].links #=> Array
    #   resp.task_definition.container_definitions[0].links[0] #=> String
    #   resp.task_definition.container_definitions[0].port_mappings #=> Array
    #   resp.task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.task_definition.container_definitions[0].essential #=> Boolean
    #   resp.task_definition.container_definitions[0].entry_point #=> Array
    #   resp.task_definition.container_definitions[0].entry_point[0] #=> String
    #   resp.task_definition.container_definitions[0].command #=> Array
    #   resp.task_definition.container_definitions[0].command[0] #=> String
    #   resp.task_definition.container_definitions[0].environment #=> Array
    #   resp.task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.task_definition.container_definitions[0].mount_points #=> Array
    #   resp.task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].volumes_from #=> Array
    #   resp.task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of "read", "write", "mknod"
    #   resp.task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.task_definition.container_definitions[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].user #=> String
    #   resp.task_definition.container_definitions[0].working_directory #=> String
    #   resp.task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.task_definition.container_definitions[0].dns_servers #=> Array
    #   resp.task_definition.container_definitions[0].dns_servers[0] #=> String
    #   resp.task_definition.container_definitions[0].dns_search_domains #=> Array
    #   resp.task_definition.container_definitions[0].dns_search_domains[0] #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts #=> Array
    #   resp.task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.task_definition.container_definitions[0].docker_security_options #=> Array
    #   resp.task_definition.container_definitions[0].docker_security_options[0] #=> String
    #   resp.task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.task_definition.container_definitions[0].docker_labels #=> Hash
    #   resp.task_definition.container_definitions[0].docker_labels["String"] #=> String
    #   resp.task_definition.container_definitions[0].ulimits #=> Array
    #   resp.task_definition.container_definitions[0].ulimits[0].name #=> String, one of "core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"
    #   resp.task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.task_definition.container_definitions[0].log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"
    #   resp.task_definition.container_definitions[0].log_configuration.options #=> Hash
    #   resp.task_definition.container_definitions[0].log_configuration.options["String"] #=> String
    #   resp.task_definition.container_definitions[0].health_check.command #=> Array
    #   resp.task_definition.container_definitions[0].health_check.command[0] #=> String
    #   resp.task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.task_definition.container_definitions[0].system_controls #=> Array
    #   resp.task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.task_definition.family #=> String
    #   resp.task_definition.task_role_arn #=> String
    #   resp.task_definition.execution_role_arn #=> String
    #   resp.task_definition.network_mode #=> String, one of "bridge", "host", "awsvpc", "none"
    #   resp.task_definition.revision #=> Integer
    #   resp.task_definition.volumes #=> Array
    #   resp.task_definition.volumes[0].name #=> String
    #   resp.task_definition.volumes[0].host.source_path #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.scope #=> String, one of "task", "shared"
    #   resp.task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts["String"] #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels["String"] #=> String
    #   resp.task_definition.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.task_definition.requires_attributes #=> Array
    #   resp.task_definition.requires_attributes[0].name #=> String
    #   resp.task_definition.requires_attributes[0].value #=> String
    #   resp.task_definition.requires_attributes[0].target_type #=> String, one of "container-instance"
    #   resp.task_definition.requires_attributes[0].target_id #=> String
    #   resp.task_definition.placement_constraints #=> Array
    #   resp.task_definition.placement_constraints[0].type #=> String, one of "memberOf"
    #   resp.task_definition.placement_constraints[0].expression #=> String
    #   resp.task_definition.compatibilities #=> Array
    #   resp.task_definition.compatibilities[0] #=> String, one of "EC2", "FARGATE"
    #   resp.task_definition.requires_compatibilities #=> Array
    #   resp.task_definition.requires_compatibilities[0] #=> String, one of "EC2", "FARGATE"
    #   resp.task_definition.cpu #=> String
    #   resp.task_definition.memory #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterTaskDefinition AWS API Documentation
    #
    # @overload deregister_task_definition(params = {})
    # @param [Hash] params ({})
    def deregister_task_definition(params = {}, options = {})
      req = build_request(:deregister_task_definition, params)
      req.send_request(options)
    end

    # Describes one or more of your clusters.
    #
    # @option params [Array<String>] :clusters
    #   A list of up to 100 cluster names or full cluster Amazon Resource Name
    #   (ARN) entries. If you do not specify a cluster, the default cluster is
    #   assumed.
    #
    # @option params [Array<String>] :include
    #   Additional information about your clusters to be separated by launch
    #   type, including:
    #
    #   * runningEC2TasksCount
    #
    #   * runningFargateTasksCount
    #
    #   * pendingEC2TasksCount
    #
    #   * pendingFargateTasksCount
    #
    #   * activeEC2ServiceCount
    #
    #   * activeFargateServiceCount
    #
    #   * drainingEC2ServiceCount
    #
    #   * drainingFargateServiceCount
    #
    # @return [Types::DescribeClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClustersResponse#clusters #clusters} => Array&lt;Types::Cluster&gt;
    #   * {Types::DescribeClustersResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe a cluster
    #
    #   # This example provides a description of the specified cluster in your default region.
    #
    #   resp = client.describe_clusters({
    #     clusters: [
    #       "default", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     clusters: [
    #       {
    #         cluster_arn: "arn:aws:ecs:us-east-1:aws_account_id:cluster/default", 
    #         cluster_name: "default", 
    #         status: "ACTIVE", 
    #       }, 
    #     ], 
    #     failures: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters({
    #     clusters: ["String"],
    #     include: ["STATISTICS"], # accepts STATISTICS
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0].cluster_arn #=> String
    #   resp.clusters[0].cluster_name #=> String
    #   resp.clusters[0].status #=> String
    #   resp.clusters[0].registered_container_instances_count #=> Integer
    #   resp.clusters[0].running_tasks_count #=> Integer
    #   resp.clusters[0].pending_tasks_count #=> Integer
    #   resp.clusters[0].active_services_count #=> Integer
    #   resp.clusters[0].statistics #=> Array
    #   resp.clusters[0].statistics[0].name #=> String
    #   resp.clusters[0].statistics[0].value #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeClusters AWS API Documentation
    #
    # @overload describe_clusters(params = {})
    # @param [Hash] params ({})
    def describe_clusters(params = {}, options = {})
      req = build_request(:describe_clusters, params)
      req.send_request(options)
    end

    # Describes Amazon Elastic Container Service container instances.
    # Returns metadata about registered and remaining resources on each
    # container instance requested.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the container instances to describe. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, Array<String>] :container_instances
    #   A list of up to 100 container instance IDs or full Amazon Resource
    #   Name (ARN) entries.
    #
    # @return [Types::DescribeContainerInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContainerInstancesResponse#container_instances #container_instances} => Array&lt;Types::ContainerInstance&gt;
    #   * {Types::DescribeContainerInstancesResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe container instance
    #
    #   # This example provides a description of the specified container instance in your default region, using the container
    #   # instance UUID as an identifier.
    #
    #   resp = client.describe_container_instances({
    #     cluster: "default", 
    #     container_instances: [
    #       "f2756532-8f13-4d53-87c9-aed50dc94cd7", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_instances: [
    #       {
    #         agent_connected: true, 
    #         container_instance_arn: "arn:aws:ecs:us-east-1:012345678910:container-instance/f2756532-8f13-4d53-87c9-aed50dc94cd7", 
    #         ec2_instance_id: "i-807f3249", 
    #         pending_tasks_count: 0, 
    #         registered_resources: [
    #           {
    #             name: "CPU", 
    #             type: "INTEGER", 
    #             double_value: 0.0, 
    #             integer_value: 2048, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "MEMORY", 
    #             type: "INTEGER", 
    #             double_value: 0.0, 
    #             integer_value: 3768, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "PORTS", 
    #             type: "STRINGSET", 
    #             double_value: 0.0, 
    #             integer_value: 0, 
    #             long_value: 0, 
    #             string_set_value: [
    #               "2376", 
    #               "22", 
    #               "51678", 
    #               "2375", 
    #             ], 
    #           }, 
    #         ], 
    #         remaining_resources: [
    #           {
    #             name: "CPU", 
    #             type: "INTEGER", 
    #             double_value: 0.0, 
    #             integer_value: 1948, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "MEMORY", 
    #             type: "INTEGER", 
    #             double_value: 0.0, 
    #             integer_value: 3668, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "PORTS", 
    #             type: "STRINGSET", 
    #             double_value: 0.0, 
    #             integer_value: 0, 
    #             long_value: 0, 
    #             string_set_value: [
    #               "2376", 
    #               "22", 
    #               "80", 
    #               "51678", 
    #               "2375", 
    #             ], 
    #           }, 
    #         ], 
    #         running_tasks_count: 1, 
    #         status: "ACTIVE", 
    #       }, 
    #     ], 
    #     failures: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_container_instances({
    #     cluster: "String",
    #     container_instances: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instances #=> Array
    #   resp.container_instances[0].container_instance_arn #=> String
    #   resp.container_instances[0].ec2_instance_id #=> String
    #   resp.container_instances[0].version #=> Integer
    #   resp.container_instances[0].version_info.agent_version #=> String
    #   resp.container_instances[0].version_info.agent_hash #=> String
    #   resp.container_instances[0].version_info.docker_version #=> String
    #   resp.container_instances[0].remaining_resources #=> Array
    #   resp.container_instances[0].remaining_resources[0].name #=> String
    #   resp.container_instances[0].remaining_resources[0].type #=> String
    #   resp.container_instances[0].remaining_resources[0].double_value #=> Float
    #   resp.container_instances[0].remaining_resources[0].long_value #=> Integer
    #   resp.container_instances[0].remaining_resources[0].integer_value #=> Integer
    #   resp.container_instances[0].remaining_resources[0].string_set_value #=> Array
    #   resp.container_instances[0].remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instances[0].registered_resources #=> Array
    #   resp.container_instances[0].registered_resources[0].name #=> String
    #   resp.container_instances[0].registered_resources[0].type #=> String
    #   resp.container_instances[0].registered_resources[0].double_value #=> Float
    #   resp.container_instances[0].registered_resources[0].long_value #=> Integer
    #   resp.container_instances[0].registered_resources[0].integer_value #=> Integer
    #   resp.container_instances[0].registered_resources[0].string_set_value #=> Array
    #   resp.container_instances[0].registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instances[0].status #=> String
    #   resp.container_instances[0].agent_connected #=> Boolean
    #   resp.container_instances[0].running_tasks_count #=> Integer
    #   resp.container_instances[0].pending_tasks_count #=> Integer
    #   resp.container_instances[0].agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instances[0].attributes #=> Array
    #   resp.container_instances[0].attributes[0].name #=> String
    #   resp.container_instances[0].attributes[0].value #=> String
    #   resp.container_instances[0].attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instances[0].attributes[0].target_id #=> String
    #   resp.container_instances[0].registered_at #=> Time
    #   resp.container_instances[0].attachments #=> Array
    #   resp.container_instances[0].attachments[0].id #=> String
    #   resp.container_instances[0].attachments[0].type #=> String
    #   resp.container_instances[0].attachments[0].status #=> String
    #   resp.container_instances[0].attachments[0].details #=> Array
    #   resp.container_instances[0].attachments[0].details[0].name #=> String
    #   resp.container_instances[0].attachments[0].details[0].value #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeContainerInstances AWS API Documentation
    #
    # @overload describe_container_instances(params = {})
    # @param [Hash] params ({})
    def describe_container_instances(params = {}, options = {})
      req = build_request(:describe_container_instances, params)
      req.send_request(options)
    end

    # Describes the specified services running in your cluster.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN)the cluster that
    #   hosts the service to describe. If you do not specify a cluster, the
    #   default cluster is assumed.
    #
    # @option params [required, Array<String>] :services
    #   A list of services to describe. You may specify up to 10 services to
    #   describe in a single operation.
    #
    # @return [Types::DescribeServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServicesResponse#services #services} => Array&lt;Types::Service&gt;
    #   * {Types::DescribeServicesResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe a service
    #
    #   # This example provides descriptive information about the service named ``ecs-simple-service``.
    #
    #   resp = client.describe_services({
    #     services: [
    #       "ecs-simple-service", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     services: [
    #       {
    #         cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default", 
    #         created_at: Time.parse("2016-08-29T16:25:52.130Z"), 
    #         deployment_configuration: {
    #           maximum_percent: 200, 
    #           minimum_healthy_percent: 100, 
    #         }, 
    #         deployments: [
    #           {
    #             created_at: Time.parse("2016-08-29T16:25:52.130Z"), 
    #             desired_count: 1, 
    #             id: "ecs-svc/9223370564341623665", 
    #             pending_count: 0, 
    #             running_count: 0, 
    #             status: "PRIMARY", 
    #             task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6", 
    #             updated_at: Time.parse("2016-08-29T16:25:52.130Z"), 
    #           }, 
    #         ], 
    #         desired_count: 1, 
    #         events: [
    #           {
    #             created_at: Time.parse("2016-08-29T16:25:58.520Z"), 
    #             id: "38c285e5-d335-4b68-8b15-e46dedc8e88d", 
    #             message: "(service ecs-simple-service) was unable to place a task because no container instance met all of its requirements. The closest matching (container-instance 3f4de1c5-ffdd-4954-af7e-75b4be0c8841) is already using a port required by your task. For more information, see the Troubleshooting section of the Amazon ECS Developer Guide.", # In this example, there is a service event that shows unavailable cluster resources.
    #           }, 
    #         ], 
    #         load_balancers: [
    #         ], 
    #         pending_count: 0, 
    #         running_count: 0, 
    #         service_arn: "arn:aws:ecs:us-east-1:012345678910:service/ecs-simple-service", 
    #         service_name: "ecs-simple-service", 
    #         status: "ACTIVE", 
    #         task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_services({
    #     cluster: "String",
    #     services: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].service_arn #=> String
    #   resp.services[0].service_name #=> String
    #   resp.services[0].cluster_arn #=> String
    #   resp.services[0].load_balancers #=> Array
    #   resp.services[0].load_balancers[0].target_group_arn #=> String
    #   resp.services[0].load_balancers[0].load_balancer_name #=> String
    #   resp.services[0].load_balancers[0].container_name #=> String
    #   resp.services[0].load_balancers[0].container_port #=> Integer
    #   resp.services[0].service_registries #=> Array
    #   resp.services[0].service_registries[0].registry_arn #=> String
    #   resp.services[0].service_registries[0].port #=> Integer
    #   resp.services[0].service_registries[0].container_name #=> String
    #   resp.services[0].service_registries[0].container_port #=> Integer
    #   resp.services[0].status #=> String
    #   resp.services[0].desired_count #=> Integer
    #   resp.services[0].running_count #=> Integer
    #   resp.services[0].pending_count #=> Integer
    #   resp.services[0].launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.services[0].platform_version #=> String
    #   resp.services[0].task_definition #=> String
    #   resp.services[0].deployment_configuration.maximum_percent #=> Integer
    #   resp.services[0].deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.services[0].deployments #=> Array
    #   resp.services[0].deployments[0].id #=> String
    #   resp.services[0].deployments[0].status #=> String
    #   resp.services[0].deployments[0].task_definition #=> String
    #   resp.services[0].deployments[0].desired_count #=> Integer
    #   resp.services[0].deployments[0].pending_count #=> Integer
    #   resp.services[0].deployments[0].running_count #=> Integer
    #   resp.services[0].deployments[0].created_at #=> Time
    #   resp.services[0].deployments[0].updated_at #=> Time
    #   resp.services[0].deployments[0].launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.services[0].deployments[0].platform_version #=> String
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.services[0].role_arn #=> String
    #   resp.services[0].events #=> Array
    #   resp.services[0].events[0].id #=> String
    #   resp.services[0].events[0].created_at #=> Time
    #   resp.services[0].events[0].message #=> String
    #   resp.services[0].created_at #=> Time
    #   resp.services[0].placement_constraints #=> Array
    #   resp.services[0].placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.services[0].placement_constraints[0].expression #=> String
    #   resp.services[0].placement_strategy #=> Array
    #   resp.services[0].placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.services[0].placement_strategy[0].field #=> String
    #   resp.services[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.services[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.services[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.services[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.services[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.services[0].health_check_grace_period_seconds #=> Integer
    #   resp.services[0].scheduling_strategy #=> String, one of "REPLICA", "DAEMON"
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServices AWS API Documentation
    #
    # @overload describe_services(params = {})
    # @param [Hash] params ({})
    def describe_services(params = {}, options = {})
      req = build_request(:describe_services, params)
      req.send_request(options)
    end

    # Describes a task definition. You can specify a `family` and `revision`
    # to find information about a specific task definition, or you can
    # simply specify the family to find the latest `ACTIVE` revision in that
    # family.
    #
    # <note markdown="1"> You can only describe `INACTIVE` task definitions while an active task
    # or service references them.
    #
    #  </note>
    #
    # @option params [required, String] :task_definition
    #   The `family` for the latest `ACTIVE` revision, `family` and `revision`
    #   (`family:revision`) for a specific revision in the family, or full
    #   Amazon Resource Name (ARN) of the task definition to describe.
    #
    # @return [Types::DescribeTaskDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTaskDefinitionResponse#task_definition #task_definition} => Types::TaskDefinition
    #
    #
    # @example Example: To describe a task definition
    #
    #   # This example provides a description of the specified task definition.
    #
    #   resp = client.describe_task_definition({
    #     task_definition: "hello_world:8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_definition: {
    #       container_definitions: [
    #         {
    #           name: "wordpress", 
    #           cpu: 10, 
    #           environment: [
    #           ], 
    #           essential: true, 
    #           image: "wordpress", 
    #           links: [
    #             "mysql", 
    #           ], 
    #           memory: 500, 
    #           mount_points: [
    #           ], 
    #           port_mappings: [
    #             {
    #               container_port: 80, 
    #               host_port: 80, 
    #             }, 
    #           ], 
    #           volumes_from: [
    #           ], 
    #         }, 
    #         {
    #           name: "mysql", 
    #           cpu: 10, 
    #           environment: [
    #             {
    #               name: "MYSQL_ROOT_PASSWORD", 
    #               value: "password", 
    #             }, 
    #           ], 
    #           essential: true, 
    #           image: "mysql", 
    #           memory: 500, 
    #           mount_points: [
    #           ], 
    #           port_mappings: [
    #           ], 
    #           volumes_from: [
    #           ], 
    #         }, 
    #       ], 
    #       family: "hello_world", 
    #       revision: 8, 
    #       task_definition_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/hello_world:8", 
    #       volumes: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task_definition({
    #     task_definition: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_definition.task_definition_arn #=> String
    #   resp.task_definition.container_definitions #=> Array
    #   resp.task_definition.container_definitions[0].name #=> String
    #   resp.task_definition.container_definitions[0].image #=> String
    #   resp.task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.task_definition.container_definitions[0].cpu #=> Integer
    #   resp.task_definition.container_definitions[0].memory #=> Integer
    #   resp.task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.task_definition.container_definitions[0].links #=> Array
    #   resp.task_definition.container_definitions[0].links[0] #=> String
    #   resp.task_definition.container_definitions[0].port_mappings #=> Array
    #   resp.task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.task_definition.container_definitions[0].essential #=> Boolean
    #   resp.task_definition.container_definitions[0].entry_point #=> Array
    #   resp.task_definition.container_definitions[0].entry_point[0] #=> String
    #   resp.task_definition.container_definitions[0].command #=> Array
    #   resp.task_definition.container_definitions[0].command[0] #=> String
    #   resp.task_definition.container_definitions[0].environment #=> Array
    #   resp.task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.task_definition.container_definitions[0].mount_points #=> Array
    #   resp.task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].volumes_from #=> Array
    #   resp.task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of "read", "write", "mknod"
    #   resp.task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.task_definition.container_definitions[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].user #=> String
    #   resp.task_definition.container_definitions[0].working_directory #=> String
    #   resp.task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.task_definition.container_definitions[0].dns_servers #=> Array
    #   resp.task_definition.container_definitions[0].dns_servers[0] #=> String
    #   resp.task_definition.container_definitions[0].dns_search_domains #=> Array
    #   resp.task_definition.container_definitions[0].dns_search_domains[0] #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts #=> Array
    #   resp.task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.task_definition.container_definitions[0].docker_security_options #=> Array
    #   resp.task_definition.container_definitions[0].docker_security_options[0] #=> String
    #   resp.task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.task_definition.container_definitions[0].docker_labels #=> Hash
    #   resp.task_definition.container_definitions[0].docker_labels["String"] #=> String
    #   resp.task_definition.container_definitions[0].ulimits #=> Array
    #   resp.task_definition.container_definitions[0].ulimits[0].name #=> String, one of "core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"
    #   resp.task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.task_definition.container_definitions[0].log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"
    #   resp.task_definition.container_definitions[0].log_configuration.options #=> Hash
    #   resp.task_definition.container_definitions[0].log_configuration.options["String"] #=> String
    #   resp.task_definition.container_definitions[0].health_check.command #=> Array
    #   resp.task_definition.container_definitions[0].health_check.command[0] #=> String
    #   resp.task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.task_definition.container_definitions[0].system_controls #=> Array
    #   resp.task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.task_definition.family #=> String
    #   resp.task_definition.task_role_arn #=> String
    #   resp.task_definition.execution_role_arn #=> String
    #   resp.task_definition.network_mode #=> String, one of "bridge", "host", "awsvpc", "none"
    #   resp.task_definition.revision #=> Integer
    #   resp.task_definition.volumes #=> Array
    #   resp.task_definition.volumes[0].name #=> String
    #   resp.task_definition.volumes[0].host.source_path #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.scope #=> String, one of "task", "shared"
    #   resp.task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts["String"] #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels["String"] #=> String
    #   resp.task_definition.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.task_definition.requires_attributes #=> Array
    #   resp.task_definition.requires_attributes[0].name #=> String
    #   resp.task_definition.requires_attributes[0].value #=> String
    #   resp.task_definition.requires_attributes[0].target_type #=> String, one of "container-instance"
    #   resp.task_definition.requires_attributes[0].target_id #=> String
    #   resp.task_definition.placement_constraints #=> Array
    #   resp.task_definition.placement_constraints[0].type #=> String, one of "memberOf"
    #   resp.task_definition.placement_constraints[0].expression #=> String
    #   resp.task_definition.compatibilities #=> Array
    #   resp.task_definition.compatibilities[0] #=> String, one of "EC2", "FARGATE"
    #   resp.task_definition.requires_compatibilities #=> Array
    #   resp.task_definition.requires_compatibilities[0] #=> String, one of "EC2", "FARGATE"
    #   resp.task_definition.cpu #=> String
    #   resp.task_definition.memory #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskDefinition AWS API Documentation
    #
    # @overload describe_task_definition(params = {})
    # @param [Hash] params ({})
    def describe_task_definition(params = {}, options = {})
      req = build_request(:describe_task_definition, params)
      req.send_request(options)
    end

    # Describes a specified task or tasks.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the task to describe. If you do not specify a cluster, the
    #   default cluster is assumed.
    #
    # @option params [required, Array<String>] :tasks
    #   A list of up to 100 task IDs or full ARN entries.
    #
    # @return [Types::DescribeTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTasksResponse#tasks #tasks} => Array&lt;Types::Task&gt;
    #   * {Types::DescribeTasksResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe a task
    #
    #   # This example provides a description of the specified task, using the task UUID as an identifier.
    #
    #   resp = client.describe_tasks({
    #     tasks: [
    #       "c5cba4eb-5dad-405e-96db-71ef8eefe6a8", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     tasks: [
    #       {
    #         cluster_arn: "arn:aws:ecs:<region>:<aws_account_id>:cluster/default", 
    #         container_instance_arn: "arn:aws:ecs:<region>:<aws_account_id>:container-instance/18f9eda5-27d7-4c19-b133-45adc516e8fb", 
    #         containers: [
    #           {
    #             name: "ecs-demo", 
    #             container_arn: "arn:aws:ecs:<region>:<aws_account_id>:container/7c01765b-c588-45b3-8290-4ba38bd6c5a6", 
    #             last_status: "RUNNING", 
    #             network_bindings: [
    #               {
    #                 bind_ip: "0.0.0.0", 
    #                 container_port: 80, 
    #                 host_port: 80, 
    #               }, 
    #             ], 
    #             task_arn: "arn:aws:ecs:<region>:<aws_account_id>:task/c5cba4eb-5dad-405e-96db-71ef8eefe6a8", 
    #           }, 
    #         ], 
    #         desired_status: "RUNNING", 
    #         last_status: "RUNNING", 
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "ecs-demo", 
    #             }, 
    #           ], 
    #         }, 
    #         started_by: "ecs-svc/9223370608528463088", 
    #         task_arn: "arn:aws:ecs:<region>:<aws_account_id>:task/c5cba4eb-5dad-405e-96db-71ef8eefe6a8", 
    #         task_definition_arn: "arn:aws:ecs:<region>:<aws_account_id>:task-definition/amazon-ecs-sample:1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tasks({
    #     cluster: "String",
    #     tasks: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].cluster_arn #=> String
    #   resp.tasks[0].task_definition_arn #=> String
    #   resp.tasks[0].container_instance_arn #=> String
    #   resp.tasks[0].overrides.container_overrides #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].command #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].command[0] #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].cpu #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.tasks[0].overrides.task_role_arn #=> String
    #   resp.tasks[0].overrides.execution_role_arn #=> String
    #   resp.tasks[0].last_status #=> String
    #   resp.tasks[0].desired_status #=> String
    #   resp.tasks[0].cpu #=> String
    #   resp.tasks[0].memory #=> String
    #   resp.tasks[0].containers #=> Array
    #   resp.tasks[0].containers[0].container_arn #=> String
    #   resp.tasks[0].containers[0].task_arn #=> String
    #   resp.tasks[0].containers[0].name #=> String
    #   resp.tasks[0].containers[0].last_status #=> String
    #   resp.tasks[0].containers[0].exit_code #=> Integer
    #   resp.tasks[0].containers[0].reason #=> String
    #   resp.tasks[0].containers[0].network_bindings #=> Array
    #   resp.tasks[0].containers[0].network_bindings[0].bind_ip #=> String
    #   resp.tasks[0].containers[0].network_bindings[0].container_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].host_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.tasks[0].containers[0].network_interfaces #=> Array
    #   resp.tasks[0].containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].private_ipv_4_address #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.tasks[0].containers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.tasks[0].started_by #=> String
    #   resp.tasks[0].version #=> Integer
    #   resp.tasks[0].stopped_reason #=> String
    #   resp.tasks[0].connectivity #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.tasks[0].connectivity_at #=> Time
    #   resp.tasks[0].pull_started_at #=> Time
    #   resp.tasks[0].pull_stopped_at #=> Time
    #   resp.tasks[0].execution_stopped_at #=> Time
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].started_at #=> Time
    #   resp.tasks[0].stopping_at #=> Time
    #   resp.tasks[0].stopped_at #=> Time
    #   resp.tasks[0].group #=> String
    #   resp.tasks[0].launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.tasks[0].platform_version #=> String
    #   resp.tasks[0].attachments #=> Array
    #   resp.tasks[0].attachments[0].id #=> String
    #   resp.tasks[0].attachments[0].type #=> String
    #   resp.tasks[0].attachments[0].status #=> String
    #   resp.tasks[0].attachments[0].details #=> Array
    #   resp.tasks[0].attachments[0].details[0].name #=> String
    #   resp.tasks[0].attachments[0].details[0].value #=> String
    #   resp.tasks[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTasks AWS API Documentation
    #
    # @overload describe_tasks(params = {})
    # @param [Hash] params ({})
    def describe_tasks(params = {}, options = {})
      req = build_request(:describe_tasks, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action is only used by the Amazon ECS agent, and it is not
    # intended for use outside of the agent.
    #
    #  </note>
    #
    # Returns an endpoint for the Amazon ECS agent to poll for updates.
    #
    # @option params [String] :container_instance
    #   The container instance ID or full ARN of the container instance. The
    #   ARN contains the `arn:aws:ecs` namespace, followed by the Region of
    #   the container instance, the AWS account ID of the container instance
    #   owner, the `container-instance` namespace, and then the container
    #   instance ID. For example,
    #   `arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID
    #   `.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   the container instance belongs to.
    #
    # @return [Types::DiscoverPollEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DiscoverPollEndpointResponse#endpoint #endpoint} => String
    #   * {Types::DiscoverPollEndpointResponse#telemetry_endpoint #telemetry_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discover_poll_endpoint({
    #     container_instance: "String",
    #     cluster: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint #=> String
    #   resp.telemetry_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DiscoverPollEndpoint AWS API Documentation
    #
    # @overload discover_poll_endpoint(params = {})
    # @param [Hash] params ({})
    def discover_poll_endpoint(params = {}, options = {})
      req = build_request(:discover_poll_endpoint, params)
      req.send_request(options)
    end

    # Lists the attributes for Amazon ECS resources within a specified
    # target type and cluster. When you specify a target type and cluster,
    # `ListAttributes` returns a list of attribute objects, one for each
    # attribute on each resource. You can filter the list of results to a
    # single attribute name to only return results that have that name. You
    # can also filter the results by attribute name and value, for example,
    # to see which container instances in a cluster are running a Linux AMI
    # (`ecs.os-type=linux`).
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   list attributes. If you do not specify a cluster, the default cluster
    #   is assumed.
    #
    # @option params [required, String] :target_type
    #   The type of the target with which to list attributes.
    #
    # @option params [String] :attribute_name
    #   The name of the attribute with which to filter the results.
    #
    # @option params [String] :attribute_value
    #   The value of the attribute with which to filter results. You must also
    #   specify an attribute name to use this parameter.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListAttributes` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of cluster results returned by `ListAttributes` in
    #   paginated output. When this parameter is used, `ListAttributes` only
    #   returns `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListAttributes` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListAttributes` returns up to 100 results
    #   and a `nextToken` value if applicable.
    #
    # @return [Types::ListAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttributesResponse#attributes #attributes} => Array&lt;Types::Attribute&gt;
    #   * {Types::ListAttributesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attributes({
    #     cluster: "String",
    #     target_type: "container-instance", # required, accepts container-instance
    #     attribute_name: "String",
    #     attribute_value: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].value #=> String
    #   resp.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.attributes[0].target_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAttributes AWS API Documentation
    #
    # @overload list_attributes(params = {})
    # @param [Hash] params ({})
    def list_attributes(params = {}, options = {})
      req = build_request(:list_attributes, params)
      req.send_request(options)
    end

    # Returns a list of existing clusters.
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
    # @return [Types::ListClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResponse#cluster_arns #cluster_arns} => Array&lt;String&gt;
    #   * {Types::ListClustersResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list your available clusters
    #
    #   # This example lists all of your available clusters in your default region.
    #
    #   resp = client.list_clusters({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:cluster/test", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:cluster/default", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arns #=> Array
    #   resp.cluster_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Returns a list of container instances in a specified cluster. You can
    # filter the results of a `ListContainerInstances` operation with
    # cluster query language statements inside the `filter` parameter. For
    # more information, see [Cluster Query Language][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the container instances to list. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [String] :filter
    #   You can filter the results of a `ListContainerInstances` operation
    #   with cluster query language statements. For more information, see
    #   [Cluster Query Language][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListContainerInstances` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of container instance results returned by
    #   `ListContainerInstances` in paginated output. When this parameter is
    #   used, `ListContainerInstances` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListContainerInstances` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `ListContainerInstances` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #
    # @option params [String] :status
    #   Filters the container instances by status. For example, if you specify
    #   the `DRAINING` status, the results include only container instances
    #   that have been set to `DRAINING` using UpdateContainerInstancesState.
    #   If you do not specify this parameter, the default is to include
    #   container instances set to `ACTIVE` and `DRAINING`.
    #
    # @return [Types::ListContainerInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContainerInstancesResponse#container_instance_arns #container_instance_arns} => Array&lt;String&gt;
    #   * {Types::ListContainerInstancesResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list your available container instances in a cluster
    #
    #   # This example lists all of your available container instances in the specified cluster in your default region.
    #
    #   resp = client.list_container_instances({
    #     cluster: "default", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_instance_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/f6bbb147-5370-4ace-8c73-c7181ded911f", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/ffe3d344-77e2-476c-a4d0-bf560ad50acb", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_container_instances({
    #     cluster: "String",
    #     filter: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     status: "ACTIVE", # accepts ACTIVE, DRAINING
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instance_arns #=> Array
    #   resp.container_instance_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListContainerInstances AWS API Documentation
    #
    # @overload list_container_instances(params = {})
    # @param [Hash] params ({})
    def list_container_instances(params = {}, options = {})
      req = build_request(:list_container_instances, params)
      req.send_request(options)
    end

    # Lists the services that are running in a specified cluster.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the services to list. If you do not specify a cluster, the
    #   default cluster is assumed.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListServices` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of service results returned by `ListServices` in
    #   paginated output. When this parameter is used, `ListServices` only
    #   returns `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListServices` request with the returned
    #   `nextToken` value. This value can be between 1 and 10. If this
    #   parameter is not used, then `ListServices` returns up to 10 results
    #   and a `nextToken` value if applicable.
    #
    # @option params [String] :launch_type
    #   The launch type for the services to list.
    #
    # @option params [String] :scheduling_strategy
    #   The scheduling strategy for services to list.
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#service_arns #service_arns} => Array&lt;String&gt;
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list the services in a cluster
    #
    #   # This example lists the services running in the default cluster for an account.
    #
    #   resp = client.list_services({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service_arns: [
    #       "arn:aws:ecs:us-east-1:012345678910:service/my-http-service", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     cluster: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     launch_type: "EC2", # accepts EC2, FARGATE
    #     scheduling_strategy: "REPLICA", # accepts REPLICA, DAEMON
    #   })
    #
    # @example Response structure
    #
    #   resp.service_arns #=> Array
    #   resp.service_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Returns a list of task definition families that are registered to your
    # account (which may include task definition families that no longer
    # have any `ACTIVE` task definition revisions).
    #
    # You can filter out task definition families that do not contain any
    # `ACTIVE` task definition revisions by setting the `status` parameter
    # to `ACTIVE`. You can also filter the results with the `familyPrefix`
    # parameter.
    #
    # @option params [String] :family_prefix
    #   The `familyPrefix` is a string that is used to filter the results of
    #   `ListTaskDefinitionFamilies`. If you specify a `familyPrefix`, only
    #   task definition family names that begin with the `familyPrefix` string
    #   are returned.
    #
    # @option params [String] :status
    #   The task definition family status with which to filter the
    #   `ListTaskDefinitionFamilies` results. By default, both `ACTIVE` and
    #   `INACTIVE` task definition families are listed. If this parameter is
    #   set to `ACTIVE`, only task definition families that have an `ACTIVE`
    #   task definition revision are returned. If this parameter is set to
    #   `INACTIVE`, only task definition families that do not have any
    #   `ACTIVE` task definition revisions are returned. If you paginate the
    #   resulting output, be sure to keep the `status` value constant in each
    #   subsequent request.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListTaskDefinitionFamilies` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of task definition family results returned by
    #   `ListTaskDefinitionFamilies` in paginated output. When this parameter
    #   is used, `ListTaskDefinitions` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListTaskDefinitionFamilies` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter is not
    #   used, then `ListTaskDefinitionFamilies` returns up to 100 results and
    #   a `nextToken` value if applicable.
    #
    # @return [Types::ListTaskDefinitionFamiliesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaskDefinitionFamiliesResponse#families #families} => Array&lt;String&gt;
    #   * {Types::ListTaskDefinitionFamiliesResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list your registered task definition families
    #
    #   # This example lists all of your registered task definition families.
    #
    #   resp = client.list_task_definition_families({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     families: [
    #       "node-js-app", 
    #       "web-timer", 
    #       "hpcc", 
    #       "hpcc-c4-8xlarge", 
    #     ], 
    #   }
    #
    # @example Example: To filter your registered task definition families
    #
    #   # This example lists the task definition revisions that start with "hpcc".
    #
    #   resp = client.list_task_definition_families({
    #     family_prefix: "hpcc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     families: [
    #       "hpcc", 
    #       "hpcc-c4-8xlarge", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_definition_families({
    #     family_prefix: "String",
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE, ALL
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.families #=> Array
    #   resp.families[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionFamilies AWS API Documentation
    #
    # @overload list_task_definition_families(params = {})
    # @param [Hash] params ({})
    def list_task_definition_families(params = {}, options = {})
      req = build_request(:list_task_definition_families, params)
      req.send_request(options)
    end

    # Returns a list of task definitions that are registered to your
    # account. You can filter the results by family name with the
    # `familyPrefix` parameter or by status with the `status` parameter.
    #
    # @option params [String] :family_prefix
    #   The full family name with which to filter the `ListTaskDefinitions`
    #   results. Specifying a `familyPrefix` limits the listed task
    #   definitions to task definition revisions that belong to that family.
    #
    # @option params [String] :status
    #   The task definition status with which to filter the
    #   `ListTaskDefinitions` results. By default, only `ACTIVE` task
    #   definitions are listed. By setting this parameter to `INACTIVE`, you
    #   can view task definitions that are `INACTIVE` as long as an active
    #   task or service still references them. If you paginate the resulting
    #   output, be sure to keep the `status` value constant in each subsequent
    #   request.
    #
    # @option params [String] :sort
    #   The order in which to sort the results. Valid values are `ASC` and
    #   `DESC`. By default (`ASC`), task definitions are listed
    #   lexicographically by family name and in ascending numerical order by
    #   revision so that the newest task definitions in a family are listed
    #   last. Setting this parameter to `DESC` reverses the sort order on
    #   family name and revision so that the newest task definitions in a
    #   family are listed first.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListTaskDefinitions` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of task definition results returned by
    #   `ListTaskDefinitions` in paginated output. When this parameter is
    #   used, `ListTaskDefinitions` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListTaskDefinitions` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `ListTaskDefinitions` returns up to 100 results and a `nextToken`
    #   value if applicable.
    #
    # @return [Types::ListTaskDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaskDefinitionsResponse#task_definition_arns #task_definition_arns} => Array&lt;String&gt;
    #   * {Types::ListTaskDefinitionsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list your registered task definitions
    #
    #   # This example lists all of your registered task definitions.
    #
    #   resp = client.list_task_definitions({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_definition_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep300:2", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6", 
    #     ], 
    #   }
    #
    # @example Example: To list the registered task definitions in a family
    #
    #   # This example lists the task definition revisions of a specified family.
    #
    #   resp = client.list_task_definitions({
    #     family_prefix: "wordpress", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_definition_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_definitions({
    #     family_prefix: "String",
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     sort: "ASC", # accepts ASC, DESC
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.task_definition_arns #=> Array
    #   resp.task_definition_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitions AWS API Documentation
    #
    # @overload list_task_definitions(params = {})
    # @param [Hash] params ({})
    def list_task_definitions(params = {}, options = {})
      req = build_request(:list_task_definitions, params)
      req.send_request(options)
    end

    # Returns a list of tasks for a specified cluster. You can filter the
    # results by family name, by a particular container instance, or by the
    # desired status of the task with the `family`, `containerInstance`, and
    # `desiredStatus` parameters.
    #
    # Recently stopped tasks might appear in the returned results.
    # Currently, stopped tasks appear in the returned results for at least
    # one hour.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the tasks to list. If you do not specify a cluster, the default
    #   cluster is assumed.
    #
    # @option params [String] :container_instance
    #   The container instance ID or full ARN of the container instance with
    #   which to filter the `ListTasks` results. Specifying a
    #   `containerInstance` limits the results to tasks that belong to that
    #   container instance.
    #
    # @option params [String] :family
    #   The name of the family with which to filter the `ListTasks` results.
    #   Specifying a `family` limits the results to tasks that belong to that
    #   family.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated `ListTasks`
    #   request where `maxResults` was used and the results exceeded the value
    #   of that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of task results returned by `ListTasks` in
    #   paginated output. When this parameter is used, `ListTasks` only
    #   returns `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListTasks` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListTasks` returns up to 100 results and
    #   a `nextToken` value if applicable.
    #
    # @option params [String] :started_by
    #   The `startedBy` value with which to filter the task results.
    #   Specifying a `startedBy` value limits the results to tasks that were
    #   started with that value.
    #
    # @option params [String] :service_name
    #   The name of the service with which to filter the `ListTasks` results.
    #   Specifying a `serviceName` limits the results to tasks that belong to
    #   that service.
    #
    # @option params [String] :desired_status
    #   The task desired status with which to filter the `ListTasks` results.
    #   Specifying a `desiredStatus` of `STOPPED` limits the results to tasks
    #   that Amazon ECS has set the desired status to `STOPPED`, which can be
    #   useful for debugging tasks that are not starting properly or have died
    #   or finished. The default status filter is `RUNNING`, which shows tasks
    #   that Amazon ECS has set the desired status to `RUNNING`.
    #
    #   <note markdown="1"> Although you can filter results based on a desired status of
    #   `PENDING`, this does not return any results because Amazon ECS never
    #   sets the desired status of a task to that value (only a task's
    #   `lastStatus` may have a value of `PENDING`).
    #
    #    </note>
    #
    # @option params [String] :launch_type
    #   The launch type for services to list.
    #
    # @return [Types::ListTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTasksResponse#task_arns #task_arns} => Array&lt;String&gt;
    #   * {Types::ListTasksResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list the tasks in a cluster
    #
    #   # This example lists all of the tasks in a cluster.
    #
    #   resp = client.list_tasks({
    #     cluster: "default", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_arns: [
    #       "arn:aws:ecs:us-east-1:012345678910:task/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84", 
    #       "arn:aws:ecs:us-east-1:012345678910:task/6b809ef6-c67e-4467-921f-ee261c15a0a1", 
    #     ], 
    #   }
    #
    # @example Example: To list the tasks on a particular container instance
    #
    #   # This example lists the tasks of a specified container instance. Specifying a ``containerInstance`` value limits  the 
    #   # results  to  tasks  that belong to that container instance.
    #
    #   resp = client.list_tasks({
    #     cluster: "default", 
    #     container_instance: "f6bbb147-5370-4ace-8c73-c7181ded911f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_arns: [
    #       "arn:aws:ecs:us-east-1:012345678910:task/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tasks({
    #     cluster: "String",
    #     container_instance: "String",
    #     family: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     started_by: "String",
    #     service_name: "String",
    #     desired_status: "RUNNING", # accepts RUNNING, PENDING, STOPPED
    #     launch_type: "EC2", # accepts EC2, FARGATE
    #   })
    #
    # @example Response structure
    #
    #   resp.task_arns #=> Array
    #   resp.task_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTasks AWS API Documentation
    #
    # @overload list_tasks(params = {})
    # @param [Hash] params ({})
    def list_tasks(params = {}, options = {})
      req = build_request(:list_tasks, params)
      req.send_request(options)
    end

    # Create or update an attribute on an Amazon ECS resource. If the
    # attribute does not exist, it is created. If the attribute exists, its
    # value is replaced with the specified value. To delete an attribute,
    # use DeleteAttributes. For more information, see [Attributes][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   contains the resource to apply attributes. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, Array<Types::Attribute>] :attributes
    #   The attributes to apply to your resource. You can specify up to 10
    #   custom attributes per resource. You can specify up to 10 attributes in
    #   a single call.
    #
    # @return [Types::PutAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAttributesResponse#attributes #attributes} => Array&lt;Types::Attribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_attributes({
    #     cluster: "String",
    #     attributes: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance", # accepts container-instance
    #         target_id: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].value #=> String
    #   resp.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.attributes[0].target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAttributes AWS API Documentation
    #
    # @overload put_attributes(params = {})
    # @param [Hash] params ({})
    def put_attributes(params = {}, options = {})
      req = build_request(:put_attributes, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action is only used by the Amazon ECS agent, and it is not
    # intended for use outside of the agent.
    #
    #  </note>
    #
    # Registers an EC2 instance into the specified cluster. This instance
    # becomes available to place containers on.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster with
    #   which to register your container instance. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [String] :instance_identity_document
    #   The instance identity document for the EC2 instance to register. This
    #   document can be found by running the following command from the
    #   instance: `curl
    #   http://169.254.169.254/latest/dynamic/instance-identity/document/`
    #
    # @option params [String] :instance_identity_document_signature
    #   The instance identity document signature for the EC2 instance to
    #   register. This signature can be found by running the following command
    #   from the instance: `curl
    #   http://169.254.169.254/latest/dynamic/instance-identity/signature/`
    #
    # @option params [Array<Types::Resource>] :total_resources
    #   The resources available on the instance.
    #
    # @option params [Types::VersionInfo] :version_info
    #   The version information for the Amazon ECS container agent and Docker
    #   daemon running on the container instance.
    #
    # @option params [String] :container_instance_arn
    #   The ARN of the container instance (if it was previously registered).
    #
    # @option params [Array<Types::Attribute>] :attributes
    #   The container instance attributes that this container instance
    #   supports.
    #
    # @return [Types::RegisterContainerInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterContainerInstanceResponse#container_instance #container_instance} => Types::ContainerInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_container_instance({
    #     cluster: "String",
    #     instance_identity_document: "String",
    #     instance_identity_document_signature: "String",
    #     total_resources: [
    #       {
    #         name: "String",
    #         type: "String",
    #         double_value: 1.0,
    #         long_value: 1,
    #         integer_value: 1,
    #         string_set_value: ["String"],
    #       },
    #     ],
    #     version_info: {
    #       agent_version: "String",
    #       agent_hash: "String",
    #       docker_version: "String",
    #     },
    #     container_instance_arn: "String",
    #     attributes: [
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance", # accepts container-instance
    #         target_id: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instance.container_instance_arn #=> String
    #   resp.container_instance.ec2_instance_id #=> String
    #   resp.container_instance.version #=> Integer
    #   resp.container_instance.version_info.agent_version #=> String
    #   resp.container_instance.version_info.agent_hash #=> String
    #   resp.container_instance.version_info.docker_version #=> String
    #   resp.container_instance.remaining_resources #=> Array
    #   resp.container_instance.remaining_resources[0].name #=> String
    #   resp.container_instance.remaining_resources[0].type #=> String
    #   resp.container_instance.remaining_resources[0].double_value #=> Float
    #   resp.container_instance.remaining_resources[0].long_value #=> Integer
    #   resp.container_instance.remaining_resources[0].integer_value #=> Integer
    #   resp.container_instance.remaining_resources[0].string_set_value #=> Array
    #   resp.container_instance.remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.registered_resources #=> Array
    #   resp.container_instance.registered_resources[0].name #=> String
    #   resp.container_instance.registered_resources[0].type #=> String
    #   resp.container_instance.registered_resources[0].double_value #=> Float
    #   resp.container_instance.registered_resources[0].long_value #=> Integer
    #   resp.container_instance.registered_resources[0].integer_value #=> Integer
    #   resp.container_instance.registered_resources[0].string_set_value #=> Array
    #   resp.container_instance.registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.status #=> String
    #   resp.container_instance.agent_connected #=> Boolean
    #   resp.container_instance.running_tasks_count #=> Integer
    #   resp.container_instance.pending_tasks_count #=> Integer
    #   resp.container_instance.agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instance.attributes #=> Array
    #   resp.container_instance.attributes[0].name #=> String
    #   resp.container_instance.attributes[0].value #=> String
    #   resp.container_instance.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instance.attributes[0].target_id #=> String
    #   resp.container_instance.registered_at #=> Time
    #   resp.container_instance.attachments #=> Array
    #   resp.container_instance.attachments[0].id #=> String
    #   resp.container_instance.attachments[0].type #=> String
    #   resp.container_instance.attachments[0].status #=> String
    #   resp.container_instance.attachments[0].details #=> Array
    #   resp.container_instance.attachments[0].details[0].name #=> String
    #   resp.container_instance.attachments[0].details[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterContainerInstance AWS API Documentation
    #
    # @overload register_container_instance(params = {})
    # @param [Hash] params ({})
    def register_container_instance(params = {}, options = {})
      req = build_request(:register_container_instance, params)
      req.send_request(options)
    end

    # Registers a new task definition from the supplied `family` and
    # `containerDefinitions`. Optionally, you can add data volumes to your
    # containers with the `volumes` parameter. For more information about
    # task definition parameters and defaults, see [Amazon ECS Task
    # Definitions][1] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    # You can specify an IAM role for your task with the `taskRoleArn`
    # parameter. When you specify an IAM role for a task, its containers can
    # then use the latest versions of the AWS CLI or SDKs to make API
    # requests to the AWS services that are specified in the IAM policy
    # associated with the role. For more information, see [IAM Roles for
    # Tasks][2] in the *Amazon Elastic Container Service Developer Guide*.
    #
    # You can specify a Docker networking mode for the containers in your
    # task definition with the `networkMode` parameter. The available
    # network modes correspond to those described in [Network settings][3]
    # in the Docker run reference. If you specify the `awsvpc` network mode,
    # the task is allocated an elastic network interface, and you must
    # specify a NetworkConfiguration when you create a service or run a task
    # with the task definition. For more information, see [Task
    # Networking][4] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html
    # [2]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    # [3]: https://docs.docker.com/engine/reference/run/#/network-settings
    # [4]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #
    # @option params [required, String] :family
    #   You must specify a `family` for a task definition, which allows you to
    #   track multiple versions of the same task definition. The `family` is
    #   used as a name for your task definition. Up to 255 letters (uppercase
    #   and lowercase), numbers, hyphens, and underscores are allowed.
    #
    # @option params [String] :task_role_arn
    #   The short name or full Amazon Resource Name (ARN) of the IAM role that
    #   containers in this task can assume. All containers in this task are
    #   granted the permissions that are specified in this role. For more
    #   information, see [IAM Roles for Tasks][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    #
    # @option params [String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that the
    #   Amazon ECS container agent and the Docker daemon can assume.
    #
    # @option params [String] :network_mode
    #   The Docker networking mode to use for the containers in the task. The
    #   valid values are `none`, `bridge`, `awsvpc`, and `host`. The default
    #   Docker network mode is `bridge`. If using the Fargate launch type, the
    #   `awsvpc` network mode is required. If using the EC2 launch type, any
    #   network mode can be used. If the network mode is set to `none`, you
    #   can't specify port mappings in your container definitions, and the
    #   task's containers do not have external connectivity. The `host` and
    #   `awsvpc` network modes offer the highest networking performance for
    #   containers because they use the EC2 network stack instead of the
    #   virtualized network stack provided by the `bridge` mode.
    #
    #   With the `host` and `awsvpc` network modes, exposed container ports
    #   are mapped directly to the corresponding host port (for the `host`
    #   network mode) or the attached elastic network interface port (for the
    #   `awsvpc` network mode), so you cannot take advantage of dynamic host
    #   port mappings.
    #
    #   If the network mode is `awsvpc`, the task is allocated an Elastic
    #   Network Interface, and you must specify a NetworkConfiguration when
    #   you create a service or run a task with the task definition. For more
    #   information, see [Task Networking][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #   If the network mode is `host`, you can't run multiple instantiations
    #   of the same task on a single container instance when port mappings are
    #   used.
    #
    #   Docker for Windows uses different network modes than Docker for Linux.
    #   When you register a task definition with Windows containers, you must
    #   not specify a network mode.
    #
    #   For more information, see [Network settings][2] in the *Docker run
    #   reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   [2]: https://docs.docker.com/engine/reference/run/#network-settings
    #
    # @option params [required, Array<Types::ContainerDefinition>] :container_definitions
    #   A list of container definitions in JSON format that describe the
    #   different containers that make up your task.
    #
    # @option params [Array<Types::Volume>] :volumes
    #   A list of volume definitions in JSON format that containers in your
    #   task may use.
    #
    # @option params [Array<Types::TaskDefinitionPlacementConstraint>] :placement_constraints
    #   An array of placement constraint objects to use for the task. You can
    #   specify a maximum of 10 constraints per task (this limit includes
    #   constraints in the task definition and those specified at run time).
    #
    # @option params [Array<String>] :requires_compatibilities
    #   The launch type required by the task. If no value is specified, it
    #   defaults to `EC2`.
    #
    # @option params [String] :cpu
    #   The number of CPU units used by the task. It can be expressed as an
    #   integer using CPU units, for example `1024`, or as a string using
    #   vCPUs, for example `1 vCPU` or `1 vcpu`, in a task definition. String
    #   values are converted to an integer indicating the CPU units when the
    #   task definition is registered.
    #
    #   <note markdown="1"> Task-level CPU and memory parameters are ignored for Windows
    #   containers. We recommend specifying container-level resources for
    #   Windows containers.
    #
    #    </note>
    #
    #   If using the EC2 launch type, this field is optional. Supported values
    #   are between `128` CPU units (`0.125` vCPUs) and `10240` CPU units
    #   (`10` vCPUs).
    #
    #   If using the Fargate launch type, this field is required and you must
    #   use one of the following values, which determines your range of
    #   supported values for the `memory` parameter:
    #
    #   * 256 (.25 vCPU) - Available `memory` values: 512 (0.5 GB), 1024 (1
    #     GB), 2048 (2 GB)
    #
    #   * 512 (.5 vCPU) - Available `memory` values: 1024 (1 GB), 2048 (2 GB),
    #     3072 (3 GB), 4096 (4 GB)
    #
    #   * 1024 (1 vCPU) - Available `memory` values: 2048 (2 GB), 3072 (3 GB),
    #     4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)
    #
    #   * 2048 (2 vCPU) - Available `memory` values: Between 4096 (4 GB) and
    #     16384 (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: Between 8192 (8 GB) and
    #     30720 (30 GB) in increments of 1024 (1 GB)
    #
    # @option params [String] :memory
    #   The amount of memory (in MiB) used by the task. It can be expressed as
    #   an integer using MiB, for example `1024`, or as a string using GB, for
    #   example `1GB` or `1 GB`, in a task definition. String values are
    #   converted to an integer indicating the MiB when the task definition is
    #   registered.
    #
    #   <note markdown="1"> Task-level CPU and memory parameters are ignored for Windows
    #   containers. We recommend specifying container-level resources for
    #   Windows containers.
    #
    #    </note>
    #
    #   If using the EC2 launch type, this field is optional.
    #
    #   If using the Fargate launch type, this field is required and you must
    #   use one of the following values, which determines your range of
    #   supported values for the `cpu` parameter:
    #
    #   * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available `cpu` values: 256
    #     (.25 vCPU)
    #
    #   * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available `cpu`
    #     values: 512 (.5 vCPU)
    #
    #   * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
    #     7168 (7 GB), 8192 (8 GB) - Available `cpu` values: 1024 (1 vCPU)
    #
    #   * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) -
    #     Available `cpu` values: 2048 (2 vCPU)
    #
    #   * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) -
    #     Available `cpu` values: 4096 (4 vCPU)
    #
    # @return [Types::RegisterTaskDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTaskDefinitionResponse#task_definition #task_definition} => Types::TaskDefinition
    #
    #
    # @example Example: To register a task definition
    #
    #   # This example registers a task definition to the specified family.
    #
    #   resp = client.register_task_definition({
    #     container_definitions: [
    #       {
    #         name: "sleep", 
    #         command: [
    #           "sleep", 
    #           "360", 
    #         ], 
    #         cpu: 10, 
    #         essential: true, 
    #         image: "busybox", 
    #         memory: 10, 
    #       }, 
    #     ], 
    #     family: "sleep360", 
    #     task_role_arn: "", 
    #     volumes: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_definition: {
    #       container_definitions: [
    #         {
    #           name: "sleep", 
    #           command: [
    #             "sleep", 
    #             "360", 
    #           ], 
    #           cpu: 10, 
    #           environment: [
    #           ], 
    #           essential: true, 
    #           image: "busybox", 
    #           memory: 10, 
    #           mount_points: [
    #           ], 
    #           port_mappings: [
    #           ], 
    #           volumes_from: [
    #           ], 
    #         }, 
    #       ], 
    #       family: "sleep360", 
    #       revision: 1, 
    #       task_definition_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:19", 
    #       volumes: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_task_definition({
    #     family: "String", # required
    #     task_role_arn: "String",
    #     execution_role_arn: "String",
    #     network_mode: "bridge", # accepts bridge, host, awsvpc, none
    #     container_definitions: [ # required
    #       {
    #         name: "String",
    #         image: "String",
    #         repository_credentials: {
    #           credentials_parameter: "String", # required
    #         },
    #         cpu: 1,
    #         memory: 1,
    #         memory_reservation: 1,
    #         links: ["String"],
    #         port_mappings: [
    #           {
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #           },
    #         ],
    #         essential: false,
    #         entry_point: ["String"],
    #         command: ["String"],
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         mount_points: [
    #           {
    #             source_volume: "String",
    #             container_path: "String",
    #             read_only: false,
    #           },
    #         ],
    #         volumes_from: [
    #           {
    #             source_container: "String",
    #             read_only: false,
    #           },
    #         ],
    #         linux_parameters: {
    #           capabilities: {
    #             add: ["String"],
    #             drop: ["String"],
    #           },
    #           devices: [
    #             {
    #               host_path: "String", # required
    #               container_path: "String",
    #               permissions: ["read"], # accepts read, write, mknod
    #             },
    #           ],
    #           init_process_enabled: false,
    #           shared_memory_size: 1,
    #           tmpfs: [
    #             {
    #               container_path: "String", # required
    #               size: 1, # required
    #               mount_options: ["String"],
    #             },
    #           ],
    #         },
    #         hostname: "String",
    #         user: "String",
    #         working_directory: "String",
    #         disable_networking: false,
    #         privileged: false,
    #         readonly_root_filesystem: false,
    #         dns_servers: ["String"],
    #         dns_search_domains: ["String"],
    #         extra_hosts: [
    #           {
    #             hostname: "String", # required
    #             ip_address: "String", # required
    #           },
    #         ],
    #         docker_security_options: ["String"],
    #         interactive: false,
    #         pseudo_terminal: false,
    #         docker_labels: {
    #           "String" => "String",
    #         },
    #         ulimits: [
    #           {
    #             name: "core", # required, accepts core, cpu, data, fsize, locks, memlock, msgqueue, nice, nofile, nproc, rss, rtprio, rttime, sigpending, stack
    #             soft_limit: 1, # required
    #             hard_limit: 1, # required
    #           },
    #         ],
    #         log_configuration: {
    #           log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #           options: {
    #             "String" => "String",
    #           },
    #         },
    #         health_check: {
    #           command: ["String"], # required
    #           interval: 1,
    #           timeout: 1,
    #           retries: 1,
    #           start_period: 1,
    #         },
    #         system_controls: [
    #           {
    #             namespace: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     volumes: [
    #       {
    #         name: "String",
    #         host: {
    #           source_path: "String",
    #         },
    #         docker_volume_configuration: {
    #           scope: "task", # accepts task, shared
    #           autoprovision: false,
    #           driver: "String",
    #           driver_opts: {
    #             "String" => "String",
    #           },
    #           labels: {
    #             "String" => "String",
    #           },
    #         },
    #       },
    #     ],
    #     placement_constraints: [
    #       {
    #         type: "memberOf", # accepts memberOf
    #         expression: "String",
    #       },
    #     ],
    #     requires_compatibilities: ["EC2"], # accepts EC2, FARGATE
    #     cpu: "String",
    #     memory: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_definition.task_definition_arn #=> String
    #   resp.task_definition.container_definitions #=> Array
    #   resp.task_definition.container_definitions[0].name #=> String
    #   resp.task_definition.container_definitions[0].image #=> String
    #   resp.task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.task_definition.container_definitions[0].cpu #=> Integer
    #   resp.task_definition.container_definitions[0].memory #=> Integer
    #   resp.task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.task_definition.container_definitions[0].links #=> Array
    #   resp.task_definition.container_definitions[0].links[0] #=> String
    #   resp.task_definition.container_definitions[0].port_mappings #=> Array
    #   resp.task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.task_definition.container_definitions[0].essential #=> Boolean
    #   resp.task_definition.container_definitions[0].entry_point #=> Array
    #   resp.task_definition.container_definitions[0].entry_point[0] #=> String
    #   resp.task_definition.container_definitions[0].command #=> Array
    #   resp.task_definition.container_definitions[0].command[0] #=> String
    #   resp.task_definition.container_definitions[0].environment #=> Array
    #   resp.task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.task_definition.container_definitions[0].mount_points #=> Array
    #   resp.task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].volumes_from #=> Array
    #   resp.task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of "read", "write", "mknod"
    #   resp.task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.task_definition.container_definitions[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].user #=> String
    #   resp.task_definition.container_definitions[0].working_directory #=> String
    #   resp.task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.task_definition.container_definitions[0].dns_servers #=> Array
    #   resp.task_definition.container_definitions[0].dns_servers[0] #=> String
    #   resp.task_definition.container_definitions[0].dns_search_domains #=> Array
    #   resp.task_definition.container_definitions[0].dns_search_domains[0] #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts #=> Array
    #   resp.task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.task_definition.container_definitions[0].docker_security_options #=> Array
    #   resp.task_definition.container_definitions[0].docker_security_options[0] #=> String
    #   resp.task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.task_definition.container_definitions[0].docker_labels #=> Hash
    #   resp.task_definition.container_definitions[0].docker_labels["String"] #=> String
    #   resp.task_definition.container_definitions[0].ulimits #=> Array
    #   resp.task_definition.container_definitions[0].ulimits[0].name #=> String, one of "core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"
    #   resp.task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.task_definition.container_definitions[0].log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"
    #   resp.task_definition.container_definitions[0].log_configuration.options #=> Hash
    #   resp.task_definition.container_definitions[0].log_configuration.options["String"] #=> String
    #   resp.task_definition.container_definitions[0].health_check.command #=> Array
    #   resp.task_definition.container_definitions[0].health_check.command[0] #=> String
    #   resp.task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.task_definition.container_definitions[0].system_controls #=> Array
    #   resp.task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.task_definition.family #=> String
    #   resp.task_definition.task_role_arn #=> String
    #   resp.task_definition.execution_role_arn #=> String
    #   resp.task_definition.network_mode #=> String, one of "bridge", "host", "awsvpc", "none"
    #   resp.task_definition.revision #=> Integer
    #   resp.task_definition.volumes #=> Array
    #   resp.task_definition.volumes[0].name #=> String
    #   resp.task_definition.volumes[0].host.source_path #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.scope #=> String, one of "task", "shared"
    #   resp.task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts["String"] #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels["String"] #=> String
    #   resp.task_definition.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.task_definition.requires_attributes #=> Array
    #   resp.task_definition.requires_attributes[0].name #=> String
    #   resp.task_definition.requires_attributes[0].value #=> String
    #   resp.task_definition.requires_attributes[0].target_type #=> String, one of "container-instance"
    #   resp.task_definition.requires_attributes[0].target_id #=> String
    #   resp.task_definition.placement_constraints #=> Array
    #   resp.task_definition.placement_constraints[0].type #=> String, one of "memberOf"
    #   resp.task_definition.placement_constraints[0].expression #=> String
    #   resp.task_definition.compatibilities #=> Array
    #   resp.task_definition.compatibilities[0] #=> String, one of "EC2", "FARGATE"
    #   resp.task_definition.requires_compatibilities #=> Array
    #   resp.task_definition.requires_compatibilities[0] #=> String, one of "EC2", "FARGATE"
    #   resp.task_definition.cpu #=> String
    #   resp.task_definition.memory #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterTaskDefinition AWS API Documentation
    #
    # @overload register_task_definition(params = {})
    # @param [Hash] params ({})
    def register_task_definition(params = {}, options = {})
      req = build_request(:register_task_definition, params)
      req.send_request(options)
    end

    # Starts a new task using the specified task definition.
    #
    # You can allow Amazon ECS to place tasks for you, or you can customize
    # how Amazon ECS places tasks using placement constraints and placement
    # strategies. For more information, see [Scheduling Tasks][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    # Alternatively, you can use StartTask to use your own scheduler or
    # place tasks manually on specific container instances.
    #
    # The Amazon ECS API follows an eventual consistency model, due to the
    # distributed nature of the system supporting the API. This means that
    # the result of an API command you run that affects your Amazon ECS
    # resources might not be immediately visible to all subsequent commands
    # you run. You should keep this in mind when you carry out an API
    # command that immediately follows a previous API command.
    #
    # To manage eventual consistency, you can do the following:
    #
    # * Confirm the state of the resource before you run a command to modify
    #   it. Run the DescribeTasks command using an exponential backoff
    #   algorithm to ensure that you allow enough time for the previous
    #   command to propagate through the system. To do this, run the
    #   DescribeTasks command repeatedly, starting with a couple of seconds
    #   of wait time and increasing gradually up to five minutes of wait
    #   time.
    #
    # * Add wait time between subsequent commands, even if the DescribeTasks
    #   command returns an accurate response. Apply an exponential backoff
    #   algorithm starting with a couple of seconds of wait time, and
    #   increase gradually up to about five minutes of wait time.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster on
    #   which to run your task. If you do not specify a cluster, the default
    #   cluster is assumed.
    #
    # @option params [required, String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run. If a `revision` is not specified, the latest
    #   `ACTIVE` revision is used.
    #
    # @option params [Types::TaskOverride] :overrides
    #   A list of container overrides in JSON format that specify the name of
    #   a container in the specified task definition and the overrides it
    #   should receive. You can override the default command for a container
    #   (that is specified in the task definition or Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the task definition or Docker image)
    #   on a container or add new environment variables to it with an
    #   `environment` override.
    #
    #   <note markdown="1"> A total of 8192 characters are allowed for overrides. This limit
    #   includes the JSON formatting characters of the override structure.
    #
    #    </note>
    #
    # @option params [Integer] :count
    #   The number of instantiations of the specified task to place on your
    #   cluster. You can specify up to 10 tasks per call.
    #
    # @option params [String] :started_by
    #   An optional tag specified when a task is started. For example if you
    #   automatically trigger a task to run a batch process job, you could
    #   apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a ListTasks call with the
    #   `startedBy` value. Up to 36 letters (uppercase and lowercase),
    #   numbers, hyphens, and underscores are allowed.
    #
    #   If a task is started by an Amazon ECS service, then the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
    #
    # @option params [String] :group
    #   The name of the task group to associate with the task. The default
    #   value is the family name of the task definition (for example,
    #   family:my-family-name).
    #
    # @option params [Array<Types::PlacementConstraint>] :placement_constraints
    #   An array of placement constraint objects to use for the task. You can
    #   specify up to 10 constraints per task (including constraints in the
    #   task definition and those specified at run time).
    #
    # @option params [Array<Types::PlacementStrategy>] :placement_strategy
    #   The placement strategy objects to use for the task. You can specify a
    #   maximum of five strategy rules per task.
    #
    # @option params [String] :launch_type
    #   The launch type on which to run your task.
    #
    # @option params [String] :platform_version
    #   The platform version on which to run your task. If one is not
    #   specified, the latest version is used by default.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The network configuration for the task. This parameter is required for
    #   task definitions that use the `awsvpc` network mode to receive their
    #   own Elastic Network Interface, and it is not supported for other
    #   network modes. For more information, see [Task Networking][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #
    # @return [Types::RunTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RunTaskResponse#tasks #tasks} => Array&lt;Types::Task&gt;
    #   * {Types::RunTaskResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To run a task on your default cluster
    #
    #   # This example runs the specified task definition on your default cluster.
    #
    #   resp = client.run_task({
    #     cluster: "default", 
    #     task_definition: "sleep360:1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tasks: [
    #       {
    #         container_instance_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/ffe3d344-77e2-476c-a4d0-bf560ad50acb", 
    #         containers: [
    #           {
    #             name: "sleep", 
    #             container_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:container/58591c8e-be29-4ddf-95aa-ee459d4c59fd", 
    #             last_status: "PENDING", 
    #             task_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0", 
    #           }, 
    #         ], 
    #         desired_status: "RUNNING", 
    #         last_status: "PENDING", 
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "sleep", 
    #             }, 
    #           ], 
    #         }, 
    #         task_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0", 
    #         task_definition_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_task({
    #     cluster: "String",
    #     task_definition: "String", # required
    #     overrides: {
    #       container_overrides: [
    #         {
    #           name: "String",
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #         },
    #       ],
    #       task_role_arn: "String",
    #       execution_role_arn: "String",
    #     },
    #     count: 1,
    #     started_by: "String",
    #     group: "String",
    #     placement_constraints: [
    #       {
    #         type: "distinctInstance", # accepts distinctInstance, memberOf
    #         expression: "String",
    #       },
    #     ],
    #     placement_strategy: [
    #       {
    #         type: "random", # accepts random, spread, binpack
    #         field: "String",
    #       },
    #     ],
    #     launch_type: "EC2", # accepts EC2, FARGATE
    #     platform_version: "String",
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].cluster_arn #=> String
    #   resp.tasks[0].task_definition_arn #=> String
    #   resp.tasks[0].container_instance_arn #=> String
    #   resp.tasks[0].overrides.container_overrides #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].command #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].command[0] #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].cpu #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.tasks[0].overrides.task_role_arn #=> String
    #   resp.tasks[0].overrides.execution_role_arn #=> String
    #   resp.tasks[0].last_status #=> String
    #   resp.tasks[0].desired_status #=> String
    #   resp.tasks[0].cpu #=> String
    #   resp.tasks[0].memory #=> String
    #   resp.tasks[0].containers #=> Array
    #   resp.tasks[0].containers[0].container_arn #=> String
    #   resp.tasks[0].containers[0].task_arn #=> String
    #   resp.tasks[0].containers[0].name #=> String
    #   resp.tasks[0].containers[0].last_status #=> String
    #   resp.tasks[0].containers[0].exit_code #=> Integer
    #   resp.tasks[0].containers[0].reason #=> String
    #   resp.tasks[0].containers[0].network_bindings #=> Array
    #   resp.tasks[0].containers[0].network_bindings[0].bind_ip #=> String
    #   resp.tasks[0].containers[0].network_bindings[0].container_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].host_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.tasks[0].containers[0].network_interfaces #=> Array
    #   resp.tasks[0].containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].private_ipv_4_address #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.tasks[0].containers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.tasks[0].started_by #=> String
    #   resp.tasks[0].version #=> Integer
    #   resp.tasks[0].stopped_reason #=> String
    #   resp.tasks[0].connectivity #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.tasks[0].connectivity_at #=> Time
    #   resp.tasks[0].pull_started_at #=> Time
    #   resp.tasks[0].pull_stopped_at #=> Time
    #   resp.tasks[0].execution_stopped_at #=> Time
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].started_at #=> Time
    #   resp.tasks[0].stopping_at #=> Time
    #   resp.tasks[0].stopped_at #=> Time
    #   resp.tasks[0].group #=> String
    #   resp.tasks[0].launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.tasks[0].platform_version #=> String
    #   resp.tasks[0].attachments #=> Array
    #   resp.tasks[0].attachments[0].id #=> String
    #   resp.tasks[0].attachments[0].type #=> String
    #   resp.tasks[0].attachments[0].status #=> String
    #   resp.tasks[0].attachments[0].details #=> Array
    #   resp.tasks[0].attachments[0].details[0].name #=> String
    #   resp.tasks[0].attachments[0].details[0].value #=> String
    #   resp.tasks[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RunTask AWS API Documentation
    #
    # @overload run_task(params = {})
    # @param [Hash] params ({})
    def run_task(params = {}, options = {})
      req = build_request(:run_task, params)
      req.send_request(options)
    end

    # Starts a new task from the specified task definition on the specified
    # container instance or instances.
    #
    # Alternatively, you can use RunTask to place tasks for you. For more
    # information, see [Scheduling Tasks][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster on
    #   which to start your task. If you do not specify a cluster, the default
    #   cluster is assumed.
    #
    # @option params [required, String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to start. If a `revision` is not specified, the latest
    #   `ACTIVE` revision is used.
    #
    # @option params [Types::TaskOverride] :overrides
    #   A list of container overrides in JSON format that specify the name of
    #   a container in the specified task definition and the overrides it
    #   should receive. You can override the default command for a container
    #   (that is specified in the task definition or Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the task definition or Docker image)
    #   on a container or add new environment variables to it with an
    #   `environment` override.
    #
    #   <note markdown="1"> A total of 8192 characters are allowed for overrides. This limit
    #   includes the JSON formatting characters of the override structure.
    #
    #    </note>
    #
    # @option params [required, Array<String>] :container_instances
    #   The container instance IDs or full ARN entries for the container
    #   instances on which you would like to place your task. You can specify
    #   up to 10 container instances.
    #
    # @option params [String] :started_by
    #   An optional tag specified when a task is started. For example if you
    #   automatically trigger a task to run a batch process job, you could
    #   apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a ListTasks call with the
    #   `startedBy` value. Up to 36 letters (uppercase and lowercase),
    #   numbers, hyphens, and underscores are allowed.
    #
    #   If a task is started by an Amazon ECS service, then the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
    #
    # @option params [String] :group
    #   The name of the task group to associate with the task. The default
    #   value is the family name of the task definition (for example,
    #   family:my-family-name).
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The VPC subnet and security group configuration for tasks that receive
    #   their own elastic network interface by using the `awsvpc` networking
    #   mode.
    #
    # @return [Types::StartTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTaskResponse#tasks #tasks} => Array&lt;Types::Task&gt;
    #   * {Types::StartTaskResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_task({
    #     cluster: "String",
    #     task_definition: "String", # required
    #     overrides: {
    #       container_overrides: [
    #         {
    #           name: "String",
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #         },
    #       ],
    #       task_role_arn: "String",
    #       execution_role_arn: "String",
    #     },
    #     container_instances: ["String"], # required
    #     started_by: "String",
    #     group: "String",
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].cluster_arn #=> String
    #   resp.tasks[0].task_definition_arn #=> String
    #   resp.tasks[0].container_instance_arn #=> String
    #   resp.tasks[0].overrides.container_overrides #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].command #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].command[0] #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].cpu #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.tasks[0].overrides.task_role_arn #=> String
    #   resp.tasks[0].overrides.execution_role_arn #=> String
    #   resp.tasks[0].last_status #=> String
    #   resp.tasks[0].desired_status #=> String
    #   resp.tasks[0].cpu #=> String
    #   resp.tasks[0].memory #=> String
    #   resp.tasks[0].containers #=> Array
    #   resp.tasks[0].containers[0].container_arn #=> String
    #   resp.tasks[0].containers[0].task_arn #=> String
    #   resp.tasks[0].containers[0].name #=> String
    #   resp.tasks[0].containers[0].last_status #=> String
    #   resp.tasks[0].containers[0].exit_code #=> Integer
    #   resp.tasks[0].containers[0].reason #=> String
    #   resp.tasks[0].containers[0].network_bindings #=> Array
    #   resp.tasks[0].containers[0].network_bindings[0].bind_ip #=> String
    #   resp.tasks[0].containers[0].network_bindings[0].container_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].host_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.tasks[0].containers[0].network_interfaces #=> Array
    #   resp.tasks[0].containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].private_ipv_4_address #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.tasks[0].containers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.tasks[0].started_by #=> String
    #   resp.tasks[0].version #=> Integer
    #   resp.tasks[0].stopped_reason #=> String
    #   resp.tasks[0].connectivity #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.tasks[0].connectivity_at #=> Time
    #   resp.tasks[0].pull_started_at #=> Time
    #   resp.tasks[0].pull_stopped_at #=> Time
    #   resp.tasks[0].execution_stopped_at #=> Time
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].started_at #=> Time
    #   resp.tasks[0].stopping_at #=> Time
    #   resp.tasks[0].stopped_at #=> Time
    #   resp.tasks[0].group #=> String
    #   resp.tasks[0].launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.tasks[0].platform_version #=> String
    #   resp.tasks[0].attachments #=> Array
    #   resp.tasks[0].attachments[0].id #=> String
    #   resp.tasks[0].attachments[0].type #=> String
    #   resp.tasks[0].attachments[0].status #=> String
    #   resp.tasks[0].attachments[0].details #=> Array
    #   resp.tasks[0].attachments[0].details[0].name #=> String
    #   resp.tasks[0].attachments[0].details[0].value #=> String
    #   resp.tasks[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StartTask AWS API Documentation
    #
    # @overload start_task(params = {})
    # @param [Hash] params ({})
    def start_task(params = {}, options = {})
      req = build_request(:start_task, params)
      req.send_request(options)
    end

    # Stops a running task.
    #
    # When StopTask is called on a task, the equivalent of `docker stop` is
    # issued to the containers running in the task. This results in a
    # `SIGTERM` and a default 30-second timeout, after which `SIGKILL` is
    # sent and the containers are forcibly stopped. If the container handles
    # the `SIGTERM` gracefully and exits within 30 seconds from receiving
    # it, no `SIGKILL` is sent.
    #
    # <note markdown="1"> The default 30-second timeout can be configured on the Amazon ECS
    # container agent with the `ECS_CONTAINER_STOP_TIMEOUT` variable. For
    # more information, see [Amazon ECS Container Agent Configuration][1] in
    # the *Amazon Elastic Container Service Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the task to stop. If you do not specify a cluster, the default
    #   cluster is assumed.
    #
    # @option params [required, String] :task
    #   The task ID or full ARN entry of the task to stop.
    #
    # @option params [String] :reason
    #   An optional message specified when a task is stopped. For example, if
    #   you are using a custom scheduler, you can use this parameter to
    #   specify the reason for stopping the task here, and the message appears
    #   in subsequent DescribeTasks API operations on this task. Up to 255
    #   characters are allowed in this message.
    #
    # @return [Types::StopTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopTaskResponse#task #task} => Types::Task
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_task({
    #     cluster: "String",
    #     task: "String", # required
    #     reason: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.task.task_arn #=> String
    #   resp.task.cluster_arn #=> String
    #   resp.task.task_definition_arn #=> String
    #   resp.task.container_instance_arn #=> String
    #   resp.task.overrides.container_overrides #=> Array
    #   resp.task.overrides.container_overrides[0].name #=> String
    #   resp.task.overrides.container_overrides[0].command #=> Array
    #   resp.task.overrides.container_overrides[0].command[0] #=> String
    #   resp.task.overrides.container_overrides[0].environment #=> Array
    #   resp.task.overrides.container_overrides[0].environment[0].name #=> String
    #   resp.task.overrides.container_overrides[0].environment[0].value #=> String
    #   resp.task.overrides.container_overrides[0].cpu #=> Integer
    #   resp.task.overrides.container_overrides[0].memory #=> Integer
    #   resp.task.overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.task.overrides.task_role_arn #=> String
    #   resp.task.overrides.execution_role_arn #=> String
    #   resp.task.last_status #=> String
    #   resp.task.desired_status #=> String
    #   resp.task.cpu #=> String
    #   resp.task.memory #=> String
    #   resp.task.containers #=> Array
    #   resp.task.containers[0].container_arn #=> String
    #   resp.task.containers[0].task_arn #=> String
    #   resp.task.containers[0].name #=> String
    #   resp.task.containers[0].last_status #=> String
    #   resp.task.containers[0].exit_code #=> Integer
    #   resp.task.containers[0].reason #=> String
    #   resp.task.containers[0].network_bindings #=> Array
    #   resp.task.containers[0].network_bindings[0].bind_ip #=> String
    #   resp.task.containers[0].network_bindings[0].container_port #=> Integer
    #   resp.task.containers[0].network_bindings[0].host_port #=> Integer
    #   resp.task.containers[0].network_bindings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.task.containers[0].network_interfaces #=> Array
    #   resp.task.containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.task.containers[0].network_interfaces[0].private_ipv_4_address #=> String
    #   resp.task.containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.task.containers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.task.started_by #=> String
    #   resp.task.version #=> Integer
    #   resp.task.stopped_reason #=> String
    #   resp.task.connectivity #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.task.connectivity_at #=> Time
    #   resp.task.pull_started_at #=> Time
    #   resp.task.pull_stopped_at #=> Time
    #   resp.task.execution_stopped_at #=> Time
    #   resp.task.created_at #=> Time
    #   resp.task.started_at #=> Time
    #   resp.task.stopping_at #=> Time
    #   resp.task.stopped_at #=> Time
    #   resp.task.group #=> String
    #   resp.task.launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.task.platform_version #=> String
    #   resp.task.attachments #=> Array
    #   resp.task.attachments[0].id #=> String
    #   resp.task.attachments[0].type #=> String
    #   resp.task.attachments[0].status #=> String
    #   resp.task.attachments[0].details #=> Array
    #   resp.task.attachments[0].details[0].name #=> String
    #   resp.task.attachments[0].details[0].value #=> String
    #   resp.task.health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopTask AWS API Documentation
    #
    # @overload stop_task(params = {})
    # @param [Hash] params ({})
    def stop_task(params = {}, options = {})
      req = build_request(:stop_task, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action is only used by the Amazon ECS agent, and it is not
    # intended for use outside of the agent.
    #
    #  </note>
    #
    # Sent to acknowledge that a container changed states.
    #
    # @option params [String] :cluster
    #   The short name or full ARN of the cluster that hosts the container.
    #
    # @option params [String] :task
    #   The task ID or full Amazon Resource Name (ARN) of the task that hosts
    #   the container.
    #
    # @option params [String] :container_name
    #   The name of the container.
    #
    # @option params [String] :status
    #   The status of the state change request.
    #
    # @option params [Integer] :exit_code
    #   The exit code returned for the state change request.
    #
    # @option params [String] :reason
    #   The reason for the state change request.
    #
    # @option params [Array<Types::NetworkBinding>] :network_bindings
    #   The network bindings of the container.
    #
    # @return [Types::SubmitContainerStateChangeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitContainerStateChangeResponse#acknowledgment #acknowledgment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_container_state_change({
    #     cluster: "String",
    #     task: "String",
    #     container_name: "String",
    #     status: "String",
    #     exit_code: 1,
    #     reason: "String",
    #     network_bindings: [
    #       {
    #         bind_ip: "String",
    #         container_port: 1,
    #         host_port: 1,
    #         protocol: "tcp", # accepts tcp, udp
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.acknowledgment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitContainerStateChange AWS API Documentation
    #
    # @overload submit_container_state_change(params = {})
    # @param [Hash] params ({})
    def submit_container_state_change(params = {}, options = {})
      req = build_request(:submit_container_state_change, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action is only used by the Amazon ECS agent, and it is not
    # intended for use outside of the agent.
    #
    #  </note>
    #
    # Sent to acknowledge that a task changed states.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the task.
    #
    # @option params [String] :task
    #   The task ID or full ARN of the task in the state change request.
    #
    # @option params [String] :status
    #   The status of the state change request.
    #
    # @option params [String] :reason
    #   The reason for the state change request.
    #
    # @option params [Array<Types::ContainerStateChange>] :containers
    #   Any containers associated with the state change request.
    #
    # @option params [Array<Types::AttachmentStateChange>] :attachments
    #   Any attachments associated with the state change request.
    #
    # @option params [Time,DateTime,Date,Integer,String] :pull_started_at
    #   The Unix time stamp for when the container image pull began.
    #
    # @option params [Time,DateTime,Date,Integer,String] :pull_stopped_at
    #   The Unix time stamp for when the container image pull completed.
    #
    # @option params [Time,DateTime,Date,Integer,String] :execution_stopped_at
    #   The Unix time stamp for when the task execution stopped.
    #
    # @return [Types::SubmitTaskStateChangeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitTaskStateChangeResponse#acknowledgment #acknowledgment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_task_state_change({
    #     cluster: "String",
    #     task: "String",
    #     status: "String",
    #     reason: "String",
    #     containers: [
    #       {
    #         container_name: "String",
    #         exit_code: 1,
    #         network_bindings: [
    #           {
    #             bind_ip: "String",
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #           },
    #         ],
    #         reason: "String",
    #         status: "String",
    #       },
    #     ],
    #     attachments: [
    #       {
    #         attachment_arn: "String", # required
    #         status: "String", # required
    #       },
    #     ],
    #     pull_started_at: Time.now,
    #     pull_stopped_at: Time.now,
    #     execution_stopped_at: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.acknowledgment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitTaskStateChange AWS API Documentation
    #
    # @overload submit_task_state_change(params = {})
    # @param [Hash] params ({})
    def submit_task_state_change(params = {}, options = {})
      req = build_request(:submit_task_state_change, params)
      req.send_request(options)
    end

    # Updates the Amazon ECS container agent on a specified container
    # instance. Updating the Amazon ECS container agent does not interrupt
    # running tasks or services on the container instance. The process for
    # updating the agent differs depending on whether your container
    # instance was launched with the Amazon ECS-optimized AMI or another
    # operating system.
    #
    # `UpdateContainerAgent` requires the Amazon ECS-optimized AMI or Amazon
    # Linux with the `ecs-init` service installed and running. For help
    # updating the Amazon ECS container agent on other operating systems,
    # see [Manually Updating the Amazon ECS Container Agent][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   your container instance is running on. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, String] :container_instance
    #   The container instance ID or full ARN entries for the container
    #   instance on which you would like to update the Amazon ECS container
    #   agent.
    #
    # @return [Types::UpdateContainerAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContainerAgentResponse#container_instance #container_instance} => Types::ContainerInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_container_agent({
    #     cluster: "String",
    #     container_instance: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instance.container_instance_arn #=> String
    #   resp.container_instance.ec2_instance_id #=> String
    #   resp.container_instance.version #=> Integer
    #   resp.container_instance.version_info.agent_version #=> String
    #   resp.container_instance.version_info.agent_hash #=> String
    #   resp.container_instance.version_info.docker_version #=> String
    #   resp.container_instance.remaining_resources #=> Array
    #   resp.container_instance.remaining_resources[0].name #=> String
    #   resp.container_instance.remaining_resources[0].type #=> String
    #   resp.container_instance.remaining_resources[0].double_value #=> Float
    #   resp.container_instance.remaining_resources[0].long_value #=> Integer
    #   resp.container_instance.remaining_resources[0].integer_value #=> Integer
    #   resp.container_instance.remaining_resources[0].string_set_value #=> Array
    #   resp.container_instance.remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.registered_resources #=> Array
    #   resp.container_instance.registered_resources[0].name #=> String
    #   resp.container_instance.registered_resources[0].type #=> String
    #   resp.container_instance.registered_resources[0].double_value #=> Float
    #   resp.container_instance.registered_resources[0].long_value #=> Integer
    #   resp.container_instance.registered_resources[0].integer_value #=> Integer
    #   resp.container_instance.registered_resources[0].string_set_value #=> Array
    #   resp.container_instance.registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.status #=> String
    #   resp.container_instance.agent_connected #=> Boolean
    #   resp.container_instance.running_tasks_count #=> Integer
    #   resp.container_instance.pending_tasks_count #=> Integer
    #   resp.container_instance.agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instance.attributes #=> Array
    #   resp.container_instance.attributes[0].name #=> String
    #   resp.container_instance.attributes[0].value #=> String
    #   resp.container_instance.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instance.attributes[0].target_id #=> String
    #   resp.container_instance.registered_at #=> Time
    #   resp.container_instance.attachments #=> Array
    #   resp.container_instance.attachments[0].id #=> String
    #   resp.container_instance.attachments[0].type #=> String
    #   resp.container_instance.attachments[0].status #=> String
    #   resp.container_instance.attachments[0].details #=> Array
    #   resp.container_instance.attachments[0].details[0].name #=> String
    #   resp.container_instance.attachments[0].details[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerAgent AWS API Documentation
    #
    # @overload update_container_agent(params = {})
    # @param [Hash] params ({})
    def update_container_agent(params = {}, options = {})
      req = build_request(:update_container_agent, params)
      req.send_request(options)
    end

    # Modifies the status of an Amazon ECS container instance.
    #
    # You can change the status of a container instance to `DRAINING` to
    # manually remove an instance from a cluster, for example to perform
    # system updates, update the Docker daemon, or scale down the cluster
    # size.
    #
    # When you set a container instance to `DRAINING`, Amazon ECS prevents
    # new tasks from being scheduled for placement on the container instance
    # and replacement service tasks are started on other container instances
    # in the cluster if the resources are available. Service tasks on the
    # container instance that are in the `PENDING` state are stopped
    # immediately.
    #
    # Service tasks on the container instance that are in the `RUNNING`
    # state are stopped and replaced according to the service's deployment
    # configuration parameters, `minimumHealthyPercent` and
    # `maximumPercent`. You can change the deployment configuration of your
    # service using UpdateService.
    #
    # * If `minimumHealthyPercent` is below 100%, the scheduler can ignore
    #   `desiredCount` temporarily during task replacement. For example,
    #   `desiredCount` is four tasks, a minimum of 50% allows the scheduler
    #   to stop two existing tasks before starting two new tasks. If the
    #   minimum is 100%, the service scheduler can't remove existing tasks
    #   until the replacement tasks are considered healthy. Tasks for
    #   services that do not use a load balancer are considered healthy if
    #   they are in the `RUNNING` state. Tasks for services that use a load
    #   balancer are considered healthy if they are in the `RUNNING` state
    #   and the container instance they are hosted on is reported as healthy
    #   by the load balancer.
    #
    # * The `maximumPercent` parameter represents an upper limit on the
    #   number of running tasks during task replacement, which enables you
    #   to define the replacement batch size. For example, if `desiredCount`
    #   of four tasks, a maximum of 200% starts four new tasks before
    #   stopping the four tasks to be drained (provided that the cluster
    #   resources required to do this are available). If the maximum is
    #   100%, then replacement tasks can't start until the draining tasks
    #   have stopped.
    #
    # Any `PENDING` or `RUNNING` tasks that do not belong to a service are
    # not affected; you must wait for them to finish or stop them manually.
    #
    # A container instance has completed draining when it has no more
    # `RUNNING` tasks. You can verify this using ListTasks.
    #
    # When you set a container instance to `ACTIVE`, the Amazon ECS
    # scheduler can begin scheduling tasks on the instance again.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the container instance to update. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, Array<String>] :container_instances
    #   A list of container instance IDs or full ARN entries.
    #
    # @option params [required, String] :status
    #   The container instance state with which to update the container
    #   instance.
    #
    # @return [Types::UpdateContainerInstancesStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContainerInstancesStateResponse#container_instances #container_instances} => Array&lt;Types::ContainerInstance&gt;
    #   * {Types::UpdateContainerInstancesStateResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_container_instances_state({
    #     cluster: "String",
    #     container_instances: ["String"], # required
    #     status: "ACTIVE", # required, accepts ACTIVE, DRAINING
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instances #=> Array
    #   resp.container_instances[0].container_instance_arn #=> String
    #   resp.container_instances[0].ec2_instance_id #=> String
    #   resp.container_instances[0].version #=> Integer
    #   resp.container_instances[0].version_info.agent_version #=> String
    #   resp.container_instances[0].version_info.agent_hash #=> String
    #   resp.container_instances[0].version_info.docker_version #=> String
    #   resp.container_instances[0].remaining_resources #=> Array
    #   resp.container_instances[0].remaining_resources[0].name #=> String
    #   resp.container_instances[0].remaining_resources[0].type #=> String
    #   resp.container_instances[0].remaining_resources[0].double_value #=> Float
    #   resp.container_instances[0].remaining_resources[0].long_value #=> Integer
    #   resp.container_instances[0].remaining_resources[0].integer_value #=> Integer
    #   resp.container_instances[0].remaining_resources[0].string_set_value #=> Array
    #   resp.container_instances[0].remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instances[0].registered_resources #=> Array
    #   resp.container_instances[0].registered_resources[0].name #=> String
    #   resp.container_instances[0].registered_resources[0].type #=> String
    #   resp.container_instances[0].registered_resources[0].double_value #=> Float
    #   resp.container_instances[0].registered_resources[0].long_value #=> Integer
    #   resp.container_instances[0].registered_resources[0].integer_value #=> Integer
    #   resp.container_instances[0].registered_resources[0].string_set_value #=> Array
    #   resp.container_instances[0].registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instances[0].status #=> String
    #   resp.container_instances[0].agent_connected #=> Boolean
    #   resp.container_instances[0].running_tasks_count #=> Integer
    #   resp.container_instances[0].pending_tasks_count #=> Integer
    #   resp.container_instances[0].agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instances[0].attributes #=> Array
    #   resp.container_instances[0].attributes[0].name #=> String
    #   resp.container_instances[0].attributes[0].value #=> String
    #   resp.container_instances[0].attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instances[0].attributes[0].target_id #=> String
    #   resp.container_instances[0].registered_at #=> Time
    #   resp.container_instances[0].attachments #=> Array
    #   resp.container_instances[0].attachments[0].id #=> String
    #   resp.container_instances[0].attachments[0].type #=> String
    #   resp.container_instances[0].attachments[0].status #=> String
    #   resp.container_instances[0].attachments[0].details #=> Array
    #   resp.container_instances[0].attachments[0].details[0].name #=> String
    #   resp.container_instances[0].attachments[0].details[0].value #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerInstancesState AWS API Documentation
    #
    # @overload update_container_instances_state(params = {})
    # @param [Hash] params ({})
    def update_container_instances_state(params = {}, options = {})
      req = build_request(:update_container_instances_state, params)
      req.send_request(options)
    end

    # Modifies the desired count, deployment configuration, network
    # configuration, or task definition used in a service.
    #
    # You can add to or subtract from the number of instantiations of a task
    # definition in a service by specifying the cluster that the service is
    # running in and a new `desiredCount` parameter.
    #
    # If you have updated the Docker image of your application, you can
    # create a new task definition with that image and deploy it to your
    # service. The service scheduler uses the minimum healthy percent and
    # maximum percent parameters (in the service's deployment
    # configuration) to determine the deployment strategy.
    #
    # <note markdown="1"> If your updated Docker image uses the same tag as what is in the
    # existing task definition for your service (for example,
    # `my_image:latest`), you do not need to create a new revision of your
    # task definition. You can update the service using the
    # `forceNewDeployment` option. The new tasks launched by the deployment
    # pull the current image/tag combination from your repository when they
    # start.
    #
    #  </note>
    #
    # You can also update the deployment configuration of a service. When a
    # deployment is triggered by updating the task definition of a service,
    # the service scheduler uses the deployment configuration parameters,
    # `minimumHealthyPercent` and `maximumPercent`, to determine the
    # deployment strategy.
    #
    # * If `minimumHealthyPercent` is below 100%, the scheduler can ignore
    #   `desiredCount` temporarily during a deployment. For example, if
    #   `desiredCount` is four tasks, a minimum of 50% allows the scheduler
    #   to stop two existing tasks before starting two new tasks. Tasks for
    #   services that do not use a load balancer are considered healthy if
    #   they are in the `RUNNING` state. Tasks for services that use a load
    #   balancer are considered healthy if they are in the `RUNNING` state
    #   and the container instance they are hosted on is reported as healthy
    #   by the load balancer.
    #
    # * The `maximumPercent` parameter represents an upper limit on the
    #   number of running tasks during a deployment, which enables you to
    #   define the deployment batch size. For example, if `desiredCount` is
    #   four tasks, a maximum of 200% starts four new tasks before stopping
    #   the four older tasks (provided that the cluster resources required
    #   to do this are available).
    #
    # When UpdateService stops a task during a deployment, the equivalent of
    # `docker stop` is issued to the containers running in the task. This
    # results in a `SIGTERM` and a 30-second timeout, after which `SIGKILL`
    # is sent and the containers are forcibly stopped. If the container
    # handles the `SIGTERM` gracefully and exits within 30 seconds from
    # receiving it, no `SIGKILL` is sent.
    #
    # When the service scheduler launches new tasks, it determines task
    # placement in your cluster with the following logic:
    #
    # * Determine which of the container instances in your cluster can
    #   support your service's task definition (for example, they have the
    #   required CPU, memory, ports, and container instance attributes).
    #
    # * By default, the service scheduler attempts to balance tasks across
    #   Availability Zones in this manner (although you can choose a
    #   different placement strategy):
    #
    #   * Sort the valid container instances by the fewest number of running
    #     tasks for this service in the same Availability Zone as the
    #     instance. For example, if zone A has one running service task and
    #     zones B and C each have zero, valid container instances in either
    #     zone B or C are considered optimal for placement.
    #
    #   * Place the new service task on a valid container instance in an
    #     optimal Availability Zone (based on the previous steps), favoring
    #     container instances with the fewest number of running tasks for
    #     this service.
    #
    # When the service scheduler stops running tasks, it attempts to
    # maintain balance across the Availability Zones in your cluster using
    # the following logic:
    #
    # * Sort the container instances by the largest number of running tasks
    #   for this service in the same Availability Zone as the instance. For
    #   example, if zone A has one running service task and zones B and C
    #   each have two, container instances in either zone B or C are
    #   considered optimal for termination.
    #
    # * Stop the task on a container instance in an optimal Availability
    #   Zone (based on the previous steps), favoring container instances
    #   with the largest number of running tasks for this service.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   your service is running on. If you do not specify a cluster, the
    #   default cluster is assumed.
    #
    # @option params [required, String] :service
    #   The name of the service to update.
    #
    # @option params [Integer] :desired_count
    #   The number of instantiations of the task to place and keep running in
    #   your service.
    #
    # @option params [String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` is not
    #   specified, the latest `ACTIVE` revision is used. If you modify the
    #   task definition with `UpdateService`, Amazon ECS spawns a task with
    #   the new version of the task definition and then stops an old task
    #   after the new version is running.
    #
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   Optional deployment parameters that control how many tasks run during
    #   the deployment and the ordering of stopping and starting tasks.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The network configuration for the service. This parameter is required
    #   for task definitions that use the `awsvpc` network mode to receive
    #   their own elastic network interface, and it is not supported for other
    #   network modes. For more information, see [Task Networking][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   <note markdown="1"> Updating a service to add a subnet to a list of existing subnets does
    #   not trigger a service deployment. For example, if your network
    #   configuration change is to keep the existing subnets and simply add
    #   another subnet to the network configuration, this does not trigger a
    #   new service deployment.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #
    # @option params [String] :platform_version
    #   The platform version that your service should run.
    #
    # @option params [Boolean] :force_new_deployment
    #   Whether to force a new deployment of the service. Deployments are not
    #   forced by default. You can use this option to trigger a new deployment
    #   with no service definition changes. For example, you can update a
    #   service's tasks to use a newer Docker image with the same image/tag
    #   combination (`my_image:latest`) or to roll Fargate tasks onto a newer
    #   platform version.
    #
    # @option params [Integer] :health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service scheduler
    #   should ignore unhealthy Elastic Load Balancing target health checks
    #   after a task has first started. This is only valid if your service is
    #   configured to use a load balancer. If your service's tasks take a
    #   while to start and respond to Elastic Load Balancing health checks,
    #   you can specify a health check grace period of up to 1,800 seconds
    #   during which the ECS service scheduler ignores the Elastic Load
    #   Balancing health check status. This grace period can prevent the ECS
    #   service scheduler from marking tasks as unhealthy and stopping them
    #   before they have time to come up.
    #
    # @return [Types::UpdateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceResponse#service #service} => Types::Service
    #
    #
    # @example Example: To change the task definition used in a service
    #
    #   # This example updates the my-http-service service to use the amazon-ecs-sample task definition.
    #
    #   resp = client.update_service({
    #     service: "my-http-service", 
    #     task_definition: "amazon-ecs-sample", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: To change the number of tasks in a service
    #
    #   # This example updates the desired count of the my-http-service service to 10.
    #
    #   resp = client.update_service({
    #     desired_count: 10, 
    #     service: "my-http-service", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service({
    #     cluster: "String",
    #     service: "String", # required
    #     desired_count: 1,
    #     task_definition: "String",
    #     deployment_configuration: {
    #       maximum_percent: 1,
    #       minimum_healthy_percent: 1,
    #     },
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     platform_version: "String",
    #     force_new_deployment: false,
    #     health_check_grace_period_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.service_name #=> String
    #   resp.service.cluster_arn #=> String
    #   resp.service.load_balancers #=> Array
    #   resp.service.load_balancers[0].target_group_arn #=> String
    #   resp.service.load_balancers[0].load_balancer_name #=> String
    #   resp.service.load_balancers[0].container_name #=> String
    #   resp.service.load_balancers[0].container_port #=> Integer
    #   resp.service.service_registries #=> Array
    #   resp.service.service_registries[0].registry_arn #=> String
    #   resp.service.service_registries[0].port #=> Integer
    #   resp.service.service_registries[0].container_name #=> String
    #   resp.service.service_registries[0].container_port #=> Integer
    #   resp.service.status #=> String
    #   resp.service.desired_count #=> Integer
    #   resp.service.running_count #=> Integer
    #   resp.service.pending_count #=> Integer
    #   resp.service.launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.service.platform_version #=> String
    #   resp.service.task_definition #=> String
    #   resp.service.deployment_configuration.maximum_percent #=> Integer
    #   resp.service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.service.deployments #=> Array
    #   resp.service.deployments[0].id #=> String
    #   resp.service.deployments[0].status #=> String
    #   resp.service.deployments[0].task_definition #=> String
    #   resp.service.deployments[0].desired_count #=> Integer
    #   resp.service.deployments[0].pending_count #=> Integer
    #   resp.service.deployments[0].running_count #=> Integer
    #   resp.service.deployments[0].created_at #=> Time
    #   resp.service.deployments[0].updated_at #=> Time
    #   resp.service.deployments[0].launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.service.deployments[0].platform_version #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.role_arn #=> String
    #   resp.service.events #=> Array
    #   resp.service.events[0].id #=> String
    #   resp.service.events[0].created_at #=> Time
    #   resp.service.events[0].message #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.placement_constraints #=> Array
    #   resp.service.placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.service.placement_constraints[0].expression #=> String
    #   resp.service.placement_strategy #=> Array
    #   resp.service.placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.service.placement_strategy[0].field #=> String
    #   resp.service.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.health_check_grace_period_seconds #=> Integer
    #   resp.service.scheduling_strategy #=> String, one of "REPLICA", "DAEMON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateService AWS API Documentation
    #
    # @overload update_service(params = {})
    # @param [Hash] params ({})
    def update_service(params = {}, options = {})
      req = build_request(:update_service, params)
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
      context[:gem_name] = 'aws-sdk-ecs'
      context[:gem_version] = '1.20.0'
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
    #     client.waiter_until(waiter_name, params)
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
    # | waiter_name       | params               | :delay   | :max_attempts |
    # | ----------------- | -------------------- | -------- | ------------- |
    # | services_inactive | {#describe_services} | 15       | 40            |
    # | services_stable   | {#describe_services} | 15       | 40            |
    # | tasks_running     | {#describe_tasks}    | 6        | 100           |
    # | tasks_stopped     | {#describe_tasks}    | 6        | 100           |
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
        services_inactive: Waiters::ServicesInactive,
        services_stable: Waiters::ServicesStable,
        tasks_running: Waiters::TasksRunning,
        tasks_stopped: Waiters::TasksStopped
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
