# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServiceDiscovery
  module Types

    # @note When making an API call, you may pass CreatePrivateDnsNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         name: "NamespaceName", # required
    #         creator_request_id: "ResourceId",
    #         description: "ResourceDescription",
    #         vpc: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name that you want to assign to this namespace. When you create
    #   a namespace, Amazon Route 53 automatically creates a hosted zone
    #   that has the same name as the namespace.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePrivateDnsNamespaceRequest AWS API Documentation
    #
    class CreatePrivateDnsNamespaceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description,
      :vpc)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A value that you can use to determine whether the request completed
    #   successfully. To get the status of the operation, see GetOperation.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePublicDnsNamespaceRequest AWS API Documentation
    #
    class CreatePublicDnsNamespaceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A value that you can use to determine whether the request completed
    #   successfully. To get the status of the operation, see GetOperation.
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
    #         creator_request_id: "ResourceId",
    #         description: "ResourceDescription",
    #         dns_config: { # required
    #           namespace_id: "ResourceId", # required
    #           routing_policy: "MULTIVALUE", # accepts MULTIVALUE, WEIGHTED
    #           dns_records: [ # required
    #             {
    #               type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #               ttl: 1, # required
    #             },
    #           ],
    #         },
    #         health_check_config: {
    #           type: "HTTP", # accepts HTTP, HTTPS, TCP
    #           resource_path: "ResourcePath",
    #           failure_threshold: 1,
    #         },
    #         health_check_custom_config: {
    #           failure_threshold: 1,
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name that you want to assign to the service.
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
    #   A complex type that contains information about the records that you
    #   want Route 53 to create when you register an instance.
    #   @return [Types::DnsConfig]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS namespaces only.* A complex type that contains settings
    #   for an optional health check. If you specify settings for a health
    #   check, Route 53 associates the health check with all the records
    #   that you specify in `DnsConfig`.
    #
    #   For information about the charges for health checks, see [Route 53
    #   Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing
    #   @return [Types::HealthCheckConfig]
    #
    # @!attribute [rw] health_check_custom_config
    #   @return [Types::HealthCheckCustomConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description,
      :dns_config,
      :health_check_config,
      :health_check_custom_config)
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
    #   successfully. To get the status of the operation, see GetOperation.
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
    #   The value that you specified for `Id` in the RegisterInstance
    #   request.
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
    #   successfully. For more information, see GetOperation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeregisterInstanceResponse AWS API Documentation
    #
    class DeregisterInstanceResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # A complex type that contains information about the records that you
    # want Amazon Route 53 to create when you register an instance.
    #
    # @note When making an API call, you may pass DnsConfig
    #   data as a hash:
    #
    #       {
    #         namespace_id: "ResourceId", # required
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
    #   The routing policy that you want to apply to all records that Route
    #   53 creates when you register an instance and specify this service.
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
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-multivalue
    #   [2]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted
    #   @return [String]
    #
    # @!attribute [rw] dns_records
    #   An array that contains one `DnsRecord` object for each record that
    #   you want Route 53 to create when you register an instance.
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

    # A complex type that contains information about changes to the records
    # that Route 53 creates when you register an instance.
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
    #   An array that contains one `DnsRecord` object for each record that
    #   you want Route 53 to create when you register an instance.
    #   @return [Array<Types::DnsRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsConfigChange AWS API Documentation
    #
    class DnsConfigChange < Struct.new(
      :dns_records)
      include Aws::Structure
    end

    # A complex type that contains the ID for the hosted zone that Route 53
    # creates when you create a namespace.
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID for the hosted zone that Route 53 creates when you create a
    #   namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsProperties AWS API Documentation
    #
    class DnsProperties < Struct.new(
      :hosted_zone_id)
      include Aws::Structure
    end

    # A complex type that contains information about the records that you
    # want Route 53 to create when you register an instance.
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
    #   Route 53 returns in response to DNS queries.
    #
    #   Note the following:
    #
    #   * **A, AAAA, and SRV records: You can specify settings for a maximum
    #     of one A, one AAAA, and one SRV record. You can specify them in
    #     any combination.**
    #
    #   * **CNAME records:** If you specify `CNAME` for `Type`, you can't
    #     define any other records. This is a limitation of DNS—you can't
    #     create a CNAME record and any other type of record that has the
    #     same name as a CNAME record.
    #
    #   * **Alias records:** If you want Route 53 to create an alias record
    #     when you register an instance, specify `A` or `AAAA` for `Type`.
    #
    #   * **All records:** You specify settings other than `TTL` and `Type`
    #     when you register an instance.
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
    #     RegisterInstanceRequest$Attributes.
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
    #     `AWS_INSTANCE_PORT` attribute when you submit a RegisterInstance
    #     request.
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
    #   If you specify settings for an SRV record and if you specify values
    #   for `AWS_INSTANCE_IPV4`, `AWS_INSTANCE_IPV6`, or both in the
    #   `RegisterInstance` request, Route 53 automatically creates `A`
    #   and/or `AAAA` records that have the same name as the value of
    #   `service-hostname` in the SRV record. You can ignore these records.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The amount of time, in seconds, that you want DNS resolvers to cache
    #   the settings for this record.
    #
    #   <note markdown="1"> Alias records don't include a TTL because Route 53 uses the TTL for
    #   the AWS resource that an alias record routes traffic to. If you
    #   include the `AWS_ALIAS_DNS_NAME` attribute when you submit a
    #   RegisterInstance request, the `TTL` value is ignored. Always specify
    #   a TTL for the service; you can use a service to register instances
    #   that create either alias or non-alias records.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsRecord AWS API Documentation
    #
    class DnsRecord < Struct.new(
      :type,
      :ttl)
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
    #   If you omit `Instances`, Amazon Route 53 returns the health status
    #   for all the instances that are associated with the specified
    #   service.
    #
    #   <note markdown="1"> To get the IDs for the instances that you've registered by using a
    #   specified service, submit a ListInstances request.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of instances that you want Route 53 to return in
    #   the response to a `GetInstancesHealthStatus` request. If you don't
    #   specify a value for `MaxResults`, Route 53 returns up to 100
    #   instances.
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

    # *Public DNS namespaces only.* A complex type that contains settings
    # for an optional health check. If you specify settings for a health
    # check, Amazon Route 53 associates the health check with all the
    # records that you specify in `DnsConfig`.
    #
    # **A and AAAA records**
    #
    # If `DnsConfig` includes configurations for both A and AAAA records,
    # Route 53 creates a health check that uses the IPv4 address to check
    # the health of the resource. If the endpoint that is specified by the
    # IPv4 address is unhealthy, Route 53 considers both the A and AAAA
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
    # The health check uses 30 seconds as the request interval. This is the
    # number of seconds between the time that each Route 53 health checker
    # gets a response from your endpoint and the time that it sends the next
    # health check request. A health checker in each data center around the
    # world sends your endpoint a health check request every 30 seconds. On
    # average, your endpoint receives a health check request about every two
    # seconds. Health checkers in different data centers don't coordinate
    # with one another, so you'll sometimes see several requests per second
    # followed by a few seconds with no health checks at all.
    #
    # **Health checking regions**
    #
    # Health checkers perform checks from all Route 53 health-checking
    # regions. For a list of the current regions, see [Regions][1].
    #
    # **Alias records**
    #
    # When you register an instance, if you include the `AWS_ALIAS_DNS_NAME`
    # attribute, Route 53 creates an alias record. Note the following:
    #
    # * Route 53 automatically sets `EvaluateTargetHealth` to true for alias
    #   records. When `EvaluateTargetHealth` is true, the alias record
    #   inherits the health of the referenced AWS resource. such as an ELB
    #   load balancer. For more information, see [EvaluateTargetHealth][2].
    #
    # * If you include `HealthCheckConfig` and then use the service to
    #   register an instance that creates an alias record, Route 53 doesn't
    #   create the health check.
    #
    # For information about the charges for health checks, see [Route 53
    # Pricing][3].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions
    # [2]: http://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth
    # [3]: http://aws.amazon.com/route53/pricing
    #
    # @note When making an API call, you may pass HealthCheckConfig
    #   data as a hash:
    #
    #       {
    #         type: "HTTP", # accepts HTTP, HTTPS, TCP
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
    #   For more information, see [How Route 53 Determines Whether an
    #   Endpoint Is Healthy][1] in the *Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html
    #   @return [String]
    #
    # @!attribute [rw] resource_path
    #   The path that you want Route 53 to request when performing health
    #   checks. The path can be any value for which your endpoint will
    #   return an HTTP status code of 2xx or 3xx when the endpoint is
    #   healthy, such as the file `/docs/route53-health-check.html`. Route
    #   53 automatically adds the DNS name for the service and a leading
    #   forward slash (`/`) character.
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
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html
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

    # @note When making an API call, you may pass HealthCheckCustomConfig
    #   data as a hash:
    #
    #       {
    #         failure_threshold: 1,
    #       }
    #
    # @!attribute [rw] failure_threshold
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/HealthCheckCustomConfig AWS API Documentation
    #
    class HealthCheckCustomConfig < Struct.new(
      :failure_threshold)
      include Aws::Structure
    end

    # A complex type that contains information about an instance that Amazon
    # Route 53 creates when you submit a `RegisterInstance` request.
    #
    # @!attribute [rw] id
    #   An identifier that you want to associate with the instance. Note the
    #   following:
    #
    #   * If the service that is specified by `ServiceId` includes settings
    #     for an SRV record, the value of `InstanceId` is automatically
    #     included as part of the value for the SRV record. For more
    #     information, see DnsRecord$Type.
    #
    #   * You can use this value to update an existing instance.
    #
    #   * To register a new instance, you must specify a value that is
    #     unique among instances that you register by using the same
    #     service.
    #
    #   * If you specify an existing `InstanceId` and `ServiceId`, Route 53
    #     updates the existing records. If there's also an existing health
    #     check, Route 53 deletes the old health check and creates a new
    #     one.
    #
    #     <note markdown="1"> The health check isn't deleted immediately, so it will still
    #     appear for a while if you submit a `ListHealthChecks` request, for
    #     example.
    #
    #      </note>
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
    #   If you want Route 53 to create an alias record that routes traffic
    #   to an Elastic Load Balancing load balancer, specify the DNS name
    #   that is associated with the load balancer. For information about how
    #   to get the DNS name, see "DNSName" in the topic [AliasTarget][1].
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
    #     `HealthCheckConfig` settings, Route 53 will create the health
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
    #   when you created the service.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/http:/docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html
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
    #   The maximum number of instances that you want Amazon Route 53 to
    #   return in the response to a `ListInstances` request. If you don't
    #   specify a value for `MaxResults`, Route 53 returns up to 100
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
    #   <note markdown="1"> Route 53 gets `MaxResults` namespaces and then filters them based on
    #   the specified criteria. It's possible that no namespaces in the
    #   first `MaxResults` namespaces matched the specified criteria but
    #   that subsequent groups of `MaxResults` namespaces do contain
    #   namespaces that match the criteria.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of namespaces that you want Amazon Route 53 to
    #   return in the response to a `ListNamespaces` request. If you don't
    #   specify a value for `MaxResults`, Route 53 returns up to 100
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
    #   <note markdown="1"> Route 53 gets `MaxResults` namespaces and then filters them based on
    #   the specified criteria. It's possible that no namespaces in the
    #   first `MaxResults` namespaces matched the specified criteria but
    #   that subsequent groups of `MaxResults` namespaces do contain
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
    #   <note markdown="1"> Route 53 gets `MaxResults` operations and then filters them based on
    #   the specified criteria. It's possible that no operations in the
    #   first `MaxResults` operations matched the specified criteria but
    #   that subsequent groups of `MaxResults` operations do contain
    #   operations that match the criteria.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that you want Amazon Route 53 to return
    #   in the response to a `ListOperations` request. If you don't specify
    #   a value for `MaxResults`, Route 53 returns up to 100 operations.
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
    #   <note markdown="1"> Route 53 gets `MaxResults` operations and then filters them based on
    #   the specified criteria. It's possible that no operations in the
    #   first `MaxResults` operations matched the specified criteria but
    #   that subsequent groups of `MaxResults` operations do contain
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
    #   <note markdown="1"> Route 53 gets `MaxResults` services and then filters them based on
    #   the specified criteria. It's possible that no services in the first
    #   `MaxResults` services matched the specified criteria but that
    #   subsequent groups of `MaxResults` services do contain services that
    #   match the criteria.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of services that you want Amazon Route 53 to
    #   return in the response to a `ListServices` request. If you don't
    #   specify a value for `MaxResults`, Route 53 returns up to 100
    #   services.
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
    #   <note markdown="1"> Route 53 gets `MaxResults` services and then filters them based on
    #   the specified criteria. It's possible that no services in the first
    #   `MaxResults` services matched the specified criteria but that
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

    # A complex type that contains information about a specified namespace.
    #
    # @!attribute [rw] id
    #   The ID of a namespace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that Route 53 assigns to the
    #   namespace when you create it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace, such as `example.com`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the namespace. Valid values are `DNS_PUBLIC` and
    #   `DNS_PRIVATE`.
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

    # A complex type that contains information that is specific to the
    # namespace type.
    #
    # @!attribute [rw] dns_properties
    #   A complex type that contains the ID for the hosted zone that Route
    #   53 creates when you create a namespace.
    #   @return [Types::DnsProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/NamespaceProperties AWS API Documentation
    #
    class NamespaceProperties < Struct.new(
      :dns_properties)
      include Aws::Structure
    end

    # A complex type that contains information about a namespace.
    #
    # @!attribute [rw] id
    #   The ID of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that Route 53 assigns to the
    #   namespace when you create it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace. When you create a namespace, Route 53
    #   automatically creates a hosted zone that has the same name as the
    #   namespace.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the namespace, either public or private.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/NamespaceSummary AWS API Documentation
    #
    class NamespaceSummary < Struct.new(
      :id,
      :arn,
      :name,
      :type)
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
    #   * **PENDING**\: Route 53 is performing the operation.
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

    # A complex type that contains information about an operation that
    # matches the criteria that you specified in a ListOperations request.
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
    #   * **PENDING**\: Route 53 is performing the operation.
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
    #   records and health check that Route 53 will create.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   An identifier that you want to associate with the instance. Note the
    #   following:
    #
    #   * If the service that is specified by `ServiceId` includes settings
    #     for an SRV record, the value of `InstanceId` is automatically
    #     included as part of the value for the SRV record. For more
    #     information, see DnsRecord$Type.
    #
    #   * You can use this value to update an existing instance.
    #
    #   * To register a new instance, you must specify a value that is
    #     unique among instances that you register by using the same
    #     service.
    #
    #   * If you specify an existing `InstanceId` and `ServiceId`, Route 53
    #     updates the existing records. If there's also an existing health
    #     check, Route 53 deletes the old health check and creates a new
    #     one.
    #
    #     <note markdown="1"> The health check isn't deleted immediately, so it will still
    #     appear for a while if you submit a `ListHealthChecks` request, for
    #     example.
    #
    #      </note>
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
    #   If you want Route 53 to create an alias record that routes traffic
    #   to an Elastic Load Balancing load balancer, specify the DNS name
    #   that is associated with the load balancer. For information about how
    #   to get the DNS name, see "DNSName" in the topic [AliasTarget][1].
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
    #     `HealthCheckConfig` settings, Route 53 will create the health
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
    #   when you created the service.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/http:/docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html
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
    #   successfully. To get the status of the operation, see GetOperation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/RegisterInstanceResponse AWS API Documentation
    #
    class RegisterInstanceResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # A complex type that contains information about the specified service.
    #
    # @!attribute [rw] id
    #   The ID that Route 53 assigned to the service when you created it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that Route 53 assigns to the service
    #   when you create it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the service.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances that are currently associated with the
    #   service. Instances that were previously associated with the service
    #   but that have been deleted are not included in the count.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_config
    #   A complex type that contains information about the records that you
    #   want Route 53 to create when you register an instance.
    #   @return [Types::DnsConfig]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS namespaces only.* A complex type that contains settings
    #   for an optional health check. If you specify settings for a health
    #   check, Route 53 associates the health check with all the records
    #   that you specify in `DnsConfig`.
    #
    #   For information about the charges for health checks, see [Route 53
    #   Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing
    #   @return [Types::HealthCheckConfig]
    #
    # @!attribute [rw] health_check_custom_config
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
      :description,
      :instance_count,
      :dns_config,
      :health_check_config,
      :health_check_custom_config,
      :create_date,
      :creator_request_id)
      include Aws::Structure
    end

    # A complex type that contains changes to an existing service.
    #
    # @note When making an API call, you may pass ServiceChange
    #   data as a hash:
    #
    #       {
    #         description: "ResourceDescription",
    #         dns_config: { # required
    #           dns_records: [ # required
    #             {
    #               type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #               ttl: 1, # required
    #             },
    #           ],
    #         },
    #         health_check_config: {
    #           type: "HTTP", # accepts HTTP, HTTPS, TCP
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
    #   A complex type that contains information about the records that you
    #   want Route 53 to create when you register an instance.
    #   @return [Types::DnsConfigChange]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS namespaces only.* A complex type that contains settings
    #   for an optional health check. If you specify settings for a health
    #   check, Amazon Route 53 associates the health check with all the
    #   records that you specify in `DnsConfig`.
    #
    #   **A and AAAA records**
    #
    #   If `DnsConfig` includes configurations for both A and AAAA records,
    #   Route 53 creates a health check that uses the IPv4 address to check
    #   the health of the resource. If the endpoint that is specified by the
    #   IPv4 address is unhealthy, Route 53 considers both the A and AAAA
    #   records to be unhealthy.
    #
    #   **CNAME records**
    #
    #   You can't specify settings for `HealthCheckConfig` when the
    #   `DNSConfig` includes `CNAME` for the value of `Type`. If you do, the
    #   `CreateService` request will fail with an `InvalidInput` error.
    #
    #   **Request interval**
    #
    #   The health check uses 30 seconds as the request interval. This is
    #   the number of seconds between the time that each Route 53 health
    #   checker gets a response from your endpoint and the time that it
    #   sends the next health check request. A health checker in each data
    #   center around the world sends your endpoint a health check request
    #   every 30 seconds. On average, your endpoint receives a health check
    #   request about every two seconds. Health checkers in different data
    #   centers don't coordinate with one another, so you'll sometimes see
    #   several requests per second followed by a few seconds with no health
    #   checks at all.
    #
    #   **Health checking regions**
    #
    #   Health checkers perform checks from all Route 53 health-checking
    #   regions. For a list of the current regions, see [Regions][1].
    #
    #   **Alias records**
    #
    #   When you register an instance, if you include the
    #   `AWS_ALIAS_DNS_NAME` attribute, Route 53 creates an alias record.
    #   Note the following:
    #
    #   * Route 53 automatically sets `EvaluateTargetHealth` to true for
    #     alias records. When `EvaluateTargetHealth` is true, the alias
    #     record inherits the health of the referenced AWS resource. such as
    #     an ELB load balancer. For more information, see
    #     [EvaluateTargetHealth][2].
    #
    #   * If you include `HealthCheckConfig` and then use the service to
    #     register an instance that creates an alias record, Route 53
    #     doesn't create the health check.
    #
    #   For information about the charges for health checks, see [Route 53
    #   Pricing][3].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions
    #   [2]: http://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth
    #   [3]: http://aws.amazon.com/route53/pricing
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

    # A complex type that contains information about a specified service.
    #
    # @!attribute [rw] id
    #   The ID that Route 53 assigned to the service when you created it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that Route 53 assigns to the service
    #   when you create it.
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
    #   but that have been deleted are not included in the count.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ServiceSummary AWS API Documentation
    #
    class ServiceSummary < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :instance_count)
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   @return [String]
    #
    # @!attribute [rw] status
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
    #           dns_config: { # required
    #             dns_records: [ # required
    #               {
    #                 type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #                 ttl: 1, # required
    #               },
    #             ],
    #           },
    #           health_check_config: {
    #             type: "HTTP", # accepts HTTP, HTTPS, TCP
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
    #   successfully. To get the status of the operation, see GetOperation.
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
