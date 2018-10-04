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

Aws::Plugins::GlobalConfiguration.add_identifier(:shield)

module Aws::Shield
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :shield

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

    # Authorizes the DDoS Response team (DRT) to access the specified Amazon
    # S3 bucket containing your flow logs. You can associate up to 10 Amazon
    # S3 buckets with your subscription.
    #
    # To use the services of the DRT and make an `AssociateDRTLogBucket`
    # request, you must be subscribed to the [Business Support plan][1] or
    # the [Enterprise Support plan][2].
    #
    #
    #
    # [1]: https://aws.amazon.com/premiumsupport/business-support/
    # [2]: https://aws.amazon.com/premiumsupport/enterprise-support/
    #
    # @option params [required, String] :log_bucket
    #   The Amazon S3 bucket that contains your flow logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_drt_log_bucket({
    #     log_bucket: "LogBucket", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTLogBucket AWS API Documentation
    #
    # @overload associate_drt_log_bucket(params = {})
    # @param [Hash] params ({})
    def associate_drt_log_bucket(params = {}, options = {})
      req = build_request(:associate_drt_log_bucket, params)
      req.send_request(options)
    end

    # Authorizes the DDoS Response team (DRT), using the specified role, to
    # access your AWS account to assist with DDoS attack mitigation during
    # potential attacks. This enables the DRT to inspect your AWS WAF
    # configuration and create or update AWS WAF rules and web ACLs.
    #
    # You can associate only one `RoleArn` with your subscription. If you
    # submit an `AssociateDRTRole` request for an account that already has
    # an associated role, the new `RoleArn` will replace the existing
    # `RoleArn`.
    #
    # Prior to making the `AssociateDRTRole` request, you must attach the
    # [AWSShieldDRTAccessPolicy][1] managed policy to the role you will
    # specify in the request. For more information see [Attaching and
    # Detaching IAM Policies](
    # https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
    # The role must also trust the service principal `
    # drt.shield.amazonaws.com`. For more information, see [IAM JSON Policy
    # Elements: Principal][2].
    #
    # The DRT will have access only to your AWS WAF and Shield resources. By
    # submitting this request, you authorize the DRT to inspect your AWS WAF
    # and Shield configuration and create and update AWS WAF rules and web
    # ACLs on your behalf. The DRT takes these actions only if explicitly
    # authorized by you.
    #
    # You must have the `iam:PassRole` permission to make an
    # `AssociateDRTRole` request. For more information, see [Granting a User
    # Permissions to Pass a Role to an AWS Service][3].
    #
    # To use the services of the DRT and make an `AssociateDRTRole` request,
    # you must be subscribed to the [Business Support plan][4] or the
    # [Enterprise Support plan][5].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html
    # [4]: https://aws.amazon.com/premiumsupport/business-support/
    # [5]: https://aws.amazon.com/premiumsupport/enterprise-support/
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the role the DRT will use to access
    #   your AWS account.
    #
    #   Prior to making the `AssociateDRTRole` request, you must attach the
    #   [AWSShieldDRTAccessPolicy][1] managed policy to this role. For more
    #   information see [Attaching and Detaching IAM Policies](
    #   https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_drt_role({
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTRole AWS API Documentation
    #
    # @overload associate_drt_role(params = {})
    # @param [Hash] params ({})
    def associate_drt_role(params = {}, options = {})
      req = build_request(:associate_drt_role, params)
      req.send_request(options)
    end

    # Enables AWS Shield Advanced for a specific AWS resource. The resource
    # can be an Amazon CloudFront distribution, Elastic Load Balancing load
    # balancer, Elastic IP Address, or an Amazon Route 53 hosted zone.
    #
    # You can add protection to only a single resource with each
    # CreateProtection request. If you want to add protection to multiple
    # resources at once, use the [AWS WAF console][1]. For more information
    # see [Getting Started with AWS Shield Advanced][2] and [Add AWS Shield
    # Advanced Protection to more AWS Resources][3].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/waf/
    # [2]: https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html
    # [3]: https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html
    #
    # @option params [required, String] :name
    #   Friendly name for the `Protection` you are creating.
    #
    # @option params [required, String] :resource_arn
    #   The ARN (Amazon Resource Name) of the resource to be protected.
    #
    #   The ARN should be in one of the following formats:
    #
    #   * For an Application Load Balancer:
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an Elastic Load Balancer (Classic Load Balancer):
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/load-balancer-name
    #     `
    #
    #   * For AWS CloudFront distribution:
    #     `arn:aws:cloudfront::account-id:distribution/distribution-id `
    #
    #   * For Amazon Route 53:
    #     `arn:aws:route53::account-id:hostedzone/hosted-zone-id `
    #
    #   * For an Elastic IP address:
    #     `arn:aws:ec2:region:account-id:eip-allocation/allocation-id `
    #
    # @return [Types::CreateProtectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProtectionResponse#protection_id #protection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_protection({
    #     name: "ProtectionName", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.protection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtection AWS API Documentation
    #
    # @overload create_protection(params = {})
    # @param [Hash] params ({})
    def create_protection(params = {}, options = {})
      req = build_request(:create_protection, params)
      req.send_request(options)
    end

    # Activates AWS Shield Advanced for an account.
    #
    # As part of this request you can specify `EmergencySettings` that
    # automaticaly grant the DDoS response team (DRT) needed permissions to
    # assist you during a suspected DDoS attack. For more information see
    # [Authorize the DDoS Response Team to Create Rules and Web ACLs on Your
    # Behalf][1].
    #
    # When you initally create a subscription, your subscription is set to
    # be automatically renewed at the end of the existing subscription
    # period. You can change this by submitting an `UpdateSubscription`
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/authorize-DRT.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateSubscription AWS API Documentation
    #
    # @overload create_subscription(params = {})
    # @param [Hash] params ({})
    def create_subscription(params = {}, options = {})
      req = build_request(:create_subscription, params)
      req.send_request(options)
    end

    # Deletes an AWS Shield Advanced Protection.
    #
    # @option params [required, String] :protection_id
    #   The unique identifier (ID) for the Protection object to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_protection({
    #     protection_id: "ProtectionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtection AWS API Documentation
    #
    # @overload delete_protection(params = {})
    # @param [Hash] params ({})
    def delete_protection(params = {}, options = {})
      req = build_request(:delete_protection, params)
      req.send_request(options)
    end

    # Removes AWS Shield Advanced from an account. AWS Shield Advanced
    # requires a 1-year subscription commitment. You cannot delete a
    # subscription prior to the completion of that commitment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteSubscription AWS API Documentation
    #
    # @overload delete_subscription(params = {})
    # @param [Hash] params ({})
    def delete_subscription(params = {}, options = {})
      req = build_request(:delete_subscription, params)
      req.send_request(options)
    end

    # Describes the details of a DDoS attack.
    #
    # @option params [required, String] :attack_id
    #   The unique identifier (ID) for the attack that to be described.
    #
    # @return [Types::DescribeAttackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAttackResponse#attack #attack} => Types::AttackDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_attack({
    #     attack_id: "AttackId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attack.attack_id #=> String
    #   resp.attack.resource_arn #=> String
    #   resp.attack.sub_resources #=> Array
    #   resp.attack.sub_resources[0].type #=> String, one of "IP", "URL"
    #   resp.attack.sub_resources[0].id #=> String
    #   resp.attack.sub_resources[0].attack_vectors #=> Array
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_type #=> String
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters #=> Array
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].name #=> String
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].max #=> Float
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].average #=> Float
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].sum #=> Float
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].n #=> Integer
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].unit #=> String
    #   resp.attack.sub_resources[0].counters #=> Array
    #   resp.attack.sub_resources[0].counters[0].name #=> String
    #   resp.attack.sub_resources[0].counters[0].max #=> Float
    #   resp.attack.sub_resources[0].counters[0].average #=> Float
    #   resp.attack.sub_resources[0].counters[0].sum #=> Float
    #   resp.attack.sub_resources[0].counters[0].n #=> Integer
    #   resp.attack.sub_resources[0].counters[0].unit #=> String
    #   resp.attack.start_time #=> Time
    #   resp.attack.end_time #=> Time
    #   resp.attack.attack_counters #=> Array
    #   resp.attack.attack_counters[0].name #=> String
    #   resp.attack.attack_counters[0].max #=> Float
    #   resp.attack.attack_counters[0].average #=> Float
    #   resp.attack.attack_counters[0].sum #=> Float
    #   resp.attack.attack_counters[0].n #=> Integer
    #   resp.attack.attack_counters[0].unit #=> String
    #   resp.attack.attack_properties #=> Array
    #   resp.attack.attack_properties[0].attack_layer #=> String, one of "NETWORK", "APPLICATION"
    #   resp.attack.attack_properties[0].attack_property_identifier #=> String, one of "DESTINATION_URL", "REFERRER", "SOURCE_ASN", "SOURCE_COUNTRY", "SOURCE_IP_ADDRESS", "SOURCE_USER_AGENT"
    #   resp.attack.attack_properties[0].top_contributors #=> Array
    #   resp.attack.attack_properties[0].top_contributors[0].name #=> String
    #   resp.attack.attack_properties[0].top_contributors[0].value #=> Integer
    #   resp.attack.attack_properties[0].unit #=> String, one of "BITS", "BYTES", "PACKETS", "REQUESTS"
    #   resp.attack.attack_properties[0].total #=> Integer
    #   resp.attack.mitigations #=> Array
    #   resp.attack.mitigations[0].mitigation_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttack AWS API Documentation
    #
    # @overload describe_attack(params = {})
    # @param [Hash] params ({})
    def describe_attack(params = {}, options = {})
      req = build_request(:describe_attack, params)
      req.send_request(options)
    end

    # Returns the current role and list of Amazon S3 log buckets used by the
    # DDoS Response team (DRT) to access your AWS account while assisting
    # with attack mitigation.
    #
    # @return [Types::DescribeDRTAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDRTAccessResponse#role_arn #role_arn} => String
    #   * {Types::DescribeDRTAccessResponse#log_bucket_list #log_bucket_list} => Array&lt;String&gt;
    #
    # @example Response structure
    #
    #   resp.role_arn #=> String
    #   resp.log_bucket_list #=> Array
    #   resp.log_bucket_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeDRTAccess AWS API Documentation
    #
    # @overload describe_drt_access(params = {})
    # @param [Hash] params ({})
    def describe_drt_access(params = {}, options = {})
      req = build_request(:describe_drt_access, params)
      req.send_request(options)
    end

    # Lists the email addresses that the DRT can use to contact you during a
    # suspected attack.
    #
    # @return [Types::DescribeEmergencyContactSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEmergencyContactSettingsResponse#emergency_contact_list #emergency_contact_list} => Array&lt;Types::EmergencyContact&gt;
    #
    # @example Response structure
    #
    #   resp.emergency_contact_list #=> Array
    #   resp.emergency_contact_list[0].email_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeEmergencyContactSettings AWS API Documentation
    #
    # @overload describe_emergency_contact_settings(params = {})
    # @param [Hash] params ({})
    def describe_emergency_contact_settings(params = {}, options = {})
      req = build_request(:describe_emergency_contact_settings, params)
      req.send_request(options)
    end

    # Lists the details of a Protection object.
    #
    # @option params [required, String] :protection_id
    #   The unique identifier (ID) for the Protection object that is
    #   described.
    #
    # @return [Types::DescribeProtectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProtectionResponse#protection #protection} => Types::Protection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_protection({
    #     protection_id: "ProtectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.protection.id #=> String
    #   resp.protection.name #=> String
    #   resp.protection.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtection AWS API Documentation
    #
    # @overload describe_protection(params = {})
    # @param [Hash] params ({})
    def describe_protection(params = {}, options = {})
      req = build_request(:describe_protection, params)
      req.send_request(options)
    end

    # Provides details about the AWS Shield Advanced subscription for an
    # account.
    #
    # @return [Types::DescribeSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubscriptionResponse#subscription #subscription} => Types::Subscription
    #
    # @example Response structure
    #
    #   resp.subscription.start_time #=> Time
    #   resp.subscription.end_time #=> Time
    #   resp.subscription.time_commitment_in_seconds #=> Integer
    #   resp.subscription.auto_renew #=> String, one of "ENABLED", "DISABLED"
    #   resp.subscription.limits #=> Array
    #   resp.subscription.limits[0].type #=> String
    #   resp.subscription.limits[0].max #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscription AWS API Documentation
    #
    # @overload describe_subscription(params = {})
    # @param [Hash] params ({})
    def describe_subscription(params = {}, options = {})
      req = build_request(:describe_subscription, params)
      req.send_request(options)
    end

    # Removes the DDoS Response team's (DRT) access to the specified Amazon
    # S3 bucket containing your flow logs.
    #
    # To make a `DisassociateDRTLogBucket` request, you must be subscribed
    # to the [Business Support plan][1] or the [Enterprise Support plan][2].
    # However, if you are not subscribed to one of these support plans, but
    # had been previously and had granted the DRT access to your account,
    # you can submit a `DisassociateDRTLogBucket` request to remove this
    # access.
    #
    #
    #
    # [1]: https://aws.amazon.com/premiumsupport/business-support/
    # [2]: https://aws.amazon.com/premiumsupport/enterprise-support/
    #
    # @option params [required, String] :log_bucket
    #   The Amazon S3 bucket that contains your flow logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_drt_log_bucket({
    #     log_bucket: "LogBucket", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTLogBucket AWS API Documentation
    #
    # @overload disassociate_drt_log_bucket(params = {})
    # @param [Hash] params ({})
    def disassociate_drt_log_bucket(params = {}, options = {})
      req = build_request(:disassociate_drt_log_bucket, params)
      req.send_request(options)
    end

    # Removes the DDoS Response team's (DRT) access to your AWS account.
    #
    # To make a `DisassociateDRTRole` request, you must be subscribed to the
    # [Business Support plan][1] or the [Enterprise Support plan][2].
    # However, if you are not subscribed to one of these support plans, but
    # had been previously and had granted the DRT access to your account,
    # you can submit a `DisassociateDRTRole` request to remove this access.
    #
    #
    #
    # [1]: https://aws.amazon.com/premiumsupport/business-support/
    # [2]: https://aws.amazon.com/premiumsupport/enterprise-support/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTRole AWS API Documentation
    #
    # @overload disassociate_drt_role(params = {})
    # @param [Hash] params ({})
    def disassociate_drt_role(params = {}, options = {})
      req = build_request(:disassociate_drt_role, params)
      req.send_request(options)
    end

    # Returns the `SubscriptionState`, either `Active` or `Inactive`.
    #
    # @return [Types::GetSubscriptionStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionStateResponse#subscription_state #subscription_state} => String
    #
    # @example Response structure
    #
    #   resp.subscription_state #=> String, one of "ACTIVE", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/GetSubscriptionState AWS API Documentation
    #
    # @overload get_subscription_state(params = {})
    # @param [Hash] params ({})
    def get_subscription_state(params = {}, options = {})
      req = build_request(:get_subscription_state, params)
      req.send_request(options)
    end

    # Returns all ongoing DDoS attacks or all DDoS attacks during a
    # specified time period.
    #
    # @option params [Array<String>] :resource_arns
    #   The ARN (Amazon Resource Name) of the resource that was attacked. If
    #   this is left blank, all applicable resources for this account will be
    #   included.
    #
    # @option params [Types::TimeRange] :start_time
    #   The start of the time period for the attacks. This is a `timestamp`
    #   type. The sample request above indicates a `number` type because the
    #   default used by WAF is Unix time in seconds. However any valid
    #   [timestamp format][1] is allowed.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #
    # @option params [Types::TimeRange] :end_time
    #   The end of the time period for the attacks. This is a `timestamp`
    #   type. The sample request above indicates a `number` type because the
    #   default used by WAF is Unix time in seconds. However any valid
    #   [timestamp format][1] is allowed.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #
    # @option params [String] :next_token
    #   The `ListAttacksRequest.NextMarker` value from a previous call to
    #   `ListAttacksRequest`. Pass null if this is the first call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of AttackSummary objects to be returned. If this is
    #   left blank, the first 20 results will be returned.
    #
    # @return [Types::ListAttacksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttacksResponse#attack_summaries #attack_summaries} => Array&lt;Types::AttackSummary&gt;
    #   * {Types::ListAttacksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attacks({
    #     resource_arns: ["ResourceArn"],
    #     start_time: {
    #       from_inclusive: Time.now,
    #       to_exclusive: Time.now,
    #     },
    #     end_time: {
    #       from_inclusive: Time.now,
    #       to_exclusive: Time.now,
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attack_summaries #=> Array
    #   resp.attack_summaries[0].attack_id #=> String
    #   resp.attack_summaries[0].resource_arn #=> String
    #   resp.attack_summaries[0].start_time #=> Time
    #   resp.attack_summaries[0].end_time #=> Time
    #   resp.attack_summaries[0].attack_vectors #=> Array
    #   resp.attack_summaries[0].attack_vectors[0].vector_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListAttacks AWS API Documentation
    #
    # @overload list_attacks(params = {})
    # @param [Hash] params ({})
    def list_attacks(params = {}, options = {})
      req = build_request(:list_attacks, params)
      req.send_request(options)
    end

    # Lists all Protection objects for the account.
    #
    # @option params [String] :next_token
    #   The `ListProtectionsRequest.NextToken` value from a previous call to
    #   `ListProtections`. Pass null if this is the first call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Protection objects to be returned. If this is
    #   left blank the first 20 results will be returned.
    #
    # @return [Types::ListProtectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProtectionsResponse#protections #protections} => Array&lt;Types::Protection&gt;
    #   * {Types::ListProtectionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protections({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.protections #=> Array
    #   resp.protections[0].id #=> String
    #   resp.protections[0].name #=> String
    #   resp.protections[0].resource_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtections AWS API Documentation
    #
    # @overload list_protections(params = {})
    # @param [Hash] params ({})
    def list_protections(params = {}, options = {})
      req = build_request(:list_protections, params)
      req.send_request(options)
    end

    # Updates the details of the list of email addresses that the DRT can
    # use to contact you during a suspected attack.
    #
    # @option params [Array<Types::EmergencyContact>] :emergency_contact_list
    #   A list of email addresses that the DRT can use to contact you during a
    #   suspected attack.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_emergency_contact_settings({
    #     emergency_contact_list: [
    #       {
    #         email_address: "EmailAddress", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateEmergencyContactSettings AWS API Documentation
    #
    # @overload update_emergency_contact_settings(params = {})
    # @param [Hash] params ({})
    def update_emergency_contact_settings(params = {}, options = {})
      req = build_request(:update_emergency_contact_settings, params)
      req.send_request(options)
    end

    # Updates the details of an existing subscription. Only enter values for
    # parameters you want to change. Empty parameters are not updated.
    #
    # @option params [String] :auto_renew
    #   When you initally create a subscription, `AutoRenew` is set to
    #   `ENABLED`. If `ENABLED`, the subscription will be automatically
    #   renewed at the end of the existing subscription period. You can change
    #   this by submitting an `UpdateSubscription` request. If the
    #   `UpdateSubscription` request does not included a value for
    #   `AutoRenew`, the existing value for `AutoRenew` remains unchanged.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription({
    #     auto_renew: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateSubscription AWS API Documentation
    #
    # @overload update_subscription(params = {})
    # @param [Hash] params ({})
    def update_subscription(params = {}, options = {})
      req = build_request(:update_subscription, params)
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
      context[:gem_name] = 'aws-sdk-shield'
      context[:gem_version] = '1.5.0'
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
