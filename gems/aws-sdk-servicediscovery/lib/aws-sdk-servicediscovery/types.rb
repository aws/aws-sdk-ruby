# frozen_string_literal: true

# This is generated code!

module Aws::ServiceDiscovery
  # This module contains the types returned by client operations.
  module Types

    # @!attribute name
    #   <p>The name that you want to assign to this namespace.</p>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreateHttpNamespace</code>
    #      requests to be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/time stamp).</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the namespace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the namespace. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    #   @return [Array<Types::Tag>]
    class CreateHttpNamespaceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully.
    #                                   To get the status of the operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class CreateHttpNamespaceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name that you want to assign to this namespace. When you create a private DNS namespace, Cloud Map
    #      automatically creates an Amazon Route 53 private hosted zone that has the same name as the namespace.</p>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreatePrivateDnsNamespace</code>
    #      requests to be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/timestamp).</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the namespace.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The ID of the Amazon VPC that you want to associate the namespace with.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the namespace. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute properties
    #   <p>Properties for the private DNS
    #      namespace.</p>
    #   @return [Types::PrivateDnsNamespaceProperties]
    class CreatePrivateDnsNamespaceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description,
      :vpc,
      :tags,
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully.
    #                                   To get the status of the operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class CreatePrivateDnsNamespaceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name that you want to assign to this namespace.</p>
    #            <note>
    #               <p>Do not include sensitive information in the name. The name is publicly available using DNS queries.</p>
    #            </note>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreatePublicDnsNamespace</code>
    #      requests to be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/timestamp).</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the namespace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the namespace. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute properties
    #   <p>Properties for the public DNS
    #      namespace.</p>
    #   @return [Types::PublicDnsNamespaceProperties]
    class CreatePublicDnsNamespaceRequest < Struct.new(
      :name,
      :creator_request_id,
      :description,
      :tags,
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully. To get the status of the
    #      operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class CreatePublicDnsNamespaceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name that you want to assign to the service.</p>
    #            <note>
    #               <p>Do not include sensitive information in the name if the namespace is discoverable by public DNS
    #       queries.</p>
    #            </note>
    #            <p>If you want Cloud Map to create an <code>SRV</code> record when you register an instance and you're using
    #      a system that requires a specific <code>SRV</code> format, such as <a href="http://www.haproxy.org/">HAProxy</a>, specify the following for <code>Name</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>Start the name with an underscore (_), such as <code>_exampleservice</code>.</p>
    #               </li>
    #               <li>
    #                  <p>End the name with <i>._protocol</i>, such as <code>._tcp</code>.</p>
    #               </li>
    #            </ul>
    #            <p>When you register an instance, Cloud Map creates an <code>SRV</code> record and assigns a name to the
    #      record by concatenating the service name and the namespace name (for example,</p>
    #            <p>
    #               <code>_exampleservice._tcp.example.com</code>).</p>
    #            <note>
    #               <p>For services that are accessible by DNS queries, you can't create multiple services with names that differ
    #       only by case (such as EXAMPLE and example). Otherwise, these services have the same DNS name and can't be
    #       distinguished. However, if you use a namespace that's only accessible by API calls, then you can create
    #       services that with names that differ only by case.</p>
    #            </note>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The ID of the namespace that you want to use to create the service. The namespace ID must be specified, but
    #      it can be specified either here or in the <code>DnsConfig</code> object.</p>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreateService</code> requests to
    #      be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any unique
    #      string (for example, a date/timestamp).</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the service.</p>
    #   @return [String]
    # @!attribute dns_config
    #   <p>A complex type that contains information about the Amazon Route 53 records that you want Cloud Map to create
    #      when you register an instance. </p>
    #   @return [Types::DnsConfig]
    # @!attribute health_check_config
    #   <p>
    #               <i>Public DNS and HTTP namespaces only.</i> A complex type that contains settings for an
    #      optional Route 53 health check. If you specify settings for a health check, Cloud Map associates the health check
    #      with all the Route 53 DNS records that you specify in <code>DnsConfig</code>.</p>
    #            <important>
    #               <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code>
    #       or <code>HealthCheckConfig</code> but not both.</p>
    #            </important>
    #            <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/cloud-map/pricing/">Cloud Map Pricing</a>.</p>
    #   @return [Types::HealthCheckConfig]
    # @!attribute health_check_custom_config
    #   <p>A complex type that contains information about an optional custom health check.</p>
    #            <important>
    #               <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code>
    #       or <code>HealthCheckConfig</code> but not both.</p>
    #            </important>
    #            <p>You can't add, update, or delete a <code>HealthCheckCustomConfig</code> configuration from an existing
    #      service.</p>
    #   @return [Types::HealthCheckCustomConfig]
    # @!attribute tags
    #   <p>The tags to add to the service. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute type
    #   <p>If present, specifies that the service instances are only discoverable using the
    #       <code>DiscoverInstances</code> API operation. No DNS records is registered for the service instances. The only
    #      valid value is <code>HTTP</code>.</p>
    #   @return [String]
    class CreateServiceRequest < Struct.new(
      :name,
      :namespace_id,
      :creator_request_id,
      :description,
      :dns_config,
      :health_check_config,
      :health_check_custom_config,
      :tags,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A complex type that contains information about the new service.</p>
    #   @return [Types::Service]
    class CreateServiceResponse < Struct.new(
      :service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The health check for the instance that's specified by <code>ServiceId</code> and <code>InstanceId</code>
    #    isn't a custom health check. </p>
    # @!attribute message
    #   @return [String]
    class CustomHealthNotFound < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the namespace that you want to delete.</p>
    #   @return [String]
    class DeleteNamespaceRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully.
    #                                   To get the status of the operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class DeleteNamespaceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The ID of the service from which the attributes will be deleted.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A list of keys corresponding to each attribute that you want to delete.</p>
    #   @return [Array<String>]
    class DeleteServiceAttributesRequest < Struct.new(
      :service_id,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteServiceAttributesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service that you want to delete.</p>
    #   @return [String]
    class DeleteServiceRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteServiceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The ID of the service that the instance is associated with.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The value that you specified for <code>Id</code> in the <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a> request.</p>
    #   @return [String]
    class DeregisterInstanceRequest < Struct.new(
      :service_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully.
    #                                   To get the status of the operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class DeregisterInstanceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The <code>HttpName</code> name of the namespace. It's found in the <code>HttpProperties</code> member of
    #      the <code>Properties</code> member of the namespace. In most cases, <code>Name</code> and <code>HttpName</code>
    #      match. However, if you reuse <code>Name</code> for namespace creation, a generated hash is added to
    #      <code>HttpName</code> to distinguish the two.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that you specified when you registered the instance.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of instances that you want Cloud Map to return in the response to a
    #       <code>DiscoverInstances</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map
    #      returns up to 100 instances.</p>
    #   @return [Integer]
    # @!attribute query_parameters
    #   <p>Filters to scope the results based on custom attributes for the instance (for example, <code>{version=v1,
    #       az=1a}</code>). Only instances that match all the specified key-value pairs are returned.</p>
    #   @return [Hash<String, String>]
    # @!attribute optional_parameters
    #   <p>Opportunistic filters to scope the results based on custom attributes. If there are instances that match
    #      both the filters specified in both the <code>QueryParameters</code> parameter and this parameter, all of these
    #      instances are returned. Otherwise, the filters are ignored, and only instances that match the filters that are
    #      specified in the <code>QueryParameters</code> parameter are returned.</p>
    #   @return [Hash<String, String>]
    # @!attribute health_status
    #   <p>The health status of the instances that you want to discover. This parameter is ignored for services that
    #      don't have a health check configured, and
    #      all
    #      instances are returned.</p>
    #            <dl>
    #               <dt>HEALTHY</dt>
    #               <dd>
    #                  <p>Returns healthy instances.</p>
    #               </dd>
    #               <dt>UNHEALTHY</dt>
    #               <dd>
    #                  <p>Returns unhealthy instances.</p>
    #               </dd>
    #               <dt>ALL</dt>
    #               <dd>
    #                  <p>Returns all instances.</p>
    #               </dd>
    #               <dt>HEALTHY_OR_ELSE_ALL</dt>
    #               <dd>
    #                  <p>Returns healthy instances, unless none are reporting a healthy state. In that case, return all
    #         instances. This is also called failing open.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class DiscoverInstancesRequest < Struct.new(
      :namespace_name,
      :service_name,
      :max_results,
      :query_parameters,
      :optional_parameters,
      :health_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instances
    #   <p>A complex type that contains one <code>HttpInstanceSummary</code> for each registered instance.</p>
    #   @return [Array<Types::HttpInstanceSummary>]
    # @!attribute instances_revision
    #   <p>The increasing revision associated to the response Instances list. If a new instance is registered or
    #      deregistered, the <code>InstancesRevision</code> updates. The health status updates don't update
    #       <code>InstancesRevision</code>.</p>
    #   @return [Integer]
    class DiscoverInstancesResponse < Struct.new(
      :instances,
      :instances_revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The <code>HttpName</code> name of the namespace. It's found in the <code>HttpProperties</code> member of
    #      the <code>Properties</code> member of the namespace.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that you specified when you registered the instance.</p>
    #   @return [String]
    class DiscoverInstancesRevisionRequest < Struct.new(
      :namespace_name,
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instances_revision
    #   <p>The increasing revision associated to the response Instances list. If a new instance is registered or
    #      deregistered, the <code>InstancesRevision</code> updates. The health status updates don't update
    #       <code>InstancesRevision</code>.</p>
    #   @return [Integer]
    class DiscoverInstancesRevisionResponse < Struct.new(
      :instances_revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about the Amazon Route 53 DNS records that you want Cloud Map to create
    #    when you register an instance.</p>
    # @!attribute namespace_id
    #   <p>
    #               <i>Use
    #       NamespaceId in <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_Service.html">Service</a>
    #       instead.</i>
    #            </p>
    #            <p>The ID of the namespace to use for DNS configuration.</p>
    #   @deprecated
    #     Top level attribute in request should be used to reference namespace-id
    #   @return [String]
    # @!attribute routing_policy
    #   <p>The routing policy that you want to apply to all Route 53 DNS records that Cloud Map creates when you
    #      register an instance and specify this service.</p>
    #            <note>
    #               <p>If you want to use this service to register instances that create alias records, specify
    #        <code>WEIGHTED</code> for the routing policy.</p>
    #            </note>
    #            <p>You can specify the following values:</p>
    #            <dl>
    #               <dt>MULTIVALUE</dt>
    #               <dd>
    #                  <p>If you define a health check for the service and the health check is healthy, Route 53 returns the
    #         applicable value for up to eight instances.</p>
    #                  <p>For example, suppose that the service includes configurations for one <code>A</code> record and a health
    #         check. You use the service to register 10 instances. Route 53 responds to DNS queries with IP addresses for up
    #         to eight healthy instances. If fewer than eight instances are healthy, Route 53 responds to every DNS query with
    #         the IP addresses for all of the healthy instances.</p>
    #                  <p>If you don't define a health check for the service, Route 53 assumes that all instances are healthy and
    #         returns the values for up to eight instances.</p>
    #                  <p>For more information about the multivalue routing policy, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-multivalue">Multivalue Answer
    #          Routing</a> in the <i>Route 53 Developer Guide</i>.</p>
    #               </dd>
    #               <dt>WEIGHTED</dt>
    #               <dd>
    #                  <p>Route 53 returns the applicable value from one randomly selected instance from among the instances that you
    #         registered using the same service. Currently, all records have the same weight, so you can't route more or
    #         less traffic to any instances.</p>
    #                  <p>For example, suppose that the service includes configurations for one <code>A</code> record and a health
    #         check. You use the service to register 10 instances. Route 53 responds to DNS queries with the IP address for
    #         one randomly selected instance from among the healthy instances. If no instances are healthy, Route 53 responds
    #         to DNS queries as if all of the instances were healthy.</p>
    #                  <p>If you don't define a health check for the service, Route 53 assumes that all instances are healthy and
    #         returns the applicable value for one randomly selected instance.</p>
    #                  <p>For more information about the weighted routing policy, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted">Weighted Routing</a> in
    #         the <i>Route 53 Developer Guide</i>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute dns_records
    #   <p>An array that contains one <code>DnsRecord</code> object for each Route 53 DNS record that you want Cloud Map
    #      to create when you register an instance.</p>
    #            <important>
    #               <p>The record type of a service specified in a <code>DnsRecord</code> object can't be updated. To change a record type, you need to delete the service and recreate it with a new
    #       <code>DnsConfig</code>.</p>
    #            </important>
    #   @return [Array<Types::DnsRecord>]
    class DnsConfig < Struct.new(
      :namespace_id,
      :routing_policy,
      :dns_records,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about changes to the Route 53 DNS records that Cloud Map creates
    #    when you register an instance.</p>
    # @!attribute dns_records
    #   <p>An array that contains one <code>DnsRecord</code> object for each Route 53 record that you want Cloud Map to
    #      create when you register an instance.</p>
    #   @return [Array<Types::DnsRecord>]
    class DnsConfigChange < Struct.new(
      :dns_records,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains the ID for the Route 53 hosted zone that Cloud Map creates when you create a
    #    namespace.</p>
    # @!attribute hosted_zone_id
    #   <p>The ID for the Route 53 hosted zone that Cloud Map creates when you create a namespace.</p>
    #   @return [String]
    # @!attribute soa
    #   <p>Start of Authority (SOA) record for the hosted zone.</p>
    #   @return [Types::SOA]
    class DnsProperties < Struct.new(
      :hosted_zone_id,
      :soa,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about the Route 53 DNS records that you want Cloud Map to create
    #    when you register an instance.</p>
    # @!attribute type
    #   <p>The type of the resource, which indicates the type of value that Route 53 returns in response to DNS queries.
    #      You can specify values for <code>Type</code> in the following combinations:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>A</code>
    #                     </b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>AAAA</code>
    #                     </b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>A</code>
    #                     </b> and <b>
    #                        <code>AAAA</code>
    #                     </b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>SRV</code>
    #                     </b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CNAME</code>
    #                     </b>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you want Cloud Map to create a Route 53 alias record when you register an instance, specify <code>A</code>
    #      or <code>AAAA</code> for <code>Type</code>.</p>
    #            <p>You specify other settings, such as the IP address for <code>A</code> and <code>AAAA</code> records, when
    #      you register an instance. For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a>.</p>
    #            <p>The following values are supported:</p>
    #            <dl>
    #               <dt>A</dt>
    #               <dd>
    #                  <p>Route 53 returns the IP address of the resource in IPv4 format, such as 192.0.2.44.</p>
    #               </dd>
    #               <dt>AAAA</dt>
    #               <dd>
    #                  <p>Route 53 returns the IP address of the resource in IPv6 format, such as
    #         2001:0db8:85a3:0000:0000:abcd:0001:2345.</p>
    #               </dd>
    #               <dt>CNAME</dt>
    #               <dd>
    #                  <p>Route 53 returns the domain name of the resource, such as www.example.com. Note the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>You specify the domain name that you want to route traffic to when you register an instance. For more
    #           information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#cloudmap-RegisterInstance-request-Attributes">Attributes</a> in the topic <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a>.</p>
    #                     </li>
    #                     <li>
    #                        <p>You must specify <code>WEIGHTED</code> for the value of <code>RoutingPolicy</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>You can't specify both <code>CNAME</code> for <code>Type</code> and settings for
    #            <code>HealthCheckConfig</code>. If you do, the request will fail with an <code>InvalidInput</code>
    #           error.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>SRV</dt>
    #               <dd>
    #                  <p>Route 53 returns the value for an <code>SRV</code> record. The value for an <code>SRV</code> record uses
    #         the following values:</p>
    #                  <p>
    #                     <code>priority weight port service-hostname</code>
    #                  </p>
    #                  <p>Note the following about the values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The values of <code>priority</code> and <code>weight</code> are both set to <code>1</code> and can't
    #           be changed. </p>
    #                     </li>
    #                     <li>
    #                        <p>The value of <code>port</code> comes from the value that you specify for the
    #            <code>AWS_INSTANCE_PORT</code> attribute when you submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a> request.</p>
    #                     </li>
    #                     <li>
    #                        <p>The value of <code>service-hostname</code> is a concatenation of the following values:</p>
    #                        <ul>
    #                           <li>
    #                              <p>The value that you specify for <code>InstanceId</code> when you register an instance.</p>
    #                           </li>
    #                           <li>
    #                              <p>The name of the service.</p>
    #                           </li>
    #                           <li>
    #                              <p>The name of the namespace. </p>
    #                           </li>
    #                        </ul>
    #                        <p>For example, if the value of <code>InstanceId</code> is <code>test</code>, the name of the service is
    #            <code>backend</code>, and the name of the namespace is <code>example.com</code>, the value of
    #            <code>service-hostname</code> is the following:</p>
    #                        <p>
    #                           <code>test.backend.example.com</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>If you specify settings for an <code>SRV</code> record, note the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you specify values for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both in
    #           the <code>RegisterInstance</code> request, Cloud Map automatically creates <code>A</code> and/or
    #            <code>AAAA</code> records that have the same name as the value of <code>service-hostname</code> in the
    #            <code>SRV</code> record. You can ignore these records.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you're using a system that requires a specific <code>SRV</code> format, such as HAProxy, see the
    #            <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html#cloudmap-CreateService-request-Name">Name</a> element
    #           in the documentation about <code>CreateService</code> for information about how to specify the correct name
    #           format.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute ttl
    #   <p>The amount of time, in seconds, that you want DNS resolvers to cache the settings for this record.</p>
    #            <note>
    #               <p>Alias records don't include a TTL because Route 53 uses the TTL for the Amazon Web Services resource that an alias record
    #       routes traffic to. If you include the <code>AWS_ALIAS_DNS_NAME</code> attribute when you submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a> request,
    #       the <code>TTL</code> value is ignored. Always specify a TTL for the service; you can use a service to register
    #       instances that create either alias or non-alias records.</p>
    #            </note>
    #   @return [Integer]
    class DnsRecord < Struct.new(
      :type,
      :ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation is already in progress.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute duplicate_operation_id
    #   <p>The ID of the operation that's already in progress.</p>
    #   @return [String]
    class DuplicateRequest < Struct.new(
      :message,
      :duplicate_operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The ID of the service that the instance is associated with.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the instance that you want to get information about.</p>
    #   @return [String]
    class GetInstanceRequest < Struct.new(
      :service_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance
    #   <p>A complex type that contains information about a specified instance.</p>
    #   @return [Types::Instance]
    class GetInstanceResponse < Struct.new(
      :instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The ID of the service that the instance is associated with.</p>
    #   @return [String]
    # @!attribute instances
    #   <p>An array that contains the IDs of all the instances that you want to get the health status for.</p>
    #            <p>If you omit <code>Instances</code>, Cloud Map returns the health status for all the instances that are
    #      associated with the specified service.</p>
    #            <note>
    #               <p>To get the IDs for the instances that you've registered by using a specified service, submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListInstances.html">ListInstances</a> request.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of instances that you want Cloud Map to return in the response to a
    #       <code>GetInstancesHealthStatus</code> request. If you don't specify a value for <code>MaxResults</code>,
    #      Cloud Map returns up to 100 instances.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>For the first <code>GetInstancesHealthStatus</code> request, omit this value.</p>
    #            <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another
    #       <code>GetInstancesHealthStatus</code> request to get the next group of results. Specify the value of
    #       <code>NextToken</code> from the previous response in the next request.</p>
    #   @return [String]
    class GetInstancesHealthStatusRequest < Struct.new(
      :service_id,
      :instances,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>A complex type that contains the IDs and the health status of the instances that you specified in the
    #       <code>GetInstancesHealthStatus</code> request.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_token
    #   <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another
    #       <code>GetInstancesHealthStatus</code> request to get the next group of results. Specify the value of
    #       <code>NextToken</code> from the previous response in the next request.</p>
    #   @return [String]
    class GetInstancesHealthStatusResponse < Struct.new(
      :status,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the namespace that you want to get information about.</p>
    #   @return [String]
    class GetNamespaceRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace
    #   <p>A complex type that contains information about the specified namespace.</p>
    #   @return [Types::Namespace]
    class GetNamespaceResponse < Struct.new(
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The ID of the operation that you want to get more information about.</p>
    #   @return [String]
    class GetOperationRequest < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>A complex type that contains information about the operation.</p>
    #   @return [Types::Operation]
    class GetOperationResponse < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The ID of the service that you want to get attributes for.</p>
    #   @return [String]
    class GetServiceAttributesRequest < Struct.new(
      :service_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_attributes
    #   <p>A complex type that contains the service ARN and a list of attribute key-value pairs associated with the service.</p>
    #   @return [Types::ServiceAttributes]
    class GetServiceAttributesResponse < Struct.new(
      :service_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service that you want to get settings for.</p>
    #   @return [String]
    class GetServiceRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A complex type that contains information about the service.</p>
    #   @return [Types::Service]
    class GetServiceResponse < Struct.new(
      :service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <i>Public DNS and HTTP namespaces only.</i> A complex type that contains settings for an
    #    optional health check. If you specify settings for a health check, Cloud Map associates the health check with
    #    the records that you specify in <code>DnsConfig</code>.</p>
    #          <important>
    #             <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code>
    #     or <code>HealthCheckConfig</code> but not both.</p>
    #          </important>
    #          <p>Health checks are basic Route 53 health checks that monitor an Amazon Web Services endpoint. For information
    #    about pricing for health checks, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53
    #    Pricing</a>.</p>
    #          <p>Note the following about configuring health checks.</p>
    #          <dl>
    #             <dt>A and AAAA records</dt>
    #             <dd>
    #                <p>If <code>DnsConfig</code> includes configurations for both <code>A</code> and <code>AAAA</code> records,
    #       Cloud Map creates a health check that uses the IPv4 address to check the health of the resource. If the
    #       endpoint tthat's specified by the IPv4 address is unhealthy, Route 53 considers both the <code>A</code> and
    #        <code>AAAA</code> records to be unhealthy. </p>
    #             </dd>
    #             <dt>CNAME records</dt>
    #             <dd>
    #                <p>You can't specify settings for <code>HealthCheckConfig</code> when the <code>DNSConfig</code> includes
    #        <code>CNAME</code> for the value of <code>Type</code>. If you do, the <code>CreateService</code> request
    #       will fail with an <code>InvalidInput</code> error.</p>
    #             </dd>
    #             <dt>Request interval</dt>
    #             <dd>
    #                <p>A Route 53 health checker in each health-checking Amazon Web Services Region sends a health check request to an endpoint
    #       every 30 seconds. On average, your endpoint receives a health check request about every two seconds. However,
    #       health checkers don't coordinate with one another. Therefore, you might sometimes see several requests in one
    #       second that's followed by a few seconds with no health checks at all.</p>
    #             </dd>
    #             <dt>Health checking regions</dt>
    #             <dd>
    #                <p>Health checkers perform checks from all Route 53 health-checking Regions. For a list of the current
    #       Regions, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions">Regions</a>.</p>
    #             </dd>
    #             <dt>Alias records</dt>
    #             <dd>
    #                <p>When you register an instance, if you include the <code>AWS_ALIAS_DNS_NAME</code> attribute, Cloud Map
    #       creates a Route 53 alias record. Note the following:</p>
    #                <ul>
    #                   <li>
    #                      <p>Route 53 automatically sets <code>EvaluateTargetHealth</code> to true for alias records. When
    #          <code>EvaluateTargetHealth</code> is true, the alias record inherits the health of the referenced Amazon Web Services
    #         resource. such as an ELB load balancer. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth">EvaluateTargetHealth</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>If you include <code>HealthCheckConfig</code> and then use the service to register an instance that
    #         creates an alias record, Route 53 doesn't create the health check.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Charges for health checks</dt>
    #             <dd>
    #                <p>Health checks are basic Route 53 health checks that monitor an Amazon Web Services endpoint. For information about
    #       pricing for health checks, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53
    #       Pricing</a>.</p>
    #             </dd>
    #          </dl>
    # @!attribute type
    #   <p>The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint
    #      is healthy.</p>
    #            <important>
    #               <p>You can't change the value of <code>Type</code> after you create a health check.</p>
    #            </important>
    #            <p>You can create the following types of health checks:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>HTTP</b>: Route 53 tries to establish a TCP connection. If successful, Route 53
    #        submits an HTTP request and waits for an HTTP status code of 200 or greater and less than 400.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>HTTPS</b>: Route 53 tries to establish a TCP connection. If successful, Route 53
    #        submits an HTTPS request and waits for an HTTP status code of 200 or greater and less than 400.</p>
    #                  <important>
    #                     <p>If you specify HTTPS for the value of <code>Type</code>, the endpoint must support TLS v1.0 or
    #         later.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TCP</b>: Route 53 tries to establish a TCP connection.</p>
    #                  <p>If you specify <code>TCP</code> for <code>Type</code>, don't specify a value for
    #         <code>ResourcePath</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Route 53 Determines
    #       Whether an Endpoint Is Healthy</a> in the <i>Route 53 Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute resource_path
    #   <p>The path that you want Route 53 to request when performing health checks. The path can be any value that your
    #      endpoint returns an HTTP status code of a 2xx or 3xx format for when the endpoint is healthy. An example file is
    #       <code>/docs/route53-health-check.html</code>. Route 53 automatically adds the DNS name for the service. If you
    #      don't specify a value for <code>ResourcePath</code>, the default value is <code>/</code>.</p>
    #            <p>If you specify <code>TCP</code> for <code>Type</code>, you must <i>not</i> specify a value
    #      for <code>ResourcePath</code>.</p>
    #   @return [String]
    # @!attribute failure_threshold
    #   <p>The number of consecutive health checks that an endpoint must pass or fail for Route 53 to change the current
    #      status of the endpoint from unhealthy to healthy or the other way around. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How
    #       Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Route 53 Developer Guide</i>.</p>
    #   @return [Integer]
    class HealthCheckConfig < Struct.new(
      :type,
      :resource_path,
      :failure_threshold,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about an optional custom health check. A custom health check,
    #    which requires that you use a third-party health checker to evaluate the health of your resources, is useful in
    #    the following circumstances:</p>
    #          <ul>
    #             <li>
    #                <p>You can't use a health check that's defined by <code>HealthCheckConfig</code> because the resource isn't
    #      available over the internet. For example, you can use a custom health check when the instance is in an Amazon
    #      VPC. (To check the health of resources in a VPC, the health checker must also be in the VPC.)</p>
    #             </li>
    #             <li>
    #                <p>You want to use a third-party health checker regardless of where your resources are located.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code>
    #     or <code>HealthCheckConfig</code> but not both.</p>
    #          </important>
    #          <p>To change the status of a custom health check, submit an <code>UpdateInstanceCustomHealthStatus</code>
    #    request. Cloud Map doesn't monitor the status of the resource, it just keeps a record of the status specified in
    #    the most recent <code>UpdateInstanceCustomHealthStatus</code> request.</p>
    #          <p>Here's how custom health checks work:</p>
    #          <ol>
    #             <li>
    #                <p>You create a service.</p>
    #             </li>
    #             <li>
    #                <p>You register an instance.</p>
    #             </li>
    #             <li>
    #                <p>You configure a third-party health checker to monitor the resource that's associated with the new
    #      instance. </p>
    #                <note>
    #                   <p>Cloud Map doesn't check the health of the resource directly. </p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>The third-party health-checker determines that the resource is unhealthy and notifies your
    #      application.</p>
    #             </li>
    #             <li>
    #                <p>Your application submits an <code>UpdateInstanceCustomHealthStatus</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Cloud Map waits for 30 seconds.</p>
    #             </li>
    #             <li>
    #                <p>If another <code>UpdateInstanceCustomHealthStatus</code> request doesn't arrive during that time to
    #      change the status back to healthy, Cloud Map stops routing traffic to the resource.</p>
    #             </li>
    #          </ol>
    # @!attribute failure_threshold
    #   <important>
    #               <p>This parameter is no longer supported and is always set to 1. Cloud Map waits for approximately 30 seconds
    #       after receiving an <code>UpdateInstanceCustomHealthStatus</code> request before changing the status of the
    #       service instance.</p>
    #            </important>
    #            <p>The number of 30-second intervals that you want Cloud Map to wait after receiving an
    #       <code>UpdateInstanceCustomHealthStatus</code> request before it changes the health status of a service
    #      instance.</p>
    #            <p>Sending a second or subsequent <code>UpdateInstanceCustomHealthStatus</code> request with the same value
    #      before 30 seconds has passed doesn't accelerate the change. Cloud Map still waits <code>30</code> seconds after the
    #      first request to make the change.</p>
    #   @deprecated
    #     Configurable FailureThreshold of HealthCheckCustomConfig is deprecated.  It will always have value 1.
    #   @return [Integer]
    class HealthCheckCustomConfig < Struct.new(
      :failure_threshold,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>In a response to a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a> request, <code>HttpInstanceSummary</code> contains information about one instance
    #    that matches the values that you specified in the request.</p>
    # @!attribute instance_id
    #   <p>The ID of an instance that matches the values that you specified in the request.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>
    #               <code></code>
    #               <code></code>
    #               <code></code>
    #            </p>
    #            <p>The <code>HttpName</code> name of the namespace. It's found in the <code>HttpProperties</code> member of
    #      the <code>Properties</code> member of the namespace.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that you specified when you registered the instance.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p>If you configured health checking in the service, the current health status of the service instance.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>If you included any attributes when you registered the instance, the values of those attributes.</p>
    #   @return [Hash<String, String>]
    class HttpInstanceSummary < Struct.new(
      :instance_id,
      :namespace_name,
      :service_name,
      :health_status,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updated properties for the HTTP
    #    namespace.</p>
    # @!attribute description
    #   <p>An updated description for the HTTP
    #      namespace.</p>
    #   @return [String]
    class HttpNamespaceChange < Struct.new(
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains the name of an HTTP namespace.</p>
    # @!attribute http_name
    #   <p>The name of an HTTP namespace.</p>
    #   @return [String]
    class HttpProperties < Struct.new(
      :http_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about an instance that Cloud Map creates when you submit a
    #     <code>RegisterInstance</code> request.</p>
    # @!attribute id
    #   <p>An identifier that you want to associate with the instance. Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>If the service that's specified by <code>ServiceId</code> includes settings for an <code>SRV</code>
    #        record, the value of <code>InstanceId</code> is automatically included as part of the value for the
    #         <code>SRV</code> record. For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type">DnsRecord > Type</a>.</p>
    #               </li>
    #               <li>
    #                  <p>You can use this value to update an existing instance.</p>
    #               </li>
    #               <li>
    #                  <p>To register a new instance, you must specify a value that's unique among instances that you register by
    #        using the same service. </p>
    #               </li>
    #               <li>
    #                  <p>If you specify an existing <code>InstanceId</code> and <code>ServiceId</code>, Cloud Map updates the
    #        existing DNS records. If there's also an existing health check, Cloud Map deletes the old health check and
    #        creates a new one. </p>
    #                  <note>
    #                     <p>The health check isn't deleted immediately, so it will still appear for a while if you submit a
    #          <code>ListHealthChecks</code> request, for example.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>RegisterInstance</code> requests
    #      to be retried without the risk of executing the operation twice. You must use a unique
    #       <code>CreatorRequestId</code> string every time you submit a <code>RegisterInstance</code> request if you're
    #      registering additional instances for the same namespace and service. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/time stamp).</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A string map that contains the following information for the service that you specify in
    #       <code>ServiceId</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>The attributes that apply to the records that are defined in the service. </p>
    #               </li>
    #               <li>
    #                  <p>For each attribute, the applicable value.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Do not include sensitive information in the attributes if the namespace is discoverable by public DNS
    #       queries.</p>
    #            </note>
    #            <p>Supported attribute keys include the following:</p>
    #            <dl>
    #               <dt>AWS_ALIAS_DNS_NAME</dt>
    #               <dd>
    #                  <p>If you want Cloud Map to create a Route 53 alias record that routes traffic to an Elastic Load Balancing load balancer,
    #         specify the DNS name that's associated with the load balancer. For information about how to get the DNS name,
    #         see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-DNSName">AliasTarget->DNSName</a> in the <i>Route 53 API Reference</i>.</p>
    #                  <p>Note the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The configuration for the service that's specified by <code>ServiceId</code> must include settings for
    #           an <code>A</code> record, an <code>AAAA</code> record, or both.</p>
    #                     </li>
    #                     <li>
    #                        <p>In the service that's specified by <code>ServiceId</code>, the value of <code>RoutingPolicy</code>
    #           must be <code>WEIGHTED</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If the service that's specified by <code>ServiceId</code> includes <code>HealthCheckConfig</code>
    #           settings, Cloud Map creates the health check, but it won't associate the health check with the alias
    #           record.</p>
    #                     </li>
    #                     <li>
    #                        <p>Auto naming currently doesn't support creating alias records that route traffic to Amazon Web Services resources
    #           other than ELB load balancers.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you specify a value for <code>AWS_ALIAS_DNS_NAME</code>, don't specify values for any of the
    #            <code>AWS_INSTANCE</code> attributes.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>AWS_EC2_INSTANCE_ID</dt>
    #               <dd>
    #                  <p>
    #                     <i>HTTP namespaces only.</i> The Amazon EC2 instance ID for the instance. The
    #          <code>AWS_INSTANCE_IPV4</code> attribute contains the primary private IPv4 address.</p>
    #               </dd>
    #               <dt>AWS_INIT_HEALTH_STATUS</dt>
    #               <dd>
    #                  <p>If the service configuration includes <code>HealthCheckCustomConfig</code>, you can optionally use
    #          <code>AWS_INIT_HEALTH_STATUS</code> to specify the initial status of the custom health check,
    #          <code>HEALTHY</code> or <code>UNHEALTHY</code>. If you don't specify a value for
    #          <code>AWS_INIT_HEALTH_STATUS</code>, the initial status is <code>HEALTHY</code>.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_CNAME</dt>
    #               <dd>
    #                  <p>If the service configuration includes a <code>CNAME</code> record, the domain name that you want Route 53
    #         to return in response to DNS queries (for example, <code>example.com</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>CNAME</code> record.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV4</dt>
    #               <dd>
    #                  <p>If the service configuration includes an <code>A</code> record, the IPv4 address that you want Route 53 to
    #         return in response to DNS queries (for example, <code>192.0.2.44</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>A</code> record. If the service includes settings for an <code>SRV</code> record, you must specify a
    #         value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV6</dt>
    #               <dd>
    #                  <p>If the service configuration includes an <code>AAAA</code> record, the IPv6 address that you want Route 53
    #         to return in response to DNS queries (for example,
    #         <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>AAAA</code> record. If the service includes settings for an <code>SRV</code> record, you must specify
    #         a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_PORT</dt>
    #               <dd>
    #                  <p>If the service includes an <code>SRV</code> record, the value that you want Route 53 to return for the
    #         port.</p>
    #                  <p>If the service includes <code>HealthCheckConfig</code>, the port on the endpoint that you want Route 53 to
    #         send requests to. </p>
    #                  <p>This value is required if you specified settings for an <code>SRV</code> record or a Route 53 health check
    #         when you created the service.</p>
    #               </dd>
    #            </dl>
    #   @return [Hash<String, String>]
    class Instance < Struct.new(
      :id,
      :creator_request_id,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>No instance exists with the specified ID, or the instance was recently registered, and information about
    #    the instance hasn't propagated yet.</p>
    # @!attribute message
    #   @return [String]
    class InstanceNotFound < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about the instances that you registered by using a specified
    #    service.</p>
    # @!attribute id
    #   <p>The ID for an instance that you created by using a specified service.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A string map that contains the following information:</p>
    #            <ul>
    #               <li>
    #                  <p>The attributes that are associated with the instance. </p>
    #               </li>
    #               <li>
    #                  <p>For each attribute, the applicable value.</p>
    #               </li>
    #            </ul>
    #            <p>Supported attribute keys include the following:</p>
    #            <dl>
    #               <dt>AWS_ALIAS_DNS_NAME</dt>
    #               <dd>
    #                  <p>For an alias record that routes traffic to an Elastic Load Balancing load balancer, the DNS name that's associated with
    #         the load balancer. </p>
    #               </dd>
    #               <dt>AWS_EC2_INSTANCE_ID (HTTP namespaces only)</dt>
    #               <dd>
    #                  <p>The Amazon EC2 instance ID for the instance. When the <code>AWS_EC2_INSTANCE_ID</code> attribute is
    #         specified, then the <code>AWS_INSTANCE_IPV4</code> attribute contains the primary private IPv4
    #         address.</p>
    #               </dd>
    #               <dt>AWS_INIT_HEALTH_STATUS</dt>
    #               <dd>
    #                  <p>If the service configuration includes <code>HealthCheckCustomConfig</code>, you can optionally use
    #          <code>AWS_INIT_HEALTH_STATUS</code> to specify the initial status of the custom health check,
    #          <code>HEALTHY</code> or <code>UNHEALTHY</code>. If you don't specify a value for
    #          <code>AWS_INIT_HEALTH_STATUS</code>, the initial status is <code>HEALTHY</code>.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_CNAME</dt>
    #               <dd>
    #                  <p>For a <code>CNAME</code> record, the domain name that Route 53 returns in response to DNS queries (for
    #         example, <code>example.com</code>).</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV4</dt>
    #               <dd>
    #                  <p>For an <code>A</code> record, the IPv4 address that Route 53 returns in response to DNS queries (for
    #         example, <code>192.0.2.44</code>).</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV6</dt>
    #               <dd>
    #                  <p>For an <code>AAAA</code> record, the IPv6 address that Route 53 returns in response to DNS queries (for
    #         example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>).</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_PORT</dt>
    #               <dd>
    #                  <p>For an <code>SRV</code> record, the value that Route 53 returns for the port. In addition, if the service
    #         includes <code>HealthCheckConfig</code>, the port on the endpoint that Route 53 sends requests to.</p>
    #               </dd>
    #            </dl>
    #   @return [Hash<String, String>]
    class InstanceSummary < Struct.new(
      :id,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more specified values aren't valid. For example, a required value might be missing, a numeric value
    #    might be outside the allowed range, or a string value might exceed length constraints.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInput < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The ID of the service that you want to list instances for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>For the first <code>ListInstances</code> request, omit this value.</p>
    #            <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another
    #       <code>ListInstances</code> request to get the next group of results. Specify the value of
    #       <code>NextToken</code> from the previous response in the next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of instances that you want Cloud Map to return in the response to a
    #       <code>ListInstances</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map
    #      returns up to 100 instances.</p>
    #   @return [Integer]
    class ListInstancesRequest < Struct.new(
      :service_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instances
    #   <p>Summary information about the instances that are associated with the specified service.</p>
    #   @return [Array<Types::InstanceSummary>]
    # @!attribute next_token
    #   <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another
    #       <code>ListInstances</code> request to get the next group of results. Specify the value of
    #       <code>NextToken</code> from the previous response in the next request.</p>
    #   @return [String]
    class ListInstancesResponse < Struct.new(
      :instances,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>For the first <code>ListNamespaces</code> request, omit this value.</p>
    #            <p>If the response contains <code>NextToken</code>, submit another <code>ListNamespaces</code> request to get
    #      the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> namespaces and then filters them based on the specified criteria.
    #       It's possible that no namespaces in the first <code>MaxResults</code> namespaces matched the specified criteria
    #       but that subsequent groups of <code>MaxResults</code> namespaces do contain namespaces that match the
    #       criteria.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of namespaces that you want Cloud Map to return in the response to a
    #       <code>ListNamespaces</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map
    #      returns up to 100 namespaces.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>A complex type that contains specifications for the namespaces that you want to list.</p>
    #            <p>If you specify more than one filter, a namespace must match all filters to be returned by
    #       <code>ListNamespaces</code>.</p>
    #   @return [Array<Types::NamespaceFilter>]
    class ListNamespacesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespaces
    #   <p>An array that contains one <code>NamespaceSummary</code> object for each namespace that matches the
    #      specified filter criteria.</p>
    #   @return [Array<Types::NamespaceSummary>]
    # @!attribute next_token
    #   <p>If the response contains <code>NextToken</code>, submit another <code>ListNamespaces</code> request to get
    #      the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> namespaces and then filters them based on the specified criteria.
    #       It's possible that no namespaces in the first <code>MaxResults</code> namespaces matched the specified criteria
    #       but that subsequent groups of <code>MaxResults</code> namespaces do contain namespaces that match the
    #       criteria.</p>
    #            </note>
    #   @return [String]
    class ListNamespacesResponse < Struct.new(
      :namespaces,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>For the first <code>ListOperations</code> request, omit this value.</p>
    #            <p>If the response contains <code>NextToken</code>, submit another <code>ListOperations</code> request to get
    #      the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> operations and then filters them based on the specified criteria.
    #       It's possible that no operations in the first <code>MaxResults</code> operations matched the specified criteria
    #       but that subsequent groups of <code>MaxResults</code> operations do contain operations that match the
    #       criteria.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items that you want Cloud Map to return in the response to a
    #       <code>ListOperations</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map
    #      returns up to 100 operations.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>A complex type that contains specifications for the operations that you want to list, for example,
    #      operations that you started between a specified start date and end date.</p>
    #            <p>If you specify more than one filter, an operation must match all filters to be returned by
    #       <code>ListOperations</code>.</p>
    #   @return [Array<Types::OperationFilter>]
    class ListOperationsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>Summary information about the operations that match the specified criteria.</p>
    #   @return [Array<Types::OperationSummary>]
    # @!attribute next_token
    #   <p>If the response contains <code>NextToken</code>, submit another <code>ListOperations</code> request to get
    #      the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> operations and then filters them based on the specified criteria.
    #       It's possible that no operations in the first <code>MaxResults</code> operations matched the specified criteria
    #       but that subsequent groups of <code>MaxResults</code> operations do contain operations that match the
    #       criteria.</p>
    #            </note>
    #   @return [String]
    class ListOperationsResponse < Struct.new(
      :operations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>For the first <code>ListServices</code> request, omit this value.</p>
    #            <p>If the response contains <code>NextToken</code>, submit another <code>ListServices</code> request to get
    #      the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> services and then filters them based on the specified criteria.
    #       It's possible that no services in the first <code>MaxResults</code> services matched the specified criteria but
    #       that subsequent groups of <code>MaxResults</code> services do contain services that match the criteria.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of services that you want Cloud Map to return in the response to a
    #       <code>ListServices</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map returns
    #      up to 100 services.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>A complex type that contains specifications for the namespaces that you want to list services for. </p>
    #            <p>If you specify more than one filter, an operation must match all filters to be returned by
    #       <code>ListServices</code>.</p>
    #   @return [Array<Types::ServiceFilter>]
    class ListServicesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute services
    #   <p>An array that contains one <code>ServiceSummary</code> object for each service that matches the specified
    #      filter criteria.</p>
    #   @return [Array<Types::ServiceSummary>]
    # @!attribute next_token
    #   <p>If the response contains <code>NextToken</code>, submit another <code>ListServices</code> request to get
    #      the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> services and then filters them based on the specified criteria.
    #       It's possible that no services in the first <code>MaxResults</code> services matched the specified criteria but
    #       that subsequent groups of <code>MaxResults</code> services do contain services that match the criteria.</p>
    #            </note>
    #   @return [String]
    class ListServicesResponse < Struct.new(
      :services,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags that are assigned to the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about a specified namespace.</p>
    # @!attribute id
    #   <p>The ID of a namespace.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that Cloud Map assigns to the namespace when you create it.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the namespace, such as <code>example.com</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the namespace. The methods for discovering instances depends on the value that you
    #      specify:</p>
    #            <dl>
    #               <dt>HTTP</dt>
    #               <dd>
    #                  <p>Instances can be discovered only programmatically, using the Cloud Map <code>DiscoverInstances</code>
    #         API.</p>
    #               </dd>
    #               <dt>DNS_PUBLIC</dt>
    #               <dd>
    #                  <p>Instances can be discovered using public DNS queries and using the <code>DiscoverInstances</code>
    #         API.</p>
    #               </dd>
    #               <dt>DNS_PRIVATE</dt>
    #               <dd>
    #                  <p>Instances can be discovered using DNS queries in VPCs and using the <code>DiscoverInstances</code>
    #         API.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute description
    #   <p>The description that you specify for the namespace when you create it.</p>
    #   @return [String]
    # @!attribute service_count
    #   <p>The number of services that are associated with the namespace.</p>
    #   @return [Integer]
    # @!attribute properties
    #   <p>A complex type that contains information that's specific to the type of the namespace.</p>
    #   @return [Types::NamespaceProperties]
    # @!attribute create_date
    #   <p>The date that the namespace was created, in Unix date/time format and Coordinated Universal Time (UTC). The
    #      value of <code>CreateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code>
    #      represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried without the risk
    #      of running an operation twice. </p>
    #   @return [String]
    class Namespace < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :description,
      :service_count,
      :properties,
      :create_date,
      :creator_request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The namespace that you're trying to create already exists.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>The <code>CreatorRequestId</code> that was used to create the namespace.</p>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The ID of the existing namespace.</p>
    #   @return [String]
    class NamespaceAlreadyExists < Struct.new(
      :message,
      :creator_request_id,
      :namespace_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that identifies the namespaces that you want to list. You can choose to list public or
    #    private namespaces.</p>
    # @!attribute name
    #   <p>Specify the namespaces that you want to get using one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TYPE</code>: Gets the namespaces of the specified type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>: Gets the namespaces with the specified name.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP_NAME</code>: Gets the namespaces with the specified HTTP name.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>Specify the values that are applicable to the value that you specify for <code>Name</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TYPE</code>: Specify <code>HTTP</code>, <code>DNS_PUBLIC</code>, or
    #        <code>DNS_PRIVATE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>: Specify the name of the namespace, which is found in
    #        <code>Namespace.Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP_NAME</code>: Specify the HTTP name of the namespace, which is found in
    #         <code>Namespace.Properties.HttpProperties.HttpName</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>Specify the operator that you want to use to determine whether a namespace matches the specified value.
    #      Valid values for <code>Condition</code> are one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EQ</code>: When you specify <code>EQ</code> for <code>Condition</code>, you can specify only one
    #        value. <code>EQ</code> is supported for <code>TYPE</code>, <code>NAME</code>, and <code>HTTP_NAME</code>.
    #         <code>EQ</code> is the default condition and can be omitted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BEGINS_WITH</code>: When you specify <code>BEGINS_WITH</code> for <code>Condition</code>, you can
    #        specify only one value. <code>BEGINS_WITH</code> is supported for <code>TYPE</code>, <code>NAME</code>, and
    #         <code>HTTP_NAME</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class NamespaceFilter < Struct.new(
      :name,
      :values,
      :condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>No namespace exists with the specified ID.</p>
    # @!attribute message
    #   @return [String]
    class NamespaceNotFound < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information that's specific to the namespace type.</p>
    # @!attribute dns_properties
    #   <p>A complex type that contains the ID for the Route 53 hosted zone that Cloud Map creates when you create a
    #      namespace.</p>
    #   @return [Types::DnsProperties]
    # @!attribute http_properties
    #   <p>A complex type that contains the name of an HTTP namespace.</p>
    #   @return [Types::HttpProperties]
    class NamespaceProperties < Struct.new(
      :dns_properties,
      :http_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about a namespace.</p>
    # @!attribute id
    #   <p>The ID of the namespace.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that Cloud Map assigns to the namespace when you create it.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the namespace. When you create a namespace, Cloud Map automatically creates a Route 53 hosted
    #      zone that has the same name as the namespace.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the namespace, either public or private.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the namespace.</p>
    #   @return [String]
    # @!attribute service_count
    #   <p>The number of services that were created using the namespace.</p>
    #   @return [Integer]
    # @!attribute properties
    #   <p>The properties of the namespace.</p>
    #   @return [Types::NamespaceProperties]
    # @!attribute create_date
    #   <p>The date and time that the namespace was created.</p>
    #   @return [Time]
    class NamespaceSummary < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :description,
      :service_count,
      :properties,
      :create_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about a specified operation.</p>
    # @!attribute id
    #   <p>The ID of the operation that you want to get information about.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The name of the operation that's associated with the specified ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the operation. Values include the following:</p>
    #            <dl>
    #               <dt>SUBMITTED</dt>
    #               <dd>
    #                  <p>This is the initial state that occurs immediately after you submit a request.</p>
    #               </dd>
    #               <dt>PENDING</dt>
    #               <dd>
    #                  <p>Cloud Map is performing the operation.</p>
    #               </dd>
    #               <dt>SUCCESS</dt>
    #               <dd>
    #                  <p>The operation succeeded.</p>
    #               </dd>
    #               <dt>FAIL</dt>
    #               <dd>
    #                  <p>The operation failed. For the failure reason, see <code>ErrorMessage</code>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute error_message
    #   <p>If the value of <code>Status</code> is <code>FAIL</code>, the reason that the operation failed.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The code associated with <code>ErrorMessage</code>. Values for <code>ErrorCode</code> include the
    #      following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACCESS_DENIED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANNOT_CREATE_HOSTED_ZONE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPIRED_TOKEN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOSTED_ZONE_NOT_FOUND</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INTERNAL_FAILURE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID_CHANGE_BATCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>THROTTLED_REQUEST</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time that the request was submitted, in Unix date/time format and Coordinated Universal Time
    #      (UTC). The value of <code>CreateDate</code> is accurate to milliseconds. For example, the value
    #       <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute update_date
    #   <p>The date and time that the value of <code>Status</code> changed to the current value, in Unix date/time
    #      format and Coordinated Universal Time (UTC). The value of <code>UpdateDate</code> is accurate to milliseconds.
    #      For example, the value <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute targets
    #   <p>The name of the target entity that's associated with the operation:</p>
    #            <dl>
    #               <dt>NAMESPACE</dt>
    #               <dd>
    #                  <p>The namespace ID is returned in the <code>ResourceId</code> property.</p>
    #               </dd>
    #               <dt>SERVICE</dt>
    #               <dd>
    #                  <p>The service ID is returned in the <code>ResourceId</code> property.</p>
    #               </dd>
    #               <dt>INSTANCE</dt>
    #               <dd>
    #                  <p>The instance ID is returned in the <code>ResourceId</code> property.</p>
    #               </dd>
    #            </dl>
    #   @return [Hash<String, String>]
    class Operation < Struct.new(
      :id,
      :type,
      :status,
      :error_message,
      :error_code,
      :create_date,
      :update_date,
      :targets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that lets you select the operations that you want to list.</p>
    # @!attribute name
    #   <p>Specify the operations that you want to get:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>NAMESPACE_ID</b>: Gets operations related to specified namespaces.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SERVICE_ID</b>: Gets operations related to specified services.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>STATUS</b>: Gets operations based on the status of the operations:
    #         <code>SUBMITTED</code>, <code>PENDING</code>, <code>SUCCEED</code>, or <code>FAIL</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TYPE</b>: Gets specified types of operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UPDATE_DATE</b>: Gets operations that changed status during a specified
    #        date/time range. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>Specify values that are applicable to the value that you specify for <code>Name</code>: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>NAMESPACE_ID</b>: Specify one namespace ID.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SERVICE_ID</b>: Specify one service ID.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>STATUS</b>: Specify one or more statuses: <code>SUBMITTED</code>,
    #         <code>PENDING</code>, <code>SUCCEED</code>, or <code>FAIL</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TYPE</b>: Specify one or more of the following types:
    #         <code>CREATE_NAMESPACE</code>, <code>DELETE_NAMESPACE</code>, <code>UPDATE_SERVICE</code>,
    #         <code>REGISTER_INSTANCE</code>, or <code>DEREGISTER_INSTANCE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UPDATE_DATE</b>: Specify a start date and an end date in Unix date/time
    #        format and Coordinated Universal Time (UTC). The start date must be the first value.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>The operator that you want to use to determine whether an operation matches the specified value. Valid
    #      values for condition include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EQ</code>: When you specify <code>EQ</code> for the condition, you can specify only one value.
    #         <code>EQ</code> is supported for <code>NAMESPACE_ID</code>, <code>SERVICE_ID</code>, <code>STATUS</code>, and
    #         <code>TYPE</code>. <code>EQ</code> is the default condition and can be omitted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN</code>: When you specify <code>IN</code> for the condition, you can specify a list of one or
    #        more values. <code>IN</code> is supported for <code>STATUS</code> and <code>TYPE</code>. An operation must
    #        match one of the specified values to be returned in the response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BETWEEN</code>: Specify a start date and an end date in Unix date/time format and Coordinated
    #        Universal Time (UTC). The start date must be the first value. <code>BETWEEN</code> is supported for
    #         <code>UPDATE_DATE</code>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class OperationFilter < Struct.new(
      :name,
      :values,
      :condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>No operation exists with the specified ID.</p>
    # @!attribute message
    #   @return [String]
    class OperationNotFound < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about an operation that matches the criteria that you specified in
    #    a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html">ListOperations</a>
    #    request.</p>
    # @!attribute id
    #   <p>The ID for an operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the operation. Values include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>SUBMITTED</b>: This is the initial state immediately after you submit a
    #        request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PENDING</b>: Cloud Map is performing the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SUCCESS</b>: The operation succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAIL</b>: The operation failed. For the failure reason, see
    #         <code>ErrorMessage</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class OperationSummary < Struct.new(
      :id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updated properties for the private
    #    DNS namespace.</p>
    # @!attribute description
    #   <p>An updated description for the
    #      private DNS namespace.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>Properties to be updated in the
    #      private DNS namespace.</p>
    #   @return [Types::PrivateDnsNamespacePropertiesChange]
    class PrivateDnsNamespaceChange < Struct.new(
      :description,
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>DNS properties for the private DNS
    #    namespace.</p>
    # @!attribute dns_properties
    #   <p>DNS properties for the private DNS
    #      namespace.</p>
    #   @return [Types::PrivateDnsPropertiesMutable]
    class PrivateDnsNamespaceProperties < Struct.new(
      :dns_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updated properties for the private
    #    DNS namespace.</p>
    # @!attribute dns_properties
    #   <p>Updated DNS properties for the
    #      private DNS namespace.</p>
    #   @return [Types::PrivateDnsPropertiesMutableChange]
    class PrivateDnsNamespacePropertiesChange < Struct.new(
      :dns_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>DNS properties for the private DNS
    #    namespace.</p>
    # @!attribute soa
    #   <p>Fields for the Start of Authority
    #      (SOA) record for the hosted zone for the private DNS namespace.</p>
    #   @return [Types::SOA]
    class PrivateDnsPropertiesMutable < Struct.new(
      :soa,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updated DNS properties for the
    #    private DNS namespace.</p>
    # @!attribute soa
    #   <p>Updated fields for the Start of
    #      Authority (SOA) record for the hosted zone for the private DNS namespace.</p>
    #   @return [Types::SOAChange]
    class PrivateDnsPropertiesMutableChange < Struct.new(
      :soa,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updated properties for the public
    #    DNS namespace.</p>
    # @!attribute description
    #   <p>An updated description for the
    #      public DNS namespace.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>Properties to be updated in the
    #      public DNS namespace.</p>
    #   @return [Types::PublicDnsNamespacePropertiesChange]
    class PublicDnsNamespaceChange < Struct.new(
      :description,
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>DNS properties for the public DNS
    #    namespace.</p>
    # @!attribute dns_properties
    #   <p>DNS properties for the public DNS
    #      namespace.</p>
    #   @return [Types::PublicDnsPropertiesMutable]
    class PublicDnsNamespaceProperties < Struct.new(
      :dns_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updated properties for the public
    #    DNS namespace.</p>
    # @!attribute dns_properties
    #   <p>Updated DNS properties for the
    #      hosted zone for the public DNS namespace.</p>
    #   @return [Types::PublicDnsPropertiesMutableChange]
    class PublicDnsNamespacePropertiesChange < Struct.new(
      :dns_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>DNS properties for the public DNS
    #    namespace.</p>
    # @!attribute soa
    #   <p>Start of Authority (SOA) record for
    #      the hosted zone for the public DNS namespace.</p>
    #   @return [Types::SOA]
    class PublicDnsPropertiesMutable < Struct.new(
      :soa,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updated DNS properties for the
    #    public DNS namespace.</p>
    # @!attribute soa
    #   <p>Updated fields for the Start of
    #      Authority (SOA) record for the hosted zone for the public DNS namespace.</p>
    #   @return [Types::SOAChange]
    class PublicDnsPropertiesMutableChange < Struct.new(
      :soa,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The ID of the service that you want to use for settings for the instance.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>An identifier that you want to associate with the instance. Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>If the service that's specified by <code>ServiceId</code> includes settings for an <code>SRV</code>
    #        record, the value of <code>InstanceId</code> is automatically included as part of the value for the
    #         <code>SRV</code> record. For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type">DnsRecord > Type</a>.</p>
    #               </li>
    #               <li>
    #                  <p>You can use this value to update an existing instance.</p>
    #               </li>
    #               <li>
    #                  <p>To register a new instance, you must specify a value that's unique among instances that you register by
    #        using the same service. </p>
    #               </li>
    #               <li>
    #                  <p>If you specify an existing <code>InstanceId</code> and <code>ServiceId</code>, Cloud Map updates the
    #        existing DNS records, if any. If there's also an existing health check, Cloud Map deletes the old health
    #        check and creates a new one. </p>
    #                  <note>
    #                     <p>The health check isn't deleted immediately, so it will still appear for a while if you submit a
    #          <code>ListHealthChecks</code> request, for example.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Do not include sensitive information in <code>InstanceId</code> if the namespace is discoverable by public
    #       DNS queries and any <code>Type</code> member of <code>DnsRecord</code> for the service contains
    #        <code>SRV</code> because the <code>InstanceId</code> is discoverable by public DNS queries.</p>
    #            </note>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>RegisterInstance</code> requests
    #      to be retried without the risk of executing the operation twice. You must use a unique
    #       <code>CreatorRequestId</code> string every time you submit a <code>RegisterInstance</code> request if you're
    #      registering additional instances for the same namespace and service. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/time stamp).</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A string map that contains the following information for the service that you specify in
    #       <code>ServiceId</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>The attributes that apply to the records that are defined in the service. </p>
    #               </li>
    #               <li>
    #                  <p>For each attribute, the applicable value.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Do not include sensitive information in the attributes if the namespace is discoverable by public DNS
    #       queries.</p>
    #            </important>
    #            <p>The following are the supported attribute keys.</p>
    #            <dl>
    #               <dt>AWS_ALIAS_DNS_NAME</dt>
    #               <dd>
    #                  <p>If you want Cloud Map to create an Amazon Route 53 alias record that routes traffic to an Elastic Load Balancing load
    #         balancer, specify the DNS name that's associated with the load balancer. For information about how to get the
    #         DNS name, see "DNSName" in the topic <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html">AliasTarget</a> in the
    #          <i>Route 53 API Reference</i>.</p>
    #                  <p>Note the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The configuration for the service that's specified by <code>ServiceId</code> must include settings for
    #           an <code>A</code> record, an <code>AAAA</code> record, or both.</p>
    #                     </li>
    #                     <li>
    #                        <p>In the service that's specified by <code>ServiceId</code>, the value of <code>RoutingPolicy</code>
    #           must be <code>WEIGHTED</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If the service that's specified by <code>ServiceId</code> includes <code>HealthCheckConfig</code>
    #           settings, Cloud Map will create the Route 53 health check, but it doesn't associate the health check with the
    #           alias record.</p>
    #                     </li>
    #                     <li>
    #                        <p>Cloud Map currently doesn't support creating alias records that route traffic to Amazon Web Services
    #           resources other than Elastic Load Balancing load balancers.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you specify a value for <code>AWS_ALIAS_DNS_NAME</code>, don't specify values for any of the
    #            <code>AWS_INSTANCE</code> attributes.</p>
    #                     </li>
    #                     <li>
    #                        <p>The <code>AWS_ALIAS_DNS_NAME</code> is not supported in the GovCloud (US) Regions.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>AWS_EC2_INSTANCE_ID</dt>
    #               <dd>
    #                  <p>
    #                     <i>HTTP namespaces only.</i> The Amazon EC2 instance ID for the instance. If the
    #          <code>AWS_EC2_INSTANCE_ID</code> attribute is specified, then the only other attribute that can be specified
    #         is <code>AWS_INIT_HEALTH_STATUS</code>. When the <code>AWS_EC2_INSTANCE_ID</code> attribute is specified,
    #         then the <code>AWS_INSTANCE_IPV4</code> attribute will be filled out with the primary private IPv4
    #         address.</p>
    #               </dd>
    #               <dt>AWS_INIT_HEALTH_STATUS</dt>
    #               <dd>
    #                  <p>If the service configuration includes <code>HealthCheckCustomConfig</code>, you can optionally use
    #          <code>AWS_INIT_HEALTH_STATUS</code> to specify the initial status of the custom health check,
    #          <code>HEALTHY</code> or <code>UNHEALTHY</code>. If you don't specify a value for
    #          <code>AWS_INIT_HEALTH_STATUS</code>, the initial status is <code>HEALTHY</code>.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_CNAME</dt>
    #               <dd>
    #                  <p>If the service configuration includes a <code>CNAME</code> record, the domain name that you want Route 53
    #         to return in response to DNS queries (for example, <code>example.com</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>CNAME</code> record.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV4</dt>
    #               <dd>
    #                  <p>If the service configuration includes an <code>A</code> record, the IPv4 address that you want Route 53 to
    #         return in response to DNS queries (for example, <code>192.0.2.44</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>A</code> record. If the service includes settings for an <code>SRV</code> record, you must specify a
    #         value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV6</dt>
    #               <dd>
    #                  <p>If the service configuration includes an <code>AAAA</code> record, the IPv6 address that you want Route 53
    #         to return in response to DNS queries (for example,
    #         <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>AAAA</code> record. If the service includes settings for an <code>SRV</code> record, you must specify
    #         a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_PORT</dt>
    #               <dd>
    #                  <p>If the service includes an <code>SRV</code> record, the value that you want Route 53 to return for the
    #         port.</p>
    #                  <p>If the service includes <code>HealthCheckConfig</code>, the port on the endpoint that you want Route 53 to
    #         send requests to. </p>
    #                  <p>This value is required if you specified settings for an <code>SRV</code> record or a Route 53 health check
    #         when you created the service.</p>
    #               </dd>
    #               <dt>Custom attributes</dt>
    #               <dd>
    #                  <p>You can add up to 30 custom attributes. For each key-value pair, the maximum length of the attribute
    #         name is 255 characters, and the maximum length of the attribute value is 1,024 characters. The total size of
    #         all provided attributes (sum of all keys and values) must not exceed 5,000 characters.</p>
    #               </dd>
    #            </dl>
    #   @return [Hash<String, String>]
    class RegisterInstanceRequest < Struct.new(
      :service_id,
      :instance_id,
      :creator_request_id,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully.
    #                                   To get the status of the operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class RegisterInstanceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation can't be completed because you've reached the quota for the number of requests. For more
    #    information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/throttling.html">Cloud Map API request
    #     throttling quota</a> in the <i>Cloud Map Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class RequestLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource can't be deleted because it contains other resources. For example, you can't delete
    #    a service that contains any instances.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource can't be created because you've reached the quota on the number of resources.</p>
    # @!attribute message
    #   @return [String]
    class ResourceLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation can't be completed because the resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Start of Authority (SOA) properties
    #    for a public or private DNS namespace.</p>
    # @!attribute ttl
    #   <p>The time to live (TTL) for purposes
    #      of negative caching.</p>
    #   @return [Integer]
    class SOA < Struct.new(
      :ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updated Start of Authority (SOA)
    #    properties for a public or private DNS namespace.</p>
    # @!attribute ttl
    #   <p>The updated time to live (TTL) for
    #      purposes of negative caching.</p>
    #   @return [Integer]
    class SOAChange < Struct.new(
      :ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about the specified service.</p>
    # @!attribute id
    #   <p>The ID that Cloud Map assigned to the service when you created it.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that Cloud Map assigns to the service when you create it.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The ID of the namespace that was used to create the service.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the service.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>The number of instances that are currently associated with the service. Instances that were previously
    #      associated with the service but that are deleted aren't included in the count. The count might not reflect
    #      pending registrations and deregistrations.</p>
    #   @return [Integer]
    # @!attribute dns_config
    #   <p>A complex type that contains information about the Route 53 DNS records that you want Cloud Map to create
    #      when you register an instance.</p>
    #            <important>
    #               <p>The record types of a service can only be changed by deleting the service and recreating it with a new
    #        <code>Dnsconfig</code>.</p>
    #            </important>
    #   @return [Types::DnsConfig]
    # @!attribute type
    #   <p>Describes the systems that can be used to discover the service instances.</p>
    #            <dl>
    #               <dt>DNS_HTTP</dt>
    #               <dd>
    #                  <p>The service instances can be discovered using either DNS queries or the <code>DiscoverInstances</code>
    #         API operation.</p>
    #               </dd>
    #               <dt>HTTP</dt>
    #               <dd>
    #                  <p>The service instances can only be discovered using the <code>DiscoverInstances</code> API
    #         operation.</p>
    #               </dd>
    #               <dt>DNS</dt>
    #               <dd>
    #                  <p>Reserved.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute health_check_config
    #   <p>
    #               <i>Public DNS and HTTP namespaces only.</i> A complex type that contains settings for an
    #      optional health check. If you specify settings for a health check, Cloud Map associates the health check with
    #      the records that you specify in <code>DnsConfig</code>.</p>
    #            <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p>
    #   @return [Types::HealthCheckConfig]
    # @!attribute health_check_custom_config
    #   <p>A complex type that contains information about an optional custom health check.</p>
    #            <important>
    #               <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code>
    #       or <code>HealthCheckConfig</code> but not both.</p>
    #            </important>
    #   @return [Types::HealthCheckCustomConfig]
    # @!attribute create_date
    #   <p>The date and time that the service was created, in Unix format and Coordinated Universal Time (UTC). The
    #      value of <code>CreateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code>
    #      represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried without the risk
    #      of running the operation twice. <code>CreatorRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    #   @return [String]
    class Service < Struct.new(
      :id,
      :arn,
      :name,
      :namespace_id,
      :description,
      :instance_count,
      :dns_config,
      :type,
      :health_check_config,
      :health_check_custom_config,
      :create_date,
      :creator_request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service can't be created because a service with the same name already exists.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>The <code>CreatorRequestId</code> that was used to create the service.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The ID of the existing service.</p>
    #   @return [String]
    class ServiceAlreadyExists < Struct.new(
      :message,
      :creator_request_id,
      :service_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about attributes associated with a specific service.</p>
    # @!attribute service_arn
    #   <p>The ARN of the service that the attributes are associated with.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A string map that contains the following information for the service that you specify in
    #      <code>ServiceArn</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>The attributes that apply to the service. </p>
    #               </li>
    #               <li>
    #                  <p>For each attribute, the applicable value.</p>
    #               </li>
    #            </ul>
    #            <p>You can specify a total of 30 attributes.</p>
    #   @return [Hash<String, String>]
    class ServiceAttributes < Struct.new(
      :service_arn,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The attribute can't be added to the service because you've exceeded the quota for the number of attributes you can add to a service.</p>
    # @!attribute message
    #   @return [String]
    class ServiceAttributesLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains changes to an existing service.</p>
    # @!attribute description
    #   <p>A description for the service.</p>
    #   @return [String]
    # @!attribute dns_config
    #   <p>Information about the Route 53 DNS records that you want Cloud Map to create when you register an
    #      instance.</p>
    #   @return [Types::DnsConfigChange]
    # @!attribute health_check_config
    #   <p>
    #               <i>Public DNS and HTTP namespaces only.</i> Settings for an optional health check. If you
    #      specify settings for a health check, Cloud Map associates the health check with the records that you specify in
    #       <code>DnsConfig</code>.</p>
    #   @return [Types::HealthCheckConfig]
    class ServiceChange < Struct.new(
      :description,
      :dns_config,
      :health_check_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that lets you specify the namespaces that you want to list services for.</p>
    # @!attribute name
    #   <p>Specify <code>NAMESPACE_ID</code>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values that are applicable to the value that you specify for <code>Condition</code> to filter the list
    #      of services.</p>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>The operator that you want to use to determine whether a service is returned by <code>ListServices</code>.
    #      Valid values for <code>Condition</code> include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EQ</code>: When you specify <code>EQ</code>, specify one namespace ID for <code>Values</code>.
    #         <code>EQ</code> is the default condition and can be omitted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ServiceFilter < Struct.new(
      :name,
      :values,
      :condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>No service exists with the specified ID.</p>
    # @!attribute message
    #   @return [String]
    class ServiceNotFound < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about a specified service.</p>
    # @!attribute id
    #   <p>The ID that Cloud Map assigned to the service when you created it.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that Cloud Map assigns to the service when you create it.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Describes the systems that can be used to discover the service instances.</p>
    #            <dl>
    #               <dt>DNS_HTTP</dt>
    #               <dd>
    #                  <p>The service instances can be discovered using either DNS queries or the <code>DiscoverInstances</code>
    #         API operation.</p>
    #               </dd>
    #               <dt>HTTP</dt>
    #               <dd>
    #                  <p>The service instances can only be discovered using the <code>DiscoverInstances</code> API
    #         operation.</p>
    #               </dd>
    #               <dt>DNS</dt>
    #               <dd>
    #                  <p>Reserved.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute description
    #   <p>The description that you specify when you create the service.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>The number of instances that are currently associated with the service. Instances that were previously
    #      associated with the service but that are deleted aren't included in the count. The count might not reflect
    #      pending registrations and deregistrations.</p>
    #   @return [Integer]
    # @!attribute dns_config
    #   <p>Information about the Route 53 DNS records that you want Cloud Map to create when you register an
    #      instance.</p>
    #   @return [Types::DnsConfig]
    # @!attribute health_check_config
    #   <p>
    #               <i>Public DNS and HTTP namespaces only.</i> Settings for an optional health check. If you
    #      specify settings for a health check, Cloud Map associates the health check with the records that you specify in
    #       <code>DnsConfig</code>.</p>
    #   @return [Types::HealthCheckConfig]
    # @!attribute health_check_custom_config
    #   <p>Information about an optional custom health check. A custom health check, which requires that you use a
    #      third-party health checker to evaluate the health of your resources, is useful in the following
    #      circumstances:</p>
    #            <ul>
    #               <li>
    #                  <p>You can't use a health check that's defined by <code>HealthCheckConfig</code> because the resource isn't
    #        available over the internet. For example, you can use a custom health check when the instance is in an Amazon
    #        VPC. (To check the health of resources in a VPC, the health checker must also be in the VPC.)</p>
    #               </li>
    #               <li>
    #                  <p>You want to use a third-party health checker regardless of where your resources are located.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code>
    #       or <code>HealthCheckConfig</code> but not both.</p>
    #            </important>
    #   @return [Types::HealthCheckCustomConfig]
    # @!attribute create_date
    #   <p>The date and time that the service was created.</p>
    #   @return [Time]
    class ServiceSummary < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :description,
      :instance_count,
      :dns_config,
      :health_check_config,
      :health_check_custom_config,
      :create_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A custom key-value pair that's associated with a resource.</p>
    # @!attribute key
    #   <p>The key identifier, or name, of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The string value that's associated with the key of the tag. You can set the value of a tag to an empty
    #      string, but you can't set the value of a tag to null.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the specified resource. Specifying the tag key is required. You can set the value of a
    #      tag to an empty string, but you can't set the value of a tag to null.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The list of tags on the resource is over the quota. The maximum number of tags that can be applied to a
    #    resource is 50.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the namespace that you
    #      want to update.</p>
    #   @return [String]
    # @!attribute updater_request_id
    #   <p>A unique string that identifies the
    #      request and that allows failed <code>UpdateHttpNamespace</code> requests to be retried without the risk of
    #      running the operation twice. <code>UpdaterRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>Updated properties for the the HTTP
    #      namespace.</p>
    #   @return [Types::HttpNamespaceChange]
    class UpdateHttpNamespaceRequest < Struct.new(
      :id,
      :updater_request_id,
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully.
    #                                   To get the status of the operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class UpdateHttpNamespaceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The ID of the service that includes the configuration for the custom health check that you want to change
    #      the status for.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the instance that you want to change the health status for.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status of the instance, <code>HEALTHY</code> or <code>UNHEALTHY</code>.</p>
    #   @return [String]
    class UpdateInstanceCustomHealthStatusRequest < Struct.new(
      :service_id,
      :instance_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the namespace that you
    #      want to update.</p>
    #   @return [String]
    # @!attribute updater_request_id
    #   <p>A unique string that identifies the
    #      request and that allows failed <code>UpdatePrivateDnsNamespace</code> requests to be retried without the risk of
    #      running the operation twice. <code>UpdaterRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>Updated properties for the private
    #      DNS namespace.</p>
    #   @return [Types::PrivateDnsNamespaceChange]
    class UpdatePrivateDnsNamespaceRequest < Struct.new(
      :id,
      :updater_request_id,
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully.
    #                                   To get the status of the operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class UpdatePrivateDnsNamespaceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the namespace being
    #      updated.</p>
    #   @return [String]
    # @!attribute updater_request_id
    #   <p>A unique string that identifies the
    #      request and that allows failed <code>UpdatePublicDnsNamespace</code> requests to be retried without the risk of
    #      running the operation twice. <code>UpdaterRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>Updated properties for the public
    #      DNS namespace.</p>
    #   @return [Types::PublicDnsNamespaceChange]
    class UpdatePublicDnsNamespaceRequest < Struct.new(
      :id,
      :updater_request_id,
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully.
    #                                   To get the status of the operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class UpdatePublicDnsNamespaceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_id
    #   <p>The ID of the service that you want to update.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A string map that contains attribute key-value pairs.</p>
    #   @return [Hash<String, String>]
    class UpdateServiceAttributesRequest < Struct.new(
      :service_id,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateServiceAttributesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service that you want to update.</p>
    #   @return [String]
    # @!attribute service
    #   <p>A complex type that contains the new settings for the service. You can specify a maximum of 30 attributes (key-value pairs).</p>
    #   @return [Types::ServiceChange]
    class UpdateServiceRequest < Struct.new(
      :id,
      :service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A value that you can use to determine whether the request completed successfully.
    #                                   To get the status of the operation, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    #   @return [String]
    class UpdateServiceResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
