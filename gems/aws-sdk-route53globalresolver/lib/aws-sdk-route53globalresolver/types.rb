# frozen_string_literal: true

# This is generated code!

module Aws::Route53GlobalResolver
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have permission to perform this operation. Check your IAM permissions and try again.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an access source.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the access source.</p>
    #   @return [String]
    # @!attribute cidr
    #   <p>The CIDR block that defines the IP address range for the access source.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the access source was created.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique identifier of the access source.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type of the access source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access source.</p>
    #   @return [String]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view that the access source is associated with.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol used by the access source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the access source.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the access source was last updated.</p>
    #   @return [Time]
    class AccessSourcesItem < Struct.new(
      nil,
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a token.</p>
    # @!attribute id
    #   <p>The unique identifier of the token.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the token.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the token was created.</p>
    #   @return [Time]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view associated with the token.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The date and time when the token expires.</p>
    #   @return [Time]
    # @!attribute global_resolver_id
    #   <p>The ID of the global resolver associated with the token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the token.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the token.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the token was last updated.</p>
    #   @return [Time]
    class AccessTokenItem < Struct.new(
      nil,
      :id,
      :arn,
      :created_at,
      :dns_view_id,
      :expires_at,
      :global_resolver_id,
      :name,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute hosted_zone_id
    #   <p>The ID of the Route 53 private hosted zone to associate with the Route 53 Global Resolver resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) of the Route 53 Global Resolver the private hosted zone will be associated to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the private hosted zone association.</p>
    #   @return [String]
    class AssociateHostedZoneInput < Struct.new(
      nil,
      :hosted_zone_id,
      :resource_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>ID of the association.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) of the Route 53 Global Resolver the private hosted zone is associated to.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>ID of the private hosted zone.</p>
    #   @return [String]
    # @!attribute hosted_zone_name
    #   <p>Name of the hosted zone (also the domain associated with the hosted zone).</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the private hosted zone association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the private hosted zone association was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the private hosted zone association was modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Aggregate status for all the Amazon Web Services Regions in which the Route 53 Global Resolver exists.</p>
    #   @return [String]
    class AssociateHostedZoneOutput < Struct.new(
      nil,
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_rules
    #   <p>The <code>BatchCreateFirewallRuleInputItem</code> objects contain the information for each Firewall rule.</p>
    #   @return [Array<Types::BatchCreateFirewallRuleInputItem>]
    class BatchCreateFirewallRuleInput < Struct.new(
      nil,
      :firewall_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a DNS Firewall rule to create in a batch operation.</p>
    # @!attribute action
    #   <p>The action to take when a DNS query matches the firewall rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record type for the custom response when the action is BLOCK.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom domain name for the BLOCK response.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The TTL value for the custom response when the action is BLOCK.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The type of block response to return when the action is BLOCK.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold for advanced threat detection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>Whether to enable advanced DNS threat protection for the firewall rule.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the firewall domain list to associate with the rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the firewall rule.</p>
    #   @return [Integer]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view to associate the firewall rule with.</p>
    #   @return [String]
    # @!attribute q_type
    #   <p>The DNS query type that the firewall rule should match.</p>
    #   @return [String]
    class BatchCreateFirewallRuleInputItem < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :client_token,
      :confidence_threshold,
      :description,
      :dns_advanced_protection,
      :firewall_domain_list_id,
      :name,
      :priority,
      :dns_view_id,
      :q_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failures
    #   <p>High level information about the DNS Firewall rules that failed to create.</p>
    #   @return [Array<Types::BatchCreateFirewallRuleOutputItem>]
    # @!attribute successes
    #   <p>High level information about the DNS Firewall rules that were created.</p>
    #   @return [Array<Types::BatchCreateFirewallRuleOutputItem>]
    class BatchCreateFirewallRuleOutput < Struct.new(
      nil,
      :failures,
      :successes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the result of creating a DNS Firewall rule in a batch operation.</p>
    # @!attribute firewall_rule
    #   <p>The firewall rule that was created in the batch operation.</p>
    #   @return [Types::BatchCreateFirewallRuleResult]
    # @!attribute code
    #   <p>The HTTP response code for the batch operation result.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>A message describing the result of the batch operation, including error details if applicable.</p>
    #   @return [String]
    class BatchCreateFirewallRuleOutputItem < Struct.new(
      nil,
      :firewall_rule,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of creating a firewall rule in a batch operation.</p>
    # @!attribute action
    #   <p>The action configured for the created firewall rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record type configured for the created firewall rule's custom response.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom domain name configured for the created firewall rule's BLOCK response.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The TTL value configured for the created firewall rule's custom response.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The type of block response configured for the created firewall rule.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identified the request and ensured idempotency.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold configured for the created firewall rule's advanced threat detection.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the firewall rule was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the created firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>Whether advanced DNS threat protection is enabled for the created firewall rule.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the firewall domain list associated with the created firewall rule.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the created firewall rule.</p>
    #   @return [String]
    # @!attribute managed_domain_list_name
    #   <p>The name of the managed domain list associated with the created firewall rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the created firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the created firewall rule.</p>
    #   @return [Integer]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view associated with the created firewall rule.</p>
    #   @return [String]
    # @!attribute query_type
    #   <p>The DNS query type that the created firewall rule matches.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the created firewall rule.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the firewall rule was last updated.</p>
    #   @return [Time]
    class BatchCreateFirewallRuleResult < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :client_token,
      :confidence_threshold,
      :created_at,
      :description,
      :dns_advanced_protection,
      :firewall_domain_list_id,
      :id,
      :managed_domain_list_name,
      :name,
      :priority,
      :dns_view_id,
      :query_type,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_rules
    #   <p>An array of the DNS Firewall IDs to be deleted.</p>
    #   @return [Array<Types::BatchDeleteFirewallRuleInputItem>]
    class BatchDeleteFirewallRuleInput < Struct.new(
      nil,
      :firewall_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a DNS Firewall rule to delete in a batch operation.</p>
    # @!attribute firewall_rule_id
    #   <p>The ID of the DNS Firewall rule to delete.</p>
    #   @return [String]
    class BatchDeleteFirewallRuleInputItem < Struct.new(
      nil,
      :firewall_rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failures
    #   <p>High level information about the DNS Firewall rules that failed to delete.</p>
    #   @return [Array<Types::BatchDeleteFirewallRuleOutputItem>]
    # @!attribute successes
    #   <p>High level information about the DNS Firewall rules that were deleted successfully.</p>
    #   @return [Array<Types::BatchDeleteFirewallRuleOutputItem>]
    class BatchDeleteFirewallRuleOutput < Struct.new(
      nil,
      :failures,
      :successes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of deleting a firewall rule in a batch operation.</p>
    # @!attribute firewall_rule
    #   <p>The firewall rule that was deleted in the batch operation.</p>
    #   @return [Types::BatchDeleteFirewallRuleResult]
    # @!attribute code
    #   <p>The response code for the delete operation.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>The response message for the delete operation.</p>
    #   @return [String]
    class BatchDeleteFirewallRuleOutputItem < Struct.new(
      nil,
      :firewall_rule,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a firewall rule that was deleted in a batch operation.</p>
    # @!attribute client_token
    #   <p>The unique string that identified the request and ensured idempotency.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The final status of the deleted firewall rule.</p>
    #   @return [String]
    class BatchDeleteFirewallRuleResult < Struct.new(
      nil,
      :client_token,
      :id,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_rules
    #   <p>The DNS Firewall rule IDs to be updated.</p>
    #   @return [Array<Types::BatchUpdateFirewallRuleInputItem>]
    class BatchUpdateFirewallRuleInput < Struct.new(
      nil,
      :firewall_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information for updating a firewall rule in a batch operation.</p>
    # @!attribute action
    #   <p>The action to take when a DNS query matches the firewall rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record type for the custom response when the action is BLOCK.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom domain name for the BLOCK response.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The TTL value for the custom response when the action is BLOCK.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The type of block response to return when the action is BLOCK.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold for advanced threat detection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>Whether to enable advanced DNS threat protection for the firewall rule.</p>
    #   @return [String]
    # @!attribute firewall_rule_id
    #   <p>The unique identifier of the firewall rule to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the firewall rule.</p>
    #   @return [Integer]
    class BatchUpdateFirewallRuleInputItem < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :confidence_threshold,
      :description,
      :dns_advanced_protection,
      :firewall_rule_id,
      :name,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failures
    #   <p>High level information about the DNS Firewall rules that failed to update.</p>
    #   @return [Array<Types::BatchUpdateFirewallRuleOutputItem>]
    # @!attribute successes
    #   <p>High level information about the DNS Firewall rules that were successfully updated.</p>
    #   @return [Array<Types::BatchUpdateFirewallRuleOutputItem>]
    class BatchUpdateFirewallRuleOutput < Struct.new(
      nil,
      :failures,
      :successes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of updating a firewall rule in a batch operation.</p>
    # @!attribute firewall_rule
    #   <p>The firewall rule that was updated in the batch operation.</p>
    #   @return [Types::BatchUpdateFirewallRuleResult]
    # @!attribute code
    #   <p>The response code for the update operation.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>The response message for the update operation.</p>
    #   @return [String]
    class BatchUpdateFirewallRuleOutputItem < Struct.new(
      nil,
      :firewall_rule,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a firewall rule that was updated in a batch operation.</p>
    # @!attribute action
    #   <p>The action configured for the updated firewall rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record type configured for the updated firewall rule's custom response.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom domain name configured for the updated firewall rule's BLOCK response.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The TTL value configured for the updated firewall rule's custom response.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The type of block response configured for the updated firewall rule.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identified the request and ensured idempotency.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold configured for the updated firewall rule's advanced threat detection.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the firewall rule was originally created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the updated firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>Whether advanced DNS threat protection is enabled for the updated firewall rule.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the firewall domain list associated with the updated firewall rule.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the updated firewall rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the updated firewall rule.</p>
    #   @return [Integer]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view associated with the updated firewall rule.</p>
    #   @return [String]
    # @!attribute query_type
    #   <p>The DNS query type that the updated firewall rule matches.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the updated firewall rule.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the firewall rule was last updated.</p>
    #   @return [Time]
    class BatchUpdateFirewallRuleResult < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :client_token,
      :confidence_threshold,
      :created_at,
      :description,
      :dns_advanced_protection,
      :firewall_domain_list_id,
      :id,
      :name,
      :priority,
      :dns_view_id,
      :query_type,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource. This can occur when trying to modify a resource that is not in a valid state for the requested operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the conflicting resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the conflicting resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cidr
    #   <p>The IP address or CIDR range that is allowed to send DNS queries to the Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type for this access source. Valid values are IPv4 and IPv6 (if the Route 53 Global Resolver supports dual-stack).</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive name for the access source.</p>
    #   @return [String]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view to associate with this access source.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The DNS protocol that is permitted for this access source. Valid values are Do53 (DNS over port 53), DoT (DNS over TLS), and DoH (DNS over HTTPS).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the access source.</p>
    #   @return [Hash<String, String>]
    class CreateAccessSourceInput < Struct.new(
      nil,
      :cidr,
      :client_token,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the access source.</p>
    #   @return [String]
    # @!attribute cidr
    #   <p>The IP address or CIDR range that is allowed to send DNS queries to the Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the access source was created.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique identifier for the access source.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type for this access source (IPv4 or IPv6).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the access source.</p>
    #   @return [String]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view associated with this access source.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The DNS protocol that is permitted for this access source (Do53, DoT, or DoH).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The operational status of the access source.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the access source was last updated.</p>
    #   @return [Time]
    class CreateAccessSourceOutput < Struct.new(
      nil,
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    #   @return [String]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view to associate with this token.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The date and time when the token expires. Tokens can have a minimum expiration of 30 days and maximum of 365 days from creation.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A descriptive name for the access token.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of user-defined keys and optional values. These tags can be used for categorization and organization.</p>
    #   @return [Hash<String, String>]
    class CreateAccessTokenInput < Struct.new(
      nil,
      :client_token,
      :dns_view_id,
      :expires_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the access token.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the access token.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the access token was created.</p>
    #   @return [Time]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view associated with this access token.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The date and time when the access token expires.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the access token.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The operational status of the access token.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The access token value. This token should be included in DoH and DoT requests for authentication. Keep this value secure as it provides access to your Route 53 Global Resolver.</p>
    #   @return [String]
    class CreateAccessTokenOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :created_at,
      :dns_view_id,
      :expires_at,
      :name,
      :status,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver to associate with this DNS view.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive name for the DNS view.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Whether to enable DNSSEC validation for DNS queries in this DNS view. When enabled, the resolver verifies the authenticity and integrity of DNS responses from public name servers for DNSSEC-signed domains.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Whether to enable EDNS Client Subnet injection for DNS queries in this DNS view. When enabled, client subnet information is forwarded to provide more accurate geographic-based DNS responses.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>Determines the behavior when Route 53 Global Resolver cannot apply DNS firewall rules due to service impairment. When enabled, DNS queries are allowed through; when disabled, queries are blocked.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the DNS view.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the DNS view.</p>
    #   @return [Hash<String, String>]
    class CreateDNSViewInput < Struct.new(
      nil,
      :global_resolver_id,
      :client_token,
      :name,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the DNS view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DNS view.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Whether DNSSEC validation is enabled for DNS queries in this DNS view.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Whether EDNS Client Subnet injection is enabled for DNS queries in this DNS view.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>The behavior when Route 53 Global Resolver cannot apply DNS firewall rules due to service impairment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the DNS view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the DNS view.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver instance the DNS view is created for.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the DNS view was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the DNS view was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The operational status of the DNS view.</p>
    #   @return [String]
    class CreateDNSViewOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :name,
      :description,
      :global_resolver_id,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver that the domain list will be associated with.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the firewall domain list.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive name for the firewall domain list.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of user-defined keys and optional values. These tags can be used for categorization and organization.</p>
    #   @return [Hash<String, String>]
    class CreateFirewallDomainListInput < Struct.new(
      nil,
      :client_token,
      :global_resolver_id,
      :description,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>An Amazon Resource Name (ARN) for the domain list.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver that the domain list is associated with.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the domain list was created on.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Description for the domain list.</p>
    #   @return [String]
    # @!attribute domain_count
    #   <p>Number of domains in the domain list.</p>
    #   @return [Integer]
    # @!attribute id
    #   <p>ID of the domain list.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the domain list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Creation status of the domain list.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time and date the domain list was updated.</p>
    #   @return [Time]
    class CreateFirewallDomainListOutput < Struct.new(
      nil,
      :arn,
      :global_resolver_id,
      :created_at,
      :description,
      :domain_count,
      :id,
      :name,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p> <ul> <li> <p> <code>ALLOW</code> - Permit the request to go through.</p> </li> <li> <p> <code>ALERT</code> - Permit the request and send metrics and logs to CloudWatch.</p> </li> <li> <p> <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>.</p> </li> </ul>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p> <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p> <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p> <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The response to return when the action is BLOCK. Valid values are NXDOMAIN (domain does not exist), NODATA (domain exists but no records), or OVERRIDE (return custom response).</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold for advanced threat detection. Valid values are HIGH, MEDIUM, or LOW, indicating the accuracy level required for threat detection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>Whether to enable advanced DNS threat protection for this rule. Advanced protection can detect and block DNS tunneling and Domain Generation Algorithm (DGA) threats.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the firewall domain list to use in this rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive name for the firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of this rule. Rules are evaluated in priority order, with lower numbers having higher priority. When a DNS query matches multiple rules, the rule with the highest priority (lowest number) is applied.</p>
    #   @return [Integer]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view to associate with this firewall rule.</p>
    #   @return [String]
    # @!attribute q_type
    #   <p>The DNS query type to match for this rule. Examples include A (IPv4 address), AAAA (IPv6 address), MX (mail exchange), or TXT (text record).</p>
    #   @return [String]
    class CreateFirewallRuleInput < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :client_token,
      :confidence_threshold,
      :description,
      :dns_advanced_protection,
      :firewall_domain_list_id,
      :name,
      :priority,
      :dns_view_id,
      :q_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>The action that DNS Firewall takes on DNS queries that match this rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record type for the custom response when blockResponse is OVERRIDE.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom domain to return when the action is BLOCK and blockResponse is OVERRIDE.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The time-to-live (TTL) value for the custom response when blockResponse is OVERRIDE.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The response to return when the action is BLOCK.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold for advanced threat detection.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the firewall rule was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>Whether advanced DNS threat protection is enabled for this rule.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the firewall domain list used in this rule.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the firewall rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the firewall rule.</p>
    #   @return [Integer]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view associated with this firewall rule.</p>
    #   @return [String]
    # @!attribute query_type
    #   <p>The DNS query type that this rule matches.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The operational status of the firewall rule.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the firewall rule was last updated.</p>
    #   @return [Time]
    class CreateFirewallRuleOutput < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :confidence_threshold,
      :created_at,
      :description,
      :dns_advanced_protection,
      :firewall_domain_list_id,
      :id,
      :name,
      :priority,
      :dns_view_id,
      :query_type,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique string that identifies the request and ensures idempotency. If you make multiple requests with the same client token, only one Route 53 Global Resolver is created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the Route 53 Global Resolver instance. Maximum length of 1024 characters.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type for the Route 53 Global Resolver. Valid values are IPV4 (default) or DUAL_STACK for both IPv4 and IPv6 support.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive name for the Route 53 Global Resolver instance. Maximum length of 64 characters.</p>
    #   @return [String]
    # @!attribute observability_region
    #   <p>The Amazon Web Services Region where query resolution logs and metrics will be aggregated and delivered. If not specified, logging is not enabled.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>List of Amazon Web Services Regions where the Route 53 Global Resolver will operate. The resolver will be distributed across these Regions to provide global availability and low-latency DNS resolution.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags to associate with the Route 53 Global Resolver. Tags are key-value pairs that help you organize and identify your resources.</p>
    #   @return [Hash<String, String>]
    class CreateGlobalResolverInput < Struct.new(
      nil,
      :client_token,
      :description,
      :ip_address_type,
      :name,
      :observability_region,
      :regions,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the Route 53 Global Resolver was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The hostname that DNS clients should use for TLS certificate validation when connecting to the Route 53 Global Resolver. This value resolves to the global anycast IP addresses for the resolver.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type configured for the Route 53 Global Resolver (IPV4 or DUAL_STACK).</p>
    #   @return [String]
    # @!attribute ipv4_addresses
    #   <p>The global anycast IPv4 addresses associated with the Route 53 Global Resolver. DNS clients can send queries to these addresses from anywhere on the internet.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_addresses
    #   <p>The global anycast IPv6 addresses associated with the Route 53 Global Resolver. This field is only populated when ipAddressType is DUAL_STACK. DNS clients can send queries to these addresses from anywhere on the internet.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute observability_region
    #   <p>The Amazon Web Services Region where observability data for the Route 53 Global Resolver is stored.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The Amazon Web Services Regions where the Route 53 Global Resolver is deployed and operational.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current status of the Route 53 Global Resolver. Possible values are CREATING (being provisioned), UPDATING (being modified), OPERATIONAL (ready to serve queries), or DELETING (being removed).</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the Route 53 Global Resolver was last updated.</p>
    #   @return [Time]
    class CreateGlobalResolverOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :created_at,
      :description,
      :dns_name,
      :ip_address_type,
      :ipv4_addresses,
      :ipv6_addresses,
      :name,
      :observability_region,
      :regions,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a DNS view.</p>
    # @!attribute id
    #   <p>The unique identifier of the DNS view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DNS view.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Whether DNSSEC validation is enabled for the DNS view.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Whether EDNS Client Subnet injection is enabled for the DNS view.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>Whether firewall rules fail open when they cannot be evaluated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DNS view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the DNS view.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the global resolver that the DNS view is associated with.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the DNS view was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the DNS view was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the DNS view.</p>
    #   @return [String]
    class DNSViewSummary < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :name,
      :description,
      :global_resolver_id,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_source_id
    #   <p>The unique identifier of the access source to delete.</p>
    #   @return [String]
    class DeleteAccessSourceInput < Struct.new(
      nil,
      :access_source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted access source.</p>
    #   @return [String]
    # @!attribute cidr
    #   <p>The IP address or CIDR range of the deleted access source.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the access source was originally created.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique identifier of the deleted access source.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type of the deleted access source (IPv4 or IPv6).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deleted access source.</p>
    #   @return [String]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view that was associated with the deleted access source.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The DNS protocol that was permitted for the deleted access source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The final status of the deleted access source.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the access source was last updated before deletion.</p>
    #   @return [Time]
    class DeleteAccessSourceOutput < Struct.new(
      nil,
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token_id
    #   <p>The unique identifier of the access token to delete.</p>
    #   @return [String]
    class DeleteAccessTokenInput < Struct.new(
      nil,
      :access_token_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the deleted access token.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The final status of the deleted access token.</p>
    #   @return [String]
    # @!attribute deleted_at
    #   <p>The date and time when the access token was deleted.</p>
    #   @return [Time]
    class DeleteAccessTokenOutput < Struct.new(
      nil,
      :id,
      :status,
      :deleted_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dns_view_id
    #   <p>The unique identifier of the DNS view to delete.</p>
    #   @return [String]
    class DeleteDNSViewInput < Struct.new(
      nil,
      :dns_view_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the deleted DNS view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted DNS view.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Whether DNSSEC validation was enabled for the deleted DNS view.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Whether EDNS Client Subnet injection was enabled for the deleted DNS view.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>The firewall rules fail-open behavior that was configured for the deleted DNS view.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deleted DNS view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deleted DNS view.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver that the deleted DNS view was associated with.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the DNS view was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the DNS view was last updated before deletion.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The final status of the deleted DNS view.</p>
    #   @return [String]
    class DeleteDNSViewOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :name,
      :description,
      :global_resolver_id,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_domain_list_id
    #   <p>The unique identifier of the firewall domain list to delete.</p>
    #   @return [String]
    class DeleteFirewallDomainListInput < Struct.new(
      nil,
      :firewall_domain_list_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted firewall domain list.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the deleted firewall domain list.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deleted firewall domain list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The final status of the deleted firewall domain list.</p>
    #   @return [String]
    class DeleteFirewallDomainListOutput < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_rule_id
    #   <p>The unique identifier of the firewall rule to delete.</p>
    #   @return [String]
    class DeleteFirewallRuleInput < Struct.new(
      nil,
      :firewall_rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>The action that was configured for the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record type that was configured for the deleted firewall rule's custom response.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom domain that was configured for the deleted firewall rule's BLOCK response.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The TTL value that was configured for the deleted firewall rule's custom response.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The block response type that was configured for the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold that was configured for the deleted firewall rule's advanced threat detection.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the firewall rule was originally created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>Whether advanced DNS threat protection was enabled for the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the firewall domain list that was associated with the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority that was configured for the deleted firewall rule.</p>
    #   @return [Integer]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view that was associated with the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute query_type
    #   <p>The DNS query type that the deleted firewall rule was configured to match.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The final status of the deleted firewall rule.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the firewall rule was last updated before deletion.</p>
    #   @return [Time]
    class DeleteFirewallRuleOutput < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :confidence_threshold,
      :created_at,
      :description,
      :dns_advanced_protection,
      :firewall_domain_list_id,
      :id,
      :name,
      :priority,
      :dns_view_id,
      :query_type,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_resolver_id
    #   <p>The unique identifier of the Route 53 Global Resolver to delete.</p>
    #   @return [String]
    class DeleteGlobalResolverInput < Struct.new(
      nil,
      :global_resolver_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the deleted Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The hostname that DNS clients used for TLS certificate validation when connecting to the deleted Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute observability_region
    #   <p>The Amazon Web Services Region where observability data for the deleted Route 53 Global Resolver was stored.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deleted Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deleted Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The Amazon Web Services Regions where the deleted Route 53 Global Resolver was deployed and operational.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The date and time when the Route 53 Global Resolver was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the Route 53 Global Resolver was last updated before deletion.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The final status of the deleted Route 53 Global Resolver.</p>
    #   @return [String]
    # @!attribute ipv4_addresses
    #   <p>The global anycast IPv4 addresses that were associated with the deleted Route 53 Global Resolver.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_addresses
    #   <p>The global anycast IPv6 addresses that were associated with the deleted Route 53 Global Resolver.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address type that was configured for the deleted Route 53 Global Resolver.</p>
    #   @return [String]
    class DeleteGlobalResolverOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dns_name,
      :observability_region,
      :name,
      :description,
      :regions,
      :created_at,
      :updated_at,
      :status,
      :ipv4_addresses,
      :ipv6_addresses,
      :ip_address_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dns_view_id
    #   <p>The unique identifier of the DNS view to disable.</p>
    #   @return [String]
    class DisableDNSViewInput < Struct.new(
      nil,
      :dns_view_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the disabled DNS view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the disabled DNS view.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Whether DNSSEC validation is enabled for the disabled DNS view.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Whether EDNS Client Subnet injection is enabled for the disabled DNS view.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>The firewall rules fail-open behavior configured for the disabled DNS view.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the disabled DNS view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the disabled DNS view.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver that the disabled DNS view is associated with.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the DNS view was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the DNS view was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the disabled DNS view.</p>
    #   @return [String]
    class DisableDNSViewOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :name,
      :description,
      :global_resolver_id,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute hosted_zone_id
    #   <p>The ID of the Route 53 private hosted zone to disassociate.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Route 53 Global Resolver resource to disassociate the hosted zone from.</p>
    #   @return [String]
    class DisassociateHostedZoneInput < Struct.new(
      nil,
      :hosted_zone_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the disassociation.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Route 53 Global Resolver resource that the hosted zone was disassociated from.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The ID of the Route 53 private hosted zone that was disassociated.</p>
    #   @return [String]
    # @!attribute hosted_zone_name
    #   <p>The name of the Route 53 private hosted zone that was disassociated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the association that was removed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the association was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the association was last updated before disassociation.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The final status of the disassociation.</p>
    #   @return [String]
    class DisassociateHostedZoneOutput < Struct.new(
      nil,
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dns_view_id
    #   <p>The unique identifier of the DNS view to enable.</p>
    #   @return [String]
    class EnableDNSViewInput < Struct.new(
      nil,
      :dns_view_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the enabled DNS view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the enabled DNS view.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Whether DNSSEC validation is enabled for the enabled DNS view.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Whether EDNS Client Subnet injection is enabled for the enabled DNS view.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>The firewall rules fail-open behavior configured for the enabled DNS view.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the enabled DNS view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the enabled DNS view.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver that the enabled DNS view is associated with.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the DNS view was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the DNS view was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the enabled DNS view.</p>
    #   @return [String]
    class EnableDNSViewOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :name,
      :description,
      :global_resolver_id,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a firewall domain list.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the firewall domain list.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the global resolver that the firewall domain list is associated with.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the firewall domain list was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A description of the firewall domain list.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the firewall domain list.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the firewall domain list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the firewall domain list.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the firewall domain list was last updated.</p>
    #   @return [Time]
    class FirewallDomainListsItem < Struct.new(
      nil,
      :arn,
      :global_resolver_id,
      :created_at,
      :description,
      :id,
      :name,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a firewall rule.</p>
    # @!attribute action
    #   <p>The action configured for the firewall rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record type configured for the firewall rule's custom response.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom domain name configured for the firewall rule's BLOCK response.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The TTL value configured for the firewall rule's custom response.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The type of block response configured for the firewall rule.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold configured for the firewall rule's advanced threat detection.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the firewall rule was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>Whether advanced DNS threat protection is enabled for the firewall rule.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the firewall domain list associated with the firewall rule.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the firewall rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the firewall rule.</p>
    #   @return [Integer]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view associated with the firewall rule.</p>
    #   @return [String]
    # @!attribute query_type
    #   <p>The DNS query type that the firewall rule matches.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the firewall rule.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the firewall rule was last updated.</p>
    #   @return [Time]
    class FirewallRulesItem < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :confidence_threshold,
      :created_at,
      :description,
      :dns_advanced_protection,
      :firewall_domain_list_id,
      :id,
      :name,
      :priority,
      :dns_view_id,
      :query_type,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_source_id
    #   <p>The unique identifier of the access source to retrieve.</p>
    #   @return [String]
    class GetAccessSourceInput < Struct.new(
      nil,
      :access_source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the access source.</p>
    #   @return [String]
    # @!attribute cidr
    #   <p>The IP range for the rule's parameters in CIDR notation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the rule was created.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>ID for the rule.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the access source.</p>
    #   @return [String]
    # @!attribute dns_view_id
    #   <p>ID for the DNS view that the rule is associated to.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol determines how data is transmitted to a Global Resolver instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Information about the status of the rule.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time and date the access source was updated.</p>
    #   @return [Time]
    class GetAccessSourceOutput < Struct.new(
      nil,
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token_id
    #   <p>ID of the token.</p>
    #   @return [String]
    class GetAccessTokenInput < Struct.new(
      nil,
      :access_token_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>ID of the token.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the token.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the token was created.</p>
    #   @return [Time]
    # @!attribute dns_view_id
    #   <p>ID of the DNS view the token is associated to.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The token's expiration time and date.</p>
    #   @return [Time]
    # @!attribute global_resolver_id
    #   <p>ID of the Global Resolver.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the token.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The operational status of the token.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time and date the token was created.</p>
    #   @return [Time]
    # @!attribute value
    #   <p>The value of the token.</p>
    #   @return [String]
    class GetAccessTokenOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :created_at,
      :dns_view_id,
      :expires_at,
      :global_resolver_id,
      :name,
      :status,
      :updated_at,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dns_view_id
    #   <p>The ID of the DNS view to retrieve information about.</p>
    #   @return [String]
    class GetDNSViewInput < Struct.new(
      nil,
      :dns_view_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>ID of the DNS view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) of the DNS view.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Specifies whether DNSSEC is enabled or disabled for the DNS view.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Specifies whether edns0 client subnet is enabled.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>Specifies the DNS Firewall failure mode configuration. When enabled, the DNS Firewall allows DNS queries to proceed if it's unable to properly evaluate them. When disabled, the DNS Firewall blocks DNS queries it's unable to evaluate.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the DNS view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the DNS view.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>ID of the Global Resolver the DNS view is associated to.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the DNS view was creates on.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time and date the DNS view was updated on.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Operational status of the DNS view.</p>
    #   @return [String]
    class GetDNSViewOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :name,
      :description,
      :global_resolver_id,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_domain_list_id
    #   <p>ID of the domain list.</p>
    #   @return [String]
    class GetFirewallDomainListInput < Struct.new(
      nil,
      :firewall_domain_list_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) of the domain list.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>ID of the Global Resolver that the domain list is associated to.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the domain list was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the domain list.</p>
    #   @return [String]
    # @!attribute domain_count
    #   <p>Number of domains in the domain list.</p>
    #   @return [Integer]
    # @!attribute id
    #   <p>ID of the domain list.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the domain list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Operational status of the domain list.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the status of the domain list.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the domain list was updated.</p>
    #   @return [Time]
    class GetFirewallDomainListOutput < Struct.new(
      nil,
      :arn,
      :global_resolver_id,
      :client_token,
      :created_at,
      :description,
      :domain_count,
      :id,
      :name,
      :status,
      :status_message,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_rule_id
    #   <p>ID of the DNS Firewall rule.</p>
    #   @return [String]
    class GetFirewallRuleInput < Struct.new(
      nil,
      :firewall_rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold for DNS Firewall Advanced. You must provide this value when you create a DNS Firewall Advanced rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the DNS Firewall rule was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the DNS Firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>The type of the DNS Firewall Advanced rule. Valid values are DGA, DNS_TUNNELING, and DICTIONARY_DGA.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of a DNS Firewall domain list.</p>
    #   @return [String]
    # @!attribute id
    #   <p>ID of the DNS Firewall rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DNS Firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #   @return [Integer]
    # @!attribute dns_view_id
    #   <p>The DNS view ID the DNS Firewall is associated with.</p>
    #   @return [String]
    # @!attribute query_type
    #   <p>The DNS query type you want the rule to evaluate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The operational status of the DNS Firewall rule.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the DNS Firewall rule was updated.</p>
    #   @return [Time]
    class GetFirewallRuleOutput < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :confidence_threshold,
      :created_at,
      :description,
      :dns_advanced_protection,
      :firewall_domain_list_id,
      :id,
      :name,
      :priority,
      :dns_view_id,
      :query_type,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver to retrieve information about.</p>
    #   @return [String]
    class GetGlobalResolverInput < Struct.new(
      nil,
      :global_resolver_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the Global Resolver.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Global Resolver.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The hostname used by the customers' DNS clients for certification validation.</p>
    #   @return [String]
    # @!attribute observability_region
    #   <p>The Amazon Web Services Regions in which the users' Global Resolver query resolution logs will be propagated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Global Resolver.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Global Resolver.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The Amazon Web Services Regions in which the Global Resolver operate.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The date and time the Global Resolver was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the Global Resolver was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The operational status of the Global Resolver.</p>
    #   @return [String]
    # @!attribute ipv4_addresses
    #   <p>List of anycast IPv4 addresses associated with the Global Resolver instance.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_addresses
    #   <p>List of anycast IPv6 addresses associated with the Global Resolver instance. This field is only populated when ipAddressType is DUAL_STACK.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address type configured for the Global Resolver.</p>
    #   @return [String]
    class GetGlobalResolverOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dns_name,
      :observability_region,
      :name,
      :description,
      :regions,
      :created_at,
      :updated_at,
      :status,
      :ipv4_addresses,
      :ipv6_addresses,
      :ip_address_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute hosted_zone_association_id
    #   <p>ID of the private hosted zone association.</p>
    #   @return [String]
    class GetHostedZoneAssociationInput < Struct.new(
      nil,
      :hosted_zone_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>ID of the private hosted zone association.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the DNS view the private hosted zone is associated to.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>ID of the hosted zone associated to the DNS view.</p>
    #   @return [String]
    # @!attribute hosted_zone_name
    #   <p>Name of the domain associated with the private hosted zone.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the private hosted zone association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the private hosted zone association was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time and date the private hosted zone association was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The operational status of the private hosted zone association.</p>
    #   @return [String]
    class GetHostedZoneAssociationOutput < Struct.new(
      nil,
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_firewall_domain_list_id
    #   <p>ID of the Managed Domain List.</p>
    #   @return [String]
    class GetManagedFirewallDomainListInput < Struct.new(
      nil,
      :managed_firewall_domain_list_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>Description of the Managed Domain List.</p>
    #   @return [String]
    # @!attribute id
    #   <p>ID of the Managed Domain List.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the Managed Domain List.</p>
    #   @return [String]
    # @!attribute managed_list_type
    #   <p>Type of the managed category. This is either <code>THREAT</code> or <code>CONTENT</code>.</p>
    #   @return [String]
    class GetManagedFirewallDomainListOutput < Struct.new(
      nil,
      :description,
      :id,
      :name,
      :managed_list_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a global resolver.</p>
    # @!attribute id
    #   <p>The unique identifier of the global resolver.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the global resolver.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS name of the global resolver.</p>
    #   @return [String]
    # @!attribute observability_region
    #   <p>The Amazon Web Services Region where observability data is collected for the global resolver.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the global resolver.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the global resolver.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The Amazon Web Services Regions where the global resolver is deployed.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The date and time when the global resolver was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the global resolver was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the global resolver.</p>
    #   @return [String]
    # @!attribute ipv4_addresses
    #   <p>The IPv4 addresses assigned to the global resolver.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_addresses
    #   <p>The IPv6 addresses assigned to the global resolver. This field is only populated when ipAddressType is DUAL_STACK.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address type configured for the global resolver.</p>
    #   @return [String]
    class GlobalResolversItem < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dns_name,
      :observability_region,
      :name,
      :description,
      :regions,
      :created_at,
      :updated_at,
      :status,
      :ipv4_addresses,
      :ipv6_addresses,
      :ip_address_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a hosted zone association.</p>
    # @!attribute id
    #   <p>The unique identifier of the hosted zone association.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource associated with the hosted zone.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The ID of the hosted zone.</p>
    #   @return [String]
    # @!attribute hosted_zone_name
    #   <p>The name of the hosted zone.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hosted zone association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the hosted zone association was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the hosted zone association was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the hosted zone association.</p>
    #   @return [String]
    class HostedZoneAssociationSummary < Struct.new(
      nil,
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_file_url
    #   <p>The fully qualified URL of the file in Amazon S3 that contains the list of domains to import. The file should contain one domain per line.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>ID of the DNS Firewall domain list that you want to import the domain list to.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>This value is <code>REPLACE</code>, and it updates the domain list to match the list of domains in the imported file.</p>
    #   @return [String]
    class ImportFirewallDomainsInput < Struct.new(
      nil,
      :domain_file_url,
      :firewall_domain_list_id,
      :operation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>ID of the DNS Firewall domain list that you imported the domain list to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the DNS Firewall domain list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Operational status of the DNS Firewall domain list.</p>
    #   @return [String]
    class ImportFirewallDomainsOutput < Struct.new(
      nil,
      :id,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. Try again later.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Number of seconds in which the caller can retry the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Values to filter the results.</p>
    #   @return [Hash<String, Array<String>>]
    class ListAccessSourcesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute access_sources
    #   <p>An array containing information about the access sources, such as the ID, CIDR etc.</p>
    #   @return [Array<Types::AccessSourcesItem>]
    class ListAccessSourcesOutput < Struct.new(
      nil,
      :next_token,
      :access_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    #   @return [String]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view to list the tokens for.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filtering parameters.</p>
    #   @return [Hash<String, Array<String>>]
    class ListAccessTokensInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :dns_view_id,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute access_tokens
    #   <p>List of the tokens.</p>
    #   @return [Array<Types::AccessTokenItem>]
    class ListAccessTokensOutput < Struct.new(
      nil,
      :next_token,
      :access_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The Global Resolver ID.</p>
    #   @return [String]
    class ListDNSViewsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :global_resolver_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute dns_views
    #   <p>An array of information about the DNS views, such as whether DNSSEC is enabled, creation time, etc.</p>
    #   @return [Array<Types::DNSViewSummary>]
    class ListDNSViewsOutput < Struct.new(
      nil,
      :next_token,
      :dns_views,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the Global Resolver that contains the DNS view the domain lists are associated to.</p>
    #   @return [String]
    class ListFirewallDomainListsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :global_resolver_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute firewall_domain_lists
    #   <p>List of the DNS Firewall domain lists.</p>
    #   @return [Array<Types::FirewallDomainListsItem>]
    class ListFirewallDomainListsOutput < Struct.new(
      nil,
      :next_token,
      :firewall_domain_lists,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>ID of the DNS Firewall domain list.</p>
    #   @return [String]
    class ListFirewallDomainsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :firewall_domain_list_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute domains
    #   <p>List of domains in the specified domain list.</p>
    #   @return [Array<String>]
    class ListFirewallDomainsOutput < Struct.new(
      nil,
      :next_token,
      :domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    #   @return [String]
    # @!attribute dns_view_id
    #   <p>ID of the DNS view.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Values to filter the results.</p>
    #   @return [Hash<String, Array<String>>]
    class ListFirewallRulesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :dns_view_id,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute firewall_rules
    #   <p>List of the firewall rules and information about them.</p>
    #   @return [Array<Types::FirewallRulesItem>]
    class ListFirewallRulesOutput < Struct.new(
      nil,
      :next_token,
      :firewall_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of Route 53 Global Resolver instances to return in the response. Valid range is 1-100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. This value is returned in the response if there are more results to retrieve.</p>
    #   @return [String]
    class ListGlobalResolversInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute global_resolvers
    #   <p>Paginated list of Global Resolvers.</p>
    #   @return [Array<Types::GlobalResolversItem>]
    class ListGlobalResolversOutput < Struct.new(
      nil,
      :next_token,
      :global_resolvers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DNS view to list hosted zone associations for. This parameter is optional; if you omit it, all hosted zone associations in your Amazon Web Services account are returned.</p>
    #   @return [String]
    class ListHostedZoneAssociationsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute hosted_zone_associations
    #   <p>List of the private hosted zone associations.</p>
    #   @return [Array<Types::HostedZoneAssociationSummary>]
    class ListHostedZoneAssociationsOutput < Struct.new(
      nil,
      :next_token,
      :hosted_zone_associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    #   @return [String]
    # @!attribute managed_firewall_domain_list_type
    #   <p>The category of the Manage DNS list either <code>THREAT</code> or <code>CONTENT</code>.</p>
    #   @return [String]
    class ListManagedFirewallDomainListsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :managed_firewall_domain_list_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute managed_firewall_domain_lists
    #   <p>List of the Managed Domain Lists.</p>
    #   @return [Array<Types::ManagedFirewallDomainListsItem>]
    class ListManagedFirewallDomainListsOutput < Struct.new(
      nil,
      :next_token,
      :managed_firewall_domain_lists,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    #   @return [String]
    class ListSharedDNSViewsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response. Provide this token in the next call to get the results not returned in this call.</p>
    #   @return [String]
    # @!attribute dns_views
    #   <p>An array of information about the DNS views shared with your Amazon Web Services account, including the Amazon Web Services account that owns each DNS view.</p>
    #   @return [Array<Types::SharedDNSViewSummary>]
    class ListSharedDNSViewsOutput < Struct.new(
      nil,
      :next_token,
      :dns_views,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of user-defined keys and optional values. These tags can be used for categorization and organization.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a managed firewall domain list.</p>
    # @!attribute description
    #   <p>A description of the managed firewall domain list.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the managed firewall domain list.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the managed firewall domain list.</p>
    #   @return [String]
    # @!attribute managed_list_type
    #   <p>The type of the managed firewall domain list.</p>
    #   @return [String]
    class ManagedFirewallDomainListsItem < Struct.new(
      nil,
      :description,
      :id,
      :name,
      :managed_list_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found. Verify the resource ID and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique ID of the resource referenced in the failed request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of the resource referenced in the failed request.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed one or more service quotas. Check your current usage and quotas, then try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique ID of the resource referenced in the failed request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of the resource referenced in the failed request.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service that owns the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code recognized by the Amazon Web Services Service Quotas service.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a DNS view that has been shared with your Amazon Web Services account through Amazon Web Services RAM.</p>
    # @!attribute id
    #   <p>The unique identifier of the DNS view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DNS view.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Whether DNSSEC validation is enabled for the DNS view.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Whether EDNS Client Subnet injection is enabled for the DNS view.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>Whether firewall rules fail open when they cannot be evaluated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DNS view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the DNS view.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the global resolver that the DNS view is associated with.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the DNS view was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the DNS view was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the DNS view.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the Amazon Web Services account that owns the DNS view and shared it with your Amazon Web Services account.</p>
    #   @return [String]
    class SharedDNSViewSummary < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :name,
      :description,
      :global_resolver_id,
      :created_at,
      :updated_at,
      :status,
      :owner_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to be tagged.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of user-defined keys and optional values. These tags can be used for categorization and organization.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled due to too many requests. Wait a moment and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service that owns the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code recognized by the Amazon Web Services Service Quotas service.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Number of seconds in which the caller can retry the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys associated with the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_source_id
    #   <p>The unique identifier of the access source to update.</p>
    #   @return [String]
    # @!attribute cidr
    #   <p>The CIDR block for the access source.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type for the access source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access source.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol for the access source.</p>
    #   @return [String]
    class UpdateAccessSourceInput < Struct.new(
      nil,
      :access_source_id,
      :cidr,
      :ip_address_type,
      :name,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated access source.</p>
    #   @return [String]
    # @!attribute cidr
    #   <p>The CIDR block of the updated access source.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the access source was originally created.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique identifier of the updated access source.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type of the updated access source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated access source.</p>
    #   @return [String]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view associated with the updated access source.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol of the updated access source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the updated access source.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time when the access source was last updated.</p>
    #   @return [Time]
    class UpdateAccessSourceOutput < Struct.new(
      nil,
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token_id
    #   <p>The ID of the token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name of the token.</p>
    #   @return [String]
    class UpdateAccessTokenInput < Struct.new(
      nil,
      :access_token_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the token.</p>
    #   @return [String]
    class UpdateAccessTokenOutput < Struct.new(
      nil,
      :id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dns_view_id
    #   <p>The unique identifier of the DNS view to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DNS view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the DNS view.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Whether to enable DNSSEC validation for the DNS view.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Whether to enable EDNS Client Subnet injection for the DNS view.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>Whether firewall rules should fail open when they cannot be evaluated.</p>
    #   @return [String]
    class UpdateDNSViewInput < Struct.new(
      nil,
      :dns_view_id,
      :name,
      :description,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the updated DNS view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated DNS view.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique string that identifies the request and ensures idempotency.</p>
    #   @return [String]
    # @!attribute dnssec_validation
    #   <p>Whether DNSSEC validation is enabled for the updated DNS view.</p>
    #   @return [String]
    # @!attribute edns_client_subnet
    #   <p>Whether EDNS Client Subnet injection is enabled for the updated DNS view.</p>
    #   @return [String]
    # @!attribute firewall_rules_fail_open
    #   <p>Whether firewall rules fail open when they cannot be evaluated for the updated DNS view.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated DNS view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the updated DNS view.</p>
    #   @return [String]
    # @!attribute global_resolver_id
    #   <p>The ID of the global resolver associated with the updated DNS view.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the DNS view was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the DNS view was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the updated DNS view.</p>
    #   @return [String]
    class UpdateDNSViewOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :name,
      :description,
      :global_resolver_id,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domains
    #   <p>A list of the domains. You can add up to 1000 domains per request.</p>
    #   @return [Array<String>]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the DNS Firewall domain list to which you want to add the domains.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The operation for updating the domain list. The allowed values are ADD, REMOVE, and REPLACE.</p>
    #   @return [String]
    class UpdateFirewallDomainsInput < Struct.new(
      nil,
      :domains,
      :firewall_domain_list_id,
      :operation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the DNS Firewall domain list.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The operational status of the domain list.</p>
    #   @return [String]
    class UpdateFirewallDomainsOutput < Struct.new(
      nil,
      :id,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold for DNS Firewall Advanced. You must provide this value when you create a DNS Firewall Advanced rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the Firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>The type of the DNS Firewall Advanced rule. Valid values are DGA, DNS_TUNNELING, and DICTIONARY_DGA.</p>
    #   @return [String]
    # @!attribute firewall_rule_id
    #   <p>The ID of the DNS Firewall rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DNS Firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #   @return [Integer]
    class UpdateFirewallRuleInput < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :client_token,
      :confidence_threshold,
      :description,
      :dns_advanced_protection,
      :firewall_rule_id,
      :name,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule.</p>
    #   @return [String]
    # @!attribute block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #   @return [String]
    # @!attribute block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #   @return [String]
    # @!attribute block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #   @return [Integer]
    # @!attribute block_response
    #   <p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold for DNS Firewall Advanced. You must provide this value when you create a DNS Firewall Advanced rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the Firewall rule was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the Firewall rule.</p>
    #   @return [String]
    # @!attribute dns_advanced_protection
    #   <p>The type of the DNS Firewall Advanced rule. Valid values are DGA, DNS_TUNNELING, and DICTIONARY_DGA.</p>
    #   @return [String]
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list associated with the Firewall rule.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the Firewall rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Firewall rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #   @return [Integer]
    # @!attribute dns_view_id
    #   <p>The ID of the DNS view the Firewall rule is associated with.</p>
    #   @return [String]
    # @!attribute query_type
    #   <p>The DNS query type you want the rule to evaluate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The operational status of the firewall rule.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time and date the rule was updated.</p>
    #   @return [Time]
    class UpdateFirewallRuleOutput < Struct.new(
      nil,
      :action,
      :block_override_dns_type,
      :block_override_domain,
      :block_override_ttl,
      :block_response,
      :confidence_threshold,
      :created_at,
      :description,
      :dns_advanced_protection,
      :firewall_domain_list_id,
      :id,
      :name,
      :priority,
      :dns_view_id,
      :query_type,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_resolver_id
    #   <p>The ID of the Global Resolver.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Global Resolver.</p>
    #   @return [String]
    # @!attribute observability_region
    #   <p>The Amazon Web Services Regions in which the users' Global Resolver query resolution logs will be propagated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Global Resolver.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type for the Global Resolver. Valid values are IPV4 or DUAL_STACK for both IPv4 and IPv6 support.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The list of Amazon Web Services Regions where the Global Resolver will operate. The resolver will be distributed across these Regions to provide global availability and low-latency DNS resolution.</p>
    #   @return [Array<String>]
    class UpdateGlobalResolverInput < Struct.new(
      nil,
      :global_resolver_id,
      :name,
      :observability_region,
      :description,
      :ip_address_type,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the Global Resolver.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Global Resolver.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The hostname to be used by the customers' DNS clients for certification validation.</p>
    #   @return [String]
    # @!attribute observability_region
    #   <p>The Amazon Web Services Regions in which the users' Global Resolver query resolution logs will be propagated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the Global Resolver.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the Global Resolver.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The Amazon Web Services Regions in which the Global Resolver will operate.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The time and date the Global Resolverwas created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time and date the Global Resolver was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The operational status of the Global Resolver.</p>
    #   @return [String]
    # @!attribute ipv4_addresses
    #   <p>List of anycast IPv4 addresses associated with the Global Resolver instance.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_addresses
    #   <p>List of anycast IPv6 addresses associated with the updated Global Resolver instance. This field is only populated when ipAddressType is DUAL_STACK.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address type configured for the updated Global Resolver.</p>
    #   @return [String]
    class UpdateGlobalResolverOutput < Struct.new(
      nil,
      :id,
      :arn,
      :client_token,
      :dns_name,
      :observability_region,
      :name,
      :description,
      :regions,
      :created_at,
      :updated_at,
      :status,
      :ipv4_addresses,
      :ipv6_addresses,
      :ip_address_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute hosted_zone_association_id
    #   <p>The ID of the private hosted zone association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name you want to update the hosted zone association to.</p>
    #   @return [String]
    class UpdateHostedZoneAssociationInput < Struct.new(
      nil,
      :hosted_zone_association_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the private hosted zone association.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the private hosted zone association.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The ID of the private hosted zone.</p>
    #   @return [String]
    # @!attribute hosted_zone_name
    #   <p>The name of the domain associated with the private hosted zone.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the private hosted zone association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the private hosted zone association was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time and date the private hosted zone association was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The operational status of the private hosted zone association.</p>
    #   @return [String]
    class UpdateHostedZoneAssociationOutput < Struct.new(
      nil,
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters are invalid. Check the parameter values and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>Reason the request failed validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of fields that aren't valid.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a field that failed validation.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The validation error message for the field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
