# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Route53
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :route53

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::RestXml)

      # @!group API Operations

      # This action associates a VPC with an hosted zone.
      #
      # To associate a VPC with an hosted zone, send a `POST` request to the
      # `/Route 53 API version/hostedzone/hosted zone ID/associatevpc`
      # resource. The request body must include a document with a
      # `AssociateVPCWithHostedZoneRequest` element. The response returns the
      # `AssociateVPCWithHostedZoneResponse` element that contains
      # `ChangeInfo` for you to track the progress of the
      # `AssociateVPCWithHostedZoneRequest` you made. See `GetChange`
      # operation for how to track the progress of your change.
      # @option params [required, String] :hosted_zone_id
      #   The ID of the hosted zone you want to associate your VPC with.
      #
      #   Note that you cannot associate a VPC with a hosted zone that doesn\'t
      #   have an existing VPC association.
      # @option params [required, Types::VPC] :vpc
      #   The VPC that you want your hosted zone to be associated with.
      # @option params [String] :comment
      #   *Optional:* Any comments you want to include about a
      #   `AssociateVPCWithHostedZoneRequest`.
      # @return [Types::AssociateVPCWithHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AssociateVPCWithHostedZoneResponse#change_info #ChangeInfo} => Types::ChangeInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.associate_vpc_with_hosted_zone({
      #     hosted_zone_id: "ResourceId", # required
      #     vpc: { # required
      #       vpc_region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #       vpc_id: "VPCId",
      #     },
      #     comment: "AssociateVPCComment",
      #   })
      #
      # @example Response structure
      #   resp.change_info.id #=> String
      #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
      #   resp.change_info.submitted_at #=> Time
      #   resp.change_info.comment #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def associate_vpc_with_hosted_zone(params = {}, options = {})
        req = build_request(:associate_vpc_with_hosted_zone, params)
        req.send_request(options)
      end

      # Use this action to create or change your authoritative DNS
      # information. To use this action, send a `POST` request to the `/Route
      # 53 API version/hostedzone/hosted Zone ID/rrset` resource. The request
      # body must include a document with a `ChangeResourceRecordSetsRequest`
      # element.
      #
      # Changes are a list of change items and are considered transactional.
      # For more information on transactional changes, also known as change
      # batches, see [POST ChangeResourceRecordSets][1] in the *Amazon Route
      # 53 API Reference*.
      #
      # <important>Due to the nature of transactional changes, you cannot delete the same resource record set more than once in a single change batch. If you attempt to delete the same change batch more than once, Amazon Route 53 returns an `InvalidChangeBatch` error.</important>
      #
      # In response to a `ChangeResourceRecordSets` request, your DNS data is
      # changed on all Amazon Route 53 DNS servers. Initially, the status of a
      # change is `PENDING`. This means the change has not yet propagated to
      # all the authoritative Amazon Route 53 DNS servers. When the change is
      # propagated to all hosts, the change returns a status of `INSYNC`.
      #
      # Note the following limitations on a `ChangeResourceRecordSets`
      # request:
      #
      # * A request cannot contain more than 100 Change elements.
      # * A request cannot contain more than 1000 ResourceRecord elements.
      # * The sum of the number of characters (including spaces) in all
      #   `Value` elements in a request cannot exceed 32,000 characters.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html
      # @option params [required, String] :hosted_zone_id
      #   The ID of the hosted zone that contains the resource record sets that
      #   you want to change.
      # @option params [required, Types::ChangeBatch] :change_batch
      #   A complex type that contains an optional comment and the `Changes`
      #   element.
      # @return [Types::ChangeResourceRecordSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ChangeResourceRecordSetsResponse#change_info #ChangeInfo} => Types::ChangeInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.change_resource_record_sets({
      #     hosted_zone_id: "ResourceId", # required
      #     change_batch: { # required
      #       comment: "ResourceDescription",
      #       changes: [ # required
      #         {
      #           action: "CREATE", # required, accepts CREATE, DELETE, UPSERT
      #           resource_record_set: { # required
      #             name: "DNSName", # required
      #             type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #             set_identifier: "ResourceRecordSetIdentifier",
      #             weight: 1,
      #             region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1, ap-south-1
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
      #   resp.change_info.id #=> String
      #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
      #   resp.change_info.submitted_at #=> Time
      #   resp.change_info.comment #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def change_resource_record_sets(params = {}, options = {})
        req = build_request(:change_resource_record_sets, params)
        req.send_request(options)
      end

      # @option params [required, String] :resource_type
      #   The type of the resource.
      #
      #   \- The resource type for health checks is `healthcheck`.
      #
      #   \- The resource type for hosted zones is `hostedzone`.
      # @option params [required, String] :resource_id
      #   The ID of the resource for which you want to add, change, or delete
      #   tags.
      # @option params [Array<Types::Tag>] :add_tags
      #   A complex type that contains a list of `Tag` elements. Each `Tag`
      #   element identifies a tag that you want to add or update for the
      #   specified resource.
      # @option params [Array<String>] :remove_tag_keys
      #   A list of `Tag` keys that you want to remove from the specified
      #   resource.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def change_tags_for_resource(params = {}, options = {})
        req = build_request(:change_tags_for_resource, params)
        req.send_request(options)
      end

      # This action creates a new health check.
      #
      # To create a new health check, send a `POST` request to the `/Route 53
      # API version/healthcheck` resource. The request body must include a
      # document with a `CreateHealthCheckRequest` element. The response
      # returns the `CreateHealthCheckResponse` element that contains metadata
      # about the health check.
      # @option params [required, String] :caller_reference
      #   A unique string that identifies the request and that allows failed
      #   `CreateHealthCheck` requests to be retried without the risk of
      #   executing the operation twice. You must use a unique `CallerReference`
      #   string every time you create a health check. `CallerReference` can be
      #   any unique string; you might choose to use a string that identifies
      #   your project.
      #
      #   Valid characters are any Unicode code points that are legal in an XML
      #   1.0 document. The UTF-8 encoding of the value must be less than 128
      #   bytes.
      # @option params [required, Types::HealthCheckConfig] :health_check_config
      #   A complex type that contains health check configuration.
      # @return [Types::CreateHealthCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateHealthCheckResponse#health_check #HealthCheck} => Types::HealthCheck
      #   * {Types::CreateHealthCheckResponse#location #Location} => String
      #
      # @example Request syntax with placeholder values
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
      #         region: "us-east-1", # required, accepts us-east-1, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
      #         name: "AlarmName", # required
      #       },
      #       insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
      #     },
      #   })
      #
      # @example Response structure
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
      #   resp.health_check.health_check_config.alarm_identifier.region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1"
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_health_check(params = {}, options = {})
        req = build_request(:create_health_check, params)
        req.send_request(options)
      end

      # This action creates a new hosted zone.
      #
      # To create a new hosted zone, send a `POST` request to the `/Route 53
      # API version/hostedzone` resource. The request body must include a
      # document with a `CreateHostedZoneRequest` element. The response
      # returns the `CreateHostedZoneResponse` element that contains metadata
      # about the hosted zone.
      #
      # Amazon Route 53 automatically creates a default SOA record and four NS
      # records for the zone. The NS records in the hosted zone are the name
      # servers you give your registrar to delegate your domain to. For more
      # information about SOA and NS records, see [NS and SOA Records that
      # Amazon Route 53 Creates for a Hosted Zone][1] in the *Amazon Route 53
      # Developer Guide*.
      #
      # When you create a zone, its initial status is `PENDING`. This means
      # that it is not yet available on all DNS servers. The status of the
      # zone changes to `INSYNC` when the NS and SOA records are available on
      # all Amazon Route 53 DNS servers.
      #
      # When trying to create a hosted zone using a reusable delegation set,
      # you could specify an optional DelegationSetId, and Route53 would
      # assign those 4 NS records for the zone, instead of alloting a new one.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html
      # @option params [required, String] :name
      #   The name of the domain. This must be a fully-specified domain, for
      #   example, www.example.com. The trailing dot is optional; Amazon Route
      #   53 assumes that the domain name is fully qualified. This means that
      #   Amazon Route 53 treats www.example.com (without a trailing dot) and
      #   www.example.com. (with a trailing dot) as identical.
      #
      #   This is the name you have registered with your DNS registrar. You
      #   should ask your registrar to change the authoritative name servers for
      #   your domain to the set of `NameServers` elements returned in
      #   `DelegationSet`.
      # @option params [Types::VPC] :vpc
      #   The VPC that you want your hosted zone to be associated with. By
      #   providing this parameter, your newly created hosted cannot be resolved
      #   anywhere other than the given VPC.
      # @option params [required, String] :caller_reference
      #   A unique string that identifies the request and that allows failed
      #   `CreateHostedZone` requests to be retried without the risk of
      #   executing the operation twice. You must use a unique `CallerReference`
      #   string every time you create a hosted zone. `CallerReference` can be
      #   any unique string; you might choose to use a string that identifies
      #   your project, such as `DNSMigration_01`.
      #
      #   Valid characters are any Unicode code points that are legal in an XML
      #   1.0 document. The UTF-8 encoding of the value must be less than 128
      #   bytes.
      # @option params [Types::HostedZoneConfig] :hosted_zone_config
      #   A complex type that contains an optional comment about your hosted
      #   zone.
      # @option params [String] :delegation_set_id
      #   The delegation set id of the reusable delgation set whose NS records
      #   you want to assign to the new hosted zone.
      # @return [Types::CreateHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateHostedZoneResponse#hosted_zone #HostedZone} => Types::HostedZone
      #   * {Types::CreateHostedZoneResponse#change_info #ChangeInfo} => Types::ChangeInfo
      #   * {Types::CreateHostedZoneResponse#delegation_set #DelegationSet} => Types::DelegationSet
      #   * {Types::CreateHostedZoneResponse#vpc #VPC} => Types::VPC
      #   * {Types::CreateHostedZoneResponse#location #Location} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_hosted_zone({
      #     name: "DNSName", # required
      #     vpc: {
      #       vpc_region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
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
      #   resp.vpc.vpc_region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1"
      #   resp.vpc.vpc_id #=> String
      #   resp.location #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_hosted_zone(params = {}, options = {})
        req = build_request(:create_hosted_zone, params)
        req.send_request(options)
      end

      # This action creates a reusable delegationSet.
      #
      # To create a new reusable delegationSet, send a `POST` request to the
      # `/Route 53 API version/delegationset` resource. The request body must
      # include a document with a `CreateReusableDelegationSetRequest`
      # element. The response returns the
      # `CreateReusableDelegationSetResponse` element that contains metadata
      # about the delegationSet.
      #
      # If the optional parameter HostedZoneId is specified, it marks the
      # delegationSet associated with that particular hosted zone as reusable.
      # @option params [required, String] :caller_reference
      #   A unique string that identifies the request and that allows failed
      #   `CreateReusableDelegationSet` requests to be retried without the risk
      #   of executing the operation twice. You must use a unique
      #   `CallerReference` string every time you create a reusable delegation
      #   set. `CallerReference` can be any unique string; you might choose to
      #   use a string that identifies your project, such as `DNSMigration_01`.
      #
      #   Valid characters are any Unicode code points that are legal in an XML
      #   1.0 document. The UTF-8 encoding of the value must be less than 128
      #   bytes.
      # @option params [String] :hosted_zone_id
      #   The ID of the hosted zone whose delegation set you want to mark as
      #   reusable. It is an optional parameter.
      # @return [Types::CreateReusableDelegationSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateReusableDelegationSetResponse#delegation_set #DelegationSet} => Types::DelegationSet
      #   * {Types::CreateReusableDelegationSetResponse#location #Location} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_reusable_delegation_set({
      #     caller_reference: "Nonce", # required
      #     hosted_zone_id: "ResourceId",
      #   })
      #
      # @example Response structure
      #   resp.delegation_set.id #=> String
      #   resp.delegation_set.caller_reference #=> String
      #   resp.delegation_set.name_servers #=> Array
      #   resp.delegation_set.name_servers[0] #=> String
      #   resp.location #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_reusable_delegation_set(params = {}, options = {})
        req = build_request(:create_reusable_delegation_set, params)
        req.send_request(options)
      end

      # Creates a traffic policy, which you use to create multiple DNS
      # resource record sets for one domain name (such as example.com) or one
      # subdomain name (such as www.example.com).
      #
      # To create a traffic policy, send a `POST` request to the `/Route 53
      # API version/trafficpolicy` resource. The request body must include a
      # document with a `CreateTrafficPolicyRequest` element. The response
      # includes the `CreateTrafficPolicyResponse` element, which contains
      # information about the new traffic policy.
      # @option params [required, String] :name
      #   The name of the traffic policy.
      # @option params [required, String] :document
      #   The definition of this traffic policy in JSON format. For more
      #   information, see [Traffic Policy Document Format][1] in the *Amazon
      #   Route 53 API Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html
      # @option params [String] :comment
      #   Any comments that you want to include about the traffic policy.
      # @return [Types::CreateTrafficPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateTrafficPolicyResponse#traffic_policy #TrafficPolicy} => Types::TrafficPolicy
      #   * {Types::CreateTrafficPolicyResponse#location #Location} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_traffic_policy({
      #     name: "TrafficPolicyName", # required
      #     document: "TrafficPolicyDocument", # required
      #     comment: "TrafficPolicyComment",
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy.id #=> String
      #   resp.traffic_policy.version #=> Integer
      #   resp.traffic_policy.name #=> String
      #   resp.traffic_policy.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.traffic_policy.document #=> String
      #   resp.traffic_policy.comment #=> String
      #   resp.location #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # To create a traffic policy instance, send a `POST` request to the
      # `/Route 53 API version/trafficpolicyinstance` resource. The request
      # body must include a document with a `CreateTrafficPolicyRequest`
      # element. The response returns the
      # `CreateTrafficPolicyInstanceResponse` element, which contains
      # information about the traffic policy instance.
      # @option params [required, String] :hosted_zone_id
      #   The ID of the hosted zone in which you want Amazon Route 53 to create
      #   resource record sets by using the configuration in a traffic policy.
      # @option params [required, String] :name
      #   The domain name (such as example.com) or subdomain name (such as
      #   www.example.com) for which Amazon Route 53 responds to DNS queries by
      #   using the resource record sets that Amazon Route 53 creates for this
      #   traffic policy instance.
      # @option params [required, Integer] :ttl
      #   The TTL that you want Amazon Route 53 to assign to all of the resource
      #   record sets that it creates in the specified hosted zone.
      # @option params [required, String] :traffic_policy_id
      #   The ID of the traffic policy that you want to use to create resource
      #   record sets in the specified hosted zone.
      # @option params [required, Integer] :traffic_policy_version
      #   The version of the traffic policy that you want to use to create
      #   resource record sets in the specified hosted zone.
      # @return [Types::CreateTrafficPolicyInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateTrafficPolicyInstanceResponse#traffic_policy_instance #TrafficPolicyInstance} => Types::TrafficPolicyInstance
      #   * {Types::CreateTrafficPolicyInstanceResponse#location #Location} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_traffic_policy_instance({
      #     hosted_zone_id: "ResourceId", # required
      #     name: "DNSName", # required
      #     ttl: 1, # required
      #     traffic_policy_id: "TrafficPolicyId", # required
      #     traffic_policy_version: 1, # required
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy_instance.id #=> String
      #   resp.traffic_policy_instance.hosted_zone_id #=> String
      #   resp.traffic_policy_instance.name #=> String
      #   resp.traffic_policy_instance.ttl #=> Integer
      #   resp.traffic_policy_instance.state #=> String
      #   resp.traffic_policy_instance.message #=> String
      #   resp.traffic_policy_instance.traffic_policy_id #=> String
      #   resp.traffic_policy_instance.traffic_policy_version #=> Integer
      #   resp.traffic_policy_instance.traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.location #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_traffic_policy_instance(params = {}, options = {})
        req = build_request(:create_traffic_policy_instance, params)
        req.send_request(options)
      end

      # Creates a new version of an existing traffic policy. When you create a
      # new version of a traffic policy, you specify the ID of the traffic
      # policy that you want to update and a JSON-formatted document that
      # describes the new version.
      #
      # You use traffic policies to create multiple DNS resource record sets
      # for one domain name (such as example.com) or one subdomain name (such
      # as www.example.com).
      #
      # To create a new version, send a `POST` request to the `/Route 53 API
      # version/trafficpolicy/` resource. The request body includes a document
      # with a `CreateTrafficPolicyVersionRequest` element. The response
      # returns the `CreateTrafficPolicyVersionResponse` element, which
      # contains information about the new version of the traffic policy.
      # @option params [required, String] :id
      #   The ID of the traffic policy for which you want to create a new
      #   version.
      # @option params [required, String] :document
      #   The definition of a new traffic policy version, in JSON format. You
      #   must specify the full definition of the new traffic policy. You cannot
      #   specify just the differences between the new version and a previous
      #   version. For more information, see [Traffic Policy Document Format][1]
      #   in the *Amazon Route 53 API Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html
      # @option params [String] :comment
      #   Any comments that you want to include about the new traffic policy
      #   version.
      # @return [Types::CreateTrafficPolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateTrafficPolicyVersionResponse#traffic_policy #TrafficPolicy} => Types::TrafficPolicy
      #   * {Types::CreateTrafficPolicyVersionResponse#location #Location} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_traffic_policy_version({
      #     id: "TrafficPolicyId", # required
      #     document: "TrafficPolicyDocument", # required
      #     comment: "TrafficPolicyComment",
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy.id #=> String
      #   resp.traffic_policy.version #=> Integer
      #   resp.traffic_policy.name #=> String
      #   resp.traffic_policy.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.traffic_policy.document #=> String
      #   resp.traffic_policy.comment #=> String
      #   resp.location #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_traffic_policy_version(params = {}, options = {})
        req = build_request(:create_traffic_policy_version, params)
        req.send_request(options)
      end

      # This action deletes a health check. To delete a health check, send a
      # `DELETE` request to the `/Route 53 API version/healthcheck/health
      # check ID` resource.
      #
      # <important> You can delete a health check only if there are no resource record sets associated with this health check. If resource record sets are associated with this health check, you must disassociate them before you can delete your health check. If you try to delete a health check that is associated with resource record sets, Amazon Route 53 will deny your request with a `HealthCheckInUse` error. For information about disassociating the records from your health check, see `ChangeResourceRecordSets`.</important>
      # @option params [required, String] :health_check_id
      #   The ID of the health check to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_health_check({
      #     health_check_id: "HealthCheckId", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_health_check(params = {}, options = {})
        req = build_request(:delete_health_check, params)
        req.send_request(options)
      end

      # This action deletes a hosted zone. To delete a hosted zone, send a
      # `DELETE` request to the `/Route 53 API version/hostedzone/hosted zone
      # ID` resource.
      #
      # <important>You can delete a hosted zone only if there are no resource record sets other than the default SOA record and NS resource record sets. If your hosted zone contains other resource record sets, you must delete them before you can delete your hosted zone. If you try to delete a hosted zone that contains other resource record sets, Amazon Route 53 will deny your request with a `HostedZoneNotEmpty` error. For information about deleting records from your hosted zone, see `ChangeResourceRecordSets`.</important>
      # @option params [required, String] :id
      #   The ID of the hosted zone you want to delete.
      # @return [Types::DeleteHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteHostedZoneResponse#change_info #ChangeInfo} => Types::ChangeInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_hosted_zone({
      #     id: "ResourceId", # required
      #   })
      #
      # @example Response structure
      #   resp.change_info.id #=> String
      #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
      #   resp.change_info.submitted_at #=> Time
      #   resp.change_info.comment #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_hosted_zone(params = {}, options = {})
        req = build_request(:delete_hosted_zone, params)
        req.send_request(options)
      end

      # This action deletes a reusable delegation set. To delete a reusable
      # delegation set, send a `DELETE` request to the `/Route 53 API
      # version/delegationset/delegation set ID` resource.
      #
      # <important> You can delete a reusable delegation set only if there are no associated hosted zones. If your reusable delegation set contains associated hosted zones, you must delete them before you can delete your reusable delegation set. If you try to delete a reusable delegation set that contains associated hosted zones, Amazon Route 53 will deny your request with a `DelegationSetInUse` error.</important>
      # @option params [required, String] :id
      #   The ID of the reusable delegation set you want to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_reusable_delegation_set({
      #     id: "ResourceId", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_reusable_delegation_set(params = {}, options = {})
        req = build_request(:delete_reusable_delegation_set, params)
        req.send_request(options)
      end

      # Deletes a traffic policy. To delete a traffic policy, send a `DELETE`
      # request to the `/Route 53 API version/trafficpolicy` resource.
      # @option params [required, String] :id
      #   The ID of the traffic policy that you want to delete.
      # @option params [required, Integer] :version
      #   The version number of the traffic policy that you want to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_traffic_policy({
      #     id: "TrafficPolicyId", # required
      #     version: 1, # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_traffic_policy(params = {}, options = {})
        req = build_request(:delete_traffic_policy, params)
        req.send_request(options)
      end

      # Deletes a traffic policy instance and all of the resource record sets
      # that Amazon Route 53 created when you created the instance.
      #
      # To delete a traffic policy instance, send a `DELETE` request to the
      # `/Route 53 API version/trafficpolicy/traffic policy instance ID`
      # resource.
      #
      # <important>When you delete a traffic policy instance, Amazon Route 53 also deletes all of the resource record sets that were created when you created the traffic policy instance.</important>
      # @option params [required, String] :id
      #   The ID of the traffic policy instance that you want to delete.
      #
      #   <important>When you delete a traffic policy instance, Amazon Route 53 also deletes all of the resource record sets that were created when you created the traffic policy instance.</important>
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_traffic_policy_instance({
      #     id: "TrafficPolicyInstanceId", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_traffic_policy_instance(params = {}, options = {})
        req = build_request(:delete_traffic_policy_instance, params)
        req.send_request(options)
      end

      # This action disassociates a VPC from an hosted zone.
      #
      # To disassociate a VPC to a hosted zone, send a `POST` request to the
      # `/Route 53 API version/hostedzone/hosted zone ID/disassociatevpc`
      # resource. The request body must include a document with a
      # `DisassociateVPCFromHostedZoneRequest` element. The response returns
      # the `DisassociateVPCFromHostedZoneResponse` element that contains
      # `ChangeInfo` for you to track the progress of the
      # `DisassociateVPCFromHostedZoneRequest` you made. See `GetChange`
      # operation for how to track the progress of your change.
      # @option params [required, String] :hosted_zone_id
      #   The ID of the hosted zone you want to disassociate your VPC from.
      #
      #   Note that you cannot disassociate the last VPC from a hosted zone.
      # @option params [required, Types::VPC] :vpc
      #   The VPC that you want your hosted zone to be disassociated from.
      # @option params [String] :comment
      #   *Optional:* Any comments you want to include about a
      #   `DisassociateVPCFromHostedZoneRequest`.
      # @return [Types::DisassociateVPCFromHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DisassociateVPCFromHostedZoneResponse#change_info #ChangeInfo} => Types::ChangeInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.disassociate_vpc_from_hosted_zone({
      #     hosted_zone_id: "ResourceId", # required
      #     vpc: { # required
      #       vpc_region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #       vpc_id: "VPCId",
      #     },
      #     comment: "DisassociateVPCComment",
      #   })
      #
      # @example Response structure
      #   resp.change_info.id #=> String
      #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
      #   resp.change_info.submitted_at #=> Time
      #   resp.change_info.comment #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def disassociate_vpc_from_hosted_zone(params = {}, options = {})
        req = build_request(:disassociate_vpc_from_hosted_zone, params)
        req.send_request(options)
      end

      # This action returns the current status of a change batch request. The
      # status is one of the following values:
      #
      # \- `PENDING` indicates that the changes in this request have not
      # replicated to all Amazon Route 53 DNS servers. This is the initial
      # status of all change batch requests.
      #
      # \- `INSYNC` indicates that the changes have replicated to all Amazon
      # Route 53 DNS servers.
      # @option params [required, String] :id
      #   The ID of the change batch request. The value that you specify here is
      #   the value that `ChangeResourceRecordSets` returned in the Id element
      #   when you submitted the request.
      # @return [Types::GetChangeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetChangeResponse#change_info #ChangeInfo} => Types::ChangeInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_change({
      #     id: "ResourceId", # required
      #   })
      #
      # @example Response structure
      #   resp.change_info.id #=> String
      #   resp.change_info.status #=> String, one of "PENDING", "INSYNC"
      #   resp.change_info.submitted_at #=> Time
      #   resp.change_info.comment #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_change(params = {}, options = {})
        req = build_request(:get_change, params)
        req.send_request(options)
      end

      # This action returns the status and changes of a change batch request.
      # @option params [required, String] :id
      #   The ID of the change batch request. The value that you specify here is
      #   the value that `ChangeResourceRecordSets` returned in the Id element
      #   when you submitted the request.
      # @return [Types::GetChangeDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetChangeDetailsResponse#change_batch_record #ChangeBatchRecord} => Types::ChangeBatchRecord
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_change_details({
      #     id: "ResourceId", # required
      #   })
      #
      # @example Response structure
      #   resp.change_batch_record.id #=> String
      #   resp.change_batch_record.submitted_at #=> Time
      #   resp.change_batch_record.status #=> String, one of "PENDING", "INSYNC"
      #   resp.change_batch_record.comment #=> String
      #   resp.change_batch_record.submitter #=> String
      #   resp.change_batch_record.changes #=> Array
      #   resp.change_batch_record.changes[0].action #=> String, one of "CREATE", "DELETE", "UPSERT"
      #   resp.change_batch_record.changes[0].resource_record_set.name #=> String
      #   resp.change_batch_record.changes[0].resource_record_set.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.change_batch_record.changes[0].resource_record_set.set_identifier #=> String
      #   resp.change_batch_record.changes[0].resource_record_set.weight #=> Integer
      #   resp.change_batch_record.changes[0].resource_record_set.region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1", "ap-south-1"
      #   resp.change_batch_record.changes[0].resource_record_set.geo_location.continent_code #=> String
      #   resp.change_batch_record.changes[0].resource_record_set.geo_location.country_code #=> String
      #   resp.change_batch_record.changes[0].resource_record_set.geo_location.subdivision_code #=> String
      #   resp.change_batch_record.changes[0].resource_record_set.failover #=> String, one of "PRIMARY", "SECONDARY"
      #   resp.change_batch_record.changes[0].resource_record_set.ttl #=> Integer
      #   resp.change_batch_record.changes[0].resource_record_set.resource_records #=> Array
      #   resp.change_batch_record.changes[0].resource_record_set.resource_records[0].value #=> String
      #   resp.change_batch_record.changes[0].resource_record_set.alias_target.hosted_zone_id #=> String
      #   resp.change_batch_record.changes[0].resource_record_set.alias_target.dns_name #=> String
      #   resp.change_batch_record.changes[0].resource_record_set.alias_target.evaluate_target_health #=> Boolean
      #   resp.change_batch_record.changes[0].resource_record_set.health_check_id #=> String
      #   resp.change_batch_record.changes[0].resource_record_set.traffic_policy_instance_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_change_details(params = {}, options = {})
        req = build_request(:get_change_details, params)
        req.send_request(options)
      end

      # To retrieve a list of the IP ranges used by Amazon Route 53 health
      # checkers to check the health of your resources, send a `GET` request
      # to the `/Route 53 API version/checkeripranges` resource. You can use
      # these IP addresses to configure router and firewall rules to allow
      # health checkers to check the health of your resources.
      # @return [Types::GetCheckerIpRangesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetCheckerIpRangesResponse#checker_ip_ranges #CheckerIpRanges} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_checker_ip_ranges()
      #
      # @example Response structure
      #   resp.checker_ip_ranges #=> Array
      #   resp.checker_ip_ranges[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_checker_ip_ranges(params = {}, options = {})
        req = build_request(:get_checker_ip_ranges, params)
        req.send_request(options)
      end

      # To retrieve a single geo location, send a `GET` request to the `/Route
      # 53 API version/geolocation` resource with one of these options:
      # continentcode \| countrycode \| countrycode and subdivisioncode.
      # @option params [String] :continent_code
      #   The code for a continent geo location. Note: only continent locations
      #   have a continent code.
      #
      #   Valid values: `AF` \| `AN` \| `AS` \| `EU` \| `OC` \| `NA` \| `SA`
      #
      #   Constraint: Specifying `ContinentCode` with either `CountryCode` or
      #   `SubdivisionCode` returns an `InvalidInput` error.
      # @option params [String] :country_code
      #   The code for a country geo location. The default location uses \'\*\'
      #   for the country code and will match all locations that are not matched
      #   by a geo location.
      #
      #   The default geo location uses a `*` for the country code. All other
      #   country codes follow the ISO 3166 two-character code.
      # @option params [String] :subdivision_code
      #   The code for a country\'s subdivision (e.g., a province of Canada). A
      #   subdivision code is only valid with the appropriate country code.
      #
      #   Constraint: Specifying `SubdivisionCode` without `CountryCode` returns
      #   an `InvalidInput` error.
      # @return [Types::GetGeoLocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetGeoLocationResponse#geo_location_details #GeoLocationDetails} => Types::GeoLocationDetails
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_geo_location({
      #     continent_code: "GeoLocationContinentCode",
      #     country_code: "GeoLocationCountryCode",
      #     subdivision_code: "GeoLocationSubdivisionCode",
      #   })
      #
      # @example Response structure
      #   resp.geo_location_details.continent_code #=> String
      #   resp.geo_location_details.continent_name #=> String
      #   resp.geo_location_details.country_code #=> String
      #   resp.geo_location_details.country_name #=> String
      #   resp.geo_location_details.subdivision_code #=> String
      #   resp.geo_location_details.subdivision_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_geo_location(params = {}, options = {})
        req = build_request(:get_geo_location, params)
        req.send_request(options)
      end

      # To retrieve the health check, send a `GET` request to the `/Route 53
      # API version/healthcheck/health check ID` resource.
      # @option params [required, String] :health_check_id
      #   The ID of the health check to retrieve.
      # @return [Types::GetHealthCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetHealthCheckResponse#health_check #HealthCheck} => Types::HealthCheck
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_health_check({
      #     health_check_id: "HealthCheckId", # required
      #   })
      #
      # @example Response structure
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
      #   resp.health_check.health_check_config.alarm_identifier.region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1"
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_health_check(params = {}, options = {})
        req = build_request(:get_health_check, params)
        req.send_request(options)
      end

      # To retrieve a count of all your health checks, send a `GET` request to
      # the `/Route 53 API version/healthcheckcount` resource.
      # @return [Types::GetHealthCheckCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetHealthCheckCountResponse#health_check_count #HealthCheckCount} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_health_check_count()
      #
      # @example Response structure
      #   resp.health_check_count #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_health_check_count(params = {}, options = {})
        req = build_request(:get_health_check_count, params)
        req.send_request(options)
      end

      # If you want to learn why a health check is currently failing or why it
      # failed most recently (if at all), you can get the failure reason for
      # the most recent failure. Send a `GET` request to the `/Route 53 API
      # version/healthcheck/health check ID/lastfailurereason` resource.
      # @option params [required, String] :health_check_id
      #   The ID of the health check for which you want to retrieve the reason
      #   for the most recent failure.
      # @return [Types::GetHealthCheckLastFailureReasonResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetHealthCheckLastFailureReasonResponse#health_check_observations #HealthCheckObservations} => Array&lt;Types::HealthCheckObservation&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_health_check_last_failure_reason({
      #     health_check_id: "HealthCheckId", # required
      #   })
      #
      # @example Response structure
      #   resp.health_check_observations #=> Array
      #   resp.health_check_observations[0].region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"
      #   resp.health_check_observations[0].ip_address #=> String
      #   resp.health_check_observations[0].status_report.status #=> String
      #   resp.health_check_observations[0].status_report.checked_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_health_check_last_failure_reason(params = {}, options = {})
        req = build_request(:get_health_check_last_failure_reason, params)
        req.send_request(options)
      end

      # To retrieve the health check status, send a `GET` request to the
      # `/Route 53 API version/healthcheck/health check ID/status` resource.
      # You can use this call to get a health check\'s current status.
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
      #   status code of 400 or greater, or if the endpoint doesn\'t respond for
      #   a certain amount of time, Amazon Route 53 considers the endpoint
      #   unhealthy and also considers the resource record set unhealthy.
      #
      #   The `HealthCheckId` element is only useful when Amazon Route 53 is
      #   choosing between two or more resource record sets to respond to a DNS
      #   query, and you want Amazon Route 53 to base the choice in part on the
      #   status of a health check. Configuring health checks only makes sense
      #   in the following configurations:
      #
      #   * You\'re checking the health of the resource record sets in a
      #     weighted, latency, geolocation, or failover resource record set, and
      #     you specify health check IDs for all of the resource record sets. If
      #     the health check for one resource record set specifies an endpoint
      #     that is not healthy, Amazon Route 53 stops responding to queries
      #     using the value for that resource record set.
      #   * You set `EvaluateTargetHealth` to `true` for the resource record
      #     sets in an alias, weighted alias, latency alias, geolocation alias,
      #     or failover alias resource record set, and you specify health check
      #     IDs for all of the resource record sets that are referenced by the
      #     alias resource record sets. For more information about this
      #     configuration, see `EvaluateTargetHealth`.
      #
      #     Amazon Route 53 doesn\'t check the health of the endpoint specified
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
      #   <important>In this configuration, if you create a health check for which the value of `FullyQualifiedDomainName` matches the name of the resource record sets and then associate the health check with those resource record sets, health check results will be unpredictable.</important>
      # @return [Types::GetHealthCheckStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetHealthCheckStatusResponse#health_check_observations #HealthCheckObservations} => Array&lt;Types::HealthCheckObservation&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_health_check_status({
      #     health_check_id: "HealthCheckId", # required
      #   })
      #
      # @example Response structure
      #   resp.health_check_observations #=> Array
      #   resp.health_check_observations[0].region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"
      #   resp.health_check_observations[0].ip_address #=> String
      #   resp.health_check_observations[0].status_report.status #=> String
      #   resp.health_check_observations[0].status_report.checked_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_health_check_status(params = {}, options = {})
        req = build_request(:get_health_check_status, params)
        req.send_request(options)
      end

      # To retrieve the delegation set for a hosted zone, send a `GET` request
      # to the `/Route 53 API version/hostedzone/hosted zone ID` resource. The
      # delegation set is the four Amazon Route 53 name servers that were
      # assigned to the hosted zone when you created it.
      # @option params [required, String] :id
      #   The ID of the hosted zone for which you want to get a list of the name
      #   servers in the delegation set.
      # @return [Types::GetHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetHostedZoneResponse#hosted_zone #HostedZone} => Types::HostedZone
      #   * {Types::GetHostedZoneResponse#delegation_set #DelegationSet} => Types::DelegationSet
      #   * {Types::GetHostedZoneResponse#vp_cs #VPCs} => Array&lt;Types::VPC&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_hosted_zone({
      #     id: "ResourceId", # required
      #   })
      #
      # @example Response structure
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
      #   resp.vp_cs[0].vpc_region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1"
      #   resp.vp_cs[0].vpc_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_hosted_zone(params = {}, options = {})
        req = build_request(:get_hosted_zone, params)
        req.send_request(options)
      end

      # To retrieve a count of all your hosted zones, send a `GET` request to
      # the `/Route 53 API version/hostedzonecount` resource.
      # @return [Types::GetHostedZoneCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetHostedZoneCountResponse#hosted_zone_count #HostedZoneCount} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_hosted_zone_count()
      #
      # @example Response structure
      #   resp.hosted_zone_count #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_hosted_zone_count(params = {}, options = {})
        req = build_request(:get_hosted_zone_count, params)
        req.send_request(options)
      end

      # To retrieve the reusable delegation set, send a `GET` request to the
      # `/Route 53 API version/delegationset/delegation set ID` resource.
      # @option params [required, String] :id
      #   The ID of the reusable delegation set for which you want to get a list
      #   of the name server.
      # @return [Types::GetReusableDelegationSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetReusableDelegationSetResponse#delegation_set #DelegationSet} => Types::DelegationSet
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_reusable_delegation_set({
      #     id: "ResourceId", # required
      #   })
      #
      # @example Response structure
      #   resp.delegation_set.id #=> String
      #   resp.delegation_set.caller_reference #=> String
      #   resp.delegation_set.name_servers #=> Array
      #   resp.delegation_set.name_servers[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_reusable_delegation_set(params = {}, options = {})
        req = build_request(:get_reusable_delegation_set, params)
        req.send_request(options)
      end

      # Gets information about a specific traffic policy version. To get the
      # information, send a `GET` request to the `/Route 53 API
      # version/trafficpolicy` resource.
      # @option params [required, String] :id
      #   The ID of the traffic policy that you want to get information about.
      # @option params [required, Integer] :version
      #   The version number of the traffic policy that you want to get
      #   information about.
      # @return [Types::GetTrafficPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetTrafficPolicyResponse#traffic_policy #TrafficPolicy} => Types::TrafficPolicy
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_traffic_policy({
      #     id: "TrafficPolicyId", # required
      #     version: 1, # required
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy.id #=> String
      #   resp.traffic_policy.version #=> Integer
      #   resp.traffic_policy.name #=> String
      #   resp.traffic_policy.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.traffic_policy.document #=> String
      #   resp.traffic_policy.comment #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_traffic_policy(params = {}, options = {})
        req = build_request(:get_traffic_policy, params)
        req.send_request(options)
      end

      # Gets information about a specified traffic policy instance.
      #
      # To get information about the traffic policy instance, send a `GET`
      # request to the `/Route 53 API version/trafficpolicyinstance` resource.
      #
      # <note>After you submit a `CreateTrafficPolicyInstance` or an `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the `State` response element.</note>
      # @option params [required, String] :id
      #   The ID of the traffic policy instance that you want to get information
      #   about.
      # @return [Types::GetTrafficPolicyInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetTrafficPolicyInstanceResponse#traffic_policy_instance #TrafficPolicyInstance} => Types::TrafficPolicyInstance
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_traffic_policy_instance({
      #     id: "TrafficPolicyInstanceId", # required
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy_instance.id #=> String
      #   resp.traffic_policy_instance.hosted_zone_id #=> String
      #   resp.traffic_policy_instance.name #=> String
      #   resp.traffic_policy_instance.ttl #=> Integer
      #   resp.traffic_policy_instance.state #=> String
      #   resp.traffic_policy_instance.message #=> String
      #   resp.traffic_policy_instance.traffic_policy_id #=> String
      #   resp.traffic_policy_instance.traffic_policy_version #=> Integer
      #   resp.traffic_policy_instance.traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_traffic_policy_instance(params = {}, options = {})
        req = build_request(:get_traffic_policy_instance, params)
        req.send_request(options)
      end

      # Gets the number of traffic policy instances that are associated with
      # the current AWS account.
      #
      # To get the number of traffic policy instances, send a `GET` request to
      # the `/Route 53 API version/trafficpolicyinstancecount` resource.
      # @return [Types::GetTrafficPolicyInstanceCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetTrafficPolicyInstanceCountResponse#traffic_policy_instance_count #TrafficPolicyInstanceCount} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_traffic_policy_instance_count()
      #
      # @example Response structure
      #   resp.traffic_policy_instance_count #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_traffic_policy_instance_count(params = {}, options = {})
        req = build_request(:get_traffic_policy_instance_count, params)
        req.send_request(options)
      end

      # This action gets the list of ChangeBatches in a given time period for
      # a given hosted zone.
      # @option params [required, String] :hosted_zone_id
      #   The ID of the hosted zone that you want to see changes for.
      # @option params [required, String] :start_date
      #   The start of the time period you want to see changes for.
      # @option params [required, String] :end_date
      #   The end of the time period you want to see changes for.
      # @option params [Integer] :max_items
      #   The maximum number of items on a page.
      # @option params [String] :marker
      #   The page marker.
      # @return [Types::ListChangeBatchesByHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListChangeBatchesByHostedZoneResponse#max_items #MaxItems} => Integer
      #   * {Types::ListChangeBatchesByHostedZoneResponse#marker #Marker} => String
      #   * {Types::ListChangeBatchesByHostedZoneResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListChangeBatchesByHostedZoneResponse#change_batch_records #ChangeBatchRecords} => Array&lt;Types::ChangeBatchRecord&gt;
      #   * {Types::ListChangeBatchesByHostedZoneResponse#next_marker #NextMarker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_change_batches_by_hosted_zone({
      #     hosted_zone_id: "ResourceId", # required
      #     start_date: "Date", # required
      #     end_date: "Date", # required
      #     max_items: 1,
      #     marker: "PageMarker",
      #   })
      #
      # @example Response structure
      #   resp.max_items #=> Integer
      #   resp.marker #=> String
      #   resp.is_truncated #=> Boolean
      #   resp.change_batch_records #=> Array
      #   resp.change_batch_records[0].id #=> String
      #   resp.change_batch_records[0].submitted_at #=> Time
      #   resp.change_batch_records[0].status #=> String, one of "PENDING", "INSYNC"
      #   resp.change_batch_records[0].comment #=> String
      #   resp.change_batch_records[0].submitter #=> String
      #   resp.change_batch_records[0].changes #=> Array
      #   resp.change_batch_records[0].changes[0].action #=> String, one of "CREATE", "DELETE", "UPSERT"
      #   resp.change_batch_records[0].changes[0].resource_record_set.name #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.change_batch_records[0].changes[0].resource_record_set.set_identifier #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.weight #=> Integer
      #   resp.change_batch_records[0].changes[0].resource_record_set.region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1", "ap-south-1"
      #   resp.change_batch_records[0].changes[0].resource_record_set.geo_location.continent_code #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.geo_location.country_code #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.geo_location.subdivision_code #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.failover #=> String, one of "PRIMARY", "SECONDARY"
      #   resp.change_batch_records[0].changes[0].resource_record_set.ttl #=> Integer
      #   resp.change_batch_records[0].changes[0].resource_record_set.resource_records #=> Array
      #   resp.change_batch_records[0].changes[0].resource_record_set.resource_records[0].value #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.alias_target.hosted_zone_id #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.alias_target.dns_name #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.alias_target.evaluate_target_health #=> Boolean
      #   resp.change_batch_records[0].changes[0].resource_record_set.health_check_id #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.traffic_policy_instance_id #=> String
      #   resp.next_marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_change_batches_by_hosted_zone(params = {}, options = {})
        req = build_request(:list_change_batches_by_hosted_zone, params)
        req.send_request(options)
      end

      # This action gets the list of ChangeBatches in a given time period for
      # a given hosted zone and RRSet.
      # @option params [required, String] :hosted_zone_id
      #   The ID of the hosted zone that you want to see changes for.
      # @option params [required, String] :name
      #   The name of the RRSet that you want to see changes for.
      # @option params [required, String] :type
      #   The type of the RRSet that you want to see changes for.
      # @option params [String] :set_identifier
      #   The identifier of the RRSet that you want to see changes for.
      # @option params [required, String] :start_date
      #   The start of the time period you want to see changes for.
      # @option params [required, String] :end_date
      #   The end of the time period you want to see changes for.
      # @option params [Integer] :max_items
      #   The maximum number of items on a page.
      # @option params [String] :marker
      #   The page marker.
      # @return [Types::ListChangeBatchesByRRSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListChangeBatchesByRRSetResponse#max_items #MaxItems} => Integer
      #   * {Types::ListChangeBatchesByRRSetResponse#marker #Marker} => String
      #   * {Types::ListChangeBatchesByRRSetResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListChangeBatchesByRRSetResponse#change_batch_records #ChangeBatchRecords} => Array&lt;Types::ChangeBatchRecord&gt;
      #   * {Types::ListChangeBatchesByRRSetResponse#next_marker #NextMarker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_change_batches_by_rr_set({
      #     hosted_zone_id: "ResourceId", # required
      #     name: "DNSName", # required
      #     type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #     set_identifier: "ResourceRecordSetIdentifier",
      #     start_date: "Date", # required
      #     end_date: "Date", # required
      #     max_items: 1,
      #     marker: "PageMarker",
      #   })
      #
      # @example Response structure
      #   resp.max_items #=> Integer
      #   resp.marker #=> String
      #   resp.is_truncated #=> Boolean
      #   resp.change_batch_records #=> Array
      #   resp.change_batch_records[0].id #=> String
      #   resp.change_batch_records[0].submitted_at #=> Time
      #   resp.change_batch_records[0].status #=> String, one of "PENDING", "INSYNC"
      #   resp.change_batch_records[0].comment #=> String
      #   resp.change_batch_records[0].submitter #=> String
      #   resp.change_batch_records[0].changes #=> Array
      #   resp.change_batch_records[0].changes[0].action #=> String, one of "CREATE", "DELETE", "UPSERT"
      #   resp.change_batch_records[0].changes[0].resource_record_set.name #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.change_batch_records[0].changes[0].resource_record_set.set_identifier #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.weight #=> Integer
      #   resp.change_batch_records[0].changes[0].resource_record_set.region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1", "ap-south-1"
      #   resp.change_batch_records[0].changes[0].resource_record_set.geo_location.continent_code #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.geo_location.country_code #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.geo_location.subdivision_code #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.failover #=> String, one of "PRIMARY", "SECONDARY"
      #   resp.change_batch_records[0].changes[0].resource_record_set.ttl #=> Integer
      #   resp.change_batch_records[0].changes[0].resource_record_set.resource_records #=> Array
      #   resp.change_batch_records[0].changes[0].resource_record_set.resource_records[0].value #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.alias_target.hosted_zone_id #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.alias_target.dns_name #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.alias_target.evaluate_target_health #=> Boolean
      #   resp.change_batch_records[0].changes[0].resource_record_set.health_check_id #=> String
      #   resp.change_batch_records[0].changes[0].resource_record_set.traffic_policy_instance_id #=> String
      #   resp.next_marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_change_batches_by_rr_set(params = {}, options = {})
        req = build_request(:list_change_batches_by_rr_set, params)
        req.send_request(options)
      end

      # To retrieve a list of supported geo locations, send a `GET` request to
      # the `/Route 53 API version/geolocations` resource. The response to
      # this request includes a `GeoLocationDetailsList` element with zero,
      # one, or multiple `GeoLocationDetails` child elements. The list is
      # sorted by country code, and then subdivision code, followed by
      # continents at the end of the list.
      #
      # By default, the list of geo locations is displayed on a single page.
      # You can control the length of the page that is displayed by using the
      # `MaxItems` parameter. If the list is truncated, `IsTruncated` will be
      # set to *true* and a combination of `NextContinentCode,
      # NextCountryCode, NextSubdivisionCode` will be populated. You can pass
      # these as parameters to `StartContinentCode, StartCountryCode,
      # StartSubdivisionCode` to control the geo location that the list begins
      # with.
      # @option params [String] :start_continent_code
      #   The first continent code in the lexicographic ordering of geo
      #   locations that you want the `ListGeoLocations` request to list. For
      #   non-continent geo locations, this should be null.
      #
      #   Valid values: `AF` \| `AN` \| `AS` \| `EU` \| `OC` \| `NA` \| `SA`
      #
      #   Constraint: Specifying `ContinentCode` with either `CountryCode` or
      #   `SubdivisionCode` returns an `InvalidInput` error.
      # @option params [String] :start_country_code
      #   The first country code in the lexicographic ordering of geo locations
      #   that you want the `ListGeoLocations` request to list.
      #
      #   The default geo location uses a `*` for the country code. All other
      #   country codes follow the ISO 3166 two-character code.
      # @option params [String] :start_subdivision_code
      #   The first subdivision code in the lexicographic ordering of geo
      #   locations that you want the `ListGeoLocations` request to list.
      #
      #   Constraint: Specifying `SubdivisionCode` without `CountryCode` returns
      #   an `InvalidInput` error.
      # @option params [Integer] :max_items
      #   The maximum number of geo locations you want in the response body.
      # @return [Types::ListGeoLocationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListGeoLocationsResponse#geo_location_details_list #GeoLocationDetailsList} => Array&lt;Types::GeoLocationDetails&gt;
      #   * {Types::ListGeoLocationsResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListGeoLocationsResponse#next_continent_code #NextContinentCode} => String
      #   * {Types::ListGeoLocationsResponse#next_country_code #NextCountryCode} => String
      #   * {Types::ListGeoLocationsResponse#next_subdivision_code #NextSubdivisionCode} => String
      #   * {Types::ListGeoLocationsResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_geo_locations({
      #     start_continent_code: "GeoLocationContinentCode",
      #     start_country_code: "GeoLocationCountryCode",
      #     start_subdivision_code: "GeoLocationSubdivisionCode",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_geo_locations(params = {}, options = {})
        req = build_request(:list_geo_locations, params)
        req.send_request(options)
      end

      # To retrieve a list of your health checks, send a `GET` request to the
      # `/Route 53 API version/healthcheck` resource. The response to this
      # request includes a `HealthChecks` element with zero, one, or multiple
      # `HealthCheck` child elements. By default, the list of health checks is
      # displayed on a single page. You can control the length of the page
      # that is displayed by using the `MaxItems` parameter. You can use the
      # `Marker` parameter to control the health check that the list begins
      # with.
      #
      # <note> Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to a value greater than 100, Amazon Route 53 returns only the first 100.</note>
      # @option params [String] :marker
      #   If the request returned more than one page of results, submit another
      #   request and specify the value of `NextMarker` from the last response
      #   in the `marker` parameter to get the next page of results.
      # @option params [Integer] :max_items
      #   Specify the maximum number of health checks to return per page of
      #   results.
      # @return [Types::ListHealthChecksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListHealthChecksResponse#health_checks #HealthChecks} => Array&lt;Types::HealthCheck&gt;
      #   * {Types::ListHealthChecksResponse#marker #Marker} => String
      #   * {Types::ListHealthChecksResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListHealthChecksResponse#next_marker #NextMarker} => String
      #   * {Types::ListHealthChecksResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_health_checks({
      #     marker: "PageMarker",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
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
      #   resp.health_checks[0].health_check_config.alarm_identifier.region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1"
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_health_checks(params = {}, options = {})
        req = build_request(:list_health_checks, params)
        req.send_request(options)
      end

      # To retrieve a list of your hosted zones, send a `GET` request to the
      # `/Route 53 API version/hostedzone` resource. The response to this
      # request includes a `HostedZones` element with zero, one, or multiple
      # `HostedZone` child elements. By default, the list of hosted zones is
      # displayed on a single page. You can control the length of the page
      # that is displayed by using the `MaxItems` parameter. You can use the
      # `Marker` parameter to control the hosted zone that the list begins
      # with.
      #
      # <note> Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to a value greater than 100, Amazon Route 53 returns only the first 100.</note>
      # @option params [String] :marker
      #   If the request returned more than one page of results, submit another
      #   request and specify the value of `NextMarker` from the last response
      #   in the `marker` parameter to get the next page of results.
      # @option params [Integer] :max_items
      #   Specify the maximum number of hosted zones to return per page of
      #   results.
      # @option params [String] :delegation_set_id
      # @return [Types::ListHostedZonesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListHostedZonesResponse#hosted_zones #HostedZones} => Array&lt;Types::HostedZone&gt;
      #   * {Types::ListHostedZonesResponse#marker #Marker} => String
      #   * {Types::ListHostedZonesResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListHostedZonesResponse#next_marker #NextMarker} => String
      #   * {Types::ListHostedZonesResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_hosted_zones({
      #     marker: "PageMarker",
      #     max_items: 1,
      #     delegation_set_id: "ResourceId",
      #   })
      #
      # @example Response structure
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_hosted_zones(params = {}, options = {})
        req = build_request(:list_hosted_zones, params)
        req.send_request(options)
      end

      # To retrieve a list of your hosted zones in lexicographic order, send a
      # `GET` request to the `/Route 53 API version/hostedzonesbyname`
      # resource. The response to this request includes a `HostedZones`
      # element with zero or more `HostedZone` child elements
      # lexicographically ordered by DNS name. By default, the list of hosted
      # zones is displayed on a single page. You can control the length of the
      # page that is displayed by using the `MaxItems` parameter. You can use
      # the `DNSName` and `HostedZoneId` parameters to control the hosted zone
      # that the list begins with.
      #
      # <note> Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to a value greater than 100, Amazon Route 53 returns only the first 100.</note>
      # @option params [String] :dns_name
      #   The first name in the lexicographic ordering of domain names that you
      #   want the `ListHostedZonesByNameRequest` request to list.
      #
      #   If the request returned more than one page of results, submit another
      #   request and specify the value of `NextDNSName` and `NextHostedZoneId`
      #   from the last response in the `DNSName` and `HostedZoneId` parameters
      #   to get the next page of results.
      # @option params [String] :hosted_zone_id
      #   If the request returned more than one page of results, submit another
      #   request and specify the value of `NextDNSName` and `NextHostedZoneId`
      #   from the last response in the `DNSName` and `HostedZoneId` parameters
      #   to get the next page of results.
      # @option params [Integer] :max_items
      #   Specify the maximum number of hosted zones to return per page of
      #   results.
      # @return [Types::ListHostedZonesByNameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListHostedZonesByNameResponse#hosted_zones #HostedZones} => Array&lt;Types::HostedZone&gt;
      #   * {Types::ListHostedZonesByNameResponse#dns_name #DNSName} => String
      #   * {Types::ListHostedZonesByNameResponse#hosted_zone_id #HostedZoneId} => String
      #   * {Types::ListHostedZonesByNameResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListHostedZonesByNameResponse#next_dns_name #NextDNSName} => String
      #   * {Types::ListHostedZonesByNameResponse#next_hosted_zone_id #NextHostedZoneId} => String
      #   * {Types::ListHostedZonesByNameResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_hosted_zones_by_name({
      #     dns_name: "DNSName",
      #     hosted_zone_id: "ResourceId",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_hosted_zones_by_name(params = {}, options = {})
        req = build_request(:list_hosted_zones_by_name, params)
        req.send_request(options)
      end

      # List the resource record sets in a specified hosted zone. Send a GET
      # request to the `2013-04-01/hostedzone/hosted zone ID/rrset` resource.
      #
      # `ListResourceRecordSets` returns up to 100 resource record sets at a
      # time in ASCII order, beginning at a position specified by the name and
      # type elements. The action sorts results first by DNS name with the
      # labels reversed, for example:
      #
      # `com.example.www.`
      #
      # Note the trailing dot, which can change the sort order in some
      # circumstances. When multiple records have the same DNS name, the
      # action sorts results by the record type.
      #
      # You can use the name and type elements to adjust the beginning
      # position of the list of resource record sets returned:
      #
      # * **If you do not specify `Name` or `Type`**\: The results begin with
      #   the first resource record set that the hosted zone contains.
      # * **If you specify `Name` but not `Type`**\: The results begin with
      #   the first resource record set in the list whose name is greater than
      #   or equal to Name.
      # * **If you specify `Type` but not `Name`**\: Amazon Route 53 returns
      #   the `InvalidInput` error.
      # * **If you specify both `Name` and `Type`**\: The results begin with
      #   the first resource record set in the list whose name is greater than
      #   or equal to `Name`, and whose type is greater than or equal to
      #   `Type`.
      #
      # This action returns the most current version of the records. This
      # includes records that are `PENDING`, and that are not yet available on
      # all Amazon Route 53 DNS servers.
      #
      # To ensure that you get an accurate listing of the resource record sets
      # for a hosted zone at a point in time, do not submit a
      # `ChangeResourceRecordSets` request while you are paging through the
      # results of a `ListResourceRecordSets` request. If you do, some pages
      # may display results without the latest changes while other pages
      # display results with the latest changes.
      # @option params [required, String] :hosted_zone_id
      #   The ID of the hosted zone that contains the resource record sets that
      #   you want to get.
      # @option params [String] :start_record_name
      #   The first name in the lexicographic ordering of domain names that you
      #   want the `ListResourceRecordSets` request to list.
      # @option params [String] :start_record_type
      #   The DNS type at which to begin the listing of resource record sets.
      #
      #   Valid values: `A` \| `AAAA` \| `CNAME` \| `MX` \| `NS` \| `PTR` \|
      #   `SOA` \| `SPF` \| `SRV` \| `TXT`
      #
      #   Values for Weighted Resource Record Sets: `A` \| `AAAA` \| `CNAME` \|
      #   `TXT`
      #
      #   Values for Regional Resource Record Sets: `A` \| `AAAA` \| `CNAME` \|
      #   `TXT`
      #
      #   Values for Alias Resource Record Sets: `A` \| `AAAA`
      #
      #   Constraint: Specifying `type` without specifying `name` returns an
      #   `InvalidInput` error.
      # @option params [String] :start_record_identifier
      #   *Weighted resource record sets only:* If results were truncated for a
      #   given DNS name and type, specify the value of `NextRecordIdentifier`
      #   from the previous response to get the next resource record set that
      #   has the current DNS name and type.
      # @option params [Integer] :max_items
      #   The maximum number of records you want in the response body.
      # @return [Types::ListResourceRecordSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListResourceRecordSetsResponse#resource_record_sets #ResourceRecordSets} => Array&lt;Types::ResourceRecordSet&gt;
      #   * {Types::ListResourceRecordSetsResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListResourceRecordSetsResponse#next_record_name #NextRecordName} => String
      #   * {Types::ListResourceRecordSetsResponse#next_record_type #NextRecordType} => String
      #   * {Types::ListResourceRecordSetsResponse#next_record_identifier #NextRecordIdentifier} => String
      #   * {Types::ListResourceRecordSetsResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_resource_record_sets({
      #     hosted_zone_id: "ResourceId", # required
      #     start_record_name: "DNSName",
      #     start_record_type: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #     start_record_identifier: "ResourceRecordSetIdentifier",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.resource_record_sets #=> Array
      #   resp.resource_record_sets[0].name #=> String
      #   resp.resource_record_sets[0].type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.resource_record_sets[0].set_identifier #=> String
      #   resp.resource_record_sets[0].weight #=> Integer
      #   resp.resource_record_sets[0].region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1", "cn-north-1", "ap-south-1"
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
      #   resp.next_record_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.next_record_identifier #=> String
      #   resp.max_items #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_resource_record_sets(params = {}, options = {})
        req = build_request(:list_resource_record_sets, params)
        req.send_request(options)
      end

      # To retrieve a list of your reusable delegation sets, send a `GET`
      # request to the `/Route 53 API version/delegationset` resource. The
      # response to this request includes a `DelegationSets` element with
      # zero, one, or multiple `DelegationSet` child elements. By default, the
      # list of delegation sets is displayed on a single page. You can control
      # the length of the page that is displayed by using the `MaxItems`
      # parameter. You can use the `Marker` parameter to control the
      # delegation set that the list begins with.
      #
      # <note> Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to a value greater than 100, Amazon Route 53 returns only the first 100.</note>
      # @option params [String] :marker
      #   If the request returned more than one page of results, submit another
      #   request and specify the value of `NextMarker` from the last response
      #   in the `marker` parameter to get the next page of results.
      # @option params [Integer] :max_items
      #   Specify the maximum number of reusable delegation sets to return per
      #   page of results.
      # @return [Types::ListReusableDelegationSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListReusableDelegationSetsResponse#delegation_sets #DelegationSets} => Array&lt;Types::DelegationSet&gt;
      #   * {Types::ListReusableDelegationSetsResponse#marker #Marker} => String
      #   * {Types::ListReusableDelegationSetsResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListReusableDelegationSetsResponse#next_marker #NextMarker} => String
      #   * {Types::ListReusableDelegationSetsResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_reusable_delegation_sets({
      #     marker: "PageMarker",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.delegation_sets #=> Array
      #   resp.delegation_sets[0].id #=> String
      #   resp.delegation_sets[0].caller_reference #=> String
      #   resp.delegation_sets[0].name_servers #=> Array
      #   resp.delegation_sets[0].name_servers[0] #=> String
      #   resp.marker #=> String
      #   resp.is_truncated #=> Boolean
      #   resp.next_marker #=> String
      #   resp.max_items #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_reusable_delegation_sets(params = {}, options = {})
        req = build_request(:list_reusable_delegation_sets, params)
        req.send_request(options)
      end

      # @option params [required, String] :resource_type
      #   The type of the resource.
      #
      #   \- The resource type for health checks is `healthcheck`.
      #
      #   \- The resource type for hosted zones is `hostedzone`.
      # @option params [required, String] :resource_id
      #   The ID of the resource for which you want to retrieve tags.
      # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForResourceResponse#resource_tag_set #ResourceTagSet} => Types::ResourceTagSet
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_resource({
      #     resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
      #     resource_id: "TagResourceId", # required
      #   })
      #
      # @example Response structure
      #   resp.resource_tag_set.resource_type #=> String, one of "healthcheck", "hostedzone"
      #   resp.resource_tag_set.resource_id #=> String
      #   resp.resource_tag_set.tags #=> Array
      #   resp.resource_tag_set.tags[0].key #=> String
      #   resp.resource_tag_set.tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tags_for_resource(params = {}, options = {})
        req = build_request(:list_tags_for_resource, params)
        req.send_request(options)
      end

      # @option params [required, String] :resource_type
      #   The type of the resources.
      #
      #   \- The resource type for health checks is `healthcheck`.
      #
      #   \- The resource type for hosted zones is `hostedzone`.
      # @option params [required, Array<String>] :resource_ids
      #   A complex type that contains the ResourceId element for each resource
      #   for which you want to get a list of tags.
      # @return [Types::ListTagsForResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForResourcesResponse#resource_tag_sets #ResourceTagSets} => Array&lt;Types::ResourceTagSet&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_resources({
      #     resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
      #     resource_ids: ["TagResourceId"], # required
      #   })
      #
      # @example Response structure
      #   resp.resource_tag_sets #=> Array
      #   resp.resource_tag_sets[0].resource_type #=> String, one of "healthcheck", "hostedzone"
      #   resp.resource_tag_sets[0].resource_id #=> String
      #   resp.resource_tag_sets[0].tags #=> Array
      #   resp.resource_tag_sets[0].tags[0].key #=> String
      #   resp.resource_tag_sets[0].tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tags_for_resources(params = {}, options = {})
        req = build_request(:list_tags_for_resources, params)
        req.send_request(options)
      end

      # Gets information about the latest version for every traffic policy
      # that is associated with the current AWS account. To get the
      # information, send a `GET` request to the `/Route 53 API
      # version/trafficpolicy` resource.
      #
      # Amazon Route 53 returns a maximum of 100 items in each response. If
      # you have a lot of traffic policies, you can use the `maxitems`
      # parameter to list them in groups of up to 100.
      #
      # The response includes three values that help you navigate from one
      # group of `maxitems` traffic policies to the next:
      #
      # * **IsTruncated**
      # If the value of `IsTruncated` in the response is `true`, there are
      # more traffic policies associated with the current AWS account.
      #
      # If `IsTruncated` is `false`, this response includes the last traffic
      # policy that is associated with the current account.
      #
      # * **TrafficPolicyIdMarker**
      # If `IsTruncated` is `true`, `TrafficPolicyIdMarker` is the ID of the
      # first traffic policy in the next group of `MaxItems` traffic policies.
      # If you want to list more traffic policies, make another call to
      # `ListTrafficPolicies`, and specify the value of the
      # `TrafficPolicyIdMarker` element from the response in the
      # `TrafficPolicyIdMarker` request parameter.
      #
      # If `IsTruncated` is `false`, the `TrafficPolicyIdMarker` element is
      # omitted from the response.
      #
      # * **MaxItems**
      # The value that you specified for the `MaxItems` parameter in the
      # request that produced the current response.
      # @option params [String] :traffic_policy_id_marker
      #   For your first request to `ListTrafficPolicies`, do not include the
      #   `TrafficPolicyIdMarker` parameter.
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
      # @option params [Integer] :max_items
      #   The maximum number of traffic policies to be included in the response
      #   body for this request. If you have more than `MaxItems` traffic
      #   policies, the value of the `IsTruncated` element in the response is
      #   `true`, and the value of the `TrafficPolicyIdMarker` element is the ID
      #   of the first traffic policy in the next group of `MaxItems` traffic
      #   policies.
      # @return [Types::ListTrafficPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTrafficPoliciesResponse#traffic_policy_summaries #TrafficPolicySummaries} => Array&lt;Types::TrafficPolicySummary&gt;
      #   * {Types::ListTrafficPoliciesResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListTrafficPoliciesResponse#traffic_policy_id_marker #TrafficPolicyIdMarker} => String
      #   * {Types::ListTrafficPoliciesResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_traffic_policies({
      #     traffic_policy_id_marker: "TrafficPolicyId",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy_summaries #=> Array
      #   resp.traffic_policy_summaries[0].id #=> String
      #   resp.traffic_policy_summaries[0].name #=> String
      #   resp.traffic_policy_summaries[0].type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.traffic_policy_summaries[0].latest_version #=> Integer
      #   resp.traffic_policy_summaries[0].traffic_policy_count #=> Integer
      #   resp.is_truncated #=> Boolean
      #   resp.traffic_policy_id_marker #=> String
      #   resp.max_items #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_traffic_policies(params = {}, options = {})
        req = build_request(:list_traffic_policies, params)
        req.send_request(options)
      end

      # Gets information about the traffic policy instances that you created
      # by using the current AWS account.
      #
      # <note>After you submit an `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the `State` response element.</note>
      #
      # To get information about the traffic policy instances that are
      # associated with the current AWS account, send a `GET` request to the
      # `/Route 53 API version/trafficpolicyinstance` resource.
      #
      # Amazon Route 53 returns a maximum of 100 items in each response. If
      # you have a lot of traffic policy instances, you can use the `MaxItems`
      # parameter to list them in groups of up to 100.
      #
      # The response includes five values that help you navigate from one
      # group of `MaxItems` traffic policy instances to the next:
      #
      # * **IsTruncated**
      # If the value of `IsTruncated` in the response is `true`, there are
      # more traffic policy instances associated with the current AWS account.
      #
      # If `IsTruncated` is `false`, this response includes the last traffic
      # policy instance that is associated with the current account.
      #
      # * **MaxItems**
      # The value that you specified for the `MaxItems` parameter in the
      # request that produced the current response.
      #
      # * **HostedZoneIdMarker**, **TrafficPolicyInstanceNameMarker**, and
      #   **TrafficPolicyInstanceTypeMarker**
      # If `IsTruncated` is `true`, these three values in the response
      # represent the first traffic policy instance in the next group of
      # `MaxItems` traffic policy instances. To list more traffic policy
      # instances, make another call to `ListTrafficPolicyInstances`, and
      # specify these values in the corresponding request parameters.
      #
      # If `IsTruncated` is `false`, all three elements are omitted from the
      # response.
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
      # @option params [Integer] :max_items
      #   The maximum number of traffic policy instances to be included in the
      #   response body for this request. If you have more than `MaxItems`
      #   traffic policy instances, the value of the `IsTruncated` element in
      #   the response is `true`, and the values of `HostedZoneIdMarker`,
      #   `TrafficPolicyInstanceNameMarker`, and
      #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
      #   instance in the next group of `MaxItems` traffic policy instances.
      # @return [Types::ListTrafficPolicyInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTrafficPolicyInstancesResponse#traffic_policy_instances #TrafficPolicyInstances} => Array&lt;Types::TrafficPolicyInstance&gt;
      #   * {Types::ListTrafficPolicyInstancesResponse#hosted_zone_id_marker #HostedZoneIdMarker} => String
      #   * {Types::ListTrafficPolicyInstancesResponse#traffic_policy_instance_name_marker #TrafficPolicyInstanceNameMarker} => String
      #   * {Types::ListTrafficPolicyInstancesResponse#traffic_policy_instance_type_marker #TrafficPolicyInstanceTypeMarker} => String
      #   * {Types::ListTrafficPolicyInstancesResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListTrafficPolicyInstancesResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_traffic_policy_instances({
      #     hosted_zone_id_marker: "ResourceId",
      #     traffic_policy_instance_name_marker: "DNSName",
      #     traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy_instances #=> Array
      #   resp.traffic_policy_instances[0].id #=> String
      #   resp.traffic_policy_instances[0].hosted_zone_id #=> String
      #   resp.traffic_policy_instances[0].name #=> String
      #   resp.traffic_policy_instances[0].ttl #=> Integer
      #   resp.traffic_policy_instances[0].state #=> String
      #   resp.traffic_policy_instances[0].message #=> String
      #   resp.traffic_policy_instances[0].traffic_policy_id #=> String
      #   resp.traffic_policy_instances[0].traffic_policy_version #=> Integer
      #   resp.traffic_policy_instances[0].traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.hosted_zone_id_marker #=> String
      #   resp.traffic_policy_instance_name_marker #=> String
      #   resp.traffic_policy_instance_type_marker #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.is_truncated #=> Boolean
      #   resp.max_items #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_traffic_policy_instances(params = {}, options = {})
        req = build_request(:list_traffic_policy_instances, params)
        req.send_request(options)
      end

      # Gets information about the traffic policy instances that you created
      # in a specified hosted zone.
      #
      # <note>After you submit an `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the `State` response element.</note>
      #
      # To get information about the traffic policy instances that you created
      # in a specified hosted zone, send a `GET` request to the `/Route 53 API
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
      # If the value of `IsTruncated in the response is true, there are more
      # traffic policy instances associated with the current AWS account.</p>
      # If IsTruncated is false, this response includes the last traffic
      # policy instance that is associated with the current account. MaxItems
      # The value that you specified for the MaxItems parameter in the request
      # that produced the current response. TrafficPolicyInstanceNameMarker
      # and TrafficPolicyInstanceTypeMarker If IsTruncated is true, these two
      # values in the response represent the first traffic policy instance in
      # the next group of MaxItems traffic policy instances. To list more
      # traffic policy instances, make another call to
      # ListTrafficPolicyInstancesByHostedZone, and specify these values in
      # the corresponding request parameters. If IsTruncated is false, all
      # three elements are omitted from the response. </ul>
      # `
      # @option params [required, String] :hosted_zone_id
      #   The ID of the hosted zone for which you want to list traffic policy
      #   instances.
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
      # @option params [Integer] :max_items
      #   The maximum number of traffic policy instances to be included in the
      #   response body for this request. If you have more than `MaxItems`
      #   traffic policy instances, the value of the `IsTruncated` element in
      #   the response is `true`, and the values of `HostedZoneIdMarker`,
      #   `TrafficPolicyInstanceNameMarker`, and
      #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
      #   instance in the next group of `MaxItems` traffic policy instances.
      # @return [Types::ListTrafficPolicyInstancesByHostedZoneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#traffic_policy_instances #TrafficPolicyInstances} => Array&lt;Types::TrafficPolicyInstance&gt;
      #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#traffic_policy_instance_name_marker #TrafficPolicyInstanceNameMarker} => String
      #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#traffic_policy_instance_type_marker #TrafficPolicyInstanceTypeMarker} => String
      #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListTrafficPolicyInstancesByHostedZoneResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_traffic_policy_instances_by_hosted_zone({
      #     hosted_zone_id: "ResourceId", # required
      #     traffic_policy_instance_name_marker: "DNSName",
      #     traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy_instances #=> Array
      #   resp.traffic_policy_instances[0].id #=> String
      #   resp.traffic_policy_instances[0].hosted_zone_id #=> String
      #   resp.traffic_policy_instances[0].name #=> String
      #   resp.traffic_policy_instances[0].ttl #=> Integer
      #   resp.traffic_policy_instances[0].state #=> String
      #   resp.traffic_policy_instances[0].message #=> String
      #   resp.traffic_policy_instances[0].traffic_policy_id #=> String
      #   resp.traffic_policy_instances[0].traffic_policy_version #=> Integer
      #   resp.traffic_policy_instances[0].traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.traffic_policy_instance_name_marker #=> String
      #   resp.traffic_policy_instance_type_marker #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.is_truncated #=> Boolean
      #   resp.max_items #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_traffic_policy_instances_by_hosted_zone(params = {}, options = {})
        req = build_request(:list_traffic_policy_instances_by_hosted_zone, params)
        req.send_request(options)
      end

      # Gets information about the traffic policy instances that you created
      # by using a specify traffic policy version.
      #
      # <note>After you submit a `CreateTrafficPolicyInstance` or an `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the `State` response element.</note>
      #
      # To get information about the traffic policy instances that you created
      # by using a specify traffic policy version, send a `GET` request to the
      # `/Route 53 API version/trafficpolicyinstance` resource and include the
      # ID and version of the traffic policy.
      #
      # Amazon Route 53 returns a maximum of 100 items in each response. If
      # you have a lot of traffic policy instances, you can use the `MaxItems`
      # parameter to list them in groups of up to 100.
      #
      # The response includes five values that help you navigate from one
      # group of `MaxItems` traffic policy instances to the next:
      #
      # * **IsTruncated**
      #   If the value of `IsTruncated` in the response is `true`, there are
      #   more traffic policy instances associated with the specified traffic
      #   policy.
      # 
      #   If `IsTruncated` is `false`, this response includes the last traffic
      #   policy instance that is associated with the specified traffic
      #   policy.
      #
      # * **MaxItems**
      #   The value that you specified for the `MaxItems` parameter in the
      #   request that produced the current response.
      #
      # * **HostedZoneIdMarker**, **TrafficPolicyInstanceNameMarker**, and
      #   **TrafficPolicyInstanceTypeMarker**
      #   If `IsTruncated` is `true`, these values in the response represent
      #   the first traffic policy instance in the next group of `MaxItems`
      #   traffic policy instances. To list more traffic policy instances,
      #   make another call to `ListTrafficPolicyInstancesByPolicy`, and
      #   specify these values in the corresponding request parameters.
      # 
      #   If `IsTruncated` is `false`, all three elements are omitted from the
      #   response.
      # @option params [required, String] :traffic_policy_id
      #   The ID of the traffic policy for which you want to list traffic policy
      #   instances.
      # @option params [required, Integer] :traffic_policy_version
      #   The version of the traffic policy for which you want to list traffic
      #   policy instances. The version must be associated with the traffic
      #   policy that is specified by `TrafficPolicyId`.
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
      # @option params [Integer] :max_items
      #   The maximum number of traffic policy instances to be included in the
      #   response body for this request. If you have more than `MaxItems`
      #   traffic policy instances, the value of the `IsTruncated` element in
      #   the response is `true`, and the values of `HostedZoneIdMarker`,
      #   `TrafficPolicyInstanceNameMarker`, and
      #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
      #   instance in the next group of `MaxItems` traffic policy instances.
      # @return [Types::ListTrafficPolicyInstancesByPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#traffic_policy_instances #TrafficPolicyInstances} => Array&lt;Types::TrafficPolicyInstance&gt;
      #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#hosted_zone_id_marker #HostedZoneIdMarker} => String
      #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#traffic_policy_instance_name_marker #TrafficPolicyInstanceNameMarker} => String
      #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#traffic_policy_instance_type_marker #TrafficPolicyInstanceTypeMarker} => String
      #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListTrafficPolicyInstancesByPolicyResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_traffic_policy_instances_by_policy({
      #     traffic_policy_id: "TrafficPolicyId", # required
      #     traffic_policy_version: 1, # required
      #     hosted_zone_id_marker: "ResourceId",
      #     traffic_policy_instance_name_marker: "DNSName",
      #     traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy_instances #=> Array
      #   resp.traffic_policy_instances[0].id #=> String
      #   resp.traffic_policy_instances[0].hosted_zone_id #=> String
      #   resp.traffic_policy_instances[0].name #=> String
      #   resp.traffic_policy_instances[0].ttl #=> Integer
      #   resp.traffic_policy_instances[0].state #=> String
      #   resp.traffic_policy_instances[0].message #=> String
      #   resp.traffic_policy_instances[0].traffic_policy_id #=> String
      #   resp.traffic_policy_instances[0].traffic_policy_version #=> Integer
      #   resp.traffic_policy_instances[0].traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.hosted_zone_id_marker #=> String
      #   resp.traffic_policy_instance_name_marker #=> String
      #   resp.traffic_policy_instance_type_marker #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.is_truncated #=> Boolean
      #   resp.max_items #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_traffic_policy_instances_by_policy(params = {}, options = {})
        req = build_request(:list_traffic_policy_instances_by_policy, params)
        req.send_request(options)
      end

      # Gets information about all of the versions for a specified traffic
      # policy. `ListTrafficPolicyVersions` lists only versions that have not
      # been deleted.
      #
      # Amazon Route 53 returns a maximum of 100 items in each response. If
      # you have a lot of traffic policies, you can use the `maxitems`
      # parameter to list them in groups of up to 100.
      #
      # The response includes three values that help you navigate from one
      # group of `maxitems`maxitems traffic policies to the next:
      #
      # * **IsTruncated**
      # If the value of `IsTruncated` in the response is `true`, there are
      # more traffic policy versions associated with the specified traffic
      # policy.
      #
      # If `IsTruncated` is `false`, this response includes the last traffic
      # policy version that is associated with the specified traffic policy.
      #
      # * **TrafficPolicyVersionMarker**
      # The ID of the next traffic policy version that is associated with the
      # current AWS account. If you want to list more traffic policies, make
      # another call to `ListTrafficPolicyVersions`, and specify the value of
      # the `TrafficPolicyVersionMarker` element in the
      # `TrafficPolicyVersionMarker` request parameter.
      #
      # If `IsTruncated` is `false`, Amazon Route 53 omits the
      # `TrafficPolicyVersionMarker` element from the response.
      #
      # * **MaxItems**
      # The value that you specified for the `MaxItems` parameter in the
      # request that produced the current response.
      # @option params [required, String] :id
      #   Specify the value of `Id` of the traffic policy for which you want to
      #   list all versions.
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
      # @option params [Integer] :max_items
      #   The maximum number of traffic policy versions that you want Amazon
      #   Route 53 to include in the response body for this request. If the
      #   specified traffic policy has more than `MaxItems` versions, the value
      #   of the `IsTruncated` element in the response is `true`, and the value
      #   of the `TrafficPolicyVersionMarker` element is the ID of the first
      #   version in the next group of `MaxItems` traffic policy versions.
      # @return [Types::ListTrafficPolicyVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTrafficPolicyVersionsResponse#traffic_policies #TrafficPolicies} => Array&lt;Types::TrafficPolicy&gt;
      #   * {Types::ListTrafficPolicyVersionsResponse#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListTrafficPolicyVersionsResponse#traffic_policy_version_marker #TrafficPolicyVersionMarker} => String
      #   * {Types::ListTrafficPolicyVersionsResponse#max_items #MaxItems} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_traffic_policy_versions({
      #     id: "TrafficPolicyId", # required
      #     traffic_policy_version_marker: "TrafficPolicyVersionMarker",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.traffic_policies #=> Array
      #   resp.traffic_policies[0].id #=> String
      #   resp.traffic_policies[0].version #=> Integer
      #   resp.traffic_policies[0].name #=> String
      #   resp.traffic_policies[0].type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.traffic_policies[0].document #=> String
      #   resp.traffic_policies[0].comment #=> String
      #   resp.is_truncated #=> Boolean
      #   resp.traffic_policy_version_marker #=> String
      #   resp.max_items #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_traffic_policy_versions(params = {}, options = {})
        req = build_request(:list_traffic_policy_versions, params)
        req.send_request(options)
      end

      # This action updates an existing health check.
      #
      # To update a health check, send a `POST` request to the `/Route 53 API
      # version/healthcheck/health check ID` resource. The request body must
      # include a document with an `UpdateHealthCheckRequest` element. The
      # response returns an `UpdateHealthCheckResponse` element, which
      # contains metadata about the health check.
      # @option params [required, String] :health_check_id
      #   The ID of the health check to update.
      # @option params [Integer] :health_check_version
      #   Optional. When you specify a health check version, Amazon Route 53
      #   compares this value with the current value in the health check, which
      #   prevents you from updating the health check when the versions don\'t
      #   match. Using `HealthCheckVersion` lets you prevent overwriting another
      #   change to the health check.
      # @option params [String] :ip_address
      #   The IP address of the resource that you want to check.
      #
      #   Specify this value only if you want to change it.
      # @option params [Integer] :port
      #   The port on which you want Amazon Route 53 to open a connection to
      #   perform health checks.
      #
      #   Specify this value only if you want to change it.
      # @option params [String] :resource_path
      #   The path that you want Amazon Route 53 to request when performing
      #   health checks. The path can be any value for which your endpoint will
      #   return an HTTP status code of 2xx or 3xx when the endpoint is healthy,
      #   for example the file /docs/route53-health-check.html.
      #
      #   Specify this value only if you want to change it.
      # @option params [String] :fully_qualified_domain_name
      #   Fully qualified domain name of the instance to be health checked.
      #
      #   Specify this value only if you want to change it.
      # @option params [String] :search_string
      #   If the value of `Type` is `HTTP_STR_MATCH` or `HTTP_STR_MATCH`, the
      #   string that you want Amazon Route 53 to search for in the response
      #   body from the specified resource. If the string appears in the
      #   response body, Amazon Route 53 considers the resource healthy. Amazon
      #   Route 53 considers case when searching for `SearchString` in the
      #   response body.
      #
      #   Specify this value only if you want to change it.
      # @option params [Integer] :failure_threshold
      #   The number of consecutive health checks that an endpoint must pass or
      #   fail for Amazon Route 53 to change the current status of the endpoint
      #   from unhealthy to healthy or vice versa.
      #
      #   Valid values are integers between 1 and 10. For more information, see
      #   \"How Amazon Route 53 Determines Whether an Endpoint Is Healthy\" in
      #   the Amazon Route 53 Developer Guide.
      #
      #   Specify this value only if you want to change it.
      # @option params [Boolean] :inverted
      #   A boolean value that indicates whether the status of health check
      #   should be inverted. For example, if a health check is healthy but
      #   `Inverted` is `True`, then Amazon Route 53 considers the health check
      #   to be unhealthy.
      #
      #   Specify this value only if you want to change it.
      # @option params [Integer] :health_threshold
      #   The minimum number of child health checks that must be healthy for
      #   Amazon Route 53 to consider the parent health check to be healthy.
      #   Valid values are integers between 0 and 256, inclusive.
      #
      #   Specify this value only if you want to change it.
      # @option params [Array<String>] :child_health_checks
      #   For a specified parent health check, a list of `HealthCheckId` values
      #   for the associated child health checks.
      #
      #   Specify this value only if you want to change it.
      # @option params [Boolean] :enable_sni
      #   Specify whether you want Amazon Route 53 to send the value of
      #   `FullyQualifiedDomainName` to the endpoint in the `client_hello`
      #   message during TLS negotiation. If you don\'t specify a value for
      #   `EnableSNI`, Amazon Route 53 defaults to `true` when `Type` is `HTTPS`
      #   or `HTTPS_STR_MATCH` and defaults to `false` when `Type` is any other
      #   value.
      #
      #   Specify this value only if you want to change it.
      # @option params [Array<String>] :regions
      #   A list of `HealthCheckRegion` values that specify the Amazon EC2
      #   regions that you want Amazon Route 53 to use to perform health checks.
      #   You must specify at least three regions.
      #
      #   <note>When you remove a region from the list, Amazon Route 53 will briefly continue to check your endpoint from that region.</note>
      #
      #   Specify this value only if you want to change it.
      # @option params [Types::AlarmIdentifier] :alarm_identifier
      #   A complex type that contains information to uniquely identify the
      #   CloudWatch alarm that you\'re associating with a Route 53 health
      #   check.
      # @option params [String] :insufficient_data_health_status
      # @return [Types::UpdateHealthCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateHealthCheckResponse#health_check #HealthCheck} => Types::HealthCheck
      #
      # @example Request syntax with placeholder values
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
      #       region: "us-east-1", # required, accepts us-east-1, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
      #       name: "AlarmName", # required
      #     },
      #     insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
      #   })
      #
      # @example Response structure
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
      #   resp.health_check.health_check_config.alarm_identifier.region #=> String, one of "us-east-1", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "sa-east-1"
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_health_check(params = {}, options = {})
        req = build_request(:update_health_check, params)
        req.send_request(options)
      end

      # To update the hosted zone comment, send a `POST` request to the
      # `/Route 53 API version/hostedzone/hosted zone ID` resource. The
      # request body must include a document with a
      # `UpdateHostedZoneCommentRequest` element. The response to this request
      # includes the modified `HostedZone` element.
      #
      # <note> The comment can have a maximum length of 256 characters.</note>
      # @option params [required, String] :id
      #   The ID of the hosted zone you want to update.
      # @option params [String] :comment
      #   A comment about your hosted zone.
      # @return [Types::UpdateHostedZoneCommentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateHostedZoneCommentResponse#hosted_zone #HostedZone} => Types::HostedZone
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_hosted_zone_comment({
      #     id: "ResourceId", # required
      #     comment: "ResourceDescription",
      #   })
      #
      # @example Response structure
      #   resp.hosted_zone.id #=> String
      #   resp.hosted_zone.name #=> String
      #   resp.hosted_zone.caller_reference #=> String
      #   resp.hosted_zone.config.comment #=> String
      #   resp.hosted_zone.config.private_zone #=> Boolean
      #   resp.hosted_zone.resource_record_set_count #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_hosted_zone_comment(params = {}, options = {})
        req = build_request(:update_hosted_zone_comment, params)
        req.send_request(options)
      end

      # Updates the comment for a specified traffic policy version.
      #
      # To update the comment, send a `POST` request to the `/Route 53 API
      # version/trafficpolicy/` resource.
      #
      # The request body must include a document with an
      # `UpdateTrafficPolicyCommentRequest` element.
      # @option params [required, String] :id
      #   The value of `Id` for the traffic policy for which you want to update
      #   the comment.
      # @option params [required, Integer] :version
      #   The value of `Version` for the traffic policy for which you want to
      #   update the comment.
      # @option params [required, String] :comment
      #   The new comment for the specified traffic policy and version.
      # @return [Types::UpdateTrafficPolicyCommentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateTrafficPolicyCommentResponse#traffic_policy #TrafficPolicy} => Types::TrafficPolicy
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_traffic_policy_comment({
      #     id: "TrafficPolicyId", # required
      #     version: 1, # required
      #     comment: "TrafficPolicyComment", # required
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy.id #=> String
      #   resp.traffic_policy.version #=> Integer
      #   resp.traffic_policy.name #=> String
      #   resp.traffic_policy.type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      #   resp.traffic_policy.document #=> String
      #   resp.traffic_policy.comment #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_traffic_policy_comment(params = {}, options = {})
        req = build_request(:update_traffic_policy_comment, params)
        req.send_request(options)
      end

      # Updates the resource record sets in a specified hosted zone that were
      # created based on the settings in a specified traffic policy version.
      #
      # <important>The DNS type of the resource record sets that you're updating must match the DNS type in the JSON document that is associated with the traffic policy version that you're using to update the traffic policy instance.</important>
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
      # 2.  When all of the new resource record sets have been created, Amazon
      #     Route 53 starts to respond to DNS queries for the root resource
      #     record set name (such as example.com) by using the new resource
      #     record sets.
      # 3.  Amazon Route 53 deletes the old group of resource record sets that
      #     are associated with the root resource record set name.
      #
      # To update a traffic policy instance, send a `POST` request to the
      # `/Route 53 API version/trafficpolicyinstance/traffic policy ID`
      # resource. The request body must include a document with an
      # `UpdateTrafficPolicyInstanceRequest` element.
      # @option params [required, String] :id
      #   The ID of the traffic policy instance that you want to update.
      # @option params [required, Integer] :ttl
      #   The TTL that you want Amazon Route 53 to assign to all of the updated
      #   resource record sets.
      # @option params [required, String] :traffic_policy_id
      #   The ID of the traffic policy that you want Amazon Route 53 to use to
      #   update resource record sets for the specified traffic policy instance.
      # @option params [required, Integer] :traffic_policy_version
      #   The version of the traffic policy that you want Amazon Route 53 to use
      #   to update resource record sets for the specified traffic policy
      #   instance.
      # @return [Types::UpdateTrafficPolicyInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateTrafficPolicyInstanceResponse#traffic_policy_instance #TrafficPolicyInstance} => Types::TrafficPolicyInstance
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_traffic_policy_instance({
      #     id: "TrafficPolicyInstanceId", # required
      #     ttl: 1, # required
      #     traffic_policy_id: "TrafficPolicyId", # required
      #     traffic_policy_version: 1, # required
      #   })
      #
      # @example Response structure
      #   resp.traffic_policy_instance.id #=> String
      #   resp.traffic_policy_instance.hosted_zone_id #=> String
      #   resp.traffic_policy_instance.name #=> String
      #   resp.traffic_policy_instance.ttl #=> Integer
      #   resp.traffic_policy_instance.state #=> String
      #   resp.traffic_policy_instance.message #=> String
      #   resp.traffic_policy_instance.traffic_policy_id #=> String
      #   resp.traffic_policy_instance.traffic_policy_version #=> Integer
      #   resp.traffic_policy_instance.traffic_policy_type #=> String, one of "SOA", "A", "TXT", "NS", "CNAME", "MX", "PTR", "SRV", "SPF", "AAAA"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_traffic_policy_instance(params = {}, options = {})
        req = build_request(:update_traffic_policy_instance, params)
        req.send_request(options)
      end

      # @!endgroup

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

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
