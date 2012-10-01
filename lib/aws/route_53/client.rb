# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    class Client < Core::RESTClient

      define_client_methods('2012-02-29')

      # @private
      CACHEABLE_REQUESTS = Set[]

      ## client methods ##

      # @!method change_resource_record_sets(options = {})
      # Calls the POST ChangeResourceRecordSets API operation.
      # @param [Hash] options
      # * +:hosted_zone_id+ - *required* - (String) Alias resource record sets
      #   only: The value of the hosted zone ID, CanonicalHostedZoneNameId, for
      #   the LoadBalancer. Currently, Route 53 supports alias resource record
      #   sets only for Elastic Load Balancing. For more information, an
      #   example, and several ways to get the hosted zone ID for the
      #   LoadBalancer, see Creating Alias Resource Record Sets for Elastic
      #   Load Balancing in the Amazon Route 53 Developer Guide.
      # * +:change_batch+ - *required* - (Hash) A complex type that contains an
      #   optional comment and the Changes element.
      #   * +:comment+ - (String) Optional: Any comments you want to include
      #     about a change batch request.
      #   * +:changes+ - *required* - (Array<Hash>) A complex type that
      #     contains one Change element for each resource record set that you
      #     want to create or delete.
      #     * +:action+ - *required* - (String) The action to perform. Valid
      #       values: CREATE | DELETE
      #     * +:resource_record_set+ - *required* - (Hash) Information about
      #       the resource record set to create or delete.
      #       * +:name+ - *required* - (String) The domain name of the current
      #         resource record set.
      #       * +:type+ - *required* - (String) The type of the current
      #         resource record set.
      #       * +:set_identifier+ - (String) Weighted resource record sets
      #         only: An identifier that differentiates among multiple resource
      #         record sets that have the same combination of DNS name and
      #         type.
      #       * +:weight+ - (Integer) Weighted resource record sets only: Among
      #         resource record sets that have the same combination of DNS name
      #         and type, a value that determines what portion of traffic for
      #         the current resource record set is routed to the associated
      #         location.
      #       * +:region+ - (String) Regional resource record sets only: Among
      #         resource record sets that have the same combination of DNS name
      #         and type, a value that specifies the AWS region for the current
      #         resource record set.
      #       * +:ttl+ - (Integer) The cache time to live for the current
      #         resource record set.
      #       * +:resource_records+ - (Array<Hash>) A complex type that
      #         contains the resource records for the current resource record
      #         set.
      #         * +:value+ - *required* - (String) The value of the Value
      #           element for the current resource record set.
      #       * +:alias_target+ - (Hash) Alias resource record sets only:
      #         Information about the Elastic Load Balancing LoadBalancer to
      #         which you are redirecting traffic.
      #         * +:hosted_zone_id+ - *required* - (String) Alias resource
      #           record sets only: The value of the hosted zone ID,
      #           CanonicalHostedZoneNameId, for the LoadBalancer. Currently,
      #           Route 53 supports alias resource record sets only for Elastic
      #           Load Balancing. For more information, an example, and several
      #           ways to get the hosted zone ID for the LoadBalancer, see
      #           Creating Alias Resource Record Sets for Elastic Load
      #           Balancing in the Amazon Route 53 Developer Guide.
      #         * +:dns_name+ - *required* - (String) Alias resource record
      #           sets only: The external DNS name associated with the
      #           LoadBalancer. Currently, Route 53 supports alias resource
      #           record sets only for Elastic Load Balancing. For more
      #           information, an example, and several ways to get the hosted
      #           zone ID for the LoadBalancer, see Creating Alias Resource
      #           Record Sets for Elastic Load Balancing in the Amazon Route 53
      #           Developer Guide.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:change_info+ - (Hash)
      #     * +:id+ - (String)
      #     * +:status+ - (String)
      #     * +:submitted_at+ - (Time)
      #     * +:comment+ - (String)

      # @!method create_hosted_zone(options = {})
      # Calls the POST CreateHostedZone API operation.
      # @param [Hash] options
      # * +:name+ - *required* - (String) The name of the domain. This must be
      #   a fully-specified domain, for example, www.example.com. The trailing
      #   dot is optional; Route 53 assumes that the domain name is fully
      #   qualified. This means that Route 53 treats www.example.com (without a
      #   trailing dot) and www.example.com. (with a trailing dot) as
      #   identical. This is the name you have registered with your DNS
      #   registrar. You should ask your registrar to change the authoritative
      #   name servers for your domain to the set of NameServers elements
      #   returned in DelegationSet.
      # * +:caller_reference+ - *required* - (String) A unique string that
      #   identifies the request and that allows failed CreateHostedZone
      #   requests to be retried without the risk of executing the operation
      #   twice. You must use a unique CallerReference string every time you
      #   create a hosted zone. CallerReference can be any unique string; you
      #   might choose to use a string that identifies your project, such as
      #   DNSMigration_01. Valid characters are any Unicode code points that
      #   are legal in an XML 1.0 document. The UTF-8 encoding of the value
      #   must be less than 128 bytes.
      # * +:hosted_zone_config+ - (Hash) A complex type that contains an
      #   optional comment about your hosted zone.
      #   * +:comment+ - (String) An optional comment about your hosted zone.
      #     If you don't want to specify a comment, you can omit the
      #     HostedZoneConfig and Comment elements from the XML document.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:hosted_zone+ - (Hash)
      #     * +:id+ - (String)
      #     * +:name+ - (String)
      #     * +:caller_reference+ - (String)
      #     * +:config+ - (Hash)
      #       * +:comment+ - (String)
      #     * +:resource_record_set_count+ - (Integer)
      #   * +:change_info+ - (Hash)
      #     * +:id+ - (String)
      #     * +:status+ - (String)
      #     * +:submitted_at+ - (Time)
      #     * +:comment+ - (String)
      #   * +:delegation_set+ - (Hash)
      #     * +:name_servers+ - (Array<String>)

      # @!method delete_hosted_zone(options = {})
      # Calls the DELETE DeleteHostedZone API operation.
      # @param [Hash] options
      # * +:id+ - *required* - (String) The ID of the request. Include this ID
      #   in a call to GetChange to track when the change has propagated to all
      #   Route 53 DNS servers.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:change_info+ - (Hash)
      #     * +:id+ - (String)
      #     * +:status+ - (String)
      #     * +:submitted_at+ - (Time)
      #     * +:comment+ - (String)

      # @!method get_change(options = {})
      # Calls the GET GetChange API operation.
      # @param [Hash] options
      # * +:id+ - *required* - (String) The ID of the change batch request. The
      #   value that you specify here is the value that
      #   ChangeResourceRecordSets returned in the Id element when you
      #   submitted the request.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:change_info+ - (Hash)
      #     * +:id+ - (String)
      #     * +:status+ - (String)
      #     * +:submitted_at+ - (Time)
      #     * +:comment+ - (String)

      # @!method get_hosted_zone(options = {})
      # Calls the GET GetHostedZone API operation.
      # @param [Hash] options
      # * +:id+ - *required* - (String) The ID of the hosted zone for which you
      #   want to get a list of the name servers in the delegation set.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:hosted_zone+ - (Hash)
      #     * +:id+ - (String)
      #     * +:name+ - (String)
      #     * +:caller_reference+ - (String)
      #     * +:config+ - (Hash)
      #       * +:comment+ - (String)
      #     * +:resource_record_set_count+ - (Integer)
      #   * +:delegation_set+ - (Hash)
      #     * +:name_servers+ - (Array<String>)

      # @!method list_hosted_zones(options = {})
      # Calls the GET ListHostedZones API operation.
      # @param [Hash] options
      # * +:marker+ - (String) If the request returned more than one page of
      #   results, submit another request and specify the value of NextMarker
      #   from the last response in the marker parameter to get the next page
      #   of results.
      # * +:max_items+ - (Integer) Specify the maximum number of hosted zones
      #   to return per page of results.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:hosted_zones+ - (Array<Hash>)
      #     * +:id+ - (String)
      #     * +:name+ - (String)
      #     * +:caller_reference+ - (String)
      #     * +:config+ - (Hash)
      #       * +:comment+ - (String)
      #     * +:resource_record_set_count+ - (Integer)
      #   * +:marker+ - (String)
      #   * +:is_truncated+ - (Boolean)
      #   * +:next_marker+ - (String)
      #   * +:max_items+ - (Integer)

      # @!method list_resource_record_sets(options = {})
      # Calls the GET ListResourceRecordSets API operation.
      # @param [Hash] options
      # * +:hosted_zone_id+ - *required* - (String) The ID of the hosted zone
      #   that contains the resource record sets that you want to get.
      # * +:start_record_name+ - (String) The first name in the lexicographic
      #   ordering of domain names that you want the ListResourceRecordSets
      #   request to list.
      # * +:start_record_type+ - (String) The DNS type at which to begin the
      #   listing of resource record sets. Valid values: A | AAAA | CNAME | MX
      #   | NS | PTR | SOA | SPF | SRV | TXT Values for Weighted Resource
      #   Record Sets: A | AAAA | CNAME | TXT Values for Alias Resource Record
      #   Sets: A | AAAA Constraint: Specifying type without specifying name
      #   returns an InvalidInput error.
      # * +:start_record_identifier+ - (String) Weighted resource record sets
      #   only: If results were truncated for a given DNS name and type,
      #   specify the value of
      #   ListResourceRecordSetsResponse$NextRecordIdentifier from the previous
      #   response to get the next resource record set that has the current DNS
      #   name and type.
      # * +:max_items+ - (Integer) The maximum number of records you want in
      #   the response body.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:resource_record_sets+ - (Array<Hash>)
      #     * +:name+ - (String)
      #     * +:type+ - (String)
      #     * +:set_identifier+ - (String)
      #     * +:weight+ - (Integer)
      #     * +:region+ - (String)
      #     * +:ttl+ - (Integer)
      #     * +:resource_records+ - (Array<Hash>)
      #       * +:value+ - (String)
      #     * +:alias_target+ - (Hash)
      #       * +:hosted_zone_id+ - (String)
      #       * +:dns_name+ - (String)
      #   * +:is_truncated+ - (Boolean)
      #   * +:next_record_name+ - (String)
      #   * +:next_record_type+ - (String)
      #   * +:next_record_identifier+ - (String)
      #   * +:max_items+ - (Integer)

      ## end client methods ##

    end
  end
end
