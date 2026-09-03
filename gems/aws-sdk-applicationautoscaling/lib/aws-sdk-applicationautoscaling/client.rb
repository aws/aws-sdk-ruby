# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:applicationautoscaling)

module Aws::ApplicationAutoScaling
  # An API client for Aws::ApplicationAutoScaling.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AnyScaleFrontendService
    @identifier = :applicationautoscaling

    add_plugin(::Aws::ApplicationAutoScaling::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ApplicationAutoScaling::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Deletes the specified scaling policy for an Application Auto Scaling scalable target.</p>
    #          <p>Deleting a step scaling policy deletes the underlying alarm action, but does not delete
    #          the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated
    #          action.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/create-step-scaling-policy-cli.html#delete-step-scaling-policy">Delete a step scaling policy</a> and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/create-target-tracking-policy-cli.html#delete-target-tracking-policy">Delete a target tracking scaling policy</a> in the
    #             <i>Application Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DeleteScalingPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the scaling policy.</p>
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @example To delete a scaling policy
    #   # This example deletes a scaling policy for the Amazon ECS service called web-app, which is running in the default cluster.
    #   params = {
    #     policy_name: "web-app-cpu-lt-25",
    #     service_namespace: ecs,
    #     resource_id: "service/default/web-app",
    #     scalable_dimension: ecs:service:DesiredCount
    #   }
    #   options = {}
    #   response = client.delete_scaling_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "ResourceIdMaxLen1600", # required
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #   }
    #   options = {}
    #   response = client.delete_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteScalingPolicyResponse]
    def delete_scaling_policy(params = {}, options = {})
      request = build_request(:delete_scaling_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified scheduled action for an Application Auto Scaling scalable target.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html#delete-scheduled-action">Delete a scheduled action</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DeleteScheduledActionRequest] params
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scheduled action.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @example To delete a scheduled action
    #   # This example deletes a scheduled action for the AppStream 2.0 fleet called sample-fleet.
    #   params = {
    #     service_namespace: appstream,
    #     scheduled_action_name: "my-recurring-action",
    #     resource_id: "fleet/sample-fleet",
    #     scalable_dimension: appstream:fleet:DesiredCapacity
    #   }
    #   options = {}
    #   response = client.delete_scheduled_action(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     scheduled_action_name: "ResourceIdMaxLen1600", # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #   }
    #   options = {}
    #   response = client.delete_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteScheduledActionResponse]
    def delete_scheduled_action(params = {}, options = {})
      request = build_request(:delete_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Deregisters an Application Auto Scaling scalable target when you have finished using it. To see which
    #          resources have been registered, use <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html">DescribeScalableTargets</a>. </p>
    #          <note>
    #             <p>Deregistering a scalable target deletes the scaling policies and the scheduled
    #             actions that are associated with it.</p>
    #          </note>
    # @param [Hash, Types::DeregisterScalableTargetRequest] params
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @example To deregister a scalable target
    #   # This example deregisters a scalable target for an Amazon ECS service called web-app that is running in the default cluster.
    #   params = {
    #     service_namespace: ecs,
    #     resource_id: "service/default/web-app",
    #     scalable_dimension: ecs:service:DesiredCount
    #   }
    #   options = {}
    #   response = client.deregister_scalable_target(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #   }
    #   options = {}
    #   response = client.deregister_scalable_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterScalableTargetResponse]
    def deregister_scalable_target(params = {}, options = {})
      request = build_request(:deregister_scalable_target, params)
      request.send_request(options)
    end

    # <p>Gets information about the scalable targets in the specified namespace.</p>
    #          <p>You can filter the results using <code>ResourceIds</code> and
    #             <code>ScalableDimension</code>.</p>
    # @param [Hash, Types::DescribeScalableTargetsRequest] params
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [Array<String>] :resource_ids
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and
    #            50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example To describe scalable targets
    #   # This example describes the scalable targets for the ECS service namespace.
    #   params = {
    #     service_namespace: ecs
    #   }
    #   options = {}
    #   response = client.describe_scalable_targets(params, options)
    #   response.to_h #=>
    #   {
    #     scalable_targets: [
    #       {
    #         scalable_dimension: ecs:service:DesiredCount,
    #         resource_id: "service/default/web-app",
    #         role_arn: "arn:aws:iam::012345678910:role/aws-service-role/ecs.application-autoscaling.amazonaws.com/AWSServiceRoleForApplicationAutoScaling_ECSService",
    #         creation_time: Time.parse("2019-05-06T11:21:46.199Z"),
    #         min_capacity: 1,
    #         service_namespace: ecs,
    #         max_capacity: 10,
    #         suspended_state: {
    #           dynamic_scaling_in_suspended: false,
    #           dynamic_scaling_out_suspended: false,
    #           scheduled_scaling_suspended: false
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     resource_ids: ["ResourceIdMaxLen1600"],
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"],
    #     max_results: 1,
    #     next_token: "XmlString"
    #   }
    #   options = {}
    #   response = client.describe_scalable_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scalable_targets: [
    #       {
    #         service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #         predicted_capacity: 1,
    #         role_arn: "ResourceIdMaxLen1600", # required
    #         creation_time: Time.now, # required
    #         suspended_state: {
    #           dynamic_scaling_in_suspended: false,
    #           dynamic_scaling_out_suspended: false,
    #           scheduled_scaling_suspended: false
    #         },
    #         scalable_target_arn: "XmlString"
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeScalableTargetsResponse]
    def describe_scalable_targets(params = {}, options = {})
      request = build_request(:describe_scalable_targets, params)
      request.send_request(options)
    end

    # <p>Provides descriptive information about the scaling activities in the specified namespace
    #          from the previous six weeks.</p>
    #          <p>You can filter the results using <code>ResourceId</code> and
    #             <code>ScalableDimension</code>.</p>
    #          <p>For information about viewing scaling activities using the Amazon Web Services CLI, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html">Scaling activities for Application Auto Scaling</a>.</p>
    # @param [Hash, Types::DescribeScalingActivitiesRequest] params
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scaling activity.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
    #         If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and
    #            50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Boolean] :include_not_scaled_activities
    #   <p>Specifies whether to include activities that aren't scaled (<i>not scaled
    #               activities</i>) in the response. Not scaled activities are activities that aren't
    #            completed or started for various reasons, such as preventing infinite scaling loops. For
    #            help interpreting the not scaled reason details in the response, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html">Scaling activities for Application Auto Scaling</a>.</p>
    # @example To describe scaling activities for a scalable target
    #   # This example describes the scaling activities for an Amazon ECS service called web-app that is running in the default cluster.
    #   params = {
    #     service_namespace: ecs,
    #     resource_id: "service/default/web-app",
    #     scalable_dimension: ecs:service:DesiredCount
    #   }
    #   options = {}
    #   response = client.describe_scaling_activities(params, options)
    #   response.to_h #=>
    #   {
    #     scaling_activities: [
    #       {
    #         scalable_dimension: ecs:service:DesiredCount,
    #         description: "Setting desired count to 1.",
    #         resource_id: "service/default/web-app",
    #         activity_id: "e6c5f7d1-dbbb-4a3f-89b2-51f33e766399",
    #         start_time: Time.parse("2019-05-06T16:03:58.171Z"),
    #         service_namespace: ecs,
    #         end_time: Time.parse("2019-05-06T16:04:32.111Z"),
    #         cause: "monitor alarm web-app-cpu-lt-25 in state ALARM triggered policy web-app-cpu-lt-25",
    #         status_message: "Successfully set desired count to 1. Change successfully fulfilled by ecs.",
    #         status_code: Successful
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"],
    #     max_results: 1,
    #     next_token: "XmlString",
    #     include_not_scaled_activities: false
    #   }
    #   options = {}
    #   response = client.describe_scaling_activities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scaling_activities: [
    #       {
    #         activity_id: "ResourceId", # required
    #         service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #         description: "XmlString", # required
    #         cause: "XmlString", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now,
    #         status_code: "Pending" # One of: ["Pending", "InProgress", "Successful", "Overridden", "Unfulfilled", "Failed"], # required
    #         status_message: "XmlString",
    #         details: "XmlString",
    #         not_scaled_reasons: [
    #           {
    #             code: "XmlString", # required
    #             max_capacity: 1,
    #             min_capacity: 1,
    #             current_capacity: 1
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeScalingActivitiesResponse]
    def describe_scaling_activities(params = {}, options = {})
      request = build_request(:describe_scaling_activities, params)
      request.send_request(options)
    end

    # <p>Describes the Application Auto Scaling scaling policies for the specified service namespace.</p>
    #          <p>You can filter the results using <code>ResourceId</code>,
    #          <code>ScalableDimension</code>, and <code>PolicyNames</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">Target tracking scaling policies</a> and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">Step scaling policies</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DescribeScalingPoliciesRequest] params
    # @option params [Array<String>] :policy_names
    #   <p>The names of the scaling policies to describe.</p>
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scaling policy.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
    #         If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and 10. The default
    #            value is 10.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 10 results and a <code>NextToken</code> value, if
    #            applicable.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example To describe scaling policies
    #   # This example describes the scaling policies for the ECS service namespace.
    #   params = {
    #     service_namespace: ecs
    #   }
    #   options = {}
    #   response = client.describe_scaling_policies(params, options)
    #   response.to_h #=>
    #   {
    #     scaling_policies: [
    #       {
    #         policy_name: "web-app-cpu-gt-75",
    #         scalable_dimension: ecs:service:DesiredCount,
    #         resource_id: "service/default/web-app",
    #         creation_time: Time.parse("2019-05-06T12:11:39.230Z"),
    #         step_scaling_policy_configuration: {
    #           cooldown: 60,
    #           step_adjustments: [
    #             {
    #               scaling_adjustment: 200,
    #               metric_interval_lower_bound: 0
    #             }
    #           ],
    #           adjustment_type: PercentChangeInCapacity
    #         },
    #         policy_arn: "arn:aws:autoscaling:us-west-2:012345678910:scalingPolicy:6d8972f3-efc8-437c-92d1-6270f29a66e7:resource/ecs/service/default/web-app:policyName/web-app-cpu-gt-75",
    #         policy_type: StepScaling,
    #         alarms: [
    #           {
    #             alarm_name: "web-app-cpu-gt-75",
    #             alarm_arn: "arn:aws:cloudwatch:us-west-2:012345678910:alarm:web-app-cpu-gt-75"
    #           }
    #         ],
    #         service_namespace: ecs
    #       }
    #     ],
    #     next_token: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_names: ["ResourceIdMaxLen1600"],
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"],
    #     max_results: 1,
    #     next_token: "XmlString"
    #   }
    #   options = {}
    #   response = client.describe_scaling_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scaling_policies: [
    #       {
    #         policy_arn: "ResourceIdMaxLen1600", # required
    #         policy_name: "PolicyName", # required
    #         service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #         policy_type: "StepScaling" # One of: ["StepScaling", "TargetTrackingScaling", "PredictiveScaling"], # required
    #         step_scaling_policy_configuration: {
    #           adjustment_type: "ChangeInCapacity" # One of: ["ChangeInCapacity", "PercentChangeInCapacity", "ExactCapacity"],
    #           step_adjustments: [
    #             {
    #               metric_interval_lower_bound: 1.0,
    #               metric_interval_upper_bound: 1.0,
    #               scaling_adjustment: 1, # required
    #             }
    #           ],
    #           min_adjustment_magnitude: 1,
    #           cooldown: 1,
    #           metric_aggregation_type: "Average" # One of: ["Average", "Minimum", "Maximum"]
    #         },
    #         target_tracking_scaling_policy_configuration: {
    #           target_value: 1.0, # required
    #           predefined_metric_specification: {
    #             predefined_metric_type: "DynamoDBReadCapacityUtilization" # One of: ["DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut", "SageMakerVariantInvocationsPerInstance", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "AppStreamAverageCapacityUtilization", "ComprehendInferenceUtilization", "LambdaProvisionedConcurrencyUtilization", "CassandraReadCapacityUtilization", "CassandraWriteCapacityUtilization", "KafkaBrokerStorageUtilization", "ElastiCacheEngineCPUUtilization", "ElastiCacheDatabaseMemoryUsagePercentage", "ElastiCachePrimaryEngineCPUUtilization", "ElastiCacheReplicaEngineCPUUtilization", "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage", "NeptuneReaderAverageCPUUtilization", "SageMakerVariantProvisionedConcurrencyUtilization", "ElastiCacheDatabaseCapacityUsageCountedForEvictPercentage", "SageMakerInferenceComponentInvocationsPerCopy", "WorkSpacesAverageUserSessionsCapacityUtilization", "SageMakerInferenceComponentConcurrentRequestsPerCopyHighResolution", "SageMakerVariantConcurrentRequestsPerModelHighResolution"], # required
    #             resource_label: "ResourceLabel"
    #           },
    #           customized_metric_specification: {
    #             metric_name: "MetricName",
    #             namespace: "MetricNamespace",
    #             dimensions: [
    #               {
    #                 name: "MetricDimensionName", # required
    #                 value: "MetricDimensionValue", # required
    #               }
    #             ],
    #             statistic: "Average" # One of: ["Average", "Minimum", "Maximum", "SampleCount", "Sum"],
    #             unit: "MetricUnit",
    #             metrics: [
    #               {
    #                 expression: "Expression",
    #                 id: "Id", # required
    #                 label: "XmlString",
    #                 metric_stat: {
    #                   metric: { # required
    #                     dimensions: [
    #                       {
    #                         name: "TargetTrackingMetricDimensionName", # required
    #                         value: "TargetTrackingMetricDimensionValue", # required
    #                       }
    #                     ],
    #                     metric_name: "TargetTrackingMetricName",
    #                     namespace: "TargetTrackingMetricNamespace"
    #                   },
    #                   stat: "XmlString", # required
    #                   unit: "TargetTrackingMetricUnit"
    #                 },
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           scale_out_cooldown: 1,
    #           scale_in_cooldown: 1,
    #           disable_scale_in: false
    #         },
    #         predictive_scaling_policy_configuration: {
    #           metric_specifications: [ # required
    #             {
    #               target_value: 1.0, # required
    #               predefined_metric_pair_specification: {
    #                 predefined_metric_type: "PredictiveScalingMetricType", # required
    #                 resource_label: "ResourceLabel"
    #               },
    #               predefined_scaling_metric_specification: {
    #                 predefined_metric_type: "PredictiveScalingMetricType", # required
    #                 resource_label: "ResourceLabel"
    #               },
    #               predefined_load_metric_specification: {
    #                 predefined_metric_type: "PredictiveScalingMetricType", # required
    #                 resource_label: "ResourceLabel"
    #               },
    #               customized_scaling_metric_specification: {
    #                 metric_data_queries: [ # required
    #                   {
    #                     id: "Id", # required
    #                     expression: "Expression",
    #                     metric_stat: {
    #                       metric: { # required
    #                         dimensions: [
    #                           {
    #                             name: "PredictiveScalingMetricDimensionName", # required
    #                             value: "PredictiveScalingMetricDimensionValue", # required
    #                           }
    #                         ],
    #                         metric_name: "PredictiveScalingMetricName",
    #                         namespace: "PredictiveScalingMetricNamespace"
    #                       },
    #                       stat: "XmlString", # required
    #                       unit: "PredictiveScalingMetricUnit"
    #                     },
    #                     label: "XmlString",
    #                     return_data: false
    #                   }
    #                 ]
    #               },
    #               customized_load_metric_specification: {
    #                 metric_data_queries: [ # required
    #                   {
    #                     id: "Id", # required
    #                     expression: "Expression",
    #                     metric_stat: {
    #                       metric: { # required
    #                         dimensions: [
    #                           {
    #                             name: "PredictiveScalingMetricDimensionName", # required
    #                             value: "PredictiveScalingMetricDimensionValue", # required
    #                           }
    #                         ],
    #                         metric_name: "PredictiveScalingMetricName",
    #                         namespace: "PredictiveScalingMetricNamespace"
    #                       },
    #                       stat: "XmlString", # required
    #                       unit: "PredictiveScalingMetricUnit"
    #                     },
    #                     label: "XmlString",
    #                     return_data: false
    #                   }
    #                 ]
    #               },
    #               customized_capacity_metric_specification: {
    #                 metric_data_queries: [ # required
    #                   {
    #                     id: "Id", # required
    #                     expression: "Expression",
    #                     metric_stat: {
    #                       metric: { # required
    #                         dimensions: [
    #                           {
    #                             name: "PredictiveScalingMetricDimensionName", # required
    #                             value: "PredictiveScalingMetricDimensionValue", # required
    #                           }
    #                         ],
    #                         metric_name: "PredictiveScalingMetricName",
    #                         namespace: "PredictiveScalingMetricNamespace"
    #                       },
    #                       stat: "XmlString", # required
    #                       unit: "PredictiveScalingMetricUnit"
    #                     },
    #                     label: "XmlString",
    #                     return_data: false
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           mode: "ForecastOnly" # One of: ["ForecastOnly", "ForecastAndScale"],
    #           scheduling_buffer_time: 1,
    #           max_capacity_breach_behavior: "HonorMaxCapacity" # One of: ["HonorMaxCapacity", "IncreaseMaxCapacity"],
    #           max_capacity_buffer: 1
    #         },
    #         alarms: [
    #           {
    #             alarm_name: "ResourceId", # required
    #             alarm_arn: "ResourceId", # required
    #           }
    #         ],
    #         creation_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeScalingPoliciesResponse]
    def describe_scaling_policies(params = {}, options = {})
      request = build_request(:describe_scaling_policies, params)
      request.send_request(options)
    end

    # <p>Describes the Application Auto Scaling scheduled actions for the specified service namespace.</p>
    #          <p>You can filter the results using the <code>ResourceId</code>,
    #             <code>ScalableDimension</code>, and <code>ScheduledActionNames</code> parameters.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html">Scheduled scaling</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DescribeScheduledActionsRequest] params
    # @option params [Array<String>] :scheduled_action_names
    #   <p>The names of the scheduled actions to describe.</p>
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scheduled action.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
    #         If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of scheduled action results. This value can be between
    #            1 and 50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example To describe scheduled actions
    #   # This example describes the scheduled actions for the dynamodb service namespace.
    #   params = {
    #     service_namespace: dynamodb
    #   }
    #   options = {}
    #   response = client.describe_scheduled_actions(params, options)
    #   response.to_h #=>
    #   {
    #     scheduled_actions: [
    #       {
    #         scalable_dimension: dynamodb:table:WriteCapacityUnits,
    #         schedule: "at(2019-05-20T18:35:00)",
    #         resource_id: "table/my-table",
    #         creation_time: Time.parse(1561571888.361),
    #         scheduled_action_arn: "arn:aws:autoscaling:us-west-2:123456789012:scheduledAction:2d36aa3b-cdf9-4565-b290-81db519b227d:resource/dynamodb/table/my-table:scheduledActionName/my-first-scheduled-action",
    #         scalable_target_action: {
    #           min_capacity: 15,
    #           max_capacity: 20
    #         },
    #         scheduled_action_name: "my-first-scheduled-action",
    #         service_namespace: dynamodb
    #       },
    #       {
    #         scalable_dimension: dynamodb:table:WriteCapacityUnits,
    #         schedule: "at(2019-05-20T18:40:00)",
    #         resource_id: "table/my-table",
    #         creation_time: Time.parse(1561571946.021),
    #         scheduled_action_arn: "arn:aws:autoscaling:us-west-2:123456789012:scheduledAction:2d36aa3b-cdf9-4565-b290-81db519b227d:resource/dynamodb/table/my-table:scheduledActionName/my-second-scheduled-action",
    #         scalable_target_action: {
    #           min_capacity: 5,
    #           max_capacity: 10
    #         },
    #         scheduled_action_name: "my-second-scheduled-action",
    #         service_namespace: dynamodb
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_action_names: ["ResourceIdMaxLen1600"],
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"],
    #     max_results: 1,
    #     next_token: "XmlString"
    #   }
    #   options = {}
    #   response = client.describe_scheduled_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_actions: [
    #       {
    #         scheduled_action_name: "ScheduledActionName", # required
    #         scheduled_action_arn: "ResourceIdMaxLen1600", # required
    #         service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #         schedule: "ResourceIdMaxLen1600", # required
    #         timezone: "ResourceIdMaxLen1600",
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         scalable_target_action: {
    #           min_capacity: 1,
    #           max_capacity: 1
    #         },
    #         creation_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeScheduledActionsResponse]
    def describe_scheduled_actions(params = {}, options = {})
      request = build_request(:describe_scheduled_actions, params)
      request.send_request(options)
    end

    # <p>Retrieves the forecast data for a predictive scaling policy.</p>
    #          <p>Load forecasts are predictions of the hourly load values using historical load data
    #          from CloudWatch and an analysis of historical trends. Capacity forecasts are represented as
    #          predicted values for the minimum capacity that is needed on an hourly basis, based on
    #          the hourly load forecast.</p>
    #          <p>A minimum of 24 hours of data is required to create the initial forecasts. However,
    #          having a full 14 days of historical data results in more accurate forecasts.</p>
    # @param [Hash, Types::GetPredictiveScalingForecastRequest] params
    # @option params [String] :service_namespace
    #   <p>
    #            The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead. 
    #         </p>
    # @option params [String] :resource_id
    #   <p>
    #            The identifier of the resource.
    #         </p>
    # @option params [String] :scalable_dimension
    #   <p>
    #            The scalable dimension.
    #         </p>
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    # @option params [Time] :start_time
    #   <p>
    #            The inclusive start time of the time range for the forecast data to get. At most, the
    #            date and time can be one year before the current date and time
    #         </p>
    # @option params [Time] :end_time
    #   <p>
    #            The exclusive end time of the time range for the forecast data to get. The maximum
    #            time duration between the start and end time is 30 days. 
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #     policy_name: "PolicyName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.get_predictive_scaling_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_forecast: [
    #       {
    #         timestamps: [Time.now], # required
    #         values: [1.0], # required
    #         metric_specification: { # required
    #           target_value: 1.0, # required
    #           predefined_metric_pair_specification: {
    #             predefined_metric_type: "PredictiveScalingMetricType", # required
    #             resource_label: "ResourceLabel"
    #           },
    #           predefined_scaling_metric_specification: {
    #             predefined_metric_type: "PredictiveScalingMetricType", # required
    #             resource_label: "ResourceLabel"
    #           },
    #           predefined_load_metric_specification: {
    #             predefined_metric_type: "PredictiveScalingMetricType", # required
    #             resource_label: "ResourceLabel"
    #           },
    #           customized_scaling_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "Id", # required
    #                 expression: "Expression",
    #                 metric_stat: {
    #                   metric: { # required
    #                     dimensions: [
    #                       {
    #                         name: "PredictiveScalingMetricDimensionName", # required
    #                         value: "PredictiveScalingMetricDimensionValue", # required
    #                       }
    #                     ],
    #                     metric_name: "PredictiveScalingMetricName",
    #                     namespace: "PredictiveScalingMetricNamespace"
    #                   },
    #                   stat: "XmlString", # required
    #                   unit: "PredictiveScalingMetricUnit"
    #                 },
    #                 label: "XmlString",
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           customized_load_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "Id", # required
    #                 expression: "Expression",
    #                 metric_stat: {
    #                   metric: { # required
    #                     dimensions: [
    #                       {
    #                         name: "PredictiveScalingMetricDimensionName", # required
    #                         value: "PredictiveScalingMetricDimensionValue", # required
    #                       }
    #                     ],
    #                     metric_name: "PredictiveScalingMetricName",
    #                     namespace: "PredictiveScalingMetricNamespace"
    #                   },
    #                   stat: "XmlString", # required
    #                   unit: "PredictiveScalingMetricUnit"
    #                 },
    #                 label: "XmlString",
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           customized_capacity_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "Id", # required
    #                 expression: "Expression",
    #                 metric_stat: {
    #                   metric: { # required
    #                     dimensions: [
    #                       {
    #                         name: "PredictiveScalingMetricDimensionName", # required
    #                         value: "PredictiveScalingMetricDimensionValue", # required
    #                       }
    #                     ],
    #                     metric_name: "PredictiveScalingMetricName",
    #                     namespace: "PredictiveScalingMetricNamespace"
    #                   },
    #                   stat: "XmlString", # required
    #                   unit: "PredictiveScalingMetricUnit"
    #                 },
    #                 label: "XmlString",
    #                 return_data: false
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     capacity_forecast: {
    #       timestamps: [Time.now], # required
    #       values: [1.0], # required
    #     },
    #     update_time: Time.now
    #   }
    # @return [Types::GetPredictiveScalingForecastResponse]
    def get_predictive_scaling_forecast(params = {}, options = {})
      request = build_request(:get_predictive_scaling_forecast, params)
      request.send_request(options)
    end

    # <p>Returns all the tags on the specified Application Auto Scaling scalable target.</p>
    #          <p>For general information about tags, including the format and syntax, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging your Amazon Web Services
    #             resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Specify the ARN of the scalable target.</p>
    #            <p>For example:
    #               <code>arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123</code>
    #            </p>
    #            <p>To get the ARN for a scalable target, use <a>DescribeScalableTargets</a>.</p>
    # @example To list tags for a scalable target
    #   # This example lists the tag key names and values that are attached to the scalable target specified by its ARN.
    #   params = {
    #     resource_arn: "arn:aws:application-autoscaling:us-west-2:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "environment" => "production"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Creates or updates a scaling policy for an Application Auto Scaling scalable target.</p>
    #          <p>Each scalable target is identified by a service namespace, resource ID, and scalable
    #          dimension. A scaling policy applies to the scalable target identified by those three
    #          attributes. You cannot create a scaling policy until you have registered the resource as a
    #          scalable target.</p>
    #          <p>Multiple scaling policies can be in force at the same time for the same scalable target.
    #          You can have one or more target tracking scaling policies, one or more step scaling
    #          policies, or both. However, there is a chance that multiple policies could conflict,
    #          instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives
    #          precedence to the policy that provides the largest capacity for both scale out and scale
    #          in. For example, if one policy increases capacity by 3, another policy increases capacity
    #          by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest
    #          calculated capacity (200% of 10 = 20) and scales out to 30. </p>
    #          <p>We recommend caution, however, when using target tracking scaling policies with step
    #          scaling policies because conflicts between these policies can cause undesirable behavior.
    #          For example, if the step scaling policy initiates a scale-in activity before the target
    #          tracking policy is ready to scale in, the scale-in activity will not be blocked. After the
    #          scale-in activity completes, the target tracking policy could instruct the scalable target
    #          to scale out again. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">Target tracking scaling policies</a>, <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">Step scaling policies</a>, and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/aas-create-predictive-scaling-policy.html">Predictive scaling policies</a> 
    #             in the <i>Application Auto Scaling User Guide</i>.</p>
    #          <note>
    #             <p>If a scalable target is deregistered, the scalable target is no longer available to
    #             use scaling policies. Any scaling policies that were specified for the scalable target
    #             are deleted.</p>
    #          </note>
    # @param [Hash, Types::PutScalingPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the scaling policy.</p>
    #            <p>You cannot change the name of a scaling policy, but you can delete the original scaling
    #            policy and create a new scaling policy with the same settings and a different name.</p>
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scaling policy.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @option params [String] :policy_type
    #   <p>The scaling policy type. This parameter is required if you are creating a scaling
    #         policy.</p>
    #            <p>The following policy types are supported: </p>
    #            <p>
    #               <code>TargetTrackingScaling</code>—Not supported for Amazon EMR.</p>
    #            <p>
    #               <code>StepScaling</code>—Not supported for DynamoDB, Amazon Comprehend, Lambda, Amazon Keyspaces, Amazon MSK, Amazon ElastiCache, or
    #         Neptune.</p>
    #            <p>
    #               <code>PredictiveScaling</code>—Only supported for Amazon ECS.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">Target
    #           tracking scaling policies</a>, <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">Step scaling policies</a>, and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/aas-create-predictive-scaling-policy.html">Predictive scaling policies</a> 
    #           in the <i>Application Auto Scaling User Guide</i>.</p>
    # @option params [Types::StepScalingPolicyConfiguration] :step_scaling_policy_configuration
    #   <p>A step scaling policy.</p>
    #            <p>This parameter is required if you are creating a policy and the policy type is
    #               <code>StepScaling</code>.</p>
    # @option params [Types::TargetTrackingScalingPolicyConfiguration] :target_tracking_scaling_policy_configuration
    #   <p>A target tracking scaling policy. Includes support for predefined or customized
    #            metrics.</p>
    #            <p>This parameter is required if you are creating a policy and the policy type is
    #               <code>TargetTrackingScaling</code>.</p>
    # @option params [Types::PredictiveScalingPolicyConfiguration] :predictive_scaling_policy_configuration
    #   <p>
    #            The configuration of the predictive scaling policy.
    #         </p>
    # @example To apply a target tracking scaling policy with a predefined metric specification
    #   # The following example applies a target tracking scaling policy with a predefined metric specification to an Amazon ECS service called web-app in the default cluster. The policy keeps the average CPU utilization of the service at 75 percent, with scale-out and scale-in cooldown periods of 60 seconds.
    #   params = {
    #     policy_name: "cpu75-target-tracking-scaling-policy",
    #     service_namespace: ecs,
    #     resource_id: "service/default/web-app",
    #     scalable_dimension: ecs:service:DesiredCount,
    #     policy_type: TargetTrackingScaling,
    #     target_tracking_scaling_policy_configuration: {
    #       target_value: 75,
    #       predefined_metric_specification: {
    #         predefined_metric_type: ECSServiceAverageCPUUtilization
    #       },
    #       scale_out_cooldown: 60,
    #       scale_in_cooldown: 60
    #     }
    #   }
    #   options = {}
    #   response = client.put_scaling_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_arn: "arn:aws:autoscaling:us-west-2:012345678910:scalingPolicy:6d8972f3-efc8-437c-92d1-6270f29a66e7:resource/ecs/service/default/web-app:policyName/cpu75-target-tracking-scaling-policy",
    #     alarms: [
    #       {
    #         alarm_arn: "arn:aws:cloudwatch:us-west-2:012345678910:alarm:TargetTracking-service/default/web-app-AlarmHigh-d4f0770c-b46e-434a-a60f-3b36d653feca",
    #         alarm_name: "TargetTracking-service/default/web-app-AlarmHigh-d4f0770c-b46e-434a-a60f-3b36d653feca"
    #       },
    #       {
    #         alarm_arn: "arn:aws:cloudwatch:us-west-2:012345678910:alarm:TargetTracking-service/default/web-app-AlarmLow-1b437334-d19b-4a63-a812-6c67aaf2910d",
    #         alarm_name: "TargetTracking-service/default/web-app-AlarmLow-1b437334-d19b-4a63-a812-6c67aaf2910d"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #     policy_type: "StepScaling" # One of: ["StepScaling", "TargetTrackingScaling", "PredictiveScaling"],
    #     step_scaling_policy_configuration: {
    #       adjustment_type: "ChangeInCapacity" # One of: ["ChangeInCapacity", "PercentChangeInCapacity", "ExactCapacity"],
    #       step_adjustments: [
    #         {
    #           metric_interval_lower_bound: 1.0,
    #           metric_interval_upper_bound: 1.0,
    #           scaling_adjustment: 1, # required
    #         }
    #       ],
    #       min_adjustment_magnitude: 1,
    #       cooldown: 1,
    #       metric_aggregation_type: "Average" # One of: ["Average", "Minimum", "Maximum"]
    #     },
    #     target_tracking_scaling_policy_configuration: {
    #       target_value: 1.0, # required
    #       predefined_metric_specification: {
    #         predefined_metric_type: "DynamoDBReadCapacityUtilization" # One of: ["DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut", "SageMakerVariantInvocationsPerInstance", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "AppStreamAverageCapacityUtilization", "ComprehendInferenceUtilization", "LambdaProvisionedConcurrencyUtilization", "CassandraReadCapacityUtilization", "CassandraWriteCapacityUtilization", "KafkaBrokerStorageUtilization", "ElastiCacheEngineCPUUtilization", "ElastiCacheDatabaseMemoryUsagePercentage", "ElastiCachePrimaryEngineCPUUtilization", "ElastiCacheReplicaEngineCPUUtilization", "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage", "NeptuneReaderAverageCPUUtilization", "SageMakerVariantProvisionedConcurrencyUtilization", "ElastiCacheDatabaseCapacityUsageCountedForEvictPercentage", "SageMakerInferenceComponentInvocationsPerCopy", "WorkSpacesAverageUserSessionsCapacityUtilization", "SageMakerInferenceComponentConcurrentRequestsPerCopyHighResolution", "SageMakerVariantConcurrentRequestsPerModelHighResolution"], # required
    #         resource_label: "ResourceLabel"
    #       },
    #       customized_metric_specification: {
    #         metric_name: "MetricName",
    #         namespace: "MetricNamespace",
    #         dimensions: [
    #           {
    #             name: "MetricDimensionName", # required
    #             value: "MetricDimensionValue", # required
    #           }
    #         ],
    #         statistic: "Average" # One of: ["Average", "Minimum", "Maximum", "SampleCount", "Sum"],
    #         unit: "MetricUnit",
    #         metrics: [
    #           {
    #             expression: "Expression",
    #             id: "Id", # required
    #             label: "XmlString",
    #             metric_stat: {
    #               metric: { # required
    #                 dimensions: [
    #                   {
    #                     name: "TargetTrackingMetricDimensionName", # required
    #                     value: "TargetTrackingMetricDimensionValue", # required
    #                   }
    #                 ],
    #                 metric_name: "TargetTrackingMetricName",
    #                 namespace: "TargetTrackingMetricNamespace"
    #               },
    #               stat: "XmlString", # required
    #               unit: "TargetTrackingMetricUnit"
    #             },
    #             return_data: false
    #           }
    #         ]
    #       },
    #       scale_out_cooldown: 1,
    #       scale_in_cooldown: 1,
    #       disable_scale_in: false
    #     },
    #     predictive_scaling_policy_configuration: {
    #       metric_specifications: [ # required
    #         {
    #           target_value: 1.0, # required
    #           predefined_metric_pair_specification: {
    #             predefined_metric_type: "PredictiveScalingMetricType", # required
    #             resource_label: "ResourceLabel"
    #           },
    #           predefined_scaling_metric_specification: {
    #             predefined_metric_type: "PredictiveScalingMetricType", # required
    #             resource_label: "ResourceLabel"
    #           },
    #           predefined_load_metric_specification: {
    #             predefined_metric_type: "PredictiveScalingMetricType", # required
    #             resource_label: "ResourceLabel"
    #           },
    #           customized_scaling_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "Id", # required
    #                 expression: "Expression",
    #                 metric_stat: {
    #                   metric: { # required
    #                     dimensions: [
    #                       {
    #                         name: "PredictiveScalingMetricDimensionName", # required
    #                         value: "PredictiveScalingMetricDimensionValue", # required
    #                       }
    #                     ],
    #                     metric_name: "PredictiveScalingMetricName",
    #                     namespace: "PredictiveScalingMetricNamespace"
    #                   },
    #                   stat: "XmlString", # required
    #                   unit: "PredictiveScalingMetricUnit"
    #                 },
    #                 label: "XmlString",
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           customized_load_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "Id", # required
    #                 expression: "Expression",
    #                 metric_stat: {
    #                   metric: { # required
    #                     dimensions: [
    #                       {
    #                         name: "PredictiveScalingMetricDimensionName", # required
    #                         value: "PredictiveScalingMetricDimensionValue", # required
    #                       }
    #                     ],
    #                     metric_name: "PredictiveScalingMetricName",
    #                     namespace: "PredictiveScalingMetricNamespace"
    #                   },
    #                   stat: "XmlString", # required
    #                   unit: "PredictiveScalingMetricUnit"
    #                 },
    #                 label: "XmlString",
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           customized_capacity_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "Id", # required
    #                 expression: "Expression",
    #                 metric_stat: {
    #                   metric: { # required
    #                     dimensions: [
    #                       {
    #                         name: "PredictiveScalingMetricDimensionName", # required
    #                         value: "PredictiveScalingMetricDimensionValue", # required
    #                       }
    #                     ],
    #                     metric_name: "PredictiveScalingMetricName",
    #                     namespace: "PredictiveScalingMetricNamespace"
    #                   },
    #                   stat: "XmlString", # required
    #                   unit: "PredictiveScalingMetricUnit"
    #                 },
    #                 label: "XmlString",
    #                 return_data: false
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       mode: "ForecastOnly" # One of: ["ForecastOnly", "ForecastAndScale"],
    #       scheduling_buffer_time: 1,
    #       max_capacity_breach_behavior: "HonorMaxCapacity" # One of: ["HonorMaxCapacity", "IncreaseMaxCapacity"],
    #       max_capacity_buffer: 1
    #     }
    #   }
    #   options = {}
    #   response = client.put_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "ResourceIdMaxLen1600", # required
    #     alarms: [
    #       {
    #         alarm_name: "ResourceId", # required
    #         alarm_arn: "ResourceId", # required
    #       }
    #     ]
    #   }
    # @return [Types::PutScalingPolicyResponse]
    def put_scaling_policy(params = {}, options = {})
      request = build_request(:put_scaling_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates a scheduled action for an Application Auto Scaling scalable target. </p>
    #          <p>Each scalable target is identified by a service namespace, resource ID, and scalable
    #          dimension. A scheduled action applies to the scalable target identified by those three
    #          attributes. You cannot create a scheduled action until you have registered the resource as
    #          a scalable target.</p>
    #          <p>When you specify start and end times with a recurring schedule using a cron expression
    #          or rates, they form the boundaries for when the recurring action starts and stops.</p>
    #          <p>To update a scheduled action, specify the parameters that you want to change. If you
    #          don't specify start and end times, the old values are deleted.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html">Scheduled scaling</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #          <note>
    #             <p>If a scalable target is deregistered, the scalable target is no longer available to
    #             run scheduled actions. Any scheduled actions that were specified for the scalable target
    #             are deleted.</p>
    #          </note>
    # @param [Hash, Types::PutScheduledActionRequest] params
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [String] :schedule
    #   <p>The schedule for this action. The following formats are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>At expressions - "<code>at(<i>yyyy</i>-<i>mm</i>-<i>dd</i>T<i>hh</i>:<i>mm</i>:<i>ss</i>)</code>"</p>
    #               </li>
    #               <li>
    #                  <p>Rate expressions - "<code>rate(<i>value</i>
    #                        <i>unit</i>)</code>"</p>
    #               </li>
    #               <li>
    #                  <p>Cron expressions - "<code>cron(<i>fields</i>)</code>"</p>
    #               </li>
    #            </ul>
    #            <p>At expressions are useful for one-time schedules. Cron expressions are useful for 
    #            scheduled actions that run periodically at a specified date and time, and rate expressions 
    #            are useful for scheduled actions that run at a regular interval.</p>
    #            <p>At and cron expressions use Universal Coordinated Time (UTC) by
    #            default.</p>
    #            <p>The cron format consists of six fields separated by white spaces: [Minutes] [Hours] [Day_of_Month] [Month] [Day_of_Week] [Year].</p>
    #            <p>For rate expressions, <i>value</i> is a positive integer and <i>unit</i> is 
    #            <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-using-cron-expressions.html">Schedule recurring scaling actions using cron expressions</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    # @option params [String] :timezone
    #   <p>Specifies the time zone used when setting a scheduled action by using an at or cron
    #            expression. If a time zone is not provided, UTC is used by default.</p>
    #            <p>Valid values are the canonical names of the IANA time zones supported by Joda-Time (such
    #            as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For more information, see <a href="https://www.joda.org/joda-time/timezones.html">https://www.joda.org/joda-time/timezones.html</a>.</p>
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action. This name must be unique among all other scheduled
    #            actions on the specified scalable target. </p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scheduled action.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :start_time
    #   <p>The date and time for this scheduled action to start, in UTC.</p>
    # @option params [Time] :end_time
    #   <p>The date and time for the recurring schedule to end, in UTC.</p>
    # @option params [Types::ScalableTargetAction] :scalable_target_action
    #   <p>The new minimum and maximum capacity. You can set both values or just one. At the
    #            scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out
    #            to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling
    #            scales in to the maximum capacity.</p>
    # @example To create a recurring scheduled action
    #   # This example adds a scheduled action to a DynamoDB table called TestTable to scale out on a recurring schedule. On the specified schedule (every day at 12:15pm UTC), if the current capacity is below the value specified for MinCapacity, Application Auto Scaling scales out to the value specified by MinCapacity.
    #   params = {
    #     service_namespace: dynamodb,
    #     schedule: "cron(15 12 * * ? *)",
    #     scheduled_action_name: "my-recurring-action",
    #     resource_id: "table/TestTable",
    #     scalable_dimension: dynamodb:table:WriteCapacityUnits,
    #     scalable_target_action: {
    #       min_capacity: 6
    #     }
    #   }
    #   options = {}
    #   response = client.put_scheduled_action(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     schedule: "ResourceIdMaxLen1600",
    #     timezone: "ResourceIdMaxLen1600",
    #     scheduled_action_name: "ScheduledActionName", # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     scalable_target_action: {
    #       min_capacity: 1,
    #       max_capacity: 1
    #     }
    #   }
    #   options = {}
    #   response = client.put_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutScheduledActionResponse]
    def put_scheduled_action(params = {}, options = {})
      request = build_request(:put_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Registers or updates a scalable target, which is the resource that you want to
    #          scale.</p>
    #          <p>Scalable targets are uniquely identified by the combination of resource ID, scalable
    #          dimension, and namespace, which represents some capacity dimension of the underlying
    #          service.</p>
    #          <p>When you register a new scalable target, you must specify values for the minimum and
    #          maximum capacity. If the specified resource is not active in the target service, this
    #          operation does not change the resource's current capacity. Otherwise, it changes the
    #          resource's current capacity to a value that is inside of this range.</p>
    #          <p>If you add a scaling policy, current capacity is adjustable within the specified range
    #          when scaling starts. Application Auto Scaling scaling policies will not scale capacity to values that are
    #          outside of the minimum and maximum range.</p>
    #          <p>After you register a scalable target, you do not need to register it again to use other
    #          Application Auto Scaling operations. To see which resources have been registered, use <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html">DescribeScalableTargets</a>. You can also view the scaling policies for a service
    #          namespace by using <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html">DescribeScalableTargets</a>. If you no longer need a scalable target, you can
    #          deregister it by using <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html">DeregisterScalableTarget</a>.</p>
    #          <p>To update a scalable target, specify the parameters that you want to change. Include the
    #          parameters that identify the scalable target: resource ID, scalable dimension, and
    #          namespace. Any parameters that you don't specify are not changed by this update request. </p>
    #          <note>
    #             <p>If you call the <code>RegisterScalableTarget</code> API operation to create a
    #             scalable target, there might be a brief delay until the operation achieves <a href="https://en.wikipedia.org/wiki/Eventual_consistency">eventual
    #             consistency</a>. You might become aware of this brief delay if you get unexpected
    #             errors when performing sequential operations. The typical strategy is to retry the
    #             request, and some Amazon Web Services SDKs include automatic backoff and retry logic.</p>
    #             <p>If you call the <code>RegisterScalableTarget</code> API operation to update an
    #             existing scalable target, Application Auto Scaling retrieves the current capacity of the resource. If
    #             it's below the minimum capacity or above the maximum capacity, Application Auto Scaling adjusts the
    #             capacity of the scalable target to place it within these bounds, even if you don't
    #             include the <code>MinCapacity</code> or <code>MaxCapacity</code> request
    #             parameters.</p>
    #          </note>
    # @param [Hash, Types::RegisterScalableTargetRequest] params
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource that is associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :min_capacity
    #   <p>The minimum value that you plan to scale in to. When a scaling policy is in effect,
    #         Application Auto Scaling can scale in (contract) as needed to the minimum capacity limit in response to
    #         changing demand. This property is required when registering a new scalable target.</p>
    #            <p>For the following resources, the minimum value allowed is 0.</p>
    #            <ul>
    #               <li>
    #                  <p>AppStream 2.0 fleets</p>
    #               </li>
    #               <li>
    #                  <p> Aurora DB clusters</p>
    #               </li>
    #               <li>
    #                  <p>ECS services</p>
    #               </li>
    #               <li>
    #                  <p>EMR clusters</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variants</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference components</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint provisioned concurrency</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleets</p>
    #               </li>
    #               <li>
    #                  <p>custom resources</p>
    #               </li>
    #            </ul>
    #            <p>It's strongly recommended that you specify a value greater than 0. A value greater than 0
    #         means that data points are continuously reported to CloudWatch that scaling policies can use to
    #         scale on a metric like average CPU utilization.</p>
    #            <p>For all other resources, the minimum allowed value depends on the type of resource that
    #         you are using. If you provide a value that is lower than what a resource can accept, an error
    #         occurs. In which case, the error message will provide the minimum value that the resource can
    #         accept.</p>
    # @option params [Integer] :max_capacity
    #   <p>The maximum value that you plan to scale out to. When a scaling policy is in effect,
    #            Application Auto Scaling can scale out (expand) as needed to the maximum capacity limit in response to
    #            changing demand. This property is required when registering a new scalable target.</p>
    #            <p>Although you can specify a large maximum capacity, note that service quotas might impose
    #            lower limits. Each service has its own default quotas for the maximum capacity of the
    #            resource. If you want to specify a higher limit, you can request an increase. For more
    #            information, consult the documentation for that service. For information about the default
    #            quotas for each service, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html">Service endpoints and
    #               quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :role_arn
    #   <p>This parameter is required for services that do not support service-linked roles (such as
    #         Amazon EMR), and it must specify the ARN of an IAM role that allows Application Auto Scaling to modify the scalable
    #         target on your behalf. </p>
    #            <p>If the service supports service-linked roles, Application Auto Scaling uses a service-linked role, which
    #         it creates if it does not yet exist. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html">How Application Auto Scaling works with IAM</a>.</p>
    # @option params [Types::SuspendedState] :suspended_state
    #   <p>An embedded object that contains attributes and attribute values that are used to
    #            suspend and resume automatic scaling. Setting the value of an attribute to
    #               <code>true</code> suspends the specified scaling activities. Setting it to
    #               <code>false</code> (default) resumes the specified scaling activities. </p>
    #            <p>
    #               <b>Suspension Outcomes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>For <code>DynamicScalingInSuspended</code>, while a suspension is in effect, all
    #                  scale-in activities that are triggered by a scaling policy are suspended.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>DynamicScalingOutSuspended</code>, while a suspension is in effect, all
    #                  scale-out activities that are triggered by a scaling policy are suspended.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>ScheduledScalingSuspended</code>, while a suspension is in effect, all
    #                  scaling activities that involve scheduled actions are suspended. </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html">Suspend and resume scaling</a> in the <i>Application Auto Scaling User
    #            Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags to the scalable target. Use this parameter to tag the scalable
    #            target when it is created. To tag an existing scalable target, use the <a>TagResource</a> operation.</p>
    #            <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are
    #            required. You cannot have more than one tag on a scalable target with the same tag
    #            key.</p>
    #            <p>Use tags to control access to a scalable target. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html">Tagging support
    #               for Application Auto Scaling</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    # @example To register an ECS service as a scalable target
    #   # This example registers a scalable target from an Amazon ECS service called web-app that is running on the default cluster, with a minimum desired count of 1 task and a maximum desired count of 10 tasks.
    #   params = {
    #     service_namespace: ecs,
    #     resource_id: "service/default/web-app",
    #     scalable_dimension: ecs:service:DesiredCount,
    #     min_capacity: 1,
    #     max_capacity: 10
    #   }
    #   options = {}
    #   response = client.register_scalable_target(params, options)
    #   response.to_h #=>
    #   {
    #     scalable_target_arn: "arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_namespace: "ecs" # One of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune", "workspaces"], # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount" # One of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:cache-cluster:Nodes", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount", "sagemaker:variant:DesiredProvisionedConcurrency", "sagemaker:inference-component:DesiredCopyCount", "workspaces:workspacespool:DesiredUserSessions"], # required
    #     min_capacity: 1,
    #     max_capacity: 1,
    #     role_arn: "ResourceIdMaxLen1600",
    #     suspended_state: {
    #       dynamic_scaling_in_suspended: false,
    #       dynamic_scaling_out_suspended: false,
    #       scheduled_scaling_suspended: false
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.register_scalable_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scalable_target_arn: "XmlString"
    #   }
    # @return [Types::RegisterScalableTargetResponse]
    def register_scalable_target(params = {}, options = {})
      request = build_request(:register_scalable_target, params)
      request.send_request(options)
    end

    # <p>Adds or edits tags on an Application Auto Scaling scalable target.</p>
    #          <p>Each tag consists of a tag key and a tag value, which are both case-sensitive strings.
    #          To add a tag, specify a new tag key and a tag value. To edit a tag, specify an existing tag
    #          key and a new tag value.</p>
    #          <p>You can use this operation to tag an Application Auto Scaling scalable target, but you cannot tag a
    #          scaling policy or scheduled action.</p>
    #          <p>You can also add tags to an Application Auto Scaling scalable target while creating it
    #             (<code>RegisterScalableTarget</code>).</p>
    #          <p>For general information about tags, including the format and syntax, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging your Amazon Web Services
    #             resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #          <p>Use tags to control access to a scalable target. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html">Tagging support
    #             for Application Auto Scaling</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Identifies the Application Auto Scaling scalable target that you want to apply tags to.</p>
    #            <p>For example:
    #               <code>arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123</code>
    #            </p>
    #            <p>To get the ARN for a scalable target, use <a>DescribeScalableTargets</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services
    #            resource.</p>
    #            <p>Each tag consists of a tag key and a tag value.</p>
    #            <p>You cannot have more than one tag on an Application Auto Scaling scalable target with the same tag key.
    #            If you specify an existing tag key with a different tag value, Application Auto Scaling replaces the
    #            current tag value with the specified one.</p>
    #            <p>For information about the rules that apply to tag keys and tag values, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-defined tag
    #               restrictions</a> in the <i>Amazon Web Services Billing User Guide</i>.</p>
    # @example To add a tag to a scalable target
    #   # This example adds a tag with the key name "environment" and the value "production" to the scalable target specified by its ARN.
    #   params = {
    #     resource_arn: "arn:aws:application-autoscaling:us-west-2:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123",
    #     tags: {
    #       "environment" => "production"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Deletes tags from an Application Auto Scaling scalable target. To delete a tag, specify the tag key and
    #          the Application Auto Scaling scalable target.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Identifies the Application Auto Scaling scalable target from which to remove tags.</p>
    #            <p>For example:
    #               <code>arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123</code>
    #            </p>
    #            <p>To get the ARN for a scalable target, use <a>DescribeScalableTargets</a>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
    # @example To remove a tag from a scalable target
    #   # This example removes the tag pair with the key name "environment" from the scalable target specified by its ARN.
    #   params = {
    #     resource_arn: "arn:aws:application-autoscaling:us-west-2:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123",
    #     tag_keys: [
    #       "environment"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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
      context[:gem_name] = 'aws-sdk-applicationautoscaling'
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
