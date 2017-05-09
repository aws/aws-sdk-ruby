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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
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
    #   The namespace of the AWS service. For more information, see [AWS
    #   Service Namespaces][1] in the *Amazon Web Services General Reference*.
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
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scaling_policy({
    #     policy_name: "ResourceIdMaxLen1600", # required
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity
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

    # Deregisters a scalable target.
    #
    # Deregistering a scalable target deletes the scaling policies that are
    # associated with it.
    #
    # To create a scalable target or update an existing one, see
    # RegisterScalableTarget.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service. For more information, see [AWS
    #   Service Namespaces][1] in the *Amazon Web Services General Reference*.
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
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_scalable_target({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity
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

    # Provides descriptive information about the scalable targets in the
    # specified namespace.
    #
    # You can filter the results using the `ResourceIds` and
    # `ScalableDimension` parameters.
    #
    # To create a scalable target or update an existing one, see
    # RegisterScalableTarget. If you are no longer using a scalable target,
    # you can deregister it using DeregisterScalableTarget.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service. For more information, see [AWS
    #   Service Namespaces][1] in the *Amazon Web Services General Reference*.
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
    # @option params [Integer] :max_results
    #   The maximum number of scalable target results. This value can be
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
    # @return [Types::DescribeScalableTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalableTargetsResponse#scalable_targets #scalable_targets} => Array&lt;Types::ScalableTarget&gt;
    #   * {Types::DescribeScalableTargetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scalable_targets({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream
    #     resource_ids: ["ResourceIdMaxLen1600"],
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scalable_targets #=> Array
    #   resp.scalable_targets[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream"
    #   resp.scalable_targets[0].resource_id #=> String
    #   resp.scalable_targets[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity"
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
    #   The namespace of the AWS service. For more information, see [AWS
    #   Service Namespaces][1] in the *Amazon Web Services General Reference*.
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
    # @option params [Integer] :max_results
    #   The maximum number of scalable target results. This value can be
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
    # @return [Types::DescribeScalingActivitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingActivitiesResponse#scaling_activities #scaling_activities} => Array&lt;Types::ScalingActivity&gt;
    #   * {Types::DescribeScalingActivitiesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_activities({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_activities #=> Array
    #   resp.scaling_activities[0].activity_id #=> String
    #   resp.scaling_activities[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream"
    #   resp.scaling_activities[0].resource_id #=> String
    #   resp.scaling_activities[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity"
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

    # Provides descriptive information about the scaling policies in the
    # specified namespace.
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
    #   The namespace of the AWS service. For more information, see [AWS
    #   Service Namespaces][1] in the *Amazon Web Services General Reference*.
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
    # @option params [Integer] :max_results
    #   The maximum number of scalable target results. This value can be
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
    # @return [Types::DescribeScalingPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingPoliciesResponse#scaling_policies #scaling_policies} => Array&lt;Types::ScalingPolicy&gt;
    #   * {Types::DescribeScalingPoliciesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_policies({
    #     policy_names: ["ResourceIdMaxLen1600"],
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream
    #     resource_id: "ResourceIdMaxLen1600",
    #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity
    #     max_results: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_policies #=> Array
    #   resp.scaling_policies[0].policy_arn #=> String
    #   resp.scaling_policies[0].policy_name #=> String
    #   resp.scaling_policies[0].service_namespace #=> String, one of "ecs", "elasticmapreduce", "ec2", "appstream"
    #   resp.scaling_policies[0].resource_id #=> String
    #   resp.scaling_policies[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity"
    #   resp.scaling_policies[0].policy_type #=> String, one of "StepScaling"
    #   resp.scaling_policies[0].step_scaling_policy_configuration.adjustment_type #=> String, one of "ChangeInCapacity", "PercentChangeInCapacity", "ExactCapacity"
    #   resp.scaling_policies[0].step_scaling_policy_configuration.step_adjustments #=> Array
    #   resp.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0].metric_interval_lower_bound #=> Float
    #   resp.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0].metric_interval_upper_bound #=> Float
    #   resp.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0].scaling_adjustment #=> Integer
    #   resp.scaling_policies[0].step_scaling_policy_configuration.min_adjustment_magnitude #=> Integer
    #   resp.scaling_policies[0].step_scaling_policy_configuration.cooldown #=> Integer
    #   resp.scaling_policies[0].step_scaling_policy_configuration.metric_aggregation_type #=> String, one of "Average", "Minimum", "Maximum"
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

    # Creates or updates a policy for an Application Auto Scaling scalable
    # target.
    #
    # Each scalable target is identified by a service namespace, resource
    # ID, and scalable dimension. A scaling policy applies to the scalable
    # target identified by those three attributes. You cannot create a
    # scaling policy without first registering a scalable target using
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
    #   The namespace of the AWS service. For more information, see [AWS
    #   Service Namespaces][1] in the *Amazon Web Services General Reference*.
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
    # @option params [String] :policy_type
    #   The policy type. If you are creating a new policy, this parameter is
    #   required. If you are updating a policy, this parameter is not
    #   required.
    #
    # @option params [Types::StepScalingPolicyConfiguration] :step_scaling_policy_configuration
    #   The configuration for the step scaling policy. If you are creating a
    #   new policy, this parameter is required. If you are updating a policy,
    #   this parameter is not required. For more information, see
    #   StepScalingPolicyConfiguration and StepAdjustment.
    #
    # @return [Types::PutScalingPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutScalingPolicyResponse#policy_arn #policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy({
    #     policy_name: "PolicyName", # required
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity
    #     policy_type: "StepScaling", # accepts StepScaling
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
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScalingPolicy AWS API Documentation
    #
    # @overload put_scaling_policy(params = {})
    # @param [Hash] params ({})
    def put_scaling_policy(params = {}, options = {})
      req = build_request(:put_scaling_policy, params)
      req.send_request(options)
    end

    # Registers or updates a scalable target. A scalable target is a
    # resource that Application Auto Scaling can scale out or scale in.
    # After you have registered a scalable target, you can use this
    # operation to update the minimum and maximum values for your scalable
    # dimension.
    #
    # After you register a scalable target, you can create and apply scaling
    # policies using PutScalingPolicy. You can view the scaling policies for
    # a service namespace using DescribeScalableTargets. If you are no
    # longer using a scalable target, you can deregister it using
    # DeregisterScalableTarget.
    #
    # @option params [required, String] :service_namespace
    #   The namespace of the AWS service. For more information, see [AWS
    #   Service Namespaces][1] in the *Amazon Web Services General Reference*.
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
    # @option params [Integer] :min_capacity
    #   The minimum value to scale to in response to a scale in event. This
    #   parameter is required if you are registering a scalable target and
    #   optional if you are updating one.
    #
    # @option params [Integer] :max_capacity
    #   The maximum value to scale to in response to a scale out event. This
    #   parameter is required if you are registering a scalable target and
    #   optional if you are updating one.
    #
    # @option params [String] :role_arn
    #   The ARN of an IAM role that allows Application Auto Scaling to modify
    #   the scalable target on your behalf. This parameter is required when
    #   you register a scalable target and optional when you update one.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_scalable_target({
    #     service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream
    #     resource_id: "ResourceIdMaxLen1600", # required
    #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity
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
      context[:gem_version] = '1.0.0.rc4'
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
