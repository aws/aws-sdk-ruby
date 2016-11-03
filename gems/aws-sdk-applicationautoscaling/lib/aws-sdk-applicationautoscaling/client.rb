# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :applicationautoscaling

module Aws
  module ApplicationAutoScaling
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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Deletes an Application Auto Scaling scaling policy that was previously
      # created. If you are no longer using a scaling policy, you can delete
      # it with this operation.
      #
      # Deleting a policy deletes the underlying alarm action, but does not
      # delete the CloudWatch alarm associated with the scaling policy, even
      # if it no longer has an associated action.
      #
      # To create a new scaling policy or update an existing one, see
      # PutScalingPolicy.
      # @option params [required, String] :policy_name
      #   The name of the scaling policy to delete.
      # @option params [required, String] :service_namespace
      #   The namespace for the AWS service that the scaling policy is
      #   associated with. For more information, see [AWS Service Namespaces][1]
      #   in the Amazon Web Services General Reference.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      # @option params [required, String] :resource_id
      #   The resource type and unique identifier string for the resource
      #   associated with the scaling policy. For Amazon ECS services, the
      #   resource type is `services`, and the identifier is the cluster name
      #   and service name; for example, `service/default/sample-webapp`. For
      #   Amazon EC2 Spot fleet requests, the resource type is
      #   `spot-fleet-request`, and the identifier is the Spot fleet request ID;
      #   for example,
      #   `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      # @option params [required, String] :scalable_dimension
      #   The scalable dimension associated with the scaling policy. The
      #   scalable dimension contains the service namespace, resource type, and
      #   scaling property, such as `ecs:service:DesiredCount` for the desired
      #   task count of an Amazon ECS service, or
      #   `ec2:spot-fleet-request:TargetCapacity` for the target capacity of an
      #   Amazon EC2 Spot fleet request.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_scaling_policy({
      #     policy_name: "ResourceIdMaxLen1600", # required
      #     service_namespace: "ecs", # required, accepts ecs, ec2
      #     resource_id: "ResourceIdMaxLen1600", # required
      #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity
      #   })
      # @overload delete_scaling_policy(params = {})
      # @param [Hash] params ({})
      def delete_scaling_policy(params = {}, options = {})
        req = build_request(:delete_scaling_policy, params)
        req.send_request(options)
      end

      # Deregisters a scalable target that was previously registered. If you
      # are no longer using a scalable target, you can delete it with this
      # operation. When you deregister a scalable target, all of the scaling
      # policies that are associated with that scalable target are deleted.
      #
      # To create a new scalable target or update an existing one, see
      # RegisterScalableTarget.
      # @option params [required, String] :service_namespace
      #   The namespace for the AWS service that the scalable target is
      #   associated with. For more information, see [AWS Service Namespaces][1]
      #   in the Amazon Web Services General Reference.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      # @option params [required, String] :resource_id
      #   The resource type and unique identifier string for the resource
      #   associated with the scalable target. For Amazon ECS services, the
      #   resource type is `services`, and the identifier is the cluster name
      #   and service name; for example, `service/default/sample-webapp`. For
      #   Amazon EC2 Spot fleet requests, the resource type is
      #   `spot-fleet-request`, and the identifier is the Spot fleet request ID;
      #   for example,
      #   `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      # @option params [required, String] :scalable_dimension
      #   The scalable dimension associated with the scalable target. The
      #   scalable dimension contains the service namespace, resource type, and
      #   scaling property, such as `ecs:service:DesiredCount` for the desired
      #   task count of an Amazon ECS service, or
      #   `ec2:spot-fleet-request:TargetCapacity` for the target capacity of an
      #   Amazon EC2 Spot fleet request.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.deregister_scalable_target({
      #     service_namespace: "ecs", # required, accepts ecs, ec2
      #     resource_id: "ResourceIdMaxLen1600", # required
      #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity
      #   })
      # @overload deregister_scalable_target(params = {})
      # @param [Hash] params ({})
      def deregister_scalable_target(params = {}, options = {})
        req = build_request(:deregister_scalable_target, params)
        req.send_request(options)
      end

      # Provides descriptive information for scalable targets with a specified
      # service namespace.
      #
      # You can filter the results in a service namespace with the
      # `ResourceIds` and `ScalableDimension` parameters.
      #
      # To create a new scalable target or update an existing one, see
      # RegisterScalableTarget. If you are no longer using a scalable target,
      # you can deregister it with DeregisterScalableTarget.
      # @option params [required, String] :service_namespace
      #   The namespace for the AWS service that the scalable target is
      #   associated with. For more information, see [AWS Service Namespaces][1]
      #   in the Amazon Web Services General Reference.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      # @option params [Array<String>] :resource_ids
      #   The resource type and unique identifier string for the resource
      #   associated with the scalable target. For Amazon ECS services, the
      #   resource type is `services`, and the identifier is the cluster name
      #   and service name; for example, `service/default/sample-webapp`. For
      #   Amazon EC2 Spot fleet requests, the resource type is
      #   `spot-fleet-request`, and the identifier is the Spot fleet request ID;
      #   for example,
      #   `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`. If you
      #   specify a scalable dimension, you must also specify a resource ID.
      # @option params [String] :scalable_dimension
      #   The scalable dimension associated with the scalable target. The
      #   scalable dimension contains the service namespace, resource type, and
      #   scaling property, such as `ecs:service:DesiredCount` for the desired
      #   task count of an Amazon ECS service, or
      #   `ec2:spot-fleet-request:TargetCapacity` for the target capacity of an
      #   Amazon EC2 Spot fleet request. If you specify a scalable dimension,
      #   you must also specify a resource ID.
      # @option params [Integer] :max_results
      #   The maximum number of scalable target results returned by
      #   `DescribeScalableTargets` in paginated output. When this parameter is
      #   used, `DescribeScalableTargets` returns up to `MaxResults` results in
      #   a single page along with a `NextToken` response element. The remaining
      #   results of the initial request can be seen by sending another
      #   `DescribeScalableTargets` request with the returned `NextToken` value.
      #   This value can be between 1 and 50. If this parameter is not used,
      #   then `DescribeScalableTargets` returns up to 50 results and a
      #   `NextToken` value, if applicable.
      # @option params [String] :next_token
      #   The `NextToken` value returned from a previous paginated
      #   `DescribeScalableTargets` request. Pagination continues from the end
      #   of the previous results that returned the `NextToken` value. This
      #   value is `null` when there are no more results to return.
      # @return [Types::DescribeScalableTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeScalableTargetsResponse#scalable_targets #ScalableTargets} => Array&lt;Types::ScalableTarget&gt;
      #   * {Types::DescribeScalableTargetsResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_scalable_targets({
      #     service_namespace: "ecs", # required, accepts ecs, ec2
      #     resource_ids: ["ResourceIdMaxLen1600"],
      #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity
      #     max_results: 1,
      #     next_token: "XmlString",
      #   })
      #
      # @example Response structure
      #   resp.scalable_targets #=> Array
      #   resp.scalable_targets[0].service_namespace #=> String, one of "ecs", "ec2"
      #   resp.scalable_targets[0].resource_id #=> String
      #   resp.scalable_targets[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity"
      #   resp.scalable_targets[0].min_capacity #=> Integer
      #   resp.scalable_targets[0].max_capacity #=> Integer
      #   resp.scalable_targets[0].role_arn #=> String
      #   resp.scalable_targets[0].creation_time #=> Time
      #   resp.next_token #=> String
      # @overload describe_scalable_targets(params = {})
      # @param [Hash] params ({})
      def describe_scalable_targets(params = {}, options = {})
        req = build_request(:describe_scalable_targets, params)
        req.send_request(options)
      end

      # Provides descriptive information for scaling activities with a
      # specified service namespace for the previous six weeks.
      #
      # You can filter the results in a service namespace with the
      # `ResourceId` and `ScalableDimension` parameters.
      #
      # Scaling activities are triggered by CloudWatch alarms that are
      # associated with scaling policies. To view the existing scaling
      # policies for a service namespace, see DescribeScalingPolicies. To
      # create a new scaling policy or update an existing one, see
      # PutScalingPolicy.
      # @option params [required, String] :service_namespace
      #   The namespace for the AWS service that the scaling activity is
      #   associated with. For more information, see [AWS Service Namespaces][1]
      #   in the Amazon Web Services General Reference.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      # @option params [String] :resource_id
      #   The resource type and unique identifier string for the resource
      #   associated with the scaling activity. For Amazon ECS services, the
      #   resource type is `services`, and the identifier is the cluster name
      #   and service name; for example, `service/default/sample-webapp`. For
      #   Amazon EC2 Spot fleet requests, the resource type is
      #   `spot-fleet-request`, and the identifier is the Spot fleet request ID;
      #   for example,
      #   `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`. If you
      #   specify a scalable dimension, you must also specify a resource ID.
      # @option params [String] :scalable_dimension
      #   The scalable dimension associated with the scaling activity. The
      #   scalable dimension contains the service namespace, resource type, and
      #   scaling property, such as `ecs:service:DesiredCount` for the desired
      #   task count of an Amazon ECS service, or
      #   `ec2:spot-fleet-request:TargetCapacity` for the target capacity of an
      #   Amazon EC2 Spot fleet request. If you specify a scalable dimension,
      #   you must also specify a resource ID.
      # @option params [Integer] :max_results
      #   The maximum number of scaling activity results returned by
      #   `DescribeScalingActivities` in paginated output. When this parameter
      #   is used, `DescribeScalingActivities` returns up to `MaxResults`
      #   results in a single page along with a `NextToken` response element.
      #   The remaining results of the initial request can be seen by sending
      #   another `DescribeScalingActivities` request with the returned
      #   `NextToken` value. This value can be between 1 and 50. If this
      #   parameter is not used, then `DescribeScalingActivities` returns up to
      #   50 results and a `NextToken` value, if applicable.
      # @option params [String] :next_token
      #   The `NextToken` value returned from a previous paginated
      #   `DescribeScalingActivities` request. Pagination continues from the end
      #   of the previous results that returned the `NextToken` value. This
      #   value is `null` when there are no more results to return.
      # @return [Types::DescribeScalingActivitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeScalingActivitiesResponse#scaling_activities #ScalingActivities} => Array&lt;Types::ScalingActivity&gt;
      #   * {Types::DescribeScalingActivitiesResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_scaling_activities({
      #     service_namespace: "ecs", # required, accepts ecs, ec2
      #     resource_id: "ResourceIdMaxLen1600",
      #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity
      #     max_results: 1,
      #     next_token: "XmlString",
      #   })
      #
      # @example Response structure
      #   resp.scaling_activities #=> Array
      #   resp.scaling_activities[0].activity_id #=> String
      #   resp.scaling_activities[0].service_namespace #=> String, one of "ecs", "ec2"
      #   resp.scaling_activities[0].resource_id #=> String
      #   resp.scaling_activities[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity"
      #   resp.scaling_activities[0].description #=> String
      #   resp.scaling_activities[0].cause #=> String
      #   resp.scaling_activities[0].start_time #=> Time
      #   resp.scaling_activities[0].end_time #=> Time
      #   resp.scaling_activities[0].status_code #=> String, one of "Pending", "InProgress", "Successful", "Overridden", "Unfulfilled", "Failed"
      #   resp.scaling_activities[0].status_message #=> String
      #   resp.scaling_activities[0].details #=> String
      #   resp.next_token #=> String
      # @overload describe_scaling_activities(params = {})
      # @param [Hash] params ({})
      def describe_scaling_activities(params = {}, options = {})
        req = build_request(:describe_scaling_activities, params)
        req.send_request(options)
      end

      # Provides descriptive information for scaling policies with a specified
      # service namespace.
      #
      # You can filter the results in a service namespace with the
      # `ResourceId`, `ScalableDimension`, and `PolicyNames` parameters.
      #
      # To create a new scaling policy or update an existing one, see
      # PutScalingPolicy. If you are no longer using a scaling policy, you can
      # delete it with DeleteScalingPolicy.
      # @option params [Array<String>] :policy_names
      #   The names of the scaling policies to describe.
      # @option params [required, String] :service_namespace
      #   The AWS service namespace of the scalable target that the scaling
      #   policy is associated with. For more information, see [AWS Service
      #   Namespaces][1] in the Amazon Web Services General Reference.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      # @option params [String] :resource_id
      #   The unique resource identifier string of the scalable target that the
      #   scaling policy is associated with. For Amazon ECS services, the
      #   resource type is `services`, and the identifier is the cluster name
      #   and service name; for example, `service/default/sample-webapp`. For
      #   Amazon EC2 Spot fleet requests, the resource type is
      #   `spot-fleet-request`, and the identifier is the Spot fleet request ID;
      #   for example,
      #   `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`. If you
      #   specify a scalable dimension, you must also specify a resource ID.
      # @option params [String] :scalable_dimension
      #   The scalable dimension of the scalable target that the scaling policy
      #   is associated with. The scalable dimension contains the service
      #   namespace, resource type, and scaling property, such as
      #   `ecs:service:DesiredCount` for the desired task count of an Amazon ECS
      #   service, or `ec2:spot-fleet-request:TargetCapacity` for the target
      #   capacity of an Amazon EC2 Spot fleet request. If you specify a
      #   scalable dimension, you must also specify a resource ID.
      # @option params [Integer] :max_results
      #   The maximum number of scaling policy results returned by
      #   `DescribeScalingPolicies` in paginated output. When this parameter is
      #   used, `DescribeScalingPolicies` returns up to `MaxResults` results in
      #   a single page along with a `NextToken` response element. The remaining
      #   results of the initial request can be seen by sending another
      #   `DescribeScalingPolicies` request with the returned `NextToken` value.
      #   This value can be between 1 and 50. If this parameter is not used,
      #   then `DescribeScalingPolicies` returns up to 50 results and a
      #   `NextToken` value, if applicable.
      # @option params [String] :next_token
      #   The `NextToken` value returned from a previous paginated
      #   `DescribeScalingPolicies` request. Pagination continues from the end
      #   of the previous results that returned the `NextToken` value. This
      #   value is `null` when there are no more results to return.
      # @return [Types::DescribeScalingPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeScalingPoliciesResponse#scaling_policies #ScalingPolicies} => Array&lt;Types::ScalingPolicy&gt;
      #   * {Types::DescribeScalingPoliciesResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_scaling_policies({
      #     policy_names: ["ResourceIdMaxLen1600"],
      #     service_namespace: "ecs", # required, accepts ecs, ec2
      #     resource_id: "ResourceIdMaxLen1600",
      #     scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity
      #     max_results: 1,
      #     next_token: "XmlString",
      #   })
      #
      # @example Response structure
      #   resp.scaling_policies #=> Array
      #   resp.scaling_policies[0].policy_arn #=> String
      #   resp.scaling_policies[0].policy_name #=> String
      #   resp.scaling_policies[0].service_namespace #=> String, one of "ecs", "ec2"
      #   resp.scaling_policies[0].resource_id #=> String
      #   resp.scaling_policies[0].scalable_dimension #=> String, one of "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity"
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
      # @overload describe_scaling_policies(params = {})
      # @param [Hash] params ({})
      def describe_scaling_policies(params = {}, options = {})
        req = build_request(:describe_scaling_policies, params)
        req.send_request(options)
      end

      # Creates or updates a policy for an existing Application Auto Scaling
      # scalable target. Each scalable target is identified by service
      # namespace, a resource ID, and a scalable dimension, and a scaling
      # policy applies to a scalable target that is identified by those three
      # attributes. You cannot create a scaling policy without first
      # registering a scalable target with RegisterScalableTarget.
      #
      # To update an existing policy, use the existing policy name and set the
      # parameters you want to change. Any existing parameter not changed in
      # an update to an existing policy is not changed in this update request.
      #
      # You can view the existing scaling policies for a service namespace
      # with DescribeScalingPolicies. If you are no longer using a scaling
      # policy, you can delete it with DeleteScalingPolicy.
      # @option params [required, String] :policy_name
      #   The name of the scaling policy.
      # @option params [required, String] :service_namespace
      #   The AWS service namespace of the scalable target that this scaling
      #   policy applies to. For more information, see [AWS Service
      #   Namespaces][1] in the Amazon Web Services General Reference.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      # @option params [required, String] :resource_id
      #   The unique resource identifier string for the scalable target that
      #   this scaling policy applies to. For Amazon ECS services, the resource
      #   type is `services`, and the identifier is the cluster name and service
      #   name; for example, `service/default/sample-webapp`. For Amazon EC2
      #   Spot fleet requests, the resource type is `spot-fleet-request`, and
      #   the identifier is the Spot fleet request ID; for example,
      #   `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      # @option params [required, String] :scalable_dimension
      #   The scalable dimension of the scalable target that this scaling policy
      #   applies to. The scalable dimension contains the service namespace,
      #   resource type, and scaling property, such as
      #   `ecs:service:DesiredCount` for the desired task count of an Amazon ECS
      #   service, or `ec2:spot-fleet-request:TargetCapacity` for the target
      #   capacity of an Amazon EC2 Spot fleet request.
      # @option params [String] :policy_type
      #   The policy type. If you are creating a new policy, this parameter is
      #   required. If you are updating an existing policy, this parameter is
      #   not required.
      # @option params [Types::StepScalingPolicyConfiguration] :step_scaling_policy_configuration
      #   The configuration for the step scaling policy. If you are creating a
      #   new policy, this parameter is required. If you are updating an
      #   existing policy, this parameter is not required. For more information,
      #   see StepScalingPolicyConfiguration and StepAdjustment.
      # @return [Types::PutScalingPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutScalingPolicyResponse#policy_arn #PolicyARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_scaling_policy({
      #     policy_name: "PolicyName", # required
      #     service_namespace: "ecs", # required, accepts ecs, ec2
      #     resource_id: "ResourceIdMaxLen1600", # required
      #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity
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
      #   resp.policy_arn #=> String
      # @overload put_scaling_policy(params = {})
      # @param [Hash] params ({})
      def put_scaling_policy(params = {}, options = {})
        req = build_request(:put_scaling_policy, params)
        req.send_request(options)
      end

      # Registers or updates a scalable target. A scalable target is a
      # resource that can be scaled out or in with Application Auto Scaling.
      # After you have registered a scalable target, you can use this
      # operation to update the minimum and maximum values for your scalable
      # dimension.
      #
      # After you register a scalable target with Application Auto Scaling,
      # you can create and apply scaling policies to it with PutScalingPolicy.
      # You can view the existing scaling policies for a service namespace
      # with DescribeScalableTargets. If you are no longer using a scalable
      # target, you can deregister it with DeregisterScalableTarget.
      # @option params [required, String] :service_namespace
      #   The namespace for the AWS service that the scalable target is
      #   associated with. For Amazon ECS services, the namespace value is
      #   `ecs`. For more information, see [AWS Service Namespaces][1] in the
      #   Amazon Web Services General Reference.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      # @option params [required, String] :resource_id
      #   The resource type and unique identifier string for the resource to
      #   associate with the scalable target. For Amazon ECS services, the
      #   resource type is `services`, and the identifier is the cluster name
      #   and service name; for example, `service/default/sample-webapp`. For
      #   Amazon EC2 Spot fleet requests, the resource type is
      #   `spot-fleet-request`, and the identifier is the Spot fleet request ID;
      #   for example,
      #   `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      # @option params [required, String] :scalable_dimension
      #   The scalable dimension associated with the scalable target. The
      #   scalable dimension contains the service namespace, resource type, and
      #   scaling property, such as `ecs:service:DesiredCount` for the desired
      #   task count of an Amazon ECS service, or
      #   `ec2:spot-fleet-request:TargetCapacity` for the target capacity of an
      #   Amazon EC2 Spot fleet request.
      # @option params [Integer] :min_capacity
      #   The minimum value for this scalable target to scale in to in response
      #   to scaling activities. This parameter is required if you are
      #   registering a new scalable target, and it is optional if you are
      #   updating an existing one.
      # @option params [Integer] :max_capacity
      #   The maximum value for this scalable target to scale out to in response
      #   to scaling activities. This parameter is required if you are
      #   registering a new scalable target, and it is optional if you are
      #   updating an existing one.
      # @option params [String] :role_arn
      #   The ARN of the IAM role that allows Application Auto Scaling to modify
      #   your scalable target on your behalf. This parameter is required if you
      #   are registering a new scalable target, and it is optional if you are
      #   updating an existing one.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.register_scalable_target({
      #     service_namespace: "ecs", # required, accepts ecs, ec2
      #     resource_id: "ResourceIdMaxLen1600", # required
      #     scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity
      #     min_capacity: 1,
      #     max_capacity: 1,
      #     role_arn: "ResourceIdMaxLen1600",
      #   })
      # @overload register_scalable_target(params = {})
      # @param [Hash] params ({})
      def register_scalable_target(params = {}, options = {})
        req = build_request(:register_scalable_target, params)
        req.send_request(options)
      end

      # @!endgroup

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
end
