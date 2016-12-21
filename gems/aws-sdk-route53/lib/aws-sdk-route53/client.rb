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
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_xml.rb'
require 'aws-sdk-route53/plugins/id_fix.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53)

module Aws::Route53
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :route53

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestXml)
    add_plugin(Aws::Route53::Plugins::IdFix)

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

    # Associates an Amazon VPC with a private hosted zone.
    #
    # To perform the association, the VPC and the private hosted zone must
    # already exist. You can't convert a public hosted zone into a private
    # hosted zone.
    #
    # Send a `POST` request to the `/2013-04-01/hostedzone/hosted zone
    # ID/associatevpc` resource. The request body must include a document
    # with an `AssociateVPCWithHostedZoneRequest` element. The response
    # contains a `ChangeInfo` data type that you can use to track the
    # progress of the request.
    #
    # <note markdown="1"> If you want to associate a VPC that was created by using one AWS
    # account with a private hosted zone that was created by using a
    # different account, the AWS account that created the private hosted
    # zone must first submit a `CreateVPCAssociationAuthorization` request.
    # Then the account that created the VPC must submit an
    # `AssociateVPCWithHostedZone` request.
    #
    #  </note>
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the private hosted zone that you want to associate an Amazon
    #   VPC with.
    #
    #   Note that you can't associate a VPC with a hosted zone that doesn't
    #   have an existing VPC association.
    #
    # @option params [required, Types::VPC] :vpc
    #   A complex type that contains information about the VPC that you want
    #   to associate with a private hosted zone.
    #
    # @option params [String] :comment
    #   *Optional:* A comment about the association request.
    #
    # @return [Types::AssociateVPCWithHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateVPCWithHostedZoneResponse#change_info #change_info} => Types::ChangeInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_vpc_with_hosted_zone({
    #     hosted_zone_id: "ResourceId", # required
    #     vpc: { # required
    #       vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #       vpc_id: "VPCId",
    #     },
    #     comment: "AssociateVPCComment",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_info.id #=> String
    #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
    #   resp.change_info.submitted_at #=> Time
    #   resp.change_info.comment #=> String
    #
    # @overload associate_vpc_with_hosted_zone(params = {})
    # @param [Hash] params ({})
    def associate_vpc_with_hosted_zone(params = {}, options = {})
      req = build_request(:associate_vpc_with_hosted_zone, params)
      req.send_request(options)
    end

    # Create, change, update, or delete authoritative DNS information on all
    # Amazon Route 53 servers. Send a `POST` request to:
    #
    # `/2013-04-01/hostedzone/Amazon Route 53 hosted Zone ID/rrset`
    # resource.
    #
    # The request body must include a document with a
    # `ChangeResourceRecordSetsRequest` element. The request body contains a
    # list of change items, known as a change batch. Change batches are
    # considered transactional changes. When using the Amazon Route 53 API
    # to change resource record sets, Amazon Route 53 either makes all or
    # none of the changes in a change batch request. This ensures that
    # Amazon Route 53 never partially implements the intended changes to the
    # resource record sets in a hosted zone.
    #
    # For example, a change batch request that deletes the `CNAME` record
    # for www.example.com and creates an alias resource record set for
    # www.example.com. Amazon Route 53 deletes the first resource record set
    # and creates the second resource record set in a single operation. If
    # either the `DELETE` or the `CREATE` action fails, then both changes
    # (plus any other changes in the batch) fail, and the original `CNAME`
    # record continues to exist.
    #
    # Due to the nature of transactional changes, you can't delete the same
    # resource record set more than once in a single change batch. If you
    # attempt to delete the same change batch more than once, Amazon Route
    # 53 returns an `InvalidChangeBatch` error.
    #
    # <note markdown="1"> To create resource record sets for complex routing configurations, use
    # either the traffic flow visual editor in the Amazon Route 53 console
    # or the API actions for traffic policies and traffic policy instances.
    # Save the configuration as a traffic policy, then associate the traffic
    # policy with one or more domain names (such as example.com) or
    # subdomain names (such as www.example.com), in the same hosted zone or
    # in multiple hosted zones. You can roll back the updates if the new
    # configuration isn't performing as expected. For more information, see
    # [Using Traffic Flow to Route DNS Traffic][1] in the *Amazon Route 53
    # Developer Guide*.
    #
    #  </note>
    #
    # Use `ChangeResourceRecordsSetsRequest` to perform the following
    # actions:
    #
    # * `CREATE`\: Creates a resource record set that has the specified
    #   values.
    #
    # * `DELETE`\: Deletes an existing resource record set that has the
    #   specified values.
    #
    # * `UPSERT`\: If a resource record set does not already exist, AWS
    #   creates it. If a resource set does exist, Amazon Route 53 updates it
    #   with the values in the request.
    #
    # The values that you need to include in the request depend on the type
    # of resource record set that you're creating, deleting, or updating:
    #
    # **Basic resource record sets (excluding alias, failover, geolocation,
    # latency, and weighted resource record sets)**
    #
    # * `Name`
    #
    # * `Type`
    #
    # * `TTL`
    #
    # **Failover, geolocation, latency, or weighted resource record sets
    # (excluding alias resource record sets)**
    #
    # * `Name`
    #
    # * `Type`
    #
    # * `TTL`
    #
    # * `SetIdentifier`
    #
    # **Alias resource record sets (including failover alias, geolocation
    # alias, latency alias, and weighted alias resource record sets)**
    #
    # * `Name`
    #
    # * `Type`
    #
    # * `AliasTarget` (includes `DNSName`, `EvaluateTargetHealth`, and
    #   `HostedZoneId`)
    #
    # * `SetIdentifier` (for failover, geolocation, latency, and weighted
    #   resource record sets)
    #
    # When you submit a `ChangeResourceRecordSets` request, Amazon Route 53
    # propagates your changes to all of the Amazon Route 53 authoritative
    # DNS servers. While your changes are propagating, `GetChange` returns a
    # status of `PENDING`. When propagation is complete, `GetChange` returns
    # a status of `INSYNC`. Changes generally propagate to all Amazon Route
    # 53 name servers in a few minutes. In rare circumstances, propagation
    # can take up to 30 minutes. For more information, see GetChange
    #
    # For information about the limits on a `ChangeResourceRecordSets`
    # request, see [Limits][2] in the *Amazon Route 53 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html
    # [2]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the hosted zone that contains the resource record sets that
    #   you want to change.
    #
    # @option params [required, Types::ChangeBatch] :change_batch
    #   A complex type that contains an optional comment and the `Changes`
    #   element.
    #
    # @return [Types::ChangeResourceRecordSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ChangeResourceRecordSetsResponse#change_info #change_info} => Types::ChangeInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_resource_record_sets({
    #     hosted_zone_id: "ResourceId", # required
    #     change_batch: { # required
    #       comment: "ResourceDescription",
    #       changes: [ # required
    #         {
    #           action: "CREATE", # required, accepts CREATE, DELETE, UPSERT
    #           resource_record_set: { # required
    #             name: "DNSName", # required
    #             type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #             set_identifier: "ResourceRecordSetIdentifier",
    #             weight: 1,
    #             region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1, ap-south-1
    #             geo_location: {
    #               continent_code: "GeoLocationContinentCode",
    #               country_code: "GeoLocationCountryCode",
    #               subdivision_code: "GeoLocationSubdivisionCode",
    #             },
    #             failover: "PRIMARY", # accepts PRIMARY, SECONDARY
    #             ttl: 1,
    #             resource_records: [
    #               {
    #                 value: "RData", # required
    #               },
    #             ],
    #             alias_target: {
    #               hosted_zone_id: "ResourceId", # required
    #               dns_name: "DNSName", # required
    #               evaluate_target_health: false, # required
    #             },
    #             health_check_id: "HealthCheckId",
    #             traffic_policy_instance_id: "TrafficPolicyInstanceId",
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.change_info.id #=> String
    #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
    #   resp.change_info.submitted_at #=> Time
    #   resp.change_info.comment #=> String
    #
    # @overload change_resource_record_sets(params = {})
    # @param [Hash] params ({})
    def change_resource_record_sets(params = {}, options = {})
      req = build_request(:change_resource_record_sets, params)
      req.send_request(options)
    end

    # Adds, edits, or deletes tags for a health check or a hosted zone.
    #
    # For information about using tags for cost allocation, see [Using Cost
    # Allocation Tags][1] in the *AWS Billing and Cost Management User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [required, String] :resource_type
    #   The type of the resource.
    #
    #   * The resource type for health checks is `healthcheck`.
    #
    #   * The resource type for hosted zones is `hostedzone`.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource for which you want to add, change, or delete
    #   tags.
    #
    # @option params [Array<Types::Tag>] :add_tags
    #   A complex type that contains a list of the tags that you want to add
    #   to the specified health check or hosted zone and/or the tags for which
    #   you want to edit the `Value` element.
    #
    #   You can add a maximum of 10 tags to a health check or a hosted zone.
    #
    # @option params [Array<String>] :remove_tag_keys
    #   A complex type that contains a list of the tags that you want to
    #   delete from the specified health check or hosted zone. You can specify
    #   up to 10 keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_tags_for_resource({
    #     resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
    #     resource_id: "TagResourceId", # required
    #     add_tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     remove_tag_keys: ["TagKey"],
    #   })
    #
    # @overload change_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def change_tags_for_resource(params = {}, options = {})
      req = build_request(:change_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates a new health check.
    #
    # To create a new health check, send a `POST` request to the
    # `/2013-04-01/healthcheck` resource. The request body must include a
    # document with a `CreateHealthCheckRequest` element. The response
    # returns the `CreateHealthCheckResponse` element, containing the health
    # check ID specified when adding health check to a resource record set.
    # For information about adding health checks to resource record sets,
    # see ResourceRecordSet$HealthCheckId in ChangeResourceRecordSets.
    #
    # If you are registering EC2 instances with an Elastic Load Balancing
    # (ELB) load balancer, do not create Amazon Route 53 health checks for
    # the EC2 instances. When you register an EC2 instance with a load
    # balancer, you configure settings for an ELB health check, which
    # performs a similar function to an Amazon Route 53 health check.
    #
    # You can associate health checks with failover resource record sets in
    # a private hosted zone. Note the following:
    #
    # * Amazon Route 53 health checkers are outside the VPC. To check the
    #   health of an endpoint within a VPC by IP address, you must assign a
    #   public IP address to the instance in the VPC.
    #
    # * You can configure a health checker to check the health of an
    #   external resource that the instance relies on, such as a database
    #   server.
    #
    # * You can create a CloudWatch metric, associate an alarm with the
    #   metric, and then create a health check that is based on the state of
    #   the alarm. For example, you might create a CloudWatch metric that
    #   checks the status of the Amazon EC2 `StatusCheckFailed` metric, add
    #   an alarm to the metric, and then create a health check that is based
    #   on the state of the alarm. For information about creating CloudWatch
    #   metrics and alarms by using the CloudWatch console, see the [Amazon
    #   CloudWatch User Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html
    #
    # @option params [required, String] :caller_reference
    #   A unique string that identifies the request and that allows failed
    #   `CreateHealthCheck` requests to be retried without the risk of
    #   executing the operation twice. You must use a unique `CallerReference`
    #   string every time you create a health check.
    #
    # @option params [required, Types::HealthCheckConfig] :health_check_config
    #   A complex type that contains the response to a `CreateHealthCheck`
    #   request.
    #
    # @return [Types::CreateHealthCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHealthCheckResponse#health_check #health_check} => Types::HealthCheck
    #   * {Types::CreateHealthCheckResponse#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_health_check({
    #     caller_reference: "HealthCheckNonce", # required
    #     health_check_config: { # required
    #       ip_address: "IPAddress",
    #       port: 1,
    #       type: "HTTP", # required, accepts HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC
    #       resource_path: "ResourcePath",
    #       fully_qualified_domain_name: "FullyQualifiedDomainName",
    #       search_string: "SearchString",
    #       request_interval: 1,
    #       failure_threshold: 1,
    #       measure_latency: false,
    #       inverted: false,
    #       health_threshold: 1,
    #       child_health_checks: ["HealthCheckId"],
    #       enable_sni: false,
    #       regions: ["us-east-1"], # accepts us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1
    #       alarm_identifier: {
    #         region: "us-east-1", # required, accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
    #         name: "AlarmName", # required
    #       },
    #       insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.health_check.id #=> String
    #   resp.health_check.caller_reference #=> String
    #   resp.health_check.health_check_config.ip_address #=> String
    #   resp.health_check.health_check_config.port #=> Integer
    #   resp.health_check.health_check_config.type #=> String, one of "HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC"
    #   resp.health_check.health_check_config.resource_path #=> String
    #   resp.health_check.health_check_config.fully_qualified_domain_name #=> String
    #   resp.health_check.health_check_config.search_string #=> String
    #   resp.health_check.health_check_config.request_interval #=> Integer
    #   resp.health_check.health_check_config.failure_threshold #=> Integer
    #   resp.health_check.health_check_config.measure_latency #=> Boolean
    #   resp.health_check.health_check_config.inverted #=> Boolean
    #   resp.health_check.health_check_config.health_threshold #=> Integer
    #   resp.health_check.health_check_config.child_health_checks #=> Array
    #   resp.health_check.health_check_config.child_health_checks[0] #=> String
    #   resp.health_check.health_check_config.enable_sni #=> Boolean
    #   resp.health_check.health_check_config.regions #=> Array
    #   resp.health_check.health_check_config.regions[0] #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"
    #   resp.health_check.health_check_config.alarm_identifier.region #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1"
    #   resp.health_check.health_check_config.alarm_identifier.name #=> String
    #   resp.health_check.health_check_config.insufficient_data_health_status #=> String, one of "Healthy", "Unhealthy", "LastKnownStatus"
    #   resp.health_check.health_check_version #=> Integer
    #   resp.health_check.cloud_watch_alarm_configuration.evaluation_periods #=> Integer
    #   resp.health_check.cloud_watch_alarm_configuration.threshold #=> Float
    #   resp.health_check.cloud_watch_alarm_configuration.comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
    #   resp.health_check.cloud_watch_alarm_configuration.period #=> Integer
    #   resp.health_check.cloud_watch_alarm_configuration.metric_name #=> String
    #   resp.health_check.cloud_watch_alarm_configuration.namespace #=> String
    #   resp.health_check.cloud_watch_alarm_configuration.statistic #=> String, one of "Average", "Sum", "SampleCount", "Maximum", "Minimum"
    #   resp.health_check.cloud_watch_alarm_configuration.dimensions #=> Array
    #   resp.health_check.cloud_watch_alarm_configuration.dimensions[0].name #=> String
    #   resp.health_check.cloud_watch_alarm_configuration.dimensions[0].value #=> String
    #   resp.location #=> String
    #
    # @overload create_health_check(params = {})
    # @param [Hash] params ({})
    def create_health_check(params = {}, options = {})
      req = build_request(:create_health_check, params)
      req.send_request(options)
    end

    # Creates a new public hosted zone, used to specify how the Domain Name
    # System (DNS) routes traffic on the Internet for a domain, such as
    # example.com, and its subdomains.
    #
    # Public hosted zones can't be converted to a private hosted zone or
    # vice versa. Instead, create a new hosted zone with the same name and
    # create new resource record sets.
    #
    # Send a `POST` request to the `/2013-04-01/hostedzone` resource. The
    # request body must include a document with a `CreateHostedZoneRequest`
    # element. The response returns the `CreateHostedZoneResponse` element
    # containing metadata about the hosted zone.
    #
    # Fore more information about charges for hosted zones, see [Amazon
    # Route 53 Pricing][1].
    #
    # Note the following:
    #
    # * You can't create a hosted zone for a top-level domain (TLD).
    #
    # * Amazon Route 53 automatically creates a default SOA record and four
    #   NS records for the zone. For more information about SOA and NS
    #   records, see [NS and SOA Records that Amazon Route 53 Creates for a
    #   Hosted Zone][2] in the *Amazon Route 53 Developer Guide*.
    #
    # * If your domain is registered with a registrar other than Amazon
    #   Route 53, you must update the name servers with your registrar to
    #   make Amazon Route 53 your DNS service. For more information, see
    #   [Configuring Amazon Route 53 as your DNS Service][3] in the *Amazon
    #   Route 53 Developer's Guide*.
    #
    # After creating a zone, its initial status is `PENDING`. This means
    # that it is not yet available on all DNS servers. The status of the
    # zone changes to `INSYNC` when the NS and SOA records are available on
    # all Amazon Route 53 DNS servers.
    #
    # When trying to create a hosted zone using a reusable delegation set,
    # specify an optional DelegationSetId, and Amazon Route 53 would assign
    # those 4 NS records for the zone, instead of allotting a new one.
    #
    #
    #
    # [1]: http://aws.amazon.com/route53/pricing/
    # [2]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html
    # [3]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/creating-migrating.html
    #
    # @option params [required, String] :name
    #   The name of the domain. For resource record types that include a
    #   domain name, specify a fully qualified domain name, for example,
    #   *www.example.com*. The trailing dot is optional; Amazon Route 53
    #   assumes that the domain name is fully qualified. This means that
    #   Amazon Route 53 treats *www.example.com* (without a trailing dot) and
    #   *www.example.com.* (with a trailing dot) as identical.
    #
    #   If you're creating a public hosted zone, this is the name you have
    #   registered with your DNS registrar. If your domain name is registered
    #   with a registrar other than Amazon Route 53, change the name servers
    #   for your domain to the set of `NameServers` that `CreateHostedZone`
    #   returns in the DelegationSet element.
    #
    # @option params [Types::VPC] :vpc
    #   The VPC that you want your hosted zone to be associated with. By
    #   providing this parameter, your newly created hosted can't be resolved
    #   anywhere other than the given VPC.
    #
    # @option params [required, String] :caller_reference
    #   A unique string that identifies the request and that allows failed
    #   `CreateHostedZone` requests to be retried without the risk of
    #   executing the operation twice. You must use a unique `CallerReference`
    #   string every time you create a hosted zone. `CallerReference` can be
    #   any unique string, for example, a date/time stamp.
    #
    # @option params [Types::HostedZoneConfig] :hosted_zone_config
    #   (Optional) A complex type that contains an optional comment about your
    #   hosted zone. If you don't want to specify a comment, omit both the
    #   `HostedZoneConfig` and `Comment` elements.
    #
    # @option params [String] :delegation_set_id
    #   If you want to associate a reusable delegation set with this hosted
    #   zone, the ID that Amazon Route 53 assigned to the reusable delegation
    #   set when you created it. For more information about reusable
    #   delegation sets, see CreateReusableDelegationSet.
    #
    #   Type
    #
    #   : String
    #
    #   Default
    #
    #   : None
    #
    #   Parent
    #
    #   : `CreatedHostedZoneRequest`
    #
    # @return [Types::CreateHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHostedZoneResponse#hosted_zone #hosted_zone} => Types::HostedZone
    #   * {Types::CreateHostedZoneResponse#change_info #change_info} => Types::ChangeInfo
    #   * {Types::CreateHostedZoneResponse#delegation_set #delegation_set} => Types::DelegationSet
    #   * {Types::CreateHostedZoneResponse#vpc #vpc} => Types::VPC
    #   * {Types::CreateHostedZoneResponse#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hosted_zone({
    #     name: "DNSName", # required
    #     vpc: {
    #       vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #       vpc_id: "VPCId",
    #     },
    #     caller_reference: "Nonce", # required
    #     hosted_zone_config: {
    #       comment: "ResourceDescription",
    #       private_zone: false,
    #     },
    #     delegation_set_id: "ResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.hosted_zone.id #=> String
    #   resp.hosted_zone.name #=> String
    #   resp.hosted_zone.caller_reference #=> String
    #   resp.hosted_zone.config.comment #=> String
    #   resp.hosted_zone.config.private_zone #=> Boolean
    #   resp.hosted_zone.resource_record_set_count #=> Integer
    #   resp.change_info.id #=> String
    #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
    #   resp.change_info.submitted_at #=> Time
    #   resp.change_info.comment #=> String
    #   resp.delegation_set.id #=> String
    #   resp.delegation_set.caller_reference #=> String
    #   resp.delegation_set.name_servers #=> Array
    #   resp.delegation_set.name_servers[0] #=> String
    #   resp.vpc.vpc_region #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1"
    #   resp.vpc.vpc_id #=> String
    #   resp.location #=> String
    #
    # @overload create_hosted_zone(params = {})
    # @param [Hash] params ({})
    def create_hosted_zone(params = {}, options = {})
      req = build_request(:create_hosted_zone, params)
      req.send_request(options)
    end

    # Creates a delegation set (a group of four name servers) that can be
    # reused by multiple hosted zones. If a hosted zoned ID is specified,
    # `CreateReusableDelegationSet` marks the delegation set associated with
    # that zone as reusable
    #
    # Send a `POST` request to the `/2013-04-01/delegationset` resource. The
    # request body must include a document with a
    # `CreateReusableDelegationSetRequest` element.
    #
    # <note markdown="1"> A reusable delegation set can't be associated with a private hosted
    # zone/
    #
    #  </note>
    #
    # For more information, including a procedure on how to create and
    # configure a reusable delegation set (also known as white label name
    # servers), see [Configuring White Label Name Servers][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html
    #
    # @option params [required, String] :caller_reference
    #   A unique string that identifies the request, and that allows you to
    #   retry failed `CreateReusableDelegationSet` requests without the risk
    #   of executing the operation twice. You must use a unique
    #   `CallerReference` string every time you submit a
    #   `CreateReusableDelegationSet` request. `CallerReference` can be any
    #   unique string, for example a date/time stamp.
    #
    # @option params [String] :hosted_zone_id
    #   If you want to mark the delegation set for an existing hosted zone as
    #   reusable, the ID for that hosted zone.
    #
    # @return [Types::CreateReusableDelegationSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReusableDelegationSetResponse#delegation_set #delegation_set} => Types::DelegationSet
    #   * {Types::CreateReusableDelegationSetResponse#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_reusable_delegation_set({
    #     caller_reference: "Nonce", # required
    #     hosted_zone_id: "ResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.delegation_set.id #=> String
    #   resp.delegation_set.caller_reference #=> String
    #   resp.delegation_set.name_servers #=> Array
    #   resp.delegation_set.name_servers[0] #=> String
    #   resp.location #=> String
    #
    # @overload create_reusable_delegation_set(params = {})
    # @param [Hash] params ({})
    def create_reusable_delegation_set(params = {}, options = {})
      req = build_request(:create_reusable_delegation_set, params)
      req.send_request(options)
    end

    # Creates a traffic policy, which you use to create multiple DNS
    # resource record sets for one domain name (such as example.com) or one
    # subdomain name (such as www.example.com).
    #
    # Send a `POST` request to the `/2013-04-01/trafficpolicy` resource. The
    # request body must include a document with a
    # `CreateTrafficPolicyRequest` element. The response includes the
    # `CreateTrafficPolicyResponse` element, which contains information
    # about the new traffic policy.
    #
    # @option params [required, String] :name
    #   The name of the traffic policy.
    #
    # @option params [required, String] :document
    #   The definition of this traffic policy in JSON format. For more
    #   information, see [Traffic Policy Document Format][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html
    #
    # @option params [String] :comment
    #   (Optional) Any comments that you want to include about the traffic
    #   policy.
    #
    # @return [Types::CreateTrafficPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrafficPolicyResponse#traffic_policy #traffic_policy} => Types::TrafficPolicy
    #   * {Types::CreateTrafficPolicyResponse#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_traffic_policy({
    #     name: "TrafficPolicyName", # required
    #     document: "TrafficPolicyDocument", # required
    #     comment: "TrafficPolicyComment",
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy.id #=> String
    #   resp.traffic_policy.version #=> Integer
    #   resp.traffic_policy.name #=> String
    #   resp.traffic_policy.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.traffic_policy.document #=> String
    #   resp.traffic_policy.comment #=> String
    #   resp.location #=> String
    #
    # @overload create_traffic_policy(params = {})
    # @param [Hash] params ({})
    def create_traffic_policy(params = {}, options = {})
      req = build_request(:create_traffic_policy, params)
      req.send_request(options)
    end

    # Creates resource record sets in a specified hosted zone based on the
    # settings in a specified traffic policy version. In addition,
    # `CreateTrafficPolicyInstance` associates the resource record sets with
    # a specified domain name (such as example.com) or subdomain name (such
    # as www.example.com). Amazon Route 53 responds to DNS queries for the
    # domain or subdomain name by using the resource record sets that
    # `CreateTrafficPolicyInstance` created.
    #
    # Send a `POST` request to the `/2013-04-01/trafficpolicyinstance`
    # resource. The request body must include a document with a
    # `CreateTrafficPolicyRequest` element. The response returns the
    # `CreateTrafficPolicyInstanceResponse` element, which contains
    # information about the traffic policy instance.
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the hosted zone in which you want Amazon Route 53 to create
    #   resource record sets by using the configuration in a traffic policy.
    #
    # @option params [required, String] :name
    #   The domain name (such as example.com) or subdomain name (such as
    #   www.example.com) for which Amazon Route 53 responds to DNS queries by
    #   using the resource record sets that Amazon Route 53 creates for this
    #   traffic policy instance.
    #
    # @option params [required, Integer] :ttl
    #   (Optional) The TTL that you want Amazon Route 53 to assign to all of
    #   the resource record sets that it creates in the specified hosted zone.
    #
    # @option params [required, String] :traffic_policy_id
    #   The ID of the traffic policy that you want to use to create resource
    #   record sets in the specified hosted zone.
    #
    # @option params [required, Integer] :traffic_policy_version
    #   The version of the traffic policy that you want to use to create
    #   resource record sets in the specified hosted zone.
    #
    # @return [Types::CreateTrafficPolicyInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrafficPolicyInstanceResponse#traffic_policy_instance #traffic_policy_instance} => Types::TrafficPolicyInstance
    #   * {Types::CreateTrafficPolicyInstanceResponse#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_traffic_policy_instance({
    #     hosted_zone_id: "ResourceId", # required
    #     name: "DNSName", # required
    #     ttl: 1, # required
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     traffic_policy_version: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy_instance.id #=> String
    #   resp.traffic_policy_instance.hosted_zone_id #=> String
    #   resp.traffic_policy_instance.name #=> String
    #   resp.traffic_policy_instance.ttl #=> Integer
    #   resp.traffic_policy_instance.state #=> String
    #   resp.traffic_policy_instance.message #=> String
    #   resp.traffic_policy_instance.traffic_policy_id #=> String
    #   resp.traffic_policy_instance.traffic_policy_version #=> Integer
    #   resp.traffic_policy_instance.traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.location #=> String
    #
    # @overload create_traffic_policy_instance(params = {})
    # @param [Hash] params ({})
    def create_traffic_policy_instance(params = {}, options = {})
      req = build_request(:create_traffic_policy_instance, params)
      req.send_request(options)
    end

    # Creates a new version of an existing traffic policy. When you create a
    # new version of a traffic policy, you specify the ID of the traffic
    # policy that you want to update and a JSON-formatted document that
    # describes the new version. You use traffic policies to create multiple
    # DNS resource record sets for one domain name (such as example.com) or
    # one subdomain name (such as www.example.com). You can create a maximum
    # of 1000 versions of a traffic policy. If you reach the limit and need
    # to create another version, you'll need to start a new traffic policy.
    #
    # Send a `POST` request to the `/2013-04-01/trafficpolicy/` resource.
    # The request body includes a document with a
    # `CreateTrafficPolicyVersionRequest` element. The response returns the
    # `CreateTrafficPolicyVersionResponse` element, which contains
    # information about the new version of the traffic policy.
    #
    # @option params [required, String] :id
    #   The ID of the traffic policy for which you want to create a new
    #   version.
    #
    # @option params [required, String] :document
    #   The definition of this version of the traffic policy, in JSON format.
    #   You specified the JSON in the `CreateTrafficPolicyVersion` request.
    #   For more information about the JSON format, see CreateTrafficPolicy.
    #
    # @option params [String] :comment
    #   The comment that you specified in the `CreateTrafficPolicyVersion`
    #   request, if any.
    #
    # @return [Types::CreateTrafficPolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrafficPolicyVersionResponse#traffic_policy #traffic_policy} => Types::TrafficPolicy
    #   * {Types::CreateTrafficPolicyVersionResponse#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_traffic_policy_version({
    #     id: "TrafficPolicyId", # required
    #     document: "TrafficPolicyDocument", # required
    #     comment: "TrafficPolicyComment",
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy.id #=> String
    #   resp.traffic_policy.version #=> Integer
    #   resp.traffic_policy.name #=> String
    #   resp.traffic_policy.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.traffic_policy.document #=> String
    #   resp.traffic_policy.comment #=> String
    #   resp.location #=> String
    #
    # @overload create_traffic_policy_version(params = {})
    # @param [Hash] params ({})
    def create_traffic_policy_version(params = {}, options = {})
      req = build_request(:create_traffic_policy_version, params)
      req.send_request(options)
    end

    # Authorizes the AWS account that created a specified VPC to submit an
    # `AssociateVPCWithHostedZone` request to associate the VPC with a
    # specified hosted zone that was created by a different account. To
    # submit a `CreateVPCAssociationAuthorization` request, you must use the
    # account that created the hosted zone. After you authorize the
    # association, use the account that created the VPC to submit an
    # `AssociateVPCWithHostedZone` request.
    #
    # <note markdown="1"> If you want to associate multiple VPCs that you created by using one
    # account with a hosted zone that you created by using a different
    # account, you must submit one authorization request for each VPC.
    #
    #  </note>
    #
    # Send a `POST` request to the `/2013-04-01/hostedzone/hosted zone
    # ID/authorizevpcassociation` resource. The request body must include a
    # document with a `CreateVPCAssociationAuthorizationRequest` element.
    # The response contains information about the authorization.
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the private hosted zone that you want to authorize
    #   associating a VPC with.
    #
    # @option params [required, Types::VPC] :vpc
    #   A complex type that contains the VPC ID and region for the VPC that
    #   you want to authorize associating with your hosted zone.
    #
    # @return [Types::CreateVPCAssociationAuthorizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVPCAssociationAuthorizationResponse#hosted_zone_id #hosted_zone_id} => String
    #   * {Types::CreateVPCAssociationAuthorizationResponse#vpc #vpc} => Types::VPC
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_association_authorization({
    #     hosted_zone_id: "ResourceId", # required
    #     vpc: { # required
    #       vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #       vpc_id: "VPCId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hosted_zone_id #=> String
    #   resp.vpc.vpc_region #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1"
    #   resp.vpc.vpc_id #=> String
    #
    # @overload create_vpc_association_authorization(params = {})
    # @param [Hash] params ({})
    def create_vpc_association_authorization(params = {}, options = {})
      req = build_request(:create_vpc_association_authorization, params)
      req.send_request(options)
    end

    # Deletes a health check. Send a `DELETE` request to the
    # `/2013-04-01/healthcheck/health check ID ` resource.
    #
    # Amazon Route 53 does not prevent you from deleting a health check even
    # if the health check is associated with one or more resource record
    # sets. If you delete a health check and you don't update the
    # associated resource record sets, the future status of the health check
    # can't be predicted and may change. This will affect the routing of
    # DNS queries for your DNS failover configuration. For more information,
    # see [Replacing and Deleting Health Checks][1] in the Amazon Route 53
    # Developer Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html
    #
    # @option params [required, String] :health_check_id
    #   The ID of the health check that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_health_check({
    #     health_check_id: "HealthCheckId", # required
    #   })
    #
    # @overload delete_health_check(params = {})
    # @param [Hash] params ({})
    def delete_health_check(params = {}, options = {})
      req = build_request(:delete_health_check, params)
      req.send_request(options)
    end

    # Deletes a hosted zone. Send a `DELETE` request to the `/Amazon Route
    # 53 API version/hostedzone/hosted zone ID ` resource.
    #
    # Delete a hosted zone only if there are no resource record sets other
    # than the default SOA record and NS resource record sets. If the hosted
    # zone contains other resource record sets, delete them before deleting
    # the hosted zone. If you try to delete a hosted zone that contains
    # other resource record sets, Amazon Route 53 denies your request with a
    # `HostedZoneNotEmpty` error. For information about deleting records
    # from your hosted zone, see ChangeResourceRecordSets.
    #
    # @option params [required, String] :id
    #   The ID of the hosted zone you want to delete.
    #
    # @return [Types::DeleteHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteHostedZoneResponse#change_info #change_info} => Types::ChangeInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hosted_zone({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_info.id #=> String
    #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
    #   resp.change_info.submitted_at #=> Time
    #   resp.change_info.comment #=> String
    #
    # @overload delete_hosted_zone(params = {})
    # @param [Hash] params ({})
    def delete_hosted_zone(params = {}, options = {})
      req = build_request(:delete_hosted_zone, params)
      req.send_request(options)
    end

    # Deletes a reusable delegation set. Send a `DELETE` request to the
    # `/2013-04-01/delegationset/delegation set ID ` resource.
    #
    # You can delete a reusable delegation set only if there are no
    # associated hosted zones.
    #
    # To verify that the reusable delegation set is not associated with any
    # hosted zones, run the GetReusableDelegationSet action and specify the
    # ID of the reusable delegation set that you want to delete.
    #
    # @option params [required, String] :id
    #   The ID of the reusable delegation set you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_reusable_delegation_set({
    #     id: "ResourceId", # required
    #   })
    #
    # @overload delete_reusable_delegation_set(params = {})
    # @param [Hash] params ({})
    def delete_reusable_delegation_set(params = {}, options = {})
      req = build_request(:delete_reusable_delegation_set, params)
      req.send_request(options)
    end

    # Deletes a traffic policy.
    #
    # Send a `DELETE` request to the `/Amazon Route 53 API
    # version/trafficpolicy` resource.
    #
    # @option params [required, String] :id
    #   The ID of the traffic policy that you want to delete.
    #
    # @option params [required, Integer] :version
    #   The version number of the traffic policy that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_traffic_policy({
    #     id: "TrafficPolicyId", # required
    #     version: 1, # required
    #   })
    #
    # @overload delete_traffic_policy(params = {})
    # @param [Hash] params ({})
    def delete_traffic_policy(params = {}, options = {})
      req = build_request(:delete_traffic_policy, params)
      req.send_request(options)
    end

    # Deletes a traffic policy instance and all of the resource record sets
    # that Amazon Route 53 created when you created the instance.
    #
    # Send a `DELETE` request to the `/Amazon Route 53 API
    # version/trafficpolicy/traffic policy instance ID ` resource.
    #
    # <note markdown="1"> In the Amazon Route 53 console, traffic policy instances are known as
    # policy records.
    #
    #  </note>
    #
    # @option params [required, String] :id
    #   The ID of the traffic policy instance that you want to delete.
    #
    #   When you delete a traffic policy instance, Amazon Route 53 also
    #   deletes all of the resource record sets that were created when you
    #   created the traffic policy instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_traffic_policy_instance({
    #     id: "TrafficPolicyInstanceId", # required
    #   })
    #
    # @overload delete_traffic_policy_instance(params = {})
    # @param [Hash] params ({})
    def delete_traffic_policy_instance(params = {}, options = {})
      req = build_request(:delete_traffic_policy_instance, params)
      req.send_request(options)
    end

    # Removes authorization to submit an `AssociateVPCWithHostedZone`
    # request to associate a specified VPC with a hosted zone that was
    # created by a different account. You must use the account that created
    # the hosted zone to submit a `DeleteVPCAssociationAuthorization`
    # request.
    #
    # Sending this request only prevents the AWS account that created the
    # VPC from associating the VPC with the Amazon Route 53 hosted zone in
    # the future. If the VPC is already associated with the hosted zone,
    # `DeleteVPCAssociationAuthorization` won't disassociate the VPC from
    # the hosted zone. If you want to delete an existing association, use
    # `DisassociateVPCFromHostedZone`.
    #
    # Send a `DELETE` request to the `/2013-04-01/hostedzone/hosted zone
    # ID/deauthorizevpcassociation` resource. The request body must include
    # a document with a `DeleteVPCAssociationAuthorizationRequest` element.
    #
    # @option params [required, String] :hosted_zone_id
    #   When removing authorization to associate a VPC that was created by one
    #   AWS account with a hosted zone that was created with a different AWS
    #   account, the ID of the hosted zone.
    #
    # @option params [required, Types::VPC] :vpc
    #   When removing authorization to associate a VPC that was created by one
    #   AWS account with a hosted zone that was created with a different AWS
    #   account, a complex type that includes the ID and region of the VPC.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_association_authorization({
    #     hosted_zone_id: "ResourceId", # required
    #     vpc: { # required
    #       vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #       vpc_id: "VPCId",
    #     },
    #   })
    #
    # @overload delete_vpc_association_authorization(params = {})
    # @param [Hash] params ({})
    def delete_vpc_association_authorization(params = {}, options = {})
      req = build_request(:delete_vpc_association_authorization, params)
      req.send_request(options)
    end

    # Disassociates a VPC from a Amazon Route 53 private hosted zone.
    #
    # <note markdown="1"> You can't disassociate the last VPC from a private hosted zone.
    #
    #  </note>
    #
    # Send a `POST` request to the `/2013-04-01/hostedzone/hosted zone
    # ID/disassociatevpc` resource. The request body must include a document
    # with a `DisassociateVPCFromHostedZoneRequest` element. The response
    # includes a `DisassociateVPCFromHostedZoneResponse` element.
    #
    # You can't disassociate a VPC from a private hosted zone when only one
    # VPC is associated with the hosted zone. You also can't convert a
    # private hosted zone into a public hosted zone.
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the private hosted zone that you want to disassociate a VPC
    #   from.
    #
    # @option params [required, Types::VPC] :vpc
    #   A complex type that contains information about the VPC that you're
    #   disassociating from the specified hosted zone.
    #
    # @option params [String] :comment
    #   *Optional:* A comment about the disassociation request.
    #
    # @return [Types::DisassociateVPCFromHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateVPCFromHostedZoneResponse#change_info #change_info} => Types::ChangeInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_vpc_from_hosted_zone({
    #     hosted_zone_id: "ResourceId", # required
    #     vpc: { # required
    #       vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #       vpc_id: "VPCId",
    #     },
    #     comment: "DisassociateVPCComment",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_info.id #=> String
    #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
    #   resp.change_info.submitted_at #=> Time
    #   resp.change_info.comment #=> String
    #
    # @overload disassociate_vpc_from_hosted_zone(params = {})
    # @param [Hash] params ({})
    def disassociate_vpc_from_hosted_zone(params = {}, options = {})
      req = build_request(:disassociate_vpc_from_hosted_zone, params)
      req.send_request(options)
    end

    # Returns the current status of a change batch request. The status is
    # one of the following values:
    #
    # * `PENDING` indicates that the changes in this request have not
    #   replicated to all Amazon Route 53 DNS servers. This is the initial
    #   status of all change batch requests.
    #
    # * `INSYNC` indicates that the changes have replicated to all Amazon
    #   Route 53 DNS servers.
    #
    # @option params [required, String] :id
    #   The ID of the change batch request. The value that you specify here is
    #   the value that `ChangeResourceRecordSets` returned in the Id element
    #   when you submitted the request.
    #
    # @return [Types::GetChangeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChangeResponse#change_info #change_info} => Types::ChangeInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_change({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_info.id #=> String
    #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
    #   resp.change_info.submitted_at #=> Time
    #   resp.change_info.comment #=> String
    #
    # @overload get_change(params = {})
    # @param [Hash] params ({})
    def get_change(params = {}, options = {})
      req = build_request(:get_change, params)
      req.send_request(options)
    end

    # Retrieves a list of the IP ranges used by Amazon Route 53 health
    # checkers to check the health of your resources. Send a `GET` request
    # to the `/Amazon Route 53 API version/checkeripranges` resource. Use
    # these IP addresses to configure router and firewall rules to allow
    # health checkers to check the health of your resources.
    #
    # @return [Types::GetCheckerIpRangesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCheckerIpRangesResponse#checker_ip_ranges #checker_ip_ranges} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_checker_ip_ranges()
    #
    # @example Response structure
    #
    #   resp.checker_ip_ranges #=> Array
    #   resp.checker_ip_ranges[0] #=> String
    #
    # @overload get_checker_ip_ranges(params = {})
    # @param [Hash] params ({})
    def get_checker_ip_ranges(params = {}, options = {})
      req = build_request(:get_checker_ip_ranges, params)
      req.send_request(options)
    end

    # Retrieves a single geo location. Send a `GET` request to the
    # `/2013-04-01/geolocation` resource with one of these options:
    # continentcode \| countrycode \| countrycode and subdivisioncode.
    #
    # @option params [String] :continent_code
    #   Amazon Route 53 supports the following continent codes:
    #
    #   * **AF**\: Africa
    #
    #   * **AN**\: Antarctica
    #
    #   * **AS**\: Asia
    #
    #   * **EU**\: Europe
    #
    #   * **OC**\: Oceania
    #
    #   * **NA**\: North America
    #
    #   * **SA**\: South America
    #
    # @option params [String] :country_code
    #   Amazon Route 53 uses the two-letter country codes that are specified
    #   in [ISO standard 3166-1 alpha-2][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    #
    # @option params [String] :subdivision_code
    #   Amazon Route 53 uses the one- to three-letter subdivision codes that
    #   are specified in [ISO standard 3166-1 alpha-2][1]. Amazon Route 53
    #   doesn't support subdivision codes for all countries. If you specify
    #   `SubdivisionCode`, you must also specify `CountryCode`.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    #
    # @return [Types::GetGeoLocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGeoLocationResponse#geo_location_details #geo_location_details} => Types::GeoLocationDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_geo_location({
    #     continent_code: "GeoLocationContinentCode",
    #     country_code: "GeoLocationCountryCode",
    #     subdivision_code: "GeoLocationSubdivisionCode",
    #   })
    #
    # @example Response structure
    #
    #   resp.geo_location_details.continent_code #=> String
    #   resp.geo_location_details.continent_name #=> String
    #   resp.geo_location_details.country_code #=> String
    #   resp.geo_location_details.country_name #=> String
    #   resp.geo_location_details.subdivision_code #=> String
    #   resp.geo_location_details.subdivision_name #=> String
    #
    # @overload get_geo_location(params = {})
    # @param [Hash] params ({})
    def get_geo_location(params = {}, options = {})
      req = build_request(:get_geo_location, params)
      req.send_request(options)
    end

    # Gets information about a specified health check. Send a `GET` request
    # to the `/2013-04-01/healthcheck/health check ID ` resource. For more
    # information about using the console to perform this operation, see
    # [Amazon Route 53 Health Checks and DNS Failover][1] in the Amazon
    # Route 53 Developer Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html
    #
    # @option params [required, String] :health_check_id
    #   The identifier that Amazon Route 53 assigned to the health check when
    #   you created it. When you add or update a resource record set, you use
    #   this value to specify which health check to use. The value can be up
    #   to 64 characters long.
    #
    # @return [Types::GetHealthCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHealthCheckResponse#health_check #health_check} => Types::HealthCheck
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_health_check({
    #     health_check_id: "HealthCheckId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.health_check.id #=> String
    #   resp.health_check.caller_reference #=> String
    #   resp.health_check.health_check_config.ip_address #=> String
    #   resp.health_check.health_check_config.port #=> Integer
    #   resp.health_check.health_check_config.type #=> String, one of "HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC"
    #   resp.health_check.health_check_config.resource_path #=> String
    #   resp.health_check.health_check_config.fully_qualified_domain_name #=> String
    #   resp.health_check.health_check_config.search_string #=> String
    #   resp.health_check.health_check_config.request_interval #=> Integer
    #   resp.health_check.health_check_config.failure_threshold #=> Integer
    #   resp.health_check.health_check_config.measure_latency #=> Boolean
    #   resp.health_check.health_check_config.inverted #=> Boolean
    #   resp.health_check.health_check_config.health_threshold #=> Integer
    #   resp.health_check.health_check_config.child_health_checks #=> Array
    #   resp.health_check.health_check_config.child_health_checks[0] #=> String
    #   resp.health_check.health_check_config.enable_sni #=> Boolean
    #   resp.health_check.health_check_config.regions #=> Array
    #   resp.health_check.health_check_config.regions[0] #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"
    #   resp.health_check.health_check_config.alarm_identifier.region #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1"
    #   resp.health_check.health_check_config.alarm_identifier.name #=> String
    #   resp.health_check.health_check_config.insufficient_data_health_status #=> String, one of "Healthy", "Unhealthy", "LastKnownStatus"
    #   resp.health_check.health_check_version #=> Integer
    #   resp.health_check.cloud_watch_alarm_configuration.evaluation_periods #=> Integer
    #   resp.health_check.cloud_watch_alarm_configuration.threshold #=> Float
    #   resp.health_check.cloud_watch_alarm_configuration.comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
    #   resp.health_check.cloud_watch_alarm_configuration.period #=> Integer
    #   resp.health_check.cloud_watch_alarm_configuration.metric_name #=> String
    #   resp.health_check.cloud_watch_alarm_configuration.namespace #=> String
    #   resp.health_check.cloud_watch_alarm_configuration.statistic #=> String, one of "Average", "Sum", "SampleCount", "Maximum", "Minimum"
    #   resp.health_check.cloud_watch_alarm_configuration.dimensions #=> Array
    #   resp.health_check.cloud_watch_alarm_configuration.dimensions[0].name #=> String
    #   resp.health_check.cloud_watch_alarm_configuration.dimensions[0].value #=> String
    #
    # @overload get_health_check(params = {})
    # @param [Hash] params ({})
    def get_health_check(params = {}, options = {})
      req = build_request(:get_health_check, params)
      req.send_request(options)
    end

    # To retrieve a count of all your health checks, send a `GET` request to
    # the `/2013-04-01/healthcheckcount` resource.
    #
    # @return [Types::GetHealthCheckCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHealthCheckCountResponse#health_check_count #health_check_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_health_check_count()
    #
    # @example Response structure
    #
    #   resp.health_check_count #=> Integer
    #
    # @overload get_health_check_count(params = {})
    # @param [Hash] params ({})
    def get_health_check_count(params = {}, options = {})
      req = build_request(:get_health_check_count, params)
      req.send_request(options)
    end

    # If you want to learn why a health check is currently failing or why it
    # failed most recently (if at all), you can get the failure reason for
    # the most recent failure. Send a `GET` request to the `/Amazon Route 53
    # API version/healthcheck/health check ID/lastfailurereason` resource.
    #
    # @option params [required, String] :health_check_id
    #   The ID for the health check for which you want the last failure
    #   reason. When you created the health check, `CreateHealthCheck`
    #   returned the ID in the response, in the `HealthCheckId` element.
    #
    # @return [Types::GetHealthCheckLastFailureReasonResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHealthCheckLastFailureReasonResponse#health_check_observations #health_check_observations} => Array&lt;Types::HealthCheckObservation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_health_check_last_failure_reason({
    #     health_check_id: "HealthCheckId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.health_check_observations #=> Array
    #   resp.health_check_observations[0].region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"
    #   resp.health_check_observations[0].ip_address #=> String
    #   resp.health_check_observations[0].status_report.status #=> String
    #   resp.health_check_observations[0].status_report.checked_time #=> Time
    #
    # @overload get_health_check_last_failure_reason(params = {})
    # @param [Hash] params ({})
    def get_health_check_last_failure_reason(params = {}, options = {})
      req = build_request(:get_health_check_last_failure_reason, params)
      req.send_request(options)
    end

    # Gets status of a specified health check. Send a `GET` request to the
    # `/2013-04-01/healthcheck/health check ID/status` resource. You can use
    # this call to get a health check's current status.
    #
    # @option params [required, String] :health_check_id
    #   If you want Amazon Route 53 to return this resource record set in
    #   response to a DNS query only when a health check is passing, include
    #   the `HealthCheckId` element and specify the ID of the applicable
    #   health check.
    #
    #   Amazon Route 53 determines whether a resource record set is healthy by
    #   periodically sending a request to the endpoint that is specified in
    #   the health check. If that endpoint returns an HTTP status code of 2xx
    #   or 3xx, the endpoint is healthy. If the endpoint returns an HTTP
    #   status code of 400 or greater, or if the endpoint doesn't respond for
    #   a certain amount of time, Amazon Route 53 considers the endpoint
    #   unhealthy and also considers the resource record set unhealthy.
    #
    #   The `HealthCheckId` element is only useful when Amazon Route 53 is
    #   choosing between two or more resource record sets to respond to a DNS
    #   query, and you want Amazon Route 53 to base the choice in part on the
    #   status of a health check. Configuring health checks only makes sense
    #   in the following configurations:
    #
    #   * You're checking the health of the resource record sets in a
    #     weighted, latency, geolocation, or failover resource record set, and
    #     you specify health check IDs for all of the resource record sets. If
    #     the health check for one resource record set specifies an endpoint
    #     that is not healthy, Amazon Route 53 stops responding to queries
    #     using the value for that resource record set.
    #
    #   * You set `EvaluateTargetHealth` to `true` for the resource record
    #     sets in an alias, weighted alias, latency alias, geolocation alias,
    #     or failover alias resource record set, and you specify health check
    #     IDs for all of the resource record sets that are referenced by the
    #     alias resource record sets. For more information about this
    #     configuration, see `EvaluateTargetHealth`.
    #
    #     Amazon Route 53 doesn't check the health of the endpoint specified
    #     in the resource record set, for example, the endpoint specified by
    #     the IP address in the `Value` element. When you add a
    #     `HealthCheckId` element to a resource record set, Amazon Route 53
    #     checks the health of the endpoint that you specified in the health
    #     check.
    #
    #   For geolocation resource record sets, if an endpoint is unhealthy,
    #   Amazon Route 53 looks for a resource record set for the larger,
    #   associated geographic region. For example, suppose you have resource
    #   record sets for a state in the United States, for the United States,
    #   for North America, and for all locations. If the endpoint for the
    #   state resource record set is unhealthy, Amazon Route 53 checks the
    #   resource record sets for the United States, for North America, and for
    #   all locations (a resource record set for which the value of
    #   CountryCode is `*`), in that order, until it finds a resource record
    #   set for which the endpoint is healthy.
    #
    #   If your health checks specify the endpoint only by domain name, we
    #   recommend that you create a separate health check for each endpoint.
    #   For example, create a health check for each HTTP server that is
    #   serving content for www.example.com. For the value of
    #   `FullyQualifiedDomainName`, specify the domain name of the server
    #   (such as `us-east-1-www.example.com`), not the name of the resource
    #   record sets (example.com).
    #
    #   In this configuration, if you create a health check for which the
    #   value of `FullyQualifiedDomainName` matches the name of the resource
    #   record sets and then associate the health check with those resource
    #   record sets, health check results will be unpredictable.
    #
    # @return [Types::GetHealthCheckStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHealthCheckStatusResponse#health_check_observations #health_check_observations} => Array&lt;Types::HealthCheckObservation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_health_check_status({
    #     health_check_id: "HealthCheckId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.health_check_observations #=> Array
    #   resp.health_check_observations[0].region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"
    #   resp.health_check_observations[0].ip_address #=> String
    #   resp.health_check_observations[0].status_report.status #=> String
    #   resp.health_check_observations[0].status_report.checked_time #=> Time
    #
    # @overload get_health_check_status(params = {})
    # @param [Hash] params ({})
    def get_health_check_status(params = {}, options = {})
      req = build_request(:get_health_check_status, params)
      req.send_request(options)
    end

    # Retrieves the delegation set for a hosted zone, including the four
    # name servers assigned to the hosted zone. Send a `GET` request to the
    # `/Amazon Route 53 API version/hostedzone/hosted zone ID ` resource.
    #
    # @option params [required, String] :id
    #   The ID of the hosted zone for which you want to get a list of the name
    #   servers in the delegation set.
    #
    # @return [Types::GetHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHostedZoneResponse#hosted_zone #hosted_zone} => Types::HostedZone
    #   * {Types::GetHostedZoneResponse#delegation_set #delegation_set} => Types::DelegationSet
    #   * {Types::GetHostedZoneResponse#vp_cs #vp_cs} => Array&lt;Types::VPC&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hosted_zone({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hosted_zone.id #=> String
    #   resp.hosted_zone.name #=> String
    #   resp.hosted_zone.caller_reference #=> String
    #   resp.hosted_zone.config.comment #=> String
    #   resp.hosted_zone.config.private_zone #=> Boolean
    #   resp.hosted_zone.resource_record_set_count #=> Integer
    #   resp.delegation_set.id #=> String
    #   resp.delegation_set.caller_reference #=> String
    #   resp.delegation_set.name_servers #=> Array
    #   resp.delegation_set.name_servers[0] #=> String
    #   resp.vp_cs #=> Array
    #   resp.vp_cs[0].vpc_region #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1"
    #   resp.vp_cs[0].vpc_id #=> String
    #
    # @overload get_hosted_zone(params = {})
    # @param [Hash] params ({})
    def get_hosted_zone(params = {}, options = {})
      req = build_request(:get_hosted_zone, params)
      req.send_request(options)
    end

    # Retrieves a count of all your hosted zones. Send a `GET` request to
    # the `/2013-04-01/hostedzonecount` resource.
    #
    # @return [Types::GetHostedZoneCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHostedZoneCountResponse#hosted_zone_count #hosted_zone_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hosted_zone_count()
    #
    # @example Response structure
    #
    #   resp.hosted_zone_count #=> Integer
    #
    # @overload get_hosted_zone_count(params = {})
    # @param [Hash] params ({})
    def get_hosted_zone_count(params = {}, options = {})
      req = build_request(:get_hosted_zone_count, params)
      req.send_request(options)
    end

    # Retrieves the reusable delegation set. Send a `GET` request to the
    # `/2013-04-01/delegationset/delegation set ID ` resource.
    #
    # @option params [required, String] :id
    #   The ID of the reusable delegation set for which you want to get a list
    #   of the name server.
    #
    # @return [Types::GetReusableDelegationSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReusableDelegationSetResponse#delegation_set #delegation_set} => Types::DelegationSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reusable_delegation_set({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.delegation_set.id #=> String
    #   resp.delegation_set.caller_reference #=> String
    #   resp.delegation_set.name_servers #=> Array
    #   resp.delegation_set.name_servers[0] #=> String
    #
    # @overload get_reusable_delegation_set(params = {})
    # @param [Hash] params ({})
    def get_reusable_delegation_set(params = {}, options = {})
      req = build_request(:get_reusable_delegation_set, params)
      req.send_request(options)
    end

    # Gets information about a specific traffic policy version.
    #
    # Send a `GET` request to the `/Amazon Route 53 API
    # version/trafficpolicy` resource.
    #
    # @option params [required, String] :id
    #   The ID of the traffic policy that you want to get information about.
    #
    # @option params [required, Integer] :version
    #   The version number of the traffic policy that you want to get
    #   information about.
    #
    # @return [Types::GetTrafficPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrafficPolicyResponse#traffic_policy #traffic_policy} => Types::TrafficPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_traffic_policy({
    #     id: "TrafficPolicyId", # required
    #     version: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy.id #=> String
    #   resp.traffic_policy.version #=> Integer
    #   resp.traffic_policy.name #=> String
    #   resp.traffic_policy.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.traffic_policy.document #=> String
    #   resp.traffic_policy.comment #=> String
    #
    # @overload get_traffic_policy(params = {})
    # @param [Hash] params ({})
    def get_traffic_policy(params = {}, options = {})
      req = build_request(:get_traffic_policy, params)
      req.send_request(options)
    end

    # Gets information about a specified traffic policy instance.
    #
    # Send a `GET` request to the `/Amazon Route 53 API
    # version/trafficpolicyinstance` resource.
    #
    # <note markdown="1"> After you submit a `CreateTrafficPolicyInstance` or an
    # `UpdateTrafficPolicyInstance` request, there's a brief delay while
    # Amazon Route 53 creates the resource record sets that are specified in
    # the traffic policy definition. For more information, see the `State`
    # response element.
    #
    #  </note>
    #
    # <note markdown="1"> In the Amazon Route 53 console, traffic policy instances are known as
    # policy records.
    #
    #  </note>
    #
    # @option params [required, String] :id
    #   The ID of the traffic policy instance that you want to get information
    #   about.
    #
    # @return [Types::GetTrafficPolicyInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrafficPolicyInstanceResponse#traffic_policy_instance #traffic_policy_instance} => Types::TrafficPolicyInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_traffic_policy_instance({
    #     id: "TrafficPolicyInstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy_instance.id #=> String
    #   resp.traffic_policy_instance.hosted_zone_id #=> String
    #   resp.traffic_policy_instance.name #=> String
    #   resp.traffic_policy_instance.ttl #=> Integer
    #   resp.traffic_policy_instance.state #=> String
    #   resp.traffic_policy_instance.message #=> String
    #   resp.traffic_policy_instance.traffic_policy_id #=> String
    #   resp.traffic_policy_instance.traffic_policy_version #=> Integer
    #   resp.traffic_policy_instance.traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #
    # @overload get_traffic_policy_instance(params = {})
    # @param [Hash] params ({})
    def get_traffic_policy_instance(params = {}, options = {})
      req = build_request(:get_traffic_policy_instance, params)
      req.send_request(options)
    end

    # Gets the number of traffic policy instances that are associated with
    # the current AWS account.
    #
    # To get the number of traffic policy instances, send a `GET` request to
    # the `/2013-04-01/trafficpolicyinstancecount` resource.
    #
    # @return [Types::GetTrafficPolicyInstanceCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrafficPolicyInstanceCountResponse#traffic_policy_instance_count #traffic_policy_instance_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_traffic_policy_instance_count()
    #
    # @example Response structure
    #
    #   resp.traffic_policy_instance_count #=> Integer
    #
    # @overload get_traffic_policy_instance_count(params = {})
    # @param [Hash] params ({})
    def get_traffic_policy_instance_count(params = {}, options = {})
      req = build_request(:get_traffic_policy_instance_count, params)
      req.send_request(options)
    end

    # Retrieves a list of supported geo locations. Send a `GET` request to
    # the `/2013-04-01/geolocations` resource. The response to this request
    # includes a `GeoLocationDetailsList` element for each location that
    # Amazon Route 53 supports.
    #
    # Countries are listed first, and continents are listed last. If Amazon
    # Route 53 supports subdivisions for a country (for example, states or
    # provinces), the subdivisions for that country are listed in
    # alphabetical order immediately after the corresponding country.
    #
    # @option params [String] :start_continent_code
    #   The code for the continent with which you want to start listing
    #   locations that Amazon Route 53 supports for geolocation. If Amazon
    #   Route 53 has already returned a page or more of results, if
    #   `IsTruncated` is true, and if `NextContinentCode` from the previous
    #   response has a value, enter that value in `StartContinentCode` to
    #   return the next page of results.
    #
    #   Include `StartContinentCode` only if you want to list continents.
    #   Don't include `StartContinentCode` when you're listing countries or
    #   countries with their subdivisions.
    #
    # @option params [String] :start_country_code
    #   The code for the country with which you want to start listing
    #   locations that Amazon Route 53 supports for geolocation. If Amazon
    #   Route 53 has already returned a page or more of results, if
    #   `IsTruncated` is `true`, and if `NextCountryCode` from the previous
    #   response has a value, enter that value in `StartCountryCode` to return
    #   the next page of results.
    #
    #   Amazon Route 53 uses the two-letter country codes that are specified
    #   in [ISO standard 3166-1 alpha-2][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    #
    # @option params [String] :start_subdivision_code
    #   The code for the subdivision (for example, state or province) with
    #   which you want to start listing locations that Amazon Route 53
    #   supports for geolocation. If Amazon Route 53 has already returned a
    #   page or more of results, if `IsTruncated` is `true`, and if
    #   `NextSubdivisionCode` from the previous response has a value, enter
    #   that value in `StartSubdivisionCode` to return the next page of
    #   results.
    #
    #   To list subdivisions of a country, you must include both
    #   `StartCountryCode` and `StartSubdivisionCode`.
    #
    # @option params [Integer] :max_items
    #   (Optional) The maximum number of geolocations to be included in the
    #   response body for this request. If more than `MaxItems` geolocations
    #   remain to be listed, then the value of the `IsTruncated` element in
    #   the response is `true`.
    #
    # @return [Types::ListGeoLocationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGeoLocationsResponse#geo_location_details_list #geo_location_details_list} => Array&lt;Types::GeoLocationDetails&gt;
    #   * {Types::ListGeoLocationsResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListGeoLocationsResponse#next_continent_code #next_continent_code} => String
    #   * {Types::ListGeoLocationsResponse#next_country_code #next_country_code} => String
    #   * {Types::ListGeoLocationsResponse#next_subdivision_code #next_subdivision_code} => String
    #   * {Types::ListGeoLocationsResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geo_locations({
    #     start_continent_code: "GeoLocationContinentCode",
    #     start_country_code: "GeoLocationCountryCode",
    #     start_subdivision_code: "GeoLocationSubdivisionCode",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.geo_location_details_list #=> Array
    #   resp.geo_location_details_list[0].continent_code #=> String
    #   resp.geo_location_details_list[0].continent_name #=> String
    #   resp.geo_location_details_list[0].country_code #=> String
    #   resp.geo_location_details_list[0].country_name #=> String
    #   resp.geo_location_details_list[0].subdivision_code #=> String
    #   resp.geo_location_details_list[0].subdivision_name #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.next_continent_code #=> String
    #   resp.next_country_code #=> String
    #   resp.next_subdivision_code #=> String
    #   resp.max_items #=> Integer
    #
    # @overload list_geo_locations(params = {})
    # @param [Hash] params ({})
    def list_geo_locations(params = {}, options = {})
      req = build_request(:list_geo_locations, params)
      req.send_request(options)
    end

    # Retrieve a list of your health checks. Send a `GET` request to the
    # `/2013-04-01/healthcheck` resource. The response to this request
    # includes a `HealthChecks` element with zero or more `HealthCheck`
    # child elements. By default, the list of health checks is displayed on
    # a single page. You can control the length of the page that is
    # displayed by using the `MaxItems` parameter. You can use the `Marker`
    # parameter to control the health check that the list begins with.
    #
    # For information about listing health checks using the Amazon Route 53
    # console, see [Amazon Route 53 Health Checks and DNS Failover][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html
    #
    # @option params [String] :marker
    #   If the response to a `ListHealthChecks` is more than one page, marker
    #   is the health check ID for the first health check on the next page of
    #   results. For more information, see ListHealthChecksResponse$MaxItems.
    #
    # @option params [Integer] :max_items
    #   The maximum number of `HealthCheck` elements you want
    #   `ListHealthChecks` to return on each page of the response body. If the
    #   AWS account includes more `HealthCheck` elements than the value of
    #   `maxitems`, the response is broken into pages. Each page contains the
    #   number of `HealthCheck` elements specified by `maxitems`.
    #
    #   For example, suppose you specify `10` for `maxitems` and the current
    #   AWS account has `51` health checks. In the response,
    #   `ListHealthChecks` sets ListHealthChecksResponse$IsTruncated to true
    #   and includes the ListHealthChecksResponse$NextMarker element. To
    #   access the second and subsequent pages, you resend the `GET`
    #   `ListHealthChecks` request, add the ListHealthChecksResponse$Marker
    #   parameter to the request, and specify the value of the
    #   ListHealthChecksResponse$NextMarker element from the previous
    #   response. On the last (sixth) page of the response, which contains
    #   only one HealthCheck element:
    #
    #   * The value of ListHealthChecksResponse$IsTruncated is `false`.
    #
    #   * ListHealthChecksResponse$NextMarker is omitted.
    #
    # @return [Types::ListHealthChecksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHealthChecksResponse#health_checks #health_checks} => Array&lt;Types::HealthCheck&gt;
    #   * {Types::ListHealthChecksResponse#marker #marker} => String
    #   * {Types::ListHealthChecksResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListHealthChecksResponse#next_marker #next_marker} => String
    #   * {Types::ListHealthChecksResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_health_checks({
    #     marker: "PageMarker",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.health_checks #=> Array
    #   resp.health_checks[0].id #=> String
    #   resp.health_checks[0].caller_reference #=> String
    #   resp.health_checks[0].health_check_config.ip_address #=> String
    #   resp.health_checks[0].health_check_config.port #=> Integer
    #   resp.health_checks[0].health_check_config.type #=> String, one of "HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC"
    #   resp.health_checks[0].health_check_config.resource_path #=> String
    #   resp.health_checks[0].health_check_config.fully_qualified_domain_name #=> String
    #   resp.health_checks[0].health_check_config.search_string #=> String
    #   resp.health_checks[0].health_check_config.request_interval #=> Integer
    #   resp.health_checks[0].health_check_config.failure_threshold #=> Integer
    #   resp.health_checks[0].health_check_config.measure_latency #=> Boolean
    #   resp.health_checks[0].health_check_config.inverted #=> Boolean
    #   resp.health_checks[0].health_check_config.health_threshold #=> Integer
    #   resp.health_checks[0].health_check_config.child_health_checks #=> Array
    #   resp.health_checks[0].health_check_config.child_health_checks[0] #=> String
    #   resp.health_checks[0].health_check_config.enable_sni #=> Boolean
    #   resp.health_checks[0].health_check_config.regions #=> Array
    #   resp.health_checks[0].health_check_config.regions[0] #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"
    #   resp.health_checks[0].health_check_config.alarm_identifier.region #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1"
    #   resp.health_checks[0].health_check_config.alarm_identifier.name #=> String
    #   resp.health_checks[0].health_check_config.insufficient_data_health_status #=> String, one of "Healthy", "Unhealthy", "LastKnownStatus"
    #   resp.health_checks[0].health_check_version #=> Integer
    #   resp.health_checks[0].cloud_watch_alarm_configuration.evaluation_periods #=> Integer
    #   resp.health_checks[0].cloud_watch_alarm_configuration.threshold #=> Float
    #   resp.health_checks[0].cloud_watch_alarm_configuration.comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
    #   resp.health_checks[0].cloud_watch_alarm_configuration.period #=> Integer
    #   resp.health_checks[0].cloud_watch_alarm_configuration.metric_name #=> String
    #   resp.health_checks[0].cloud_watch_alarm_configuration.namespace #=> String
    #   resp.health_checks[0].cloud_watch_alarm_configuration.statistic #=> String, one of "Average", "Sum", "SampleCount", "Maximum", "Minimum"
    #   resp.health_checks[0].cloud_watch_alarm_configuration.dimensions #=> Array
    #   resp.health_checks[0].cloud_watch_alarm_configuration.dimensions[0].name #=> String
    #   resp.health_checks[0].cloud_watch_alarm_configuration.dimensions[0].value #=> String
    #   resp.marker #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.next_marker #=> String
    #   resp.max_items #=> Integer
    #
    # @overload list_health_checks(params = {})
    # @param [Hash] params ({})
    def list_health_checks(params = {}, options = {})
      req = build_request(:list_health_checks, params)
      req.send_request(options)
    end

    # To retrieve a list of your public and private hosted zones, send a
    # `GET` request to the `/2013-04-01/hostedzone` resource. The response
    # to this request includes a `HostedZones` child element for each hosted
    # zone created by the current AWS account.
    #
    # Amazon Route 53 returns a maximum of 100 items in each response. If
    # you have a lot of hosted zones, you can use the `maxitems` parameter
    # to list them in groups of up to 100. The response includes four values
    # that help navigate from one group of `maxitems` hosted zones to the
    # next:
    #
    # * `MaxItems` is the value specified for the `maxitems` parameter in
    #   the request that produced the current response.
    #
    # * If the value of `IsTruncated` in the response is true, there are
    #   more hosted zones associated with the current AWS account.
    #
    # * `NextMarker` is the hosted zone ID of the next hosted zone that is
    #   associated with the current AWS account. If you want to list more
    #   hosted zones, make another call to `ListHostedZones`, and specify
    #   the value of the `NextMarker` element in the marker parameter.
    #
    #   If `IsTruncated` is false, the `NextMarker` element is omitted from
    #   the response.
    #
    # * If you're making the second or subsequent call to
    #   `ListHostedZones`, the `Marker` element matches the value that you
    #   specified in the `marker` parameter in the previous request.
    #
    # @option params [String] :marker
    #   (Optional) If you have more hosted zones than the value of `maxitems`,
    #   `ListHostedZones` returns only the first `maxitems` hosted zones. To
    #   get the next group of `maxitems` hosted zones, submit another request
    #   to `ListHostedZones`. For the value of marker, specify the value of
    #   the `NextMarker` element that was returned in the previous response.
    #
    #   Hosted zones are listed in the order in which they were created.
    #
    # @option params [Integer] :max_items
    #   (Optional) The maximum number of hosted zones to be included in the
    #   response body for this request. If you have more than `maxitems`
    #   hosted zones, the value of the `IsTruncated` element in the response
    #   is `true`, and the value of the `NextMarker` element is the hosted
    #   zone ID of the first hosted zone in the next group of `maxitems`
    #   hosted zones.
    #
    # @option params [String] :delegation_set_id
    #   If you're using reusable delegation sets and you want to list all of
    #   the hosted zones that are associated with a reusable delegation set,
    #   specify the ID of that reusable delegation set.
    #
    # @return [Types::ListHostedZonesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHostedZonesResponse#hosted_zones #hosted_zones} => Array&lt;Types::HostedZone&gt;
    #   * {Types::ListHostedZonesResponse#marker #marker} => String
    #   * {Types::ListHostedZonesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListHostedZonesResponse#next_marker #next_marker} => String
    #   * {Types::ListHostedZonesResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosted_zones({
    #     marker: "PageMarker",
    #     max_items: 1,
    #     delegation_set_id: "ResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.hosted_zones #=> Array
    #   resp.hosted_zones[0].id #=> String
    #   resp.hosted_zones[0].name #=> String
    #   resp.hosted_zones[0].caller_reference #=> String
    #   resp.hosted_zones[0].config.comment #=> String
    #   resp.hosted_zones[0].config.private_zone #=> Boolean
    #   resp.hosted_zones[0].resource_record_set_count #=> Integer
    #   resp.marker #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.next_marker #=> String
    #   resp.max_items #=> Integer
    #
    # @overload list_hosted_zones(params = {})
    # @param [Hash] params ({})
    def list_hosted_zones(params = {}, options = {})
      req = build_request(:list_hosted_zones, params)
      req.send_request(options)
    end

    # Retrieves a list of your hosted zones in lexicographic order. Send a
    # `GET` request to the `/2013-04-01/hostedzonesbyname` resource. The
    # response includes a `HostedZones` child element for each hosted zone
    # created by the current AWS account.
    #
    # `ListHostedZonesByName` sorts hosted zones by name with the labels
    # reversed. For example:
    #
    # * `com.example.www.`
    #
    # ^
    #
    # Note the trailing dot, which can change the sort order in some
    # circumstances.
    #
    # If the domain name includes escape characters or Punycode,
    # `ListHostedZonesByName` alphabetizes the domain name using the escaped
    # or Punycoded value, which is the format that Amazon Route 53 saves in
    # its database. For example, to create a hosted zone for example.com,
    # specify ex\\344mple.com for the domain name. `ListHostedZonesByName`
    # alphabetizes it as:
    #
    # * `com.ex\344mple.`
    #
    # ^
    #
    # The labels are reversed and alphabetized using the escaped value. For
    # more information about valid domain name formats, including
    # internationalized domain names, see [DNS Domain Name Format][1] in the
    # Amazon Route 53 Developer Guide.
    #
    # Amazon Route 53 returns up to 100 items in each response. If you have
    # a lot of hosted zones, use the `MaxItems` parameter to list them in
    # groups of up to 100. The response includes values that help navigate
    # from one group of `MaxItems` hosted zones to the next:
    #
    # * The `DNSName` and `HostedZoneId` elements in the response contain
    #   the values, if any, specified for the `dnsname` and `hostedzoneid`
    #   parameters in the request that produced the current response.
    #
    # * The `MaxItems` element in the response contains the value, if any,
    #   that you specified for the `maxitems` parameter in the request that
    #   produced the current response.
    #
    # * If the value of `IsTruncated` in the response is true, there are
    #   more hosted zones associated with the current AWS account.
    #
    #   If `IsTruncated` is false, this response includes the last hosted
    #   zone that is associated with the current account. The `NextDNSName`
    #   element and `NextHostedZoneId` elements are omitted from the
    #   response.
    #
    # * The `NextDNSName` and `NextHostedZoneId` elements in the response
    #   contain the domain name and the hosted zone ID of the next hosted
    #   zone that is associated with the current AWS account. If you want to
    #   list more hosted zones, make another call to
    #   `ListHostedZonesByName`, and specify the value of `NextDNSName` and
    #   `NextHostedZoneId` in the `dnsname` and `hostedzoneid` parameters,
    #   respectively.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html
    #
    # @option params [String] :dns_name
    #   (Optional) For your first request to `ListHostedZonesByName`, include
    #   the `dnsname` parameter only if you want to specify the name of the
    #   first hosted zone in the response. If you don't include the `dnsname`
    #   parameter, Amazon Route 53 returns all of the hosted zones that were
    #   created by the current AWS account, in ASCII order. For subsequent
    #   requests, include both `dnsname` and `hostedzoneid` parameters. For
    #   `dnsname`, specify the value of `NextDNSName` from the previous
    #   response.
    #
    # @option params [String] :hosted_zone_id
    #   (Optional) For your first request to `ListHostedZonesByName`, do not
    #   include the `hostedzoneid` parameter.
    #
    #   If you have more hosted zones than the value of `maxitems`,
    #   `ListHostedZonesByName` returns only the first `maxitems` hosted
    #   zones. To get the next group of `maxitems` hosted zones, submit
    #   another request to `ListHostedZonesByName` and include both `dnsname`
    #   and `hostedzoneid` parameters. For the value of `hostedzoneid`,
    #   specify the value of the `NextHostedZoneId` element from the previous
    #   response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of hosted zones to be included in the response body
    #   for this request. If you have more than `maxitems` hosted zones, then
    #   the value of the `IsTruncated` element in the response is true, and
    #   the values of `NextDNSName` and `NextHostedZoneId` specify the first
    #   hosted zone in the next group of `maxitems` hosted zones.
    #
    # @return [Types::ListHostedZonesByNameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHostedZonesByNameResponse#hosted_zones #hosted_zones} => Array&lt;Types::HostedZone&gt;
    #   * {Types::ListHostedZonesByNameResponse#dns_name #dns_name} => String
    #   * {Types::ListHostedZonesByNameResponse#hosted_zone_id #hosted_zone_id} => String
    #   * {Types::ListHostedZonesByNameResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListHostedZonesByNameResponse#next_dns_name #next_dns_name} => String
    #   * {Types::ListHostedZonesByNameResponse#next_hosted_zone_id #next_hosted_zone_id} => String
    #   * {Types::ListHostedZonesByNameResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosted_zones_by_name({
    #     dns_name: "DNSName",
    #     hosted_zone_id: "ResourceId",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.hosted_zones #=> Array
    #   resp.hosted_zones[0].id #=> String
    #   resp.hosted_zones[0].name #=> String
    #   resp.hosted_zones[0].caller_reference #=> String
    #   resp.hosted_zones[0].config.comment #=> String
    #   resp.hosted_zones[0].config.private_zone #=> Boolean
    #   resp.hosted_zones[0].resource_record_set_count #=> Integer
    #   resp.dns_name #=> String
    #   resp.hosted_zone_id #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.next_dns_name #=> String
    #   resp.next_hosted_zone_id #=> String
    #   resp.max_items #=> Integer
    #
    # @overload list_hosted_zones_by_name(params = {})
    # @param [Hash] params ({})
    def list_hosted_zones_by_name(params = {}, options = {})
      req = build_request(:list_hosted_zones_by_name, params)
      req.send_request(options)
    end

    # Lists the resource record sets in a specified hosted zone.
    #
    # `ListResourceRecordSets` returns up to 100 resource record sets at a
    # time in ASCII order, beginning at a position specified by the `name`
    # and `type` elements. The action sorts results first by DNS name with
    # the labels reversed, for example:
    #
    # `com.example.www.`
    #
    # Note the trailing dot, which can change the sort order in some
    # circumstances.
    #
    # When multiple records have the same DNS name, the action sorts results
    # by the record type.
    #
    # You can use the name and type elements to adjust the beginning
    # position of the list of resource record sets returned:
    #
    # If you do not specify Name or Type
    #
    # : The results begin with the first resource record set that the hosted
    #   zone contains.
    #
    # If you specify Name but not Type
    #
    # : The results begin with the first resource record set in the list
    #   whose name is greater than or equal to `Name`.
    #
    # If you specify Type but not Name
    #
    # : Amazon Route 53 returns the `InvalidInput` error.
    #
    # If you specify both Name and Type
    #
    # : The results begin with the first resource record set in the list
    #   whose name is greater than or equal to `Name`, and whose type is
    #   greater than or equal to `Type`.
    #
    # This action returns the most current version of the records. This
    # includes records that are `PENDING`, and that are not yet available on
    # all Amazon Route 53 DNS servers.
    #
    # To ensure that you get an accurate listing of the resource record sets
    # for a hosted zone at a point in time, do not submit a
    # `ChangeResourceRecordSets` request while you're paging through the
    # results of a `ListResourceRecordSets` request. If you do, some pages
    # may display results without the latest changes while other pages
    # display results with the latest changes.
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the hosted zone that contains the resource record sets that
    #   you want to get.
    #
    # @option params [String] :start_record_name
    #   The first name in the lexicographic ordering of domain names that you
    #   want the `ListResourceRecordSets` request to list.
    #
    # @option params [String] :start_record_type
    #   The type of resource record set to begin the record listing from.
    #
    #   Valid values for basic resource record sets: `A` \| `AAAA` \| `CNAME`
    #   \| `MX` \| `NAPTR` \| `NS` \| `PTR` \| `SOA` \| `SPF` \| `SRV` \|
    #   `TXT`
    #
    #   Values for weighted, latency, geo, and failover resource record sets:
    #   `A` \| `AAAA` \| `CNAME` \| `MX` \| `NAPTR` \| `PTR` \| `SPF` \| `SRV`
    #   \| `TXT`
    #
    #   Values for alias resource record sets:
    #
    #   * **CloudFront distribution**\: A or AAAA
    #
    #   * **Elastic Beanstalk environment that has a regionalized
    #     subdomain**\: A
    #
    #   * **ELB load balancer**\: A \| AAAA
    #
    #   * **Amazon S3 bucket**\: A
    #
    #   Constraint: Specifying `type` without specifying `name` returns an
    #   `InvalidInput` error.
    #
    # @option params [String] :start_record_identifier
    #   *Weighted resource record sets only:* If results were truncated for a
    #   given DNS name and type, specify the value of `NextRecordIdentifier`
    #   from the previous response to get the next resource record set that
    #   has the current DNS name and type.
    #
    # @option params [Integer] :max_items
    #   (Optional) The maximum number of resource records sets to include in
    #   the response body for this request. If the response includes more than
    #   `maxitems` resource record sets, the value of the `IsTruncated`
    #   element in the response is `true`, and the values of the
    #   `NextRecordName` and `NextRecordType` elements in the response
    #   identify the first resource record set in the next group of `maxitems`
    #   resource record sets.
    #
    # @return [Types::ListResourceRecordSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceRecordSetsResponse#resource_record_sets #resource_record_sets} => Array&lt;Types::ResourceRecordSet&gt;
    #   * {Types::ListResourceRecordSetsResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListResourceRecordSetsResponse#next_record_name #next_record_name} => String
    #   * {Types::ListResourceRecordSetsResponse#next_record_type #next_record_type} => String
    #   * {Types::ListResourceRecordSetsResponse#next_record_identifier #next_record_identifier} => String
    #   * {Types::ListResourceRecordSetsResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_record_sets({
    #     hosted_zone_id: "ResourceId", # required
    #     start_record_name: "DNSName",
    #     start_record_type: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #     start_record_identifier: "ResourceRecordSetIdentifier",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_record_sets #=> Array
    #   resp.resource_record_sets[0].name #=> String
    #   resp.resource_record_sets[0].type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.resource_record_sets[0].set_identifier #=> String
    #   resp.resource_record_sets[0].weight #=> Integer
    #   resp.resource_record_sets[0].region #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1", "ap-south-1"
    #   resp.resource_record_sets[0].geo_location.continent_code #=> String
    #   resp.resource_record_sets[0].geo_location.country_code #=> String
    #   resp.resource_record_sets[0].geo_location.subdivision_code #=> String
    #   resp.resource_record_sets[0].failover #=> String, one of "PRIMARY", "SECONDARY"
    #   resp.resource_record_sets[0].ttl #=> Integer
    #   resp.resource_record_sets[0].resource_records #=> Array
    #   resp.resource_record_sets[0].resource_records[0].value #=> String
    #   resp.resource_record_sets[0].alias_target.hosted_zone_id #=> String
    #   resp.resource_record_sets[0].alias_target.dns_name #=> String
    #   resp.resource_record_sets[0].alias_target.evaluate_target_health #=> Boolean
    #   resp.resource_record_sets[0].health_check_id #=> String
    #   resp.resource_record_sets[0].traffic_policy_instance_id #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.next_record_name #=> String
    #   resp.next_record_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.next_record_identifier #=> String
    #   resp.max_items #=> Integer
    #
    # @overload list_resource_record_sets(params = {})
    # @param [Hash] params ({})
    def list_resource_record_sets(params = {}, options = {})
      req = build_request(:list_resource_record_sets, params)
      req.send_request(options)
    end

    # To retrieve a list of your reusable delegation sets, send a `GET`
    # request to the `/2013-04-01/delegationset` resource. The response to
    # this request includes a `DelegationSets` element with zero, one, or
    # multiple `DelegationSet` child elements. By default, the list of
    # delegation sets is displayed on a single page. You can control the
    # length of the page that is displayed by using the `MaxItems`
    # parameter. You can use the `Marker` parameter to control the
    # delegation set that the list begins with.
    #
    # <note markdown="1"> Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to
    # a value greater than 100, Amazon Route 53 returns only the first 100.
    #
    #  </note>
    #
    # @option params [String] :marker
    #   If you're making the second or subsequent call to
    #   `ListReusableDelegationSets`, the `Marker` element matches the value
    #   that you specified in the `marker` parameter in the previous request.
    #
    # @option params [Integer] :max_items
    #   The value that you specified for the `maxitems` parameter in the
    #   request that produced the current response.
    #
    # @return [Types::ListReusableDelegationSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReusableDelegationSetsResponse#delegation_sets #delegation_sets} => Array&lt;Types::DelegationSet&gt;
    #   * {Types::ListReusableDelegationSetsResponse#marker #marker} => String
    #   * {Types::ListReusableDelegationSetsResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListReusableDelegationSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListReusableDelegationSetsResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reusable_delegation_sets({
    #     marker: "PageMarker",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.delegation_sets #=> Array
    #   resp.delegation_sets[0].id #=> String
    #   resp.delegation_sets[0].caller_reference #=> String
    #   resp.delegation_sets[0].name_servers #=> Array
    #   resp.delegation_sets[0].name_servers[0] #=> String
    #   resp.marker #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.next_marker #=> String
    #   resp.max_items #=> Integer
    #
    # @overload list_reusable_delegation_sets(params = {})
    # @param [Hash] params ({})
    def list_reusable_delegation_sets(params = {}, options = {})
      req = build_request(:list_reusable_delegation_sets, params)
      req.send_request(options)
    end

    # Lists tags for one health check or hosted zone.
    #
    # For information about using tags for cost allocation, see [Using Cost
    # Allocation Tags][1] in the *AWS Billing and Cost Management User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [required, String] :resource_type
    #   The type of the resource.
    #
    #   * The resource type for health checks is `healthcheck`.
    #
    #   * The resource type for hosted zones is `hostedzone`.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource for which you want to retrieve tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_tag_set #resource_tag_set} => Types::ResourceTagSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
    #     resource_id: "TagResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tag_set.resource_type #=> String, one of "healthcheck", "hostedzone"
    #   resp.resource_tag_set.resource_id #=> String
    #   resp.resource_tag_set.tags #=> Array
    #   resp.resource_tag_set.tags[0].key #=> String
    #   resp.resource_tag_set.tags[0].value #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists tags for up to 10 health checks or hosted zones.
    #
    # For information about using tags for cost allocation, see [Using Cost
    # Allocation Tags][1] in the *AWS Billing and Cost Management User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [required, String] :resource_type
    #   The type of the resources.
    #
    #   * The resource type for health checks is `healthcheck`.
    #
    #   * The resource type for hosted zones is `hostedzone`.
    #
    # @option params [required, Array<String>] :resource_ids
    #   A complex type that contains the ResourceId element for each resource
    #   for which you want to get a list of tags.
    #
    # @return [Types::ListTagsForResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourcesResponse#resource_tag_sets #resource_tag_sets} => Array&lt;Types::ResourceTagSet&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resources({
    #     resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
    #     resource_ids: ["TagResourceId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tag_sets #=> Array
    #   resp.resource_tag_sets[0].resource_type #=> String, one of "healthcheck", "hostedzone"
    #   resp.resource_tag_sets[0].resource_id #=> String
    #   resp.resource_tag_sets[0].tags #=> Array
    #   resp.resource_tag_sets[0].tags[0].key #=> String
    #   resp.resource_tag_sets[0].tags[0].value #=> String
    #
    # @overload list_tags_for_resources(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resources(params = {}, options = {})
      req = build_request(:list_tags_for_resources, params)
      req.send_request(options)
    end

    # Gets information about the latest version for every traffic policy
    # that is associated with the current AWS account. Send a `GET` request
    # to the `/Amazon Route 53 API version/trafficpolicy` resource.
    #
    # Amazon Route 53 returns a maximum of 100 items in each response. If
    # you have a lot of traffic policies, you can use the `maxitems`
    # parameter to list them in groups of up to 100.
    #
    # The response includes three values that help you navigate from one
    # group of `maxitems` traffic policies to the next:
    #
    # * **IsTruncated**
    #
    #   If the value of `IsTruncated` in the response is `true`, there are
    #   more traffic policies associated with the current AWS account.
    #
    #   If `IsTruncated` is `false`, this response includes the last traffic
    #   policy that is associated with the current account.
    #
    # * **TrafficPolicyIdMarker**
    #
    #   If `IsTruncated` is `true`, `TrafficPolicyIdMarker` is the ID of the
    #   first traffic policy in the next group of `MaxItems` traffic
    #   policies. If you want to list more traffic policies, make another
    #   call to `ListTrafficPolicies`, and specify the value of the
    #   `TrafficPolicyIdMarker` element from the response in the
    #   `TrafficPolicyIdMarker` request parameter.
    #
    #   If `IsTruncated` is `false`, the `TrafficPolicyIdMarker` element is
    #   omitted from the response.
    #
    # * **MaxItems**
    #
    #   The value that you specified for the `MaxItems` parameter in the
    #   request that produced the current response.
    #
    # @option params [String] :traffic_policy_id_marker
    #   (Conditional) For your first request to `ListTrafficPolicies`, do not
    #   include the `TrafficPolicyIdMarker` parameter.
    #
    #   If you have more traffic policies than the value of `MaxItems`,
    #   `ListTrafficPolicies` returns only the first `MaxItems` traffic
    #   policies. To get the next group of `MaxItems` policies, submit another
    #   request to `ListTrafficPolicies`. For the value of
    #   `TrafficPolicyIdMarker`, specify the value of the
    #   `TrafficPolicyIdMarker` element that was returned in the previous
    #   response.
    #
    #   Policies are listed in the order in which they were created.
    #
    # @option params [Integer] :max_items
    #   (Optional) The maximum number of traffic policies to be included in
    #   the response body for this request. If you have more than `MaxItems`
    #   traffic policies, the value of the `IsTruncated` element in the
    #   response is `true`, and the value of the `TrafficPolicyIdMarker`
    #   element is the ID of the first traffic policy in the next group of
    #   `MaxItems` traffic policies.
    #
    # @return [Types::ListTrafficPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrafficPoliciesResponse#traffic_policy_summaries #traffic_policy_summaries} => Array&lt;Types::TrafficPolicySummary&gt;
    #   * {Types::ListTrafficPoliciesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListTrafficPoliciesResponse#traffic_policy_id_marker #traffic_policy_id_marker} => String
    #   * {Types::ListTrafficPoliciesResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policies({
    #     traffic_policy_id_marker: "TrafficPolicyId",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy_summaries #=> Array
    #   resp.traffic_policy_summaries[0].id #=> String
    #   resp.traffic_policy_summaries[0].name #=> String
    #   resp.traffic_policy_summaries[0].type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.traffic_policy_summaries[0].latest_version #=> Integer
    #   resp.traffic_policy_summaries[0].traffic_policy_count #=> Integer
    #   resp.is_truncated #=> Boolean
    #   resp.traffic_policy_id_marker #=> String
    #   resp.max_items #=> Integer
    #
    # @overload list_traffic_policies(params = {})
    # @param [Hash] params ({})
    def list_traffic_policies(params = {}, options = {})
      req = build_request(:list_traffic_policies, params)
      req.send_request(options)
    end

    # Gets information about the traffic policy instances that you created
    # by using the current AWS account.
    #
    # <note markdown="1"> After you submit an `UpdateTrafficPolicyInstance` request, there's a
    # brief delay while Amazon Route 53 creates the resource record sets
    # that are specified in the traffic policy definition. For more
    # information, see the `State` response element.
    #
    #  </note>
    #
    # Send a `GET` request to the `/Amazon Route 53 API
    # version/trafficpolicyinstance` resource.
    #
    # Amazon Route 53 returns a maximum of 100 items in each response. If
    # you have a lot of traffic policy instances, you can use the `MaxItems`
    # parameter to list them in groups of up to 100.
    #
    # The response includes five values that help you navigate from one
    # group of `MaxItems` traffic policy instances to the next:
    #
    # * **IsTruncated**
    #
    #   If the value of `IsTruncated` in the response is `true`, there are
    #   more traffic policy instances associated with the current AWS
    #   account.
    #
    #   If `IsTruncated` is `false`, this response includes the last traffic
    #   policy instance that is associated with the current account.
    #
    # * **MaxItems**
    #
    #   The value that you specified for the `MaxItems` parameter in the
    #   request that produced the current response.
    #
    # * **HostedZoneIdMarker**, **TrafficPolicyInstanceNameMarker**, and
    #   **TrafficPolicyInstanceTypeMarker**
    #
    #   If `IsTruncated` is `true`, these three values in the response
    #   represent the first traffic policy instance in the next group of
    #   `MaxItems` traffic policy instances. To list more traffic policy
    #   instances, make another call to `ListTrafficPolicyInstances`, and
    #   specify these values in the corresponding request parameters.
    #
    #   If `IsTruncated` is `false`, all three elements are omitted from the
    #   response.
    #
    # @option params [String] :hosted_zone_id_marker
    #   For the first request to `ListTrafficPolicyInstances`, omit this
    #   value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`, you
    #   have more traffic policy instances. To get the next group of
    #   `MaxItems` traffic policy instances, submit another
    #   `ListTrafficPolicyInstances` request. For the value of
    #   `HostedZoneIdMarker`, specify the value of `HostedZoneIdMarker` from
    #   the previous response, which is the hosted zone ID of the first
    #   traffic policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get.
    #
    # @option params [String] :traffic_policy_instance_name_marker
    #   For the first request to `ListTrafficPolicyInstances`, omit this
    #   value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceNameMarker` is the name of the first traffic
    #   policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get.
    #
    # @option params [String] :traffic_policy_instance_type_marker
    #   For the first request to `ListTrafficPolicyInstances`, omit this
    #   value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceTypeMarker` is the DNS type of the first traffic
    #   policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get.
    #
    # @option params [Integer] :max_items
    #   The maximum number of traffic policy instances to be included in the
    #   response body for this request. If you have more than `MaxItems`
    #   traffic policy instances, the value of the `IsTruncated` element in
    #   the response is `true`, and the values of `HostedZoneIdMarker`,
    #   `TrafficPolicyInstanceNameMarker`, and
    #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
    #   instance in the next group of `MaxItems` traffic policy instances.
    #
    # @return [Types::ListTrafficPolicyInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrafficPolicyInstancesResponse#traffic_policy_instances #traffic_policy_instances} => Array&lt;Types::TrafficPolicyInstance&gt;
    #   * {Types::ListTrafficPolicyInstancesResponse#hosted_zone_id_marker #hosted_zone_id_marker} => String
    #   * {Types::ListTrafficPolicyInstancesResponse#traffic_policy_instance_name_marker #traffic_policy_instance_name_marker} => String
    #   * {Types::ListTrafficPolicyInstancesResponse#traffic_policy_instance_type_marker #traffic_policy_instance_type_marker} => String
    #   * {Types::ListTrafficPolicyInstancesResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListTrafficPolicyInstancesResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policy_instances({
    #     hosted_zone_id_marker: "ResourceId",
    #     traffic_policy_instance_name_marker: "DNSName",
    #     traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy_instances #=> Array
    #   resp.traffic_policy_instances[0].id #=> String
    #   resp.traffic_policy_instances[0].hosted_zone_id #=> String
    #   resp.traffic_policy_instances[0].name #=> String
    #   resp.traffic_policy_instances[0].ttl #=> Integer
    #   resp.traffic_policy_instances[0].state #=> String
    #   resp.traffic_policy_instances[0].message #=> String
    #   resp.traffic_policy_instances[0].traffic_policy_id #=> String
    #   resp.traffic_policy_instances[0].traffic_policy_version #=> Integer
    #   resp.traffic_policy_instances[0].traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.hosted_zone_id_marker #=> String
    #   resp.traffic_policy_instance_name_marker #=> String
    #   resp.traffic_policy_instance_type_marker #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.is_truncated #=> Boolean
    #   resp.max_items #=> Integer
    #
    # @overload list_traffic_policy_instances(params = {})
    # @param [Hash] params ({})
    def list_traffic_policy_instances(params = {}, options = {})
      req = build_request(:list_traffic_policy_instances, params)
      req.send_request(options)
    end

    # Gets information about the traffic policy instances that you created
    # in a specified hosted zone.
    #
    # <note markdown="1"> After you submit an `UpdateTrafficPolicyInstance` request, there's a
    # brief delay while Amazon Route 53 creates the resource record sets
    # that are specified in the traffic policy definition. For more
    # information, see the `State` response element.
    #
    #  </note>
    #
    # Send a `GET` request to the `/Amazon Route 53 API
    # version/trafficpolicyinstance` resource and include the ID of the
    # hosted zone.
    #
    # Amazon Route 53 returns a maximum of 100 items in each response. If
    # you have a lot of traffic policy instances, you can use the `MaxItems`
    # parameter to list them in groups of up to 100.
    #
    # The response includes four values that help you navigate from one
    # group of `MaxItems` traffic policy instances to the next:
    #
    # * **IsTruncated**
    #
    #   If the value of `IsTruncated in the response is true, there are more
    #   traffic policy instances associated with the current AWS
    #   account.</p> If IsTruncated is false, this response includes the
    #   last traffic policy instance that is associated with the current
    #   account. </li>   MaxItems  The value that you specified for the
    #   MaxItems parameter in the request that produced the current
    #   response.    TrafficPolicyInstanceNameMarker and
    #   TrafficPolicyInstanceTypeMarker  If IsTruncated is true, these two
    #   values in the response represent the first traffic policy instance
    #   in the next group of MaxItems traffic policy instances. To list more
    #   traffic policy instances, make another call to
    #   ListTrafficPolicyInstancesByHostedZone, and specify these values in
    #   the corresponding request parameters. If IsTruncated is false, all
    #   three elements are omitted from the response.  </ul>
    #   `
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the hosted zone for which you want to list traffic policy
    #   instances.
    #
    # @option params [String] :traffic_policy_instance_name_marker
    #   For the first request to `ListTrafficPolicyInstancesByHostedZone`,
    #   omit this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceNameMarker` is the name of the first traffic
    #   policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   omit this value.
    #
    # @option params [String] :traffic_policy_instance_type_marker
    #   For the first request to `ListTrafficPolicyInstancesByHostedZone`,
    #   omit this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceTypeMarker` is the DNS type of the first traffic
    #   policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #
    # @option params [Integer] :max_items
    #   The maximum number of traffic policy instances to be included in the
    #   response body for this request. If you have more than `MaxItems`
    #   traffic policy instances, the value of the `IsTruncated` element in
    #   the response is `true`, and the values of `HostedZoneIdMarker`,
    #   `TrafficPolicyInstanceNameMarker`, and
    #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
    #   instance in the next group of `MaxItems` traffic policy instances.
    #
    # @return [Types::ListTrafficPolicyInstancesByHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#traffic_policy_instances #traffic_policy_instances} => Array&lt;Types::TrafficPolicyInstance&gt;
    #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#traffic_policy_instance_name_marker #traffic_policy_instance_name_marker} => String
    #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#traffic_policy_instance_type_marker #traffic_policy_instance_type_marker} => String
    #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policy_instances_by_hosted_zone({
    #     hosted_zone_id: "ResourceId", # required
    #     traffic_policy_instance_name_marker: "DNSName",
    #     traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy_instances #=> Array
    #   resp.traffic_policy_instances[0].id #=> String
    #   resp.traffic_policy_instances[0].hosted_zone_id #=> String
    #   resp.traffic_policy_instances[0].name #=> String
    #   resp.traffic_policy_instances[0].ttl #=> Integer
    #   resp.traffic_policy_instances[0].state #=> String
    #   resp.traffic_policy_instances[0].message #=> String
    #   resp.traffic_policy_instances[0].traffic_policy_id #=> String
    #   resp.traffic_policy_instances[0].traffic_policy_version #=> Integer
    #   resp.traffic_policy_instances[0].traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.traffic_policy_instance_name_marker #=> String
    #   resp.traffic_policy_instance_type_marker #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.is_truncated #=> Boolean
    #   resp.max_items #=> Integer
    #
    # @overload list_traffic_policy_instances_by_hosted_zone(params = {})
    # @param [Hash] params ({})
    def list_traffic_policy_instances_by_hosted_zone(params = {}, options = {})
      req = build_request(:list_traffic_policy_instances_by_hosted_zone, params)
      req.send_request(options)
    end

    # Gets information about the traffic policy instances that you created
    # by using a specify traffic policy version.
    #
    # <note markdown="1"> After you submit a `CreateTrafficPolicyInstance` or an
    # `UpdateTrafficPolicyInstance` request, there's a brief delay while
    # Amazon Route 53 creates the resource record sets that are specified in
    # the traffic policy definition. For more information, see the `State`
    # response element.
    #
    #  </note>
    #
    # Send a `GET` request to the `/Route 53 API
    # version/trafficpolicyinstance` resource and include the ID and version
    # of the traffic policy.
    #
    # Amazon Route 53 returns a maximum of 100 items in each response. If
    # you have a lot of traffic policy instances, you can use the `MaxItems`
    # parameter to list them in groups of up to 100.
    #
    # The response includes five values that help you navigate from one
    # group of `MaxItems` traffic policy instances to the next:
    #
    # * **IsTruncated**
    #
    #   If the value of `IsTruncated` in the response is `true`, there are
    #   more traffic policy instances associated with the specified traffic
    #   policy.
    #
    #   If `IsTruncated` is `false`, this response includes the last traffic
    #   policy instance that is associated with the specified traffic
    #   policy.
    #
    # * **MaxItems**
    #
    #   The value that you specified for the `MaxItems` parameter in the
    #   request that produced the current response.
    #
    # * **HostedZoneIdMarker**, **TrafficPolicyInstanceNameMarker**, and
    #   **TrafficPolicyInstanceTypeMarker**
    #
    #   If `IsTruncated` is `true`, these values in the response represent
    #   the first traffic policy instance in the next group of `MaxItems`
    #   traffic policy instances. To list more traffic policy instances,
    #   make another call to `ListTrafficPolicyInstancesByPolicy`, and
    #   specify these values in the corresponding request parameters.
    #
    #   If `IsTruncated` is `false`, all three elements are omitted from the
    #   response.
    #
    # @option params [required, String] :traffic_policy_id
    #   The ID of the traffic policy for which you want to list traffic policy
    #   instances.
    #
    # @option params [required, Integer] :traffic_policy_version
    #   The version of the traffic policy for which you want to list traffic
    #   policy instances. The version must be associated with the traffic
    #   policy that is specified by `TrafficPolicyId`.
    #
    # @option params [String] :hosted_zone_id_marker
    #   For the first request to `ListTrafficPolicyInstancesByPolicy`, omit
    #   this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `HostedZoneIdMarker` is the ID of the hosted zone for the first
    #   traffic policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   omit this value.
    #
    # @option params [String] :traffic_policy_instance_name_marker
    #   For the first request to `ListTrafficPolicyInstancesByPolicy`, omit
    #   this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceNameMarker` is the name of the first traffic
    #   policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   omit this value.
    #
    # @option params [String] :traffic_policy_instance_type_marker
    #   For the first request to `ListTrafficPolicyInstancesByPolicy`, omit
    #   this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceTypeMarker` is the DNS type of the first traffic
    #   policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #
    # @option params [Integer] :max_items
    #   The maximum number of traffic policy instances to be included in the
    #   response body for this request. If you have more than `MaxItems`
    #   traffic policy instances, the value of the `IsTruncated` element in
    #   the response is `true`, and the values of `HostedZoneIdMarker`,
    #   `TrafficPolicyInstanceNameMarker`, and
    #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
    #   instance in the next group of `MaxItems` traffic policy instances.
    #
    # @return [Types::ListTrafficPolicyInstancesByPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#traffic_policy_instances #traffic_policy_instances} => Array&lt;Types::TrafficPolicyInstance&gt;
    #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#hosted_zone_id_marker #hosted_zone_id_marker} => String
    #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#traffic_policy_instance_name_marker #traffic_policy_instance_name_marker} => String
    #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#traffic_policy_instance_type_marker #traffic_policy_instance_type_marker} => String
    #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policy_instances_by_policy({
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     traffic_policy_version: 1, # required
    #     hosted_zone_id_marker: "ResourceId",
    #     traffic_policy_instance_name_marker: "DNSName",
    #     traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy_instances #=> Array
    #   resp.traffic_policy_instances[0].id #=> String
    #   resp.traffic_policy_instances[0].hosted_zone_id #=> String
    #   resp.traffic_policy_instances[0].name #=> String
    #   resp.traffic_policy_instances[0].ttl #=> Integer
    #   resp.traffic_policy_instances[0].state #=> String
    #   resp.traffic_policy_instances[0].message #=> String
    #   resp.traffic_policy_instances[0].traffic_policy_id #=> String
    #   resp.traffic_policy_instances[0].traffic_policy_version #=> Integer
    #   resp.traffic_policy_instances[0].traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.hosted_zone_id_marker #=> String
    #   resp.traffic_policy_instance_name_marker #=> String
    #   resp.traffic_policy_instance_type_marker #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.is_truncated #=> Boolean
    #   resp.max_items #=> Integer
    #
    # @overload list_traffic_policy_instances_by_policy(params = {})
    # @param [Hash] params ({})
    def list_traffic_policy_instances_by_policy(params = {}, options = {})
      req = build_request(:list_traffic_policy_instances_by_policy, params)
      req.send_request(options)
    end

    # Gets information about all of the versions for a specified traffic
    # policy.
    #
    # Send a `GET` request to the `/Amazon Route 53 API
    # version/trafficpolicy` resource and specify the ID of the traffic
    # policy for which you want to list versions.
    #
    # Amazon Route 53 returns a maximum of 100 items in each response. If
    # you have a lot of traffic policies, you can use the `maxitems`
    # parameter to list them in groups of up to 100.
    #
    # The response includes three values that help you navigate from one
    # group of `maxitems` traffic policies to the next:
    #
    # * **IsTruncated**
    #
    #   If the value of `IsTruncated` in the response is `true`, there are
    #   more traffic policy versions associated with the specified traffic
    #   policy.
    #
    #   If `IsTruncated` is `false`, this response includes the last traffic
    #   policy version that is associated with the specified traffic policy.
    #
    # * **TrafficPolicyVersionMarker**
    #
    #   The ID of the next traffic policy version that is associated with
    #   the current AWS account. If you want to list more traffic policies,
    #   make another call to `ListTrafficPolicyVersions`, and specify the
    #   value of the `TrafficPolicyVersionMarker` element in the
    #   `TrafficPolicyVersionMarker` request parameter.
    #
    #   If `IsTruncated` is `false`, Amazon Route 53 omits the
    #   `TrafficPolicyVersionMarker` element from the response.
    #
    # * **MaxItems**
    #
    #   The value that you specified for the `MaxItems` parameter in the
    #   request that produced the current response.
    #
    # @option params [required, String] :id
    #   Specify the value of `Id` of the traffic policy for which you want to
    #   list all versions.
    #
    # @option params [String] :traffic_policy_version_marker
    #   For your first request to `ListTrafficPolicyVersions`, do not include
    #   the `TrafficPolicyVersionMarker` parameter.
    #
    #   If you have more traffic policy versions than the value of `MaxItems`,
    #   `ListTrafficPolicyVersions` returns only the first group of `MaxItems`
    #   versions. To get the next group of `MaxItems` traffic policy versions,
    #   submit another request to `ListTrafficPolicyVersions`. For the value
    #   of `TrafficPolicyVersionMarker`, specify the value of the
    #   `TrafficPolicyVersionMarker` element that was returned in the previous
    #   response.
    #
    #   Traffic policy versions are listed in sequential order.
    #
    # @option params [Integer] :max_items
    #   The maximum number of traffic policy versions that you want Amazon
    #   Route 53 to include in the response body for this request. If the
    #   specified traffic policy has more than `MaxItems` versions, the value
    #   of the `IsTruncated` element in the response is `true`, and the value
    #   of the `TrafficPolicyVersionMarker` element is the ID of the first
    #   version in the next group of `MaxItems` traffic policy versions.
    #
    # @return [Types::ListTrafficPolicyVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrafficPolicyVersionsResponse#traffic_policies #traffic_policies} => Array&lt;Types::TrafficPolicy&gt;
    #   * {Types::ListTrafficPolicyVersionsResponse#is_truncated #is_truncated} => Boolean
    #   * {Types::ListTrafficPolicyVersionsResponse#traffic_policy_version_marker #traffic_policy_version_marker} => String
    #   * {Types::ListTrafficPolicyVersionsResponse#max_items #max_items} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policy_versions({
    #     id: "TrafficPolicyId", # required
    #     traffic_policy_version_marker: "TrafficPolicyVersionMarker",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policies #=> Array
    #   resp.traffic_policies[0].id #=> String
    #   resp.traffic_policies[0].version #=> Integer
    #   resp.traffic_policies[0].name #=> String
    #   resp.traffic_policies[0].type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.traffic_policies[0].document #=> String
    #   resp.traffic_policies[0].comment #=> String
    #   resp.is_truncated #=> Boolean
    #   resp.traffic_policy_version_marker #=> String
    #   resp.max_items #=> Integer
    #
    # @overload list_traffic_policy_versions(params = {})
    # @param [Hash] params ({})
    def list_traffic_policy_versions(params = {}, options = {})
      req = build_request(:list_traffic_policy_versions, params)
      req.send_request(options)
    end

    # Gets a list of the VPCs that were created by other accounts and that
    # can be associated with a specified hosted zone because you've
    # submitted one or more `CreateVPCAssociationAuthorization` requests.
    #
    # Send a `GET` request to the `/2013-04-01/hostedzone/hosted zone
    # ID/authorizevpcassociation` resource. The response to this request
    # includes a `VPCs` element with a `VPC` child element for each VPC that
    # can be associated with the hosted zone.
    #
    # Amazon Route 53 returns up to 50 VPCs per page. To return fewer VPCs
    # per page, include the `MaxResults` parameter:
    #
    # `/2013-04-01/hostedzone/hosted zone
    # ID/authorizevpcassociation?MaxItems=VPCs per page `
    #
    # If the response includes a `NextToken` element, there are more VPCs to
    # list. To get the next page of VPCs, submit another
    # `ListVPCAssociationAuthorizations` request, and include the value of
    # the `NextToken` element from the response in the `NextToken` request
    # parameter:
    #
    # `/2013-04-01/hostedzone/hosted zone
    # ID/authorizevpcassociation?MaxItems=VPCs per page&NextToken= `
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the hosted zone for which you want a list of VPCs that can
    #   be associated with the hosted zone.
    #
    # @option params [String] :next_token
    #   *Optional*\: If a response includes a `NextToken` element, there are
    #   more VPCs that can be associated with the specified hosted zone. To
    #   get the next page of results, submit another request, and include the
    #   value of the `NextToken` element in from the response in the
    #   `NextToken` parameter in another `ListVPCAssociationAuthorizations`
    #   request.
    #
    # @option params [String] :max_results
    #   *Optional*\: An integer that specifies the maximum number of VPCs that
    #   you want Amazon Route 53 to return.
    #
    # @return [Types::ListVPCAssociationAuthorizationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVPCAssociationAuthorizationsResponse#hosted_zone_id #hosted_zone_id} => String
    #   * {Types::ListVPCAssociationAuthorizationsResponse#next_token #next_token} => String
    #   * {Types::ListVPCAssociationAuthorizationsResponse#vp_cs #vp_cs} => Array&lt;Types::VPC&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_association_authorizations({
    #     hosted_zone_id: "ResourceId", # required
    #     next_token: "PaginationToken",
    #     max_results: "MaxResults",
    #   })
    #
    # @example Response structure
    #
    #   resp.hosted_zone_id #=> String
    #   resp.next_token #=> String
    #   resp.vp_cs #=> Array
    #   resp.vp_cs[0].vpc_region #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1"
    #   resp.vp_cs[0].vpc_id #=> String
    #
    # @overload list_vpc_association_authorizations(params = {})
    # @param [Hash] params ({})
    def list_vpc_association_authorizations(params = {}, options = {})
      req = build_request(:list_vpc_association_authorizations, params)
      req.send_request(options)
    end

    # Gets the value that Amazon Route 53 returns in response to a DNS
    # request for a specified record name and type. You can optionally
    # specify the IP address of a DNS resolver, an EDNS0 client subnet IP
    # address, and a subnet mask.
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the hosted zone that you want Amazon Route 53 to simulate a
    #   query for.
    #
    # @option params [required, String] :record_name
    #   The name of the resource record set that you want Amazon Route 53 to
    #   simulate a query for.
    #
    # @option params [required, String] :record_type
    #   The type of the resource record set.
    #
    # @option params [String] :resolver_ip
    #   If you want to simulate a request from a specific DNS resolver,
    #   specify the IP address for that resolver. If you omit this value,
    #   `TestDnsAnswer` uses the IP address of a DNS resolver in the AWS US
    #   East region.
    #
    # @option params [String] :edns0_client_subnet_ip
    #   If the resolver that you specified for resolverip supports EDNS0,
    #   specify the IP address of a client in the applicable location.
    #
    # @option params [String] :edns0_client_subnet_mask
    #   If you specify an IP address for `edns0clientsubnetip`, you can
    #   optionally specify the number of bits of the IP address that you want
    #   the checking tool to include in the DNS query. For example, if you
    #   specify `192.0.2.44` for `edns0clientsubnetip` and `24` for
    #   `edns0clientsubnetmask`, the checking tool will simulate a request
    #   from 192.0.2.0/24. The default value is 24 bits.
    #
    # @return [Types::TestDNSAnswerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestDNSAnswerResponse#nameserver #nameserver} => String
    #   * {Types::TestDNSAnswerResponse#record_name #record_name} => String
    #   * {Types::TestDNSAnswerResponse#record_type #record_type} => String
    #   * {Types::TestDNSAnswerResponse#record_data #record_data} => Array&lt;String&gt;
    #   * {Types::TestDNSAnswerResponse#response_code #response_code} => String
    #   * {Types::TestDNSAnswerResponse#protocol #protocol} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_dns_answer({
    #     hosted_zone_id: "ResourceId", # required
    #     record_name: "DNSName", # required
    #     record_type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #     resolver_ip: "IPAddress",
    #     edns0_client_subnet_ip: "IPAddress",
    #     edns0_client_subnet_mask: "SubnetMask",
    #   })
    #
    # @example Response structure
    #
    #   resp.nameserver #=> String
    #   resp.record_name #=> String
    #   resp.record_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.record_data #=> Array
    #   resp.record_data[0] #=> String
    #   resp.response_code #=> String
    #   resp.protocol #=> String
    #
    # @overload test_dns_answer(params = {})
    # @param [Hash] params ({})
    def test_dns_answer(params = {}, options = {})
      req = build_request(:test_dns_answer, params)
      req.send_request(options)
    end

    # Updates an existing health check.
    #
    # Send a `POST` request to the `/2013-04-01/healthcheck/health check ID
    # ` resource. The request body must include a document with an
    # `UpdateHealthCheckRequest` element. For more information about
    # updating health checks, see [Creating, Updating, and Deleting Health
    # Checks][1] in the Amazon Route 53 Developer Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html
    #
    # @option params [required, String] :health_check_id
    #   The ID for the health check for which you want detailed information.
    #   When you created the health check, `CreateHealthCheck` returned the ID
    #   in the response, in the `HealthCheckId` element.
    #
    # @option params [Integer] :health_check_version
    #   A sequential counter that Amazon Route 53 sets to `1` when you create
    #   a health check and increments by `1` each time you update settings for
    #   the health check.
    #
    #   We recommend that you use `GetHealthCheck` or `ListHealthChecks` to
    #   get the current value of `HealthCheckVersion` for the health check
    #   that you want to update, and that you include that value in your
    #   `UpdateHealthCheck` request. This prevents Amazon Route 53 from
    #   overwriting an intervening update:
    #
    #   * f the value in the `UpdateHealthCheck` request matches the value of
    #     `HealthCheckVersion` in the health check, Amazon Route 53 updates
    #     the health check with the new settings.
    #
    #   * If the value of `HealthCheckVersion` in the health check is greater,
    #     the health check was changed after you got the version number.
    #     Amazon Route 53 does not update the health check, and it returns a
    #     `HealthCheckVersionMismatch` error.
    #
    # @option params [String] :ip_address
    #   The IPv4 or IPv6 IP address for the endpoint that you want Amazon
    #   Route 53 to perform health checks on. If you don't specify a value
    #   for `IPAddress`, Amazon Route 53 sends a DNS request to resolve the
    #   domain name that you specify in `FullyQualifiedDomainName` at the
    #   interval that you specify in `RequestInterval`. Using an IP address
    #   that is returned by DNS, Amazon Route 53 then checks the health of the
    #   endpoint.
    #
    #   If the endpoint is an EC2 instance, we recommend that you create an
    #   Elastic IP address, associate it with your EC2 instance, and specify
    #   the Elastic IP address for `IPAddress`. This ensures that the IP
    #   address of your instance never changes. For more information, see
    #   [Elastic IP Addresses (EIP)][1] in the *Amazon EC2 User Guide for
    #   Linux Instances*.
    #
    #   <note markdown="1"> If a health check already has a value for `IPAddress`, you can change
    #   the value. However, you can't update an existing health check to add
    #   or remove the value of `IPAddress`.
    #
    #    </note>
    #
    #   For more information, see
    #   UpdateHealthCheckRequest$FullyQualifiedDomainName.
    #
    #   Constraints: Amazon Route 53 can't check the health of endpoints for
    #   which the IP address is in local, private, non-routable, or multicast
    #   ranges. For more information about IP addresses for which you can't
    #   create health checks, see the following documents:
    #
    #   * [RFC 5735, Special Use IPv4 Addresses][2]
    #
    #   * [RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space][3]
    #
    #   * [RFC 5156, Special-Use IPv6 Addresses][4]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #   [2]: https://tools.ietf.org/html/rfc5735
    #   [3]: https://tools.ietf.org/html/rfc6598
    #   [4]: https://tools.ietf.org/html/rfc5156
    #
    # @option params [Integer] :port
    #   The port on the endpoint on which you want Amazon Route 53 to perform
    #   health checks.
    #
    # @option params [String] :resource_path
    #   The path that you want Amazon Route 53 to request when performing
    #   health checks. The path can be any value for which your endpoint will
    #   return an HTTP status code of 2xx or 3xx when the endpoint is healthy,
    #   for example the file /docs/route53-health-check.html.
    #
    #   Specify this value only if you want to change it.
    #
    # @option params [String] :fully_qualified_domain_name
    #   Amazon Route 53 behavior depends on whether you specify a value for
    #   `IPAddress`.
    #
    #   <note markdown="1"> If a health check already has a value for `IPAddress`, you can change
    #   the value. However, you can't update an existing health check to add
    #   or remove the value of `IPAddress`.
    #
    #    </note>
    #
    #   **If you specify a value for** `IPAddress`\:
    #
    #   Amazon Route 53 sends health check requests to the specified IPv4 or
    #   IPv6 address and passes the value of `FullyQualifiedDomainName` in the
    #   `Host` header for all health checks except TCP health checks. This is
    #   typically the fully qualified DNS name of the endpoint on which you
    #   want Amazon Route 53 to perform health checks.
    #
    #   When Amazon Route 53 checks the health of an endpoint, here is how it
    #   constructs the `Host` header:
    #
    #   * If you specify a value of `80` for `Port` and `HTTP` or
    #     `HTTP_STR_MATCH` for `Type`, Amazon Route 53 passes the value of
    #     `FullyQualifiedDomainName` to the endpoint in the `Host` header.
    #
    #   * If you specify a value of `443` for `Port` and `HTTPS` or
    #     `HTTPS_STR_MATCH` for `Type`, Amazon Route 53 passes the value of
    #     `FullyQualifiedDomainName` to the endpoint in the Host header.
    #
    #   * If you specify another value for `Port` and any value except `TCP`
    #     for `Type`, Amazon Route 53 passes <i>
    #     <code>FullyQualifiedDomainName</code>\:<code>Port</code> </i> to the
    #     endpoint in the Host header.
    #
    #   If you don't specify a value for `FullyQualifiedDomainName`, Amazon
    #   Route 53 substitutes the value of `IPAddress` in the `Host` header in
    #   each of the above cases.
    #
    #   **If you don't specify a value for** `IPAddress`\:
    #
    #   If you don't specify a value for `IPAddress`, Amazon Route 53 sends a
    #   DNS request to the domain that you specify in
    #   `FullyQualifiedDomainName` at the interval you specify in
    #   `RequestInterval`. Using an IPv4 address that is returned by DNS,
    #   Amazon Route 53 then checks the health of the endpoint.
    #
    #   <note markdown="1"> If you don't specify a value for `IPAddress`, Amazon Route 53 uses
    #   only IPv4 to send health checks to the endpoint. If there's no
    #   resource record set with a type of A for the name that you specify for
    #   `FullyQualifiedDomainName`, the health check fails with a "DNS
    #   resolution failed" error.
    #
    #    </note>
    #
    #   If you want to check the health of weighted, latency, or failover
    #   resource record sets and you choose to specify the endpoint only by
    #   `FullyQualifiedDomainName`, we recommend that you create a separate
    #   health check for each endpoint. For example, create a health check for
    #   each HTTP server that is serving content for www.example.com. For the
    #   value of `FullyQualifiedDomainName`, specify the domain name of the
    #   server (such as `us-east-1-www.example.com`), not the name of the
    #   resource record sets (www.example.com).
    #
    #   In this configuration, if the value of `FullyQualifiedDomainName`
    #   matches the name of the resource record sets and you then associate
    #   the health check with those resource record sets, health check results
    #   will be unpredictable.
    #
    #   In addition, if the value of `Type` is `HTTP`, `HTTPS`,
    #   `HTTP_STR_MATCH`, or `HTTPS_STR_MATCH`, Amazon Route 53 passes the
    #   value of `FullyQualifiedDomainName` in the `Host` header, as it does
    #   when you specify a value for `IPAddress`. If the value of `Type` is
    #   `TCP`, Amazon Route 53 doesn't pass a `Host` header.
    #
    # @option params [String] :search_string
    #   If the value of `Type` is `HTTP_STR_MATCH` or `HTTP_STR_MATCH`, the
    #   string that you want Amazon Route 53 to search for in the response
    #   body from the specified resource. If the string appears in the
    #   response body, Amazon Route 53 considers the resource healthy. (You
    #   can't change the value of `Type` when you update a health check.)
    #
    # @option params [Integer] :failure_threshold
    #   The number of consecutive health checks that an endpoint must pass or
    #   fail for Amazon Route 53 to change the current status of the endpoint
    #   from unhealthy to healthy or vice versa. For more information, see
    #   [How Amazon Route 53 Determines Whether an Endpoint Is Healthy][1] in
    #   the *Amazon Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html
    #
    # @option params [Boolean] :inverted
    #   Specify whether you want Amazon Route 53 to invert the status of a
    #   health check, for example, to consider a health check unhealthy when
    #   it otherwise would be considered healthy.
    #
    # @option params [Integer] :health_threshold
    #   The number of child health checks that are associated with a
    #   `CALCULATED` health that Amazon Route 53 must consider healthy for the
    #   `CALCULATED` health check to be considered healthy. To specify the
    #   child health checks that you want to associate with a `CALCULATED`
    #   health check, use the `ChildHealthChecks` and `ChildHealthCheck`
    #   elements.
    #
    #   Note the following:
    #
    #   * If you specify a number greater than the number of child health
    #     checks, Amazon Route 53 always considers this health check to be
    #     unhealthy.
    #
    #   * If you specify `0`, Amazon Route 53 always considers this health
    #     check to be healthy.
    #
    # @option params [Array<String>] :child_health_checks
    #   A complex type that contains one `ChildHealthCheck` element for each
    #   health check that you want to associate with a `CALCULATED` health
    #   check.
    #
    # @option params [Boolean] :enable_sni
    #   Specify whether you want Amazon Route 53 to send the value of
    #   `FullyQualifiedDomainName` to the endpoint in the `client_hello`
    #   message during `TLS` negotiation. This allows the endpoint to respond
    #   to `HTTPS` health check requests with the applicable SSL/TLS
    #   certificate.
    #
    #   Some endpoints require that HTTPS requests include the host name in
    #   the `client_hello` message. If you don't enable SNI, the status of
    #   the health check will be SSL alert `handshake_failure`. A health check
    #   can also have that status for other reasons. If SNI is enabled and
    #   you're still getting the error, check the SSL/TLS configuration on
    #   your endpoint and confirm that your certificate is valid.
    #
    #   The SSL/TLS certificate on your endpoint includes a domain name in the
    #   `Common Name` field and possibly several more in the `Subject
    #   Alternative Names` field. One of the domain names in the certificate
    #   should match the value that you specify for
    #   `FullyQualifiedDomainName`. If the endpoint responds to the
    #   `client_hello` message with a certificate that does not include the
    #   domain name that you specified in `FullyQualifiedDomainName`, a health
    #   checker will retry the handshake. In the second attempt, the health
    #   checker will omit `FullyQualifiedDomainName` from the `client_hello`
    #   message.
    #
    # @option params [Array<String>] :regions
    #   A complex type that contains one Region element for each region from
    #   which you want Amazon Route 53 health checkers to check the specified
    #   endpoint.
    #
    # @option params [Types::AlarmIdentifier] :alarm_identifier
    #   A complex type that identifies the CloudWatch alarm that you want
    #   Amazon Route 53 health checkers to use to determine whether this
    #   health check is healthy.
    #
    # @option params [String] :insufficient_data_health_status
    #   When CloudWatch has insufficient data about the metric to determine
    #   the alarm state, the status that you want Amazon Route 53 to assign to
    #   the health check:
    #
    #   * `Healthy`\: Amazon Route 53 considers the health check to be
    #     healthy.
    #
    #   * `Unhealthy`\: Amazon Route 53 considers the health check to be
    #     unhealthy.
    #
    #   * `LastKnownStatus`\: Amazon Route 53 uses the status of the health
    #     check from the last time CloudWatch had sufficient data to determine
    #     the alarm state. For new health checks that have no last known
    #     status, the default status for the health check is healthy.
    #
    # @return [Types::UpdateHealthCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateHealthCheckResponse#health_check #health_check} => Types::HealthCheck
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_health_check({
    #     health_check_id: "HealthCheckId", # required
    #     health_check_version: 1,
    #     ip_address: "IPAddress",
    #     port: 1,
    #     resource_path: "ResourcePath",
    #     fully_qualified_domain_name: "FullyQualifiedDomainName",
    #     search_string: "SearchString",
    #     failure_threshold: 1,
    #     inverted: false,
    #     health_threshold: 1,
    #     child_health_checks: ["HealthCheckId"],
    #     enable_sni: false,
    #     regions: ["us-east-1"], # accepts us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1
    #     alarm_identifier: {
    #       region: "us-east-1", # required, accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
    #       name: "AlarmName", # required
    #     },
    #     insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
    #   })
    #
    # @example Response structure
    #
    #   resp.health_check.id #=> String
    #   resp.health_check.caller_reference #=> String
    #   resp.health_check.health_check_config.ip_address #=> String
    #   resp.health_check.health_check_config.port #=> Integer
    #   resp.health_check.health_check_config.type #=> String, one of "HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC"
    #   resp.health_check.health_check_config.resource_path #=> String
    #   resp.health_check.health_check_config.fully_qualified_domain_name #=> String
    #   resp.health_check.health_check_config.search_string #=> String
    #   resp.health_check.health_check_config.request_interval #=> Integer
    #   resp.health_check.health_check_config.failure_threshold #=> Integer
    #   resp.health_check.health_check_config.measure_latency #=> Boolean
    #   resp.health_check.health_check_config.inverted #=> Boolean
    #   resp.health_check.health_check_config.health_threshold #=> Integer
    #   resp.health_check.health_check_config.child_health_checks #=> Array
    #   resp.health_check.health_check_config.child_health_checks[0] #=> String
    #   resp.health_check.health_check_config.enable_sni #=> Boolean
    #   resp.health_check.health_check_config.regions #=> Array
    #   resp.health_check.health_check_config.regions[0] #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"
    #   resp.health_check.health_check_config.alarm_identifier.region #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1"
    #   resp.health_check.health_check_config.alarm_identifier.name #=> String
    #   resp.health_check.health_check_config.insufficient_data_health_status #=> String, one of "Healthy", "Unhealthy", "LastKnownStatus"
    #   resp.health_check.health_check_version #=> Integer
    #   resp.health_check.cloud_watch_alarm_configuration.evaluation_periods #=> Integer
    #   resp.health_check.cloud_watch_alarm_configuration.threshold #=> Float
    #   resp.health_check.cloud_watch_alarm_configuration.comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
    #   resp.health_check.cloud_watch_alarm_configuration.period #=> Integer
    #   resp.health_check.cloud_watch_alarm_configuration.metric_name #=> String
    #   resp.health_check.cloud_watch_alarm_configuration.namespace #=> String
    #   resp.health_check.cloud_watch_alarm_configuration.statistic #=> String, one of "Average", "Sum", "SampleCount", "Maximum", "Minimum"
    #   resp.health_check.cloud_watch_alarm_configuration.dimensions #=> Array
    #   resp.health_check.cloud_watch_alarm_configuration.dimensions[0].name #=> String
    #   resp.health_check.cloud_watch_alarm_configuration.dimensions[0].value #=> String
    #
    # @overload update_health_check(params = {})
    # @param [Hash] params ({})
    def update_health_check(params = {}, options = {})
      req = build_request(:update_health_check, params)
      req.send_request(options)
    end

    # Updates the hosted zone comment. Send a `POST` request to the
    # `/2013-04-01/hostedzone/hosted zone ID ` resource.
    #
    # @option params [required, String] :id
    #   The ID for the hosted zone for which you want to update the comment.
    #
    # @option params [String] :comment
    #   The new comment for the hosted zone. If you don't specify a value for
    #   `Comment`, Amazon Route 53 deletes the existing value of the `Comment`
    #   element, if any.
    #
    # @return [Types::UpdateHostedZoneCommentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateHostedZoneCommentResponse#hosted_zone #hosted_zone} => Types::HostedZone
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hosted_zone_comment({
    #     id: "ResourceId", # required
    #     comment: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.hosted_zone.id #=> String
    #   resp.hosted_zone.name #=> String
    #   resp.hosted_zone.caller_reference #=> String
    #   resp.hosted_zone.config.comment #=> String
    #   resp.hosted_zone.config.private_zone #=> Boolean
    #   resp.hosted_zone.resource_record_set_count #=> Integer
    #
    # @overload update_hosted_zone_comment(params = {})
    # @param [Hash] params ({})
    def update_hosted_zone_comment(params = {}, options = {})
      req = build_request(:update_hosted_zone_comment, params)
      req.send_request(options)
    end

    # Updates the comment for a specified traffic policy version.
    #
    # Send a `POST` request to the `/2013-04-01/trafficpolicy/` resource.
    #
    # The request body must include a document with an
    # `UpdateTrafficPolicyCommentRequest` element.
    #
    # @option params [required, String] :id
    #   The value of `Id` for the traffic policy for which you want to update
    #   the comment.
    #
    # @option params [required, Integer] :version
    #   The value of `Version` for the traffic policy for which you want to
    #   update the comment.
    #
    # @option params [required, String] :comment
    #   The new comment for the specified traffic policy and version.
    #
    # @return [Types::UpdateTrafficPolicyCommentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTrafficPolicyCommentResponse#traffic_policy #traffic_policy} => Types::TrafficPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_traffic_policy_comment({
    #     id: "TrafficPolicyId", # required
    #     version: 1, # required
    #     comment: "TrafficPolicyComment", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy.id #=> String
    #   resp.traffic_policy.version #=> Integer
    #   resp.traffic_policy.name #=> String
    #   resp.traffic_policy.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #   resp.traffic_policy.document #=> String
    #   resp.traffic_policy.comment #=> String
    #
    # @overload update_traffic_policy_comment(params = {})
    # @param [Hash] params ({})
    def update_traffic_policy_comment(params = {}, options = {})
      req = build_request(:update_traffic_policy_comment, params)
      req.send_request(options)
    end

    # Updates the resource record sets in a specified hosted zone that were
    # created based on the settings in a specified traffic policy version.
    #
    # Send a `POST` request to the
    # `/2013-04-01/trafficpolicyinstance/traffic policy ID ` resource. The
    # request body must include a document with an
    # `UpdateTrafficPolicyInstanceRequest` element.
    #
    # When you update a traffic policy instance, Amazon Route 53 continues
    # to respond to DNS queries for the root resource record set name (such
    # as example.com) while it replaces one group of resource record sets
    # with another. Amazon Route 53 performs the following operations:
    #
    # 1.  Amazon Route 53 creates a new group of resource record sets based
    #     on the specified traffic policy. This is true regardless of how
    #     substantial the differences are between the existing resource
    #     record sets and the new resource record sets.
    #
    # 2.  When all of the new resource record sets have been created, Amazon
    #     Route 53 starts to respond to DNS queries for the root resource
    #     record set name (such as example.com) by using the new resource
    #     record sets.
    #
    # 3.  Amazon Route 53 deletes the old group of resource record sets that
    #     are associated with the root resource record set name.
    #
    # @option params [required, String] :id
    #   The ID of the traffic policy instance that you want to update.
    #
    # @option params [required, Integer] :ttl
    #   The TTL that you want Amazon Route 53 to assign to all of the updated
    #   resource record sets.
    #
    # @option params [required, String] :traffic_policy_id
    #   The ID of the traffic policy that you want Amazon Route 53 to use to
    #   update resource record sets for the specified traffic policy instance.
    #
    # @option params [required, Integer] :traffic_policy_version
    #   The version of the traffic policy that you want Amazon Route 53 to use
    #   to update resource record sets for the specified traffic policy
    #   instance.
    #
    # @return [Types::UpdateTrafficPolicyInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTrafficPolicyInstanceResponse#traffic_policy_instance #traffic_policy_instance} => Types::TrafficPolicyInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_traffic_policy_instance({
    #     id: "TrafficPolicyInstanceId", # required
    #     ttl: 1, # required
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     traffic_policy_version: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy_instance.id #=> String
    #   resp.traffic_policy_instance.hosted_zone_id #=> String
    #   resp.traffic_policy_instance.name #=> String
    #   resp.traffic_policy_instance.ttl #=> Integer
    #   resp.traffic_policy_instance.state #=> String
    #   resp.traffic_policy_instance.message #=> String
    #   resp.traffic_policy_instance.traffic_policy_id #=> String
    #   resp.traffic_policy_instance.traffic_policy_version #=> Integer
    #   resp.traffic_policy_instance.traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA"
    #
    # @overload update_traffic_policy_instance(params = {})
    # @param [Hash] params ({})
    def update_traffic_policy_instance(params = {}, options = {})
      req = build_request(:update_traffic_policy_instance, params)
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
      context[:gem_name] = 'aws-sdk-route53'
      context[:gem_version] = '1.0.0.rc1'
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
    # | waiter_name                  | params        | :delay   | :max_attempts |
    # | ---------------------------- | ------------- | -------- | ------------- |
    # | resource_record_sets_changed | {#get_change} | 30       | 60            |
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
        resource_record_sets_changed: Waiters::ResourceRecordSetsChanged
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
