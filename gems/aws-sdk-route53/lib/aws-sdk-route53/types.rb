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
    module Types

      # A complex type that contains information to uniquely identify the
      # CloudWatch alarm that you\'re associating with a Route 53 health
      # check.
      # @note When making an API call, pass AlarmIdentifier
      #   data as a hash:
      #
      #       {
      #         region: "us-east-1", # required, accepts us-east-1, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
      #         name: "AlarmName", # required
      #       }
      class AlarmIdentifier < Aws::Structure.new(
        :region,
        :name)

        # @!attribute [rw] region
        #   The `CloudWatchRegion` that the CloudWatch alarm was created in.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the CloudWatch alarm.
        #   @return [String]

      end

      # *Alias resource record sets only:* Information about the CloudFront
      # distribution, ELB load balancer, Amazon S3 bucket, or Amazon Route 53
      # resource record set to which you are routing traffic.
      #
      # If you\'re creating resource record sets for a private hosted zone,
      # note the following:
      #
      # * You can create alias resource record sets only for Amazon Route 53
      #   resource record sets in the same private hosted zone. Creating alias
      #   resource record sets for CloudFront distributions, ELB load
      #   balancers, and Amazon S3 buckets is not supported.
      # * You can\'t create alias resource record sets for failover,
      #   geolocation, or latency resource record sets in a private hosted
      #   zone.
      #
      # For more information and an example, see [Example: Creating Alias
      # Resource Record Sets][1] in the *Amazon Route 53 API Reference*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/Route53/latest/APIReference/CreateAliasRRSAPI.html
      # @note When making an API call, pass AliasTarget
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id: "ResourceId", # required
      #         dns_name: "DNSName", # required
      #         evaluate_target_health: false, # required
      #       }
      class AliasTarget < Aws::Structure.new(
        :hosted_zone_id,
        :dns_name,
        :evaluate_target_health)

        # @!attribute [rw] hosted_zone_id
        #   *Alias resource record sets only:* The value you use depends on
        #   where you want to route queries:
        #
        #   * **A CloudFront distribution:** Specify `Z2FDTNDATAQYW2`.
        #   * An ELB load balancer: Specify the value of the hosted zone ID for
        #     the load balancer. You can get the hosted zone ID by using the AWS
        #     Management Console, the ELB API, or the AWS CLI. Use the same
        #     method to get values for `HostedZoneId` and `DNSName`. If you get
        #     one value from the console and the other value from the API or the
        #     CLI, creating the resource record set will fail.
        #   * **An Amazon S3 bucket that is configured as a static website:**
        #     Specify the hosted zone ID for the Amazon S3 website endpoint in
        #     which you created the bucket. For more information about valid
        #     values, see the table [Amazon Simple Storage Service (S3) Website
        #     Endpoints][1] in the *Amazon Web Services General Reference*.
        #   * **Another Amazon Route 53 resource record set in your hosted
        #     zone:** Specify the hosted zone ID of your hosted zone. (An alias
        #     resource record set cannot reference a resource record set in a
        #     different hosted zone.)
        #
        #   For more information and an example, see [Example: Creating Alias
        #   Resource Record Sets][2] in the *Amazon Route 53 API Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region
        #   [2]: http://docs.aws.amazon.com/Route53/latest/APIReference/CreateAliasRRSAPI.html
        #   @return [String]

        # @!attribute [rw] dns_name
        #   *Alias resource record sets only:* The external DNS name associated
        #   with the AWS Resource. The value that you specify depends on where
        #   you want to route queries:
        #
        #   * **A CloudFront distribution:** Specify the domain name that
        #     CloudFront assigned when you created your distribution. Your
        #     CloudFront distribution must include an alternate domain name that
        #     matches the name of the resource record set. For example, if the
        #     name of the resource record set is `acme.example.com`, your
        #     CloudFront distribution must include `acme.example.com` as one of
        #     the alternate domain names. For more information, see [Using
        #     Alternate Domain Names (CNAMEs)][1] in the *Amazon CloudFront
        #     Developer Guide*.
        #   * **An ELB load balancer:** Specify the DNS name associated with the
        #     load balancer. You can get the DNS name by using the AWS
        #     Management Console, the ELB API, or the AWS CLI. Use the same
        #     method to get values for `HostedZoneId` and `DNSName`. If you get
        #     one value from the console and the other value from the API or the
        #     CLI, creating the resource record set will fail.
        #   * **An Elastic Beanstalk environment:** Specify the CNAME attribute
        #     for the environment. (The environment must have a regionalized
        #     domain name.)
        #   * **An Amazon S3 bucket that is configured as a static website:**
        #     Specify the domain name of the Amazon S3 website endpoint in which
        #     you created the bucket; for example,
        #     `s3-website-us-east-1.amazonaws.com`. For more information about
        #     valid values, see the table [Amazon Simple Storage Service (S3)
        #     Website Endpoints][2] in the *Amazon Web Services General
        #     Reference*. For more information about using Amazon S3 buckets for
        #     websites, see [Hosting a Static Website on Amazon S3][3] in the
        #     *Amazon Simple Storage Service Developer Guide*.
        #   * **Another Amazon Route 53 resource record set:** Specify the value
        #     of the `Name` element for a resource record set in the current
        #     hosted zone.
        #
        #   For more information and an example, see [Example: Creating Alias
        #   Resource Record Sets][4] in the *Amazon Route 53 API Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html
        #   [2]: http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region
        #   [3]: http://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html
        #   [4]: http://docs.aws.amazon.com/Route53/latest/APIReference/CreateAliasRRSAPI.html
        #   @return [String]

        # @!attribute [rw] evaluate_target_health
        #   *Alias resource record sets only:* If you set the value of
        #   `EvaluateTargetHealth` to `true` for the resource record set or sets
        #   in an alias, weighted alias, latency alias, or failover alias
        #   resource record set, and if you specify a value for `HealthCheckId`
        #   for every resource record set that is referenced by these alias
        #   resource record sets, the alias resource record sets inherit the
        #   health of the referenced resource record sets.
        #
        #   In this configuration, when Amazon Route 53 receives a DNS query for
        #   an alias resource record set:
        #
        #   1.  Amazon Route 53 looks at the resource record sets that are
        #       referenced by the alias resource record sets to determine which
        #       health checks they\'re using.
        #   2.  Amazon Route 53 checks the current status of each health check.
        #       (Amazon Route 53 periodically checks the health of the endpoint
        #       that is specified in a health check; it doesn\'t perform the
        #       health check when the DNS query arrives.)
        #   3.  Based on the status of the health checks, Amazon Route 53
        #       determines which resource record sets are healthy. Unhealthy
        #       resource record sets are immediately removed from consideration.
        #       In addition, if all of the resource record sets that are
        #       referenced by an alias resource record set are unhealthy, that
        #       alias resource record set also is immediately removed from
        #       consideration.
        #   4.  Based on the configuration of the alias resource record sets
        #       (weighted alias or latency alias, for example) and the
        #       configuration of the resource record sets that they reference,
        #       Amazon Route 53 chooses a resource record set from the healthy
        #       resource record sets, and responds to the query.
        #
        #   Note the following:
        #
        #   * You cannot set `EvaluateTargetHealth` to true when the alias
        #     target is a CloudFront distribution.
        #   * If the AWS resource that you specify in `AliasTarget` is a
        #     resource record set or a group of resource record sets (for
        #     example, a group of weighted resource record sets), but it is not
        #     another alias resource record set, we recommend that you associate
        #     a health check with all of the resource record sets in the alias
        #     target. For more information, see [What Happens When You Omit
        #     Health Checks?][1] in the *Amazon Route 53 Developer Guide*.
        #   * If you specify an ELB load balancer in `AliasTarget`, Elastic Load
        #     Balancing routes queries only to the healthy Amazon EC2 instances
        #     that are registered with the load balancer. If no Amazon EC2
        #     instances are healthy or if the load balancer itself is unhealthy,
        #     and if `EvaluateTargetHealth` is `true` for the corresponding
        #     alias resource record set, Amazon Route 53 routes queries to other
        #     resources.
        #   * When you create a load balancer, you configure settings for
        #     Elastic Load Balancing health checks; they\'re not Amazon Route 53
        #     health checks, but they perform a similar function. Do not create
        #     Amazon Route 53 health checks for the Amazon EC2 instances that
        #     you register with an ELB load balancer. For more information, see
        #     [How Health Checks Work in More Complex Amazon Route 53
        #     Configurations][2] in the *Amazon Route 53 Developer Guide*.
        #
        #   We recommend that you set `EvaluateTargetHealth` to `true` only when
        #   you have enough idle capacity to handle the failure of one or more
        #   endpoints.
        #
        #   For more information and examples, see [Amazon Route 53 Health
        #   Checks and DNS Failover][3] in the *Amazon Route 53 Developer
        #   Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html#dns-failover-complex-configs-hc-omitting
        #   [2]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html
        #   [3]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html
        #   @return [Boolean]

      end

      # A complex type that contains information about the request to
      # associate a VPC with an hosted zone.
      # @note When making an API call, pass AssociateVPCWithHostedZoneRequest
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id: "ResourceId", # required
      #         vpc: { # required
      #           vpc_region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #           vpc_id: "VPCId",
      #         },
      #         comment: "AssociateVPCComment",
      #       }
      class AssociateVPCWithHostedZoneRequest < Aws::Structure.new(
        :hosted_zone_id,
        :vpc,
        :comment)

        # @!attribute [rw] hosted_zone_id
        #   The ID of the hosted zone you want to associate your VPC with.
        #
        #   Note that you cannot associate a VPC with a hosted zone that
        #   doesn\'t have an existing VPC association.
        #   @return [String]

        # @!attribute [rw] vpc
        #   The VPC that you want your hosted zone to be associated with.
        #   @return [Types::VPC]

        # @!attribute [rw] comment
        #   *Optional:* Any comments you want to include about a
        #   `AssociateVPCWithHostedZoneRequest`.
        #   @return [String]

      end

      # A complex type containing the response information for the request.
      class AssociateVPCWithHostedZoneResponse < Aws::Structure.new(
        :change_info)

        # @!attribute [rw] change_info
        #   A complex type that contains the ID, the status, and the date and
        #   time of your `AssociateVPCWithHostedZoneRequest`.
        #   @return [Types::ChangeInfo]

      end

      # A complex type that contains the information for each change in a
      # change batch request.
      # @note When making an API call, pass Change
      #   data as a hash:
      #
      #       {
      #         action: "CREATE", # required, accepts CREATE, DELETE, UPSERT
      #         resource_record_set: { # required
      #           name: "DNSName", # required
      #           type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #           set_identifier: "ResourceRecordSetIdentifier",
      #           weight: 1,
      #           region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #           geo_location: {
      #             continent_code: "GeoLocationContinentCode",
      #             country_code: "GeoLocationCountryCode",
      #             subdivision_code: "GeoLocationSubdivisionCode",
      #           },
      #           failover: "PRIMARY", # accepts PRIMARY, SECONDARY
      #           ttl: 1,
      #           resource_records: [
      #             {
      #               value: "RData", # required
      #             },
      #           ],
      #           alias_target: {
      #             hosted_zone_id: "ResourceId", # required
      #             dns_name: "DNSName", # required
      #             evaluate_target_health: false, # required
      #           },
      #           health_check_id: "HealthCheckId",
      #           traffic_policy_instance_id: "TrafficPolicyInstanceId",
      #         },
      #       }
      class Change < Aws::Structure.new(
        :action,
        :resource_record_set)

        # @!attribute [rw] action
        #   The action to perform:
        #
        #   * `CREATE`\: Creates a resource record set that has the specified
        #     values.
        #   * `DELETE`\: Deletes a existing resource record set that has the
        #     specified values for `Name`, `Type`, `SetIdentifier` (for latency,
        #     weighted, geolocation, and failover resource record sets), and
        #     `TTL` (except alias resource record sets, for which the TTL is
        #     determined by the AWS resource that you\'re routing DNS queries
        #     to).
        #   * `UPSERT`\: If a resource record set does not already exist, Amazon
        #     Route 53 creates it. If a resource record set does exist, Amazon
        #     Route 53 updates it with the values in the request. Amazon Route
        #     53 can update an existing resource record set only when all of the
        #     following values match: `Name`, `Type`, and `SetIdentifier` (for
        #     weighted, latency, geolocation, and failover resource record
        #     sets).
        #   @return [String]

        # @!attribute [rw] resource_record_set
        #   Information about the resource record set to create or delete.
        #   @return [Types::ResourceRecordSet]

      end

      # A complex type that contains an optional comment and the changes that
      # you want to make with a change batch request.
      # @note When making an API call, pass ChangeBatch
      #   data as a hash:
      #
      #       {
      #         comment: "ResourceDescription",
      #         changes: [ # required
      #           {
      #             action: "CREATE", # required, accepts CREATE, DELETE, UPSERT
      #             resource_record_set: { # required
      #               name: "DNSName", # required
      #               type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #               set_identifier: "ResourceRecordSetIdentifier",
      #               weight: 1,
      #               region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #               geo_location: {
      #                 continent_code: "GeoLocationContinentCode",
      #                 country_code: "GeoLocationCountryCode",
      #                 subdivision_code: "GeoLocationSubdivisionCode",
      #               },
      #               failover: "PRIMARY", # accepts PRIMARY, SECONDARY
      #               ttl: 1,
      #               resource_records: [
      #                 {
      #                   value: "RData", # required
      #                 },
      #               ],
      #               alias_target: {
      #                 hosted_zone_id: "ResourceId", # required
      #                 dns_name: "DNSName", # required
      #                 evaluate_target_health: false, # required
      #               },
      #               health_check_id: "HealthCheckId",
      #               traffic_policy_instance_id: "TrafficPolicyInstanceId",
      #             },
      #           },
      #         ],
      #       }
      class ChangeBatch < Aws::Structure.new(
        :comment,
        :changes)

        # @!attribute [rw] comment
        #   *Optional:* Any comments you want to include about a change batch
        #   request.
        #   @return [String]

        # @!attribute [rw] changes
        #   A complex type that contains one `Change` element for each resource
        #   record set that you want to create or delete.
        #   @return [Array<Types::Change>]

      end

      # A complex type that lists the changes and information for a
      # ChangeBatch.
      class ChangeBatchRecord < Aws::Structure.new(
        :id,
        :submitted_at,
        :status,
        :comment,
        :submitter,
        :changes)

        # @!attribute [rw] id
        #   The ID of the request. Use this ID to track when the change has
        #   completed across all Amazon Route 53 DNS servers.
        #   @return [String]

        # @!attribute [rw] submitted_at
        #   The date and time the change was submitted, in the format
        #   `YYYY-MM-DDThh:mm:ssZ`, as specified in the ISO 8601 standard (for
        #   example, 2009-11-19T19:37:58Z). The `Z` after the time indicates
        #   that the time is listed in Coordinated Universal Time (UTC).
        #   @return [Time]

        # @!attribute [rw] status
        #   The current state of the request. `PENDING` indicates that this
        #   request has not yet been applied to all Amazon Route 53 DNS servers.
        #
        #   Valid Values: `PENDING` \| `INSYNC`
        #   @return [String]

        # @!attribute [rw] comment
        #   A complex type that describes change information about changes made
        #   to your hosted zone.
        #
        #   This element contains an ID that you use when performing a GetChange
        #   action to get detailed information about the change.
        #   @return [String]

        # @!attribute [rw] submitter
        #   The AWS account ID attached to the changes.
        #   @return [String]

        # @!attribute [rw] changes
        #   A list of changes made in the ChangeBatch.
        #   @return [Array<Types::Change>]

      end

      # A complex type that describes change information about changes made to
      # your hosted zone.
      #
      # This element contains an ID that you use when performing a GetChange
      # action to get detailed information about the change.
      class ChangeInfo < Aws::Structure.new(
        :id,
        :status,
        :submitted_at,
        :comment)

        # @!attribute [rw] id
        #   The ID of the request. Use this ID to track when the change has
        #   completed across all Amazon Route 53 DNS servers.
        #   @return [String]

        # @!attribute [rw] status
        #   The current state of the request. `PENDING` indicates that this
        #   request has not yet been applied to all Amazon Route 53 DNS servers.
        #
        #   Valid Values: `PENDING` \| `INSYNC`
        #   @return [String]

        # @!attribute [rw] submitted_at
        #   The date and time the change was submitted, in the format
        #   `YYYY-MM-DDThh:mm:ssZ`, as specified in the ISO 8601 standard (for
        #   example, 2009-11-19T19:37:58Z). The `Z` after the time indicates
        #   that the time is listed in Coordinated Universal Time (UTC).
        #   @return [Time]

        # @!attribute [rw] comment
        #   A complex type that describes change information about changes made
        #   to your hosted zone.
        #
        #   This element contains an ID that you use when performing a GetChange
        #   action to get detailed information about the change.
        #   @return [String]

      end

      # A complex type that contains a change batch.
      # @note When making an API call, pass ChangeResourceRecordSetsRequest
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id: "ResourceId", # required
      #         change_batch: { # required
      #           comment: "ResourceDescription",
      #           changes: [ # required
      #             {
      #               action: "CREATE", # required, accepts CREATE, DELETE, UPSERT
      #               resource_record_set: { # required
      #                 name: "DNSName", # required
      #                 type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #                 set_identifier: "ResourceRecordSetIdentifier",
      #                 weight: 1,
      #                 region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #                 geo_location: {
      #                   continent_code: "GeoLocationContinentCode",
      #                   country_code: "GeoLocationCountryCode",
      #                   subdivision_code: "GeoLocationSubdivisionCode",
      #                 },
      #                 failover: "PRIMARY", # accepts PRIMARY, SECONDARY
      #                 ttl: 1,
      #                 resource_records: [
      #                   {
      #                     value: "RData", # required
      #                   },
      #                 ],
      #                 alias_target: {
      #                   hosted_zone_id: "ResourceId", # required
      #                   dns_name: "DNSName", # required
      #                   evaluate_target_health: false, # required
      #                 },
      #                 health_check_id: "HealthCheckId",
      #                 traffic_policy_instance_id: "TrafficPolicyInstanceId",
      #               },
      #             },
      #           ],
      #         },
      #       }
      class ChangeResourceRecordSetsRequest < Aws::Structure.new(
        :hosted_zone_id,
        :change_batch)

        # @!attribute [rw] hosted_zone_id
        #   The ID of the hosted zone that contains the resource record sets
        #   that you want to change.
        #   @return [String]

        # @!attribute [rw] change_batch
        #   A complex type that contains an optional comment and the `Changes`
        #   element.
        #   @return [Types::ChangeBatch]

      end

      # A complex type containing the response for the request.
      class ChangeResourceRecordSetsResponse < Aws::Structure.new(
        :change_info)

        # @!attribute [rw] change_info
        #   A complex type that contains information about changes made to your
        #   hosted zone.
        #
        #   This element contains an ID that you use when performing a GetChange
        #   action to get detailed information about the change.
        #   @return [Types::ChangeInfo]

      end

      # A complex type containing information about a request to add, change,
      # or delete the tags that are associated with a resource.
      # @note When making an API call, pass ChangeTagsForResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
      #         resource_id: "TagResourceId", # required
      #         add_tags: [
      #           {
      #             key: "TagKey",
      #             value: "TagValue",
      #           },
      #         ],
      #         remove_tag_keys: ["TagKey"],
      #       }
      class ChangeTagsForResourceRequest < Aws::Structure.new(
        :resource_type,
        :resource_id,
        :add_tags,
        :remove_tag_keys)

        # @!attribute [rw] resource_type
        #   The type of the resource.
        #
        #   \- The resource type for health checks is `healthcheck`.
        #
        #   \- The resource type for hosted zones is `hostedzone`.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the resource for which you want to add, change, or delete
        #   tags.
        #   @return [String]

        # @!attribute [rw] add_tags
        #   A complex type that contains a list of `Tag` elements. Each `Tag`
        #   element identifies a tag that you want to add or update for the
        #   specified resource.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] remove_tag_keys
        #   A list of `Tag` keys that you want to remove from the specified
        #   resource.
        #   @return [Array<String>]

      end

      # Empty response for the request.
      class ChangeTagsForResourceResponse < Aws::EmptyStructure; end

      # For CLOUDWATCH\_METRIC health checks, a complex type that contains
      # information about the CloudWatch alarm that you\'re associating with
      # the health check.
      class CloudWatchAlarmConfiguration < Aws::Structure.new(
        :evaluation_periods,
        :threshold,
        :comparison_operator,
        :period,
        :metric_name,
        :namespace,
        :statistic,
        :dimensions)

        # @!attribute [rw] evaluation_periods
        #   The number of periods over which data is compared to the specified
        #   threshold.
        #   @return [Integer]

        # @!attribute [rw] threshold
        #   The value that the metric is compared with to determine the state of
        #   the alarm. For example, if you want the health check to fail if the
        #   average TCP connection time is greater than 500 milliseconds for
        #   more than 60 seconds, the threshold is 500.
        #   @return [Float]

        # @!attribute [rw] comparison_operator
        #   The arithmetic operation to use when comparing the specified
        #   Statistic and Threshold.
        #
        #   Valid Values are `GreaterThanOrEqualToThreshold`,
        #   `GreaterThanThreshold`, `LessThanThreshold` and
        #   `LessThanOrEqualToThreshold`
        #   @return [String]

        # @!attribute [rw] period
        #   An integer that represents the period in seconds over which the
        #   statistic is applied.
        #   @return [Integer]

        # @!attribute [rw] metric_name
        #   The name of the CloudWatch metric that is associated with the
        #   CloudWatch alarm.
        #   @return [String]

        # @!attribute [rw] namespace
        #   The namespace of the CloudWatch metric that is associated with the
        #   CloudWatch alarm.
        #   @return [String]

        # @!attribute [rw] statistic
        #   The statistic to apply to the CloudWatch metric that is associated
        #   with the CloudWatch alarm.
        #
        #   Valid Values are `SampleCount`, `Average`, `Sum`, `Minimum` and
        #   `Maximum`
        #   @return [String]

        # @!attribute [rw] dimensions
        #   A list of `Dimension` elements for the CloudWatch metric that is
        #   associated with the CloudWatch alarm. For information about the
        #   metrics and dimensions that CloudWatch supports, see [Amazon
        #   CloudWatch Namespaces, Dimensions, and Metrics Reference][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html
        #   @return [Array<Types::Dimension>]

      end

      # \>A complex type that contains information about the request to create
      # a health check.
      # @note When making an API call, pass CreateHealthCheckRequest
      #   data as a hash:
      #
      #       {
      #         caller_reference: "HealthCheckNonce", # required
      #         health_check_config: { # required
      #           ip_address: "IPAddress",
      #           port: 1,
      #           type: "HTTP", # required, accepts HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC
      #           resource_path: "ResourcePath",
      #           fully_qualified_domain_name: "FullyQualifiedDomainName",
      #           search_string: "SearchString",
      #           request_interval: 1,
      #           failure_threshold: 1,
      #           measure_latency: false,
      #           inverted: false,
      #           health_threshold: 1,
      #           child_health_checks: ["HealthCheckId"],
      #           enable_sni: false,
      #           regions: ["us-east-1"], # accepts us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1
      #           alarm_identifier: {
      #             region: "us-east-1", # required, accepts us-east-1, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
      #             name: "AlarmName", # required
      #           },
      #           insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
      #         },
      #       }
      class CreateHealthCheckRequest < Aws::Structure.new(
        :caller_reference,
        :health_check_config)

        # @!attribute [rw] caller_reference
        #   A unique string that identifies the request and that allows failed
        #   `CreateHealthCheck` requests to be retried without the risk of
        #   executing the operation twice. You must use a unique
        #   `CallerReference` string every time you create a health check.
        #   `CallerReference` can be any unique string; you might choose to use
        #   a string that identifies your project.
        #
        #   Valid characters are any Unicode code points that are legal in an
        #   XML 1.0 document. The UTF-8 encoding of the value must be less than
        #   128 bytes.
        #   @return [String]

        # @!attribute [rw] health_check_config
        #   A complex type that contains health check configuration.
        #   @return [Types::HealthCheckConfig]

      end

      # A complex type containing the response information for the new health
      # check.
      class CreateHealthCheckResponse < Aws::Structure.new(
        :health_check,
        :location)

        # @!attribute [rw] health_check
        #   A complex type that contains identifying information about the
        #   health check.
        #   @return [Types::HealthCheck]

        # @!attribute [rw] location
        #   The unique URL representing the new health check.
        #   @return [String]

      end

      # A complex type that contains information about the request to create a
      # hosted zone.
      # @note When making an API call, pass CreateHostedZoneRequest
      #   data as a hash:
      #
      #       {
      #         name: "DNSName", # required
      #         vpc: {
      #           vpc_region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #           vpc_id: "VPCId",
      #         },
      #         caller_reference: "Nonce", # required
      #         hosted_zone_config: {
      #           comment: "ResourceDescription",
      #           private_zone: false,
      #         },
      #         delegation_set_id: "ResourceId",
      #       }
      class CreateHostedZoneRequest < Aws::Structure.new(
        :name,
        :vpc,
        :caller_reference,
        :hosted_zone_config,
        :delegation_set_id)

        # @!attribute [rw] name
        #   The name of the domain. This must be a fully-specified domain, for
        #   example, www.example.com. The trailing dot is optional; Amazon Route
        #   53 assumes that the domain name is fully qualified. This means that
        #   Amazon Route 53 treats www.example.com (without a trailing dot) and
        #   www.example.com. (with a trailing dot) as identical.
        #
        #   This is the name you have registered with your DNS registrar. You
        #   should ask your registrar to change the authoritative name servers
        #   for your domain to the set of `NameServers` elements returned in
        #   `DelegationSet`.
        #   @return [String]

        # @!attribute [rw] vpc
        #   The VPC that you want your hosted zone to be associated with. By
        #   providing this parameter, your newly created hosted cannot be
        #   resolved anywhere other than the given VPC.
        #   @return [Types::VPC]

        # @!attribute [rw] caller_reference
        #   A unique string that identifies the request and that allows failed
        #   `CreateHostedZone` requests to be retried without the risk of
        #   executing the operation twice. You must use a unique
        #   `CallerReference` string every time you create a hosted zone.
        #   `CallerReference` can be any unique string; you might choose to use
        #   a string that identifies your project, such as `DNSMigration_01`.
        #
        #   Valid characters are any Unicode code points that are legal in an
        #   XML 1.0 document. The UTF-8 encoding of the value must be less than
        #   128 bytes.
        #   @return [String]

        # @!attribute [rw] hosted_zone_config
        #   A complex type that contains an optional comment about your hosted
        #   zone.
        #   @return [Types::HostedZoneConfig]

        # @!attribute [rw] delegation_set_id
        #   The delegation set id of the reusable delgation set whose NS records
        #   you want to assign to the new hosted zone.
        #   @return [String]

      end

      # A complex type containing the response information for the new hosted
      # zone.
      class CreateHostedZoneResponse < Aws::Structure.new(
        :hosted_zone,
        :change_info,
        :delegation_set,
        :vpc,
        :location)

        # @!attribute [rw] hosted_zone
        #   A complex type that contains identifying information about the
        #   hosted zone.
        #   @return [Types::HostedZone]

        # @!attribute [rw] change_info
        #   A complex type that contains information about the request to create
        #   a hosted zone. This includes an ID that you use when you call the
        #   GetChange action to get the current status of the change request.
        #   @return [Types::ChangeInfo]

        # @!attribute [rw] delegation_set
        #   A complex type that contains name server information.
        #   @return [Types::DelegationSet]

        # @!attribute [rw] vpc
        #   @return [Types::VPC]

        # @!attribute [rw] location
        #   The unique URL representing the new hosted zone.
        #   @return [String]

      end

      # @note When making an API call, pass CreateReusableDelegationSetRequest
      #   data as a hash:
      #
      #       {
      #         caller_reference: "Nonce", # required
      #         hosted_zone_id: "ResourceId",
      #       }
      class CreateReusableDelegationSetRequest < Aws::Structure.new(
        :caller_reference,
        :hosted_zone_id)

        # @!attribute [rw] caller_reference
        #   A unique string that identifies the request and that allows failed
        #   `CreateReusableDelegationSet` requests to be retried without the
        #   risk of executing the operation twice. You must use a unique
        #   `CallerReference` string every time you create a reusable delegation
        #   set. `CallerReference` can be any unique string; you might choose to
        #   use a string that identifies your project, such as
        #   `DNSMigration_01`.
        #
        #   Valid characters are any Unicode code points that are legal in an
        #   XML 1.0 document. The UTF-8 encoding of the value must be less than
        #   128 bytes.
        #   @return [String]

        # @!attribute [rw] hosted_zone_id
        #   The ID of the hosted zone whose delegation set you want to mark as
        #   reusable. It is an optional parameter.
        #   @return [String]

      end

      class CreateReusableDelegationSetResponse < Aws::Structure.new(
        :delegation_set,
        :location)

        # @!attribute [rw] delegation_set
        #   A complex type that contains name server information.
        #   @return [Types::DelegationSet]

        # @!attribute [rw] location
        #   The unique URL representing the new reusbale delegation set.
        #   @return [String]

      end

      # A complex type that contains information about the resource record
      # sets that you want to create based on a specified traffic policy.
      # @note When making an API call, pass CreateTrafficPolicyInstanceRequest
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id: "ResourceId", # required
      #         name: "DNSName", # required
      #         ttl: 1, # required
      #         traffic_policy_id: "TrafficPolicyId", # required
      #         traffic_policy_version: 1, # required
      #       }
      class CreateTrafficPolicyInstanceRequest < Aws::Structure.new(
        :hosted_zone_id,
        :name,
        :ttl,
        :traffic_policy_id,
        :traffic_policy_version)

        # @!attribute [rw] hosted_zone_id
        #   The ID of the hosted zone in which you want Amazon Route 53 to
        #   create resource record sets by using the configuration in a traffic
        #   policy.
        #   @return [String]

        # @!attribute [rw] name
        #   The domain name (such as example.com) or subdomain name (such as
        #   www.example.com) for which Amazon Route 53 responds to DNS queries
        #   by using the resource record sets that Amazon Route 53 creates for
        #   this traffic policy instance.
        #   @return [String]

        # @!attribute [rw] ttl
        #   The TTL that you want Amazon Route 53 to assign to all of the
        #   resource record sets that it creates in the specified hosted zone.
        #   @return [Integer]

        # @!attribute [rw] traffic_policy_id
        #   The ID of the traffic policy that you want to use to create resource
        #   record sets in the specified hosted zone.
        #   @return [String]

        # @!attribute [rw] traffic_policy_version
        #   The version of the traffic policy that you want to use to create
        #   resource record sets in the specified hosted zone.
        #   @return [Integer]

      end

      # A complex type that contains the response information for the
      # `CreateTrafficPolicyInstance` request.
      class CreateTrafficPolicyInstanceResponse < Aws::Structure.new(
        :traffic_policy_instance,
        :location)

        # @!attribute [rw] traffic_policy_instance
        #   A complex type that contains settings for the new traffic policy
        #   instance.
        #   @return [Types::TrafficPolicyInstance]

        # @!attribute [rw] location
        #   A unique URL that represents a new traffic policy instance.
        #   @return [String]

      end

      # A complex type that contains information about the traffic policy that
      # you want to create.
      # @note When making an API call, pass CreateTrafficPolicyRequest
      #   data as a hash:
      #
      #       {
      #         name: "TrafficPolicyName", # required
      #         document: "TrafficPolicyDocument", # required
      #         comment: "TrafficPolicyComment",
      #       }
      class CreateTrafficPolicyRequest < Aws::Structure.new(
        :name,
        :document,
        :comment)

        # @!attribute [rw] name
        #   The name of the traffic policy.
        #   @return [String]

        # @!attribute [rw] document
        #   The definition of this traffic policy in JSON format.
        #   @return [String]

        # @!attribute [rw] comment
        #   Any comments that you want to include about the traffic policy.
        #   @return [String]

      end

      # A complex type that contains the response information for the
      # `CreateTrafficPolicy` request.
      class CreateTrafficPolicyResponse < Aws::Structure.new(
        :traffic_policy,
        :location)

        # @!attribute [rw] traffic_policy
        #   A complex type that contains settings for the new traffic policy.
        #   @return [Types::TrafficPolicy]

        # @!attribute [rw] location
        #   @return [String]

      end

      # A complex type that contains information about the traffic policy for
      # which you want to create a new version.
      # @note When making an API call, pass CreateTrafficPolicyVersionRequest
      #   data as a hash:
      #
      #       {
      #         id: "TrafficPolicyId", # required
      #         document: "TrafficPolicyDocument", # required
      #         comment: "TrafficPolicyComment",
      #       }
      class CreateTrafficPolicyVersionRequest < Aws::Structure.new(
        :id,
        :document,
        :comment)

        # @!attribute [rw] id
        #   The ID of the traffic policy for which you want to create a new
        #   version.
        #   @return [String]

        # @!attribute [rw] document
        #   The definition of a new traffic policy version, in JSON format. You
        #   must specify the full definition of the new traffic policy. You
        #   cannot specify just the differences between the new version and a
        #   previous version.
        #   @return [String]

        # @!attribute [rw] comment
        #   Any comments that you want to include about the new traffic policy
        #   version.
        #   @return [String]

      end

      # A complex type that contains the response information for the
      # `CreateTrafficPolicyVersion` request.
      class CreateTrafficPolicyVersionResponse < Aws::Structure.new(
        :traffic_policy,
        :location)

        # @!attribute [rw] traffic_policy
        #   A complex type that contains settings for the new version of the
        #   traffic policy.
        #   @return [Types::TrafficPolicy]

        # @!attribute [rw] location
        #   @return [String]

      end

      # A complex type that contains name server information.
      class DelegationSet < Aws::Structure.new(
        :id,
        :caller_reference,
        :name_servers)

        # @!attribute [rw] id
        #   @return [String]

        # @!attribute [rw] caller_reference
        #   @return [String]

        # @!attribute [rw] name_servers
        #   A complex type that contains the authoritative name servers for the
        #   hosted zone. Use the method provided by your domain registrar to add
        #   an NS record to your domain for each `NameServer` that is assigned
        #   to your hosted zone.
        #   @return [Array<String>]

      end

      # A complex type containing the request information for delete health
      # check.
      # @note When making an API call, pass DeleteHealthCheckRequest
      #   data as a hash:
      #
      #       {
      #         health_check_id: "HealthCheckId", # required
      #       }
      class DeleteHealthCheckRequest < Aws::Structure.new(
        :health_check_id)

        # @!attribute [rw] health_check_id
        #   The ID of the health check to delete.
        #   @return [String]

      end

      # Empty response for the request.
      class DeleteHealthCheckResponse < Aws::EmptyStructure; end

      # A complex type that contains information about the hosted zone that
      # you want to delete.
      # @note When making an API call, pass DeleteHostedZoneRequest
      #   data as a hash:
      #
      #       {
      #         id: "ResourceId", # required
      #       }
      class DeleteHostedZoneRequest < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   The ID of the hosted zone you want to delete.
        #   @return [String]

      end

      # A complex type containing the response information for the request.
      class DeleteHostedZoneResponse < Aws::Structure.new(
        :change_info)

        # @!attribute [rw] change_info
        #   A complex type that contains the ID, the status, and the date and
        #   time of your delete request.
        #   @return [Types::ChangeInfo]

      end

      # A complex type containing the information for the delete request.
      # @note When making an API call, pass DeleteReusableDelegationSetRequest
      #   data as a hash:
      #
      #       {
      #         id: "ResourceId", # required
      #       }
      class DeleteReusableDelegationSetRequest < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   The ID of the reusable delegation set you want to delete.
        #   @return [String]

      end

      # Empty response for the request.
      class DeleteReusableDelegationSetResponse < Aws::EmptyStructure; end

      # A complex type that contains information about the traffic policy
      # instance that you want to delete.
      # @note When making an API call, pass DeleteTrafficPolicyInstanceRequest
      #   data as a hash:
      #
      #       {
      #         id: "TrafficPolicyInstanceId", # required
      #       }
      class DeleteTrafficPolicyInstanceRequest < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   The ID of the traffic policy instance that you want to delete.
        #
        #   <important>When you delete a traffic policy instance, Amazon Route 53 also deletes all of the resource record sets that were created when you created the traffic policy instance.</important>
        #   @return [String]

      end

      # An empty element.
      class DeleteTrafficPolicyInstanceResponse < Aws::EmptyStructure; end

      # A request to delete a specified traffic policy version.
      # @note When making an API call, pass DeleteTrafficPolicyRequest
      #   data as a hash:
      #
      #       {
      #         id: "TrafficPolicyId", # required
      #         version: 1, # required
      #       }
      class DeleteTrafficPolicyRequest < Aws::Structure.new(
        :id,
        :version)

        # @!attribute [rw] id
        #   The ID of the traffic policy that you want to delete.
        #   @return [String]

        # @!attribute [rw] version
        #   The version number of the traffic policy that you want to delete.
        #   @return [Integer]

      end

      # An empty element.
      class DeleteTrafficPolicyResponse < Aws::EmptyStructure; end

      # The name and value of a dimension for a CloudWatch metric.
      class Dimension < Aws::Structure.new(
        :name,
        :value)

        # @!attribute [rw] name
        #   The name of the dimension.
        #   @return [String]

        # @!attribute [rw] value
        #   The value of the dimension.
        #   @return [String]

      end

      # A complex type that contains information about the request to
      # disassociate a VPC from an hosted zone.
      # @note When making an API call, pass DisassociateVPCFromHostedZoneRequest
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id: "ResourceId", # required
      #         vpc: { # required
      #           vpc_region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #           vpc_id: "VPCId",
      #         },
      #         comment: "DisassociateVPCComment",
      #       }
      class DisassociateVPCFromHostedZoneRequest < Aws::Structure.new(
        :hosted_zone_id,
        :vpc,
        :comment)

        # @!attribute [rw] hosted_zone_id
        #   The ID of the hosted zone you want to disassociate your VPC from.
        #
        #   Note that you cannot disassociate the last VPC from a hosted zone.
        #   @return [String]

        # @!attribute [rw] vpc
        #   The VPC that you want your hosted zone to be disassociated from.
        #   @return [Types::VPC]

        # @!attribute [rw] comment
        #   *Optional:* Any comments you want to include about a
        #   `DisassociateVPCFromHostedZoneRequest`.
        #   @return [String]

      end

      # A complex type containing the response information for the request.
      class DisassociateVPCFromHostedZoneResponse < Aws::Structure.new(
        :change_info)

        # @!attribute [rw] change_info
        #   A complex type that contains the ID, the status, and the date and
        #   time of your `DisassociateVPCFromHostedZoneRequest`.
        #   @return [Types::ChangeInfo]

      end

      # A complex type that contains information about a geo location.
      # @note When making an API call, pass GeoLocation
      #   data as a hash:
      #
      #       {
      #         continent_code: "GeoLocationContinentCode",
      #         country_code: "GeoLocationCountryCode",
      #         subdivision_code: "GeoLocationSubdivisionCode",
      #       }
      class GeoLocation < Aws::Structure.new(
        :continent_code,
        :country_code,
        :subdivision_code)

        # @!attribute [rw] continent_code
        #   The code for a continent geo location. Note: only continent
        #   locations have a continent code.
        #
        #   Valid values: `AF` \| `AN` \| `AS` \| `EU` \| `OC` \| `NA` \| `SA`
        #
        #   Constraint: Specifying `ContinentCode` with either `CountryCode` or
        #   `SubdivisionCode` returns an InvalidInput error.
        #   @return [String]

        # @!attribute [rw] country_code
        #   The code for a country geo location. The default location uses
        #   \'\*\' for the country code and will match all locations that are
        #   not matched by a geo location.
        #
        #   The default geo location uses a `*` for the country code. All other
        #   country codes follow the ISO 3166 two-character code.
        #   @return [String]

        # @!attribute [rw] subdivision_code
        #   The code for a country\'s subdivision (e.g., a province of Canada).
        #   A subdivision code is only valid with the appropriate country code.
        #
        #   Constraint: Specifying `SubdivisionCode` without `CountryCode`
        #   returns an InvalidInput error.
        #   @return [String]

      end

      # A complex type that contains information about a `GeoLocation`.
      class GeoLocationDetails < Aws::Structure.new(
        :continent_code,
        :continent_name,
        :country_code,
        :country_name,
        :subdivision_code,
        :subdivision_name)

        # @!attribute [rw] continent_code
        #   The code for a continent geo location. Note: only continent
        #   locations have a continent code.
        #   @return [String]

        # @!attribute [rw] continent_name
        #   The name of the continent. This element is only present if
        #   `ContinentCode` is also present.
        #   @return [String]

        # @!attribute [rw] country_code
        #   The code for a country geo location. The default location uses
        #   \'\*\' for the country code and will match all locations that are
        #   not matched by a geo location.
        #
        #   The default geo location uses a `*` for the country code. All other
        #   country codes follow the ISO 3166 two-character code.
        #   @return [String]

        # @!attribute [rw] country_name
        #   The name of the country. This element is only present if
        #   `CountryCode` is also present.
        #   @return [String]

        # @!attribute [rw] subdivision_code
        #   The code for a country\'s subdivision (e.g., a province of Canada).
        #   A subdivision code is only valid with the appropriate country code.
        #   @return [String]

        # @!attribute [rw] subdivision_name
        #   The name of the subdivision. This element is only present if
        #   `SubdivisionCode` is also present.
        #   @return [String]

      end

      # The input for a GetChangeDetails request.
      # @note When making an API call, pass GetChangeDetailsRequest
      #   data as a hash:
      #
      #       {
      #         id: "ResourceId", # required
      #       }
      class GetChangeDetailsRequest < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   The ID of the change batch request. The value that you specify here
        #   is the value that `ChangeResourceRecordSets` returned in the Id
        #   element when you submitted the request.
        #   @return [String]

      end

      # A complex type that contains the `ChangeBatchRecord` element.
      class GetChangeDetailsResponse < Aws::Structure.new(
        :change_batch_record)

        # @!attribute [rw] change_batch_record
        #   A complex type that contains information about the specified change
        #   batch, including the change batch ID, the status of the change, and
        #   the contained changes.
        #   @return [Types::ChangeBatchRecord]

      end

      # The input for a GetChange request.
      # @note When making an API call, pass GetChangeRequest
      #   data as a hash:
      #
      #       {
      #         id: "ResourceId", # required
      #       }
      class GetChangeRequest < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   The ID of the change batch request. The value that you specify here
        #   is the value that `ChangeResourceRecordSets` returned in the Id
        #   element when you submitted the request.
        #   @return [String]

      end

      # A complex type that contains the `ChangeInfo` element.
      class GetChangeResponse < Aws::Structure.new(
        :change_info)

        # @!attribute [rw] change_info
        #   A complex type that contains information about the specified change
        #   batch, including the change batch ID, the status of the change, and
        #   the date and time of the request.
        #   @return [Types::ChangeInfo]

      end

      # Empty request.
      # @api private
      class GetCheckerIpRangesRequest < Aws::EmptyStructure; end

      # A complex type that contains the `CheckerIpRanges` element.
      class GetCheckerIpRangesResponse < Aws::Structure.new(
        :checker_ip_ranges)

        # @!attribute [rw] checker_ip_ranges
        #   A complex type that contains sorted list of IP ranges in CIDR format
        #   for Amazon Route 53 health checkers.
        #   @return [Array<String>]

      end

      # A complex type that contains information about the request to get a
      # geo location.
      # @note When making an API call, pass GetGeoLocationRequest
      #   data as a hash:
      #
      #       {
      #         continent_code: "GeoLocationContinentCode",
      #         country_code: "GeoLocationCountryCode",
      #         subdivision_code: "GeoLocationSubdivisionCode",
      #       }
      class GetGeoLocationRequest < Aws::Structure.new(
        :continent_code,
        :country_code,
        :subdivision_code)

        # @!attribute [rw] continent_code
        #   The code for a continent geo location. Note: only continent
        #   locations have a continent code.
        #
        #   Valid values: `AF` \| `AN` \| `AS` \| `EU` \| `OC` \| `NA` \| `SA`
        #
        #   Constraint: Specifying `ContinentCode` with either `CountryCode` or
        #   `SubdivisionCode` returns an InvalidInput error.
        #   @return [String]

        # @!attribute [rw] country_code
        #   The code for a country geo location. The default location uses
        #   \'\*\' for the country code and will match all locations that are
        #   not matched by a geo location.
        #
        #   The default geo location uses a `*` for the country code. All other
        #   country codes follow the ISO 3166 two-character code.
        #   @return [String]

        # @!attribute [rw] subdivision_code
        #   The code for a country\'s subdivision (e.g., a province of Canada).
        #   A subdivision code is only valid with the appropriate country code.
        #
        #   Constraint: Specifying `SubdivisionCode` without `CountryCode`
        #   returns an InvalidInput error.
        #   @return [String]

      end

      # A complex type containing information about the specified geo
      # location.
      class GetGeoLocationResponse < Aws::Structure.new(
        :geo_location_details)

        # @!attribute [rw] geo_location_details
        #   A complex type that contains the information about the specified geo
        #   location.
        #   @return [Types::GeoLocationDetails]

      end

      # To retrieve a count of all your health checks, send a `GET` request to
      # the `/Route 53 API version/healthcheckcount` resource.
      # @api private
      class GetHealthCheckCountRequest < Aws::EmptyStructure; end

      # A complex type that contains the count of health checks associated
      # with the current AWS account.
      class GetHealthCheckCountResponse < Aws::Structure.new(
        :health_check_count)

        # @!attribute [rw] health_check_count
        #   The number of health checks associated with the current AWS account.
        #   @return [Integer]

      end

      # A complex type that contains information about the request to get the
      # most recent failure reason for a health check.
      # @note When making an API call, pass GetHealthCheckLastFailureReasonRequest
      #   data as a hash:
      #
      #       {
      #         health_check_id: "HealthCheckId", # required
      #       }
      class GetHealthCheckLastFailureReasonRequest < Aws::Structure.new(
        :health_check_id)

        # @!attribute [rw] health_check_id
        #   The ID of the health check for which you want to retrieve the reason
        #   for the most recent failure.
        #   @return [String]

      end

      # A complex type that contains information about the most recent failure
      # for the specified health check.
      class GetHealthCheckLastFailureReasonResponse < Aws::Structure.new(
        :health_check_observations)

        # @!attribute [rw] health_check_observations
        #   A list that contains one `HealthCheckObservation` element for each
        #   Amazon Route 53 health checker.
        #   @return [Array<Types::HealthCheckObservation>]

      end

      # A complex type that contains information about the request to get a
      # health check.
      # @note When making an API call, pass GetHealthCheckRequest
      #   data as a hash:
      #
      #       {
      #         health_check_id: "HealthCheckId", # required
      #       }
      class GetHealthCheckRequest < Aws::Structure.new(
        :health_check_id)

        # @!attribute [rw] health_check_id
        #   The ID of the health check to retrieve.
        #   @return [String]

      end

      # A complex type containing information about the specified health
      # check.
      class GetHealthCheckResponse < Aws::Structure.new(
        :health_check)

        # @!attribute [rw] health_check
        #   A complex type that contains the information about the specified
        #   health check.
        #   @return [Types::HealthCheck]

      end

      # A complex type that contains information about the request to get
      # health check status for a health check.
      # @note When making an API call, pass GetHealthCheckStatusRequest
      #   data as a hash:
      #
      #       {
      #         health_check_id: "HealthCheckId", # required
      #       }
      class GetHealthCheckStatusRequest < Aws::Structure.new(
        :health_check_id)

        # @!attribute [rw] health_check_id
        #   If you want Amazon Route 53 to return this resource record set in
        #   response to a DNS query only when a health check is passing, include
        #   the `HealthCheckId` element and specify the ID of the applicable
        #   health check.
        #
        #   Amazon Route 53 determines whether a resource record set is healthy
        #   by periodically sending a request to the endpoint that is specified
        #   in the health check. If that endpoint returns an HTTP status code of
        #   2xx or 3xx, the endpoint is healthy. If the endpoint returns an HTTP
        #   status code of 400 or greater, or if the endpoint doesn\'t respond
        #   for a certain amount of time, Amazon Route 53 considers the endpoint
        #   unhealthy and also considers the resource record set unhealthy.
        #
        #   The `HealthCheckId` element is only useful when Amazon Route 53 is
        #   choosing between two or more resource record sets to respond to a
        #   DNS query, and you want Amazon Route 53 to base the choice in part
        #   on the status of a health check. Configuring health checks only
        #   makes sense in the following configurations:
        #
        #   * You\'re checking the health of the resource record sets in a
        #     weighted, latency, geolocation, or failover resource record set,
        #     and you specify health check IDs for all of the resource record
        #     sets. If the health check for one resource record set specifies an
        #     endpoint that is not healthy, Amazon Route 53 stops responding to
        #     queries using the value for that resource record set.
        #   * You set `EvaluateTargetHealth` to `true` for the resource record
        #     sets in an alias, weighted alias, latency alias, geolocation
        #     alias, or failover alias resource record set, and you specify
        #     health check IDs for all of the resource record sets that are
        #     referenced by the alias resource record sets. For more information
        #     about this configuration, see EvaluateTargetHealth.
        #
        #     Amazon Route 53 doesn\'t check the health of the endpoint
        #     specified in the resource record set, for example, the endpoint
        #     specified by the IP address in the `Value` element. When you add a
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
        #   resource record sets for the United States, for North America, and
        #   for all locations (a resource record set for which the value of
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
        #   @return [String]

      end

      # A complex type that contains information about the status of the
      # specified health check.
      class GetHealthCheckStatusResponse < Aws::Structure.new(
        :health_check_observations)

        # @!attribute [rw] health_check_observations
        #   A list that contains one `HealthCheckObservation` element for each
        #   Amazon Route 53 health checker.
        #   @return [Array<Types::HealthCheckObservation>]

      end

      # To retrieve a count of all your hosted zones, send a `GET` request to
      # the `/Route 53 API version/hostedzonecount` resource.
      # @api private
      class GetHostedZoneCountRequest < Aws::EmptyStructure; end

      # A complex type that contains the count of hosted zones associated with
      # the current AWS account.
      class GetHostedZoneCountResponse < Aws::Structure.new(
        :hosted_zone_count)

        # @!attribute [rw] hosted_zone_count
        #   The number of hosted zones associated with the current AWS account.
        #   @return [Integer]

      end

      # The input for a GetHostedZone request.
      # @note When making an API call, pass GetHostedZoneRequest
      #   data as a hash:
      #
      #       {
      #         id: "ResourceId", # required
      #       }
      class GetHostedZoneRequest < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   The ID of the hosted zone for which you want to get a list of the
        #   name servers in the delegation set.
        #   @return [String]

      end

      # A complex type containing information about the specified hosted zone.
      class GetHostedZoneResponse < Aws::Structure.new(
        :hosted_zone,
        :delegation_set,
        :vp_cs)

        # @!attribute [rw] hosted_zone
        #   A complex type that contains the information about the specified
        #   hosted zone.
        #   @return [Types::HostedZone]

        # @!attribute [rw] delegation_set
        #   A complex type that contains information about the name servers for
        #   the specified hosted zone.
        #   @return [Types::DelegationSet]

        # @!attribute [rw] vp_cs
        #   A complex type that contains information about VPCs associated with
        #   the specified hosted zone.
        #   @return [Array<Types::VPC>]

      end

      # The input for a `GetReusableDelegationSet` request.
      # @note When making an API call, pass GetReusableDelegationSetRequest
      #   data as a hash:
      #
      #       {
      #         id: "ResourceId", # required
      #       }
      class GetReusableDelegationSetRequest < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   The ID of the reusable delegation set for which you want to get a
        #   list of the name server.
        #   @return [String]

      end

      # A complex type containing information about the specified reusable
      # delegation set.
      class GetReusableDelegationSetResponse < Aws::Structure.new(
        :delegation_set)

        # @!attribute [rw] delegation_set
        #   A complex type that contains the information about the nameservers
        #   for the specified delegation set ID.
        #   @return [Types::DelegationSet]

      end

      # To retrieve a count of all your traffic policy instances, send a `GET`
      # request to the `/Route 53 API version/trafficpolicyinstancecount`
      # resource.
      # @api private
      class GetTrafficPolicyInstanceCountRequest < Aws::EmptyStructure; end

      # A complex type that contains information about the number of traffic
      # policy instances that are associated with the current AWS account.
      class GetTrafficPolicyInstanceCountResponse < Aws::Structure.new(
        :traffic_policy_instance_count)

        # @!attribute [rw] traffic_policy_instance_count
        #   The number of traffic policy instances that are associated with the
        #   current AWS account.
        #   @return [Integer]

      end

      # Gets information about a specified traffic policy instance.
      #
      # To get information about a traffic policy instance, send a `GET`
      # request to the `/Route 53 API version/trafficpolicyinstance/Id`
      # resource.
      # @note When making an API call, pass GetTrafficPolicyInstanceRequest
      #   data as a hash:
      #
      #       {
      #         id: "TrafficPolicyInstanceId", # required
      #       }
      class GetTrafficPolicyInstanceRequest < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   The ID of the traffic policy instance that you want to get
        #   information about.
        #   @return [String]

      end

      # A complex type that contains information about the resource record
      # sets that Amazon Route 53 created based on a specified traffic policy.
      class GetTrafficPolicyInstanceResponse < Aws::Structure.new(
        :traffic_policy_instance)

        # @!attribute [rw] traffic_policy_instance
        #   A complex type that contains settings for the traffic policy
        #   instance.
        #   @return [Types::TrafficPolicyInstance]

      end

      # Gets information about a specific traffic policy version. To get the
      # information, send a GET request to the /*Route 53 API
      # version*/trafficpolicy resource, and specify the ID and the version of
      # the traffic policy.
      # @note When making an API call, pass GetTrafficPolicyRequest
      #   data as a hash:
      #
      #       {
      #         id: "TrafficPolicyId", # required
      #         version: 1, # required
      #       }
      class GetTrafficPolicyRequest < Aws::Structure.new(
        :id,
        :version)

        # @!attribute [rw] id
        #   The ID of the traffic policy that you want to get information about.
        #   @return [String]

        # @!attribute [rw] version
        #   The version number of the traffic policy that you want to get
        #   information about.
        #   @return [Integer]

      end

      # A complex type that contains the response information for the request.
      class GetTrafficPolicyResponse < Aws::Structure.new(
        :traffic_policy)

        # @!attribute [rw] traffic_policy
        #   A complex type that contains settings for the specified traffic
        #   policy.
        #   @return [Types::TrafficPolicy]

      end

      # A complex type that contains identifying information about the health
      # check.
      class HealthCheck < Aws::Structure.new(
        :id,
        :caller_reference,
        :health_check_config,
        :health_check_version,
        :cloud_watch_alarm_configuration)

        # @!attribute [rw] id
        #   The ID of the specified health check.
        #   @return [String]

        # @!attribute [rw] caller_reference
        #   A unique string that identifies the request to create the health
        #   check.
        #   @return [String]

        # @!attribute [rw] health_check_config
        #   A complex type that contains the health check configuration.
        #   @return [Types::HealthCheckConfig]

        # @!attribute [rw] health_check_version
        #   The version of the health check. You can optionally pass this value
        #   in a call to `UpdateHealthCheck` to prevent overwriting another
        #   change to the health check.
        #   @return [Integer]

        # @!attribute [rw] cloud_watch_alarm_configuration
        #   For CLOUDWATCH\_METRIC health checks, a complex type that contains
        #   information about the CloudWatch alarm that you\'re associating with
        #   the health check.
        #   @return [Types::CloudWatchAlarmConfiguration]

      end

      # A complex type that contains the health check configuration.
      # @note When making an API call, pass HealthCheckConfig
      #   data as a hash:
      #
      #       {
      #         ip_address: "IPAddress",
      #         port: 1,
      #         type: "HTTP", # required, accepts HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC
      #         resource_path: "ResourcePath",
      #         fully_qualified_domain_name: "FullyQualifiedDomainName",
      #         search_string: "SearchString",
      #         request_interval: 1,
      #         failure_threshold: 1,
      #         measure_latency: false,
      #         inverted: false,
      #         health_threshold: 1,
      #         child_health_checks: ["HealthCheckId"],
      #         enable_sni: false,
      #         regions: ["us-east-1"], # accepts us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1
      #         alarm_identifier: {
      #           region: "us-east-1", # required, accepts us-east-1, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
      #           name: "AlarmName", # required
      #         },
      #         insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
      #       }
      class HealthCheckConfig < Aws::Structure.new(
        :ip_address,
        :port,
        :type,
        :resource_path,
        :fully_qualified_domain_name,
        :search_string,
        :request_interval,
        :failure_threshold,
        :measure_latency,
        :inverted,
        :health_threshold,
        :child_health_checks,
        :enable_sni,
        :regions,
        :alarm_identifier,
        :insufficient_data_health_status)

        # @!attribute [rw] ip_address
        #   IP Address of the instance being checked.
        #   @return [String]

        # @!attribute [rw] port
        #   Port on which connection will be opened to the instance to health
        #   check. For HTTP and HTTP\_STR\_MATCH this defaults to 80 if the port
        #   is not specified. For HTTPS and HTTPS\_STR\_MATCH this defaults to
        #   443 if the port is not specified.
        #   @return [Integer]

        # @!attribute [rw] type
        #   The type of health check to be performed. Currently supported types
        #   are TCP, HTTP, HTTPS, HTTP\_STR\_MATCH, HTTPS\_STR\_MATCH,
        #   CALCULATED and CLOUDWATCH\_METRIC.
        #   @return [String]

        # @!attribute [rw] resource_path
        #   Path to ping on the instance to check the health. Required for HTTP,
        #   HTTPS, HTTP\_STR\_MATCH, and HTTPS\_STR\_MATCH health checks. The
        #   HTTP request is issued to the instance on the given port and path.
        #   @return [String]

        # @!attribute [rw] fully_qualified_domain_name
        #   Fully qualified domain name of the instance to be health checked.
        #   @return [String]

        # @!attribute [rw] search_string
        #   A string to search for in the body of a health check response.
        #   Required for HTTP\_STR\_MATCH and HTTPS\_STR\_MATCH health checks.
        #   Amazon Route 53 considers case when searching for `SearchString` in
        #   the response body.
        #   @return [String]

        # @!attribute [rw] request_interval
        #   The number of seconds between the time that Amazon Route 53 gets a
        #   response from your endpoint and the time that it sends the next
        #   health-check request.
        #
        #   Each Amazon Route 53 health checker makes requests at this interval.
        #   Valid values are 10 and 30. The default value is 30.
        #   @return [Integer]

        # @!attribute [rw] failure_threshold
        #   The number of consecutive health checks that an endpoint must pass
        #   or fail for Amazon Route 53 to change the current status of the
        #   endpoint from unhealthy to healthy or vice versa.
        #
        #   Valid values are integers between 1 and 10. For more information,
        #   see \"How Amazon Route 53 Determines Whether an Endpoint Is
        #   Healthy\" in the Amazon Route 53 Developer Guide.
        #   @return [Integer]

        # @!attribute [rw] measure_latency
        #   A Boolean value that indicates whether you want Amazon Route 53 to
        #   measure the latency between health checkers in multiple AWS regions
        #   and your endpoint and to display CloudWatch latency graphs in the
        #   Amazon Route 53 console.
        #   @return [Boolean]

        # @!attribute [rw] inverted
        #   A boolean value that indicates whether the status of health check
        #   should be inverted. For example, if a health check is healthy but
        #   `Inverted` is `True`, then Amazon Route 53 considers the health
        #   check to be unhealthy.
        #   @return [Boolean]

        # @!attribute [rw] health_threshold
        #   The minimum number of child health checks that must be healthy for
        #   Amazon Route 53 to consider the parent health check to be healthy.
        #   Valid values are integers between 0 and 256, inclusive.
        #   @return [Integer]

        # @!attribute [rw] child_health_checks
        #   For a specified parent health check, a list of `HealthCheckId`
        #   values for the associated child health checks.
        #   @return [Array<String>]

        # @!attribute [rw] enable_sni
        #   Specify whether you want Amazon Route 53 to send the value of
        #   `FullyQualifiedDomainName` to the endpoint in the `client_hello`
        #   message during TLS negotiation. If you don\'t specify a value for
        #   `EnableSNI`, Amazon Route 53 defaults to `true` when `Type` is
        #   `HTTPS` or `HTTPS_STR_MATCH` and defaults to `false` when `Type` is
        #   any other value.
        #   @return [Boolean]

        # @!attribute [rw] regions
        #   A list of `HealthCheckRegion` values that you want Amazon Route 53
        #   to use to perform health checks for the specified endpoint. You must
        #   specify at least three regions.
        #   @return [Array<String>]

        # @!attribute [rw] alarm_identifier
        #   A complex type that contains information to uniquely identify the
        #   CloudWatch alarm that you\'re associating with a Route 53 health
        #   check.
        #   @return [Types::AlarmIdentifier]

        # @!attribute [rw] insufficient_data_health_status
        #   The status of the health check when CloudWatch has insufficient data
        #   about the state of associated alarm. Valid values are `Healthy`,
        #   `Unhealthy` and `LastKnownStatus`.
        #   @return [String]

      end

      # A complex type that contains the IP address of a Amazon Route 53
      # health checker and the reason for the health check status.
      class HealthCheckObservation < Aws::Structure.new(
        :region,
        :ip_address,
        :status_report)

        # @!attribute [rw] region
        #   The `HealthCheckRegion` of the Amazon Route 53 health checker that
        #   performed this health check.
        #   @return [String]

        # @!attribute [rw] ip_address
        #   The IP address of the Amazon Route 53 health checker that performed
        #   this health check.
        #   @return [String]

        # @!attribute [rw] status_report
        #   A complex type that contains information about the health check
        #   status for the current observation.
        #   @return [Types::StatusReport]

      end

      # A complex type that contain information about the specified hosted
      # zone.
      class HostedZone < Aws::Structure.new(
        :id,
        :name,
        :caller_reference,
        :config,
        :resource_record_set_count)

        # @!attribute [rw] id
        #   The ID of the specified hosted zone.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the domain. This must be a fully-specified domain, for
        #   example, www.example.com. The trailing dot is optional; Amazon Route
        #   53 assumes that the domain name is fully qualified. This means that
        #   Amazon Route 53 treats www.example.com (without a trailing dot) and
        #   www.example.com. (with a trailing dot) as identical.
        #
        #   This is the name you have registered with your DNS registrar. You
        #   should ask your registrar to change the authoritative name servers
        #   for your domain to the set of `NameServers` elements returned in
        #   `DelegationSet`.
        #   @return [String]

        # @!attribute [rw] caller_reference
        #   A unique string that identifies the request to create the hosted
        #   zone.
        #   @return [String]

        # @!attribute [rw] config
        #   A complex type that contains the `Comment` element.
        #   @return [Types::HostedZoneConfig]

        # @!attribute [rw] resource_record_set_count
        #   Total number of resource record sets in the hosted zone.
        #   @return [Integer]

      end

      # A complex type that contains an optional comment about your hosted
      # zone. If you don\'t want to specify a comment, you can omit the
      # `HostedZoneConfig` and `Comment` elements from the XML document.
      # @note When making an API call, pass HostedZoneConfig
      #   data as a hash:
      #
      #       {
      #         comment: "ResourceDescription",
      #         private_zone: false,
      #       }
      class HostedZoneConfig < Aws::Structure.new(
        :comment,
        :private_zone)

        # @!attribute [rw] comment
        #   An optional comment about your hosted zone. If you don\'t want to
        #   specify a comment, you can omit the `HostedZoneConfig` and `Comment`
        #   elements from the XML document.
        #   @return [String]

        # @!attribute [rw] private_zone
        #   @return [Boolean]

      end

      # The input for a ListChangeBatchesByHostedZone request.
      # @note When making an API call, pass ListChangeBatchesByHostedZoneRequest
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id: "ResourceId", # required
      #         start_date: "Date", # required
      #         end_date: "Date", # required
      #         max_items: 1,
      #         marker: "PageMarker",
      #       }
      class ListChangeBatchesByHostedZoneRequest < Aws::Structure.new(
        :hosted_zone_id,
        :start_date,
        :end_date,
        :max_items,
        :marker)

        # @!attribute [rw] hosted_zone_id
        #   The ID of the hosted zone that you want to see changes for.
        #   @return [String]

        # @!attribute [rw] start_date
        #   The start of the time period you want to see changes for.
        #   @return [String]

        # @!attribute [rw] end_date
        #   The end of the time period you want to see changes for.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of items on a page.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   The page marker.
        #   @return [String]

      end

      # The input for a ListChangeBatchesByHostedZone request.
      class ListChangeBatchesByHostedZoneResponse < Aws::Structure.new(
        :max_items,
        :marker,
        :is_truncated,
        :change_batch_records,
        :next_marker)

        # @!attribute [rw] max_items
        #   The maximum number of items on a page.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   The page marker.
        #   @return [String]

        # @!attribute [rw] is_truncated
        #   A flag that indicates if there are more change batches to list.
        #   @return [Boolean]

        # @!attribute [rw] change_batch_records
        #   The change batches within the given hosted zone and time period.
        #   @return [Array<Types::ChangeBatchRecord>]

        # @!attribute [rw] next_marker
        #   The next page marker.
        #   @return [String]

      end

      # The input for a ListChangeBatchesByRRSet request.
      # @note When making an API call, pass ListChangeBatchesByRRSetRequest
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id: "ResourceId", # required
      #         name: "DNSName", # required
      #         type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #         set_identifier: "ResourceRecordSetIdentifier",
      #         start_date: "Date", # required
      #         end_date: "Date", # required
      #         max_items: 1,
      #         marker: "PageMarker",
      #       }
      class ListChangeBatchesByRRSetRequest < Aws::Structure.new(
        :hosted_zone_id,
        :name,
        :type,
        :set_identifier,
        :start_date,
        :end_date,
        :max_items,
        :marker)

        # @!attribute [rw] hosted_zone_id
        #   The ID of the hosted zone that you want to see changes for.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the RRSet that you want to see changes for.
        #   @return [String]

        # @!attribute [rw] type
        #   The type of the RRSet that you want to see changes for.
        #   @return [String]

        # @!attribute [rw] set_identifier
        #   The identifier of the RRSet that you want to see changes for.
        #   @return [String]

        # @!attribute [rw] start_date
        #   The start of the time period you want to see changes for.
        #   @return [String]

        # @!attribute [rw] end_date
        #   The end of the time period you want to see changes for.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of items on a page.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   The page marker.
        #   @return [String]

      end

      # The input for a ListChangeBatchesByRRSet request.
      class ListChangeBatchesByRRSetResponse < Aws::Structure.new(
        :max_items,
        :marker,
        :is_truncated,
        :change_batch_records,
        :next_marker)

        # @!attribute [rw] max_items
        #   The maximum number of items on a page.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   The page marker.
        #   @return [String]

        # @!attribute [rw] is_truncated
        #   A flag that indicates if there are more change batches to list.
        #   @return [Boolean]

        # @!attribute [rw] change_batch_records
        #   The change batches within the given hosted zone and time period.
        #   @return [Array<Types::ChangeBatchRecord>]

        # @!attribute [rw] next_marker
        #   The next page marker.
        #   @return [String]

      end

      # The input for a `ListGeoLocations` request.
      # @note When making an API call, pass ListGeoLocationsRequest
      #   data as a hash:
      #
      #       {
      #         start_continent_code: "GeoLocationContinentCode",
      #         start_country_code: "GeoLocationCountryCode",
      #         start_subdivision_code: "GeoLocationSubdivisionCode",
      #         max_items: 1,
      #       }
      class ListGeoLocationsRequest < Aws::Structure.new(
        :start_continent_code,
        :start_country_code,
        :start_subdivision_code,
        :max_items)

        # @!attribute [rw] start_continent_code
        #   The first continent code in the lexicographic ordering of geo
        #   locations that you want the `ListGeoLocations` request to list. For
        #   non-continent geo locations, this should be null.
        #
        #   Valid values: `AF` \| `AN` \| `AS` \| `EU` \| `OC` \| `NA` \| `SA`
        #
        #   Constraint: Specifying `ContinentCode` with either `CountryCode` or
        #   `SubdivisionCode` returns an InvalidInput error.
        #   @return [String]

        # @!attribute [rw] start_country_code
        #   The first country code in the lexicographic ordering of geo
        #   locations that you want the `ListGeoLocations` request to list.
        #
        #   The default geo location uses a `*` for the country code. All other
        #   country codes follow the ISO 3166 two-character code.
        #   @return [String]

        # @!attribute [rw] start_subdivision_code
        #   The first subdivision code in the lexicographic ordering of geo
        #   locations that you want the `ListGeoLocations` request to list.
        #
        #   Constraint: Specifying `SubdivisionCode` without `CountryCode`
        #   returns an InvalidInput error.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of geo locations you want in the response body.
        #   @return [Integer]

      end

      # A complex type that contains information about the geo locations that
      # are returned by the request and information about the response.
      class ListGeoLocationsResponse < Aws::Structure.new(
        :geo_location_details_list,
        :is_truncated,
        :next_continent_code,
        :next_country_code,
        :next_subdivision_code,
        :max_items)

        # @!attribute [rw] geo_location_details_list
        #   A complex type that contains information about the geo locations
        #   that are returned by the request.
        #   @return [Array<Types::GeoLocationDetails>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more geo locations to be
        #   listed. If your results were truncated, you can make a follow-up
        #   request for the next page of results by using the values included in
        #   the ListGeoLocationsResponse$NextContinentCode,
        #   ListGeoLocationsResponse$NextCountryCode and
        #   ListGeoLocationsResponse$NextSubdivisionCode elements.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] next_continent_code
        #   If the results were truncated, the continent code of the next geo
        #   location in the list. This element is present only if
        #   ListGeoLocationsResponse$IsTruncated is true and the next geo
        #   location to list is a continent location.
        #   @return [String]

        # @!attribute [rw] next_country_code
        #   If the results were truncated, the country code of the next geo
        #   location in the list. This element is present only if
        #   ListGeoLocationsResponse$IsTruncated is true and the next geo
        #   location to list is not a continent location.
        #   @return [String]

        # @!attribute [rw] next_subdivision_code
        #   If the results were truncated, the subdivision code of the next geo
        #   location in the list. This element is present only if
        #   ListGeoLocationsResponse$IsTruncated is true and the next geo
        #   location has a subdivision.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of records you requested. The maximum value of
        #   `MaxItems` is 100.
        #   @return [Integer]

      end

      # To retrieve a list of your health checks, send a `GET` request to the
      # `/Route 53 API version/healthcheck` resource. The response to this
      # request includes a `HealthChecks` element with zero or more
      # `HealthCheck` child elements. By default, the list of health checks is
      # displayed on a single page. You can control the length of the page
      # that is displayed by using the `MaxItems` parameter. You can use the
      # `Marker` parameter to control the health check that the list begins
      # with.
      #
      # <note> Amazon Route 53 returns a maximum of 100 items. If you set `MaxItems` to a value greater than 100, Amazon Route 53 returns only the first 100.</note>
      # @note When making an API call, pass ListHealthChecksRequest
      #   data as a hash:
      #
      #       {
      #         marker: "PageMarker",
      #         max_items: 1,
      #       }
      class ListHealthChecksRequest < Aws::Structure.new(
        :marker,
        :max_items)

        # @!attribute [rw] marker
        #   If the request returned more than one page of results, submit
        #   another request and specify the value of `NextMarker` from the last
        #   response in the `marker` parameter to get the next page of results.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Specify the maximum number of health checks to return per page of
        #   results.
        #   @return [Integer]

      end

      # A complex type that contains the response for the request.
      class ListHealthChecksResponse < Aws::Structure.new(
        :health_checks,
        :marker,
        :is_truncated,
        :next_marker,
        :max_items)

        # @!attribute [rw] health_checks
        #   A complex type that contains information about the health checks
        #   associated with the current AWS account.
        #   @return [Array<Types::HealthCheck>]

        # @!attribute [rw] marker
        #   If the request returned more than one page of results, submit
        #   another request and specify the value of `NextMarker` from the last
        #   response in the `marker` parameter to get the next page of results.
        #   @return [String]

        # @!attribute [rw] is_truncated
        #   A flag indicating whether there are more health checks to be listed.
        #   If your results were truncated, you can make a follow-up request for
        #   the next page of results by using the `Marker` element.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] next_marker
        #   Indicates where to continue listing health checks. If
        #   ListHealthChecksResponse$IsTruncated is `true`, make another request
        #   to `ListHealthChecks` and include the value of the `NextMarker`
        #   element in the `Marker` element to get the next page of results.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of health checks to be included in the response
        #   body. If the number of health checks associated with this AWS
        #   account exceeds `MaxItems`, the value of
        #   ListHealthChecksResponse$IsTruncated in the response is `true`. Call
        #   `ListHealthChecks` again and specify the value of
        #   ListHealthChecksResponse$NextMarker in the
        #   ListHostedZonesRequest$Marker element to get the next page of
        #   results.
        #   @return [Integer]

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
      # For more information about listing hosted zones, see [Listing the
      # Hosted Zones for an AWS Account][1] in the *Amazon Route 53 Developer
      # Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ListInfoOnHostedZone.html
      # @note When making an API call, pass ListHostedZonesByNameRequest
      #   data as a hash:
      #
      #       {
      #         dns_name: "DNSName",
      #         hosted_zone_id: "ResourceId",
      #         max_items: 1,
      #       }
      class ListHostedZonesByNameRequest < Aws::Structure.new(
        :dns_name,
        :hosted_zone_id,
        :max_items)

        # @!attribute [rw] dns_name
        #   The first name in the lexicographic ordering of domain names that
        #   you want the `ListHostedZonesByNameRequest` request to list.
        #
        #   If the request returned more than one page of results, submit
        #   another request and specify the value of `NextDNSName` and
        #   `NextHostedZoneId` from the last response in the `DNSName` and
        #   `HostedZoneId` parameters to get the next page of results.
        #   @return [String]

        # @!attribute [rw] hosted_zone_id
        #   If the request returned more than one page of results, submit
        #   another request and specify the value of `NextDNSName` and
        #   `NextHostedZoneId` from the last response in the `DNSName` and
        #   `HostedZoneId` parameters to get the next page of results.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Specify the maximum number of hosted zones to return per page of
        #   results.
        #   @return [Integer]

      end

      # A complex type that contains the response for the request.
      class ListHostedZonesByNameResponse < Aws::Structure.new(
        :hosted_zones,
        :dns_name,
        :hosted_zone_id,
        :is_truncated,
        :next_dns_name,
        :next_hosted_zone_id,
        :max_items)

        # @!attribute [rw] hosted_zones
        #   A complex type that contains information about the hosted zones
        #   associated with the current AWS account.
        #   @return [Array<Types::HostedZone>]

        # @!attribute [rw] dns_name
        #   The `DNSName` value sent in the request.
        #   @return [String]

        # @!attribute [rw] hosted_zone_id
        #   The `HostedZoneId` value sent in the request.
        #   @return [String]

        # @!attribute [rw] is_truncated
        #   A flag indicating whether there are more hosted zones to be listed.
        #   If your results were truncated, you can make a follow-up request for
        #   the next page of results by using the `NextDNSName` and
        #   `NextHostedZoneId` elements.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] next_dns_name
        #   If ListHostedZonesByNameResponse$IsTruncated is `true`, there are
        #   more hosted zones associated with the current AWS account. To get
        #   the next page of results, make another request to
        #   `ListHostedZonesByName`. Specify the value of
        #   ListHostedZonesByNameResponse$NextDNSName in the
        #   ListHostedZonesByNameRequest$DNSName element and
        #   ListHostedZonesByNameResponse$NextHostedZoneId in the
        #   ListHostedZonesByNameRequest$HostedZoneId element.
        #   @return [String]

        # @!attribute [rw] next_hosted_zone_id
        #   If ListHostedZonesByNameResponse$IsTruncated is `true`, there are
        #   more hosted zones associated with the current AWS account. To get
        #   the next page of results, make another request to
        #   `ListHostedZonesByName`. Specify the value of
        #   ListHostedZonesByNameResponse$NextDNSName in the
        #   ListHostedZonesByNameRequest$DNSName element and
        #   ListHostedZonesByNameResponse$NextHostedZoneId in the
        #   ListHostedZonesByNameRequest$HostedZoneId element.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of hosted zones to be included in the response
        #   body. If the number of hosted zones associated with this AWS account
        #   exceeds `MaxItems`, the value of
        #   ListHostedZonesByNameResponse$IsTruncated in the response is `true`.
        #   Call `ListHostedZonesByName` again and specify the value of
        #   ListHostedZonesByNameResponse$NextDNSName and
        #   ListHostedZonesByNameResponse$NextHostedZoneId elements respectively
        #   to get the next page of results.
        #   @return [Integer]

      end

      # To retrieve a list of your hosted zones, send a `GET` request to the
      # `/Route 53 API version/hostedzone` resource. The response to this
      # request includes a `HostedZones` element with zero or more
      # `HostedZone` child elements. By default, the list of hosted zones is
      # displayed on a single page. You can control the length of the page
      # that is displayed by using the `MaxItems` parameter. You can use the
      # `Marker` parameter to control the hosted zone that the list begins
      # with. For more information about listing hosted zones, see [Listing
      # the Hosted Zones for an AWS Account][1] in the *Amazon Route 53
      # Developer Guide*.
      #
      # <note> Amazon Route 53 returns a maximum of 100 items. If you set `MaxItems` to a value greater than 100, Amazon Route 53 returns only the first 100.</note>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ListInfoOnHostedZone.html
      # @note When making an API call, pass ListHostedZonesRequest
      #   data as a hash:
      #
      #       {
      #         marker: "PageMarker",
      #         max_items: 1,
      #         delegation_set_id: "ResourceId",
      #       }
      class ListHostedZonesRequest < Aws::Structure.new(
        :marker,
        :max_items,
        :delegation_set_id)

        # @!attribute [rw] marker
        #   If the request returned more than one page of results, submit
        #   another request and specify the value of `NextMarker` from the last
        #   response in the `marker` parameter to get the next page of results.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Specify the maximum number of hosted zones to return per page of
        #   results.
        #   @return [Integer]

        # @!attribute [rw] delegation_set_id
        #   @return [String]

      end

      # A complex type that contains the response for the request.
      class ListHostedZonesResponse < Aws::Structure.new(
        :hosted_zones,
        :marker,
        :is_truncated,
        :next_marker,
        :max_items)

        # @!attribute [rw] hosted_zones
        #   A complex type that contains information about the hosted zones
        #   associated with the current AWS account.
        #   @return [Array<Types::HostedZone>]

        # @!attribute [rw] marker
        #   If the request returned more than one page of results, submit
        #   another request and specify the value of `NextMarker` from the last
        #   response in the `marker` parameter to get the next page of results.
        #   @return [String]

        # @!attribute [rw] is_truncated
        #   A flag indicating whether there are more hosted zones to be listed.
        #   If your results were truncated, you can make a follow-up request for
        #   the next page of results by using the `Marker` element.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] next_marker
        #   Indicates where to continue listing hosted zones. If
        #   ListHostedZonesResponse$IsTruncated is `true`, make another request
        #   to `ListHostedZones` and include the value of the `NextMarker`
        #   element in the `Marker` element to get the next page of results.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of hosted zones to be included in the response
        #   body. If the number of hosted zones associated with this AWS account
        #   exceeds `MaxItems`, the value of ListHostedZonesResponse$IsTruncated
        #   in the response is `true`. Call `ListHostedZones` again and specify
        #   the value of ListHostedZonesResponse$NextMarker in the
        #   ListHostedZonesRequest$Marker element to get the next page of
        #   results.
        #   @return [Integer]

      end

      # The input for a ListResourceRecordSets request.
      # @note When making an API call, pass ListResourceRecordSetsRequest
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id: "ResourceId", # required
      #         start_record_name: "DNSName",
      #         start_record_type: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #         start_record_identifier: "ResourceRecordSetIdentifier",
      #         max_items: 1,
      #       }
      class ListResourceRecordSetsRequest < Aws::Structure.new(
        :hosted_zone_id,
        :start_record_name,
        :start_record_type,
        :start_record_identifier,
        :max_items)

        # @!attribute [rw] hosted_zone_id
        #   The ID of the hosted zone that contains the resource record sets
        #   that you want to get.
        #   @return [String]

        # @!attribute [rw] start_record_name
        #   The first name in the lexicographic ordering of domain names that
        #   you want the `ListResourceRecordSets` request to list.
        #   @return [String]

        # @!attribute [rw] start_record_type
        #   The DNS type at which to begin the listing of resource record sets.
        #
        #   Valid values: `A` \| `AAAA` \| `CNAME` \| `MX` \| `NS` \| `PTR` \|
        #   `SOA` \| `SPF` \| `SRV` \| `TXT`
        #
        #   Values for Weighted Resource Record Sets: `A` \| `AAAA` \| `CNAME`
        #   \| `TXT`
        #
        #   Values for Regional Resource Record Sets: `A` \| `AAAA` \| `CNAME`
        #   \| `TXT`
        #
        #   Values for Alias Resource Record Sets: `A` \| `AAAA`
        #
        #   Constraint: Specifying `type` without specifying `name` returns an
        #   InvalidInput error.
        #   @return [String]

        # @!attribute [rw] start_record_identifier
        #   *Weighted resource record sets only:* If results were truncated for
        #   a given DNS name and type, specify the value of
        #   `ListResourceRecordSetsResponse$NextRecordIdentifier` from the
        #   previous response to get the next resource record set that has the
        #   current DNS name and type.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of records you want in the response body.
        #   @return [Integer]

      end

      # A complex type that contains information about the resource record
      # sets that are returned by the request and information about the
      # response.
      class ListResourceRecordSetsResponse < Aws::Structure.new(
        :resource_record_sets,
        :is_truncated,
        :next_record_name,
        :next_record_type,
        :next_record_identifier,
        :max_items)

        # @!attribute [rw] resource_record_sets
        #   A complex type that contains information about the resource record
        #   sets that are returned by the request.
        #   @return [Array<Types::ResourceRecordSet>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more resource record sets to
        #   be listed. If your results were truncated, you can make a follow-up
        #   request for the next page of results by using the
        #   ListResourceRecordSetsResponse$NextRecordName element.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] next_record_name
        #   If the results were truncated, the name of the next record in the
        #   list. This element is present only if
        #   ListResourceRecordSetsResponse$IsTruncated is true.
        #   @return [String]

        # @!attribute [rw] next_record_type
        #   If the results were truncated, the type of the next record in the
        #   list. This element is present only if
        #   ListResourceRecordSetsResponse$IsTruncated is true.
        #   @return [String]

        # @!attribute [rw] next_record_identifier
        #   *Weighted resource record sets only:* If results were truncated for
        #   a given DNS name and type, the value of `SetIdentifier` for the next
        #   resource record set that has the current DNS name and type.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of records you requested. The maximum value of
        #   `MaxItems` is 100.
        #   @return [Integer]

      end

      # To retrieve a list of your reusable delegation sets, send a `GET`
      # request to the `/Route 53 API version/delegationset` resource. The
      # response to this request includes a `DelegationSets` element with zero
      # or more `DelegationSet` child elements. By default, the list of
      # reusable delegation sets is displayed on a single page. You can
      # control the length of the page that is displayed by using the
      # `MaxItems` parameter. You can use the `Marker` parameter to control
      # the delegation set that the list begins with.
      #
      # <note> Amazon Route 53 returns a maximum of 100 items. If you set `MaxItems` to a value greater than 100, Amazon Route 53 returns only the first 100.</note>
      # @note When making an API call, pass ListReusableDelegationSetsRequest
      #   data as a hash:
      #
      #       {
      #         marker: "PageMarker",
      #         max_items: 1,
      #       }
      class ListReusableDelegationSetsRequest < Aws::Structure.new(
        :marker,
        :max_items)

        # @!attribute [rw] marker
        #   If the request returned more than one page of results, submit
        #   another request and specify the value of `NextMarker` from the last
        #   response in the `marker` parameter to get the next page of results.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Specify the maximum number of reusable delegation sets to return per
        #   page of results.
        #   @return [Integer]

      end

      # A complex type that contains the response for the request.
      class ListReusableDelegationSetsResponse < Aws::Structure.new(
        :delegation_sets,
        :marker,
        :is_truncated,
        :next_marker,
        :max_items)

        # @!attribute [rw] delegation_sets
        #   A complex type that contains information about the reusable
        #   delegation sets associated with the current AWS account.
        #   @return [Array<Types::DelegationSet>]

        # @!attribute [rw] marker
        #   If the request returned more than one page of results, submit
        #   another request and specify the value of `NextMarker` from the last
        #   response in the `marker` parameter to get the next page of results.
        #   @return [String]

        # @!attribute [rw] is_truncated
        #   A flag indicating whether there are more reusable delegation sets to
        #   be listed. If your results were truncated, you can make a follow-up
        #   request for the next page of results by using the `Marker` element.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] next_marker
        #   Indicates where to continue listing reusable delegation sets. If
        #   ListReusableDelegationSetsResponse$IsTruncated is `true`, make
        #   another request to `ListReusableDelegationSets` and include the
        #   value of the `NextMarker` element in the `Marker` element to get the
        #   next page of results.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of reusable delegation sets to be included in the
        #   response body. If the number of reusable delegation sets associated
        #   with this AWS account exceeds `MaxItems`, the value of
        #   ListReusablDelegationSetsResponse$IsTruncated in the response is
        #   `true`. Call `ListReusableDelegationSets` again and specify the
        #   value of ListReusableDelegationSetsResponse$NextMarker in the
        #   ListReusableDelegationSetsRequest$Marker element to get the next
        #   page of results.
        #   @return [Integer]

      end

      # A complex type containing information about a request for a list of
      # the tags that are associated with an individual resource.
      # @note When making an API call, pass ListTagsForResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
      #         resource_id: "TagResourceId", # required
      #       }
      class ListTagsForResourceRequest < Aws::Structure.new(
        :resource_type,
        :resource_id)

        # @!attribute [rw] resource_type
        #   The type of the resource.
        #
        #   \- The resource type for health checks is `healthcheck`.
        #
        #   \- The resource type for hosted zones is `hostedzone`.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the resource for which you want to retrieve tags.
        #   @return [String]

      end

      # A complex type containing tags for the specified resource.
      class ListTagsForResourceResponse < Aws::Structure.new(
        :resource_tag_set)

        # @!attribute [rw] resource_tag_set
        #   A `ResourceTagSet` containing tags associated with the specified
        #   resource.
        #   @return [Types::ResourceTagSet]

      end

      # A complex type containing information about a request for a list of
      # the tags that are associated with up to 10 specified resources.
      # @note When making an API call, pass ListTagsForResourcesRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
      #         resource_ids: ["TagResourceId"], # required
      #       }
      class ListTagsForResourcesRequest < Aws::Structure.new(
        :resource_type,
        :resource_ids)

        # @!attribute [rw] resource_type
        #   The type of the resources.
        #
        #   \- The resource type for health checks is `healthcheck`.
        #
        #   \- The resource type for hosted zones is `hostedzone`.
        #   @return [String]

        # @!attribute [rw] resource_ids
        #   A complex type that contains the ResourceId element for each
        #   resource for which you want to get a list of tags.
        #   @return [Array<String>]

      end

      # A complex type containing tags for the specified resources.
      class ListTagsForResourcesResponse < Aws::Structure.new(
        :resource_tag_sets)

        # @!attribute [rw] resource_tag_sets
        #   A list of `ResourceTagSet`s containing tags associated with the
        #   specified resources.
        #   @return [Array<Types::ResourceTagSet>]

      end

      # A complex type that contains the information about the request to list
      # the traffic policies that are associated with the current AWS account.
      # @note When making an API call, pass ListTrafficPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         traffic_policy_id_marker: "TrafficPolicyId",
      #         max_items: 1,
      #       }
      class ListTrafficPoliciesRequest < Aws::Structure.new(
        :traffic_policy_id_marker,
        :max_items)

        # @!attribute [rw] traffic_policy_id_marker
        #   For your first request to `ListTrafficPolicies`, do not include the
        #   `TrafficPolicyIdMarker` parameter.
        #
        #   If you have more traffic policies than the value of `MaxItems`,
        #   `ListTrafficPolicies` returns only the first `MaxItems` traffic
        #   policies. To get the next group of `MaxItems` policies, submit
        #   another request to `ListTrafficPolicies`. For the value of
        #   `TrafficPolicyIdMarker`, specify the value of the
        #   `TrafficPolicyIdMarker` element that was returned in the previous
        #   response.
        #
        #   Policies are listed in the order in which they were created.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of traffic policies to be included in the
        #   response body for this request. If you have more than `MaxItems`
        #   traffic policies, the value of the `IsTruncated` element in the
        #   response is `true`, and the value of the `TrafficPolicyIdMarker`
        #   element is the ID of the first traffic policy in the next group of
        #   `MaxItems` traffic policies.
        #   @return [Integer]

      end

      # A complex type that contains the response information for the request.
      class ListTrafficPoliciesResponse < Aws::Structure.new(
        :traffic_policy_summaries,
        :is_truncated,
        :traffic_policy_id_marker,
        :max_items)

        # @!attribute [rw] traffic_policy_summaries
        #   A list that contains one `TrafficPolicySummary` element for each
        #   traffic policy that was created by the current AWS account.
        #   @return [Array<Types::TrafficPolicySummary>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more traffic policies to be
        #   listed. If the response was truncated, you can get the next group of
        #   `MaxItems` traffic policies by calling `ListTrafficPolicies` again
        #   and specifying the value of the `TrafficPolicyIdMarker` element in
        #   the `TrafficPolicyIdMarker` request parameter.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] traffic_policy_id_marker
        #   If the value of `IsTruncated` is `true`, `TrafficPolicyIdMarker` is
        #   the ID of the first traffic policy in the next group of `MaxItems`
        #   traffic policies.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The value that you specified for the `MaxItems` parameter in the
        #   call to `ListTrafficPolicies` that produced the current response.
        #   @return [Integer]

      end

      # A request for the traffic policy instances that you created in a
      # specified hosted zone.
      # @note When making an API call, pass ListTrafficPolicyInstancesByHostedZoneRequest
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id: "ResourceId", # required
      #         traffic_policy_instance_name_marker: "DNSName",
      #         traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #         max_items: 1,
      #       }
      class ListTrafficPolicyInstancesByHostedZoneRequest < Aws::Structure.new(
        :hosted_zone_id,
        :traffic_policy_instance_name_marker,
        :traffic_policy_instance_type_marker,
        :max_items)

        # @!attribute [rw] hosted_zone_id
        #   The ID of the hosted zone for which you want to list traffic policy
        #   instances.
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_name_marker
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
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_type_marker
        #   For the first request to `ListTrafficPolicyInstancesByHostedZone`,
        #   omit this value.
        #
        #   If the value of `IsTruncated` in the previous response was `true`,
        #   `TrafficPolicyInstanceTypeMarker` is the DNS type of the first
        #   traffic policy instance in the next group of `MaxItems` traffic
        #   policy instances.
        #
        #   If the value of `IsTruncated` in the previous response was `false`,
        #   there are no more traffic policy instances to get for this hosted
        #   zone.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of traffic policy instances to be included in the
        #   response body for this request. If you have more than `MaxItems`
        #   traffic policy instances, the value of the `IsTruncated` element in
        #   the response is `true`, and the values of `HostedZoneIdMarker`,
        #   `TrafficPolicyInstanceNameMarker`, and
        #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
        #   instance in the next group of `MaxItems` traffic policy instances.
        #   @return [Integer]

      end

      # A complex type that contains the response information for the request.
      class ListTrafficPolicyInstancesByHostedZoneResponse < Aws::Structure.new(
        :traffic_policy_instances,
        :traffic_policy_instance_name_marker,
        :traffic_policy_instance_type_marker,
        :is_truncated,
        :max_items)

        # @!attribute [rw] traffic_policy_instances
        #   A list that contains one `TrafficPolicyInstance` element for each
        #   traffic policy instance that matches the elements in the request.
        #   @return [Array<Types::TrafficPolicyInstance>]

        # @!attribute [rw] traffic_policy_instance_name_marker
        #   If `IsTruncated` is `true`, `TrafficPolicyInstanceNameMarker` is the
        #   name of the first traffic policy instance in the next group of
        #   `MaxItems` traffic policy instances.
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_type_marker
        #   If `IsTruncated` is true, `TrafficPolicyInstanceTypeMarker` is the
        #   DNS type of the resource record sets that are associated with the
        #   first traffic policy instance in the next group of `MaxItems`
        #   traffic policy instances.
        #   @return [String]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more traffic policy
        #   instances to be listed. If the response was truncated, you can get
        #   the next group of `MaxItems` traffic policy instances by calling
        #   `ListTrafficPolicyInstancesByHostedZone` again and specifying the
        #   values of the `HostedZoneIdMarker`,
        #   `TrafficPolicyInstanceNameMarker`, and
        #   `TrafficPolicyInstanceTypeMarker` elements in the corresponding
        #   request parameters.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] max_items
        #   The value that you specified for the `MaxItems` parameter in the
        #   call to `ListTrafficPolicyInstancesByHostedZone` that produced the
        #   current response.
        #   @return [Integer]

      end

      # A complex type that contains the information about the request to list
      # your traffic policy instances.
      # @note When making an API call, pass ListTrafficPolicyInstancesByPolicyRequest
      #   data as a hash:
      #
      #       {
      #         traffic_policy_id: "TrafficPolicyId", # required
      #         traffic_policy_version: 1, # required
      #         hosted_zone_id_marker: "ResourceId",
      #         traffic_policy_instance_name_marker: "DNSName",
      #         traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #         max_items: 1,
      #       }
      class ListTrafficPolicyInstancesByPolicyRequest < Aws::Structure.new(
        :traffic_policy_id,
        :traffic_policy_version,
        :hosted_zone_id_marker,
        :traffic_policy_instance_name_marker,
        :traffic_policy_instance_type_marker,
        :max_items)

        # @!attribute [rw] traffic_policy_id
        #   The ID of the traffic policy for which you want to list traffic
        #   policy instances.
        #   @return [String]

        # @!attribute [rw] traffic_policy_version
        #   The version of the traffic policy for which you want to list traffic
        #   policy instances. The version must be associated with the traffic
        #   policy that is specified by `TrafficPolicyId`.
        #   @return [Integer]

        # @!attribute [rw] hosted_zone_id_marker
        #   For the first request to `ListTrafficPolicyInstancesByPolicy`, omit
        #   this value.
        #
        #   If the value of `IsTruncated` in the previous response was `true`,
        #   `HostedZoneIdMarker` is the ID of the hosted zone for the first
        #   traffic policy instance in the next group of `MaxItems` traffic
        #   policy instances.
        #
        #   If the value of `IsTruncated` in the previous response was `false`,
        #   there are no more traffic policy instances to get for this hosted
        #   zone.
        #
        #   If the value of `IsTruncated` in the previous response was `false`,
        #   omit this value.
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_name_marker
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
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_type_marker
        #   For the first request to `ListTrafficPolicyInstancesByPolicy`, omit
        #   this value.
        #
        #   If the value of `IsTruncated` in the previous response was `true`,
        #   `TrafficPolicyInstanceTypeMarker` is the DNS type of the first
        #   traffic policy instance in the next group of `MaxItems` traffic
        #   policy instances.
        #
        #   If the value of `IsTruncated` in the previous response was `false`,
        #   there are no more traffic policy instances to get for this hosted
        #   zone.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of traffic policy instances to be included in the
        #   response body for this request. If you have more than `MaxItems`
        #   traffic policy instances, the value of the `IsTruncated` element in
        #   the response is `true`, and the values of `HostedZoneIdMarker`,
        #   `TrafficPolicyInstanceNameMarker`, and
        #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
        #   instance in the next group of `MaxItems` traffic policy instances.
        #   @return [Integer]

      end

      # A complex type that contains the response information for the request.
      class ListTrafficPolicyInstancesByPolicyResponse < Aws::Structure.new(
        :traffic_policy_instances,
        :hosted_zone_id_marker,
        :traffic_policy_instance_name_marker,
        :traffic_policy_instance_type_marker,
        :is_truncated,
        :max_items)

        # @!attribute [rw] traffic_policy_instances
        #   A list that contains one `TrafficPolicyInstance` element for each
        #   traffic policy instance that matches the elements in the request.
        #   @return [Array<Types::TrafficPolicyInstance>]

        # @!attribute [rw] hosted_zone_id_marker
        #   If `IsTruncated` is `true`, `HostedZoneIdMarker` is the ID of the
        #   hosted zone of the first traffic policy instance in the next group
        #   of `MaxItems` traffic policy instances.
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_name_marker
        #   If `IsTruncated` is `true`, `TrafficPolicyInstanceNameMarker` is the
        #   name of the first traffic policy instance in the next group of
        #   `MaxItems` traffic policy instances.
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_type_marker
        #   If `IsTruncated` is `true`, `TrafficPolicyInstanceTypeMarker` is the
        #   DNS type of the resource record sets that are associated with the
        #   first traffic policy instance in the next group of `MaxItems`
        #   traffic policy instances.
        #   @return [String]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more traffic policy
        #   instances to be listed. If the response was truncated, you can get
        #   the next group of `MaxItems` traffic policy instances by calling
        #   `ListTrafficPolicyInstancesByPolicy` again and specifying the values
        #   of the `HostedZoneIdMarker`, `TrafficPolicyInstanceNameMarker`, and
        #   `TrafficPolicyInstanceTypeMarker` elements in the corresponding
        #   request parameters.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] max_items
        #   The value that you specified for the `MaxItems` parameter in the
        #   call to `ListTrafficPolicyInstancesByPolicy` that produced the
        #   current response.
        #   @return [Integer]

      end

      # A complex type that contains the information about the request to list
      # your traffic policy instances.
      # @note When making an API call, pass ListTrafficPolicyInstancesRequest
      #   data as a hash:
      #
      #       {
      #         hosted_zone_id_marker: "ResourceId",
      #         traffic_policy_instance_name_marker: "DNSName",
      #         traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #         max_items: 1,
      #       }
      class ListTrafficPolicyInstancesRequest < Aws::Structure.new(
        :hosted_zone_id_marker,
        :traffic_policy_instance_name_marker,
        :traffic_policy_instance_type_marker,
        :max_items)

        # @!attribute [rw] hosted_zone_id_marker
        #   For the first request to `ListTrafficPolicyInstances`, omit this
        #   value.
        #
        #   If the value of `IsTruncated` in the previous response was `true`,
        #   you have more traffic policy instances. To get the next group of
        #   `MaxItems` traffic policy instances, submit another
        #   `ListTrafficPolicyInstances` request. For the value of
        #   `HostedZoneIdMarker`, specify the value of `HostedZoneIdMarker` from
        #   the previous response, which is the hosted zone ID of the first
        #   traffic policy instance in the next group of `MaxItems` traffic
        #   policy instances.
        #
        #   If the value of `IsTruncated` in the previous response was `false`,
        #   there are no more traffic policy instances to get.
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_name_marker
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
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_type_marker
        #   For the first request to `ListTrafficPolicyInstances`, omit this
        #   value.
        #
        #   If the value of `IsTruncated` in the previous response was `true`,
        #   `TrafficPolicyInstanceTypeMarker` is the DNS type of the first
        #   traffic policy instance in the next group of `MaxItems` traffic
        #   policy instances.
        #
        #   If the value of `IsTruncated` in the previous response was `false`,
        #   there are no more traffic policy instances to get.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of traffic policy instances to be included in the
        #   response body for this request. If you have more than `MaxItems`
        #   traffic policy instances, the value of the `IsTruncated` element in
        #   the response is `true`, and the values of `HostedZoneIdMarker`,
        #   `TrafficPolicyInstanceNameMarker`, and
        #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
        #   instance in the next group of `MaxItems` traffic policy instances.
        #   @return [Integer]

      end

      # A complex type that contains the response information for the request.
      class ListTrafficPolicyInstancesResponse < Aws::Structure.new(
        :traffic_policy_instances,
        :hosted_zone_id_marker,
        :traffic_policy_instance_name_marker,
        :traffic_policy_instance_type_marker,
        :is_truncated,
        :max_items)

        # @!attribute [rw] traffic_policy_instances
        #   A list that contains one `TrafficPolicyInstance` element for each
        #   traffic policy instance that matches the elements in the request.
        #   @return [Array<Types::TrafficPolicyInstance>]

        # @!attribute [rw] hosted_zone_id_marker
        #   If `IsTruncated` is `true`, `HostedZoneIdMarker` is the ID of the
        #   hosted zone of the first traffic policy instance in the next group
        #   of `MaxItems` traffic policy instances.
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_name_marker
        #   If `IsTruncated` is `true`, `TrafficPolicyInstanceNameMarker` is the
        #   name of the first traffic policy instance in the next group of
        #   `MaxItems` traffic policy instances.
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_type_marker
        #   If `IsTruncated` is `true`, `TrafficPolicyInstanceTypeMarker` is the
        #   DNS type of the resource record sets that are associated with the
        #   first traffic policy instance in the next group of `MaxItems`
        #   traffic policy instances.
        #   @return [String]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more traffic policy
        #   instances to be listed. If the response was truncated, you can get
        #   the next group of `MaxItems` traffic policy instances by calling
        #   `ListTrafficPolicyInstances` again and specifying the values of the
        #   `HostedZoneIdMarker`, `TrafficPolicyInstanceNameMarker`, and
        #   `TrafficPolicyInstanceTypeMarker` elements in the corresponding
        #   request parameters.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] max_items
        #   The value that you specified for the `MaxItems` parameter in the
        #   call to `ListTrafficPolicyInstances` that produced the current
        #   response.
        #   @return [Integer]

      end

      # A complex type that contains the information about the request to list
      # your traffic policies.
      # @note When making an API call, pass ListTrafficPolicyVersionsRequest
      #   data as a hash:
      #
      #       {
      #         id: "TrafficPolicyId", # required
      #         traffic_policy_version_marker: "TrafficPolicyVersionMarker",
      #         max_items: 1,
      #       }
      class ListTrafficPolicyVersionsRequest < Aws::Structure.new(
        :id,
        :traffic_policy_version_marker,
        :max_items)

        # @!attribute [rw] id
        #   Specify the value of `Id` of the traffic policy for which you want
        #   to list all versions.
        #   @return [String]

        # @!attribute [rw] traffic_policy_version_marker
        #   For your first request to `ListTrafficPolicyVersions`, do not
        #   include the `TrafficPolicyVersionMarker` parameter.
        #
        #   If you have more traffic policy versions than the value of
        #   `MaxItems`, `ListTrafficPolicyVersions` returns only the first group
        #   of `MaxItems` versions. To get the next group of `MaxItems` traffic
        #   policy versions, submit another request to
        #   `ListTrafficPolicyVersions`. For the value of
        #   `TrafficPolicyVersionMarker`, specify the value of the
        #   `TrafficPolicyVersionMarker` element that was returned in the
        #   previous response.
        #
        #   Traffic policy versions are listed in sequential order.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of traffic policy versions that you want Amazon
        #   Route 53 to include in the response body for this request. If the
        #   specified traffic policy has more than `MaxItems` versions, the
        #   value of the `IsTruncated` element in the response is `true`, and
        #   the value of the `TrafficPolicyVersionMarker` element is the ID of
        #   the first version in the next group of `MaxItems` traffic policy
        #   versions.
        #   @return [Integer]

      end

      # A complex type that contains the response information for the request.
      class ListTrafficPolicyVersionsResponse < Aws::Structure.new(
        :traffic_policies,
        :is_truncated,
        :traffic_policy_version_marker,
        :max_items)

        # @!attribute [rw] traffic_policies
        #   A list that contains one `TrafficPolicy` element for each traffic
        #   policy version that is associated with the specified traffic policy.
        #   @return [Array<Types::TrafficPolicy>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more traffic policies to be
        #   listed. If the response was truncated, you can get the next group of
        #   `maxitems` traffic policies by calling `ListTrafficPolicyVersions`
        #   again and specifying the value of the `NextMarker` element in the
        #   marker parameter.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] traffic_policy_version_marker
        #   If `IsTruncated` is `true`, the value of
        #   `TrafficPolicyVersionMarker` identifies the first traffic policy in
        #   the next group of `MaxItems` traffic policies. Call
        #   `ListTrafficPolicyVersions` again and specify the value of
        #   `TrafficPolicyVersionMarker` in the `TrafficPolicyVersionMarker`
        #   request parameter.
        #
        #   This element is present only if `IsTruncated` is `true`.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The value that you specified for the `maxitems` parameter in the
        #   call to `ListTrafficPolicyVersions` that produced the current
        #   response.
        #   @return [Integer]

      end

      # A complex type that contains the value of the `Value` element for the
      # current resource record set.
      # @note When making an API call, pass ResourceRecord
      #   data as a hash:
      #
      #       {
      #         value: "RData", # required
      #       }
      class ResourceRecord < Aws::Structure.new(
        :value)

        # @!attribute [rw] value
        #   The current or new DNS record value, not to exceed 4,000 characters.
        #   In the case of a `DELETE` action, if the current value does not
        #   match the actual value, an error is returned. For descriptions about
        #   how to format `Value` for different record types, see [Supported DNS
        #   Resource Record Types][1] in the *Amazon Route 53 Developer Guide*.
        #
        #   You can specify more than one value for all record types except
        #   `CNAME` and `SOA`.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html
        #   @return [String]

      end

      # A complex type that contains information about the current resource
      # record set.
      # @note When making an API call, pass ResourceRecordSet
      #   data as a hash:
      #
      #       {
      #         name: "DNSName", # required
      #         type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, PTR, SRV, SPF, AAAA
      #         set_identifier: "ResourceRecordSetIdentifier",
      #         weight: 1,
      #         region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #         geo_location: {
      #           continent_code: "GeoLocationContinentCode",
      #           country_code: "GeoLocationCountryCode",
      #           subdivision_code: "GeoLocationSubdivisionCode",
      #         },
      #         failover: "PRIMARY", # accepts PRIMARY, SECONDARY
      #         ttl: 1,
      #         resource_records: [
      #           {
      #             value: "RData", # required
      #           },
      #         ],
      #         alias_target: {
      #           hosted_zone_id: "ResourceId", # required
      #           dns_name: "DNSName", # required
      #           evaluate_target_health: false, # required
      #         },
      #         health_check_id: "HealthCheckId",
      #         traffic_policy_instance_id: "TrafficPolicyInstanceId",
      #       }
      class ResourceRecordSet < Aws::Structure.new(
        :name,
        :type,
        :set_identifier,
        :weight,
        :region,
        :geo_location,
        :failover,
        :ttl,
        :resource_records,
        :alias_target,
        :health_check_id,
        :traffic_policy_instance_id)

        # @!attribute [rw] name
        #   The name of the domain you want to perform the action on.
        #
        #   Enter a fully qualified domain name, for example, `www.example.com`.
        #   You can optionally include a trailing dot. If you omit the trailing
        #   dot, Amazon Route 53 still assumes that the domain name that you
        #   specify is fully qualified. This means that Amazon Route 53 treats
        #   `www.example.com` (without a trailing dot) and `www.example.com.`
        #   (with a trailing dot) as identical.
        #
        #   For information about how to specify characters other than a-z, 0-9,
        #   and - (hyphen) and how to specify internationalized domain names,
        #   see [DNS Domain Name Format][1] in the *Amazon Route 53 Developer
        #   Guide*.
        #
        #   You can use an asterisk (\*) character in the name. DNS treats the
        #   \* character either as a wildcard or as the \* character (ASCII 42),
        #   depending on where it appears in the name. For more information, see
        #   [Using an Asterisk (\*) in the Names of Hosted Zones and Resource
        #   Record Sets][2] in the *Amazon Route 53 Developer Guide*
        #
        #   <important>You can't use the * wildcard for resource records sets that have a type of NS.</important>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html
        #   [2]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-asterisk
        #   @return [String]

        # @!attribute [rw] type
        #   The DNS record type. For information about different record types
        #   and how data is encoded for them, see [Supported DNS Resource Record
        #   Types][1] in the *Amazon Route 53 Developer Guide*.
        #
        #   Valid values for basic resource record sets: `A` \| `AAAA` \|
        #   `CNAME` \| `MX` \| `NS` \| `PTR` \| `SOA` \| `SPF` \| `SRV` \| `TXT`
        #
        #   Values for weighted, latency, geolocation, and failover resource
        #   record sets: `A` \| `AAAA` \| `CNAME` \| `MX` \| `PTR` \| `SPF` \|
        #   `SRV` \| `TXT`. When creating a group of weighted, latency,
        #   geolocation, or failover resource record sets, specify the same
        #   value for all of the resource record sets in the group.
        #
        #   <note>SPF records were formerly used to verify the identity of the sender of email messages. However, we no longer recommend that you create resource record sets for which the value of `Type` is `SPF`. RFC 7208, *Sender Policy Framework (SPF) for Authorizing Use of Domains in Email, Version 1*, has been updated to say, "...[I]ts existence and mechanism defined in [RFC4408] have led to some interoperability issues. Accordingly, its use is no longer appropriate for SPF version 1; implementations are not to use it." In RFC 7208, see section 14.1, [The SPF DNS Record Type][2].</note>
        #
        #   Values for alias resource record sets:
        #
        #   * **CloudFront distributions:** `A`
        #   * **ELB load balancers:** `A` \| `AAAA`
        #   * **Amazon S3 buckets:** A
        #   * **Another resource record set in this hosted zone:** Specify the
        #     type of the resource record set for which you\'re creating the
        #     alias. Specify any value except `NS` or `SOA`.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html
        #   [2]: http://tools.ietf.org/html/rfc7208#section-14.1
        #   @return [String]

        # @!attribute [rw] set_identifier
        #   *Weighted, Latency, Geo, and Failover resource record sets only:* An
        #   identifier that differentiates among multiple resource record sets
        #   that have the same combination of DNS name and type. The value of
        #   `SetIdentifier` must be unique for each resource record set that has
        #   the same combination of DNS name and type.
        #   @return [String]

        # @!attribute [rw] weight
        #   *Weighted resource record sets only:* Among resource record sets
        #   that have the same combination of DNS name and type, a value that
        #   determines the proportion of DNS queries that Amazon Route 53
        #   responds to using the current resource record set. Amazon Route 53
        #   calculates the sum of the weights for the resource record sets that
        #   have the same combination of DNS name and type. Amazon Route 53 then
        #   responds to queries based on the ratio of a resource\'s weight to
        #   the total. Note the following:
        #
        #   * You must specify a value for the `Weight` element for every
        #     weighted resource record set.
        #   * You can only specify one `ResourceRecord` per weighted resource
        #     record set.
        #   * You cannot create latency, failover, or geolocation resource
        #     record sets that have the same values for the `Name` and `Type`
        #     elements as weighted resource record sets.
        #   * You can create a maximum of 100 weighted resource record sets that
        #     have the same values for the `Name` and `Type` elements.
        #   * For weighted (but not weighted alias) resource record sets, if you
        #     set `Weight` to `0` for a resource record set, Amazon Route 53
        #     never responds to queries with the applicable value for that
        #     resource record set. However, if you set `Weight` to `0` for all
        #     resource record sets that have the same combination of DNS name
        #     and type, traffic is routed to all resources with equal
        #     probability.
        #
        #     The effect of setting `Weight` to `0` is different when you
        #     associate health checks with weighted resource record sets. For
        #     more information, see [Options for Configuring Amazon Route 53
        #     Active-Active and Active-Passive Failover][1] in the *Amazon Route
        #     53 Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html
        #   @return [Integer]

        # @!attribute [rw] region
        #   *Latency-based resource record sets only:* The Amazon EC2 region
        #   where the resource that is specified in this resource record set
        #   resides. The resource typically is an AWS resource, such as an
        #   Amazon EC2 instance or an ELB load balancer, and is referred to by
        #   an IP address or a DNS domain name, depending on the record type.
        #
        #   <note>You can create latency and latency alias resource record sets only in public hosted zones.</note>
        #
        #   When Amazon Route 53 receives a DNS query for a domain name and type
        #   for which you have created latency resource record sets, Amazon
        #   Route 53 selects the latency resource record set that has the lowest
        #   latency between the end user and the associated Amazon EC2 region.
        #   Amazon Route 53 then returns the value that is associated with the
        #   selected resource record set.
        #
        #   Note the following:
        #
        #   * You can only specify one `ResourceRecord` per latency resource
        #     record set.
        #   * You can only create one latency resource record set for each
        #     Amazon EC2 region.
        #   * You are not required to create latency resource record sets for
        #     all Amazon EC2 regions. Amazon Route 53 will choose the region
        #     with the best latency from among the regions for which you create
        #     latency resource record sets.
        #   * You cannot create non-latency resource record sets that have the
        #     same values for the `Name` and `Type` elements as latency resource
        #     record sets.
        #   @return [String]

        # @!attribute [rw] geo_location
        #   *Geo location resource record sets only:* A complex type that lets
        #   you control how Amazon Route 53 responds to DNS queries based on the
        #   geographic origin of the query. For example, if you want all queries
        #   from Africa to be routed to a web server with an IP address of
        #   `192.0.2.111`, create a resource record set with a `Type` of `A` and
        #   a `ContinentCode` of `AF`.
        #
        #   <note>You can create geolocation and geolocation alias resource record sets only in public hosted zones.</note>
        #
        #   If you create separate resource record sets for overlapping
        #   geographic regions (for example, one resource record set for a
        #   continent and one for a country on the same continent), priority
        #   goes to the smallest geographic region. This allows you to route
        #   most queries for a continent to one resource and to route queries
        #   for a country on that continent to a different resource.
        #
        #   You cannot create two geolocation resource record sets that specify
        #   the same geographic location.
        #
        #   The value `*` in the `CountryCode` element matches all geographic
        #   locations that aren\'t specified in other geolocation resource
        #   record sets that have the same values for the `Name` and `Type`
        #   elements.
        #
        #   <important>Geolocation works by mapping IP addresses to locations. However, some IP addresses aren't mapped to geographic locations, so even if you create geolocation resource record sets that cover all seven continents, Amazon Route 53 will receive some DNS queries from locations that it can't identify. We recommend that you create a resource record set for which the value of `CountryCode` is `*`, which handles both queries that come from locations for which you haven't created geolocation resource record sets and queries from IP addresses that aren't mapped to a location. If you don't create a `*` resource record set, Amazon Route 53 returns a "no answer" response for queries from those locations.</important>
        #
        #   You cannot create non-geolocation resource record sets that have the
        #   same values for the `Name` and `Type` elements as geolocation
        #   resource record sets.
        #   @return [Types::GeoLocation]

        # @!attribute [rw] failover
        #   *Failover resource record sets only:* To configure failover, you add
        #   the `Failover` element to two resource record sets. For one resource
        #   record set, you specify `PRIMARY` as the value for `Failover`; for
        #   the other resource record set, you specify `SECONDARY`. In addition,
        #   you include the `HealthCheckId` element and specify the health check
        #   that you want Amazon Route 53 to perform for each resource record
        #   set.
        #
        #   <note>You can create failover and failover alias resource record sets only in public hosted zones.</note>
        #
        #   Except where noted, the following failover behaviors assume that you
        #   have included the `HealthCheckId` element in both resource record
        #   sets:
        #
        #   * When the primary resource record set is healthy, Amazon Route 53
        #     responds to DNS queries with the applicable value from the primary
        #     resource record set regardless of the health of the secondary
        #     resource record set.
        #   * When the primary resource record set is unhealthy and the
        #     secondary resource record set is healthy, Amazon Route 53 responds
        #     to DNS queries with the applicable value from the secondary
        #     resource record set.
        #   * When the secondary resource record set is unhealthy, Amazon Route
        #     53 responds to DNS queries with the applicable value from the
        #     primary resource record set regardless of the health of the
        #     primary resource record set.
        #   * If you omit the `HealthCheckId` element for the secondary resource
        #     record set, and if the primary resource record set is unhealthy,
        #     Amazon Route 53 always responds to DNS queries with the applicable
        #     value from the secondary resource record set. This is true
        #     regardless of the health of the associated endpoint.
        #
        #   You cannot create non-failover resource record sets that have the
        #   same values for the `Name` and `Type` elements as failover resource
        #   record sets.
        #
        #   For failover alias resource record sets, you must also include the
        #   `EvaluateTargetHealth` element and set the value to true.
        #
        #   For more information about configuring failover for Amazon Route 53,
        #   see [Amazon Route 53 Health Checks and DNS Failover][1] in the
        #   *Amazon Route 53 Developer Guide*.
        #
        #   Valid values: `PRIMARY` \| `SECONDARY`
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html
        #   @return [String]

        # @!attribute [rw] ttl
        #   The cache time to live for the current resource record set. Note the
        #   following:
        #
        #   * If you\'re creating an alias resource record set, omit `TTL`.
        #     Amazon Route 53 uses the value of `TTL` for the alias target.
        #   * If you\'re associating this resource record set with a health
        #     check (if you\'re adding a `HealthCheckId` element), we recommend
        #     that you specify a `TTL` of 60 seconds or less so clients respond
        #     quickly to changes in health status.
        #   * All of the resource record sets in a group of weighted, latency,
        #     geolocation, or failover resource record sets must have the same
        #     value for `TTL`.
        #   * If a group of weighted resource record sets includes one or more
        #     weighted alias resource record sets for which the alias target is
        #     an ELB load balancer, we recommend that you specify a `TTL` of 60
        #     seconds for all of the non-alias weighted resource record sets
        #     that have the same name and type. Values other than 60 seconds
        #     (the TTL for load balancers) will change the effect of the values
        #     that you specify for `Weight`.
        #   @return [Integer]

        # @!attribute [rw] resource_records
        #   A complex type that contains the resource records for the current
        #   resource record set.
        #   @return [Array<Types::ResourceRecord>]

        # @!attribute [rw] alias_target
        #   *Alias resource record sets only:* Information about the AWS
        #   resource to which you are redirecting traffic.
        #   @return [Types::AliasTarget]

        # @!attribute [rw] health_check_id
        #   *Health Check resource record sets only, not required for alias
        #   resource record sets:* An identifier that is used to identify health
        #   check associated with the resource record set.
        #   @return [String]

        # @!attribute [rw] traffic_policy_instance_id
        #   @return [String]

      end

      # A complex type containing a resource and its associated tags.
      class ResourceTagSet < Aws::Structure.new(
        :resource_type,
        :resource_id,
        :tags)

        # @!attribute [rw] resource_type
        #   The type of the resource.
        #
        #   \- The resource type for health checks is `healthcheck`.
        #
        #   \- The resource type for hosted zones is `hostedzone`.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID for the specified resource.
        #   @return [String]

        # @!attribute [rw] tags
        #   The tags associated with the specified resource.
        #   @return [Array<Types::Tag>]

      end

      # A complex type that contains information about the health check status
      # for the current observation.
      class StatusReport < Aws::Structure.new(
        :status,
        :checked_time)

        # @!attribute [rw] status
        #   The observed health check status.
        #   @return [String]

        # @!attribute [rw] checked_time
        #   The date and time the health check status was observed, in the
        #   format `YYYY-MM-DDThh:mm:ssZ`, as specified in the ISO 8601 standard
        #   (for example, 2009-11-19T19:37:58Z). The `Z` after the time
        #   indicates that the time is listed in Coordinated Universal Time
        #   (UTC).
        #   @return [Time]

      end

      # A single tag containing a key and value.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The key for a `Tag`.
        #   @return [String]

        # @!attribute [rw] value
        #   The value for a `Tag`.
        #   @return [String]

      end

      class TrafficPolicy < Aws::Structure.new(
        :id,
        :version,
        :name,
        :type,
        :document,
        :comment)

        # @!attribute [rw] id
        #   @return [String]

        # @!attribute [rw] version
        #   @return [Integer]

        # @!attribute [rw] name
        #   @return [String]

        # @!attribute [rw] type
        #   @return [String]

        # @!attribute [rw] document
        #   @return [String]

        # @!attribute [rw] comment
        #   @return [String]

      end

      class TrafficPolicyInstance < Aws::Structure.new(
        :id,
        :hosted_zone_id,
        :name,
        :ttl,
        :state,
        :message,
        :traffic_policy_id,
        :traffic_policy_version,
        :traffic_policy_type)

        # @!attribute [rw] id
        #   @return [String]

        # @!attribute [rw] hosted_zone_id
        #   @return [String]

        # @!attribute [rw] name
        #   @return [String]

        # @!attribute [rw] ttl
        #   @return [Integer]

        # @!attribute [rw] state
        #   @return [String]

        # @!attribute [rw] message
        #   @return [String]

        # @!attribute [rw] traffic_policy_id
        #   @return [String]

        # @!attribute [rw] traffic_policy_version
        #   @return [Integer]

        # @!attribute [rw] traffic_policy_type
        #   @return [String]

      end

      class TrafficPolicySummary < Aws::Structure.new(
        :id,
        :name,
        :type,
        :latest_version,
        :traffic_policy_count)

        # @!attribute [rw] id
        #   @return [String]

        # @!attribute [rw] name
        #   @return [String]

        # @!attribute [rw] type
        #   @return [String]

        # @!attribute [rw] latest_version
        #   @return [Integer]

        # @!attribute [rw] traffic_policy_count
        #   @return [Integer]

      end

      # \>A complex type that contains information about the request to update
      # a health check.
      # @note When making an API call, pass UpdateHealthCheckRequest
      #   data as a hash:
      #
      #       {
      #         health_check_id: "HealthCheckId", # required
      #         health_check_version: 1,
      #         ip_address: "IPAddress",
      #         port: 1,
      #         resource_path: "ResourcePath",
      #         fully_qualified_domain_name: "FullyQualifiedDomainName",
      #         search_string: "SearchString",
      #         failure_threshold: 1,
      #         inverted: false,
      #         health_threshold: 1,
      #         child_health_checks: ["HealthCheckId"],
      #         enable_sni: false,
      #         regions: ["us-east-1"], # accepts us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1
      #         alarm_identifier: {
      #           region: "us-east-1", # required, accepts us-east-1, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
      #           name: "AlarmName", # required
      #         },
      #         insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
      #       }
      class UpdateHealthCheckRequest < Aws::Structure.new(
        :health_check_id,
        :health_check_version,
        :ip_address,
        :port,
        :resource_path,
        :fully_qualified_domain_name,
        :search_string,
        :failure_threshold,
        :inverted,
        :health_threshold,
        :child_health_checks,
        :enable_sni,
        :regions,
        :alarm_identifier,
        :insufficient_data_health_status)

        # @!attribute [rw] health_check_id
        #   The ID of the health check to update.
        #   @return [String]

        # @!attribute [rw] health_check_version
        #   Optional. When you specify a health check version, Amazon Route 53
        #   compares this value with the current value in the health check,
        #   which prevents you from updating the health check when the versions
        #   don\'t match. Using `HealthCheckVersion` lets you prevent
        #   overwriting another change to the health check.
        #   @return [Integer]

        # @!attribute [rw] ip_address
        #   The IP address of the resource that you want to check.
        #
        #   Specify this value only if you want to change it.
        #   @return [String]

        # @!attribute [rw] port
        #   The port on which you want Amazon Route 53 to open a connection to
        #   perform health checks.
        #
        #   Specify this value only if you want to change it.
        #   @return [Integer]

        # @!attribute [rw] resource_path
        #   The path that you want Amazon Route 53 to request when performing
        #   health checks. The path can be any value for which your endpoint
        #   will return an HTTP status code of 2xx or 3xx when the endpoint is
        #   healthy, for example the file /docs/route53-health-check.html.
        #
        #   Specify this value only if you want to change it.
        #   @return [String]

        # @!attribute [rw] fully_qualified_domain_name
        #   Fully qualified domain name of the instance to be health checked.
        #
        #   Specify this value only if you want to change it.
        #   @return [String]

        # @!attribute [rw] search_string
        #   If the value of `Type` is `HTTP_STR_MATCH` or `HTTP_STR_MATCH`, the
        #   string that you want Amazon Route 53 to search for in the response
        #   body from the specified resource. If the string appears in the
        #   response body, Amazon Route 53 considers the resource healthy.
        #   Amazon Route 53 considers case when searching for `SearchString` in
        #   the response body.
        #
        #   Specify this value only if you want to change it.
        #   @return [String]

        # @!attribute [rw] failure_threshold
        #   The number of consecutive health checks that an endpoint must pass
        #   or fail for Amazon Route 53 to change the current status of the
        #   endpoint from unhealthy to healthy or vice versa.
        #
        #   Valid values are integers between 1 and 10. For more information,
        #   see \"How Amazon Route 53 Determines Whether an Endpoint Is
        #   Healthy\" in the Amazon Route 53 Developer Guide.
        #
        #   Specify this value only if you want to change it.
        #   @return [Integer]

        # @!attribute [rw] inverted
        #   A boolean value that indicates whether the status of health check
        #   should be inverted. For example, if a health check is healthy but
        #   `Inverted` is `True`, then Amazon Route 53 considers the health
        #   check to be unhealthy.
        #
        #   Specify this value only if you want to change it.
        #   @return [Boolean]

        # @!attribute [rw] health_threshold
        #   The minimum number of child health checks that must be healthy for
        #   Amazon Route 53 to consider the parent health check to be healthy.
        #   Valid values are integers between 0 and 256, inclusive.
        #
        #   Specify this value only if you want to change it.
        #   @return [Integer]

        # @!attribute [rw] child_health_checks
        #   For a specified parent health check, a list of `HealthCheckId`
        #   values for the associated child health checks.
        #
        #   Specify this value only if you want to change it.
        #   @return [Array<String>]

        # @!attribute [rw] enable_sni
        #   Specify whether you want Amazon Route 53 to send the value of
        #   `FullyQualifiedDomainName` to the endpoint in the `client_hello`
        #   message during TLS negotiation. If you don\'t specify a value for
        #   `EnableSNI`, Amazon Route 53 defaults to `true` when `Type` is
        #   `HTTPS` or `HTTPS_STR_MATCH` and defaults to `false` when `Type` is
        #   any other value.
        #
        #   Specify this value only if you want to change it.
        #   @return [Boolean]

        # @!attribute [rw] regions
        #   A list of `HealthCheckRegion` values that specify the Amazon EC2
        #   regions that you want Amazon Route 53 to use to perform health
        #   checks. You must specify at least three regions.
        #
        #   <note>When you remove a region from the list, Amazon Route 53 will briefly continue to check your endpoint from that region.</note>
        #
        #   Specify this value only if you want to change it.
        #   @return [Array<String>]

        # @!attribute [rw] alarm_identifier
        #   A complex type that contains information to uniquely identify the
        #   CloudWatch alarm that you\'re associating with a Route 53 health
        #   check.
        #   @return [Types::AlarmIdentifier]

        # @!attribute [rw] insufficient_data_health_status
        #   @return [String]

      end

      class UpdateHealthCheckResponse < Aws::Structure.new(
        :health_check)

        # @!attribute [rw] health_check
        #   A complex type that contains identifying information about the
        #   health check.
        #   @return [Types::HealthCheck]

      end

      # A complex type that contains information about the request to update a
      # hosted zone comment.
      # @note When making an API call, pass UpdateHostedZoneCommentRequest
      #   data as a hash:
      #
      #       {
      #         id: "ResourceId", # required
      #         comment: "ResourceDescription",
      #       }
      class UpdateHostedZoneCommentRequest < Aws::Structure.new(
        :id,
        :comment)

        # @!attribute [rw] id
        #   The ID of the hosted zone you want to update.
        #   @return [String]

        # @!attribute [rw] comment
        #   A comment about your hosted zone.
        #   @return [String]

      end

      # A complex type containing information about the specified hosted zone
      # after the update.
      class UpdateHostedZoneCommentResponse < Aws::Structure.new(
        :hosted_zone)

        # @!attribute [rw] hosted_zone
        #   A complex type that contain information about the specified hosted
        #   zone.
        #   @return [Types::HostedZone]

      end

      # A complex type that contains information about the traffic policy for
      # which you want to update the comment.
      # @note When making an API call, pass UpdateTrafficPolicyCommentRequest
      #   data as a hash:
      #
      #       {
      #         id: "TrafficPolicyId", # required
      #         version: 1, # required
      #         comment: "TrafficPolicyComment", # required
      #       }
      class UpdateTrafficPolicyCommentRequest < Aws::Structure.new(
        :id,
        :version,
        :comment)

        # @!attribute [rw] id
        #   The value of `Id` for the traffic policy for which you want to
        #   update the comment.
        #   @return [String]

        # @!attribute [rw] version
        #   The value of `Version` for the traffic policy for which you want to
        #   update the comment.
        #   @return [Integer]

        # @!attribute [rw] comment
        #   The new comment for the specified traffic policy and version.
        #   @return [String]

      end

      # A complex type that contains the response information for the traffic
      # policy.
      class UpdateTrafficPolicyCommentResponse < Aws::Structure.new(
        :traffic_policy)

        # @!attribute [rw] traffic_policy
        #   A complex type that contains settings for the specified traffic
        #   policy.
        #   @return [Types::TrafficPolicy]

      end

      # A complex type that contains information about the resource record
      # sets that you want to update based on a specified traffic policy
      # instance.
      # @note When making an API call, pass UpdateTrafficPolicyInstanceRequest
      #   data as a hash:
      #
      #       {
      #         id: "TrafficPolicyInstanceId", # required
      #         ttl: 1, # required
      #         traffic_policy_id: "TrafficPolicyId", # required
      #         traffic_policy_version: 1, # required
      #       }
      class UpdateTrafficPolicyInstanceRequest < Aws::Structure.new(
        :id,
        :ttl,
        :traffic_policy_id,
        :traffic_policy_version)

        # @!attribute [rw] id
        #   The ID of the traffic policy instance that you want to update.
        #   @return [String]

        # @!attribute [rw] ttl
        #   The TTL that you want Amazon Route 53 to assign to all of the
        #   updated resource record sets.
        #   @return [Integer]

        # @!attribute [rw] traffic_policy_id
        #   The ID of the traffic policy that you want Amazon Route 53 to use to
        #   update resource record sets for the specified traffic policy
        #   instance.
        #   @return [String]

        # @!attribute [rw] traffic_policy_version
        #   The version of the traffic policy that you want Amazon Route 53 to
        #   use to update resource record sets for the specified traffic policy
        #   instance.
        #   @return [Integer]

      end

      # A complex type that contains information about the resource record
      # sets that Amazon Route 53 created based on a specified traffic policy.
      class UpdateTrafficPolicyInstanceResponse < Aws::Structure.new(
        :traffic_policy_instance)

        # @!attribute [rw] traffic_policy_instance
        #   A complex type that contains settings for the updated traffic policy
        #   instance.
        #   @return [Types::TrafficPolicyInstance]

      end

      # @note When making an API call, pass VPC
      #   data as a hash:
      #
      #       {
      #         vpc_region: "us-east-1", # accepts us-east-1, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
      #         vpc_id: "VPCId",
      #       }
      class VPC < Aws::Structure.new(
        :vpc_region,
        :vpc_id)

        # @!attribute [rw] vpc_region
        #   @return [String]

        # @!attribute [rw] vpc_id
        #   A VPC ID
        #   @return [String]

      end

    end
  end
end
