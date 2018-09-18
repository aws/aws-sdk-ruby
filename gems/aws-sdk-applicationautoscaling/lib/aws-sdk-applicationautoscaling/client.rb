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

Aws::Plugins::GlobalConfiguration.add_identifier(:applicationautoscaling)

module Aws::ApplicationAutoScaling
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

    # Deletes the specified Application Auto Scaling scaling policy.
    #
    # Deleting a policy deletes the underlying alarm action, but does not
    # delete the CloudWatch alarm associated with the scaling policy, even
    # if it no longer has an associated action.
    #
    # To create a scaling policy or update an existing one, see
    # PutScalingPolicy.
    #
    # @option params [required, String] :policy_name
    #   The name of the scaling policy.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
    #
    # @option params [required, String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
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
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
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

    # Deletes the specified Application Auto Scaling scheduled action.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
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
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
    #
    # @option params [String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_action({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     scheduled_action_name: "ResourceIdMaxLen1600", # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
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

    # Deregisters a scalable target.
    #
    # Deregistering a scalable target deletes the scaling policies that are
    # associated with it.
    #
    # To create a scalable target or update an existing one, see
    # RegisterScalableTarget.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
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
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
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
    # You can filter the results using the `ResourceIds` and
    # `ScalableDimension` parameters.
    #
    # To create a scalable target or update an existing one, see
    # RegisterScalableTarget. If you are no longer using a scalable target,
    # you can deregister it using DeregisterScalableTarget.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
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
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
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
    #
    # @example Example: To describe scalable targets
    #
    #   # This example describes the scalable targets for the ecs service namespace.
    #
    #   resp = client.describe_scalable_targets({
    #     service_namespace: "ecs", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scalable_targets: [
    #       {
    #         creation_time: Time.parse("2016-05-06T11:21:46.199Z"), 
    #         max_capacity: 10, 
    #         min_capacity: 1, 
    #         resource_id: "service/default/web-app", 
    #         role_arn: "arn:aws:iam::012345678910:role/ApplicationAutoscalingECSRole", 
    #         scalable_dimension: "ecs:service:DesiredCount", 
    #         service_namespace: "ecs", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scalable_targets({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     resource_ids: ["ResourceIdMaxLen1600"],
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scalable_targets #=> Array
    #   resp.scalable_targets[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource"
    #   resp.scalable_targets[0].resource_id #=> String
    #   resp.scalable_targets[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property"
    #   resp.scalable_targets[0].min_capacity #=> Integer
    #   resp.scalable_targets[0].max_capacity #=> Integer
    #   resp.scalable_targets[0].role_arn #=> String
    #   resp.scalable_targets[0].creation_time #=> Time
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
    # You can filter the results using the `ResourceId` and
    # `ScalableDimension` parameters.
    #
    # Scaling activities are triggered by CloudWatch alarms that are
    # associated with scaling policies. To view the scaling policies for a
    # service namespace, see DescribeScalingPolicies. To create a scaling
    # policy or update an existing one, see PutScalingPolicy.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
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
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
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
    #         end_time: Time.parse("2016-05-06T16:04:32.111Z"), 
    #         resource_id: "service/default/web-app", 
    #         scalable_dimension: "ecs:service:DesiredCount", 
    #         service_namespace: "ecs", 
    #         start_time: Time.parse("2016-05-06T16:03:58.171Z"), 
    #         status_code: "Successful", 
    #         status_message: "Successfully set desired count to 1. Change successfully fulfilled by ecs.", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_activities({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_activities #=> Array
    #   resp.scaling_activities[0].activity_id #=> String
    #   resp.scaling_activities[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource"
    #   resp.scaling_activities[0].resource_id #=> String
    #   resp.scaling_activities[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property"
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

    # Describes the scaling policies for the specified service namespace.
    #
    # You can filter the results using the `ResourceId`,
    # `ScalableDimension`, and `PolicyNames` parameters.
    #
    # To create a scaling policy or update an existing one, see
    # PutScalingPolicy. If you are no longer using a scaling policy, you can
    # delete it using DeleteScalingPolicy.
    #
    # @option params [Array<String>] :policy_names
    #   The names of the scaling policies to describe.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
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
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
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
    #
    # @example Example: To describe scaling policies
    #
    #   # This example describes the scaling policies for the ecs service namespace.
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
    #         creation_time: Time.parse("2016-05-06T12:11:39.230Z"), 
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
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_policies #=> Array
    #   resp.scaling_policies[0].policy_arn #=> String
    #   resp.scaling_policies[0].policy_name #=> String
    #   resp.scaling_policies[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource"
    #   resp.scaling_policies[0].resource_id #=> String
    #   resp.scaling_policies[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property"
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
    #   resp.scaling_policies[0].target_tracking_scaling_policy_configuration.predefined_metric_specification.predefined_metric_type #=> String, one of "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut", "SageMakerVariantInvocationsPerInstance", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization"
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

    # Describes the scheduled actions for the specified service namespace.
    #
    # You can filter the results using the `ResourceId`,
    # `ScalableDimension`, and `ScheduledActionNames` parameters.
    #
    # To create a scheduled action or update an existing one, see
    # PutScheduledAction. If you are no longer using a scheduled action, you
    # can delete it using DeleteScheduledAction.
    #
    # @option params [Array<String>] :scheduled_action_names
    #   The names of the scheduled actions to describe.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
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
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_actions({
    #     scheduled_action_names: ["ResourceIdMaxLen1600"],
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_actions #=> Array
    #   resp.scheduled_actions[0].scheduled_action_name #=> String
    #   resp.scheduled_actions[0].scheduled_action_arn #=> String
    #   resp.scheduled_actions[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource"
    #   resp.scheduled_actions[0].schedule #=> String
    #   resp.scheduled_actions[0].resource_id #=> String
    #   resp.scheduled_actions[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property"
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

    # Creates or updates a policy for an Application Auto Scaling scalable
    # target.
    #
    # Each scalable target is identified by a service namespace, resource
    # ID, and scalable dimension. A scaling policy applies to the scalable
    # target identified by those three attributes. You cannot create a
    # scaling policy until you register the scalable target using
    # RegisterScalableTarget.
    #
    # To update a policy, specify its policy name and the parameters that
    # you want to change. Any parameters that you don't specify are not
    # changed by this update request.
    #
    # You can view the scaling policies for a service namespace using
    # DescribeScalingPolicies. If you are no longer using a scaling policy,
    # you can delete it using DeleteScalingPolicy.
    #
    # @option params [required, String] :policy_name
    #   The name of the scaling policy.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource associated with the scaling policy.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
    #
    # @option params [required, String] :scalable_dimension
    #   The scalable dimension. This string consists of the service namespace,
    #   resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    # @option params [String] :policy_type
    #   The policy type. This parameter is required if you are creating a
    #   policy.
    #
    #   For DynamoDB, only `TargetTrackingScaling` is supported. For Amazon
    #   ECS, Spot Fleet, and Amazon RDS, both `StepScaling` and
    #   `TargetTrackingScaling` are supported. For any other service, only
    #   `StepScaling` is supported.
    #
    # @option params [Types::StepScalingPolicyConfiguration] :step_scaling_policy_configuration
    #   A step scaling policy.
    #
    #   This parameter is required if you are creating a policy and the policy
    #   type is `StepScaling`.
    #
    # @option params [Types::TargetTrackingScalingPolicyConfiguration] :target_tracking_scaling_policy_configuration
    #   A target tracking policy.
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
    # @example Example: To apply a scaling policy to an Amazon ECS service
    #
    #   # This example applies a scaling policy to an Amazon ECS service called web-app in the default cluster. The policy
    #   # increases the desired count of the service by 200%, with a cool down period of 60 seconds.
    #
    #   resp = client.put_scaling_policy({
    #     policy_name: "web-app-cpu-gt-75", 
    #     policy_type: "StepScaling", 
    #     resource_id: "service/default/web-app", 
    #     scalable_dimension: "ecs:service:DesiredCount", 
    #     service_namespace: "ecs", 
    #     step_scaling_policy_configuration: {
    #       adjustment_type: "PercentChangeInCapacity", 
    #       cooldown: 60, 
    #       step_adjustments: [
    #         {
    #           metric_interval_lower_bound: 0, 
    #           scaling_adjustment: 200, 
    #         }, 
    #       ], 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_arn: "arn:aws:autoscaling:us-west-2:012345678910:scalingPolicy:6d8972f3-efc8-437c-92d1-6270f29a66e7:resource/ecs/service/default/web-app:policyName/web-app-cpu-gt-75", 
    #   }
    #
    # @example Example: To apply a scaling policy to an Amazon EC2 Spot fleet
    #
    #   # This example applies a scaling policy to an Amazon EC2 Spot fleet. The policy increases the target capacity of the spot
    #   # fleet by 200%, with a cool down period of 180 seconds.",
    #
    #   resp = client.put_scaling_policy({
    #     policy_name: "fleet-cpu-gt-75", 
    #     policy_type: "StepScaling", 
    #     resource_id: "spot-fleet-request/sfr-45e69d8a-be48-4539-bbf3-3464e99c50c3", 
    #     scalable_dimension: "ec2:spot-fleet-request:TargetCapacity", 
    #     service_namespace: "ec2", 
    #     step_scaling_policy_configuration: {
    #       adjustment_type: "PercentChangeInCapacity", 
    #       cooldown: 180, 
    #       step_adjustments: [
    #         {
    #           metric_interval_lower_bound: 0, 
    #           scaling_adjustment: 200, 
    #         }, 
    #       ], 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_arn: "arn:aws:autoscaling:us-east-1:012345678910:scalingPolicy:89406401-0cb7-4130-b770-d97cca0e446b:resource/ec2/spot-fleet-request/sfr-45e69d8a-be48-4539-bbf3-3464e99c50c3:policyName/fleet-cpu-gt-75", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy({
    #     policy_name: "PolicyName", # required
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
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
    #         predefined_metric_type: "DynamoDBReadCapacityUtilization", # required, accepts DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, SageMakerVariantInvocationsPerInstance, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization
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
    # scheduled action until you register the scalable target using
    # RegisterScalableTarget.
    #
    # To update an action, specify its name and the parameters that you want
    # to change. If you don't specify start and end times, the old values
    # are deleted. Any other parameters that you don't specify are not
    # changed by this update request.
    #
    # You can view the scheduled actions using DescribeScheduledActions. If
    # you are no longer using a scheduled action, you can delete it using
    # DeleteScheduledAction.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #
    # @option params [String] :schedule
    #   The schedule for this action. The following formats are supported:
    #
    #   * At expressions - `at(yyyy-mm-ddThh:mm:ss)`
    #
    #   * Rate expressions - `rate(value unit)`
    #
    #   * Cron expressions - `cron(fields)`
    #
    #   At expressions are useful for one-time schedules. Specify the time, in
    #   UTC.
    #
    #   For rate expressions, *value* is a positive integer and *unit* is
    #   `minute` \| `minutes` \| `hour` \| `hours` \| `day` \| `days`.
    #
    #   For more information about cron expressions, see [Cron Expressions][1]
    #   in the *Amazon CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
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
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
    #
    # @option params [String] :scalable_dimension
    #   The scalable dimension. This parameter is required if you are creating
    #   a scheduled action. This string consists of the service namespace,
    #   resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time for the scheduled action to start.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The date and time for the scheduled action to end.
    #
    # @option params [Types::ScalableTargetAction] :scalable_target_action
    #   The new minimum and maximum capacity. You can set both values or just
    #   one. During the scheduled time, if the current capacity is below the
    #   minimum capacity, Application Auto Scaling scales out to the minimum
    #   capacity. If the current capacity is above the maximum capacity,
    #   Application Auto Scaling scales in to the maximum capacity.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scheduled_action({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     schedule: "ResourceIdMaxLen1600",
    #     scheduled_action_name: "ScheduledActionName", # required
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
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

    # Registers or updates a scalable target. A scalable target is a
    # resource that Application Auto Scaling can scale out or scale in.
    # After you have registered a scalable target, you can use this
    # operation to update the minimum and maximum values for its scalable
    # dimension.
    #
    # After you register a scalable target, you can create and apply scaling
    # policies using PutScalingPolicy. You can view the scaling policies for
    # a service namespace using DescribeScalableTargets. If you no longer
    # need a scalable target, you can deregister it using
    # DeregisterScalableTarget.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variants - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #     Spot fleet request.
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
    #     Aurora DB cluster. Available for Aurora MySQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension for
    #     a custom resource provided by your own application or service.
    #
    # @option params [Integer] :min_capacity
    #   The minimum value to scale to in response to a scale in event. This
    #   parameter is required if you are registering a scalable target.
    #
    # @option params [Integer] :max_capacity
    #   The maximum value to scale to in response to a scale out event. This
    #   parameter is required if you are registering a scalable target.
    #
    # @option params [String] :role_arn
    #   Application Auto Scaling creates a service-linked role that grants it
    #   permissions to modify the scalable target on your behalf. For more
    #   information, see [Service-Linked Roles for Application Auto
    #   Scaling][1].
    #
    #   For resources that are not supported using a service-linked role, this
    #   parameter is required and must specify the ARN of an IAM role that
    #   allows Application Auto Scaling to modify the scalable target on your
    #   behalf.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/application/userguide/application-autoscaling-service-linked-roles.html
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
    #     role_arn: "arn:aws:iam::012345678910:role/ApplicationAutoscalingECSRole", 
    #     scalable_dimension: "ecs:service:DesiredCount", 
    #     service_namespace: "ecs", 
    #   })
    #
    # @example Example: To register an EC2 Spot fleet as a scalable target
    #
    #   # This example registers a scalable target from an Amazon EC2 Spot fleet with a minimum target capacity of 1 and a maximum
    #   # of 10.
    #
    #   resp = client.register_scalable_target({
    #     max_capacity: 10, 
    #     min_capacity: 1, 
    #     resource_id: "spot-fleet-request/sfr-45e69d8a-be48-4539-bbf3-3464e99c50c3", 
    #     role_arn: "arn:aws:iam::012345678910:role/ApplicationAutoscalingSpotRole", 
    #     scalable_dimension: "ec2:spot-fleet-request:TargetCapacity", 
    #     service_namespace: "ec2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_scalable_target({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #     min_capacity: 1,
    #     max_capacity: 1,
    #     role_arn: "ResourceIdMaxLen1600",
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
      context[:gem_version] = '1.13.0'
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
