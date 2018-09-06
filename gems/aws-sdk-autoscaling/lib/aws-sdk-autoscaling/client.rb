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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:autoscaling)

module Aws::AutoScaling
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :autoscaling

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
    add_plugin(Aws::Plugins::Protocols::Query)

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

    # Attaches one or more EC2 instances to the specified Auto Scaling
    # group.
    #
    # When you attach instances, Amazon EC2 Auto Scaling increases the
    # desired capacity of the group by the number of instances being
    # attached. If the number of instances being attached plus the desired
    # capacity of the group exceeds the maximum size of the group, the
    # operation fails.
    #
    # If there is a Classic Load Balancer attached to your Auto Scaling
    # group, the instances are also registered with the load balancer. If
    # there are target groups attached to your Auto Scaling group, the
    # instances are also registered with the target groups.
    #
    # For more information, see [Attach EC2 Instances to Your Auto Scaling
    # Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-instance-asg.html
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach an instance to an Auto Scaling group
    #
    #   # This example attaches the specified instance to the specified Auto Scaling group.
    #
    #   resp = client.attach_instances({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachInstances AWS API Documentation
    #
    # @overload attach_instances(params = {})
    # @param [Hash] params ({})
    def attach_instances(params = {}, options = {})
      req = build_request(:attach_instances, params)
      req.send_request(options)
    end

    # Attaches one or more target groups to the specified Auto Scaling
    # group.
    #
    # To describe the target groups for an Auto Scaling group, use
    # DescribeLoadBalancerTargetGroups. To detach the target group from the
    # Auto Scaling group, use DetachLoadBalancerTargetGroups.
    #
    # For more information, see [Attach a Load Balancer to Your Auto Scaling
    # Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-load-balancer-asg.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups. You can specify
    #   up to 10 target groups.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach a target group to an Auto Scaling group
    #
    #   # This example attaches the specified target group to the specified Auto Scaling group.
    #
    #   resp = client.attach_load_balancer_target_groups({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     target_group_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_load_balancer_target_groups({
    #     auto_scaling_group_name: "ResourceName", # required
    #     target_group_arns: ["XmlStringMaxLen511"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancerTargetGroups AWS API Documentation
    #
    # @overload attach_load_balancer_target_groups(params = {})
    # @param [Hash] params ({})
    def attach_load_balancer_target_groups(params = {}, options = {})
      req = build_request(:attach_load_balancer_target_groups, params)
      req.send_request(options)
    end

    # Attaches one or more Classic Load Balancers to the specified Auto
    # Scaling group.
    #
    # To attach an Application Load Balancer instead, see
    # AttachLoadBalancerTargetGroups.
    #
    # To describe the load balancers for an Auto Scaling group, use
    # DescribeLoadBalancers. To detach the load balancer from the Auto
    # Scaling group, use DetachLoadBalancers.
    #
    # For more information, see [Attach a Load Balancer to Your Auto Scaling
    # Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-load-balancer-asg.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :load_balancer_names
    #   The names of the load balancers. You can specify up to 10 load
    #   balancers.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach a load balancer to an Auto Scaling group
    #
    #   # This example attaches the specified load balancer to the specified Auto Scaling group.
    #
    #   resp = client.attach_load_balancers({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     load_balancer_names: [
    #       "my-load-balancer", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_load_balancers({
    #     auto_scaling_group_name: "ResourceName", # required
    #     load_balancer_names: ["XmlStringMaxLen255"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancers AWS API Documentation
    #
    # @overload attach_load_balancers(params = {})
    # @param [Hash] params ({})
    def attach_load_balancers(params = {}, options = {})
      req = build_request(:attach_load_balancers, params)
      req.send_request(options)
    end

    # Deletes one or more scheduled actions for the specified Auto Scaling
    # group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :scheduled_action_names
    #   The names of the scheduled actions to delete. The maximum number
    #   allowed is 50.
    #
    # @return [Types::BatchDeleteScheduledActionAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteScheduledActionAnswer#failed_scheduled_actions #failed_scheduled_actions} => Array&lt;Types::FailedScheduledUpdateGroupActionRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_scheduled_action({
    #     auto_scaling_group_name: "ResourceName", # required
    #     scheduled_action_names: ["ResourceName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_scheduled_actions #=> Array
    #   resp.failed_scheduled_actions[0].scheduled_action_name #=> String
    #   resp.failed_scheduled_actions[0].error_code #=> String
    #   resp.failed_scheduled_actions[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BatchDeleteScheduledAction AWS API Documentation
    #
    # @overload batch_delete_scheduled_action(params = {})
    # @param [Hash] params ({})
    def batch_delete_scheduled_action(params = {}, options = {})
      req = build_request(:batch_delete_scheduled_action, params)
      req.send_request(options)
    end

    # Creates or updates one or more scheduled scaling actions for an Auto
    # Scaling group. When updating a scheduled scaling action, if you leave
    # a parameter unspecified, the corresponding value remains unchanged.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<Types::ScheduledUpdateGroupActionRequest>] :scheduled_update_group_actions
    #   One or more scheduled actions. The maximum number allowed is 50.
    #
    # @return [Types::BatchPutScheduledUpdateGroupActionAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutScheduledUpdateGroupActionAnswer#failed_scheduled_update_group_actions #failed_scheduled_update_group_actions} => Array&lt;Types::FailedScheduledUpdateGroupActionRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_scheduled_update_group_action({
    #     auto_scaling_group_name: "ResourceName", # required
    #     scheduled_update_group_actions: [ # required
    #       {
    #         scheduled_action_name: "XmlStringMaxLen255", # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         recurrence: "XmlStringMaxLen255",
    #         min_size: 1,
    #         max_size: 1,
    #         desired_capacity: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_scheduled_update_group_actions #=> Array
    #   resp.failed_scheduled_update_group_actions[0].scheduled_action_name #=> String
    #   resp.failed_scheduled_update_group_actions[0].error_code #=> String
    #   resp.failed_scheduled_update_group_actions[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BatchPutScheduledUpdateGroupAction AWS API Documentation
    #
    # @overload batch_put_scheduled_update_group_action(params = {})
    # @param [Hash] params ({})
    def batch_put_scheduled_update_group_action(params = {}, options = {})
      req = build_request(:batch_put_scheduled_update_group_action, params)
      req.send_request(options)
    end

    # Completes the lifecycle action for the specified token or instance
    # with the specified result.
    #
    # This step is a part of the procedure for adding a lifecycle hook to an
    # Auto Scaling group:
    #
    # 1.  (Optional) Create a Lambda function and a rule that allows
    #     CloudWatch Events to invoke your Lambda function when Amazon EC2
    #     Auto Scaling launches or terminates instances.
    #
    # 2.  (Optional) Create a notification target and an IAM role. The
    #     target can be either an Amazon SQS queue or an Amazon SNS topic.
    #     The role allows Amazon EC2 Auto Scaling to publish lifecycle
    #     notifications to the target.
    #
    # 3.  Create the lifecycle hook. Specify whether the hook is used when
    #     the instances launch or terminate.
    #
    # 4.  If you need more time, record the lifecycle action heartbeat to
    #     keep the instance in a pending state.
    #
    # 5.  **If you finish before the timeout period ends, complete the
    #     lifecycle action.**
    #
    # For more information, see [Auto Scaling Lifecycle][1] in the *Amazon
    # EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html
    #
    # @option params [required, String] :lifecycle_hook_name
    #   The name of the lifecycle hook.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :lifecycle_action_token
    #   A universally unique identifier (UUID) that identifies a specific
    #   lifecycle action associated with an instance. Amazon EC2 Auto Scaling
    #   sends this token to the notification target you specified when you
    #   created the lifecycle hook.
    #
    # @option params [required, String] :lifecycle_action_result
    #   The action for the group to take. This parameter can be either
    #   `CONTINUE` or `ABANDON`.
    #
    # @option params [String] :instance_id
    #   The ID of the instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To complete the lifecycle action
    #
    #   # This example notifies Auto Scaling that the specified lifecycle action is complete so that it can finish launching or
    #   # terminating the instance.
    #
    #   resp = client.complete_lifecycle_action({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     lifecycle_action_result: "CONTINUE", 
    #     lifecycle_action_token: "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635", 
    #     lifecycle_hook_name: "my-lifecycle-hook", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_lifecycle_action({
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "ResourceName", # required
    #     lifecycle_action_token: "LifecycleActionToken",
    #     lifecycle_action_result: "LifecycleActionResult", # required
    #     instance_id: "XmlStringMaxLen19",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CompleteLifecycleAction AWS API Documentation
    #
    # @overload complete_lifecycle_action(params = {})
    # @param [Hash] params ({})
    def complete_lifecycle_action(params = {}, options = {})
      req = build_request(:complete_lifecycle_action, params)
      req.send_request(options)
    end

    # Creates an Auto Scaling group with the specified name and attributes.
    #
    # If you exceed your maximum limit of Auto Scaling groups, the call
    # fails. For information about viewing this limit, see
    # DescribeAccountLimits. For information about updating this limit, see
    # [Auto Scaling Limits][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    # For more information, see [Auto Scaling Groups][2] in the *Amazon EC2
    # Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html
    # [2]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group. This name must be unique within
    #   the scope of your AWS account.
    #
    # @option params [String] :launch_configuration_name
    #   The name of the launch configuration. You must specify one of the
    #   following: a launch configuration, a launch template, or an EC2
    #   instance.
    #
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   The launch template to use to launch instances. You must specify one
    #   of the following: a launch template, a launch configuration, or an EC2
    #   instance.
    #
    # @option params [String] :instance_id
    #   The ID of the instance used to create a launch configuration for the
    #   group. You must specify one of the following: an EC2 instance, a
    #   launch configuration, or a launch template.
    #
    #   When you specify an ID of an instance, Amazon EC2 Auto Scaling creates
    #   a new launch configuration and associates it with the group. This
    #   launch configuration derives its attributes from the specified
    #   instance, with the exception of the block device mapping.
    #
    #   For more information, see [Create an Auto Scaling Group Using an EC2
    #   Instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html
    #
    # @option params [required, Integer] :min_size
    #   The minimum size of the group.
    #
    # @option params [required, Integer] :max_size
    #   The maximum size of the group.
    #
    # @option params [Integer] :desired_capacity
    #   The number of EC2 instances that should be running in the group. This
    #   number must be greater than or equal to the minimum size of the group
    #   and less than or equal to the maximum size of the group. If you do not
    #   specify a desired capacity, the default is the minimum size of the
    #   group.
    #
    # @option params [Integer] :default_cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before another scaling activity can start. The default is 300.
    #
    #   For more information, see [Scaling Cooldowns][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #
    # @option params [Array<String>] :availability_zones
    #   One or more Availability Zones for the group. This parameter is
    #   optional if you specify one or more subnets.
    #
    # @option params [Array<String>] :load_balancer_names
    #   One or more Classic Load Balancers. To specify an Application Load
    #   Balancer, use `TargetGroupARNs` instead.
    #
    #   For more information, see [Using a Load Balancer With an Auto Scaling
    #   Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html
    #
    # @option params [Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups.
    #
    # @option params [String] :health_check_type
    #   The service to use for the health checks. The valid values are `EC2`
    #   and `ELB`.
    #
    #   By default, health checks use Amazon EC2 instance status checks to
    #   determine the health of an instance. For more information, see [Health
    #   Checks][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #
    # @option params [Integer] :health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service. During this time, any health check failures for the
    #   instance are ignored. The default is 0.
    #
    #   This parameter is required if you are adding an `ELB` health check.
    #
    #   For more information, see [Health Checks][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #
    # @option params [String] :placement_group
    #   The name of the placement group into which you'll launch your
    #   instances, if any. For more information, see [Placement Groups][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #
    # @option params [String] :vpc_zone_identifier
    #   A comma-separated list of subnet identifiers for your virtual private
    #   cloud (VPC).
    #
    #   If you specify subnets and Availability Zones with this call, ensure
    #   that the subnets' Availability Zones match the Availability Zones
    #   specified.
    #
    #   For more information, see [Launching Auto Scaling Instances in a
    #   VPC][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    #
    # @option params [Array<String>] :termination_policies
    #   One or more termination policies used to select the instance to
    #   terminate. These policies are executed in the order that they are
    #   listed.
    #
    #   For more information, see [Controlling Which Instances Auto Scaling
    #   Terminates During Scale In][1] in the *Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html
    #
    # @option params [Boolean] :new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Auto Scaling when scaling in.
    #
    # @option params [Array<Types::LifecycleHookSpecification>] :lifecycle_hook_specification_list
    #   One or more lifecycle hooks.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    #   For more information, see [Tagging Auto Scaling Groups and
    #   Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html
    #
    # @option params [String] :service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other AWS services on your behalf. By
    #   default, Amazon EC2 Auto Scaling uses a service-linked role named
    #   AWSServiceRoleForAutoScaling, which it creates if it does not exist.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create an Auto Scaling group
    #
    #   # This example creates an Auto Scaling group.
    #
    #   resp = client.create_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     launch_configuration_name: "my-launch-config", 
    #     max_size: 3, 
    #     min_size: 1, 
    #     vpc_zone_identifier: "subnet-4176792c", 
    #   })
    #
    # @example Example: To create an Auto Scaling group with an attached load balancer
    #
    #   # This example creates an Auto Scaling group and attaches the specified Classic Load Balancer.
    #
    #   resp = client.create_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     availability_zones: [
    #       "us-west-2c", 
    #     ], 
    #     health_check_grace_period: 120, 
    #     health_check_type: "ELB", 
    #     launch_configuration_name: "my-launch-config", 
    #     load_balancer_names: [
    #       "my-load-balancer", 
    #     ], 
    #     max_size: 3, 
    #     min_size: 1, 
    #   })
    #
    # @example Example: To create an Auto Scaling group with an attached target group
    #
    #   # This example creates an Auto Scaling group and attaches the specified target group.
    #
    #   resp = client.create_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     health_check_grace_period: 120, 
    #     health_check_type: "ELB", 
    #     launch_configuration_name: "my-launch-config", 
    #     max_size: 3, 
    #     min_size: 1, 
    #     target_group_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     ], 
    #     vpc_zone_identifier: "subnet-4176792c, subnet-65ea5f08", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_auto_scaling_group({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     launch_configuration_name: "ResourceName",
    #     launch_template: {
    #       launch_template_id: "XmlStringMaxLen255",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "XmlStringMaxLen255",
    #     },
    #     instance_id: "XmlStringMaxLen19",
    #     min_size: 1, # required
    #     max_size: 1, # required
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: ["XmlStringMaxLen255"],
    #     load_balancer_names: ["XmlStringMaxLen255"],
    #     target_group_arns: ["XmlStringMaxLen511"],
    #     health_check_type: "XmlStringMaxLen32",
    #     health_check_grace_period: 1,
    #     placement_group: "XmlStringMaxLen255",
    #     vpc_zone_identifier: "XmlStringMaxLen2047",
    #     termination_policies: ["XmlStringMaxLen1600"],
    #     new_instances_protected_from_scale_in: false,
    #     lifecycle_hook_specification_list: [
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         lifecycle_transition: "LifecycleTransition", # required
    #         notification_metadata: "XmlStringMaxLen1023",
    #         heartbeat_timeout: 1,
    #         default_result: "LifecycleActionResult",
    #         notification_target_arn: "NotificationTargetResourceName",
    #         role_arn: "ResourceName",
    #       },
    #     ],
    #     tags: [
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       },
    #     ],
    #     service_linked_role_arn: "ResourceName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateAutoScalingGroup AWS API Documentation
    #
    # @overload create_auto_scaling_group(params = {})
    # @param [Hash] params ({})
    def create_auto_scaling_group(params = {}, options = {})
      req = build_request(:create_auto_scaling_group, params)
      req.send_request(options)
    end

    # Creates a launch configuration.
    #
    # If you exceed your maximum limit of launch configurations, the call
    # fails. For information about viewing this limit, see
    # DescribeAccountLimits. For information about updating this limit, see
    # [Auto Scaling Limits][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    # For more information, see [Launch Configurations][2] in the *Amazon
    # EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html
    # [2]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html
    #
    # @option params [required, String] :launch_configuration_name
    #   The name of the launch configuration. This name must be unique within
    #   the scope of your AWS account.
    #
    # @option params [String] :image_id
    #   The ID of the Amazon Machine Image (AMI) to use to launch your EC2
    #   instances.
    #
    #   If you do not specify `InstanceId`, you must specify `ImageId`.
    #
    #   For more information, see [Finding an AMI][1] in the *Amazon Elastic
    #   Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    #
    # @option params [String] :key_name
    #   The name of the key pair. For more information, see [Amazon EC2 Key
    #   Pairs][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #
    # @option params [Array<String>] :security_groups
    #   One or more security groups with which to associate the instances.
    #
    #   If your instances are launched in EC2-Classic, you can either specify
    #   security group names or the security group IDs. For more information
    #   about security groups for EC2-Classic, see [Amazon EC2 Security
    #   Groups][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #   If your instances are launched into a VPC, specify security group IDs.
    #   For more information, see [Security Groups for Your VPC][2] in the
    #   *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
    #   [2]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    #
    # @option params [String] :classic_link_vpc_id
    #   The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances
    #   to. This parameter is supported only if you are launching EC2-Classic
    #   instances. For more information, see [ClassicLink][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #
    # @option params [Array<String>] :classic_link_vpc_security_groups
    #   The IDs of one or more security groups for the specified
    #   ClassicLink-enabled VPC. This parameter is required if you specify a
    #   ClassicLink-enabled VPC, and is not supported otherwise. For more
    #   information, see [ClassicLink][1] in the *Amazon Elastic Compute Cloud
    #   User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #
    # @option params [String] :user_data
    #   The user data to make available to the launched EC2 instances. For
    #   more information, see [Instance Metadata and User Data][1] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    #
    # @option params [String] :instance_id
    #   The ID of the instance to use to create the launch configuration. The
    #   new launch configuration derives attributes from the instance, with
    #   the exception of the block device mapping.
    #
    #   If you do not specify `InstanceId`, you must specify both `ImageId`
    #   and `InstanceType`.
    #
    #   To create a launch configuration with a block device mapping or
    #   override any other instance attributes, specify them as part of the
    #   same request.
    #
    #   For more information, see [Create a Launch Configuration Using an EC2
    #   Instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html
    #
    # @option params [String] :instance_type
    #   The instance type of the EC2 instance.
    #
    #   If you do not specify `InstanceId`, you must specify `InstanceType`.
    #
    #   For information about available instance types, see [Available
    #   Instance Types][1] in the *Amazon Elastic Compute Cloud User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes
    #
    # @option params [String] :kernel_id
    #   The ID of the kernel associated with the AMI.
    #
    # @option params [String] :ramdisk_id
    #   The ID of the RAM disk associated with the AMI.
    #
    # @option params [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   One or more mappings that specify how block devices are exposed to the
    #   instance. For more information, see [Block Device Mapping][1] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
    #
    # @option params [Types::InstanceMonitoring] :instance_monitoring
    #   Enables detailed monitoring (`true`) or basic monitoring (`false`) for
    #   the Auto Scaling instances. The default is `true`.
    #
    # @option params [String] :spot_price
    #   The maximum hourly price to be paid for any Spot Instance launched to
    #   fulfill the request. Spot Instances are launched when the price you
    #   specify exceeds the current Spot market price. For more information,
    #   see [Launching Spot Instances in Your Auto Scaling Group][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html
    #
    # @option params [String] :iam_instance_profile
    #   The name or the Amazon Resource Name (ARN) of the instance profile
    #   associated with the IAM role for the instance.
    #
    #   EC2 instances launched with an IAM role will automatically have AWS
    #   security credentials available. You can use IAM roles with Amazon EC2
    #   Auto Scaling to automatically enable applications running on your EC2
    #   instances to securely access other AWS resources. For more
    #   information, see [Launch Auto Scaling Instances with an IAM Role][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html
    #
    # @option params [Boolean] :ebs_optimized
    #   Indicates whether the instance is optimized for Amazon EBS I/O. By
    #   default, the instance is not optimized for EBS I/O. The optimization
    #   provides dedicated throughput to Amazon EBS and an optimized
    #   configuration stack to provide optimal I/O performance. This
    #   optimization is not available with all instance types. Additional
    #   usage charges apply. For more information, see [Amazon EBS-Optimized
    #   Instances][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html
    #
    # @option params [Boolean] :associate_public_ip_address
    #   Used for groups that launch instances into a virtual private cloud
    #   (VPC). Specifies whether to assign a public IP address to each
    #   instance. For more information, see [Launching Auto Scaling Instances
    #   in a VPC][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   If you specify this parameter, be sure to specify at least one subnet
    #   when you create your group.
    #
    #   Default: If the instance is launched into a default subnet, the
    #   default is to assign a public IP address. If the instance is launched
    #   into a nondefault subnet, the default is not to assign a public IP
    #   address.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    #
    # @option params [String] :placement_tenancy
    #   The tenancy of the instance. An instance with a tenancy of `dedicated`
    #   runs on single-tenant hardware and can only be launched into a VPC.
    #
    #   You must set the value of this parameter to `dedicated` if want to
    #   launch Dedicated Instances into a shared tenancy VPC (VPC with
    #   instance placement tenancy attribute set to `default`).
    #
    #   If you specify this parameter, be sure to specify at least one subnet
    #   when you create your group.
    #
    #   For more information, see [Launching Auto Scaling Instances in a
    #   VPC][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid values: `default` \| `dedicated`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a launch configuration
    #
    #   # This example creates a launch configuration.
    #
    #   resp = client.create_launch_configuration({
    #     iam_instance_profile: "my-iam-role", 
    #     image_id: "ami-12345678", 
    #     instance_type: "m3.medium", 
    #     launch_configuration_name: "my-launch-config", 
    #     security_groups: [
    #       "sg-eb2af88e", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_launch_configuration({
    #     launch_configuration_name: "XmlStringMaxLen255", # required
    #     image_id: "XmlStringMaxLen255",
    #     key_name: "XmlStringMaxLen255",
    #     security_groups: ["XmlString"],
    #     classic_link_vpc_id: "XmlStringMaxLen255",
    #     classic_link_vpc_security_groups: ["XmlStringMaxLen255"],
    #     user_data: "XmlStringUserData",
    #     instance_id: "XmlStringMaxLen19",
    #     instance_type: "XmlStringMaxLen255",
    #     kernel_id: "XmlStringMaxLen255",
    #     ramdisk_id: "XmlStringMaxLen255",
    #     block_device_mappings: [
    #       {
    #         virtual_name: "XmlStringMaxLen255",
    #         device_name: "XmlStringMaxLen255", # required
    #         ebs: {
    #           snapshot_id: "XmlStringMaxLen255",
    #           volume_size: 1,
    #           volume_type: "BlockDeviceEbsVolumeType",
    #           delete_on_termination: false,
    #           iops: 1,
    #           encrypted: false,
    #         },
    #         no_device: false,
    #       },
    #     ],
    #     instance_monitoring: {
    #       enabled: false,
    #     },
    #     spot_price: "SpotPrice",
    #     iam_instance_profile: "XmlStringMaxLen1600",
    #     ebs_optimized: false,
    #     associate_public_ip_address: false,
    #     placement_tenancy: "XmlStringMaxLen64",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateLaunchConfiguration AWS API Documentation
    #
    # @overload create_launch_configuration(params = {})
    # @param [Hash] params ({})
    def create_launch_configuration(params = {}, options = {})
      req = build_request(:create_launch_configuration, params)
      req.send_request(options)
    end

    # Creates or updates tags for the specified Auto Scaling group.
    #
    # When you specify a tag with a key that already exists, the operation
    # overwrites the previous tag definition, and you do not get an error
    # message.
    #
    # For more information, see [Tagging Auto Scaling Groups and
    # Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create or update tags for an Auto Scaling group
    #
    #   # This example adds two tags to the specified Auto Scaling group.
    #
    #   resp = client.create_or_update_tags({
    #     tags: [
    #       {
    #         key: "Role", 
    #         propagate_at_launch: true, 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "WebServer", 
    #       }, 
    #       {
    #         key: "Dept", 
    #         propagate_at_launch: true, 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "Research", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_or_update_tags({
    #     tags: [ # required
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateOrUpdateTags AWS API Documentation
    #
    # @overload create_or_update_tags(params = {})
    # @param [Hash] params ({})
    def create_or_update_tags(params = {}, options = {})
      req = build_request(:create_or_update_tags, params)
      req.send_request(options)
    end

    # Deletes the specified Auto Scaling group.
    #
    # If the group has instances or scaling activities in progress, you must
    # specify the option to force the deletion in order for it to succeed.
    #
    # If the group has policies, deleting the group deletes the policies,
    # the underlying alarm actions, and any alarm that no longer has an
    # associated action.
    #
    # To remove instances from the Auto Scaling group before deleting it,
    # call DetachInstances with the list of instances and the option to
    # decrement the desired capacity so that Amazon EC2 Auto Scaling does
    # not launch replacement instances.
    #
    # To terminate all instances before deleting the Auto Scaling group,
    # call UpdateAutoScalingGroup and set the minimum size and desired
    # capacity of the Auto Scaling group to zero.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Boolean] :force_delete
    #   Specifies that the group will be deleted along with all instances
    #   associated with the group, without waiting for all instances to be
    #   terminated. This parameter also deletes any lifecycle actions
    #   associated with the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an Auto Scaling group
    #
    #   # This example deletes the specified Auto Scaling group.
    #
    #   resp = client.delete_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    # @example Example: To delete an Auto Scaling group and all its instances
    #
    #   # This example deletes the specified Auto Scaling group and all its instances.
    #
    #   resp = client.delete_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     force_delete: true, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_auto_scaling_group({
    #     auto_scaling_group_name: "ResourceName", # required
    #     force_delete: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteAutoScalingGroup AWS API Documentation
    #
    # @overload delete_auto_scaling_group(params = {})
    # @param [Hash] params ({})
    def delete_auto_scaling_group(params = {}, options = {})
      req = build_request(:delete_auto_scaling_group, params)
      req.send_request(options)
    end

    # Deletes the specified launch configuration.
    #
    # The launch configuration must not be attached to an Auto Scaling
    # group. When this call completes, the launch configuration is no longer
    # available for use.
    #
    # @option params [required, String] :launch_configuration_name
    #   The name of the launch configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a launch configuration
    #
    #   # This example deletes the specified launch configuration.
    #
    #   resp = client.delete_launch_configuration({
    #     launch_configuration_name: "my-launch-config", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_configuration({
    #     launch_configuration_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteLaunchConfiguration AWS API Documentation
    #
    # @overload delete_launch_configuration(params = {})
    # @param [Hash] params ({})
    def delete_launch_configuration(params = {}, options = {})
      req = build_request(:delete_launch_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified lifecycle hook.
    #
    # If there are any outstanding lifecycle actions, they are completed
    # first (`ABANDON` for launching instances, `CONTINUE` for terminating
    # instances).
    #
    # @option params [required, String] :lifecycle_hook_name
    #   The name of the lifecycle hook.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a lifecycle hook
    #
    #   # This example deletes the specified lifecycle hook.
    #
    #   resp = client.delete_lifecycle_hook({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     lifecycle_hook_name: "my-lifecycle-hook", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_hook({
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteLifecycleHook AWS API Documentation
    #
    # @overload delete_lifecycle_hook(params = {})
    # @param [Hash] params ({})
    def delete_lifecycle_hook(params = {}, options = {})
      req = build_request(:delete_lifecycle_hook, params)
      req.send_request(options)
    end

    # Deletes the specified notification.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an Auto Scaling notification
    #
    #   # This example deletes the specified notification from the specified Auto Scaling group.
    #
    #   resp = client.delete_notification_configuration({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_configuration({
    #     auto_scaling_group_name: "ResourceName", # required
    #     topic_arn: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteNotificationConfiguration AWS API Documentation
    #
    # @overload delete_notification_configuration(params = {})
    # @param [Hash] params ({})
    def delete_notification_configuration(params = {}, options = {})
      req = build_request(:delete_notification_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified Auto Scaling policy.
    #
    # Deleting a policy deletes the underlying alarm action, but does not
    # delete the alarm, even if it no longer has an associated action.
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :policy_name
    #   The name or Amazon Resource Name (ARN) of the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an Auto Scaling policy
    #
    #   # This example deletes the specified Auto Scaling policy.
    #
    #   resp = client.delete_policy({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     policy_name: "ScaleIn", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     auto_scaling_group_name: "ResourceName",
    #     policy_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes the specified scheduled action.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the action to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a scheduled action from an Auto Scaling group
    #
    #   # This example deletes the specified scheduled action from the specified Auto Scaling group.
    #
    #   resp = client.delete_scheduled_action({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     scheduled_action_name: "my-scheduled-action", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_action({
    #     auto_scaling_group_name: "ResourceName", # required
    #     scheduled_action_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteScheduledAction AWS API Documentation
    #
    # @overload delete_scheduled_action(params = {})
    # @param [Hash] params ({})
    def delete_scheduled_action(params = {}, options = {})
      req = build_request(:delete_scheduled_action, params)
      req.send_request(options)
    end

    # Deletes the specified tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a tag from an Auto Scaling group
    #
    #   # This example deletes the specified tag from the specified Auto Scaling group.
    #
    #   resp = client.delete_tags({
    #     tags: [
    #       {
    #         key: "Dept", 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "Research", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     tags: [ # required
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Describes the current Auto Scaling resource limits for your AWS
    # account.
    #
    # For information about requesting an increase in these limits, see
    # [Auto Scaling Limits][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html
    #
    # @return [Types::DescribeAccountLimitsAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountLimitsAnswer#max_number_of_auto_scaling_groups #max_number_of_auto_scaling_groups} => Integer
    #   * {Types::DescribeAccountLimitsAnswer#max_number_of_launch_configurations #max_number_of_launch_configurations} => Integer
    #   * {Types::DescribeAccountLimitsAnswer#number_of_auto_scaling_groups #number_of_auto_scaling_groups} => Integer
    #   * {Types::DescribeAccountLimitsAnswer#number_of_launch_configurations #number_of_launch_configurations} => Integer
    #
    #
    # @example Example: To describe your Auto Scaling account limits
    #
    #   # This example describes the Auto Scaling limits for your AWS account.
    #
    #   resp = client.describe_account_limits({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     max_number_of_auto_scaling_groups: 20, 
    #     max_number_of_launch_configurations: 100, 
    #     number_of_auto_scaling_groups: 3, 
    #     number_of_launch_configurations: 5, 
    #   }
    #
    # @example Response structure
    #
    #   resp.max_number_of_auto_scaling_groups #=> Integer
    #   resp.max_number_of_launch_configurations #=> Integer
    #   resp.number_of_auto_scaling_groups #=> Integer
    #   resp.number_of_launch_configurations #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAccountLimits AWS API Documentation
    #
    # @overload describe_account_limits(params = {})
    # @param [Hash] params ({})
    def describe_account_limits(params = {}, options = {})
      req = build_request(:describe_account_limits, params)
      req.send_request(options)
    end

    # Describes the policy adjustment types for use with PutScalingPolicy.
    #
    # @return [Types::DescribeAdjustmentTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAdjustmentTypesAnswer#adjustment_types #adjustment_types} => Array&lt;Types::AdjustmentType&gt;
    #
    #
    # @example Example: To describe the Auto Scaling adjustment types
    #
    #   # This example describes the available adjustment types.
    #
    #   resp = client.describe_adjustment_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     adjustment_types: [
    #       {
    #         adjustment_type: "ChangeInCapacity", 
    #       }, 
    #       {
    #         adjustment_type: "ExactCapcity", 
    #       }, 
    #       {
    #         adjustment_type: "PercentChangeInCapacity", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.adjustment_types #=> Array
    #   resp.adjustment_types[0].adjustment_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAdjustmentTypes AWS API Documentation
    #
    # @overload describe_adjustment_types(params = {})
    # @param [Hash] params ({})
    def describe_adjustment_types(params = {}, options = {})
      req = build_request(:describe_adjustment_types, params)
      req.send_request(options)
    end

    # Describes one or more Auto Scaling groups.
    #
    # @option params [Array<String>] :auto_scaling_group_names
    #   The names of the Auto Scaling groups. You can specify up to
    #   `MaxRecords` names. If you omit this parameter, all Auto Scaling
    #   groups are described.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is 50 and the maximum value is 100.
    #
    # @return [Types::AutoScalingGroupsType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AutoScalingGroupsType#auto_scaling_groups #auto_scaling_groups} => Array&lt;Types::AutoScalingGroup&gt;
    #   * {Types::AutoScalingGroupsType#next_token #next_token} => String
    #
    #
    # @example Example: To describe an Auto Scaling group
    #
    #   # This example describes the specified Auto Scaling group.
    #
    #   resp = client.describe_auto_scaling_groups({
    #     auto_scaling_group_names: [
    #       "my-auto-scaling-group", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     auto_scaling_groups: [
    #       {
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:930d940e-891e-4781-a11a-7b0acd480f03:autoScalingGroupName/my-auto-scaling-group", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         availability_zones: [
    #           "us-west-2c", 
    #         ], 
    #         created_time: Time.parse("2013-08-19T20:53:25.584Z"), 
    #         default_cooldown: 300, 
    #         desired_capacity: 1, 
    #         enabled_metrics: [
    #         ], 
    #         health_check_grace_period: 300, 
    #         health_check_type: "EC2", 
    #         instances: [
    #           {
    #             availability_zone: "us-west-2c", 
    #             health_status: "Healthy", 
    #             instance_id: "i-4ba0837f", 
    #             launch_configuration_name: "my-launch-config", 
    #             lifecycle_state: "InService", 
    #             protected_from_scale_in: false, 
    #           }, 
    #         ], 
    #         launch_configuration_name: "my-launch-config", 
    #         load_balancer_names: [
    #         ], 
    #         max_size: 1, 
    #         min_size: 0, 
    #         new_instances_protected_from_scale_in: false, 
    #         suspended_processes: [
    #         ], 
    #         tags: [
    #         ], 
    #         termination_policies: [
    #           "Default", 
    #         ], 
    #         vpc_zone_identifier: "subnet-12345678", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_scaling_groups({
    #     auto_scaling_group_names: ["ResourceName"],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_scaling_groups #=> Array
    #   resp.auto_scaling_groups[0].auto_scaling_group_name #=> String
    #   resp.auto_scaling_groups[0].auto_scaling_group_arn #=> String
    #   resp.auto_scaling_groups[0].launch_configuration_name #=> String
    #   resp.auto_scaling_groups[0].launch_template.launch_template_id #=> String
    #   resp.auto_scaling_groups[0].launch_template.launch_template_name #=> String
    #   resp.auto_scaling_groups[0].launch_template.version #=> String
    #   resp.auto_scaling_groups[0].min_size #=> Integer
    #   resp.auto_scaling_groups[0].max_size #=> Integer
    #   resp.auto_scaling_groups[0].desired_capacity #=> Integer
    #   resp.auto_scaling_groups[0].default_cooldown #=> Integer
    #   resp.auto_scaling_groups[0].availability_zones #=> Array
    #   resp.auto_scaling_groups[0].availability_zones[0] #=> String
    #   resp.auto_scaling_groups[0].load_balancer_names #=> Array
    #   resp.auto_scaling_groups[0].load_balancer_names[0] #=> String
    #   resp.auto_scaling_groups[0].target_group_arns #=> Array
    #   resp.auto_scaling_groups[0].target_group_arns[0] #=> String
    #   resp.auto_scaling_groups[0].health_check_type #=> String
    #   resp.auto_scaling_groups[0].health_check_grace_period #=> Integer
    #   resp.auto_scaling_groups[0].instances #=> Array
    #   resp.auto_scaling_groups[0].instances[0].instance_id #=> String
    #   resp.auto_scaling_groups[0].instances[0].availability_zone #=> String
    #   resp.auto_scaling_groups[0].instances[0].lifecycle_state #=> String, one of "Pending", "Pending:Wait", "Pending:Proceed", "Quarantined", "InService", "Terminating", "Terminating:Wait", "Terminating:Proceed", "Terminated", "Detaching", "Detached", "EnteringStandby", "Standby"
    #   resp.auto_scaling_groups[0].instances[0].health_status #=> String
    #   resp.auto_scaling_groups[0].instances[0].launch_configuration_name #=> String
    #   resp.auto_scaling_groups[0].instances[0].launch_template.launch_template_id #=> String
    #   resp.auto_scaling_groups[0].instances[0].launch_template.launch_template_name #=> String
    #   resp.auto_scaling_groups[0].instances[0].launch_template.version #=> String
    #   resp.auto_scaling_groups[0].instances[0].protected_from_scale_in #=> Boolean
    #   resp.auto_scaling_groups[0].created_time #=> Time
    #   resp.auto_scaling_groups[0].suspended_processes #=> Array
    #   resp.auto_scaling_groups[0].suspended_processes[0].process_name #=> String
    #   resp.auto_scaling_groups[0].suspended_processes[0].suspension_reason #=> String
    #   resp.auto_scaling_groups[0].placement_group #=> String
    #   resp.auto_scaling_groups[0].vpc_zone_identifier #=> String
    #   resp.auto_scaling_groups[0].enabled_metrics #=> Array
    #   resp.auto_scaling_groups[0].enabled_metrics[0].metric #=> String
    #   resp.auto_scaling_groups[0].enabled_metrics[0].granularity #=> String
    #   resp.auto_scaling_groups[0].status #=> String
    #   resp.auto_scaling_groups[0].tags #=> Array
    #   resp.auto_scaling_groups[0].tags[0].resource_id #=> String
    #   resp.auto_scaling_groups[0].tags[0].resource_type #=> String
    #   resp.auto_scaling_groups[0].tags[0].key #=> String
    #   resp.auto_scaling_groups[0].tags[0].value #=> String
    #   resp.auto_scaling_groups[0].tags[0].propagate_at_launch #=> Boolean
    #   resp.auto_scaling_groups[0].termination_policies #=> Array
    #   resp.auto_scaling_groups[0].termination_policies[0] #=> String
    #   resp.auto_scaling_groups[0].new_instances_protected_from_scale_in #=> Boolean
    #   resp.auto_scaling_groups[0].service_linked_role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingGroups AWS API Documentation
    #
    # @overload describe_auto_scaling_groups(params = {})
    # @param [Hash] params ({})
    def describe_auto_scaling_groups(params = {}, options = {})
      req = build_request(:describe_auto_scaling_groups, params)
      req.send_request(options)
    end

    # Describes one or more Auto Scaling instances.
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to `MaxRecords` IDs. If
    #   you omit this parameter, all Auto Scaling instances are described. If
    #   you specify an ID that does not exist, it is ignored with no error.
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is 50 and the maximum value is 50.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::AutoScalingInstancesType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AutoScalingInstancesType#auto_scaling_instances #auto_scaling_instances} => Array&lt;Types::AutoScalingInstanceDetails&gt;
    #   * {Types::AutoScalingInstancesType#next_token #next_token} => String
    #
    #
    # @example Example: To describe one or more Auto Scaling instances
    #
    #   # This example describes the specified Auto Scaling instance.
    #
    #   resp = client.describe_auto_scaling_instances({
    #     instance_ids: [
    #       "i-4ba0837f", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     auto_scaling_instances: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         availability_zone: "us-west-2c", 
    #         health_status: "HEALTHY", 
    #         instance_id: "i-4ba0837f", 
    #         launch_configuration_name: "my-launch-config", 
    #         lifecycle_state: "InService", 
    #         protected_from_scale_in: false, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_scaling_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     max_records: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_scaling_instances #=> Array
    #   resp.auto_scaling_instances[0].instance_id #=> String
    #   resp.auto_scaling_instances[0].auto_scaling_group_name #=> String
    #   resp.auto_scaling_instances[0].availability_zone #=> String
    #   resp.auto_scaling_instances[0].lifecycle_state #=> String
    #   resp.auto_scaling_instances[0].health_status #=> String
    #   resp.auto_scaling_instances[0].launch_configuration_name #=> String
    #   resp.auto_scaling_instances[0].launch_template.launch_template_id #=> String
    #   resp.auto_scaling_instances[0].launch_template.launch_template_name #=> String
    #   resp.auto_scaling_instances[0].launch_template.version #=> String
    #   resp.auto_scaling_instances[0].protected_from_scale_in #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingInstances AWS API Documentation
    #
    # @overload describe_auto_scaling_instances(params = {})
    # @param [Hash] params ({})
    def describe_auto_scaling_instances(params = {}, options = {})
      req = build_request(:describe_auto_scaling_instances, params)
      req.send_request(options)
    end

    # Describes the notification types that are supported by Amazon EC2 Auto
    # Scaling.
    #
    # @return [Types::DescribeAutoScalingNotificationTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAutoScalingNotificationTypesAnswer#auto_scaling_notification_types #auto_scaling_notification_types} => Array&lt;String&gt;
    #
    #
    # @example Example: To describe the Auto Scaling notification types
    #
    #   # This example describes the available notification types.
    #
    #   resp = client.describe_auto_scaling_notification_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     auto_scaling_notification_types: [
    #       "autoscaling:EC2_INSTANCE_LAUNCH", 
    #       "autoscaling:EC2_INSTANCE_LAUNCH_ERROR", 
    #       "autoscaling:EC2_INSTANCE_TERMINATE", 
    #       "autoscaling:EC2_INSTANCE_TERMINATE_ERROR", 
    #       "autoscaling:TEST_NOTIFICATION", 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.auto_scaling_notification_types #=> Array
    #   resp.auto_scaling_notification_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingNotificationTypes AWS API Documentation
    #
    # @overload describe_auto_scaling_notification_types(params = {})
    # @param [Hash] params ({})
    def describe_auto_scaling_notification_types(params = {}, options = {})
      req = build_request(:describe_auto_scaling_notification_types, params)
      req.send_request(options)
    end

    # Describes one or more launch configurations.
    #
    # @option params [Array<String>] :launch_configuration_names
    #   The launch configuration names. If you omit this parameter, all launch
    #   configurations are described.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is 50 and the maximum value is 100.
    #
    # @return [Types::LaunchConfigurationsType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LaunchConfigurationsType#launch_configurations #launch_configurations} => Array&lt;Types::LaunchConfiguration&gt;
    #   * {Types::LaunchConfigurationsType#next_token #next_token} => String
    #
    #
    # @example Example: To describe Auto Scaling launch configurations
    #
    #   # This example describes the specified launch configuration.
    #
    #   resp = client.describe_launch_configurations({
    #     launch_configuration_names: [
    #       "my-launch-config", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     launch_configurations: [
    #       {
    #         associate_public_ip_address: true, 
    #         block_device_mappings: [
    #         ], 
    #         created_time: Time.parse("2014-05-07T17:39:28.599Z"), 
    #         ebs_optimized: false, 
    #         image_id: "ami-043a5034", 
    #         instance_monitoring: {
    #           enabled: true, 
    #         }, 
    #         instance_type: "t1.micro", 
    #         launch_configuration_arn: "arn:aws:autoscaling:us-west-2:123456789012:launchConfiguration:98d3b196-4cf9-4e88-8ca1-8547c24ced8b:launchConfigurationName/my-launch-config", 
    #         launch_configuration_name: "my-launch-config", 
    #         security_groups: [
    #           "sg-67ef0308", 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_launch_configurations({
    #     launch_configuration_names: ["ResourceName"],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_configurations #=> Array
    #   resp.launch_configurations[0].launch_configuration_name #=> String
    #   resp.launch_configurations[0].launch_configuration_arn #=> String
    #   resp.launch_configurations[0].image_id #=> String
    #   resp.launch_configurations[0].key_name #=> String
    #   resp.launch_configurations[0].security_groups #=> Array
    #   resp.launch_configurations[0].security_groups[0] #=> String
    #   resp.launch_configurations[0].classic_link_vpc_id #=> String
    #   resp.launch_configurations[0].classic_link_vpc_security_groups #=> Array
    #   resp.launch_configurations[0].classic_link_vpc_security_groups[0] #=> String
    #   resp.launch_configurations[0].user_data #=> String
    #   resp.launch_configurations[0].instance_type #=> String
    #   resp.launch_configurations[0].kernel_id #=> String
    #   resp.launch_configurations[0].ramdisk_id #=> String
    #   resp.launch_configurations[0].block_device_mappings #=> Array
    #   resp.launch_configurations[0].block_device_mappings[0].virtual_name #=> String
    #   resp.launch_configurations[0].block_device_mappings[0].device_name #=> String
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.volume_type #=> String
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.iops #=> Integer
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.launch_configurations[0].block_device_mappings[0].no_device #=> Boolean
    #   resp.launch_configurations[0].instance_monitoring.enabled #=> Boolean
    #   resp.launch_configurations[0].spot_price #=> String
    #   resp.launch_configurations[0].iam_instance_profile #=> String
    #   resp.launch_configurations[0].created_time #=> Time
    #   resp.launch_configurations[0].ebs_optimized #=> Boolean
    #   resp.launch_configurations[0].associate_public_ip_address #=> Boolean
    #   resp.launch_configurations[0].placement_tenancy #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLaunchConfigurations AWS API Documentation
    #
    # @overload describe_launch_configurations(params = {})
    # @param [Hash] params ({})
    def describe_launch_configurations(params = {}, options = {})
      req = build_request(:describe_launch_configurations, params)
      req.send_request(options)
    end

    # Describes the available types of lifecycle hooks.
    #
    # The following hook types are supported:
    #
    # * autoscaling:EC2\_INSTANCE\_LAUNCHING
    #
    # * autoscaling:EC2\_INSTANCE\_TERMINATING
    #
    # @return [Types::DescribeLifecycleHookTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLifecycleHookTypesAnswer#lifecycle_hook_types #lifecycle_hook_types} => Array&lt;String&gt;
    #
    #
    # @example Example: To describe the available types of lifecycle hooks
    #
    #   # This example describes the available lifecycle hook types.
    #
    #   resp = client.describe_lifecycle_hook_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_hook_types: [
    #       "autoscaling:EC2_INSTANCE_LAUNCHING", 
    #       "autoscaling:EC2_INSTANCE_TERMINATING", 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.lifecycle_hook_types #=> Array
    #   resp.lifecycle_hook_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHookTypes AWS API Documentation
    #
    # @overload describe_lifecycle_hook_types(params = {})
    # @param [Hash] params ({})
    def describe_lifecycle_hook_types(params = {}, options = {})
      req = build_request(:describe_lifecycle_hook_types, params)
      req.send_request(options)
    end

    # Describes the lifecycle hooks for the specified Auto Scaling group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :lifecycle_hook_names
    #   The names of one or more lifecycle hooks. If you omit this parameter,
    #   all lifecycle hooks are described.
    #
    # @return [Types::DescribeLifecycleHooksAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLifecycleHooksAnswer#lifecycle_hooks #lifecycle_hooks} => Array&lt;Types::LifecycleHook&gt;
    #
    #
    # @example Example: To describe your lifecycle hooks
    #
    #   # This example describes the lifecycle hooks for the specified Auto Scaling group.
    #
    #   resp = client.describe_lifecycle_hooks({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_hooks: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         default_result: "ABANDON", 
    #         global_timeout: 172800, 
    #         heartbeat_timeout: 3600, 
    #         lifecycle_hook_name: "my-lifecycle-hook", 
    #         lifecycle_transition: "autoscaling:EC2_INSTANCE_LAUNCHING", 
    #         notification_target_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic", 
    #         role_arn: "arn:aws:iam::123456789012:role/my-auto-scaling-role", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_lifecycle_hooks({
    #     auto_scaling_group_name: "ResourceName", # required
    #     lifecycle_hook_names: ["AsciiStringMaxLen255"],
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_hooks #=> Array
    #   resp.lifecycle_hooks[0].lifecycle_hook_name #=> String
    #   resp.lifecycle_hooks[0].auto_scaling_group_name #=> String
    #   resp.lifecycle_hooks[0].lifecycle_transition #=> String
    #   resp.lifecycle_hooks[0].notification_target_arn #=> String
    #   resp.lifecycle_hooks[0].role_arn #=> String
    #   resp.lifecycle_hooks[0].notification_metadata #=> String
    #   resp.lifecycle_hooks[0].heartbeat_timeout #=> Integer
    #   resp.lifecycle_hooks[0].global_timeout #=> Integer
    #   resp.lifecycle_hooks[0].default_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHooks AWS API Documentation
    #
    # @overload describe_lifecycle_hooks(params = {})
    # @param [Hash] params ({})
    def describe_lifecycle_hooks(params = {}, options = {})
      req = build_request(:describe_lifecycle_hooks, params)
      req.send_request(options)
    end

    # Describes the target groups for the specified Auto Scaling group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is 100 and the maximum value is 100.
    #
    # @return [Types::DescribeLoadBalancerTargetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancerTargetGroupsResponse#load_balancer_target_groups #load_balancer_target_groups} => Array&lt;Types::LoadBalancerTargetGroupState&gt;
    #   * {Types::DescribeLoadBalancerTargetGroupsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To describe the target groups for an Auto Scaling group
    #
    #   # This example describes the target groups attached to the specified Auto Scaling group.
    #
    #   resp = client.describe_load_balancer_target_groups({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancer_target_groups: [
    #       {
    #         load_balancer_target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #         state: "Added", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_target_groups({
    #     auto_scaling_group_name: "ResourceName", # required
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancer_target_groups #=> Array
    #   resp.load_balancer_target_groups[0].load_balancer_target_group_arn #=> String
    #   resp.load_balancer_target_groups[0].state #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancerTargetGroups AWS API Documentation
    #
    # @overload describe_load_balancer_target_groups(params = {})
    # @param [Hash] params ({})
    def describe_load_balancer_target_groups(params = {}, options = {})
      req = build_request(:describe_load_balancer_target_groups, params)
      req.send_request(options)
    end

    # Describes the load balancers for the specified Auto Scaling group.
    #
    # Note that this operation describes only Classic Load Balancers. If you
    # have Application Load Balancers, use DescribeLoadBalancerTargetGroups
    # instead.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is 100 and the maximum value is 100.
    #
    # @return [Types::DescribeLoadBalancersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancersResponse#load_balancers #load_balancers} => Array&lt;Types::LoadBalancerState&gt;
    #   * {Types::DescribeLoadBalancersResponse#next_token #next_token} => String
    #
    #
    # @example Example: To describe the load balancers for an Auto Scaling group
    #
    #   # This example describes the load balancers attached to the specified Auto Scaling group.
    #
    #   resp = client.describe_load_balancers({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancers: [
    #       {
    #         load_balancer_name: "my-load-balancer", 
    #         state: "Added", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancers({
    #     auto_scaling_group_name: "ResourceName", # required
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancers #=> Array
    #   resp.load_balancers[0].load_balancer_name #=> String
    #   resp.load_balancers[0].state #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancers AWS API Documentation
    #
    # @overload describe_load_balancers(params = {})
    # @param [Hash] params ({})
    def describe_load_balancers(params = {}, options = {})
      req = build_request(:describe_load_balancers, params)
      req.send_request(options)
    end

    # Describes the available CloudWatch metrics for Amazon EC2 Auto
    # Scaling.
    #
    # Note that the `GroupStandbyInstances` metric is not returned by
    # default. You must explicitly request this metric when calling
    # EnableMetricsCollection.
    #
    # @return [Types::DescribeMetricCollectionTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMetricCollectionTypesAnswer#metrics #metrics} => Array&lt;Types::MetricCollectionType&gt;
    #   * {Types::DescribeMetricCollectionTypesAnswer#granularities #granularities} => Array&lt;Types::MetricGranularityType&gt;
    #
    #
    # @example Example: To describe the Auto Scaling metric collection types
    #
    #   # This example describes the available metric collection types.
    #
    #   resp = client.describe_metric_collection_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     granularities: [
    #       {
    #         granularity: "1Minute", 
    #       }, 
    #     ], 
    #     metrics: [
    #       {
    #         metric: "GroupMinSize", 
    #       }, 
    #       {
    #         metric: "GroupMaxSize", 
    #       }, 
    #       {
    #         metric: "GroupDesiredCapacity", 
    #       }, 
    #       {
    #         metric: "GroupInServiceInstances", 
    #       }, 
    #       {
    #         metric: "GroupPendingInstances", 
    #       }, 
    #       {
    #         metric: "GroupTerminatingInstances", 
    #       }, 
    #       {
    #         metric: "GroupStandbyInstances", 
    #       }, 
    #       {
    #         metric: "GroupTotalInstances", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.metrics #=> Array
    #   resp.metrics[0].metric #=> String
    #   resp.granularities #=> Array
    #   resp.granularities[0].granularity #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeMetricCollectionTypes AWS API Documentation
    #
    # @overload describe_metric_collection_types(params = {})
    # @param [Hash] params ({})
    def describe_metric_collection_types(params = {}, options = {})
      req = build_request(:describe_metric_collection_types, params)
      req.send_request(options)
    end

    # Describes the notification actions associated with the specified Auto
    # Scaling group.
    #
    # @option params [Array<String>] :auto_scaling_group_names
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is 50 and the maximum value is 100.
    #
    # @return [Types::DescribeNotificationConfigurationsAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotificationConfigurationsAnswer#notification_configurations #notification_configurations} => Array&lt;Types::NotificationConfiguration&gt;
    #   * {Types::DescribeNotificationConfigurationsAnswer#next_token #next_token} => String
    #
    #
    # @example Example: To describe Auto Scaling notification configurations
    #
    #   # This example describes the notification configurations for the specified Auto Scaling group.
    #
    #   resp = client.describe_notification_configurations({
    #     auto_scaling_group_names: [
    #       "my-auto-scaling-group", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     notification_configurations: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         notification_type: "autoscaling:TEST_NOTIFICATION", 
    #         topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic-2", 
    #       }, 
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         notification_type: "autoscaling:TEST_NOTIFICATION", 
    #         topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notification_configurations({
    #     auto_scaling_group_names: ["ResourceName"],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_configurations #=> Array
    #   resp.notification_configurations[0].auto_scaling_group_name #=> String
    #   resp.notification_configurations[0].topic_arn #=> String
    #   resp.notification_configurations[0].notification_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeNotificationConfigurations AWS API Documentation
    #
    # @overload describe_notification_configurations(params = {})
    # @param [Hash] params ({})
    def describe_notification_configurations(params = {}, options = {})
      req = build_request(:describe_notification_configurations, params)
      req.send_request(options)
    end

    # Describes the policies for the specified Auto Scaling group.
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :policy_names
    #   The names of one or more policies. If you omit this parameter, all
    #   policies are described. If an group name is provided, the results are
    #   limited to that group. This list is limited to 50 items. If you
    #   specify an unknown policy name, it is ignored with no error.
    #
    # @option params [Array<String>] :policy_types
    #   One or more policy types. Valid values are `SimpleScaling` and
    #   `StepScaling`.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to be returned with each call. The default
    #   value is 50 and the maximum value is 100.
    #
    # @return [Types::PoliciesType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PoliciesType#scaling_policies #scaling_policies} => Array&lt;Types::ScalingPolicy&gt;
    #   * {Types::PoliciesType#next_token #next_token} => String
    #
    #
    # @example Example: To describe Auto Scaling policies
    #
    #   # This example describes the policies for the specified Auto Scaling group.
    #
    #   resp = client.describe_policies({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scaling_policies: [
    #       {
    #         adjustment_type: "ChangeInCapacity", 
    #         alarms: [
    #         ], 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         policy_arn: "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2233f3d7-6290-403b-b632-93c553560106:autoScalingGroupName/my-auto-scaling-group:policyName/ScaleIn", 
    #         policy_name: "ScaleIn", 
    #         scaling_adjustment: -1, 
    #       }, 
    #       {
    #         adjustment_type: "PercentChangeInCapacity", 
    #         alarms: [
    #         ], 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cooldown: 60, 
    #         min_adjustment_step: 2, 
    #         policy_arn: "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2b435159-cf77-4e89-8c0e-d63b497baad7:autoScalingGroupName/my-auto-scaling-group:policyName/ScalePercentChange", 
    #         policy_name: "ScalePercentChange", 
    #         scaling_adjustment: 25, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_policies({
    #     auto_scaling_group_name: "ResourceName",
    #     policy_names: ["ResourceName"],
    #     policy_types: ["XmlStringMaxLen64"],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_policies #=> Array
    #   resp.scaling_policies[0].auto_scaling_group_name #=> String
    #   resp.scaling_policies[0].policy_name #=> String
    #   resp.scaling_policies[0].policy_arn #=> String
    #   resp.scaling_policies[0].policy_type #=> String
    #   resp.scaling_policies[0].adjustment_type #=> String
    #   resp.scaling_policies[0].min_adjustment_step #=> Integer
    #   resp.scaling_policies[0].min_adjustment_magnitude #=> Integer
    #   resp.scaling_policies[0].scaling_adjustment #=> Integer
    #   resp.scaling_policies[0].cooldown #=> Integer
    #   resp.scaling_policies[0].step_adjustments #=> Array
    #   resp.scaling_policies[0].step_adjustments[0].metric_interval_lower_bound #=> Float
    #   resp.scaling_policies[0].step_adjustments[0].metric_interval_upper_bound #=> Float
    #   resp.scaling_policies[0].step_adjustments[0].scaling_adjustment #=> Integer
    #   resp.scaling_policies[0].metric_aggregation_type #=> String
    #   resp.scaling_policies[0].estimated_instance_warmup #=> Integer
    #   resp.scaling_policies[0].alarms #=> Array
    #   resp.scaling_policies[0].alarms[0].alarm_name #=> String
    #   resp.scaling_policies[0].alarms[0].alarm_arn #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.predefined_metric_specification.predefined_metric_type #=> String, one of "ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"
    #   resp.scaling_policies[0].target_tracking_configuration.predefined_metric_specification.resource_label #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metric_name #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.namespace #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions #=> Array
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions[0].name #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions[0].value #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.statistic #=> String, one of "Average", "Minimum", "Maximum", "SampleCount", "Sum"
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.unit #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.target_value #=> Float
    #   resp.scaling_policies[0].target_tracking_configuration.disable_scale_in #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribePolicies AWS API Documentation
    #
    # @overload describe_policies(params = {})
    # @param [Hash] params ({})
    def describe_policies(params = {}, options = {})
      req = build_request(:describe_policies, params)
      req.send_request(options)
    end

    # Describes one or more scaling activities for the specified Auto
    # Scaling group.
    #
    # @option params [Array<String>] :activity_ids
    #   The activity IDs of the desired scaling activities. You can specify up
    #   to 50 IDs. If you omit this parameter, all activities for the past six
    #   weeks are described. If unknown activities are requested, they are
    #   ignored with no error. If you specify an Auto Scaling group, the
    #   results are limited to that group.
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is 100 and the maximum value is 100.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::ActivitiesType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivitiesType#activities #activities} => Array&lt;Types::Activity&gt;
    #   * {Types::ActivitiesType#next_token #next_token} => String
    #
    #
    # @example Example: To describe the scaling activities for an Auto Scaling group
    #
    #   # This example describes the scaling activities for the specified Auto Scaling group.
    #
    #   resp = client.describe_scaling_activities({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activities: [
    #       {
    #         activity_id: "f9f2d65b-f1f2-43e7-b46d-d86756459699", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cause: "At 2013-08-19T20:53:25Z a user request created an AutoScalingGroup changing the desired capacity from 0 to 1.  At 2013-08-19T20:53:29Z an instance was started in response to a difference between desired and actual capacity, increasing the capacity from 0 to 1.", 
    #         description: "Launching a new EC2 instance: i-4ba0837f", 
    #         details: "details", 
    #         end_time: Time.parse("2013-08-19T20:54:02Z"), 
    #         progress: 100, 
    #         start_time: Time.parse("2013-08-19T20:53:29.930Z"), 
    #         status_code: "Successful", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_activities({
    #     activity_ids: ["XmlString"],
    #     auto_scaling_group_name: "ResourceName",
    #     max_records: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_id #=> String
    #   resp.activities[0].auto_scaling_group_name #=> String
    #   resp.activities[0].description #=> String
    #   resp.activities[0].cause #=> String
    #   resp.activities[0].start_time #=> Time
    #   resp.activities[0].end_time #=> Time
    #   resp.activities[0].status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"
    #   resp.activities[0].status_message #=> String
    #   resp.activities[0].progress #=> Integer
    #   resp.activities[0].details #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScalingActivities AWS API Documentation
    #
    # @overload describe_scaling_activities(params = {})
    # @param [Hash] params ({})
    def describe_scaling_activities(params = {}, options = {})
      req = build_request(:describe_scaling_activities, params)
      req.send_request(options)
    end

    # Describes the scaling process types for use with ResumeProcesses and
    # SuspendProcesses.
    #
    # @return [Types::ProcessesType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProcessesType#processes #processes} => Array&lt;Types::ProcessType&gt;
    #
    #
    # @example Example: To describe the Auto Scaling process types
    #
    #   # This example describes the Auto Scaling process types.
    #
    #   resp = client.describe_scaling_process_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     processes: [
    #       {
    #         process_name: "AZRebalance", 
    #       }, 
    #       {
    #         process_name: "AddToLoadBalancer", 
    #       }, 
    #       {
    #         process_name: "AlarmNotification", 
    #       }, 
    #       {
    #         process_name: "HealthCheck", 
    #       }, 
    #       {
    #         process_name: "Launch", 
    #       }, 
    #       {
    #         process_name: "ReplaceUnhealthy", 
    #       }, 
    #       {
    #         process_name: "ScheduledActions", 
    #       }, 
    #       {
    #         process_name: "Terminate", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.processes #=> Array
    #   resp.processes[0].process_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScalingProcessTypes AWS API Documentation
    #
    # @overload describe_scaling_process_types(params = {})
    # @param [Hash] params ({})
    def describe_scaling_process_types(params = {}, options = {})
      req = build_request(:describe_scaling_process_types, params)
      req.send_request(options)
    end

    # Describes the actions scheduled for your Auto Scaling group that
    # haven't run. To describe the actions that have already run, use
    # DescribeScalingActivities.
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :scheduled_action_names
    #   The names of one or more scheduled actions. You can specify up to 50
    #   actions. If you omit this parameter, all scheduled actions are
    #   described. If you specify an unknown scheduled action, it is ignored
    #   with no error.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest scheduled start time to return. If scheduled action names
    #   are provided, this parameter is ignored.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The latest scheduled start time to return. If scheduled action names
    #   are provided, this parameter is ignored.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is 50 and the maximum value is 100.
    #
    # @return [Types::ScheduledActionsType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScheduledActionsType#scheduled_update_group_actions #scheduled_update_group_actions} => Array&lt;Types::ScheduledUpdateGroupAction&gt;
    #   * {Types::ScheduledActionsType#next_token #next_token} => String
    #
    #
    # @example Example: To describe scheduled actions
    #
    #   # This example describes the scheduled actions for the specified Auto Scaling group.
    #
    #   resp = client.describe_scheduled_actions({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scheduled_update_group_actions: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         desired_capacity: 4, 
    #         max_size: 6, 
    #         min_size: 2, 
    #         recurrence: "30 0 1 12 0", 
    #         scheduled_action_arn: "arn:aws:autoscaling:us-west-2:123456789012:scheduledUpdateGroupAction:8e86b655-b2e6-4410-8f29-b4f094d6871c:autoScalingGroupName/my-auto-scaling-group:scheduledActionName/my-scheduled-action", 
    #         scheduled_action_name: "my-scheduled-action", 
    #         start_time: Time.parse("2016-12-01T00:30:00Z"), 
    #         time: Time.parse("2016-12-01T00:30:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_actions({
    #     auto_scaling_group_name: "ResourceName",
    #     scheduled_action_names: ["ResourceName"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_update_group_actions #=> Array
    #   resp.scheduled_update_group_actions[0].auto_scaling_group_name #=> String
    #   resp.scheduled_update_group_actions[0].scheduled_action_name #=> String
    #   resp.scheduled_update_group_actions[0].scheduled_action_arn #=> String
    #   resp.scheduled_update_group_actions[0].time #=> Time
    #   resp.scheduled_update_group_actions[0].start_time #=> Time
    #   resp.scheduled_update_group_actions[0].end_time #=> Time
    #   resp.scheduled_update_group_actions[0].recurrence #=> String
    #   resp.scheduled_update_group_actions[0].min_size #=> Integer
    #   resp.scheduled_update_group_actions[0].max_size #=> Integer
    #   resp.scheduled_update_group_actions[0].desired_capacity #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScheduledActions AWS API Documentation
    #
    # @overload describe_scheduled_actions(params = {})
    # @param [Hash] params ({})
    def describe_scheduled_actions(params = {}, options = {})
      req = build_request(:describe_scheduled_actions, params)
      req.send_request(options)
    end

    # Describes the specified tags.
    #
    # You can use filters to limit the results. For example, you can query
    # for the tags for a specific Auto Scaling group. You can specify
    # multiple values for a filter. A tag must match at least one of the
    # specified values for it to be included in the results.
    #
    # You can also specify multiple filters. The result includes information
    # for a particular tag only if it matches all the filters. If there's
    # no match, no special message is returned.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A filter used to scope the tags to return.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is 50 and the maximum value is 100.
    #
    # @return [Types::TagsType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagsType#tags #tags} => Array&lt;Types::TagDescription&gt;
    #   * {Types::TagsType#next_token #next_token} => String
    #
    #
    # @example Example: To describe tags
    #
    #   # This example describes the tags for the specified Auto Scaling group.
    #
    #   resp = client.describe_tags({
    #     filters: [
    #       {
    #         name: "auto-scaling-group", 
    #         values: [
    #           "my-auto-scaling-group", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "Dept", 
    #         propagate_at_launch: true, 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "Research", 
    #       }, 
    #       {
    #         key: "Role", 
    #         propagate_at_launch: true, 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "WebServer", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     filters: [
    #       {
    #         name: "XmlString",
    #         values: ["XmlString"],
    #       },
    #     ],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].resource_id #=> String
    #   resp.tags[0].resource_type #=> String
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.tags[0].propagate_at_launch #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Describes the termination policies supported by Amazon EC2 Auto
    # Scaling.
    #
    # @return [Types::DescribeTerminationPolicyTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTerminationPolicyTypesAnswer#termination_policy_types #termination_policy_types} => Array&lt;String&gt;
    #
    #
    # @example Example: To describe termination policy types
    #
    #   # This example describes the available termination policy types.
    #
    #   resp = client.describe_termination_policy_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     termination_policy_types: [
    #       "ClosestToNextInstanceHour", 
    #       "Default", 
    #       "NewestInstance", 
    #       "OldestInstance", 
    #       "OldestLaunchConfiguration", 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.termination_policy_types #=> Array
    #   resp.termination_policy_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTerminationPolicyTypes AWS API Documentation
    #
    # @overload describe_termination_policy_types(params = {})
    # @param [Hash] params ({})
    def describe_termination_policy_types(params = {}, options = {})
      req = build_request(:describe_termination_policy_types, params)
      req.send_request(options)
    end

    # Removes one or more instances from the specified Auto Scaling group.
    #
    # After the instances are detached, you can manage them independent of
    # the Auto Scaling group.
    #
    # If you do not specify the option to decrement the desired capacity,
    # Amazon EC2 Auto Scaling launches instances to replace the ones that
    # are detached.
    #
    # If there is a Classic Load Balancer attached to the Auto Scaling
    # group, the instances are deregistered from the load balancer. If there
    # are target groups attached to the Auto Scaling group, the instances
    # are deregistered from the target groups.
    #
    # For more information, see [Detach EC2 Instances from Your Auto Scaling
    # Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether the Auto Scaling group decrements the desired
    #   capacity value by the number of instances detached.
    #
    # @return [Types::DetachInstancesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachInstancesAnswer#activities #activities} => Array&lt;Types::Activity&gt;
    #
    #
    # @example Example: To detach an instance from an Auto Scaling group
    #
    #   # This example detaches the specified instance from the specified Auto Scaling group.
    #
    #   resp = client.detach_instances({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #     should_decrement_desired_capacity: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activities: [
    #       {
    #         activity_id: "5091cb52-547a-47ce-a236-c9ccbc2cb2c9", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cause: "At 2015-04-12T15:02:16Z instance i-93633f9b was detached in response to a user request, shrinking the capacity from 2 to 1.", 
    #         description: "Detaching EC2 instance: i-93633f9b", 
    #         details: "details", 
    #         progress: 50, 
    #         start_time: Time.parse("2015-04-12T15:02:16.179Z"), 
    #         status_code: "InProgress", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "ResourceName", # required
    #     should_decrement_desired_capacity: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_id #=> String
    #   resp.activities[0].auto_scaling_group_name #=> String
    #   resp.activities[0].description #=> String
    #   resp.activities[0].cause #=> String
    #   resp.activities[0].start_time #=> Time
    #   resp.activities[0].end_time #=> Time
    #   resp.activities[0].status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"
    #   resp.activities[0].status_message #=> String
    #   resp.activities[0].progress #=> Integer
    #   resp.activities[0].details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachInstances AWS API Documentation
    #
    # @overload detach_instances(params = {})
    # @param [Hash] params ({})
    def detach_instances(params = {}, options = {})
      req = build_request(:detach_instances, params)
      req.send_request(options)
    end

    # Detaches one or more target groups from the specified Auto Scaling
    # group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups. You can specify
    #   up to 10 target groups.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To detach a target group from an Auto Scaling group
    #
    #   # This example detaches the specified target group from the specified Auto Scaling group
    #
    #   resp = client.detach_load_balancer_target_groups({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     target_group_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_load_balancer_target_groups({
    #     auto_scaling_group_name: "ResourceName", # required
    #     target_group_arns: ["XmlStringMaxLen511"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancerTargetGroups AWS API Documentation
    #
    # @overload detach_load_balancer_target_groups(params = {})
    # @param [Hash] params ({})
    def detach_load_balancer_target_groups(params = {}, options = {})
      req = build_request(:detach_load_balancer_target_groups, params)
      req.send_request(options)
    end

    # Detaches one or more Classic Load Balancers from the specified Auto
    # Scaling group.
    #
    # Note that this operation detaches only Classic Load Balancers. If you
    # have Application Load Balancers, use DetachLoadBalancerTargetGroups
    # instead.
    #
    # When you detach a load balancer, it enters the `Removing` state while
    # deregistering the instances in the group. When all instances are
    # deregistered, then you can no longer describe the load balancer using
    # DescribeLoadBalancers. Note that the instances remain running.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :load_balancer_names
    #   The names of the load balancers. You can specify up to 10 load
    #   balancers.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To detach a load balancer from an Auto Scaling group
    #
    #   # This example detaches the specified load balancer from the specified Auto Scaling group.
    #
    #   resp = client.detach_load_balancers({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     load_balancer_names: [
    #       "my-load-balancer", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_load_balancers({
    #     auto_scaling_group_name: "ResourceName", # required
    #     load_balancer_names: ["XmlStringMaxLen255"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancers AWS API Documentation
    #
    # @overload detach_load_balancers(params = {})
    # @param [Hash] params ({})
    def detach_load_balancers(params = {}, options = {})
      req = build_request(:detach_load_balancers, params)
      req.send_request(options)
    end

    # Disables group metrics for the specified Auto Scaling group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :metrics
    #   One or more of the following metrics. If you omit this parameter, all
    #   metrics are disabled.
    #
    #   * `GroupMinSize`
    #
    #   * `GroupMaxSize`
    #
    #   * `GroupDesiredCapacity`
    #
    #   * `GroupInServiceInstances`
    #
    #   * `GroupPendingInstances`
    #
    #   * `GroupStandbyInstances`
    #
    #   * `GroupTerminatingInstances`
    #
    #   * `GroupTotalInstances`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disable metrics collection for an Auto Scaling group
    #
    #   # This example disables collecting data for the GroupDesiredCapacity metric for the specified Auto Scaling group.
    #
    #   resp = client.disable_metrics_collection({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     metrics: [
    #       "GroupDesiredCapacity", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_metrics_collection({
    #     auto_scaling_group_name: "ResourceName", # required
    #     metrics: ["XmlStringMaxLen255"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DisableMetricsCollection AWS API Documentation
    #
    # @overload disable_metrics_collection(params = {})
    # @param [Hash] params ({})
    def disable_metrics_collection(params = {}, options = {})
      req = build_request(:disable_metrics_collection, params)
      req.send_request(options)
    end

    # Enables group metrics for the specified Auto Scaling group. For more
    # information, see [Monitoring Your Auto Scaling Groups and
    # Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-monitoring.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :metrics
    #   One or more of the following metrics. If you omit this parameter, all
    #   metrics are enabled.
    #
    #   * `GroupMinSize`
    #
    #   * `GroupMaxSize`
    #
    #   * `GroupDesiredCapacity`
    #
    #   * `GroupInServiceInstances`
    #
    #   * `GroupPendingInstances`
    #
    #   * `GroupStandbyInstances`
    #
    #   * `GroupTerminatingInstances`
    #
    #   * `GroupTotalInstances`
    #
    # @option params [required, String] :granularity
    #   The granularity to associate with the metrics to collect. The only
    #   valid value is `1Minute`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable metrics collection for an Auto Scaling group
    #
    #   # This example enables data collection for the specified Auto Scaling group.
    #
    #   resp = client.enable_metrics_collection({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     granularity: "1Minute", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_metrics_collection({
    #     auto_scaling_group_name: "ResourceName", # required
    #     metrics: ["XmlStringMaxLen255"],
    #     granularity: "XmlStringMaxLen255", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnableMetricsCollection AWS API Documentation
    #
    # @overload enable_metrics_collection(params = {})
    # @param [Hash] params ({})
    def enable_metrics_collection(params = {}, options = {})
      req = build_request(:enable_metrics_collection, params)
      req.send_request(options)
    end

    # Moves the specified instances into the standby state.
    #
    # For more information, see [Temporarily Removing Instances from Your
    # Auto Scaling Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether to decrement the desired capacity of the Auto
    #   Scaling group by the number of instances moved to `Standby` mode.
    #
    # @return [Types::EnterStandbyAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnterStandbyAnswer#activities #activities} => Array&lt;Types::Activity&gt;
    #
    #
    # @example Example: To move instances into standby mode
    #
    #   # This example puts the specified instance into standby mode.
    #
    #   resp = client.enter_standby({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #     should_decrement_desired_capacity: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activities: [
    #       {
    #         activity_id: "ffa056b4-6ed3-41ba-ae7c-249dfae6eba1", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cause: "At 2015-04-12T15:10:23Z instance i-93633f9b was moved to standby in response to a user request, shrinking the capacity from 2 to 1.", 
    #         description: "Moving EC2 instance to Standby: i-93633f9b", 
    #         details: "details", 
    #         progress: 50, 
    #         start_time: Time.parse("2015-04-12T15:10:23.640Z"), 
    #         status_code: "InProgress", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enter_standby({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "ResourceName", # required
    #     should_decrement_desired_capacity: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_id #=> String
    #   resp.activities[0].auto_scaling_group_name #=> String
    #   resp.activities[0].description #=> String
    #   resp.activities[0].cause #=> String
    #   resp.activities[0].start_time #=> Time
    #   resp.activities[0].end_time #=> Time
    #   resp.activities[0].status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"
    #   resp.activities[0].status_message #=> String
    #   resp.activities[0].progress #=> Integer
    #   resp.activities[0].details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnterStandby AWS API Documentation
    #
    # @overload enter_standby(params = {})
    # @param [Hash] params ({})
    def enter_standby(params = {}, options = {})
      req = build_request(:enter_standby, params)
      req.send_request(options)
    end

    # Executes the specified policy.
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :policy_name
    #   The name or ARN of the policy.
    #
    # @option params [Boolean] :honor_cooldown
    #   Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
    #   period to complete before executing the policy.
    #
    #   This parameter is not supported if the policy type is `StepScaling`.
    #
    #   For more information, see [Scaling Cooldowns][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #
    # @option params [Float] :metric_value
    #   The metric value to compare to `BreachThreshold`. This enables you to
    #   execute a policy of type `StepScaling` and determine which step
    #   adjustment to use. For example, if the breach threshold is 50 and you
    #   want to use a step adjustment with a lower bound of 0 and an upper
    #   bound of 10, you can set the metric value to 59.
    #
    #   If you specify a metric value that doesn't correspond to a step
    #   adjustment for the policy, the call returns an error.
    #
    #   This parameter is required if the policy type is `StepScaling` and not
    #   supported otherwise.
    #
    # @option params [Float] :breach_threshold
    #   The breach threshold for the alarm.
    #
    #   This parameter is required if the policy type is `StepScaling` and not
    #   supported otherwise.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To execute an Auto Scaling policy
    #
    #   # This example executes the specified Auto Scaling policy for the specified Auto Scaling group.
    #
    #   resp = client.execute_policy({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     honor_cooldown: true, 
    #     policy_name: "ScaleIn", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_policy({
    #     auto_scaling_group_name: "ResourceName",
    #     policy_name: "ResourceName", # required
    #     honor_cooldown: false,
    #     metric_value: 1.0,
    #     breach_threshold: 1.0,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ExecutePolicy AWS API Documentation
    #
    # @overload execute_policy(params = {})
    # @param [Hash] params ({})
    def execute_policy(params = {}, options = {})
      req = build_request(:execute_policy, params)
      req.send_request(options)
    end

    # Moves the specified instances out of the standby state.
    #
    # For more information, see [Temporarily Removing Instances from Your
    # Auto Scaling Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @return [Types::ExitStandbyAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExitStandbyAnswer#activities #activities} => Array&lt;Types::Activity&gt;
    #
    #
    # @example Example: To move instances out of standby mode
    #
    #   # This example moves the specified instance out of standby mode.
    #
    #   resp = client.exit_standby({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activities: [
    #       {
    #         activity_id: "142928e1-a2dc-453a-9b24-b85ad6735928", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cause: "At 2015-04-12T15:14:29Z instance i-93633f9b was moved out of standby in response to a user request, increasing the capacity from 1 to 2.", 
    #         description: "Moving EC2 instance out of Standby: i-93633f9b", 
    #         details: "details", 
    #         progress: 30, 
    #         start_time: Time.parse("2015-04-12T15:14:29.886Z"), 
    #         status_code: "PreInService", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.exit_standby({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_id #=> String
    #   resp.activities[0].auto_scaling_group_name #=> String
    #   resp.activities[0].description #=> String
    #   resp.activities[0].cause #=> String
    #   resp.activities[0].start_time #=> Time
    #   resp.activities[0].end_time #=> Time
    #   resp.activities[0].status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"
    #   resp.activities[0].status_message #=> String
    #   resp.activities[0].progress #=> Integer
    #   resp.activities[0].details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ExitStandby AWS API Documentation
    #
    # @overload exit_standby(params = {})
    # @param [Hash] params ({})
    def exit_standby(params = {}, options = {})
      req = build_request(:exit_standby, params)
      req.send_request(options)
    end

    # Creates or updates a lifecycle hook for the specified Auto Scaling
    # Group.
    #
    # A lifecycle hook tells Amazon EC2 Auto Scaling that you want to
    # perform an action on an instance that is not actively in service; for
    # example, either when the instance launches or before the instance
    # terminates.
    #
    # This step is a part of the procedure for adding a lifecycle hook to an
    # Auto Scaling group:
    #
    # 1.  (Optional) Create a Lambda function and a rule that allows
    #     CloudWatch Events to invoke your Lambda function when Amazon EC2
    #     Auto Scaling launches or terminates instances.
    #
    # 2.  (Optional) Create a notification target and an IAM role. The
    #     target can be either an Amazon SQS queue or an Amazon SNS topic.
    #     The role allows Amazon EC2 Auto Scaling to publish lifecycle
    #     notifications to the target.
    #
    # 3.  **Create the lifecycle hook. Specify whether the hook is used when
    #     the instances launch or terminate.**
    #
    # 4.  If you need more time, record the lifecycle action heartbeat to
    #     keep the instance in a pending state.
    #
    # 5.  If you finish before the timeout period ends, complete the
    #     lifecycle action.
    #
    # For more information, see [Auto Scaling Lifecycle Hooks][1] in the
    # *Amazon EC2 Auto Scaling User Guide*.
    #
    # If you exceed your maximum limit of lifecycle hooks, which by default
    # is 50 per Auto Scaling group, the call fails. For information about
    # updating this limit, see [AWS Service Limits][2] in the *Amazon Web
    # Services General Reference*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html
    # [2]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html
    #
    # @option params [required, String] :lifecycle_hook_name
    #   The name of the lifecycle hook.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :lifecycle_transition
    #   The instance state to which you want to attach the lifecycle hook. The
    #   possible values are:
    #
    #   * autoscaling:EC2\_INSTANCE\_LAUNCHING
    #
    #   * autoscaling:EC2\_INSTANCE\_TERMINATING
    #
    #   This parameter is required for new lifecycle hooks, but optional when
    #   updating existing hooks.
    #
    # @option params [String] :role_arn
    #   The ARN of the IAM role that allows the Auto Scaling group to publish
    #   to the specified notification target.
    #
    #   This parameter is required for new lifecycle hooks, but optional when
    #   updating existing hooks.
    #
    # @option params [String] :notification_target_arn
    #   The ARN of the notification target that Amazon EC2 Auto Scaling will
    #   use to notify you when an instance is in the transition state for the
    #   lifecycle hook. This target can be either an SQS queue or an SNS
    #   topic. If you specify an empty string, this overrides the current ARN.
    #
    #   This operation uses the JSON format when sending notifications to an
    #   Amazon SQS queue, and an email key/value pair format when sending
    #   notifications to an Amazon SNS topic.
    #
    #   When you specify a notification target, Amazon EC2 Auto Scaling sends
    #   it a test message. Test messages contains the following additional
    #   key/value pair: `"Event": "autoscaling:TEST_NOTIFICATION"`.
    #
    # @option params [String] :notification_metadata
    #   Contains additional information that you want to include any time
    #   Amazon EC2 Auto Scaling sends a message to the notification target.
    #
    # @option params [Integer] :heartbeat_timeout
    #   The maximum time, in seconds, that can elapse before the lifecycle
    #   hook times out. The range is from 30 to 7200 seconds. The default is
    #   3600 seconds (1 hour).
    #
    #   If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the
    #   default action. You can prevent the lifecycle hook from timing out by
    #   calling RecordLifecycleActionHeartbeat.
    #
    # @option params [String] :default_result
    #   Defines the action the Auto Scaling group should take when the
    #   lifecycle hook timeout elapses or if an unexpected failure occurs.
    #   This parameter can be either `CONTINUE` or `ABANDON`. The default
    #   value is `ABANDON`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a lifecycle hook
    #
    #   # This example creates a lifecycle hook.
    #
    #   resp = client.put_lifecycle_hook({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     lifecycle_hook_name: "my-lifecycle-hook", 
    #     lifecycle_transition: "autoscaling:EC2_INSTANCE_LAUNCHING", 
    #     notification_target_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic --role-arn", 
    #     role_arn: "arn:aws:iam::123456789012:role/my-auto-scaling-role", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_hook({
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "ResourceName", # required
    #     lifecycle_transition: "LifecycleTransition",
    #     role_arn: "ResourceName",
    #     notification_target_arn: "NotificationTargetResourceName",
    #     notification_metadata: "XmlStringMaxLen1023",
    #     heartbeat_timeout: 1,
    #     default_result: "LifecycleActionResult",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutLifecycleHook AWS API Documentation
    #
    # @overload put_lifecycle_hook(params = {})
    # @param [Hash] params ({})
    def put_lifecycle_hook(params = {}, options = {})
      req = build_request(:put_lifecycle_hook, params)
      req.send_request(options)
    end

    # Configures an Auto Scaling group to send notifications when specified
    # events take place. Subscribers to the specified topic can have
    # messages delivered to an endpoint such as a web server or an email
    # address.
    #
    # This configuration overwrites any existing configuration.
    #
    # For more information see [Getting SNS Notifications When Your Auto
    # Scaling Group Scales][1] in the *Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/ASGettingNotifications.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic.
    #
    # @option params [required, Array<String>] :notification_types
    #   The type of event that will cause the notification to be sent. For
    #   details about notification types supported by Amazon EC2 Auto Scaling,
    #   see DescribeAutoScalingNotificationTypes.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add an Auto Scaling notification
    #
    #   # This example adds the specified notification to the specified Auto Scaling group.
    #
    #   resp = client.put_notification_configuration({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     notification_types: [
    #       "autoscaling:TEST_NOTIFICATION", 
    #     ], 
    #     topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_notification_configuration({
    #     auto_scaling_group_name: "ResourceName", # required
    #     topic_arn: "ResourceName", # required
    #     notification_types: ["XmlStringMaxLen255"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutNotificationConfiguration AWS API Documentation
    #
    # @overload put_notification_configuration(params = {})
    # @param [Hash] params ({})
    def put_notification_configuration(params = {}, options = {})
      req = build_request(:put_notification_configuration, params)
      req.send_request(options)
    end

    # Creates or updates a policy for an Auto Scaling group. To update an
    # existing policy, use the existing policy name and set the parameters
    # you want to change. Any existing parameter not changed in an update to
    # an existing policy is not changed in this update request.
    #
    # If you exceed your maximum limit of step adjustments, which by default
    # is 20 per region, the call fails. For information about updating this
    # limit, see [AWS Service Limits][1] in the *Amazon Web Services General
    # Reference*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @option params [String] :policy_type
    #   The policy type. The valid values are `SimpleScaling`, `StepScaling`,
    #   and `TargetTrackingScaling`. If the policy type is null, the value is
    #   treated as `SimpleScaling`.
    #
    # @option params [String] :adjustment_type
    #   The adjustment type. The valid values are `ChangeInCapacity`,
    #   `ExactCapacity`, and `PercentChangeInCapacity`.
    #
    #   This parameter is supported if the policy type is `SimpleScaling` or
    #   `StepScaling`.
    #
    #   For more information, see [Dynamic Scaling][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html
    #
    # @option params [Integer] :min_adjustment_step
    #   Available for backward compatibility. Use `MinAdjustmentMagnitude`
    #   instead.
    #
    # @option params [Integer] :min_adjustment_magnitude
    #   The minimum number of instances to scale. If the value of
    #   `AdjustmentType` is `PercentChangeInCapacity`, the scaling policy
    #   changes the `DesiredCapacity` of the Auto Scaling group by at least
    #   this many instances. Otherwise, the error is `ValidationError`.
    #
    #   This parameter is supported if the policy type is `SimpleScaling` or
    #   `StepScaling`.
    #
    # @option params [Integer] :scaling_adjustment
    #   The amount by which to scale, based on the specified adjustment type.
    #   A positive value adds to the current capacity while a negative number
    #   removes from the current capacity.
    #
    #   This parameter is required if the policy type is `SimpleScaling` and
    #   not supported otherwise.
    #
    # @option params [Integer] :cooldown
    #   The amount of time, in seconds, after a scaling activity completes and
    #   before the next scaling activity can start. If this parameter is not
    #   specified, the default cooldown period for the group applies.
    #
    #   This parameter is supported if the policy type is `SimpleScaling`.
    #
    #   For more information, see [Scaling Cooldowns][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #
    # @option params [String] :metric_aggregation_type
    #   The aggregation type for the CloudWatch metrics. The valid values are
    #   `Minimum`, `Maximum`, and `Average`. If the aggregation type is null,
    #   the value is treated as `Average`.
    #
    #   This parameter is supported if the policy type is `StepScaling`.
    #
    # @option params [Array<Types::StepAdjustment>] :step_adjustments
    #   A set of adjustments that enable you to scale based on the size of the
    #   alarm breach.
    #
    #   This parameter is required if the policy type is `StepScaling` and not
    #   supported otherwise.
    #
    # @option params [Integer] :estimated_instance_warmup
    #   The estimated time, in seconds, until a newly launched instance can
    #   contribute to the CloudWatch metrics. The default is to use the value
    #   specified for the default cooldown period for the group.
    #
    #   This parameter is supported if the policy type is `StepScaling` or
    #   `TargetTrackingScaling`.
    #
    # @option params [Types::TargetTrackingConfiguration] :target_tracking_configuration
    #   A target tracking policy.
    #
    #   This parameter is required if the policy type is
    #   `TargetTrackingScaling` and not supported otherwise.
    #
    # @return [Types::PolicyARNType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PolicyARNType#policy_arn #policy_arn} => String
    #   * {Types::PolicyARNType#alarms #alarms} => Array&lt;Types::Alarm&gt;
    #
    #
    # @example Example: To add a scaling policy to an Auto Scaling group
    #
    #   # This example adds the specified policy to the specified Auto Scaling group.
    #
    #   resp = client.put_scaling_policy({
    #     adjustment_type: "ChangeInCapacity", 
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     policy_name: "ScaleIn", 
    #     scaling_adjustment: -1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_arn: "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2233f3d7-6290-403b-b632-93c553560106:autoScalingGroupName/my-auto-scaling-group:policyName/ScaleIn", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy({
    #     auto_scaling_group_name: "ResourceName", # required
    #     policy_name: "XmlStringMaxLen255", # required
    #     policy_type: "XmlStringMaxLen64",
    #     adjustment_type: "XmlStringMaxLen255",
    #     min_adjustment_step: 1,
    #     min_adjustment_magnitude: 1,
    #     scaling_adjustment: 1,
    #     cooldown: 1,
    #     metric_aggregation_type: "XmlStringMaxLen32",
    #     step_adjustments: [
    #       {
    #         metric_interval_lower_bound: 1.0,
    #         metric_interval_upper_bound: 1.0,
    #         scaling_adjustment: 1, # required
    #       },
    #     ],
    #     estimated_instance_warmup: 1,
    #     target_tracking_configuration: {
    #       predefined_metric_specification: {
    #         predefined_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, ALBRequestCountPerTarget
    #         resource_label: "XmlStringMaxLen1023",
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
    #       target_value: 1.0, # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutScalingPolicy AWS API Documentation
    #
    # @overload put_scaling_policy(params = {})
    # @param [Hash] params ({})
    def put_scaling_policy(params = {}, options = {})
      req = build_request(:put_scaling_policy, params)
      req.send_request(options)
    end

    # Creates or updates a scheduled scaling action for an Auto Scaling
    # group. When updating a scheduled scaling action, if you leave a
    # parameter unspecified, the corresponding value remains unchanged.
    #
    # For more information, see [Scheduled Scaling][1] in the *Amazon EC2
    # Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of this scaling action.
    #
    # @option params [Time,DateTime,Date,Integer,String] :time
    #   This parameter is deprecated.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The time for this action to start, in "YYYY-MM-DDThh:mm:ssZ" format
    #   in UTC/GMT only (for example, `2014-06-01T00:00:00Z`).
    #
    #   If you specify `Recurrence` and `StartTime`, Amazon EC2 Auto Scaling
    #   performs the action at this time, and then performs the action based
    #   on the specified recurrence.
    #
    #   If you try to schedule your action in the past, Amazon EC2 Auto
    #   Scaling returns an error message.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The time for the recurring schedule to end. Amazon EC2 Auto Scaling
    #   does not perform the action after this time.
    #
    # @option params [String] :recurrence
    #   The recurring schedule for this action, in Unix cron syntax format.
    #   For more information about this format, see [Crontab][1].
    #
    #
    #
    #   [1]: http://crontab.org
    #
    # @option params [Integer] :min_size
    #   The minimum size for the Auto Scaling group.
    #
    # @option params [Integer] :max_size
    #   The maximum size for the Auto Scaling group.
    #
    # @option params [Integer] :desired_capacity
    #   The number of EC2 instances that should be running in the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add a scheduled action to an Auto Scaling group
    #
    #   # This example adds the specified scheduled action to the specified Auto Scaling group.
    #
    #   resp = client.put_scheduled_update_group_action({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     desired_capacity: 4, 
    #     end_time: Time.parse("2014-05-12T08:00:00Z"), 
    #     max_size: 6, 
    #     min_size: 2, 
    #     scheduled_action_name: "my-scheduled-action", 
    #     start_time: Time.parse("2014-05-12T08:00:00Z"), 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scheduled_update_group_action({
    #     auto_scaling_group_name: "ResourceName", # required
    #     scheduled_action_name: "XmlStringMaxLen255", # required
    #     time: Time.now,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     recurrence: "XmlStringMaxLen255",
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutScheduledUpdateGroupAction AWS API Documentation
    #
    # @overload put_scheduled_update_group_action(params = {})
    # @param [Hash] params ({})
    def put_scheduled_update_group_action(params = {}, options = {})
      req = build_request(:put_scheduled_update_group_action, params)
      req.send_request(options)
    end

    # Records a heartbeat for the lifecycle action associated with the
    # specified token or instance. This extends the timeout by the length of
    # time defined using PutLifecycleHook.
    #
    # This step is a part of the procedure for adding a lifecycle hook to an
    # Auto Scaling group:
    #
    # 1.  (Optional) Create a Lambda function and a rule that allows
    #     CloudWatch Events to invoke your Lambda function when Amazon EC2
    #     Auto Scaling launches or terminates instances.
    #
    # 2.  (Optional) Create a notification target and an IAM role. The
    #     target can be either an Amazon SQS queue or an Amazon SNS topic.
    #     The role allows Amazon EC2 Auto Scaling to publish lifecycle
    #     notifications to the target.
    #
    # 3.  Create the lifecycle hook. Specify whether the hook is used when
    #     the instances launch or terminate.
    #
    # 4.  **If you need more time, record the lifecycle action heartbeat to
    #     keep the instance in a pending state.**
    #
    # 5.  If you finish before the timeout period ends, complete the
    #     lifecycle action.
    #
    # For more information, see [Auto Scaling Lifecycle][1] in the *Amazon
    # EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html
    #
    # @option params [required, String] :lifecycle_hook_name
    #   The name of the lifecycle hook.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :lifecycle_action_token
    #   A token that uniquely identifies a specific lifecycle action
    #   associated with an instance. Amazon EC2 Auto Scaling sends this token
    #   to the notification target you specified when you created the
    #   lifecycle hook.
    #
    # @option params [String] :instance_id
    #   The ID of the instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To record a lifecycle action heartbeat
    #
    #   # This example records a lifecycle action heartbeat to keep the instance in a pending state.
    #
    #   resp = client.record_lifecycle_action_heartbeat({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     lifecycle_action_token: "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635", 
    #     lifecycle_hook_name: "my-lifecycle-hook", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.record_lifecycle_action_heartbeat({
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "ResourceName", # required
    #     lifecycle_action_token: "LifecycleActionToken",
    #     instance_id: "XmlStringMaxLen19",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RecordLifecycleActionHeartbeat AWS API Documentation
    #
    # @overload record_lifecycle_action_heartbeat(params = {})
    # @param [Hash] params ({})
    def record_lifecycle_action_heartbeat(params = {}, options = {})
      req = build_request(:record_lifecycle_action_heartbeat, params)
      req.send_request(options)
    end

    # Resumes the specified suspended automatic scaling processes, or all
    # suspended process, for the specified Auto Scaling group.
    #
    # For more information, see [Suspending and Resuming Scaling
    # Processes][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :scaling_processes
    #   One or more of the following processes. If you omit this parameter,
    #   all processes are specified.
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `HealthCheck`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `AZRebalance`
    #
    #   * `AlarmNotification`
    #
    #   * `ScheduledActions`
    #
    #   * `AddToLoadBalancer`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To resume Auto Scaling processes
    #
    #   # This example resumes the specified suspended scaling process for the specified Auto Scaling group.
    #
    #   resp = client.resume_processes({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     scaling_processes: [
    #       "AlarmNotification", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_processes({
    #     auto_scaling_group_name: "ResourceName", # required
    #     scaling_processes: ["XmlStringMaxLen255"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ResumeProcesses AWS API Documentation
    #
    # @overload resume_processes(params = {})
    # @param [Hash] params ({})
    def resume_processes(params = {}, options = {})
      req = build_request(:resume_processes, params)
      req.send_request(options)
    end

    # Sets the size of the specified Auto Scaling group.
    #
    # For more information about desired capacity, see [What Is Amazon EC2
    # Auto Scaling?][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/WhatIsAutoScaling.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Integer] :desired_capacity
    #   The number of EC2 instances that should be running in the Auto Scaling
    #   group.
    #
    # @option params [Boolean] :honor_cooldown
    #   Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
    #   period to complete before initiating a scaling activity to set your
    #   Auto Scaling group to its new capacity. By default, Amazon EC2 Auto
    #   Scaling does not honor the cooldown period during manual scaling
    #   activities.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To set the desired capacity for an Auto Scaling group
    #
    #   # This example sets the desired capacity for the specified Auto Scaling group.
    #
    #   resp = client.set_desired_capacity({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     desired_capacity: 2, 
    #     honor_cooldown: true, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_desired_capacity({
    #     auto_scaling_group_name: "ResourceName", # required
    #     desired_capacity: 1, # required
    #     honor_cooldown: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetDesiredCapacity AWS API Documentation
    #
    # @overload set_desired_capacity(params = {})
    # @param [Hash] params ({})
    def set_desired_capacity(params = {}, options = {})
      req = build_request(:set_desired_capacity, params)
      req.send_request(options)
    end

    # Sets the health status of the specified instance.
    #
    # For more information, see [Health Checks][1] in the *Amazon EC2 Auto
    # Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, String] :health_status
    #   The health status of the instance. Set to `Healthy` if you want the
    #   instance to remain in service. Set to `Unhealthy` if you want the
    #   instance to be out of service. Amazon EC2 Auto Scaling will terminate
    #   and replace the unhealthy instance.
    #
    # @option params [Boolean] :should_respect_grace_period
    #   If the Auto Scaling group of the specified instance has a
    #   `HealthCheckGracePeriod` specified for the group, by default, this
    #   call will respect the grace period. Set this to `False`, if you do not
    #   want the call to respect the grace period associated with the group.
    #
    #   For more information, see the description of the health check grace
    #   period for CreateAutoScalingGroup.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To set the health status of an instance
    #
    #   # This example sets the health status of the specified instance to Unhealthy.
    #
    #   resp = client.set_instance_health({
    #     health_status: "Unhealthy", 
    #     instance_id: "i-93633f9b", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_instance_health({
    #     instance_id: "XmlStringMaxLen19", # required
    #     health_status: "XmlStringMaxLen32", # required
    #     should_respect_grace_period: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceHealth AWS API Documentation
    #
    # @overload set_instance_health(params = {})
    # @param [Hash] params ({})
    def set_instance_health(params = {}, options = {})
      req = build_request(:set_instance_health, params)
      req.send_request(options)
    end

    # Updates the instance protection settings of the specified instances.
    #
    # For more information, see [Instance Protection][1] in the *Amazon EC2
    # Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection
    #
    # @option params [required, Array<String>] :instance_ids
    #   One or more instance IDs.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Boolean] :protected_from_scale_in
    #   Indicates whether the instance is protected from termination by Amazon
    #   EC2 Auto Scaling when scaling in.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable instance protection for an instance
    #
    #   # This example enables instance protection for the specified instance.
    #
    #   resp = client.set_instance_protection({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #     protected_from_scale_in: true, 
    #   })
    #
    # @example Example: To disable instance protection for an instance
    #
    #   # This example disables instance protection for the specified instance.
    #
    #   resp = client.set_instance_protection({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #     protected_from_scale_in: false, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_instance_protection({
    #     instance_ids: ["XmlStringMaxLen19"], # required
    #     auto_scaling_group_name: "ResourceName", # required
    #     protected_from_scale_in: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceProtection AWS API Documentation
    #
    # @overload set_instance_protection(params = {})
    # @param [Hash] params ({})
    def set_instance_protection(params = {}, options = {})
      req = build_request(:set_instance_protection, params)
      req.send_request(options)
    end

    # Suspends the specified automatic scaling processes, or all processes,
    # for the specified Auto Scaling group.
    #
    # Note that if you suspend either the `Launch` or `Terminate` process
    # types, it can prevent other process types from functioning properly.
    #
    # To resume processes that have been suspended, use ResumeProcesses.
    #
    # For more information, see [Suspending and Resuming Scaling
    # Processes][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :scaling_processes
    #   One or more of the following processes. If you omit this parameter,
    #   all processes are specified.
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `HealthCheck`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `AZRebalance`
    #
    #   * `AlarmNotification`
    #
    #   * `ScheduledActions`
    #
    #   * `AddToLoadBalancer`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To suspend Auto Scaling processes
    #
    #   # This example suspends the specified scaling process for the specified Auto Scaling group.
    #
    #   resp = client.suspend_processes({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     scaling_processes: [
    #       "AlarmNotification", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_processes({
    #     auto_scaling_group_name: "ResourceName", # required
    #     scaling_processes: ["XmlStringMaxLen255"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SuspendProcesses AWS API Documentation
    #
    # @overload suspend_processes(params = {})
    # @param [Hash] params ({})
    def suspend_processes(params = {}, options = {})
      req = build_request(:suspend_processes, params)
      req.send_request(options)
    end

    # Terminates the specified instance and optionally adjusts the desired
    # group size.
    #
    # This call simply makes a termination request. The instance is not
    # terminated immediately.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether terminating the instance also decrements the size of
    #   the Auto Scaling group.
    #
    # @return [Types::ActivityType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivityType#activity #activity} => Types::Activity
    #
    #
    # @example Example: To terminate an instance in an Auto Scaling group
    #
    #   # This example terminates the specified instance from the specified Auto Scaling group without updating the size of the
    #   # group. Auto Scaling launches a replacement instance after the specified instance terminates.
    #
    #   resp = client.terminate_instance_in_auto_scaling_group({
    #     instance_id: "i-93633f9b", 
    #     should_decrement_desired_capacity: false, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_instance_in_auto_scaling_group({
    #     instance_id: "XmlStringMaxLen19", # required
    #     should_decrement_desired_capacity: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activity.activity_id #=> String
    #   resp.activity.auto_scaling_group_name #=> String
    #   resp.activity.description #=> String
    #   resp.activity.cause #=> String
    #   resp.activity.start_time #=> Time
    #   resp.activity.end_time #=> Time
    #   resp.activity.status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"
    #   resp.activity.status_message #=> String
    #   resp.activity.progress #=> Integer
    #   resp.activity.details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TerminateInstanceInAutoScalingGroup AWS API Documentation
    #
    # @overload terminate_instance_in_auto_scaling_group(params = {})
    # @param [Hash] params ({})
    def terminate_instance_in_auto_scaling_group(params = {}, options = {})
      req = build_request(:terminate_instance_in_auto_scaling_group, params)
      req.send_request(options)
    end

    # Updates the configuration for the specified Auto Scaling group.
    #
    # The new settings take effect on any scaling activities after this call
    # returns. Scaling activities that are currently in progress aren't
    # affected.
    #
    # To update an Auto Scaling group with a launch configuration with
    # `InstanceMonitoring` set to `false`, you must first disable the
    # collection of group metrics. Otherwise, you will get an error. If you
    # have previously enabled the collection of group metrics, you can
    # disable it using DisableMetricsCollection.
    #
    # Note the following:
    #
    # * If you specify a new value for `MinSize` without specifying a value
    #   for `DesiredCapacity`, and the new `MinSize` is larger than the
    #   current size of the group, we implicitly call SetDesiredCapacity to
    #   set the size of the group to the new value of `MinSize`.
    #
    # * If you specify a new value for `MaxSize` without specifying a value
    #   for `DesiredCapacity`, and the new `MaxSize` is smaller than the
    #   current size of the group, we implicitly call SetDesiredCapacity to
    #   set the size of the group to the new value of `MaxSize`.
    #
    # * All other optional parameters are left unchanged if not specified.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :launch_configuration_name
    #   The name of the launch configuration. If you specify a launch
    #   configuration, you can't specify a launch template.
    #
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   The launch template to use to specify the updates. If you specify a
    #   launch template, you can't specify a launch configuration.
    #
    # @option params [Integer] :min_size
    #   The minimum size of the Auto Scaling group.
    #
    # @option params [Integer] :max_size
    #   The maximum size of the Auto Scaling group.
    #
    # @option params [Integer] :desired_capacity
    #   The number of EC2 instances that should be running in the Auto Scaling
    #   group. This number must be greater than or equal to the minimum size
    #   of the group and less than or equal to the maximum size of the group.
    #
    # @option params [Integer] :default_cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before another scaling activity can start. The default is 300.
    #
    #   For more information, see [Scaling Cooldowns][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #
    # @option params [Array<String>] :availability_zones
    #   One or more Availability Zones for the group.
    #
    # @option params [String] :health_check_type
    #   The service to use for the health checks. The valid values are `EC2`
    #   and `ELB`.
    #
    # @option params [Integer] :health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service. The default is 0.
    #
    #   For more information, see [Health Checks][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #
    # @option params [String] :placement_group
    #   The name of the placement group into which you'll launch your
    #   instances, if any. For more information, see [Placement Groups][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #
    # @option params [String] :vpc_zone_identifier
    #   The ID of the subnet, if you are launching into a VPC. You can specify
    #   several subnets in a comma-separated list.
    #
    #   When you specify `VPCZoneIdentifier` with `AvailabilityZones`, ensure
    #   that the subnets' Availability Zones match the values you specify for
    #   `AvailabilityZones`.
    #
    #   For more information, see [Launching Auto Scaling Instances in a
    #   VPC][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    #
    # @option params [Array<String>] :termination_policies
    #   A standalone termination policy or a list of termination policies used
    #   to select the instance to terminate. The policies are executed in the
    #   order that they are listed.
    #
    #   For more information, see [Controlling Which Instances Auto Scaling
    #   Terminates During Scale In][1] in the *Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html
    #
    # @option params [Boolean] :new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Auto Scaling when scaling in.
    #
    # @option params [String] :service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other AWS services on your behalf.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update the launch configuration
    #
    #   # This example updates the launch configuration of the specified Auto Scaling group.
    #
    #   resp = client.update_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     launch_configuration_name: "new-launch-config", 
    #   })
    #
    # @example Example: To update the minimum and maximum size
    #
    #   # This example updates the minimum size and maximum size of the specified Auto Scaling group.
    #
    #   resp = client.update_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     max_size: 3, 
    #     min_size: 1, 
    #   })
    #
    # @example Example: To enable instance protection
    #
    #   # This example enables instance protection for the specified Auto Scaling group.
    #
    #   resp = client.update_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     new_instances_protected_from_scale_in: true, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_auto_scaling_group({
    #     auto_scaling_group_name: "ResourceName", # required
    #     launch_configuration_name: "ResourceName",
    #     launch_template: {
    #       launch_template_id: "XmlStringMaxLen255",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "XmlStringMaxLen255",
    #     },
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: ["XmlStringMaxLen255"],
    #     health_check_type: "XmlStringMaxLen32",
    #     health_check_grace_period: 1,
    #     placement_group: "XmlStringMaxLen255",
    #     vpc_zone_identifier: "XmlStringMaxLen2047",
    #     termination_policies: ["XmlStringMaxLen1600"],
    #     new_instances_protected_from_scale_in: false,
    #     service_linked_role_arn: "ResourceName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/UpdateAutoScalingGroup AWS API Documentation
    #
    # @overload update_auto_scaling_group(params = {})
    # @param [Hash] params ({})
    def update_auto_scaling_group(params = {}, options = {})
      req = build_request(:update_auto_scaling_group, params)
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
      context[:gem_name] = 'aws-sdk-autoscaling'
      context[:gem_version] = '1.9.0'
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
    # | waiter_name      | params                          | :delay   | :max_attempts |
    # | ---------------- | ------------------------------- | -------- | ------------- |
    # | group_exists     | {#describe_auto_scaling_groups} | 5        | 10            |
    # | group_in_service | {#describe_auto_scaling_groups} | 15       | 40            |
    # | group_not_exists | {#describe_auto_scaling_groups} | 15       | 40            |
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
        group_exists: Waiters::GroupExists,
        group_in_service: Waiters::GroupInService,
        group_not_exists: Waiters::GroupNotExists
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
