# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class Route53

    # Client class for Route53.
    class Client < Core::RESTXMLClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method change_resource_record_sets(options = {})
      # Calls the POST ChangeResourceRecordSets API operation.
      # @param [Hash] options
      # * `:hosted_zone_id` - *required* - (String) Alias resource record sets
      #   only: The value of the hosted zone ID, CanonicalHostedZoneNameId, for
      #   the LoadBalancer. Currently, Route 53 supports alias resource record
      #   sets only for Elastic Load Balancing. For more information, an
      #   example, and several ways to get the hosted zone ID for the
      #   LoadBalancer, see Creating Alias Resource Record Sets for Elastic
      #   Load Balancing in the Amazon Route 53 Developer Guide.
      # * `:change_batch` - *required* - (Hash) A complex type that contains an
      #   optional comment and the Changes element.
      #   * `:comment` - (String) Optional: Any comments you want to include
      #     about a change batch request.
      #   * `:changes` - *required* - (Array<Hash>) A complex type that
      #     contains one Change element for each resource record set that you
      #     want to create or delete.
      #     * `:action` - *required* - (String) The action to perform. Valid
      #       values: CREATE | DELETE Valid values include:
      #       * `CREATE`
      #       * `DELETE`
      #     * `:resource_record_set` - *required* - (Hash) Information about
      #       the resource record set to create or delete.
      #       * `:name` - *required* - (String) The domain name of the current
      #         resource record set.
      #       * `:type` - *required* - (String) The type of the current
      #         resource record set. Valid values include:
      #         * `SOA`
      #         * `A`
      #         * `TXT`
      #         * `NS`
      #         * `CNAME`
      #         * `MX`
      #         * `PTR`
      #         * `SRV`
      #         * `SPF`
      #         * `AAAA`
      #       * `:set_identifier` - (String) Weighted resource record sets
      #         only: An identifier that differentiates among multiple resource
      #         record sets that have the same combination of DNS name and
      #         type.
      #       * `:weight` - (Integer) Weighted resource record sets only: Among
      #         resource record sets that have the same combination of DNS name
      #         and type, a value that determines what portion of traffic for
      #         the current resource record set is routed to the associated
      #         location.
      #       * `:region` - (String) Regional resource record sets only: Among
      #         resource record sets that have the same combination of DNS name
      #         and type, a value that specifies the AWS region for the current
      #         resource record set. Valid values include:
      #         * `us-east-1`
      #         * `us-west-1`
      #         * `us-west-2`
      #         * `eu-west-1`
      #         * `ap-southeast-1`
      #         * `ap-southeast-2`
      #         * `ap-northeast-1`
      #         * `sa-east-1`
      #       * `:failover` - (String) Failover resource record sets only:
      #         Among resource record sets that have the same combination of
      #         DNS name and type, a value that indicates whether the current
      #         resource record set is a primary or secondary resource record
      #         set. A failover set may contain at most one resource record set
      #         marked as primary and one resource record set marked as
      #         secondary. A resource record set marked as primary will be
      #         returned if any of the following are `true` : (1) an associated
      #         health check is passing, (2) if the resource record set is an
      #         alias with the evaluate target health and at least one target
      #         resource record set is healthy, (3) both the primary and
      #         secondary resource record set are failing health checks or (4)
      #         there is no secondary resource record set. A secondary resource
      #         record set will be returned if: (1) the primary is failing a
      #         health check and either the secondary is passing a health check
      #         or has no associated health check, or (2) there is no primary
      #         resource record set. Valid values: PRIMARY | SECONDARY Valid
      #         values include:
      #         * `PRIMARY`
      #         * `SECONDARY`
      #       * `:ttl` - (Integer) The cache time to live for the current
      #         resource record set.
      #       * `:resource_records` - (Array<Hash>) A complex type that
      #         contains the resource records for the current resource record
      #         set.
      #         * `:value` - *required* - (String) The value of the Value
      #           element for the current resource record set.
      #       * `:alias_target` - (Hash) Alias resource record sets only:
      #         Information about the Elastic Load Balancing LoadBalancer to
      #         which you are redirecting traffic.
      #         * `:hosted_zone_id` - *required* - (String) Alias resource
      #           record sets only: The value of the hosted zone ID,
      #           CanonicalHostedZoneNameId, for the LoadBalancer. Currently,
      #           Route 53 supports alias resource record sets only for Elastic
      #           Load Balancing. For more information, an example, and several
      #           ways to get the hosted zone ID for the LoadBalancer, see
      #           Creating Alias Resource Record Sets for Elastic Load
      #           Balancing in the Amazon Route 53 Developer Guide.
      #         * `:dns_name` - *required* - (String) Alias resource record
      #           sets only: The external DNS name associated with the
      #           LoadBalancer. Currently, Route 53 supports alias resource
      #           record sets only for Elastic Load Balancing. For more
      #           information, an example, and several ways to get the hosted
      #           zone ID for the LoadBalancer, see Creating Alias Resource
      #           Record Sets for Elastic Load Balancing in the Amazon Route 53
      #           Developer Guide.
      #         * `:evaluate_target_health` - *required* - (Boolean) Alias
      #           resource record sets only: A boolean value that indicates
      #           whether this Resource Record Set should respect the health
      #           status of any health checks associated with the ALIAS target
      #           record which it is linked to. Currently, Route 53 supports
      #           health checks only for Elastic Load Balancing. For more
      #           information, an example, see Creating Alias Resource Record
      #           Sets for Elastic Load Balancing in the Amazon Route 53
      #           Developer Guide.
      #       * `:health_check_id` - (String) Health Check resource record sets
      #         only, not required for alias resource record sets: An
      #         identifier that is used to identify health check associated
      #         with the resource record set.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:change_info` - (Hash)
      #     * `:id` - (String)
      #     * `:status` - (String)
      #     * `:submitted_at` - (Time)
      #     * `:comment` - (String)

      # @!method create_health_check(options = {})
      # Calls the POST CreateHealthCheck API operation.
      # @param [Hash] options
      # * `:caller_reference` - *required* - (String) A unique string that
      #   identifies the request and that allows failed CreateHealthCheck
      #   requests to be retried without the risk of executing the operation
      #   twice. You must use a unique CallerReference string every time you
      #   create a health check. CallerReference can be any unique string; you
      #   might choose to use a string that identifies your project. Valid
      #   characters are any Unicode code points that are legal in an XML 1.0
      #   document. The UTF-8 encoding of the value must be less than 128
      #   bytes.
      # * `:health_check_config` - *required* - (Hash) A complex type that
      #   contains health check configuration.
      #   * `:ip_address` - *required* - (String) IP Address of the instance
      #     being checked.
      #   * `:port` - (Integer) Port on which connection will be opened to the
      #     instance to health check. For HTTP this defaults to 80 if the port
      #     is not specified.
      #   * `:type` - *required* - (String) The type of health check to be
      #     performed. Currently supported protocols are TCP and HTTP. Valid
      #     values include:
      #     * `HTTP`
      #     * `TCP`
      #   * `:resource_path` - (String) Path to ping on the instance to check
      #     the health. Required only for HTTP health checks, HTTP request is
      #     issued to the instance on the given port and path.
      #   * `:fully_qualified_domain_name` - (String) Fully qualified domain
      #     name of the instance to be health checked.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:health_check` - (Hash)
      #     * `:id` - (String)
      #     * `:caller_reference` - (String)
      #     * `:health_check_config` - (Hash)
      #       * `:ip_address` - (String)
      #       * `:port` - (Integer)
      #       * `:type` - (String)
      #       * `:resource_path` - (String)
      #       * `:fully_qualified_domain_name` - (String)

      # @!method create_hosted_zone(options = {})
      # Calls the POST CreateHostedZone API operation.
      # @param [Hash] options
      # * `:name` - *required* - (String) The name of the domain. This must be
      #   a fully-specified domain, for example, www.example.com. The trailing
      #   dot is optional; Route 53 assumes that the domain name is fully
      #   qualified. This means that Route 53 treats www.example.com (without a
      #   trailing dot) and www.example.com. (with a trailing dot) as
      #   identical. This is the name you have registered with your DNS
      #   registrar. You should ask your registrar to change the authoritative
      #   name servers for your domain to the set of NameServers elements
      #   returned in DelegationSet.
      # * `:caller_reference` - *required* - (String) A unique string that
      #   identifies the request and that allows failed CreateHostedZone
      #   requests to be retried without the risk of executing the operation
      #   twice. You must use a unique CallerReference string every time you
      #   create a hosted zone. CallerReference can be any unique string; you
      #   might choose to use a string that identifies your project, such as
      #   DNSMigration_01. Valid characters are any Unicode code points that
      #   are legal in an XML 1.0 document. The UTF-8 encoding of the value
      #   must be less than 128 bytes.
      # * `:hosted_zone_config` - (Hash) A complex type that contains an
      #   optional comment about your hosted zone.
      #   * `:comment` - (String) An optional comment about your hosted zone.
      #     If you don't want to specify a comment, you can omit the
      #     HostedZoneConfig and Comment elements from the XML document.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:hosted_zone` - (Hash)
      #     * `:id` - (String)
      #     * `:name` - (String)
      #     * `:caller_reference` - (String)
      #     * `:config` - (Hash)
      #       * `:comment` - (String)
      #     * `:resource_record_set_count` - (Integer)
      #   * `:change_info` - (Hash)
      #     * `:id` - (String)
      #     * `:status` - (String)
      #     * `:submitted_at` - (Time)
      #     * `:comment` - (String)
      #   * `:delegation_set` - (Hash)
      #     * `:name_servers` - (Array<String>)

      # @!method delete_health_check(options = {})
      # Calls the DELETE DeleteHealthCheck API operation.
      # @param [Hash] options
      # * `:health_check_id` - *required* - (String) The ID of the health check
      #   to delete.
      # @return [Core::Response]

      # @!method delete_hosted_zone(options = {})
      # Calls the DELETE DeleteHostedZone API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The ID of the request. Include this ID
      #   in a call to GetChange to track when the change has propagated to all
      #   Route 53 DNS servers.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:change_info` - (Hash)
      #     * `:id` - (String)
      #     * `:status` - (String)
      #     * `:submitted_at` - (Time)
      #     * `:comment` - (String)

      # @!method get_change(options = {})
      # Calls the GET GetChange API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The ID of the change batch request. The
      #   value that you specify here is the value that
      #   ChangeResourceRecordSets returned in the Id element when you
      #   submitted the request.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:change_info` - (Hash)
      #     * `:id` - (String)
      #     * `:status` - (String)
      #     * `:submitted_at` - (Time)
      #     * `:comment` - (String)

      # @!method get_health_check(options = {})
      # Calls the GET GetHealthCheck API operation.
      # @param [Hash] options
      # * `:health_check_id` - *required* - (String) The ID of the health check
      #   to retrieve.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:health_check` - (Hash)
      #     * `:id` - (String)
      #     * `:caller_reference` - (String)
      #     * `:health_check_config` - (Hash)
      #       * `:ip_address` - (String)
      #       * `:port` - (Integer)
      #       * `:type` - (String)
      #       * `:resource_path` - (String)
      #       * `:fully_qualified_domain_name` - (String)

      # @!method get_hosted_zone(options = {})
      # Calls the GET GetHostedZone API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The ID of the hosted zone for which you
      #   want to get a list of the name servers in the delegation set.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:hosted_zone` - (Hash)
      #     * `:id` - (String)
      #     * `:name` - (String)
      #     * `:caller_reference` - (String)
      #     * `:config` - (Hash)
      #       * `:comment` - (String)
      #     * `:resource_record_set_count` - (Integer)
      #   * `:delegation_set` - (Hash)
      #     * `:name_servers` - (Array<String>)

      # @!method list_health_checks(options = {})
      # Calls the GET ListHealthChecks API operation.
      # @param [Hash] options
      # * `:marker` - (String) If the request returned more than one page of
      #   results, submit another request and specify the value of NextMarker
      #   from the last response in the marker parameter to get the next page
      #   of results.
      # * `:max_items` - (Integer) Specify the maximum number of health checks
      #   to return per page of results.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:health_checks` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:caller_reference` - (String)
      #     * `:health_check_config` - (Hash)
      #       * `:ip_address` - (String)
      #       * `:port` - (Integer)
      #       * `:type` - (String)
      #       * `:resource_path` - (String)
      #       * `:fully_qualified_domain_name` - (String)
      #   * `:marker` - (String)
      #   * `:is_truncated` - (Boolean)
      #   * `:next_marker` - (String)
      #   * `:max_items` - (String)

      # @!method list_hosted_zones(options = {})
      # Calls the GET ListHostedZones API operation.
      # @param [Hash] options
      # * `:marker` - (String) If the request returned more than one page of
      #   results, submit another request and specify the value of NextMarker
      #   from the last response in the marker parameter to get the next page
      #   of results.
      # * `:max_items` - (Integer) Specify the maximum number of hosted zones
      #   to return per page of results.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:hosted_zones` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:name` - (String)
      #     * `:caller_reference` - (String)
      #     * `:config` - (Hash)
      #       * `:comment` - (String)
      #     * `:resource_record_set_count` - (Integer)
      #   * `:marker` - (String)
      #   * `:is_truncated` - (Boolean)
      #   * `:next_marker` - (String)
      #   * `:max_items` - (Integer)

      # @!method list_resource_record_sets(options = {})
      # Calls the GET ListResourceRecordSets API operation.
      # @param [Hash] options
      # * `:hosted_zone_id` - *required* - (String) The ID of the hosted zone
      #   that contains the resource record sets that you want to get.
      # * `:start_record_name` - (String) The first name in the lexicographic
      #   ordering of domain names that you want the ListResourceRecordSets
      #   request to list.
      # * `:start_record_type` - (String) The DNS type at which to begin the
      #   listing of resource record sets. Valid values: A | AAAA | CNAME | MX
      #   | NS | PTR | SOA | SPF | SRV | TXT Values for Weighted Resource
      #   Record Sets: A | AAAA | CNAME | TXT Values for Alias Resource Record
      #   Sets: A | AAAA Constraint: Specifying type without specifying name
      #   returns an InvalidInput error. Valid values include:
      #   * `SOA`
      #   * `A`
      #   * `TXT`
      #   * `NS`
      #   * `CNAME`
      #   * `MX`
      #   * `PTR`
      #   * `SRV`
      #   * `SPF`
      #   * `AAAA`
      # * `:start_record_identifier` - (String) Weighted resource record sets
      #   only: If results were truncated for a given DNS name and type,
      #   specify the value of
      #   ListResourceRecordSetsResponse$NextRecordIdentifier from the previous
      #   response to get the next resource record set that has the current DNS
      #   name and type.
      # * `:max_items` - (Integer) The maximum number of records you want in
      #   the response body.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:resource_record_sets` - (Array<Hash>)
      #     * `:name` - (String)
      #     * `:type` - (String)
      #     * `:set_identifier` - (String)
      #     * `:weight` - (Integer)
      #     * `:region` - (String)
      #     * `:failover` - (String)
      #     * `:ttl` - (Integer)
      #     * `:resource_records` - (Array<Hash>)
      #       * `:value` - (String)
      #     * `:alias_target` - (Hash)
      #       * `:hosted_zone_id` - (String)
      #       * `:dns_name` - (String)
      #       * `:evaluate_target_health` - (Boolean)
      #     * `:health_check_id` - (String)
      #   * `:is_truncated` - (Boolean)
      #   * `:next_record_name` - (String)
      #   * `:next_record_type` - (String)
      #   * `:next_record_identifier` - (String)
      #   * `:max_items` - (Integer)

      # end client methods #

      define_client_methods('2012-12-12')

    end
  end
end
