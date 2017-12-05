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
    #   An optional parameter that you can use to resolve concurrent
    #   creation requests. `CreatorRequestId` helps to determine if a
    #   specific client owns the namespace.
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
    #   An optional parameter that you can use to resolve concurrent
    #   creation requests. `CreatorRequestId` helps to determine if a
    #   specific client owns the namespace.
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
    #           dns_records: [ # required
    #             {
    #               type: "SRV", # required, accepts SRV, A, AAAA
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
    # @!attribute [rw] name
    #   The name that you want to assign to the service.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   An optional parameter that you can use to resolve concurrent
    #   creation requests. `CreatorRequestId` helps to determine if a
    #   specific client owns the namespace.
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
    #   A complex type that contains information about the resource record
    #   sets that you want Amazon Route 53 to create when you register an
    #   instance.
    #   @return [Types::DnsConfig]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS namespaces only.* A complex type that contains settings
    #   for an optional health check. If you specify settings for a health
    #   check, Amazon Route 53 associates the health check with all the
    #   resource record sets that you specify in `DnsConfig`.
    #
    #   <note markdown="1"> The health check uses 30 seconds as the request interval. This is
    #   the number of seconds between the time that each Amazon Route 53
    #   health checker gets a response from your endpoint and the time that
    #   it sends the next health check request. A health checker in each
    #   data center around the world sends your endpoint a health check
    #   request every 30 seconds. On average, your endpoint receives a
    #   health check request about every two seconds. Health checkers in
    #   different data centers don't coordinate with one another, so
    #   you'll sometimes see several requests per second followed by a few
    #   seconds with no health checks at all.
    #
    #    </note>
    #
    #   For information about the charges for health checks, see [Amazon
    #   Route 53 Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing
    #   @return [Types::HealthCheckConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description,
      :dns_config,
      :health_check_config)
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

    # A complex type that contains information about the resource record
    # sets that you want Amazon Route 53 to create when you register an
    # instance.
    #
    # @note When making an API call, you may pass DnsConfig
    #   data as a hash:
    #
    #       {
    #         namespace_id: "ResourceId", # required
    #         dns_records: [ # required
    #           {
    #             type: "SRV", # required, accepts SRV, A, AAAA
    #             ttl: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] namespace_id
    #   The ID of the namespace to use for DNS configuration.
    #   @return [String]
    #
    # @!attribute [rw] dns_records
    #   An array that contains one `DnsRecord` object for each resource
    #   record set that you want Amazon Route 53 to create when you register
    #   an instance.
    #   @return [Array<Types::DnsRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsConfig AWS API Documentation
    #
    class DnsConfig < Struct.new(
      :namespace_id,
      :dns_records)
      include Aws::Structure
    end

    # A complex type that contains information about changes to the resource
    # record sets that Amazon Route 53 creates when you register an
    # instance.
    #
    # @note When making an API call, you may pass DnsConfigChange
    #   data as a hash:
    #
    #       {
    #         dns_records: [ # required
    #           {
    #             type: "SRV", # required, accepts SRV, A, AAAA
    #             ttl: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dns_records
    #   An array that contains one `DnsRecord` object for each resource
    #   record set that you want Amazon Route 53 to create when you register
    #   an instance.
    #   @return [Array<Types::DnsRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsConfigChange AWS API Documentation
    #
    class DnsConfigChange < Struct.new(
      :dns_records)
      include Aws::Structure
    end

    # A complex type that contains the ID for the hosted zone that Amazon
    # Route 53 creates when you create a namespace.
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID for the hosted zone that Amazon Route 53 creates when you
    #   create a namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DnsProperties AWS API Documentation
    #
    class DnsProperties < Struct.new(
      :hosted_zone_id)
      include Aws::Structure
    end

    # A complex type that contains information about the resource record
    # sets that you want Amazon Route 53 to create when you register an
    # instance.
    #
    # @note When making an API call, you may pass DnsRecord
    #   data as a hash:
    #
    #       {
    #         type: "SRV", # required, accepts SRV, A, AAAA
    #         ttl: 1, # required
    #       }
    #
    # @!attribute [rw] type
    #   The type of the resource, which indicates the value that Amazon
    #   Route 53 returns in response to DNS queries. The following values
    #   are supported:
    #
    #   * **A**\: Amazon Route 53 returns the IP address of the resource in
    #     IPv4 format, such as 192.0.2.44.
    #
    #   * **AAAA**\: Amazon Route 53 returns the IP address of the resource
    #     in IPv6 format, such as 2001:0db8:85a3:0000:0000:abcd:0001:2345.
    #
    #   * **SRV**\: Amazon Route 53 returns the value for an SRV record. The
    #     value for an SRV record uses the following template, which can't
    #     be changed:
    #
    #     `priority weight port resource-record-set-name`
    #
    #     The values of `priority` and `weight` are both set to 1. The value
    #     of port comes from the value that you specify for `Port` when you
    #     submit a RegisterInstance request.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The amount of time, in seconds, that you want DNS resolvers to cache
    #   the settings for this resource record set.
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
    #   get the health status for. To get the IDs for the instances that
    #   you've created by using a specified service, submit a ListInstances
    #   request.
    #
    #   If you omit `Instances`, Amazon Route 53 returns the health status
    #   for all the instances that are associated with the specified
    #   service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of instances that you want Amazon Route 53 to
    #   return in the response to a `GetInstancesHealthStatus` request. If
    #   you don't specify a value for `MaxResults`, Amazon Route 53 returns
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

    # *Public DNS namespaces only.* A complex type that contains settings
    # for an optional health check. If you specify settings for a health
    # check, Amazon Route 53 associates the health check with all the
    # resource record sets that you specify in `DnsConfig`.
    #
    # <note markdown="1"> The health check uses 30 seconds as the request interval. This is the
    # number of seconds between the time that each Amazon Route 53 health
    # checker gets a response from your endpoint and the time that it sends
    # the next health check request. A health checker in each data center
    # around the world sends your endpoint a health check request every 30
    # seconds. On average, your endpoint receives a health check request
    # about every two seconds. Health checkers in different data centers
    # don't coordinate with one another, so you'll sometimes see several
    # requests per second followed by a few seconds with no health checks at
    # all.
    #
    #  </note>
    #
    # For information about the charges for health checks, see [Amazon Route
    # 53 Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/route53/pricing
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
    #   how Amazon Route 53 determines whether an endpoint is healthy.
    #
    #   You can't change the value of `Type` after you create a health
    #   check.
    #
    #   You can create the following types of health checks:
    #
    #   * **HTTP**\: Amazon Route 53 tries to establish a TCP connection. If
    #     successful, Amazon Route 53 submits an HTTP request and waits for
    #     an HTTP status code of 200 or greater and less than 400.
    #
    #   * **HTTPS**\: Amazon Route 53 tries to establish a TCP connection.
    #     If successful, Amazon Route 53 submits an HTTPS request and waits
    #     for an HTTP status code of 200 or greater and less than 400.
    #
    #     If you specify HTTPS for the value of `Type`, the endpoint must
    #     support TLS v1.0 or later.
    #
    #   * **TCP**\: Amazon Route 53 tries to establish a TCP connection.
    #
    #   For more information, see [How Amazon Route 53 Determines Whether an
    #   Endpoint Is Healthy][1] in the *Amazon Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html
    #   @return [String]
    #
    # @!attribute [rw] resource_path
    #   The path that you want Amazon Route 53 to request when performing
    #   health checks. The path can be any value for which your endpoint
    #   will return an HTTP status code of 2xx or 3xx when the endpoint is
    #   healthy, such as the file `/docs/route53-health-check.html`. Amazon
    #   Route 53 automatically adds the DNS name for the service and a
    #   leading forward slash (`/`) character.
    #   @return [String]
    #
    # @!attribute [rw] failure_threshold
    #   The number of consecutive health checks that an endpoint must pass
    #   or fail for Amazon Route 53 to change the current status of the
    #   endpoint from unhealthy to healthy or vice versa. For more
    #   information, see [How Amazon Route 53 Determines Whether an Endpoint
    #   Is Healthy][1] in the *Amazon Route 53 Developer Guide*.
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

    # A complex type that contains information about an instance that Amazon
    # Route 53 creates when you submit a `RegisterInstance` request.
    #
    # @!attribute [rw] id
    #   An identifier that you want to associate with the instance. Note the
    #   following:
    #
    #   * You can use this value to update an existing instance.
    #
    #   * To associate a new instance, you must specify a value that is
    #     unique among instances that you associate by using the same
    #     service.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   An optional parameter that you can use to resolve concurrent
    #   creation requests. `CreatorRequestId` helps to determine if a
    #   specific client owns the namespace.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A string map that contains attribute keys and values. Supported
    #   attribute keys include the following:
    #
    #   * `AWS_INSTANCE_PORT`\: The port on the endpoint that you want
    #     Amazon Route 53 to perform health checks on. This value is also
    #     used for the port value in an SRV record if the service that you
    #     specify includes an SRV record. For more information, see
    #     CreateService.
    #
    #   * `AWS_INSTANCE_IP`\: If the service that you specify contains a
    #     resource record set template for an A or AAAA record, the IP
    #     address that you want Amazon Route 53 to use for the value of the
    #     A record.
    #
    #   * `AWS_INSTANCE_WEIGHT`\: The weight value in an SRV record if the
    #     service that you specify includes an SRV record. You can also
    #     specify a default weight that is applied to all instances in the
    #     `Service` configuration. For more information, see CreateService.
    #
    #   * `AWS_INSTANCE_PRIORITY`\: The priority value in an SRV record if
    #     the service that you specify includes an SRV record.
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
    # created by using a specified service.
    #
    # @!attribute [rw] id
    #   The ID for an instance that you created by using a specified
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A string map that contain attribute keys and values for an instance.
    #   Supported attribute keys include the following:
    #
    #   * `AWS_INSTANCE_PORT`\: The port on the endpoint that you want
    #     Amazon Route 53 to perform health checks on. This value is also
    #     used for the port value in an SRV record if the service that you
    #     specify includes an SRV record. For more information, see
    #     CreateService.
    #
    #   * `AWS_INSTANCE_IP`\: If the service that you specify contains a
    #     resource record set template for an A or AAAA record, the IP
    #     address that you want Amazon Route 53 to use for the value of the
    #     A record.
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
    #   specify a value for `MaxResults`, Amazon Route 53 returns up to 100
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
    #   If more than `MaxResults` namespaces match the specified criteria,
    #   you can submit another `ListNamespaces` request to get the next
    #   group of results. Specify the value of `NextToken` from the previous
    #   response in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of namespaces that you want Amazon Route 53 to
    #   return in the response to a `ListNamespaces` request. If you don't
    #   specify a value for `MaxResults`, Amazon Route 53 returns up to 100
    #   namespaces.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   A complex type that contains specifications for the namespaces that
    #   you want to list.
    #
    #   If you specify more than one filter, an operation must match all
    #   filters to be returned by ListNamespaces.
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
    #   If more than `MaxResults` namespaces match the specified criteria,
    #   you can submit another `ListNamespaces` request to get the next
    #   group of results. Specify the value of `NextToken` from the previous
    #   response in the next request.
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
    #   If more than `MaxResults` operations match the specified criteria,
    #   you can submit another `ListOperations` request to get the next
    #   group of results. Specify the value of `NextToken` from the previous
    #   response in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that you want Amazon Route 53 to return
    #   in the response to a `ListOperations` request. If you don't specify
    #   a value for `MaxResults`, Amazon Route 53 returns up to 100
    #   operations.
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
    #   If more than `MaxResults` operations match the specified criteria,
    #   you can submit another `ListOperations` request to get the next
    #   group of results. Specify the value of `NextToken` from the previous
    #   response in the next request.
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
    #   If more than `MaxResults` services match the specified criteria, you
    #   can submit another `ListServices` request to get the next group of
    #   results. Specify the value of `NextToken` from the previous response
    #   in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of services that you want Amazon Route 53 to
    #   return in the response to a `ListServices` request. If you don't
    #   specify a value for `MaxResults`, Amazon Route 53 returns up to 100
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
    #   If more than `MaxResults` operations match the specified criteria,
    #   the value of `NextToken` is the first service in the next group of
    #   services that were created by the current AWS account. To get the
    #   next group, specify the value of `NextToken` from the previous
    #   response in the next request.
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
    #   The Amazon Resource Name (ARN) that Amazon Route 53 assigns to the
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
    #   and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] creator_request_id
    #   An optional parameter that you can use to resolve concurrent
    #   creation requests. `CreatorRequestId` helps to determine if a
    #   specific client owns the namespace.
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
    #   A complex type that contains the ID for the hosted zone that Amazon
    #   Route 53 creates when you create a namespace.
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
    #   The Amazon Resource Name (ARN) that Amazon Route 53 assigns to the
    #   namespace when you create it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace. When you create a namespace, Amazon Route
    #   53 automatically creates a hosted zone that has the same name as the
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
    #   * **PENDING**\: Amazon Route 53 is performing the operation.
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
    #   The code associated with `ErrorMessage`.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the request was submitted, in Unix date/time
    #   format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The date and time that the value of `Status` changed to the current
    #   value, in Unix date/time format and Coordinated Universal Time
    #   (UTC).
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
    #   * `BETWEEN`\: Specify two values, a start date and an end date. The
    #     start date must be the first value. `BETWEEN` is supported for
    #     `U`.
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
    #   * **PENDING**\: Amazon Route 53 is performing the operation.
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
    #   resource record sets and health check that Amazon Route 53 will
    #   create.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   An identifier that you want to associate with the instance. Note the
    #   following:
    #
    #   * You can use this value to update an existing instance.
    #
    #   * To register a new instance, you must specify a value that is
    #     unique among instances that you register by using the same
    #     service.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   An optional parameter that you can use to resolve concurrent
    #   creation requests. `CreatorRequestId` helps to determine if a
    #   specific client owns the namespace.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A string map that contain attribute keys and values. Supported
    #   attribute keys include the following:
    #
    #   * `AWS_INSTANCE_PORT`\: The port on the endpoint that you want
    #     Amazon Route 53 to perform health checks on. This value is also
    #     used for the port value in an SRV record if the service that you
    #     specify includes an SRV record. For more information, see
    #     CreateService.
    #
    #   * `AWS_INSTANCE_IPV4`\: If the service that you specify contains a
    #     resource record set template for an A record, the IPv4 address
    #     that you want Amazon Route 53 to use for the value of the A
    #     record.
    #
    #   * `AWS_INSTANCE_IPV6`\: If the service that you specify contains a
    #     resource record set template for an AAAA record, the IPv6 address
    #     that you want Amazon Route 53 to use for the value of the AAAA
    #     record.
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
    #   The ID that Amazon Route 53 assigned to the service when you created
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that Amazon Route 53 assigns to the
    #   service when you create it.
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
    #   A complex type that contains information about the resource record
    #   sets that you want Amazon Route 53 to create when you register an
    #   instance.
    #   @return [Types::DnsConfig]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS namespaces only.* A complex type that contains settings
    #   for an optional health check. If you specify settings for a health
    #   check, Amazon Route 53 associates the health check with all the
    #   resource record sets that you specify in `DnsConfig`.
    #
    #   <note markdown="1"> The health check uses 30 seconds as the request interval. This is
    #   the number of seconds between the time that each Amazon Route 53
    #   health checker gets a response from your endpoint and the time that
    #   it sends the next health check request. A health checker in each
    #   data center around the world sends your endpoint a health check
    #   request every 30 seconds. On average, your endpoint receives a
    #   health check request about every two seconds. Health checkers in
    #   different data centers don't coordinate with one another, so
    #   you'll sometimes see several requests per second followed by a few
    #   seconds with no health checks at all.
    #
    #    </note>
    #
    #   For information about the charges for health checks, see [Amazon
    #   Route 53 Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing
    #   @return [Types::HealthCheckConfig]
    #
    # @!attribute [rw] create_date
    #   The date and time that the service was created, in Unix format and
    #   Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] creator_request_id
    #   An optional parameter that you can use to resolve concurrent
    #   creation requests. `CreatorRequestId` helps to determine if a
    #   specific client owns the namespace.
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
    #               type: "SRV", # required, accepts SRV, A, AAAA
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
    #   A complex type that contains information about the resource record
    #   sets that you want Amazon Route 53 to create when you register an
    #   instance.
    #   @return [Types::DnsConfigChange]
    #
    # @!attribute [rw] health_check_config
    #   *Public DNS namespaces only.* A complex type that contains settings
    #   for an optional health check. If you specify settings for a health
    #   check, Amazon Route 53 associates the health check with all the
    #   resource record sets that you specify in `DnsConfig`.
    #
    #   <note markdown="1"> The health check uses 30 seconds as the request interval. This is
    #   the number of seconds between the time that each Amazon Route 53
    #   health checker gets a response from your endpoint and the time that
    #   it sends the next health check request. A health checker in each
    #   data center around the world sends your endpoint a health check
    #   request every 30 seconds. On average, your endpoint receives a
    #   health check request about every two seconds. Health checkers in
    #   different data centers don't coordinate with one another, so
    #   you'll sometimes see several requests per second followed by a few
    #   seconds with no health checks at all.
    #
    #    </note>
    #
    #   For information about the charges for health checks, see [Amazon
    #   Route 53 Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing
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
    #   The ID that Amazon Route 53 assigned to the service when you created
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that Amazon Route 53 assigns to the
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
    #                 type: "SRV", # required, accepts SRV, A, AAAA
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
