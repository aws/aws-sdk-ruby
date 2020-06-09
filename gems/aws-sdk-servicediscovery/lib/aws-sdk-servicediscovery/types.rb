# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServiceDiscovery
  module Types

    # @note When making an API call, you may pass CreateHttpNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         name: "NamespaceName", # required
    #         creator_request_id: "ResourceId",
    #         description: "ResourceDescription",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name that you want to assign to this namespace.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreateHttpNamespace` requests to be retried without the risk of
    #   executing the operation twice. `CreatorRequestId` can be any unique
    #   string, for example, a date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the namespace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the namespace. Each tag consists of a key and an
    #   optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have
    #   a maximum length of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateHttpNamespaceRequest AWS API Documentation
    #
    class CreateHttpNamespaceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A value that you can use to determine whether the request completed
    #   successfully. To get the status of the operation, see
    #   [GetOperation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateHttpNamespaceResponse AWS API Documentation
    #
    class CreateHttpNamespaceResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePrivateDnsNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         name: "NamespaceName", # required
    #         creator_request_id: "ResourceId",
    #         description: "ResourceDescription",
    #         vpc: "ResourceId", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name that you want to assign to this namespace. When you create
    #   a private DNS namespace, AWS Cloud Map automatically creates an
    #   Amazon Route 53 private hosted zone that has the same name as the
    #   namespace.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreatePrivateDnsNamespace` requests to be retried without the risk
    #   of executing the operation twice. `CreatorRequestId` can be any
    #   unique string, for example, a date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the namespace.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The ID of the Amazon VPC that you want to associate the namespace
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the namespace. Each tag consists of a key and an
    #   optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have
    #   a maximum length of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePrivateDnsNamespaceRequest AWS API Documentation
    #
    class CreatePrivateDnsNamespaceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description,
      :vpc,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A value that you can use to determine whether the request completed
    #   successfully. To get the status of the operation, see
    #   [GetOperation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePrivateDnsNamespaceResponse AWS API Documentation
    #
    class CreatePrivateDnsNamespaceResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePublicDnsNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         name: "NamespaceName", # required
    #         creator_request_id: "ResourceId",
    #         description: "ResourceDescription",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name that you want to assign to this namespace.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreatePublicDnsNamespace` requests to be retried without the risk
    #   of executing the operation twice. `CreatorRequestId` can be any
    #   unique string, for example, a date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the namespace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the namespace. Each tag consists of a key and an
    #   optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have
    #   a maximum length of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePublicDnsNamespaceRequest AWS API Documentation
    #
    class CreatePublicDnsNamespaceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A value that you can use to determine whether the request completed
    #   successfully. To get the status of the operation, see
    #   [GetOperation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePublicDnsNamespaceResponse AWS API Documentation
    #
    class CreatePublicDnsNamespaceResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateServiceRequest
    #   data as a hash:
    #
    #       {
    #         name: "ServiceName", # required
    #         namespace_id: "ResourceId",
    #         creator_request_id: "ResourceId",
    #         description: "ResourceDescription",
    #         dns_config: {
    #           namespace_id: "ResourceId",
    #           routing_policy: "MULTIVALUE", # accepts MULTIVALUE, WEIGHTED
    #           dns_records: [ # required
    #             {
    #               type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #               ttl: 1, # required
    #             },
    #           ],
    #         },
    #         health_check_config: {
    #           type: "HTTP", # required, accepts HTTP, HTTPS, TCP
    #           resource_path: "ResourcePath",
    #           failure_threshold: 1,
    #         },
    #         health_check_custom_config: {
    #           failure_threshold: 1,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name that you want to assign to the service.
    #
    #   If you want AWS Cloud Map to create an SRV record when you register
    #   an instance, and if you're using a system that requires a specific
    #   SRV format, such as [HAProxy][1], specify the following for `Name`\:
    #
    #   * Start the name with an underscore (\_), such as `_exampleservice`
    #
    #   * End the name with *.\_protocol*, such as `._tcp`
    #
    #   When you register an instance, AWS Cloud Map creates an SRV record
    #   and assigns a name to the record by concatenating the service name
    #   and the namespace name, for example:
    #
    #   `_exampleservice._tcp.example.com`
    #
    #
    #
    #   [1]: http://www.haproxy.org/
    #   @return [String]
    #
    # @!attribute [rw] namespace_id
    #   The ID of the namespace that you want to use to create the service.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreateService` requests to be retried without the risk of executing
    #   the operation twice. `CreatorRequestId` can be any unique string,
    #   for example, a date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the service.
    #   @return [String]
    #
    # @!attribute [rw] dns_config
    #   A complex type that contains information about the Amazon Route 53
    #   records that you want AWS Cloud Map to create when you register an
    #   instance.
    #   @return [Types::DnsConfig]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS and HTTP namespaces only.* A complex type that contains
    #   settings for an optional Route 53 health check. If you specify
    #   settings for a health check, AWS Cloud Map associates the health
    #   check with all the Route 53 DNS records that you specify in
    #   `DnsConfig`.
    #
    #   If you specify a health check configuration, you can specify either
    #   `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #
    #   For information about the charges for health checks, see [AWS Cloud
    #   Map Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/cloud-map/pricing/
    #   @return [Types::HealthCheckConfig]
    #
    # @!attribute [rw] health_check_custom_config
    #   A complex type that contains information about an optional custom
    #   health check.
    #
    #   If you specify a health check configuration, you can specify either
    #   `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #
    #   You can't add, update, or delete a `HealthCheckCustomConfig`
    #   configuration from an existing service.
    #   @return [Types::HealthCheckCustomConfig]
    #
    # @!attribute [rw] tags
    #   The tags to add to the service. Each tag consists of a key and an
    #   optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have
    #   a maximum length of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :name,
      :namespace_id,
      :creator_request_id,
      :description,
      :dns_config,
      :health_check_config,
      :health_check_custom_config,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   A complex type that contains information about the new service.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateServiceResponse AWS API Documentation
    #
    class CreateServiceResponse < Struct.new(
      :service)
      include Aws::Structure
    end

    # The health check for the instance that is specified by `ServiceId` and
    # `InstanceId` is not a custom health check.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CustomHealthNotFound AWS API Documentation
    #
    class CustomHealthNotFound < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the namespace that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteNamespaceRequest AWS API Documentation
    #
    class DeleteNamespaceRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A value that you can use to determine whether the request completed
    #   successfully. To get the status of the operation, see
    #   [GetOperation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteNamespaceResponse AWS API Documentation
    #
    class DeleteNamespaceResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteServiceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the service that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteServiceRequest AWS API Documentation
    #
    class DeleteServiceRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteServiceResponse AWS API Documentation
    #
    class DeleteServiceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeregisterInstanceRequest
    #   data as a hash:
    #
    #       {
    #         service_id: "ResourceId", # required
    #         instance_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] service_id
    #   The ID of the service that the instance is associated with.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The value that you specified for `Id` in the [RegisterInstance][1]
    #   request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeregisterInstanceRequest AWS API Documentation
    #
    class DeregisterInstanceRequest < Struct.new(
      :service_id,
      :instance_id)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A value that you can use to determine whether the request completed
    #   successfully. For more information, see [GetOperation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeregisterInstanceResponse AWS API Documentation
    #
    class DeregisterInstanceResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DiscoverInstancesRequest
    #   data as a hash:
    #
    #       {
    #         namespace_name: "NamespaceName", # required
    #         service_name: "ServiceName", # required
    #         max_results: 1,
    #         query_parameters: {
    #           "AttrKey" => "AttrValue",
    #         },
    #         health_status: "HEALTHY", # accepts HEALTHY, UNHEALTHY, ALL
    #       }
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace that you specified when you registered the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service that you specified when you registered the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of instances that you want AWS Cloud Map to
    #   return in the response to a `DiscoverInstances` request. If you
    #   don't specify a value for `MaxResults`, AWS Cloud Map returns up to
    #   100 instances.
    #   @return [Integer]
    #
    # @!attribute [rw] query_parameters
    #   A string map that contains attributes with values that you can use
    #   to filter instances by any custom attribute that you specified when
    #   you registered the instance. Only instances that match all the
    #   specified key/value pairs will be returned.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] health_status
    #   The health status of the instances that you want to discover.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DiscoverInstancesRequest AWS API Documentation
    #
    class DiscoverInstancesRequest < Struct.new(
      :namespace_name,
      :service_name,
      :max_results,
      :query_parameters,
      :health_status)
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   A complex type that contains one `HttpInstanceSummary` for each
    #   registered instance.
    #   @return [Array<Types::HttpInstanceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DiscoverInstancesResponse AWS API Documentation
    #
    class DiscoverInstancesResponse < Struct.new(
      :instances)
      include Aws::Structure
    end

    # A complex type that contains information about the Amazon Route 53 DNS
    # records that you want AWS Cloud Map to create when you register an
    # instance.
    #
    # @note When making an API call, you may pass DnsConfig
    #   data as a hash:
    #
    #       {
    #         namespace_id: "ResourceId",
    #         routing_policy: "MULTIVALUE", # accepts MULTIVALUE, WEIGHTED
    #         dns_records: [ # required
    #           {
    #             type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #             ttl: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] namespace_id
    #   The ID of the namespace to use for DNS configuration.
    #   @return [String]
    #
    # @!attribute [rw] routing_policy
    #   The routing policy that you want to apply to all Route 53 DNS
    #   records that AWS Cloud Map creates when you register an instance and
    #   specify this service.
    #
    #   <note markdown="1"> If you want to use this service to register instances that create
    #   alias records, specify `WEIGHTED` for the routing policy.
    #
    #    </note>
    #
    #   You can specify the following values:
    #
    #   **MULTIVALUE**
    #
    #   If you define a health check for the service and the health check is
    #   healthy, Route 53 returns the applicable value for up to eight
    #   instances.
    #
    #   For example, suppose the service includes configurations for one A
    #   record and a health check, and you use the service to register 10
    #   instances. Route 53 responds to DNS queries with IP addresses for up
    #   to eight healthy instances. If fewer than eight instances are
    #   healthy, Route 53 responds to every DNS query with the IP addresses
    #   for all of the healthy instances.
    #
    #   If you don't define a health check for the service, Route 53
    #   assumes that all instances are healthy and returns the values for up
    #   to eight instances.
    #
    #   For more information about the multivalue routing policy, see
    #   [Multivalue Answer Routing][1] in the *Route 53 Developer Guide*.
    #
    #   **WEIGHTED**
    #
    #   Route 53 returns the applicable value from one randomly selected
    #   instance from among the instances that you registered using the same
    #   service. Currently, all records have the same weight, so you can't
    #   route more or less traffic to any instances.
    #
    #   For example, suppose the service includes configurations for one A
    #   record and a health check, and you use the service to register 10
    #   instances. Route 53 responds to DNS queries with the IP address for
    #   one randomly selected instance from among the healthy instances. If
    #   no instances are healthy, Route 53 responds to DNS queries as if all
    #   of the instances were healthy.
    #
    #   If you don't define a health check for the service, Route 53
    #   assumes that all instances are healthy and returns the applicable
    #   value for one randomly selected instance.
    #
    #   For more information about the weighted routing policy, see
    #   [Weighted Routing][2] in the *Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-multivalue
    #   [2]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted
    #   @return [String]
    #
    # @!attribute [rw] dns_records
    #   An array that contains one `DnsRecord` object for each Route 53 DNS
    #   record that you want AWS Cloud Map to create when you register an
    #   instance.
    #   @return [Array<Types::DnsRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsConfig AWS API Documentation
    #
    class DnsConfig < Struct.new(
      :namespace_id,
      :routing_policy,
      :dns_records)
      include Aws::Structure
    end

    # A complex type that contains information about changes to the Route 53
    # DNS records that AWS Cloud Map creates when you register an instance.
    #
    # @note When making an API call, you may pass DnsConfigChange
    #   data as a hash:
    #
    #       {
    #         dns_records: [ # required
    #           {
    #             type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #             ttl: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dns_records
    #   An array that contains one `DnsRecord` object for each Route 53
    #   record that you want AWS Cloud Map to create when you register an
    #   instance.
    #   @return [Array<Types::DnsRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsConfigChange AWS API Documentation
    #
    class DnsConfigChange < Struct.new(
      :dns_records)
      include Aws::Structure
    end

    # A complex type that contains the ID for the Route 53 hosted zone that
    # AWS Cloud Map creates when you create a namespace.
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID for the Route 53 hosted zone that AWS Cloud Map creates when
    #   you create a namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsProperties AWS API Documentation
    #
    class DnsProperties < Struct.new(
      :hosted_zone_id)
      include Aws::Structure
    end

    # A complex type that contains information about the Route 53 DNS
    # records that you want AWS Cloud Map to create when you register an
    # instance.
    #
    # @note When making an API call, you may pass DnsRecord
    #   data as a hash:
    #
    #       {
    #         type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #         ttl: 1, # required
    #       }
    #
    # @!attribute [rw] type
    #   The type of the resource, which indicates the type of value that
    #   Route 53 returns in response to DNS queries. You can specify values
    #   for `Type` in the following combinations:
    #
    #   * A
    #
    #   * AAAA
    #
    #   * A and AAAA
    #
    #   * SRV
    #
    #   * CNAME
    #
    #   If you want AWS Cloud Map to create a Route 53 alias record when you
    #   register an instance, specify `A` or `AAAA` for `Type`.
    #
    #   You specify other settings, such as the IP address for A and AAAA
    #   records, when you register an instance. For more information, see
    #   [RegisterInstance][1].
    #
    #   The following values are supported:
    #
    #   **A**
    #
    #   Route 53 returns the IP address of the resource in IPv4 format, such
    #   as 192.0.2.44.
    #
    #   **AAAA**
    #
    #   Route 53 returns the IP address of the resource in IPv6 format, such
    #   as 2001:0db8:85a3:0000:0000:abcd:0001:2345.
    #
    #   **CNAME**
    #
    #   Route 53 returns the domain name of the resource, such as
    #   www.example.com. Note the following:
    #
    #   * You specify the domain name that you want to route traffic to when
    #     you register an instance. For more information, see
    #     [Attributes][2] in the topic [RegisterInstance][1].
    #
    #   * You must specify `WEIGHTED` for the value of `RoutingPolicy`.
    #
    #   * You can't specify both `CNAME` for `Type` and settings for
    #     `HealthCheckConfig`. If you do, the request will fail with an
    #     `InvalidInput` error.
    #
    #   **SRV**
    #
    #   Route 53 returns the value for an SRV record. The value for an SRV
    #   record uses the following values:
    #
    #   `priority weight port service-hostname`
    #
    #   Note the following about the values:
    #
    #   * The values of `priority` and `weight` are both set to `1` and
    #     can't be changed.
    #
    #   * The value of `port` comes from the value that you specify for the
    #     `AWS_INSTANCE_PORT` attribute when you submit a
    #     [RegisterInstance][1] request.
    #
    #   * The value of `service-hostname` is a concatenation of the
    #     following values:
    #
    #     * The value that you specify for `InstanceId` when you register an
    #       instance.
    #
    #     * The name of the service.
    #
    #     * The name of the namespace.
    #
    #     For example, if the value of `InstanceId` is `test`, the name of
    #     the service is `backend`, and the name of the namespace is
    #     `example.com`, the value of `service-hostname` is:
    #
    #     `test.backend.example.com`
    #
    #   If you specify settings for an SRV record, note the following:
    #
    #   * If you specify values for `AWS_INSTANCE_IPV4`,
    #     `AWS_INSTANCE_IPV6`, or both in the `RegisterInstance` request,
    #     AWS Cloud Map automatically creates `A` and/or `AAAA` records that
    #     have the same name as the value of `service-hostname` in the SRV
    #     record. You can ignore these records.
    #
    #   * If you're using a system that requires a specific SRV format,
    #     such as HAProxy, see the [Name][3] element in the documentation
    #     about `CreateService` for information about how to specify the
    #     correct name format.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html
    #   [2]: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#cloudmap-RegisterInstance-request-Attributes
    #   [3]: https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html#cloudmap-CreateService-request-Name
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The amount of time, in seconds, that you want DNS resolvers to cache
    #   the settings for this record.
    #
    #   <note markdown="1"> Alias records don't include a TTL because Route 53 uses the TTL for
    #   the AWS resource that an alias record routes traffic to. If you
    #   include the `AWS_ALIAS_DNS_NAME` attribute when you submit a
    #   [RegisterInstance][1] request, the `TTL` value is ignored. Always
    #   specify a TTL for the service; you can use a service to register
    #   instances that create either alias or non-alias records.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsRecord AWS API Documentation
    #
    class DnsRecord < Struct.new(
      :type,
      :ttl)
      include Aws::Structure
    end

    # The operation is already in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] duplicate_operation_id
    #   The ID of the operation that is already in progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DuplicateRequest AWS API Documentation
    #
    class DuplicateRequest < Struct.new(
      :message,
      :duplicate_operation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceRequest
    #   data as a hash:
    #
    #       {
    #         service_id: "ResourceId", # required
    #         instance_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] service_id
    #   The ID of the service that the instance is associated with.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance that you want to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstanceRequest AWS API Documentation
    #
    class GetInstanceRequest < Struct.new(
      :service_id,
      :instance_id)
      include Aws::Structure
    end

    # @!attribute [rw] instance
    #   A complex type that contains information about a specified instance.
    #   @return [Types::Instance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstanceResponse AWS API Documentation
    #
    class GetInstanceResponse < Struct.new(
      :instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstancesHealthStatusRequest
    #   data as a hash:
    #
    #       {
    #         service_id: "ResourceId", # required
    #         instances: ["ResourceId"],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] service_id
    #   The ID of the service that the instance is associated with.
    #   @return [String]
    #
    # @!attribute [rw] instances
    #   An array that contains the IDs of all the instances that you want to
    #   get the health status for.
    #
    #   If you omit `Instances`, AWS Cloud Map returns the health status for
    #   all the instances that are associated with the specified service.
    #
    #   <note markdown="1"> To get the IDs for the instances that you've registered by using a
    #   specified service, submit a [ListInstances][1] request.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_ListInstances.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of instances that you want AWS Cloud Map to
    #   return in the response to a `GetInstancesHealthStatus` request. If
    #   you don't specify a value for `MaxResults`, AWS Cloud Map returns
    #   up to 100 instances.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `GetInstancesHealthStatus` request, omit this value.
    #
    #   If more than `MaxResults` instances match the specified criteria,
    #   you can submit another `GetInstancesHealthStatus` request to get the
    #   next group of results. Specify the value of `NextToken` from the
    #   previous response in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstancesHealthStatusRequest AWS API Documentation
    #
    class GetInstancesHealthStatusRequest < Struct.new(
      :service_id,
      :instances,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   A complex type that contains the IDs and the health status of the
    #   instances that you specified in the `GetInstancesHealthStatus`
    #   request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   If more than `MaxResults` instances match the specified criteria,
    #   you can submit another `GetInstancesHealthStatus` request to get the
    #   next group of results. Specify the value of `NextToken` from the
    #   previous response in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstancesHealthStatusResponse AWS API Documentation
    #
    class GetInstancesHealthStatusResponse < Struct.new(
      :status,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the namespace that you want to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetNamespaceRequest AWS API Documentation
    #
    class GetNamespaceRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   A complex type that contains information about the specified
    #   namespace.
    #   @return [Types::Namespace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetNamespaceResponse AWS API Documentation
    #
    class GetNamespaceResponse < Struct.new(
      :namespace)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOperationRequest
    #   data as a hash:
    #
    #       {
    #         operation_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] operation_id
    #   The ID of the operation that you want to get more information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetOperationRequest AWS API Documentation
    #
    class GetOperationRequest < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   A complex type that contains information about the operation.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetOperationResponse AWS API Documentation
    #
    class GetOperationResponse < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the service that you want to get settings for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetServiceRequest AWS API Documentation
    #
    class GetServiceRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   A complex type that contains information about the service.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetServiceResponse AWS API Documentation
    #
    class GetServiceResponse < Struct.new(
      :service)
      include Aws::Structure
    end

    # *Public DNS and HTTP namespaces only.* A complex type that contains
    # settings for an optional health check. If you specify settings for a
    # health check, AWS Cloud Map associates the health check with the
    # records that you specify in `DnsConfig`.
    #
    # If you specify a health check configuration, you can specify either
    # `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #
    # Health checks are basic Route 53 health checks that monitor an AWS
    # endpoint. For information about pricing for health checks, see [Amazon
    # Route 53 Pricing][1].
    #
    # Note the following about configuring health checks.
    #
    # **A and AAAA records**
    #
    # If `DnsConfig` includes configurations for both A and AAAA records,
    # AWS Cloud Map creates a health check that uses the IPv4 address to
    # check the health of the resource. If the endpoint that is specified by
    # the IPv4 address is unhealthy, Route 53 considers both the A and AAAA
    # records to be unhealthy.
    #
    # **CNAME records**
    #
    # You can't specify settings for `HealthCheckConfig` when the
    # `DNSConfig` includes `CNAME` for the value of `Type`. If you do, the
    # `CreateService` request will fail with an `InvalidInput` error.
    #
    # **Request interval**
    #
    # A Route 53 health checker in each health-checking region sends a
    # health check request to an endpoint every 30 seconds. On average, your
    # endpoint receives a health check request about every two seconds.
    # However, health checkers don't coordinate with one another, so
    # you'll sometimes see several requests per second followed by a few
    # seconds with no health checks at all.
    #
    # **Health checking regions**
    #
    # Health checkers perform checks from all Route 53 health-checking
    # regions. For a list of the current regions, see [Regions][2].
    #
    # **Alias records**
    #
    # When you register an instance, if you include the `AWS_ALIAS_DNS_NAME`
    # attribute, AWS Cloud Map creates a Route 53 alias record. Note the
    # following:
    #
    # * Route 53 automatically sets `EvaluateTargetHealth` to true for alias
    #   records. When `EvaluateTargetHealth` is true, the alias record
    #   inherits the health of the referenced AWS resource. such as an ELB
    #   load balancer. For more information, see [EvaluateTargetHealth][3].
    #
    # * If you include `HealthCheckConfig` and then use the service to
    #   register an instance that creates an alias record, Route 53 doesn't
    #   create the health check.
    #
    # **Charges for health checks**
    #
    # Health checks are basic Route 53 health checks that monitor an AWS
    # endpoint. For information about pricing for health checks, see [Amazon
    # Route 53 Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/route53/pricing/
    # [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions
    # [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth
    #
    # @note When making an API call, you may pass HealthCheckConfig
    #   data as a hash:
    #
    #       {
    #         type: "HTTP", # required, accepts HTTP, HTTPS, TCP
    #         resource_path: "ResourcePath",
    #         failure_threshold: 1,
    #       }
    #
    # @!attribute [rw] type
    #   The type of health check that you want to create, which indicates
    #   how Route 53 determines whether an endpoint is healthy.
    #
    #   You can't change the value of `Type` after you create a health
    #   check.
    #
    #   You can create the following types of health checks:
    #
    #   * **HTTP**\: Route 53 tries to establish a TCP connection. If
    #     successful, Route 53 submits an HTTP request and waits for an HTTP
    #     status code of 200 or greater and less than 400.
    #
    #   * **HTTPS**\: Route 53 tries to establish a TCP connection. If
    #     successful, Route 53 submits an HTTPS request and waits for an
    #     HTTP status code of 200 or greater and less than 400.
    #
    #     If you specify HTTPS for the value of `Type`, the endpoint must
    #     support TLS v1.0 or later.
    #
    #   * **TCP**\: Route 53 tries to establish a TCP connection.
    #
    #     If you specify `TCP` for `Type`, don't specify a value for
    #     `ResourcePath`.
    #
    #   For more information, see [How Route 53 Determines Whether an
    #   Endpoint Is Healthy][1] in the *Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html
    #   @return [String]
    #
    # @!attribute [rw] resource_path
    #   The path that you want Route 53 to request when performing health
    #   checks. The path can be any value for which your endpoint will
    #   return an HTTP status code of 2xx or 3xx when the endpoint is
    #   healthy, such as the file `/docs/route53-health-check.html`. Route
    #   53 automatically adds the DNS name for the service. If you don't
    #   specify a value for `ResourcePath`, the default value is `/`.
    #
    #   If you specify `TCP` for `Type`, you must *not* specify a value for
    #   `ResourcePath`.
    #   @return [String]
    #
    # @!attribute [rw] failure_threshold
    #   The number of consecutive health checks that an endpoint must pass
    #   or fail for Route 53 to change the current status of the endpoint
    #   from unhealthy to healthy or vice versa. For more information, see
    #   [How Route 53 Determines Whether an Endpoint Is Healthy][1] in the
    #   *Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/HealthCheckConfig AWS API Documentation
    #
    class HealthCheckConfig < Struct.new(
      :type,
      :resource_path,
      :failure_threshold)
      include Aws::Structure
    end

    # A complex type that contains information about an optional custom
    # health check. A custom health check, which requires that you use a
    # third-party health checker to evaluate the health of your resources,
    # is useful in the following circumstances:
    #
    # * You can't use a health check that is defined by `HealthCheckConfig`
    #   because the resource isn't available over the internet. For
    #   example, you can use a custom health check when the instance is in
    #   an Amazon VPC. (To check the health of resources in a VPC, the
    #   health checker must also be in the VPC.)
    #
    # * You want to use a third-party health checker regardless of where
    #   your resources are.
    #
    # If you specify a health check configuration, you can specify either
    # `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #
    # To change the status of a custom health check, submit an
    # `UpdateInstanceCustomHealthStatus` request. AWS Cloud Map doesn't
    # monitor the status of the resource, it just keeps a record of the
    # status specified in the most recent `UpdateInstanceCustomHealthStatus`
    # request.
    #
    # Here's how custom health checks work:
    #
    # 1.  You create a service and specify a value for `FailureThreshold`.
    #
    #     The failure threshold indicates the number of 30-second intervals
    #     you want AWS Cloud Map to wait between the time that your
    #     application sends an [UpdateInstanceCustomHealthStatus][1] request
    #     and the time that AWS Cloud Map stops routing internet traffic to
    #     the corresponding resource.
    #
    # 2.  You register an instance.
    #
    # 3.  You configure a third-party health checker to monitor the resource
    #     that is associated with the new instance.
    #
    #     <note markdown="1"> AWS Cloud Map doesn't check the health of the resource directly.
    #
    #      </note>
    #
    # 4.  The third-party health-checker determines that the resource is
    #     unhealthy and notifies your application.
    #
    # 5.  Your application submits an `UpdateInstanceCustomHealthStatus`
    #     request.
    #
    # 6.  AWS Cloud Map waits for (`FailureThreshold` x 30) seconds.
    #
    # 7.  If another `UpdateInstanceCustomHealthStatus` request doesn't
    #     arrive during that time to change the status back to healthy, AWS
    #     Cloud Map stops routing traffic to the resource.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_UpdateInstanceCustomHealthStatus.html
    #
    # @note When making an API call, you may pass HealthCheckCustomConfig
    #   data as a hash:
    #
    #       {
    #         failure_threshold: 1,
    #       }
    #
    # @!attribute [rw] failure_threshold
    #   The number of 30-second intervals that you want AWS Cloud Map to
    #   wait after receiving an `UpdateInstanceCustomHealthStatus` request
    #   before it changes the health status of a service instance. For
    #   example, suppose you specify a value of `2` for `FailureTheshold`,
    #   and then your application sends an
    #   `UpdateInstanceCustomHealthStatus` request. AWS Cloud Map waits for
    #   approximately 60 seconds (2 x 30) before changing the status of the
    #   service instance based on that request.
    #
    #   Sending a second or subsequent `UpdateInstanceCustomHealthStatus`
    #   request with the same value before `FailureThreshold x 30` seconds
    #   has passed doesn't accelerate the change. AWS Cloud Map still waits
    #   `FailureThreshold x 30` seconds after the first request to make the
    #   change.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/HealthCheckCustomConfig AWS API Documentation
    #
    class HealthCheckCustomConfig < Struct.new(
      :failure_threshold)
      include Aws::Structure
    end

    # In a response to a [DiscoverInstances][1] request,
    # `HttpInstanceSummary` contains information about one instance that
    # matches the values that you specified in the request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html
    #
    # @!attribute [rw] instance_id
    #   The ID of an instance that matches the values that you specified in
    #   the request.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace that you specified when you registered the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service that you specified when you registered the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   If you configured health checking in the service, the current health
    #   status of the service instance.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   If you included any attributes when you registered the instance, the
    #   values of those attributes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/HttpInstanceSummary AWS API Documentation
    #
    class HttpInstanceSummary < Struct.new(
      :instance_id,
      :namespace_name,
      :service_name,
      :health_status,
      :attributes)
      include Aws::Structure
    end

    # A complex type that contains the name of an HTTP namespace.
    #
    # @!attribute [rw] http_name
    #   The name of an HTTP namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/HttpProperties AWS API Documentation
    #
    class HttpProperties < Struct.new(
      :http_name)
      include Aws::Structure
    end

    # A complex type that contains information about an instance that AWS
    # Cloud Map creates when you submit a `RegisterInstance` request.
    #
    # @!attribute [rw] id
    #   An identifier that you want to associate with the instance. Note the
    #   following:
    #
    #   * If the service that is specified by `ServiceId` includes settings
    #     for an SRV record, the value of `InstanceId` is automatically
    #     included as part of the value for the SRV record. For more
    #     information, see [DnsRecord &gt; Type][1].
    #
    #   * You can use this value to update an existing instance.
    #
    #   * To register a new instance, you must specify a value that is
    #     unique among instances that you register by using the same
    #     service.
    #
    #   * If you specify an existing `InstanceId` and `ServiceId`, AWS Cloud
    #     Map updates the existing DNS records. If there's also an existing
    #     health check, AWS Cloud Map deletes the old health check and
    #     creates a new one.
    #
    #     <note markdown="1"> The health check isn't deleted immediately, so it will still
    #     appear for a while if you submit a `ListHealthChecks` request, for
    #     example.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `RegisterInstance` requests to be retried without the risk of
    #   executing the operation twice. You must use a unique
    #   `CreatorRequestId` string every time you submit a `RegisterInstance`
    #   request if you're registering additional instances for the same
    #   namespace and service. `CreatorRequestId` can be any unique string,
    #   for example, a date/time stamp.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A string map that contains the following information for the service
    #   that you specify in `ServiceId`\:
    #
    #   * The attributes that apply to the records that are defined in the
    #     service.
    #
    #   * For each attribute, the applicable value.
    #
    #   Supported attribute keys include the following:
    #
    #   **AWS\_ALIAS\_DNS\_NAME**
    #
    #   ****
    #
    #   If you want AWS Cloud Map to create a Route 53 alias record that
    #   routes traffic to an Elastic Load Balancing load balancer, specify
    #   the DNS name that is associated with the load balancer. For
    #   information about how to get the DNS name, see "DNSName" in the
    #   topic [AliasTarget][1].
    #
    #   Note the following:
    #
    #   * The configuration for the service that is specified by `ServiceId`
    #     must include settings for an A record, an AAAA record, or both.
    #
    #   * In the service that is specified by `ServiceId`, the value of
    #     `RoutingPolicy` must be `WEIGHTED`.
    #
    #   * If the service that is specified by `ServiceId` includes
    #     `HealthCheckConfig` settings, AWS Cloud Map will create the health
    #     check, but it won't associate the health check with the alias
    #     record.
    #
    #   * Auto naming currently doesn't support creating alias records that
    #     route traffic to AWS resources other than ELB load balancers.
    #
    #   * If you specify a value for `AWS_ALIAS_DNS_NAME`, don't specify
    #     values for any of the `AWS_INSTANCE` attributes.
    #
    #   **AWS\_INSTANCE\_CNAME**
    #
    #   If the service configuration includes a CNAME record, the domain
    #   name that you want Route 53 to return in response to DNS queries,
    #   for example, `example.com`.
    #
    #   This value is required if the service specified by `ServiceId`
    #   includes settings for an CNAME record.
    #
    #   **AWS\_INSTANCE\_IPV4**
    #
    #   If the service configuration includes an A record, the IPv4 address
    #   that you want Route 53 to return in response to DNS queries, for
    #   example, `192.0.2.44`.
    #
    #   This value is required if the service specified by `ServiceId`
    #   includes settings for an A record. If the service includes settings
    #   for an SRV record, you must specify a value for `AWS_INSTANCE_IPV4`,
    #   `AWS_INSTANCE_IPV6`, or both.
    #
    #   **AWS\_INSTANCE\_IPV6**
    #
    #   If the service configuration includes an AAAA record, the IPv6
    #   address that you want Route 53 to return in response to DNS queries,
    #   for example, `2001:0db8:85a3:0000:0000:abcd:0001:2345`.
    #
    #   This value is required if the service specified by `ServiceId`
    #   includes settings for an AAAA record. If the service includes
    #   settings for an SRV record, you must specify a value for
    #   `AWS_INSTANCE_IPV4`, `AWS_INSTANCE_IPV6`, or both.
    #
    #   **AWS\_INSTANCE\_PORT**
    #
    #   If the service includes an SRV record, the value that you want Route
    #   53 to return for the port.
    #
    #   If the service includes `HealthCheckConfig`, the port on the
    #   endpoint that you want Route 53 to send requests to.
    #
    #   This value is required if you specified settings for an SRV record
    #   or a Route 53 health check when you created the service.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :id,
      :creator_request_id,
      :attributes)
      include Aws::Structure
    end

    # No instance exists with the specified ID, or the instance was recently
    # registered, and information about the instance hasn't propagated yet.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/InstanceNotFound AWS API Documentation
    #
    class InstanceNotFound < Struct.new(
      :message)
      include Aws::Structure
    end

    # A complex type that contains information about the instances that you
    # registered by using a specified service.
    #
    # @!attribute [rw] id
    #   The ID for an instance that you created by using a specified
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A string map that contains the following information:
    #
    #   * The attributes that are associate with the instance.
    #
    #   * For each attribute, the applicable value.
    #
    #   Supported attribute keys include the following:
    #
    #   * `AWS_ALIAS_DNS_NAME`\: For an alias record that routes traffic to
    #     an Elastic Load Balancing load balancer, the DNS name that is
    #     associated with the load balancer.
    #
    #   * `AWS_INSTANCE_CNAME`\: For a CNAME record, the domain name that
    #     Route 53 returns in response to DNS queries, for example,
    #     `example.com`.
    #
    #   * `AWS_INSTANCE_IPV4`\: For an A record, the IPv4 address that Route
    #     53 returns in response to DNS queries, for example, `192.0.2.44`.
    #
    #   * `AWS_INSTANCE_IPV6`\: For an AAAA record, the IPv6 address that
    #     Route 53 returns in response to DNS queries, for example,
    #     `2001:0db8:85a3:0000:0000:abcd:0001:2345`.
    #
    #   * `AWS_INSTANCE_PORT`\: For an SRV record, the value that Route 53
    #     returns for the port. In addition, if the service includes
    #     `HealthCheckConfig`, the port on the endpoint that Route 53 sends
    #     requests to.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/InstanceSummary AWS API Documentation
    #
    class InstanceSummary < Struct.new(
      :id,
      :attributes)
      include Aws::Structure
    end

    # One or more specified values aren't valid. For example, a required
    # value might be missing, a numeric value might be outside the allowed
    # range, or a string value might exceed length constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/InvalidInput AWS API Documentation
    #
    class InvalidInput < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInstancesRequest
    #   data as a hash:
    #
    #       {
    #         service_id: "ResourceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] service_id
    #   The ID of the service that you want to list instances for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   For the first `ListInstances` request, omit this value.
    #
    #   If more than `MaxResults` instances match the specified criteria,
    #   you can submit another `ListInstances` request to get the next group
    #   of results. Specify the value of `NextToken` from the previous
    #   response in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of instances that you want AWS Cloud Map to
    #   return in the response to a `ListInstances` request. If you don't
    #   specify a value for `MaxResults`, AWS Cloud Map returns up to 100
    #   instances.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListInstancesRequest AWS API Documentation
    #
    class ListInstancesRequest < Struct.new(
      :service_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   Summary information about the instances that are associated with the
    #   specified service.
    #   @return [Array<Types::InstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   If more than `MaxResults` instances match the specified criteria,
    #   you can submit another `ListInstances` request to get the next group
    #   of results. Specify the value of `NextToken` from the previous
    #   response in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListInstancesResponse AWS API Documentation
    #
    class ListInstancesResponse < Struct.new(
      :instances,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNamespacesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "TYPE", # required, accepts TYPE
    #             values: ["FilterValue"], # required
    #             condition: "EQ", # accepts EQ, IN, BETWEEN
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   For the first `ListNamespaces` request, omit this value.
    #
    #   If the response contains `NextToken`, submit another
    #   `ListNamespaces` request to get the next group of results. Specify
    #   the value of `NextToken` from the previous response in the next
    #   request.
    #
    #   <note markdown="1"> AWS Cloud Map gets `MaxResults` namespaces and then filters them
    #   based on the specified criteria. It's possible that no namespaces
    #   in the first `MaxResults` namespaces matched the specified criteria
    #   but that subsequent groups of `MaxResults` namespaces do contain
    #   namespaces that match the criteria.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of namespaces that you want AWS Cloud Map to
    #   return in the response to a `ListNamespaces` request. If you don't
    #   specify a value for `MaxResults`, AWS Cloud Map returns up to 100
    #   namespaces.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   A complex type that contains specifications for the namespaces that
    #   you want to list.
    #
    #   If you specify more than one filter, a namespace must match all
    #   filters to be returned by `ListNamespaces`.
    #   @return [Array<Types::NamespaceFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListNamespacesRequest AWS API Documentation
    #
    class ListNamespacesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] namespaces
    #   An array that contains one `NamespaceSummary` object for each
    #   namespace that matches the specified filter criteria.
    #   @return [Array<Types::NamespaceSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response contains `NextToken`, submit another
    #   `ListNamespaces` request to get the next group of results. Specify
    #   the value of `NextToken` from the previous response in the next
    #   request.
    #
    #   <note markdown="1"> AWS Cloud Map gets `MaxResults` namespaces and then filters them
    #   based on the specified criteria. It's possible that no namespaces
    #   in the first `MaxResults` namespaces matched the specified criteria
    #   but that subsequent groups of `MaxResults` namespaces do contain
    #   namespaces that match the criteria.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListNamespacesResponse AWS API Documentation
    #
    class ListNamespacesResponse < Struct.new(
      :namespaces,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOperationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "NAMESPACE_ID", # required, accepts NAMESPACE_ID, SERVICE_ID, STATUS, TYPE, UPDATE_DATE
    #             values: ["FilterValue"], # required
    #             condition: "EQ", # accepts EQ, IN, BETWEEN
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   For the first `ListOperations` request, omit this value.
    #
    #   If the response contains `NextToken`, submit another
    #   `ListOperations` request to get the next group of results. Specify
    #   the value of `NextToken` from the previous response in the next
    #   request.
    #
    #   <note markdown="1"> AWS Cloud Map gets `MaxResults` operations and then filters them
    #   based on the specified criteria. It's possible that no operations
    #   in the first `MaxResults` operations matched the specified criteria
    #   but that subsequent groups of `MaxResults` operations do contain
    #   operations that match the criteria.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that you want AWS Cloud Map to return in
    #   the response to a `ListOperations` request. If you don't specify a
    #   value for `MaxResults`, AWS Cloud Map returns up to 100 operations.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   A complex type that contains specifications for the operations that
    #   you want to list, for example, operations that you started between a
    #   specified start date and end date.
    #
    #   If you specify more than one filter, an operation must match all
    #   filters to be returned by `ListOperations`.
    #   @return [Array<Types::OperationFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListOperationsRequest AWS API Documentation
    #
    class ListOperationsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   Summary information about the operations that match the specified
    #   criteria.
    #   @return [Array<Types::OperationSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response contains `NextToken`, submit another
    #   `ListOperations` request to get the next group of results. Specify
    #   the value of `NextToken` from the previous response in the next
    #   request.
    #
    #   <note markdown="1"> AWS Cloud Map gets `MaxResults` operations and then filters them
    #   based on the specified criteria. It's possible that no operations
    #   in the first `MaxResults` operations matched the specified criteria
    #   but that subsequent groups of `MaxResults` operations do contain
    #   operations that match the criteria.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListOperationsResponse AWS API Documentation
    #
    class ListOperationsResponse < Struct.new(
      :operations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServicesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "NAMESPACE_ID", # required, accepts NAMESPACE_ID
    #             values: ["FilterValue"], # required
    #             condition: "EQ", # accepts EQ, IN, BETWEEN
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   For the first `ListServices` request, omit this value.
    #
    #   If the response contains `NextToken`, submit another `ListServices`
    #   request to get the next group of results. Specify the value of
    #   `NextToken` from the previous response in the next request.
    #
    #   <note markdown="1"> AWS Cloud Map gets `MaxResults` services and then filters them based
    #   on the specified criteria. It's possible that no services in the
    #   first `MaxResults` services matched the specified criteria but that
    #   subsequent groups of `MaxResults` services do contain services that
    #   match the criteria.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of services that you want AWS Cloud Map to return
    #   in the response to a `ListServices` request. If you don't specify a
    #   value for `MaxResults`, AWS Cloud Map returns up to 100 services.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   A complex type that contains specifications for the namespaces that
    #   you want to list services for.
    #
    #   If you specify more than one filter, an operation must match all
    #   filters to be returned by `ListServices`.
    #   @return [Array<Types::ServiceFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListServicesRequest AWS API Documentation
    #
    class ListServicesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] services
    #   An array that contains one `ServiceSummary` object for each service
    #   that matches the specified filter criteria.
    #   @return [Array<Types::ServiceSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response contains `NextToken`, submit another `ListServices`
    #   request to get the next group of results. Specify the value of
    #   `NextToken` from the previous response in the next request.
    #
    #   <note markdown="1"> AWS Cloud Map gets `MaxResults` services and then filters them based
    #   on the specified criteria. It's possible that no services in the
    #   first `MaxResults` services matched the specified criteria but that
    #   subsequent groups of `MaxResults` services do contain services that
    #   match the criteria.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListServicesResponse AWS API Documentation
    #
    class ListServicesResponse < Struct.new(
      :services,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   retrieve tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags that are assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # A complex type that contains information about a specified namespace.
    #
    # @!attribute [rw] id
    #   The ID of a namespace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the
    #   namespace when you create it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace, such as `example.com`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the namespace. The methods for discovering instances
    #   depends on the value that you specify:
    #
    #   * `HTTP`\: Instances can be discovered only programmatically, using
    #     the AWS Cloud Map `DiscoverInstances` API.
    #
    #   * `DNS_PUBLIC`\: Instances can be discovered using public DNS
    #     queries and using the `DiscoverInstances` API.
    #
    #   * `DNS_PRIVATE`\: Instances can be discovered using DNS queries in
    #     VPCs and using the `DiscoverInstances` API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description that you specify for the namespace when you create
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] service_count
    #   The number of services that are associated with the namespace.
    #   @return [Integer]
    #
    # @!attribute [rw] properties
    #   A complex type that contains information that's specific to the
    #   type of the namespace.
    #   @return [Types::NamespaceProperties]
    #
    # @!attribute [rw] create_date
    #   The date that the namespace was created, in Unix date/time format
    #   and Coordinated Universal Time (UTC). The value of `CreateDate` is
    #   accurate to milliseconds. For example, the value `1516925490.087`
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of executing an operation
    #   twice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/Namespace AWS API Documentation
    #
    class Namespace < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :description,
      :service_count,
      :properties,
      :create_date,
      :creator_request_id)
      include Aws::Structure
    end

    # The namespace that you're trying to create already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   The `CreatorRequestId` that was used to create the namespace.
    #   @return [String]
    #
    # @!attribute [rw] namespace_id
    #   The ID of the existing namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/NamespaceAlreadyExists AWS API Documentation
    #
    class NamespaceAlreadyExists < Struct.new(
      :message,
      :creator_request_id,
      :namespace_id)
      include Aws::Structure
    end

    # A complex type that identifies the namespaces that you want to list.
    # You can choose to list public or private namespaces.
    #
    # @note When making an API call, you may pass NamespaceFilter
    #   data as a hash:
    #
    #       {
    #         name: "TYPE", # required, accepts TYPE
    #         values: ["FilterValue"], # required
    #         condition: "EQ", # accepts EQ, IN, BETWEEN
    #       }
    #
    # @!attribute [rw] name
    #   Specify `TYPE`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   If you specify `EQ` for `Condition`, specify either `DNS_PUBLIC` or
    #   `DNS_PRIVATE`.
    #
    #   If you specify `IN` for `Condition`, you can specify `DNS_PUBLIC`,
    #   `DNS_PRIVATE`, or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] condition
    #   The operator that you want to use to determine whether
    #   `ListNamespaces` returns a namespace. Valid values for `condition`
    #   include:
    #
    #   * `EQ`\: When you specify `EQ` for the condition, you can choose to
    #     list only public namespaces or private namespaces, but not both.
    #     `EQ` is the default condition and can be omitted.
    #
    #   * `IN`\: When you specify `IN` for the condition, you can choose to
    #     list public namespaces, private namespaces, or both.
    #
    #   * `BETWEEN`\: Not applicable
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/NamespaceFilter AWS API Documentation
    #
    class NamespaceFilter < Struct.new(
      :name,
      :values,
      :condition)
      include Aws::Structure
    end

    # No namespace exists with the specified ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/NamespaceNotFound AWS API Documentation
    #
    class NamespaceNotFound < Struct.new(
      :message)
      include Aws::Structure
    end

    # A complex type that contains information that is specific to the
    # namespace type.
    #
    # @!attribute [rw] dns_properties
    #   A complex type that contains the ID for the Route 53 hosted zone
    #   that AWS Cloud Map creates when you create a namespace.
    #   @return [Types::DnsProperties]
    #
    # @!attribute [rw] http_properties
    #   A complex type that contains the name of an HTTP namespace.
    #   @return [Types::HttpProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/NamespaceProperties AWS API Documentation
    #
    class NamespaceProperties < Struct.new(
      :dns_properties,
      :http_properties)
      include Aws::Structure
    end

    # A complex type that contains information about a namespace.
    #
    # @!attribute [rw] id
    #   The ID of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the
    #   namespace when you create it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace. When you create a namespace, AWS Cloud
    #   Map automatically creates a Route 53 hosted zone that has the same
    #   name as the namespace.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the namespace, either public or private.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the namespace.
    #   @return [String]
    #
    # @!attribute [rw] service_count
    #   The number of services that were created using the namespace.
    #   @return [Integer]
    #
    # @!attribute [rw] properties
    #   A complex type that contains information that is specific to the
    #   namespace type.
    #   @return [Types::NamespaceProperties]
    #
    # @!attribute [rw] create_date
    #   The date and time that the namespace was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/NamespaceSummary AWS API Documentation
    #
    class NamespaceSummary < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :description,
      :service_count,
      :properties,
      :create_date)
      include Aws::Structure
    end

    # A complex type that contains information about a specified operation.
    #
    # @!attribute [rw] id
    #   The ID of the operation that you want to get information about.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The name of the operation that is associated with the specified ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the operation. Values include the following:
    #
    #   * **SUBMITTED**\: This is the initial state immediately after you
    #     submit a request.
    #
    #   * **PENDING**\: AWS Cloud Map is performing the operation.
    #
    #   * **SUCCESS**\: The operation succeeded.
    #
    #   * **FAIL**\: The operation failed. For the failure reason, see
    #     `ErrorMessage`.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   If the value of `Status` is `FAIL`, the reason that the operation
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with `ErrorMessage`. Values for `ErrorCode`
    #   include the following:
    #
    #   * `ACCESS_DENIED`
    #
    #   * `CANNOT_CREATE_HOSTED_ZONE`
    #
    #   * `EXPIRED_TOKEN`
    #
    #   * `HOSTED_ZONE_NOT_FOUND`
    #
    #   * `INTERNAL_FAILURE`
    #
    #   * `INVALID_CHANGE_BATCH`
    #
    #   * `THROTTLED_REQUEST`
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the request was submitted, in Unix date/time
    #   format and Coordinated Universal Time (UTC). The value of
    #   `CreateDate` is accurate to milliseconds. For example, the value
    #   `1516925490.087` represents Friday, January 26, 2018 12:11:30.087
    #   AM.
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The date and time that the value of `Status` changed to the current
    #   value, in Unix date/time format and Coordinated Universal Time
    #   (UTC). The value of `UpdateDate` is accurate to milliseconds. For
    #   example, the value `1516925490.087` represents Friday, January 26,
    #   2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] targets
    #   The name of the target entity that is associated with the operation:
    #
    #   * **NAMESPACE**\: The namespace ID is returned in the `ResourceId`
    #     property.
    #
    #   * **SERVICE**\: The service ID is returned in the `ResourceId`
    #     property.
    #
    #   * **INSTANCE**\: The instance ID is returned in the `ResourceId`
    #     property.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/Operation AWS API Documentation
    #
    class Operation < Struct.new(
      :id,
      :type,
      :status,
      :error_message,
      :error_code,
      :create_date,
      :update_date,
      :targets)
      include Aws::Structure
    end

    # A complex type that lets you select the operations that you want to
    # list.
    #
    # @note When making an API call, you may pass OperationFilter
    #   data as a hash:
    #
    #       {
    #         name: "NAMESPACE_ID", # required, accepts NAMESPACE_ID, SERVICE_ID, STATUS, TYPE, UPDATE_DATE
    #         values: ["FilterValue"], # required
    #         condition: "EQ", # accepts EQ, IN, BETWEEN
    #       }
    #
    # @!attribute [rw] name
    #   Specify the operations that you want to get:
    #
    #   * **NAMESPACE\_ID**\: Gets operations related to specified
    #     namespaces.
    #
    #   * **SERVICE\_ID**\: Gets operations related to specified services.
    #
    #   * **STATUS**\: Gets operations based on the status of the
    #     operations: `SUBMITTED`, `PENDING`, `SUCCEED`, or `FAIL`.
    #
    #   * **TYPE**\: Gets specified types of operation.
    #
    #   * **UPDATE\_DATE**\: Gets operations that changed status during a
    #     specified date/time range.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Specify values that are applicable to the value that you specify for
    #   `Name`\:
    #
    #   * **NAMESPACE\_ID**\: Specify one namespace ID.
    #
    #   * **SERVICE\_ID**\: Specify one service ID.
    #
    #   * **STATUS**\: Specify one or more statuses: `SUBMITTED`, `PENDING`,
    #     `SUCCEED`, or `FAIL`.
    #
    #   * **TYPE**\: Specify one or more of the following types:
    #     `CREATE_NAMESPACE`, `DELETE_NAMESPACE`, `UPDATE_SERVICE`,
    #     `REGISTER_INSTANCE`, or `DEREGISTER_INSTANCE`.
    #
    #   * **UPDATE\_DATE**\: Specify a start date and an end date in Unix
    #     date/time format and Coordinated Universal Time (UTC). The start
    #     date must be the first value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] condition
    #   The operator that you want to use to determine whether an operation
    #   matches the specified value. Valid values for condition include:
    #
    #   * `EQ`\: When you specify `EQ` for the condition, you can specify
    #     only one value. `EQ` is supported for `NAMESPACE_ID`,
    #     `SERVICE_ID`, `STATUS`, and `TYPE`. `EQ` is the default condition
    #     and can be omitted.
    #
    #   * `IN`\: When you specify `IN` for the condition, you can specify a
    #     list of one or more values. `IN` is supported for `STATUS` and
    #     `TYPE`. An operation must match one of the specified values to be
    #     returned in the response.
    #
    #   * `BETWEEN`\: Specify a start date and an end date in Unix date/time
    #     format and Coordinated Universal Time (UTC). The start date must
    #     be the first value. `BETWEEN` is supported for `UPDATE_DATE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/OperationFilter AWS API Documentation
    #
    class OperationFilter < Struct.new(
      :name,
      :values,
      :condition)
      include Aws::Structure
    end

    # No operation exists with the specified ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/OperationNotFound AWS API Documentation
    #
    class OperationNotFound < Struct.new(
      :message)
      include Aws::Structure
    end

    # A complex type that contains information about an operation that
    # matches the criteria that you specified in a [ListOperations][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html
    #
    # @!attribute [rw] id
    #   The ID for an operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the operation. Values include the following:
    #
    #   * **SUBMITTED**\: This is the initial state immediately after you
    #     submit a request.
    #
    #   * **PENDING**\: AWS Cloud Map is performing the operation.
    #
    #   * **SUCCESS**\: The operation succeeded.
    #
    #   * **FAIL**\: The operation failed. For the failure reason, see
    #     `ErrorMessage`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/OperationSummary AWS API Documentation
    #
    class OperationSummary < Struct.new(
      :id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterInstanceRequest
    #   data as a hash:
    #
    #       {
    #         service_id: "ResourceId", # required
    #         instance_id: "ResourceId", # required
    #         creator_request_id: "ResourceId",
    #         attributes: { # required
    #           "AttrKey" => "AttrValue",
    #         },
    #       }
    #
    # @!attribute [rw] service_id
    #   The ID of the service that you want to use for settings for the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   An identifier that you want to associate with the instance. Note the
    #   following:
    #
    #   * If the service that is specified by `ServiceId` includes settings
    #     for an SRV record, the value of `InstanceId` is automatically
    #     included as part of the value for the SRV record. For more
    #     information, see [DnsRecord &gt; Type][1].
    #
    #   * You can use this value to update an existing instance.
    #
    #   * To register a new instance, you must specify a value that is
    #     unique among instances that you register by using the same
    #     service.
    #
    #   * If you specify an existing `InstanceId` and `ServiceId`, AWS Cloud
    #     Map updates the existing DNS records, if any. If there's also an
    #     existing health check, AWS Cloud Map deletes the old health check
    #     and creates a new one.
    #
    #     <note markdown="1"> The health check isn't deleted immediately, so it will still
    #     appear for a while if you submit a `ListHealthChecks` request, for
    #     example.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `RegisterInstance` requests to be retried without the risk of
    #   executing the operation twice. You must use a unique
    #   `CreatorRequestId` string every time you submit a `RegisterInstance`
    #   request if you're registering additional instances for the same
    #   namespace and service. `CreatorRequestId` can be any unique string,
    #   for example, a date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A string map that contains the following information for the service
    #   that you specify in `ServiceId`\:
    #
    #   * The attributes that apply to the records that are defined in the
    #     service.
    #
    #   * For each attribute, the applicable value.
    #
    #   Supported attribute keys include the following:
    #
    #   **AWS\_ALIAS\_DNS\_NAME**
    #
    #   ****
    #
    #   If you want AWS Cloud Map to create an Amazon Route 53 alias record
    #   that routes traffic to an Elastic Load Balancing load balancer,
    #   specify the DNS name that is associated with the load balancer. For
    #   information about how to get the DNS name, see "DNSName" in the
    #   topic [AliasTarget][1] in the *Route 53 API Reference*.
    #
    #   Note the following:
    #
    #   * The configuration for the service that is specified by `ServiceId`
    #     must include settings for an A record, an AAAA record, or both.
    #
    #   * In the service that is specified by `ServiceId`, the value of
    #     `RoutingPolicy` must be `WEIGHTED`.
    #
    #   * If the service that is specified by `ServiceId` includes
    #     `HealthCheckConfig` settings, AWS Cloud Map will create the Route
    #     53 health check, but it won't associate the health check with the
    #     alias record.
    #
    #   * Auto naming currently doesn't support creating alias records that
    #     route traffic to AWS resources other than ELB load balancers.
    #
    #   * If you specify a value for `AWS_ALIAS_DNS_NAME`, don't specify
    #     values for any of the `AWS_INSTANCE` attributes.
    #
    #   **AWS\_INIT\_HEALTH\_STATUS**
    #
    #   If the service configuration includes `HealthCheckCustomConfig`, you
    #   can optionally use `AWS_INIT_HEALTH_STATUS` to specify the initial
    #   status of the custom health check, `HEALTHY` or `UNHEALTHY`. If you
    #   don't specify a value for `AWS_INIT_HEALTH_STATUS`, the initial
    #   status is `HEALTHY`.
    #
    #   **AWS\_INSTANCE\_CNAME**
    #
    #   If the service configuration includes a CNAME record, the domain
    #   name that you want Route 53 to return in response to DNS queries,
    #   for example, `example.com`.
    #
    #   This value is required if the service specified by `ServiceId`
    #   includes settings for an CNAME record.
    #
    #   **AWS\_INSTANCE\_IPV4**
    #
    #   If the service configuration includes an A record, the IPv4 address
    #   that you want Route 53 to return in response to DNS queries, for
    #   example, `192.0.2.44`.
    #
    #   This value is required if the service specified by `ServiceId`
    #   includes settings for an A record. If the service includes settings
    #   for an SRV record, you must specify a value for `AWS_INSTANCE_IPV4`,
    #   `AWS_INSTANCE_IPV6`, or both.
    #
    #   **AWS\_INSTANCE\_IPV6**
    #
    #   If the service configuration includes an AAAA record, the IPv6
    #   address that you want Route 53 to return in response to DNS queries,
    #   for example, `2001:0db8:85a3:0000:0000:abcd:0001:2345`.
    #
    #   This value is required if the service specified by `ServiceId`
    #   includes settings for an AAAA record. If the service includes
    #   settings for an SRV record, you must specify a value for
    #   `AWS_INSTANCE_IPV4`, `AWS_INSTANCE_IPV6`, or both.
    #
    #   **AWS\_INSTANCE\_PORT**
    #
    #   If the service includes an SRV record, the value that you want Route
    #   53 to return for the port.
    #
    #   If the service includes `HealthCheckConfig`, the port on the
    #   endpoint that you want Route 53 to send requests to.
    #
    #   This value is required if you specified settings for an SRV record
    #   or a Route 53 health check when you created the service.
    #
    #   **Custom attributes**
    #
    #   You can add up to 30 custom attributes. For each key-value pair, the
    #   maximum length of the attribute name is 255 characters, and the
    #   maximum length of the attribute value is 1,024 characters. Total
    #   size of all provided attributes (sum of all keys and values) must
    #   not exceed 5,000 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/RegisterInstanceRequest AWS API Documentation
    #
    class RegisterInstanceRequest < Struct.new(
      :service_id,
      :instance_id,
      :creator_request_id,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A value that you can use to determine whether the request completed
    #   successfully. To get the status of the operation, see
    #   [GetOperation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/RegisterInstanceResponse AWS API Documentation
    #
    class RegisterInstanceResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # The operation can't be completed because you've reached the limit on
    # the number of requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/RequestLimitExceeded AWS API Documentation
    #
    class RequestLimitExceeded < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified resource can't be deleted because it contains other
    # resources. For example, you can't delete a service that contains any
    # instances.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ResourceInUse AWS API Documentation
    #
    class ResourceInUse < Struct.new(
      :message)
      include Aws::Structure
    end

    # The resource can't be created because you've reached the limit on
    # the number of resources.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ResourceLimitExceeded AWS API Documentation
    #
    class ResourceLimitExceeded < Struct.new(
      :message)
      include Aws::Structure
    end

    # The operation can't be completed because the resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A complex type that contains information about the specified service.
    #
    # @!attribute [rw] id
    #   The ID that AWS Cloud Map assigned to the service when you created
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the
    #   service when you create it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] namespace_id
    #   The ID of the namespace that was used to create the service.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the service.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances that are currently associated with the
    #   service. Instances that were previously associated with the service
    #   but that have been deleted are not included in the count. The count
    #   might not reflect pending registrations and deregistrations.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_config
    #   A complex type that contains information about the Route 53 DNS
    #   records that you want AWS Cloud Map to create when you register an
    #   instance.
    #   @return [Types::DnsConfig]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS and HTTP namespaces only.* A complex type that contains
    #   settings for an optional health check. If you specify settings for a
    #   health check, AWS Cloud Map associates the health check with the
    #   records that you specify in `DnsConfig`.
    #
    #   For information about the charges for health checks, see [Amazon
    #   Route 53 Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing/
    #   @return [Types::HealthCheckConfig]
    #
    # @!attribute [rw] health_check_custom_config
    #   A complex type that contains information about an optional custom
    #   health check.
    #
    #   If you specify a health check configuration, you can specify either
    #   `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #   @return [Types::HealthCheckCustomConfig]
    #
    # @!attribute [rw] create_date
    #   The date and time that the service was created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreateDate` is
    #   accurate to milliseconds. For example, the value `1516925490.087`
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of executing the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/Service AWS API Documentation
    #
    class Service < Struct.new(
      :id,
      :arn,
      :name,
      :namespace_id,
      :description,
      :instance_count,
      :dns_config,
      :health_check_config,
      :health_check_custom_config,
      :create_date,
      :creator_request_id)
      include Aws::Structure
    end

    # The service can't be created because a service with the same name
    # already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   The `CreatorRequestId` that was used to create the service.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The ID of the existing service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ServiceAlreadyExists AWS API Documentation
    #
    class ServiceAlreadyExists < Struct.new(
      :message,
      :creator_request_id,
      :service_id)
      include Aws::Structure
    end

    # A complex type that contains changes to an existing service.
    #
    # @note When making an API call, you may pass ServiceChange
    #   data as a hash:
    #
    #       {
    #         description: "ResourceDescription",
    #         dns_config: {
    #           dns_records: [ # required
    #             {
    #               type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #               ttl: 1, # required
    #             },
    #           ],
    #         },
    #         health_check_config: {
    #           type: "HTTP", # required, accepts HTTP, HTTPS, TCP
    #           resource_path: "ResourcePath",
    #           failure_threshold: 1,
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   A description for the service.
    #   @return [String]
    #
    # @!attribute [rw] dns_config
    #   A complex type that contains information about the Route 53 DNS
    #   records that you want AWS Cloud Map to create when you register an
    #   instance.
    #   @return [Types::DnsConfigChange]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS and HTTP namespaces only.* A complex type that contains
    #   settings for an optional health check. If you specify settings for a
    #   health check, AWS Cloud Map associates the health check with the
    #   records that you specify in `DnsConfig`.
    #
    #   If you specify a health check configuration, you can specify either
    #   `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #
    #   Health checks are basic Route 53 health checks that monitor an AWS
    #   endpoint. For information about pricing for health checks, see
    #   [Amazon Route 53 Pricing][1].
    #
    #   Note the following about configuring health checks.
    #
    #   **A and AAAA records**
    #
    #   If `DnsConfig` includes configurations for both A and AAAA records,
    #   AWS Cloud Map creates a health check that uses the IPv4 address to
    #   check the health of the resource. If the endpoint that is specified
    #   by the IPv4 address is unhealthy, Route 53 considers both the A and
    #   AAAA records to be unhealthy.
    #
    #   **CNAME records**
    #
    #   You can't specify settings for `HealthCheckConfig` when the
    #   `DNSConfig` includes `CNAME` for the value of `Type`. If you do, the
    #   `CreateService` request will fail with an `InvalidInput` error.
    #
    #   **Request interval**
    #
    #   A Route 53 health checker in each health-checking region sends a
    #   health check request to an endpoint every 30 seconds. On average,
    #   your endpoint receives a health check request about every two
    #   seconds. However, health checkers don't coordinate with one
    #   another, so you'll sometimes see several requests per second
    #   followed by a few seconds with no health checks at all.
    #
    #   **Health checking regions**
    #
    #   Health checkers perform checks from all Route 53 health-checking
    #   regions. For a list of the current regions, see [Regions][2].
    #
    #   **Alias records**
    #
    #   When you register an instance, if you include the
    #   `AWS_ALIAS_DNS_NAME` attribute, AWS Cloud Map creates a Route 53
    #   alias record. Note the following:
    #
    #   * Route 53 automatically sets `EvaluateTargetHealth` to true for
    #     alias records. When `EvaluateTargetHealth` is true, the alias
    #     record inherits the health of the referenced AWS resource. such as
    #     an ELB load balancer. For more information, see
    #     [EvaluateTargetHealth][3].
    #
    #   * If you include `HealthCheckConfig` and then use the service to
    #     register an instance that creates an alias record, Route 53
    #     doesn't create the health check.
    #
    #   **Charges for health checks**
    #
    #   Health checks are basic Route 53 health checks that monitor an AWS
    #   endpoint. For information about pricing for health checks, see
    #   [Amazon Route 53 Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing/
    #   [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions
    #   [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth
    #   @return [Types::HealthCheckConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ServiceChange AWS API Documentation
    #
    class ServiceChange < Struct.new(
      :description,
      :dns_config,
      :health_check_config)
      include Aws::Structure
    end

    # A complex type that lets you specify the namespaces that you want to
    # list services for.
    #
    # @note When making an API call, you may pass ServiceFilter
    #   data as a hash:
    #
    #       {
    #         name: "NAMESPACE_ID", # required, accepts NAMESPACE_ID
    #         values: ["FilterValue"], # required
    #         condition: "EQ", # accepts EQ, IN, BETWEEN
    #       }
    #
    # @!attribute [rw] name
    #   Specify `NAMESPACE_ID`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values that are applicable to the value that you specify for
    #   `Condition` to filter the list of services.
    #   @return [Array<String>]
    #
    # @!attribute [rw] condition
    #   The operator that you want to use to determine whether a service is
    #   returned by `ListServices`. Valid values for `Condition` include the
    #   following:
    #
    #   * `EQ`\: When you specify `EQ`, specify one namespace ID for
    #     `Values`. `EQ` is the default condition and can be omitted.
    #
    #   * `IN`\: When you specify `IN`, specify a list of the IDs for the
    #     namespaces that you want `ListServices` to return a list of
    #     services for.
    #
    #   * `BETWEEN`\: Not applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ServiceFilter AWS API Documentation
    #
    class ServiceFilter < Struct.new(
      :name,
      :values,
      :condition)
      include Aws::Structure
    end

    # No service exists with the specified ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ServiceNotFound AWS API Documentation
    #
    class ServiceNotFound < Struct.new(
      :message)
      include Aws::Structure
    end

    # A complex type that contains information about a specified service.
    #
    # @!attribute [rw] id
    #   The ID that AWS Cloud Map assigned to the service when you created
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the
    #   service when you create it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description that you specify when you create the service.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances that are currently associated with the
    #   service. Instances that were previously associated with the service
    #   but that have been deleted are not included in the count. The count
    #   might not reflect pending registrations and deregistrations.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_config
    #   A complex type that contains information about the Amazon Route 53
    #   DNS records that you want AWS Cloud Map to create when you register
    #   an instance.
    #   @return [Types::DnsConfig]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS and HTTP namespaces only.* A complex type that contains
    #   settings for an optional health check. If you specify settings for a
    #   health check, AWS Cloud Map associates the health check with the
    #   records that you specify in `DnsConfig`.
    #
    #   If you specify a health check configuration, you can specify either
    #   `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #
    #   Health checks are basic Route 53 health checks that monitor an AWS
    #   endpoint. For information about pricing for health checks, see
    #   [Amazon Route 53 Pricing][1].
    #
    #   Note the following about configuring health checks.
    #
    #   **A and AAAA records**
    #
    #   If `DnsConfig` includes configurations for both A and AAAA records,
    #   AWS Cloud Map creates a health check that uses the IPv4 address to
    #   check the health of the resource. If the endpoint that is specified
    #   by the IPv4 address is unhealthy, Route 53 considers both the A and
    #   AAAA records to be unhealthy.
    #
    #   **CNAME records**
    #
    #   You can't specify settings for `HealthCheckConfig` when the
    #   `DNSConfig` includes `CNAME` for the value of `Type`. If you do, the
    #   `CreateService` request will fail with an `InvalidInput` error.
    #
    #   **Request interval**
    #
    #   A Route 53 health checker in each health-checking region sends a
    #   health check request to an endpoint every 30 seconds. On average,
    #   your endpoint receives a health check request about every two
    #   seconds. However, health checkers don't coordinate with one
    #   another, so you'll sometimes see several requests per second
    #   followed by a few seconds with no health checks at all.
    #
    #   **Health checking regions**
    #
    #   Health checkers perform checks from all Route 53 health-checking
    #   regions. For a list of the current regions, see [Regions][2].
    #
    #   **Alias records**
    #
    #   When you register an instance, if you include the
    #   `AWS_ALIAS_DNS_NAME` attribute, AWS Cloud Map creates a Route 53
    #   alias record. Note the following:
    #
    #   * Route 53 automatically sets `EvaluateTargetHealth` to true for
    #     alias records. When `EvaluateTargetHealth` is true, the alias
    #     record inherits the health of the referenced AWS resource. such as
    #     an ELB load balancer. For more information, see
    #     [EvaluateTargetHealth][3].
    #
    #   * If you include `HealthCheckConfig` and then use the service to
    #     register an instance that creates an alias record, Route 53
    #     doesn't create the health check.
    #
    #   **Charges for health checks**
    #
    #   Health checks are basic Route 53 health checks that monitor an AWS
    #   endpoint. For information about pricing for health checks, see
    #   [Amazon Route 53 Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing/
    #   [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions
    #   [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth
    #   @return [Types::HealthCheckConfig]
    #
    # @!attribute [rw] health_check_custom_config
    #   A complex type that contains information about an optional custom
    #   health check. A custom health check, which requires that you use a
    #   third-party health checker to evaluate the health of your resources,
    #   is useful in the following circumstances:
    #
    #   * You can't use a health check that is defined by
    #     `HealthCheckConfig` because the resource isn't available over the
    #     internet. For example, you can use a custom health check when the
    #     instance is in an Amazon VPC. (To check the health of resources in
    #     a VPC, the health checker must also be in the VPC.)
    #
    #   * You want to use a third-party health checker regardless of where
    #     your resources are.
    #
    #   If you specify a health check configuration, you can specify either
    #   `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #
    #   To change the status of a custom health check, submit an
    #   `UpdateInstanceCustomHealthStatus` request. AWS Cloud Map doesn't
    #   monitor the status of the resource, it just keeps a record of the
    #   status specified in the most recent
    #   `UpdateInstanceCustomHealthStatus` request.
    #
    #   Here's how custom health checks work:
    #
    #   1.  You create a service and specify a value for `FailureThreshold`.
    #
    #       The failure threshold indicates the number of 30-second
    #       intervals you want AWS Cloud Map to wait between the time that
    #       your application sends an [UpdateInstanceCustomHealthStatus][1]
    #       request and the time that AWS Cloud Map stops routing internet
    #       traffic to the corresponding resource.
    #
    #   2.  You register an instance.
    #
    #   3.  You configure a third-party health checker to monitor the
    #       resource that is associated with the new instance.
    #
    #       <note markdown="1"> AWS Cloud Map doesn't check the health of the resource
    #       directly.
    #
    #        </note>
    #
    #   4.  The third-party health-checker determines that the resource is
    #       unhealthy and notifies your application.
    #
    #   5.  Your application submits an `UpdateInstanceCustomHealthStatus`
    #       request.
    #
    #   6.  AWS Cloud Map waits for (`FailureThreshold` x 30) seconds.
    #
    #   7.  If another `UpdateInstanceCustomHealthStatus` request doesn't
    #       arrive during that time to change the status back to healthy,
    #       AWS Cloud Map stops routing traffic to the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_UpdateInstanceCustomHealthStatus.html
    #   @return [Types::HealthCheckCustomConfig]
    #
    # @!attribute [rw] create_date
    #   The date and time that the service was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ServiceSummary AWS API Documentation
    #
    class ServiceSummary < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :instance_count,
      :dns_config,
      :health_check_config,
      :health_check_custom_config,
      :create_date)
      include Aws::Structure
    end

    # A custom key-value pair associated with a resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key identifier, or name, of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The string value that's associated with the key of the tag. You can
    #   set the value of a tag to an empty string, but you can't set the
    #   value of a tag to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   retrieve tags for.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the specified resource. Specifying the tag key is
    #   required. You can set the value of a tag to an empty string, but you
    #   can't set the value of a tag to null.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The list of tags on the resource is over the limit. The maximum number
    # of tags that can be applied to a resource is 50.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   retrieve tags for.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateInstanceCustomHealthStatusRequest
    #   data as a hash:
    #
    #       {
    #         service_id: "ResourceId", # required
    #         instance_id: "ResourceId", # required
    #         status: "HEALTHY", # required, accepts HEALTHY, UNHEALTHY
    #       }
    #
    # @!attribute [rw] service_id
    #   The ID of the service that includes the configuration for the custom
    #   health check that you want to change the status for.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance that you want to change the health status
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status of the instance, `HEALTHY` or `UNHEALTHY`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateInstanceCustomHealthStatusRequest AWS API Documentation
    #
    class UpdateInstanceCustomHealthStatusRequest < Struct.new(
      :service_id,
      :instance_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #         service: { # required
    #           description: "ResourceDescription",
    #           dns_config: {
    #             dns_records: [ # required
    #               {
    #                 type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #                 ttl: 1, # required
    #               },
    #             ],
    #           },
    #           health_check_config: {
    #             type: "HTTP", # required, accepts HTTP, HTTPS, TCP
    #             resource_path: "ResourcePath",
    #             failure_threshold: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the service that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   A complex type that contains the new settings for the service.
    #   @return [Types::ServiceChange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateServiceRequest AWS API Documentation
    #
    class UpdateServiceRequest < Struct.new(
      :id,
      :service)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A value that you can use to determine whether the request completed
    #   successfully. To get the status of the operation, see
    #   [GetOperation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateServiceResponse AWS API Documentation
    #
    class UpdateServiceResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

  end
end
