# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53GlobalResolver
  module Types

    # You don't have permission to perform this operation. Check your IAM
    # permissions and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an access source.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the access source.
    #   @return [String]
    #
    # @!attribute [rw] cidr
    #   The CIDR block that defines the IP address range for the access
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the access source was created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique identifier of the access source.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type of the access source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access source.
    #   @return [String]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view that the access source is associated with.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol used by the access source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the access source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the access source was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/AccessSourcesItem AWS API Documentation
    #
    class AccessSourcesItem < Struct.new(
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a token.
    #
    # @!attribute [rw] id
    #   The unique identifier of the token.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the token.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the token was created.
    #   @return [Time]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view associated with the token.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The date and time when the token expires.
    #   @return [Time]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the global resolver associated with the token.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the token.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the token.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the token was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/AccessTokenItem AWS API Documentation
    #
    class AccessTokenItem < Struct.new(
      :id,
      :arn,
      :created_at,
      :dns_view_id,
      :expires_at,
      :global_resolver_id,
      :name,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hosted_zone_id
    #   The ID of the Route 53 private hosted zone to associate with the
    #   Route 53 Global Resolver resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An Amazon Resource Name (ARN) of the Route 53 Global Resolver the
    #   private hosted zone will be associated to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the private hosted zone association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/AssociateHostedZoneInput AWS API Documentation
    #
    class AssociateHostedZoneInput < Struct.new(
      :hosted_zone_id,
      :resource_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An Amazon Resource Name (ARN) of the Route 53 Global Resolver the
    #   private hosted zone is associated to.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   ID of the private hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_name
    #   Name of the hosted zone (also the domain associated with the hosted
    #   zone).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the private hosted zone association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the private hosted zone association was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the private hosted zone association was modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Aggregate status for all the AWS Regions in which the Route 53
    #   Global Resolver exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/AssociateHostedZoneOutput AWS API Documentation
    #
    class AssociateHostedZoneOutput < Struct.new(
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rules
    #   The `BatchCreateFirewallRuleInputItem` objects contain the
    #   information for each Firewall rule.
    #   @return [Array<Types::BatchCreateFirewallRuleInputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchCreateFirewallRuleInput AWS API Documentation
    #
    class BatchCreateFirewallRuleInput < Struct.new(
      :firewall_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a DNS Firewall rule to create in a batch operation.
    #
    # @!attribute [rw] action
    #   The action to take when a DNS query matches the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record type for the custom response when the action is
    #   BLOCK.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom domain name for the BLOCK response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The TTL value for the custom response when the action is BLOCK.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The type of block response to return when the action is BLOCK.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique string that identifies the request and ensures idempotency.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold for advanced threat detection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   Whether to enable advanced DNS threat protection for the firewall
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the firewall domain list to associate with the rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the firewall rule.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view to associate the firewall rule with.
    #   @return [String]
    #
    # @!attribute [rw] q_type
    #   The DNS query type that the firewall rule should match.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchCreateFirewallRuleInputItem AWS API Documentation
    #
    class BatchCreateFirewallRuleInputItem < Struct.new(
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
      :q_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   High level information about the DNS Firewall rules that failed to
    #   create.
    #   @return [Array<Types::BatchCreateFirewallRuleOutputItem>]
    #
    # @!attribute [rw] successes
    #   High level information about the DNS Firewall rules that were
    #   created.
    #   @return [Array<Types::BatchCreateFirewallRuleOutputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchCreateFirewallRuleOutput AWS API Documentation
    #
    class BatchCreateFirewallRuleOutput < Struct.new(
      :failures,
      :successes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the result of creating a DNS Firewall rule in a
    # batch operation.
    #
    # @!attribute [rw] firewall_rule
    #   The firewall rule that was created in the batch operation.
    #   @return [Types::BatchCreateFirewallRuleResult]
    #
    # @!attribute [rw] code
    #   The HTTP response code for the batch operation result.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   A message describing the result of the batch operation, including
    #   error details if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchCreateFirewallRuleOutputItem AWS API Documentation
    #
    class BatchCreateFirewallRuleOutputItem < Struct.new(
      :firewall_rule,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of creating a firewall rule in a batch operation.
    #
    # @!attribute [rw] action
    #   The action configured for the created firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record type configured for the created firewall rule's
    #   custom response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom domain name configured for the created firewall rule's
    #   BLOCK response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The TTL value configured for the created firewall rule's custom
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The type of block response configured for the created firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identified the request and ensured
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold configured for the created firewall rule's
    #   advanced threat detection.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the firewall rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the created firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   Whether advanced DNS threat protection is enabled for the created
    #   firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the firewall domain list associated with the created
    #   firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the created firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] managed_domain_list_name
    #   The name of the managed domain list associated with the created
    #   firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the created firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the created firewall rule.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view associated with the created firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] query_type
    #   The DNS query type that the created firewall rule matches.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the created firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the firewall rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchCreateFirewallRuleResult AWS API Documentation
    #
    class BatchCreateFirewallRuleResult < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rules
    #   An array of the DNS Firewall IDs to be deleted.
    #   @return [Array<Types::BatchDeleteFirewallRuleInputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchDeleteFirewallRuleInput AWS API Documentation
    #
    class BatchDeleteFirewallRuleInput < Struct.new(
      :firewall_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a DNS Firewall rule to delete in a batch operation.
    #
    # @!attribute [rw] firewall_rule_id
    #   The ID of the DNS Firewall rule to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchDeleteFirewallRuleInputItem AWS API Documentation
    #
    class BatchDeleteFirewallRuleInputItem < Struct.new(
      :firewall_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   High level information about the DNS Firewall rules that failed to
    #   delete.
    #   @return [Array<Types::BatchDeleteFirewallRuleOutputItem>]
    #
    # @!attribute [rw] successes
    #   High level information about the DNS Firewall rules that were
    #   deleted successfully.
    #   @return [Array<Types::BatchDeleteFirewallRuleOutputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchDeleteFirewallRuleOutput AWS API Documentation
    #
    class BatchDeleteFirewallRuleOutput < Struct.new(
      :failures,
      :successes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of deleting a firewall rule in a batch operation.
    #
    # @!attribute [rw] firewall_rule
    #   The firewall rule that was deleted in the batch operation.
    #   @return [Types::BatchDeleteFirewallRuleResult]
    #
    # @!attribute [rw] code
    #   The response code for the delete operation.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The response message for the delete operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchDeleteFirewallRuleOutputItem AWS API Documentation
    #
    class BatchDeleteFirewallRuleOutputItem < Struct.new(
      :firewall_rule,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a firewall rule that was deleted in a batch
    # operation.
    #
    # @!attribute [rw] client_token
    #   The unique string that identified the request and ensured
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the deleted firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the deleted firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The final status of the deleted firewall rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchDeleteFirewallRuleResult AWS API Documentation
    #
    class BatchDeleteFirewallRuleResult < Struct.new(
      :client_token,
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rules
    #   The DNS Firewall rule IDs to be updated.
    #   @return [Array<Types::BatchUpdateFirewallRuleInputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchUpdateFirewallRuleInput AWS API Documentation
    #
    class BatchUpdateFirewallRuleInput < Struct.new(
      :firewall_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information for updating a firewall rule in a batch operation.
    #
    # @!attribute [rw] action
    #   The action to take when a DNS query matches the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record type for the custom response when the action is
    #   BLOCK.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom domain name for the BLOCK response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The TTL value for the custom response when the action is BLOCK.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The type of block response to return when the action is BLOCK.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold for advanced threat detection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   Whether to enable advanced DNS threat protection for the firewall
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rule_id
    #   The unique identifier of the firewall rule to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the firewall rule.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchUpdateFirewallRuleInputItem AWS API Documentation
    #
    class BatchUpdateFirewallRuleInputItem < Struct.new(
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
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   High level information about the DNS Firewall rules that failed to
    #   update.
    #   @return [Array<Types::BatchUpdateFirewallRuleOutputItem>]
    #
    # @!attribute [rw] successes
    #   High level information about the DNS Firewall rules that were
    #   successfully updated.
    #   @return [Array<Types::BatchUpdateFirewallRuleOutputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchUpdateFirewallRuleOutput AWS API Documentation
    #
    class BatchUpdateFirewallRuleOutput < Struct.new(
      :failures,
      :successes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of updating a firewall rule in a batch operation.
    #
    # @!attribute [rw] firewall_rule
    #   The firewall rule that was updated in the batch operation.
    #   @return [Types::BatchUpdateFirewallRuleResult]
    #
    # @!attribute [rw] code
    #   The response code for the update operation.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The response message for the update operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchUpdateFirewallRuleOutputItem AWS API Documentation
    #
    class BatchUpdateFirewallRuleOutputItem < Struct.new(
      :firewall_rule,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a firewall rule that was updated in a batch
    # operation.
    #
    # @!attribute [rw] action
    #   The action configured for the updated firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record type configured for the updated firewall rule's
    #   custom response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom domain name configured for the updated firewall rule's
    #   BLOCK response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The TTL value configured for the updated firewall rule's custom
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The type of block response configured for the updated firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identified the request and ensured
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold configured for the updated firewall rule's
    #   advanced threat detection.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the firewall rule was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the updated firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   Whether advanced DNS threat protection is enabled for the updated
    #   firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the firewall domain list associated with the updated
    #   firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the updated firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the updated firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the updated firewall rule.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view associated with the updated firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] query_type
    #   The DNS query type that the updated firewall rule matches.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the updated firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the firewall rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchUpdateFirewallRuleResult AWS API Documentation
    #
    class BatchUpdateFirewallRuleResult < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource. This can
    # occur when trying to modify a resource that is not in a valid state
    # for the requested operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the conflicting resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the conflicting resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cidr
    #   The IP address or CIDR range that is allowed to send DNS queries to
    #   the Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique string that identifies the request and ensures idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type for this access source. Valid values are IPv4
    #   and IPv6 (if the Route 53 Global Resolver supports dual-stack).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the access source.
    #   @return [String]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view to associate with this access source.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The DNS protocol that is permitted for this access source. Valid
    #   values are Do53 (DNS over port 53), DoT (DNS over TLS), and DoH (DNS
    #   over HTTPS).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the access source.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateAccessSourceInput AWS API Documentation
    #
    class CreateAccessSourceInput < Struct.new(
      :cidr,
      :client_token,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the access source.
    #   @return [String]
    #
    # @!attribute [rw] cidr
    #   The IP address or CIDR range that is allowed to send DNS queries to
    #   the Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the access source was created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique identifier for the access source.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type for this access source (IPv4 or IPv6).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the access source.
    #   @return [String]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view associated with this access source.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The DNS protocol that is permitted for this access source (Do53,
    #   DoT, or DoH).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The operational status of the access source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the access source was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateAccessSourceOutput AWS API Documentation
    #
    class CreateAccessSourceOutput < Struct.new(
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This
    #   means that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view to associate with this token.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The date and time when the token expires. Tokens can have a minimum
    #   expiration of 30 days and maximum of 365 days from creation.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A descriptive name for the access token.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of user-defined keys and optional values. These tags can be
    #   used for categorization and organization.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateAccessTokenInput AWS API Documentation
    #
    class CreateAccessTokenInput < Struct.new(
      :client_token,
      :dns_view_id,
      :expires_at,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the access token.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the access token.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the access token was created.
    #   @return [Time]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view associated with this access token.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The date and time when the access token expires.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the access token.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The operational status of the access token.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The access token value. This token should be included in DoH and DoT
    #   requests for authentication. Keep this value secure as it provides
    #   access to your Route 53 Global Resolver.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateAccessTokenOutput AWS API Documentation
    #
    class CreateAccessTokenOutput < Struct.new(
      :id,
      :arn,
      :client_token,
      :created_at,
      :dns_view_id,
      :expires_at,
      :name,
      :status,
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # @!attribute [rw] global_resolver_id
    #   The ID of the Route 53 Global Resolver to associate with this DNS
    #   view.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique string that identifies the request and ensures idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] dnssec_validation
    #   Whether to enable DNSSEC validation for DNS queries in this DNS
    #   view. When enabled, the resolver verifies the authenticity and
    #   integrity of DNS responses from public name servers for
    #   DNSSEC-signed domains.
    #   @return [String]
    #
    # @!attribute [rw] edns_client_subnet
    #   Whether to enable EDNS Client Subnet injection for DNS queries in
    #   this DNS view. When enabled, client subnet information is forwarded
    #   to provide more accurate geographic-based DNS responses.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules_fail_open
    #   Determines the behavior when Route 53 Global Resolver cannot apply
    #   DNS firewall rules due to service impairment. When enabled, DNS
    #   queries are allowed through; when disabled, queries are blocked.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the DNS view.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateDNSViewInput AWS API Documentation
    #
    class CreateDNSViewInput < Struct.new(
      :global_resolver_id,
      :client_token,
      :name,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] dnssec_validation
    #   Whether DNSSEC validation is enabled for DNS queries in this DNS
    #   view.
    #   @return [String]
    #
    # @!attribute [rw] edns_client_subnet
    #   Whether EDNS Client Subnet injection is enabled for DNS queries in
    #   this DNS view.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules_fail_open
    #   The behavior when Route 53 Global Resolver cannot apply DNS firewall
    #   rules due to service impairment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the Route 53 Global Resolver instance the DNS view is
    #   created for.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the DNS view was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the DNS view was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The operational status of the DNS view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateDNSViewOutput AWS API Documentation
    #
    class CreateDNSViewOutput < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This
    #   means that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the Route 53 Global Resolver that the domain list will be
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of user-defined keys and optional values. These tags can be
    #   used for categorization and organization.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateFirewallDomainListInput AWS API Documentation
    #
    class CreateFirewallDomainListInput < Struct.new(
      :client_token,
      :global_resolver_id,
      :description,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) for the domain list.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the Route 53 Global Resolver that the domain list is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the domain list was created on.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Description for the domain list.
    #   @return [String]
    #
    # @!attribute [rw] domain_count
    #   Number of domains in the domain list.
    #   @return [Integer]
    #
    # @!attribute [rw] id
    #   ID of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Creation status of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time and date the domain list was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateFirewallDomainListOutput AWS API Documentation
    #
    class CreateFirewallDomainListOutput < Struct.new(
      :arn,
      :global_resolver_id,
      :created_at,
      :description,
      :domain_count,
      :id,
      :name,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list:
    #
    #   * `ALLOW` - Permit the request to go through.
    #
    #   * `ALERT` - Permit the request and send metrics and logs to
    #     CloudWatch.
    #
    #   * `BLOCK` - Disallow the request. This option requires additional
    #     details in the rule's `BlockResponse`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record's type. This determines the format of the record
    #   value that you provided in `BlockOverrideDomain`. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is
    #   `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom DNS record to send back in response to the query. Used
    #   for the rule action `BLOCK` with a `BlockResponse` setting of
    #   `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is
    #   `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is
    #   `OVERRIDE`.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The response to return when the action is BLOCK. Valid values are
    #   NXDOMAIN (domain does not exist), NODATA (domain exists but no
    #   records), or OVERRIDE (return custom response).
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This
    #   means that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold for advanced threat detection. Valid values
    #   are HIGH, MEDIUM, or LOW, indicating the accuracy level required for
    #   threat detection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   Whether to enable advanced DNS threat protection for this rule.
    #   Advanced protection can detect and block DNS tunneling and Domain
    #   Generation Algorithm (DGA) threats.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the firewall domain list to use in this rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of this rule. Rules are evaluated in priority order,
    #   with lower numbers having higher priority. When a DNS query matches
    #   multiple rules, the rule with the highest priority (lowest number)
    #   is applied.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view to associate with this firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] q_type
    #   The DNS query type to match for this rule. Examples include A (IPv4
    #   address), AAAA (IPv6 address), MX (mail exchange), or TXT (text
    #   record).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateFirewallRuleInput AWS API Documentation
    #
    class CreateFirewallRuleInput < Struct.new(
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
      :q_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action that DNS Firewall takes on DNS queries that match this
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record type for the custom response when blockResponse is
    #   OVERRIDE.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom domain to return when the action is BLOCK and
    #   blockResponse is OVERRIDE.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The time-to-live (TTL) value for the custom response when
    #   blockResponse is OVERRIDE.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The response to return when the action is BLOCK.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold for advanced threat detection.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the firewall rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   Whether advanced DNS threat protection is enabled for this rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the firewall domain list used in this rule.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the firewall rule.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view associated with this firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] query_type
    #   The DNS query type that this rule matches.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The operational status of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the firewall rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateFirewallRuleOutput AWS API Documentation
    #
    class CreateFirewallRuleOutput < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique string that identifies the request and ensures idempotency.
    #   If you make multiple requests with the same client token, only one
    #   Route 53 Global Resolver is created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the Route 53 Global Resolver instance.
    #   Maximum length of 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the Route 53 Global Resolver instance.
    #   Maximum length of 64 characters.
    #   @return [String]
    #
    # @!attribute [rw] observability_region
    #   The AWS region where query resolution logs and metrics will be
    #   aggregated and delivered. If not specified, logging is not enabled.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   List of AWS regions where the Route 53 Global Resolver will operate.
    #   The resolver will be distributed across these regions to provide
    #   global availability and low-latency DNS resolution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the Route 53 Global Resolver. Tags are
    #   key-value pairs that help you organize and identify your resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateGlobalResolverInput AWS API Documentation
    #
    class CreateGlobalResolverInput < Struct.new(
      :client_token,
      :description,
      :name,
      :observability_region,
      :regions,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the Route 53 Global Resolver was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The hostname that DNS clients should use for TLS certificate
    #   validation when connecting to the Route 53 Global Resolver. This
    #   value resolves to the global anycast IP addresses for the resolver.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses
    #   The global anycast IPv4 addresses associated with the Route 53
    #   Global Resolver. DNS clients can send queries to these addresses
    #   from anywhere on the internet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] observability_region
    #   The AWS Region where observability data for the Route 53 Global
    #   Resolver is stored.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The AWS Regions where the Route 53 Global Resolver is deployed and
    #   operational.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current status of the Route 53 Global Resolver. Possible values
    #   are CREATING (being provisioned), UPDATING (being modified),
    #   OPERATIONAL (ready to serve queries), or DELETING (being removed).
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the Route 53 Global Resolver was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateGlobalResolverOutput AWS API Documentation
    #
    class CreateGlobalResolverOutput < Struct.new(
      :id,
      :arn,
      :client_token,
      :created_at,
      :description,
      :dns_name,
      :ipv4_addresses,
      :name,
      :observability_region,
      :regions,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a DNS view.
    #
    # @!attribute [rw] id
    #   The unique identifier of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] dnssec_validation
    #   Whether DNSSEC validation is enabled for the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] edns_client_subnet
    #   Whether EDNS Client Subnet injection is enabled for the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules_fail_open
    #   Whether firewall rules fail open when they cannot be evaluated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the global resolver that the DNS view is associated with.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the DNS view was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the DNS view was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the DNS view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DNSViewSummary AWS API Documentation
    #
    class DNSViewSummary < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_source_id
    #   The unique identifier of the access source to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteAccessSourceInput AWS API Documentation
    #
    class DeleteAccessSourceInput < Struct.new(
      :access_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted access source.
    #   @return [String]
    #
    # @!attribute [rw] cidr
    #   The IP address or CIDR range of the deleted access source.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the access source was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique identifier of the deleted access source.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type of the deleted access source (IPv4 or IPv6).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the deleted access source.
    #   @return [String]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view that was associated with the deleted access
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The DNS protocol that was permitted for the deleted access source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The final status of the deleted access source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the access source was last updated before
    #   deletion.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteAccessSourceOutput AWS API Documentation
    #
    class DeleteAccessSourceOutput < Struct.new(
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token_id
    #   The unique identifier of the access token to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteAccessTokenInput AWS API Documentation
    #
    class DeleteAccessTokenInput < Struct.new(
      :access_token_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the deleted access token.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The final status of the deleted access token.
    #   @return [String]
    #
    # @!attribute [rw] deleted_at
    #   The date and time when the access token was deleted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteAccessTokenOutput AWS API Documentation
    #
    class DeleteAccessTokenOutput < Struct.new(
      :id,
      :status,
      :deleted_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dns_view_id
    #   The unique identifier of the DNS view to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteDNSViewInput AWS API Documentation
    #
    class DeleteDNSViewInput < Struct.new(
      :dns_view_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the deleted DNS view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted DNS view.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] dnssec_validation
    #   Whether DNSSEC validation was enabled for the deleted DNS view.
    #   @return [String]
    #
    # @!attribute [rw] edns_client_subnet
    #   Whether EDNS Client Subnet injection was enabled for the deleted DNS
    #   view.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules_fail_open
    #   The firewall rules fail-open behavior that was configured for the
    #   deleted DNS view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the deleted DNS view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deleted DNS view.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the Route 53 Global Resolver that the deleted DNS view was
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the DNS view was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the DNS view was last updated before
    #   deletion.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The final status of the deleted DNS view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteDNSViewOutput AWS API Documentation
    #
    class DeleteDNSViewOutput < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list_id
    #   The unique identifier of the firewall domain list to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteFirewallDomainListInput AWS API Documentation
    #
    class DeleteFirewallDomainListInput < Struct.new(
      :firewall_domain_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the deleted firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the deleted firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The final status of the deleted firewall domain list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteFirewallDomainListOutput AWS API Documentation
    #
    class DeleteFirewallDomainListOutput < Struct.new(
      :arn,
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_id
    #   The unique identifier of the firewall rule to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteFirewallRuleInput AWS API Documentation
    #
    class DeleteFirewallRuleInput < Struct.new(
      :firewall_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action that was configured for the deleted firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record type that was configured for the deleted firewall
    #   rule's custom response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom domain that was configured for the deleted firewall
    #   rule's BLOCK response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The TTL value that was configured for the deleted firewall rule's
    #   custom response.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The block response type that was configured for the deleted firewall
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold that was configured for the deleted
    #   firewall rule's advanced threat detection.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the firewall rule was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the deleted firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   Whether advanced DNS threat protection was enabled for the deleted
    #   firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the firewall domain list that was associated with the
    #   deleted firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the deleted firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the deleted firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority that was configured for the deleted firewall rule.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view that was associated with the deleted firewall
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] query_type
    #   The DNS query type that the deleted firewall rule was configured to
    #   match.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The final status of the deleted firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the firewall rule was last updated before
    #   deletion.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteFirewallRuleOutput AWS API Documentation
    #
    class DeleteFirewallRuleOutput < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_resolver_id
    #   The unique identifier of the Route 53 Global Resolver to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteGlobalResolverInput AWS API Documentation
    #
    class DeleteGlobalResolverInput < Struct.new(
      :global_resolver_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the deleted Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted Route 53 Global
    #   Resolver.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The hostname that DNS clients used for TLS certificate validation
    #   when connecting to the deleted Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] observability_region
    #   The AWS Region where observability data for the deleted Route 53
    #   Global Resolver was stored.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the deleted Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deleted Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The AWS Regions where the deleted Route 53 Global Resolver was
    #   deployed and operational.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the Route 53 Global Resolver was originally
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the Route 53 Global Resolver was last updated
    #   before deletion.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The final status of the deleted Route 53 Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses
    #   The global anycast IPv4 addresses that were associated with the
    #   deleted Route 53 Global Resolver.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteGlobalResolverOutput AWS API Documentation
    #
    class DeleteGlobalResolverOutput < Struct.new(
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
      :ipv4_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dns_view_id
    #   The unique identifier of the DNS view to disable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DisableDNSViewInput AWS API Documentation
    #
    class DisableDNSViewInput < Struct.new(
      :dns_view_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the disabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the disabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] dnssec_validation
    #   Whether DNSSEC validation is enabled for the disabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] edns_client_subnet
    #   Whether EDNS Client Subnet injection is enabled for the disabled DNS
    #   view.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules_fail_open
    #   The firewall rules fail-open behavior configured for the disabled
    #   DNS view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the disabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the disabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the Route 53 Global Resolver that the disabled DNS view is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the DNS view was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the DNS view was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the disabled DNS view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DisableDNSViewOutput AWS API Documentation
    #
    class DisableDNSViewOutput < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hosted_zone_id
    #   The ID of the Route 53 private hosted zone to disassociate.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Route 53 Global Resolver
    #   resource to disassociate the hosted zone from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DisassociateHostedZoneInput AWS API Documentation
    #
    class DisassociateHostedZoneInput < Struct.new(
      :hosted_zone_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the disassociation.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Route 53 Global Resolver
    #   resource that the hosted zone was disassociated from.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the Route 53 private hosted zone that was disassociated.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_name
    #   The name of the Route 53 private hosted zone that was disassociated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the association that was removed.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the association was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the association was last updated before
    #   disassociation.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The final status of the disassociation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DisassociateHostedZoneOutput AWS API Documentation
    #
    class DisassociateHostedZoneOutput < Struct.new(
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dns_view_id
    #   The unique identifier of the DNS view to enable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/EnableDNSViewInput AWS API Documentation
    #
    class EnableDNSViewInput < Struct.new(
      :dns_view_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the enabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the enabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] dnssec_validation
    #   Whether DNSSEC validation is enabled for the enabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] edns_client_subnet
    #   Whether EDNS Client Subnet injection is enabled for the enabled DNS
    #   view.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules_fail_open
    #   The firewall rules fail-open behavior configured for the enabled DNS
    #   view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the enabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the enabled DNS view.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the Route 53 Global Resolver that the enabled DNS view is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the DNS view was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the DNS view was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the enabled DNS view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/EnableDNSViewOutput AWS API Documentation
    #
    class EnableDNSViewOutput < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a firewall domain list.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the global resolver that the firewall domain list is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the firewall domain list was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the firewall domain list was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/FirewallDomainListsItem AWS API Documentation
    #
    class FirewallDomainListsItem < Struct.new(
      :arn,
      :global_resolver_id,
      :created_at,
      :description,
      :id,
      :name,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a firewall rule.
    #
    # @!attribute [rw] action
    #   The action configured for the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record type configured for the firewall rule's custom
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom domain name configured for the firewall rule's BLOCK
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The TTL value configured for the firewall rule's custom response.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The type of block response configured for the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold configured for the firewall rule's
    #   advanced threat detection.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the firewall rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   Whether advanced DNS threat protection is enabled for the firewall
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the firewall domain list associated with the firewall
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the firewall rule.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view associated with the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] query_type
    #   The DNS query type that the firewall rule matches.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the firewall rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/FirewallRulesItem AWS API Documentation
    #
    class FirewallRulesItem < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_source_id
    #   The unique identifier of the access source to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetAccessSourceInput AWS API Documentation
    #
    class GetAccessSourceInput < Struct.new(
      :access_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the access source.
    #   @return [String]
    #
    # @!attribute [rw] cidr
    #   The IP range for the rule's parameters in CIDR notation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   ID for the rule.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the access source.
    #   @return [String]
    #
    # @!attribute [rw] dns_view_id
    #   ID for the DNS view that the rule is associated to.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol determines how data is transmitted to a Global Resolver
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Information about the status of the rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time and date the access source was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetAccessSourceOutput AWS API Documentation
    #
    class GetAccessSourceOutput < Struct.new(
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token_id
    #   ID of the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetAccessTokenInput AWS API Documentation
    #
    class GetAccessTokenInput < Struct.new(
      :access_token_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   ID of the token.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the token.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This
    #   means that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the token was created.
    #   @return [Time]
    #
    # @!attribute [rw] dns_view_id
    #   ID of the DNS view the token is associated to.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The token's expiration time and date.
    #   @return [Time]
    #
    # @!attribute [rw] global_resolver_id
    #   ID of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the token.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The operational status of the token.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time and date the token was created.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   The value of the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetAccessTokenOutput AWS API Documentation
    #
    class GetAccessTokenOutput < Struct.new(
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
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view to retrieve information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetDNSViewInput AWS API Documentation
    #
    class GetDNSViewInput < Struct.new(
      :dns_view_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   ID of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This
    #   means that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #   @return [String]
    #
    # @!attribute [rw] dnssec_validation
    #   Specifies whether DNSSEC is enabled or disabled for the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] edns_client_subnet
    #   Specifies whether edns0 client subnet is enabled.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules_fail_open
    #   Specifies the DNS Firewall failure mode configuration. When enabled,
    #   the DNS Firewall allows DNS queries to proceed if it's unable to
    #   properly evaluate them. When disabled, the DNS Firewall blocks DNS
    #   queries it's unable to evaluate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   ID of the Global Resolver the DNS view is associated to.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the DNS view was creates on.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time and date the DNS view was updated on.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Operational status of the DNS view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetDNSViewOutput AWS API Documentation
    #
    class GetDNSViewOutput < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list_id
    #   ID of the domain list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetFirewallDomainListInput AWS API Documentation
    #
    class GetFirewallDomainListInput < Struct.new(
      :firewall_domain_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   ID of the Global Resolver that the domain list is associated to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This
    #   means that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the domain list was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] domain_count
    #   Number of domains in the domain list.
    #   @return [Integer]
    #
    # @!attribute [rw] id
    #   ID of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Operational status of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the status of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the domain list was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetFirewallDomainListOutput AWS API Documentation
    #
    class GetFirewallDomainListOutput < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_id
    #   ID of the DNS Firewall rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetFirewallRuleInput AWS API Documentation
    #
    class GetFirewallRuleInput < Struct.new(
      :firewall_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list, or a threat
    #   in a DNS Firewall Advanced rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record's type. This determines the format of the record
    #   value that you provided in `BlockOverrideDomain`. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom DNS record to send back in response to the query. Used
    #   for the rule action `BLOCK` with a `BlockResponse` setting of
    #   `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The way that you want DNS Firewall to block the request. Used for
    #   the rule action setting `BLOCK`.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold for DNS Firewall Advanced. You must provide
    #   this value when you create a DNS Firewall Advanced rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the DNS Firewall rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the DNS Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   The type of the DNS Firewall Advanced rule. Valid values are DGA and
    #   DNS\_TUNNELING.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of a DNS Firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the DNS Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DNS Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The setting that determines the processing order of the rule in the
    #   rule group. DNS Firewall processes the rules in a rule group by
    #   order of priority, starting from the lowest setting.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_view_id
    #   The DNS view ID the DNS Firewall is associated with.
    #   @return [String]
    #
    # @!attribute [rw] query_type
    #   The DNS query type you want the rule to evaluate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The operational status of the DNS Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the DNS Firewall rule was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetFirewallRuleOutput AWS API Documentation
    #
    class GetFirewallRuleOutput < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_resolver_id
    #   The ID of the Route 53 Global Resolver to retrieve information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetGlobalResolverInput AWS API Documentation
    #
    class GetGlobalResolverInput < Struct.new(
      :global_resolver_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This
    #   means that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The hostname used by the customers' DNS clients for certification
    #   validation.
    #   @return [String]
    #
    # @!attribute [rw] observability_region
    #   The AWS Regions in which the users' Global Resolver query
    #   resolution logs will be propagated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The AWS Regions in which the Global Resolver operate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time the Global Resolver was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the Global Resolver was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The operational status of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses
    #   List of anycast IPv4 addresses associated with the Global Resolver
    #   instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetGlobalResolverOutput AWS API Documentation
    #
    class GetGlobalResolverOutput < Struct.new(
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
      :ipv4_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hosted_zone_association_id
    #   ID of the private hosted zone association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetHostedZoneAssociationInput AWS API Documentation
    #
    class GetHostedZoneAssociationInput < Struct.new(
      :hosted_zone_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   ID of the private hosted zone association.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the DNS view the private hosted zone
    #   is associated to.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   ID of the hosted zone associated to the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_name
    #   Name of the domain associated with the private hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the private hosted zone association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the private hosted zone association was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time and date the private hosted zone association was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The operational status of the private hosted zone association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetHostedZoneAssociationOutput AWS API Documentation
    #
    class GetHostedZoneAssociationOutput < Struct.new(
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_firewall_domain_list_id
    #   ID of the Managed Domain List.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetManagedFirewallDomainListInput AWS API Documentation
    #
    class GetManagedFirewallDomainListInput < Struct.new(
      :managed_firewall_domain_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   Description of the Managed Domain List.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the Managed Domain List.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the Managed Domain List.
    #   @return [String]
    #
    # @!attribute [rw] managed_list_type
    #   Type of the managed category. This is either `THREAT` or `CONTENT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetManagedFirewallDomainListOutput AWS API Documentation
    #
    class GetManagedFirewallDomainListOutput < Struct.new(
      :description,
      :id,
      :name,
      :managed_list_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a global resolver.
    #
    # @!attribute [rw] id
    #   The unique identifier of the global resolver.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the global resolver.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of the global resolver.
    #   @return [String]
    #
    # @!attribute [rw] observability_region
    #   The AWS Region where observability data is collected for the global
    #   resolver.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the global resolver.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the global resolver.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The AWS Regions where the global resolver is deployed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the global resolver was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the global resolver was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the global resolver.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses
    #   The IPv4 addresses assigned to the global resolver.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GlobalResolversItem AWS API Documentation
    #
    class GlobalResolversItem < Struct.new(
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
      :ipv4_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a hosted zone association.
    #
    # @!attribute [rw] id
    #   The unique identifier of the hosted zone association.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource associated with the
    #   hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_name
    #   The name of the hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hosted zone association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the hosted zone association was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the hosted zone association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the hosted zone association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/HostedZoneAssociationSummary AWS API Documentation
    #
    class HostedZoneAssociationSummary < Struct.new(
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_file_url
    #   The fully qualified URL of the file in Amazon S3 that contains the
    #   list of domains to import. The file should contain one domain per
    #   line.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   ID of the DNS Firewall domain list that you want to import the
    #   domain list to.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   This value is `REPLACE`, and it updates the domain list to match the
    #   list of domains in the imported file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ImportFirewallDomainsInput AWS API Documentation
    #
    class ImportFirewallDomainsInput < Struct.new(
      :domain_file_url,
      :firewall_domain_list_id,
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   ID of the DNS Firewall domain list that you imported the domain list
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the DNS Firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Operational status of the DNS Firewall domain list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ImportFirewallDomainsOutput AWS API Documentation
    #
    class ImportFirewallDomainsOutput < Struct.new(
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Number of seconds in which the caller can retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Values to filter the results.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListAccessSourcesInput AWS API Documentation
    #
    class ListAccessSourcesInput < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response. Provide this token in the next call
    #   to get the results not returned in this call.
    #   @return [String]
    #
    # @!attribute [rw] access_sources
    #   An array containing information about the access sources, such as
    #   the ID, CIDR etc.
    #   @return [Array<Types::AccessSourcesItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListAccessSourcesOutput AWS API Documentation
    #
    class ListAccessSourcesOutput < Struct.new(
      :next_token,
      :access_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #   @return [String]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view to list the tokens for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filtering parameters.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListAccessTokensInput AWS API Documentation
    #
    class ListAccessTokensInput < Struct.new(
      :max_results,
      :next_token,
      :dns_view_id,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response. Provide this token in the next call
    #   to get the results not returned in this call.
    #   @return [String]
    #
    # @!attribute [rw] access_tokens
    #   List of the tokens.
    #   @return [Array<Types::AccessTokenItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListAccessTokensOutput AWS API Documentation
    #
    class ListAccessTokensOutput < Struct.new(
      :next_token,
      :access_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The Global Resolver ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListDNSViewsInput AWS API Documentation
    #
    class ListDNSViewsInput < Struct.new(
      :max_results,
      :next_token,
      :global_resolver_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response. Provide this token in the next call
    #   to get the results not returned in this call.
    #   @return [String]
    #
    # @!attribute [rw] dns_views
    #   An array of information about the DNS views, such as whether DNSSEC
    #   is enabled, creation time, etc.
    #   @return [Array<Types::DNSViewSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListDNSViewsOutput AWS API Documentation
    #
    class ListDNSViewsOutput < Struct.new(
      :next_token,
      :dns_views)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the Global Resolver that contains the DNS view the domain
    #   lists are associated to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListFirewallDomainListsInput AWS API Documentation
    #
    class ListFirewallDomainListsInput < Struct.new(
      :max_results,
      :next_token,
      :global_resolver_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response. Provide this token in the next call
    #   to get the results not returned in this call.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_lists
    #   List of the DNS Firewall domain lists.
    #   @return [Array<Types::FirewallDomainListsItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListFirewallDomainListsOutput AWS API Documentation
    #
    class ListFirewallDomainListsOutput < Struct.new(
      :next_token,
      :firewall_domain_lists)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   ID of the DNS Firewall domain list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListFirewallDomainsInput AWS API Documentation
    #
    class ListFirewallDomainsInput < Struct.new(
      :max_results,
      :next_token,
      :firewall_domain_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response. Provide this token in the next call
    #   to get the results not returned in this call.
    #   @return [String]
    #
    # @!attribute [rw] domains
    #   List of domains in the specified domain list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListFirewallDomainsOutput AWS API Documentation
    #
    class ListFirewallDomainsOutput < Struct.new(
      :next_token,
      :domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #   @return [String]
    #
    # @!attribute [rw] dns_view_id
    #   ID of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Values to filter the results.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListFirewallRulesInput AWS API Documentation
    #
    class ListFirewallRulesInput < Struct.new(
      :max_results,
      :next_token,
      :dns_view_id,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response. Provide this token in the next call
    #   to get the results not returned in this call.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules
    #   List of the firewall rules and information about them.
    #   @return [Array<Types::FirewallRulesItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListFirewallRulesOutput AWS API Documentation
    #
    class ListFirewallRulesOutput < Struct.new(
      :next_token,
      :firewall_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of Route 53 Global Resolver instances to return
    #   in the response. Valid range is 1-100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. This value is returned in
    #   the response if there are more results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListGlobalResolversInput AWS API Documentation
    #
    class ListGlobalResolversInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response. Provide this token in the next call
    #   to get the results not returned in this call.
    #   @return [String]
    #
    # @!attribute [rw] global_resolvers
    #   Paginated list of Global Resolvers.
    #   @return [Array<Types::GlobalResolversItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListGlobalResolversOutput AWS API Documentation
    #
    class ListGlobalResolversOutput < Struct.new(
      :next_token,
      :global_resolvers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the DNS view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListHostedZoneAssociationsInput AWS API Documentation
    #
    class ListHostedZoneAssociationsInput < Struct.new(
      :max_results,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response. Provide this token in the next call
    #   to get the results not returned in this call.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_associations
    #   List of the private hosted zone associations.
    #   @return [Array<Types::HostedZoneAssociationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListHostedZoneAssociationsOutput AWS API Documentation
    #
    class ListHostedZoneAssociationsOutput < Struct.new(
      :next_token,
      :hosted_zone_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #   @return [String]
    #
    # @!attribute [rw] managed_firewall_domain_list_type
    #   The category of the Manage DNS list either `THREAT` or `CONTENT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListManagedFirewallDomainListsInput AWS API Documentation
    #
    class ListManagedFirewallDomainListsInput < Struct.new(
      :max_results,
      :next_token,
      :managed_firewall_domain_list_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response. Provide this token in the next call
    #   to get the results not returned in this call.
    #   @return [String]
    #
    # @!attribute [rw] managed_firewall_domain_lists
    #   List of the Managed Domain Lists.
    #   @return [Array<Types::ManagedFirewallDomainListsItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListManagedFirewallDomainListsOutput AWS API Documentation
    #
    class ListManagedFirewallDomainListsOutput < Struct.new(
      :next_token,
      :managed_firewall_domain_lists)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of user-defined keys and optional values. These tags can be
    #   used for categorization and organization.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a managed firewall domain list.
    #
    # @!attribute [rw] description
    #   A description of the managed firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the managed firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] managed_list_type
    #   The type of the managed firewall domain list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ManagedFirewallDomainListsItem AWS API Documentation
    #
    class ManagedFirewallDomainListsItem < Struct.new(
      :description,
      :id,
      :name,
      :managed_list_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found. Verify the resource ID and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique ID of the resource referenced in the failed request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the resource referenced in the failed request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed one or more service quotas. Check your
    # current usage and quotas, then try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique ID of the resource referenced in the failed request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the resource referenced in the failed request.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the AWS service that owns the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code recognized by the AWS Service Quotas service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource to be tagged.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of user-defined keys and optional values. These tags can be
    #   used for categorization and organization.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was throttled due to too many requests. Wait a moment and
    # try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the AWS service that owns the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code recognized by the AWS Service Quotas service.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Number of seconds in which the caller can retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys associated with the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] access_source_id
    #   The unique identifier of the access source to update.
    #   @return [String]
    #
    # @!attribute [rw] cidr
    #   The CIDR block for the access source.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type for the access source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access source.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol for the access source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateAccessSourceInput AWS API Documentation
    #
    class UpdateAccessSourceInput < Struct.new(
      :access_source_id,
      :cidr,
      :ip_address_type,
      :name,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated access source.
    #   @return [String]
    #
    # @!attribute [rw] cidr
    #   The CIDR block of the updated access source.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the access source was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique identifier of the updated access source.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type of the updated access source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the updated access source.
    #   @return [String]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view associated with the updated access source.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of the updated access source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the updated access source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the access source was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateAccessSourceOutput AWS API Documentation
    #
    class UpdateAccessSourceOutput < Struct.new(
      :arn,
      :cidr,
      :created_at,
      :id,
      :ip_address_type,
      :name,
      :dns_view_id,
      :protocol,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token_id
    #   The ID of the token.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name of the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateAccessTokenInput AWS API Documentation
    #
    class UpdateAccessTokenInput < Struct.new(
      :access_token_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the token.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateAccessTokenOutput AWS API Documentation
    #
    class UpdateAccessTokenOutput < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dns_view_id
    #   The unique identifier of the DNS view to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] dnssec_validation
    #   Whether to enable DNSSEC validation for the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] edns_client_subnet
    #   Whether to enable EDNS Client Subnet injection for the DNS view.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules_fail_open
    #   Whether firewall rules should fail open when they cannot be
    #   evaluated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateDNSViewInput AWS API Documentation
    #
    class UpdateDNSViewInput < Struct.new(
      :dns_view_id,
      :name,
      :description,
      :dnssec_validation,
      :edns_client_subnet,
      :firewall_rules_fail_open)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the updated DNS view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated DNS view.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique string that identifies the request and ensures
    #   idempotency.
    #   @return [String]
    #
    # @!attribute [rw] dnssec_validation
    #   Whether DNSSEC validation is enabled for the updated DNS view.
    #   @return [String]
    #
    # @!attribute [rw] edns_client_subnet
    #   Whether EDNS Client Subnet injection is enabled for the updated DNS
    #   view.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules_fail_open
    #   Whether firewall rules fail open when they cannot be evaluated for
    #   the updated DNS view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the updated DNS view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the updated DNS view.
    #   @return [String]
    #
    # @!attribute [rw] global_resolver_id
    #   The ID of the global resolver associated with the updated DNS view.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the DNS view was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the DNS view was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the updated DNS view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateDNSViewOutput AWS API Documentation
    #
    class UpdateDNSViewOutput < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   A list of the domains. You can add up to 1000 domains per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the DNS Firewall domain list to which you want to add the
    #   domains.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The operation for updating the domain list. The allowed values are
    #   ADD, REMOVE, and REPLACE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateFirewallDomainsInput AWS API Documentation
    #
    class UpdateFirewallDomainsInput < Struct.new(
      :domains,
      :firewall_domain_list_id,
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the DNS Firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The operational status of the domain list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateFirewallDomainsOutput AWS API Documentation
    #
    class UpdateFirewallDomainsOutput < Struct.new(
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list, or a threat
    #   in a DNS Firewall Advanced rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record's type. This determines the format of the record
    #   value that you provided in `BlockOverrideDomain`. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom DNS record to send back in response to the query. Used
    #   for the rule action `BLOCK` with a `BlockResponse` setting of
    #   `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The way that you want DNS Firewall to block the request. Used for
    #   the rule action setting `BLOCK`.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This
    #   means that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold for DNS Firewall Advanced. You must provide
    #   this value when you create a DNS Firewall Advanced rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   The type of the DNS Firewall Advanced rule. Valid values are DGA and
    #   DNS\_TUNNELING.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rule_id
    #   The ID of the DNS Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DNS Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The setting that determines the processing order of the rule in the
    #   rule group. DNS Firewall processes the rules in a rule group by
    #   order of priority, starting from the lowest setting.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateFirewallRuleInput AWS API Documentation
    #
    class UpdateFirewallRuleInput < Struct.new(
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
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list, or a threat
    #   in a DNS Firewall Advanced rule.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record's type. This determines the format of the record
    #   value that you provided in `BlockOverrideDomain`. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom DNS record to send back in response to the query. Used
    #   for the rule action `BLOCK` with a `BlockResponse` setting of
    #   `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [Integer]
    #
    # @!attribute [rw] block_response
    #   The way that you want DNS Firewall to block the request. Used for
    #   the rule action setting `BLOCK`.
    #   @return [String]
    #
    # @!attribute [rw] confidence_threshold
    #   The confidence threshold for DNS Firewall Advanced. You must provide
    #   this value when you create a DNS Firewall Advanced rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the Firewall rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] dns_advanced_protection
    #   The type of the DNS Firewall Advanced rule. Valid values are DGA and
    #   DNS\_TUNNELING.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list associated with the Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The setting that determines the processing order of the rule in the
    #   rule group. DNS Firewall processes the rules in a rule group by
    #   order of priority, starting from the lowest setting.
    #   @return [Integer]
    #
    # @!attribute [rw] dns_view_id
    #   The ID of the DNS view the Firewall rule is associated with.
    #   @return [String]
    #
    # @!attribute [rw] query_type
    #   The DNS query type you want the rule to evaluate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The operational status of the firewall rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time and date the rule was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateFirewallRuleOutput AWS API Documentation
    #
    class UpdateFirewallRuleOutput < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_resolver_id
    #   The ID of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] observability_region
    #   The AWS Regions in which the users' Global Resolver query
    #   resolution logs will be propagated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Global Resolver.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateGlobalResolverInput AWS API Documentation
    #
    class UpdateGlobalResolverInput < Struct.new(
      :global_resolver_id,
      :name,
      :observability_region,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This
    #   means that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The hostname to be used by the customers' DNS clients for
    #   certification validation.
    #   @return [String]
    #
    # @!attribute [rw] observability_region
    #   The AWS Regions in which the users' Global Resolver query
    #   resolution logs will be propagated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The AWS Regions in which the Global Resolver will operate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The time and date the Global Resolverwas created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time and date the Global Resolver was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The operational status of the Global Resolver.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses
    #   List of anycast IPv4 addresses associated with the Global Resolver
    #   instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateGlobalResolverOutput AWS API Documentation
    #
    class UpdateGlobalResolverOutput < Struct.new(
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
      :ipv4_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hosted_zone_association_id
    #   The ID of the private hosted zone association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name you want to update the hosted zone association to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateHostedZoneAssociationInput AWS API Documentation
    #
    class UpdateHostedZoneAssociationInput < Struct.new(
      :hosted_zone_association_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the private hosted zone association.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the private hosted zone
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the private hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_name
    #   The name of the domain associated with the private hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the private hosted zone association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the private hosted zone association was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time and date the private hosted zone association was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The operational status of the private hosted zone association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateHostedZoneAssociationOutput AWS API Documentation
    #
    class UpdateHostedZoneAssociationOutput < Struct.new(
      :id,
      :resource_arn,
      :hosted_zone_id,
      :hosted_zone_name,
      :name,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters are invalid. Check the parameter values and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of fields that aren't valid.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a field that failed validation.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The validation error message for the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

