# frozen_string_literal: true

# This is generated code!

module Aws::VPCLattice
  # This module contains the types returned by client operations.
  module Types

    # <p>The user does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an access log subscription.</p>
    # @!attribute id
    #   <p>The ID of the access log subscription.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the access log subscription</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the service or service network.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the service or service network.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the destination.</p>
    #   @return [String]
    # @!attribute service_network_log_type
    #   <p>Log type of the service network.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the access log subscription was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the access log subscription was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class AccessLogSubscriptionSummary < Struct.new(
      nil,
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :destination_arn,
      :service_network_log_type,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ArnResource < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>The rules for the specified listener.</p>
    #   @return [Array<Types::RuleUpdate>]
    class BatchUpdateRuleInput < Struct.new(
      nil,
      :service_identifier,
      :listener_identifier,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful
    #   <p>The rules that were successfully updated.</p>
    #   @return [Array<Types::RuleUpdateSuccess>]
    # @!attribute unsuccessful
    #   <p>The rules that the operation couldn't update.</p>
    #   @return [Array<Types::RuleUpdateFailure>]
    class BatchUpdateRuleOutput < Struct.new(
      nil,
      :successful,
      :unsuccessful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a CIDR resource, which represents a network segment as one or more CIDR ranges.</p>
    # @!attribute cidr_ranges
    #   <p>The CIDR ranges of the network segment, for example, <code>10.0.0.0/16</code>.</p>
    #   @return [Array<String>]
    class CidrResource < Struct.new(
      nil,
      :cidr_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource. Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
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

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>The ID or ARN of the service network or service.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the destination. The supported destination types are CloudWatch Log groups, Kinesis Data Firehose delivery streams, and Amazon S3 buckets.</p>
    #   @return [String]
    # @!attribute service_network_log_type
    #   <p>The type of log that monitors your Amazon VPC Lattice service networks.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the access log subscription.</p>
    #   @return [Hash<String, String>]
    class CreateAccessLogSubscriptionInput < Struct.new(
      nil,
      :client_token,
      :resource_identifier,
      :destination_arn,
      :service_network_log_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the access log subscription.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the access log subscription.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the service network or service.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the service network or service.</p>
    #   @return [String]
    # @!attribute service_network_log_type
    #   <p>The type of log that monitors your Amazon VPC Lattice service networks.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the log destination.</p>
    #   @return [String]
    class CreateAccessLogSubscriptionOutput < Struct.new(
      nil,
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :service_network_log_type,
      :destination_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the listener. A listener name must be unique within a service. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The listener protocol.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The listener port. You can specify a value from 1 to 65535. For HTTP, the default is 80. For HTTPS, the default is 443.</p>
    #   @return [Integer]
    # @!attribute default_action
    #   <p>The action for the default rule. Each listener has a default rule. The default rule is used if no other rules match.</p>
    #   @return [Types::RuleAction]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the listener.</p>
    #   @return [Hash<String, String>]
    class CreateListenerInput < Struct.new(
      nil,
      :service_identifier,
      :name,
      :protocol,
      :port,
      :default_action,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the listener.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the listener.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol of the listener.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number of the listener.</p>
    #   @return [Integer]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute default_action
    #   <p>The action for the default rule.</p>
    #   @return [Types::RuleAction]
    class CreateListenerOutput < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :service_arn,
      :service_id,
      :default_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the resource configuration. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of resource configuration. A resource configuration can be one of the following types:</p> <ul> <li> <p> <b>SINGLE</b> - A single resource.</p> </li> <li> <p> <b>GROUP</b> - A group of resources. You must create a group resource configuration before you create a child resource configuration.</p> </li> <li> <p> <b>CHILD</b> - A single resource that is part of a group resource configuration.</p> </li> <li> <p> <b>ARN</b> - An Amazon Web Services resource.</p> </li> <li> <p> <b>CIDR</b> - A network segment, expressed as a range of IP addresses (a CIDR block). Use this type to share a portion of your network rather than an individual resource. A consumer accesses the resources within the CIDR range through a <code>Tunnel</code> VPC endpoint. You can't add a CIDR resource configuration to a service network. A CIDR resource configuration must be associated with a resource gateway whose DNS resolution is set to <code>IN_VPC</code>.</p> </li> </ul>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>(SINGLE, GROUP, CHILD, CIDR) The port ranges that a consumer can use to access a resource configuration (for example: 1-65535). You can separate port ranges using commas (for example: 1,2,22-30). To resolve DNS through a CIDR resource configuration, include port 53 in the port ranges.</p>
    #   @return [Array<String>]
    # @!attribute protocol
    #   <p>(SINGLE, GROUP, CIDR) The protocol accepted by the resource configuration. The default is <code>TCP</code>. <code>TCP_UDP</code> is supported only for CIDR resource configurations; specify it for a CIDR resource configuration to allow DNS resolution, which uses UDP.</p>
    #   @return [String]
    # @!attribute resource_gateway_identifier
    #   <p>(SINGLE, GROUP, ARN, CIDR) The ID or ARN of the resource gateway used to connect to the resource configuration. For a child resource configuration, this value is inherited from the parent resource configuration. For a CIDR resource configuration, the associated resource gateway must have its DNS resolution set to <code>IN_VPC</code> so that DNS queries resolve in the context of your VPC.</p>
    #   @return [String]
    # @!attribute resource_configuration_group_identifier
    #   <p>(CHILD) The ID or ARN of the parent resource configuration of type <code>GROUP</code>. This is used to associate a child resource configuration with a group resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_definition
    #   <p>Identifies the resource configuration in one of the following ways:</p> <ul> <li> <p> <b>Amazon Resource Name (ARN)</b> - Supported resource-types that are provisioned by Amazon Web Services services, such as RDS databases, can be identified by their ARN.</p> </li> <li> <p> <b>Domain name</b> - Any domain name that is publicly resolvable.</p> </li> <li> <p> <b>IP address</b> - For IPv4 and IPv6, only IP addresses in the VPC are supported.</p> </li> <li> <p> <b>CIDR range</b> - For a resource configuration of type CIDR, specify a <code>cidrResource</code> with one or more <code>cidrRanges</code> (for example, <code>10.0.0.0/16</code>) that cover the IP addresses of the resources you want to make accessible. You can specify up to 10 ranges, using IPv4, IPv6, or both, and each range must include a prefix length. To represent your entire network, specify <code>0.0.0.0/0</code> (IPv4) or <code>::/0</code> (IPv6) as the only range. You can't use reserved ranges such as <code>169.254.0.0/16</code>, <code>100.64.0.0/10</code>, <code>224.0.0.0/4</code>, <code>fe80::/10</code>, or <code>ff00::/8</code>.</p> </li> </ul>
    #   @return [Types::ResourceConfigurationDefinition]
    # @!attribute allow_association_to_shareable_service_network
    #   <p>(SINGLE, GROUP, ARN) Specifies whether the resource configuration can be associated with a sharable service network. The default is false.</p>
    #   @return [Boolean]
    # @!attribute custom_domain_name
    #   <p> A custom domain name for your resource configuration. Additionally, provide a DomainVerificationID to prove your ownership of a domain. </p>
    #   @return [String]
    # @!attribute group_domain
    #   <p> (GROUP) The group domain for a group resource configuration. Any domains that you create for the child resource are subdomains of the group domain. Child resources inherit the verification status of the domain. </p>
    #   @return [String]
    # @!attribute domain_verification_identifier
    #   <p> The domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the resource configuration.</p>
    #   @return [Hash<String, String>]
    class CreateResourceConfigurationRequest < Struct.new(
      nil,
      :name,
      :type,
      :port_ranges,
      :protocol,
      :resource_gateway_identifier,
      :resource_configuration_group_identifier,
      :resource_configuration_definition,
      :allow_association_to_shareable_service_network,
      :custom_domain_name,
      :group_domain,
      :domain_verification_identifier,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The ID of the resource gateway associated with the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_group_id
    #   <p>The ID of the parent resource configuration of type <code>GROUP</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of resource configuration. A resource configuration can be one of the following types:</p> <ul> <li> <p> <b>SINGLE</b> - A single resource.</p> </li> <li> <p> <b>GROUP</b> - A group of resources. You must create a group resource configuration before you create a child resource configuration.</p> </li> <li> <p> <b>CHILD</b> - A single resource that is part of a group resource configuration.</p> </li> <li> <p> <b>ARN</b> - An Amazon Web Services resource.</p> </li> <li> <p> <b>CIDR</b> - A network segment, expressed as a range of IP addresses (a CIDR block). A consumer accesses the resources within the CIDR range through a <code>Tunnel</code> VPC endpoint. A CIDR resource configuration must be associated with a resource gateway whose DNS resolution is set to <code>IN_VPC</code>.</p> </li> </ul>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>The port range.</p>
    #   @return [Array<String>]
    # @!attribute protocol
    #   <p>The protocol.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_definition
    #   <p>Identifies the resource configuration in one of the following ways:</p> <ul> <li> <p> <b>Amazon Resource Name (ARN)</b> - Supported resource-types that are provisioned by Amazon Web Services services, such as RDS databases, can be identified by their ARN.</p> </li> <li> <p> <b>Domain name</b> - Any domain name that is publicly resolvable.</p> </li> <li> <p> <b>IP address</b> - For IPv4 and IPv6, only IP addresses in the VPC are supported.</p> </li> </ul>
    #   @return [Types::ResourceConfigurationDefinition]
    # @!attribute allow_association_to_shareable_service_network
    #   <p>Specifies whether the resource configuration can be associated with a sharable service network.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The date and time that the resource configuration was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The reason that the request failed.</p>
    #   @return [String]
    # @!attribute custom_domain_name
    #   <p> The custom domain name for your resource configuration. </p>
    #   @return [String]
    # @!attribute domain_verification_id
    #   <p> The domain name verification ID. </p>
    #   @return [String]
    # @!attribute group_domain
    #   <p> (GROUP) The group domain for a group resource configuration. Any domains that you create for the child resource are subdomains of the group domain. Child resources inherit the verification status of the domain. </p>
    #   @return [String]
    # @!attribute domain_verification_arn
    #   <p> The verification ID ARN </p>
    #   @return [String]
    class CreateResourceConfigurationResponse < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :resource_gateway_id,
      :resource_configuration_group_id,
      :type,
      :port_ranges,
      :protocol,
      :status,
      :resource_configuration_definition,
      :allow_association_to_shareable_service_network,
      :created_at,
      :failure_reason,
      :custom_domain_name,
      :domain_verification_id,
      :group_domain,
      :domain_verification_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource gateway.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID of the VPC for the resource gateway.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The IDs of the VPC subnets in which to create the resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups to apply to the resource gateway. The security groups must be in the same VPC.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>A resource gateway can have IPv4, IPv6 or dualstack addresses. The IP address type of a resource gateway must be compatible with the subnets of the resource gateway and the IP address type of the resource, as described here: </p> <ul> <li> <p> <b>IPv4</b>Assign IPv4 addresses to your resource gateway network interfaces. This option is supported only if all selected subnets have IPv4 address ranges, and the resource also has an IPv4 address.</p> </li> <li> <p> <b>IPv6</b>Assign IPv6 addresses to your resource gateway network interfaces. This option is supported only if all selected subnets are IPv6 only subnets, and the resource also has an IPv6 address.</p> </li> <li> <p> <b>Dualstack</b>Assign both IPv4 and IPv6 addresses to your resource gateway network interfaces. This option is supported only if all selected subnets have both IPv4 and IPv6 address ranges, and the resource either has an IPv4 or IPv6 address.</p> </li> </ul> <p>The IP address type of the resource gateway is independent of the IP address type of the client or the VPC endpoint through which the resource is accessed.</p>
    #   @return [String]
    # @!attribute ipv4_addresses_per_eni
    #   <p>The number of IPv4 addresses in each ENI for the resource gateway.</p>
    #   @return [Integer]
    # @!attribute resource_config_dns_resolution
    #   <p>Indicates how DNS is resolved for resource configurations associated with this resource gateway. This value is set when you create the resource gateway and can't be changed afterward. The default is <code>PUBLIC</code>.</p> <ul> <li> <p> <code>IN_VPC</code> - DNS resolution occurs privately within the resource gateway's VPC. DNS queries for resources behind this resource gateway resolve using the DNS resolvers defined in the VPC's DHCP option sets. Use this when your resource domain names are hosted in private Route 53 hosted zones or on-premises DNS servers reachable from the VPC. A CIDR resource configuration requires a resource gateway that uses <code>IN_VPC</code>, and an <code>IN_VPC</code> resource gateway can't be used for ARN resource configurations, so a single resource gateway can't serve both ARN and CIDR resource configurations.</p> </li> <li> <p> <code>PUBLIC</code> - DNS resolution occurs against public DNS resolvers. DNS queries for resources behind this resource gateway resolve using standard public DNS. Use this when your resource domain names are publicly resolvable.</p> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the resource gateway.</p>
    #   @return [Hash<String, String>]
    class CreateResourceGatewayRequest < Struct.new(
      nil,
      :client_token,
      :name,
      :vpc_identifier,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :resource_config_dns_resolution,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the resource gateway.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the resource gateway.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the resource gateway.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The IDs of the resource gateway subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups for the resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The type of IP address for the resource gateway.</p>
    #   @return [String]
    # @!attribute ipv4_addresses_per_eni
    #   <p>The number of IPv4 addresses in each ENI for the resource gateway.</p>
    #   @return [Integer]
    # @!attribute resource_config_dns_resolution
    #   <p>The DNS resolution type for resource configurations that are associated with this resource gateway.</p>
    #   @return [String]
    class CreateResourceGatewayResponse < Struct.new(
      nil,
      :name,
      :id,
      :arn,
      :status,
      :vpc_identifier,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :resource_config_dns_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The rule match.</p>
    #   @return [Types::RuleMatch]
    # @!attribute priority
    #   <p>The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The action for the default rule.</p>
    #   @return [Types::RuleAction]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the rule.</p>
    #   @return [Hash<String, String>]
    class CreateRuleInput < Struct.new(
      nil,
      :service_identifier,
      :listener_identifier,
      :name,
      :match,
      :priority,
      :action,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The rule match. The <code>RuleMatch</code> must be an <code>HttpMatch</code>. This means that the rule should be an exact match on HTTP constraints which are made up of the HTTP method, path, and header.</p>
    #   @return [Types::RuleMatch]
    # @!attribute priority
    #   <p>The priority assigned to the rule. The lower the priority number the higher the priority.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The rule action.</p>
    #   @return [Types::RuleAction]
    class CreateRuleOutput < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :match,
      :priority,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the service.</p>
    #   @return [Hash<String, String>]
    # @!attribute custom_domain_name
    #   <p>The custom domain name of the service.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p> <ul> <li> <p> <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p> </li> <li> <p> <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p> </li> </ul>
    #   @return [String]
    # @!attribute idle_timeout_seconds
    #   <p>The amount of time, in seconds, that a connection can remain idle (no data sent) before VPC Lattice closes it. The valid range is 60 to 600 seconds. If you don't specify a value, the default is 60 seconds. This setting does not change the maximum connection duration of 10 minutes; connections are still closed when they reach that limit.</p>
    #   @return [Integer]
    class CreateServiceInput < Struct.new(
      nil,
      :client_token,
      :name,
      :tags,
      :custom_domain_name,
      :certificate_arn,
      :auth_type,
      :idle_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service network. The name must be unique to the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p> <ul> <li> <p> <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p> </li> <li> <p> <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the service network.</p>
    #   @return [Hash<String, String>]
    # @!attribute sharing_config
    #   <p>Specify if the service network should be enabled for sharing.</p>
    #   @return [Types::SharingConfig]
    class CreateServiceNetworkInput < Struct.new(
      nil,
      :client_token,
      :name,
      :auth_type,
      :tags,
      :sharing_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service network.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service network.</p>
    #   @return [String]
    # @!attribute sharing_config
    #   <p>Specifies if the service network is enabled for sharing.</p>
    #   @return [Types::SharingConfig]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #   @return [String]
    class CreateServiceNetworkOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :sharing_config,
      :auth_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute resource_configuration_identifier
    #   <p>The ID of the resource configuration to associate with the service network.</p>
    #   @return [String]
    # @!attribute service_network_identifier
    #   <p>The ID of the service network to associate with the resource configuration.</p>
    #   @return [String]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is enabled for the service network resource association. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A key-value pair to associate with a resource.</p>
    #   @return [Hash<String, String>]
    class CreateServiceNetworkResourceAssociationRequest < Struct.new(
      nil,
      :client_token,
      :resource_configuration_identifier,
      :service_network_identifier,
      :private_dns_enabled,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the association.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The ID of the account that created the association.</p>
    #   @return [String]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is is enabled for the service network resource association. </p>
    #   @return [Boolean]
    class CreateServiceNetworkResourceAssociationResponse < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      :created_by,
      :private_dns_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network. You must use an ARN if the resources are in different accounts.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the association.</p>
    #   @return [Hash<String, String>]
    class CreateServiceNetworkServiceAssociationInput < Struct.new(
      nil,
      :client_token,
      :service_identifier,
      :service_network_identifier,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The association status.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute custom_domain_name
    #   <p>The custom domain name of the service.</p>
    #   @return [String]
    # @!attribute dns_entry
    #   <p>The DNS name of the service.</p>
    #   @return [Types::DnsEntry]
    class CreateServiceNetworkServiceAssociationOutput < Struct.new(
      nil,
      :id,
      :status,
      :arn,
      :created_by,
      :custom_domain_name,
      :dns_entry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network. You must use an ARN if the resources are in different accounts.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is enabled for the VPC association. </p>
    #   @return [Boolean]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups. Security groups aren't added by default. You can add a security group to apply network level controls to control which resources in a VPC are allowed to access the service network and its services. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html">Control traffic to resources using security groups</a> in the <i>Amazon VPC User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags for the association.</p>
    #   @return [Hash<String, String>]
    # @!attribute dns_options
    #   <p> DNS options for the service network VPC association. </p>
    #   @return [Types::DnsOptions]
    class CreateServiceNetworkVpcAssociationInput < Struct.new(
      nil,
      :client_token,
      :service_network_identifier,
      :vpc_identifier,
      :private_dns_enabled,
      :security_group_ids,
      :tags,
      :dns_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The association status.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups.</p>
    #   @return [Array<String>]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is enabled for the VPC association. </p>
    #   @return [Boolean]
    # @!attribute dns_options
    #   <p> The DNS configuration options. </p>
    #   @return [Types::DnsOptions]
    class CreateServiceNetworkVpcAssociationOutput < Struct.new(
      nil,
      :id,
      :status,
      :arn,
      :created_by,
      :security_group_ids,
      :private_dns_enabled,
      :dns_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute custom_domain_name
    #   <p>The custom domain name of the service.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. If the status is <code>CREATE_FAILED</code>, you must delete and recreate the service.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #   @return [String]
    # @!attribute idle_timeout_seconds
    #   <p>The amount of time, in seconds, that a connection can remain idle before VPC Lattice closes it.</p>
    #   @return [Integer]
    # @!attribute dns_entry
    #   <p>The public DNS name of the service.</p>
    #   @return [Types::DnsEntry]
    class CreateServiceOutput < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :custom_domain_name,
      :certificate_arn,
      :status,
      :auth_type,
      :idle_timeout_seconds,
      :dns_entry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the target group. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of target group.</p>
    #   @return [String]
    # @!attribute config
    #   <p>The target group configuration.</p>
    #   @return [Types::TargetGroupConfig]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the target group.</p>
    #   @return [Hash<String, String>]
    class CreateTargetGroupInput < Struct.new(
      nil,
      :name,
      :type,
      :config,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the target group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the target group.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of target group.</p>
    #   @return [String]
    # @!attribute config
    #   <p>The target group configuration.</p>
    #   @return [Types::TargetGroupConfig]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>CREATE_FAILED</code>. However, if you retry it while the status is <code>CREATE_IN_PROGRESS</code>, there is no change in the status.</p>
    #   @return [String]
    class CreateTargetGroupOutput < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :type,
      :config,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_log_subscription_identifier
    #   <p>The ID or ARN of the access log subscription.</p>
    #   @return [String]
    class DeleteAccessLogSubscriptionInput < Struct.new(
      nil,
      :access_log_subscription_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAccessLogSubscriptionOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The ID or ARN of the resource.</p>
    #   @return [String]
    class DeleteAuthPolicyInput < Struct.new(
      nil,
      :resource_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAuthPolicyOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_verification_identifier
    #   <p> The ID of the domain verification to delete. </p>
    #   @return [String]
    class DeleteDomainVerificationRequest < Struct.new(
      nil,
      :domain_verification_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDomainVerificationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    class DeleteListenerInput < Struct.new(
      nil,
      :service_identifier,
      :listener_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteListenerOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_configuration_identifier
    #   <p>The ID or ARN of the resource configuration.</p>
    #   @return [String]
    class DeleteResourceConfigurationRequest < Struct.new(
      nil,
      :resource_configuration_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteResourceConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_endpoint_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class DeleteResourceEndpointAssociationRequest < Struct.new(
      nil,
      :resource_endpoint_association_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the resource configuration associated with the VPC endpoint of type resource.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the resource VPC endpoint that is associated with the resource configuration.</p>
    #   @return [String]
    class DeleteResourceEndpointAssociationResponse < Struct.new(
      nil,
      :id,
      :arn,
      :resource_configuration_id,
      :resource_configuration_arn,
      :vpc_endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_gateway_identifier
    #   <p>The ID or ARN of the resource gateway.</p>
    #   @return [String]
    class DeleteResourceGatewayRequest < Struct.new(
      nil,
      :resource_gateway_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource gateway.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the resource gateway.</p>
    #   @return [String]
    class DeleteResourceGatewayResponse < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class DeleteResourcePolicyInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    # @!attribute rule_identifier
    #   <p>The ID or ARN of the rule.</p>
    #   @return [String]
    class DeleteRuleInput < Struct.new(
      nil,
      :service_identifier,
      :listener_identifier,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRuleOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    class DeleteServiceInput < Struct.new(
      nil,
      :service_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    #   @return [String]
    class DeleteServiceNetworkInput < Struct.new(
      nil,
      :service_network_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteServiceNetworkOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_resource_association_identifier
    #   <p>The ID of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkResourceAssociationRequest < Struct.new(
      nil,
      :service_network_resource_association_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkResourceAssociationResponse < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_service_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkServiceAssociationInput < Struct.new(
      nil,
      :service_network_service_association_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>. However, if you retry it when the status is <code>DELETE_IN_PROGRESS</code>, there is no change in the status.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkServiceAssociationOutput < Struct.new(
      nil,
      :id,
      :status,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_vpc_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkVpcAssociationInput < Struct.new(
      nil,
      :service_network_vpc_association_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>. However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, there is no change in the status.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkVpcAssociationOutput < Struct.new(
      nil,
      :id,
      :status,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>. However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, the status doesn't change.</p>
    #   @return [String]
    class DeleteServiceOutput < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    class DeleteTargetGroupInput < Struct.new(
      nil,
      :target_group_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the target group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>. However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, the status doesn't change.</p>
    #   @return [String]
    class DeleteTargetGroupOutput < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets to deregister.</p>
    #   @return [Array<Types::Target>]
    class DeregisterTargetsInput < Struct.new(
      nil,
      :target_group_identifier,
      :targets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful
    #   <p>The targets that were successfully deregistered.</p>
    #   @return [Array<Types::Target>]
    # @!attribute unsuccessful
    #   <p>The targets that the operation couldn't deregister.</p>
    #   @return [Array<Types::TargetFailure>]
    class DeregisterTargetsOutput < Struct.new(
      nil,
      :successful,
      :unsuccessful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the DNS information of a service.</p>
    # @!attribute domain_name
    #   <p>The domain name of the service.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The ID of the hosted zone.</p>
    #   @return [String]
    class DnsEntry < Struct.new(
      nil,
      :domain_name,
      :hosted_zone_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The DNS configuration options. </p>
    # @!attribute private_dns_preference
    #   <p> The preference for which private domains have a private hosted zone created for and associated with the specified VPC. Only supported when private DNS is enabled and when the VPC endpoint type is ServiceNetwork or Resource. </p> <ul> <li> <p> <code>ALL_DOMAINS</code> - VPC Lattice provisions private hosted zones for all custom domain names.</p> </li> <li> <p> <code>VERIFIED_DOMAINS_ONLY</code> - VPC Lattice provisions a private hosted zone only if custom domain name has been verified by the provider.</p> </li> <li> <p> <code>VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS</code> - VPC Lattice provisions private hosted zones for all verified custom domain names and other domain names that the resource consumer specifies. The resource consumer specifies the domain names in the privateDnsSpecifiedDomains parameter.</p> </li> <li> <p> <code>SPECIFIED_DOMAINS_ONLY</code> - VPC Lattice provisions a private hosted zone for domain names specified by the resource consumer. The resource consumer specifies the domain names in the privateDnsSpecifiedDomains parameter.</p> </li> </ul>
    #   @return [String]
    # @!attribute private_dns_specified_domains
    #   <p> Indicates which of the private domains to create private hosted zones for and associate with the specified VPC. Only supported when private DNS is enabled and the private DNS preference is <code>VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS</code> or <code>SPECIFIED_DOMAINS_ONLY</code>. </p>
    #   @return [Array<String>]
    class DnsOptions < Struct.new(
      nil,
      :private_dns_preference,
      :private_dns_specified_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The DNS name of the resource.</p>
    # @!attribute domain_name
    #   <p>The domain name of the resource.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The type of IP address. Dualstack is currently not supported.</p>
    #   @return [String]
    class DnsResource < Struct.new(
      nil,
      :domain_name,
      :ip_address_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Summary information about a domain verification. </p>
    # @!attribute id
    #   <p> The ID of the domain verification. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the domain verification. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p> The domain name being verified. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the domain verification process. </p>
    #   @return [String]
    # @!attribute txt_method_config
    #   <p> The TXT record configuration used for domain verification. </p>
    #   @return [Types::TxtMethodConfig]
    # @!attribute created_at
    #   <p> The date and time that the domain verification was created, in ISO-8601 format. </p>
    #   @return [Time]
    # @!attribute last_verified_time
    #   <p> The date and time that the domain was last successfully verified, in ISO-8601 format. </p>
    #   @return [Time]
    # @!attribute tags
    #   <p> The tags associated with the domain verification. </p>
    #   @return [Hash<String, String>]
    class DomainVerificationSummary < Struct.new(
      nil,
      :id,
      :arn,
      :domain_name,
      :status,
      :txt_method_config,
      :created_at,
      :last_verified_time,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action that returns a custom HTTP response.</p>
    # @!attribute status_code
    #   <p>The HTTP response code. Only <code>404</code> and <code>500</code> status codes are supported.</p>
    #   @return [Integer]
    class FixedResponseAction < Struct.new(
      nil,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a forward action. You can use forward actions to route requests to one or more target groups. </p>
    # @!attribute target_groups
    #   <p>The target groups. Traffic matching the rule is forwarded to the specified target groups. With forward actions, you can assign a weight that controls the prioritization and selection of each target group. This means that requests are distributed to individual target groups based on their weights. For example, if two target groups have the same weight, each target group receives half of the traffic.</p> <p>The default value is 1. This means that if only one target group is provided, there is no need to set the weight; 100% of the traffic goes to that target group.</p>
    #   @return [Array<Types::WeightedTargetGroup>]
    class ForwardAction < Struct.new(
      nil,
      :target_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_log_subscription_identifier
    #   <p>The ID or ARN of the access log subscription.</p>
    #   @return [String]
    class GetAccessLogSubscriptionInput < Struct.new(
      nil,
      :access_log_subscription_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the access log subscription.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the access log subscription.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the service network or service.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the service network or service.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the access log destination.</p>
    #   @return [String]
    # @!attribute service_network_log_type
    #   <p>The log type for the service network.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the access log subscription was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the access log subscription was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class GetAccessLogSubscriptionOutput < Struct.new(
      nil,
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :destination_arn,
      :service_network_log_type,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The ID or ARN of the service network or service.</p>
    #   @return [String]
    class GetAuthPolicyInput < Struct.new(
      nil,
      :resource_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The auth policy.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the auth policy. The auth policy is only active when the auth type is set to <code>AWS_IAM</code>. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the auth type is <code>NONE</code>, then any auth policy that you provide remains inactive. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#create-service-network">Create a service network</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the auth policy was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the auth policy was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class GetAuthPolicyOutput < Struct.new(
      nil,
      :policy,
      :state,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_verification_identifier
    #   <p> The ID or ARN of the domain verification to retrieve. </p>
    #   @return [String]
    class GetDomainVerificationRequest < Struct.new(
      nil,
      :domain_verification_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the domain verification. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the domain verification. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p> The domain name being verified. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the domain verification process. </p>
    #   @return [String]
    # @!attribute txt_method_config
    #   <p> The TXT record configuration used for domain verification. </p>
    #   @return [Types::TxtMethodConfig]
    # @!attribute created_at
    #   <p> The date and time that the domain verification was created, in ISO-8601 format. </p>
    #   @return [Time]
    # @!attribute last_verified_time
    #   <p> The date and time that the domain was last successfully verified, in ISO-8601 format. </p>
    #   @return [Time]
    # @!attribute tags
    #   <p> The tags associated with the domain verification. </p>
    #   @return [Hash<String, String>]
    class GetDomainVerificationResponse < Struct.new(
      nil,
      :id,
      :arn,
      :domain_name,
      :status,
      :txt_method_config,
      :created_at,
      :last_verified_time,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    class GetListenerInput < Struct.new(
      nil,
      :service_identifier,
      :listener_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the listener.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the listener.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The listener protocol.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The listener port.</p>
    #   @return [Integer]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute default_action
    #   <p>The actions for the default listener rule.</p>
    #   @return [Types::RuleAction]
    # @!attribute created_at
    #   <p>The date and time that the listener was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the listener was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class GetListenerOutput < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :service_arn,
      :service_id,
      :default_action,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_configuration_identifier
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    class GetResourceConfigurationRequest < Struct.new(
      nil,
      :resource_configuration_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The ID of the resource gateway used to connect to the resource configuration in a given VPC. You can specify the resource gateway identifier only for resource configurations with type SINGLE, GROUP, ARN, or CIDR.</p>
    #   @return [String]
    # @!attribute resource_configuration_group_id
    #   <p>The ID of the group resource configuration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of resource configuration.</p> <ul> <li> <p> <code>SINGLE</code> - A single resource.</p> </li> <li> <p> <code>GROUP</code> - A group of resources.</p> </li> <li> <p> <code>CHILD</code> - A single resource that is part of a group resource configuration.</p> </li> <li> <p> <code>ARN</code> - An Amazon Web Services resource.</p> </li> <li> <p> <code>CIDR</code> - A network segment (a range of IP addresses) accessed through a <code>Tunnel</code> VPC endpoint.</p> </li> </ul>
    #   @return [String]
    # @!attribute allow_association_to_shareable_service_network
    #   <p>Specifies whether the resource configuration is associated with a sharable service network.</p>
    #   @return [Boolean]
    # @!attribute port_ranges
    #   <p>The TCP port ranges that a consumer can use to access a resource configuration. You can separate port ranges with a comma. Example: 1-65535 or 1,2,22-30</p>
    #   @return [Array<String>]
    # @!attribute protocol
    #   <p>The TCP protocol accepted by the specified resource configuration.</p>
    #   @return [String]
    # @!attribute custom_domain_name
    #   <p>The custom domain name of the resource configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_definition
    #   <p>The resource configuration.</p>
    #   @return [Types::ResourceConfigurationDefinition]
    # @!attribute created_at
    #   <p>The date and time that the resource configuration was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute amazon_managed
    #   <p>Indicates whether the resource configuration was created and is managed by Amazon.</p>
    #   @return [Boolean]
    # @!attribute failure_reason
    #   <p>The reason the create-resource-configuration request failed.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The most recent date and time that the resource configuration was updated, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute domain_verification_id
    #   <p> The domain verification ID. </p>
    #   @return [String]
    # @!attribute domain_verification_arn
    #   <p> The ARN of the domain verification. </p>
    #   @return [String]
    # @!attribute domain_verification_status
    #   <p> The domain verification status. </p>
    #   @return [String]
    # @!attribute group_domain
    #   <p> (GROUP) The group domain for a group resource configuration. Any domains that you create for the child resource are subdomains of the group domain. Child resources inherit the verification status of the domain. </p>
    #   @return [String]
    class GetResourceConfigurationResponse < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :resource_gateway_id,
      :resource_configuration_group_id,
      :type,
      :allow_association_to_shareable_service_network,
      :port_ranges,
      :protocol,
      :custom_domain_name,
      :status,
      :resource_configuration_definition,
      :created_at,
      :amazon_managed,
      :failure_reason,
      :last_updated_at,
      :domain_verification_id,
      :domain_verification_arn,
      :domain_verification_status,
      :group_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_gateway_identifier
    #   <p>The ID of the resource gateway.</p>
    #   @return [String]
    class GetResourceGatewayRequest < Struct.new(
      nil,
      :resource_gateway_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the resource gateway.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the resource gateway.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for the resource gateway.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the resource gateway.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The IDs of the VPC subnets for resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute service_managed
    #   <p>Indicates whether the resource gateway is managed by an Amazon Web Services service.</p>
    #   @return [Boolean]
    # @!attribute managed_by
    #   <p>The Amazon Web Services service that manages the resource gateway.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security group IDs associated with the resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The type of IP address for the resource gateway.</p>
    #   @return [String]
    # @!attribute ipv4_addresses_per_eni
    #   <p>The number of IPv4 addresses in each ENI for the resource gateway.</p>
    #   @return [Integer]
    # @!attribute resource_config_dns_resolution
    #   <p>The DNS resolution type for resource configurations that are associated with this resource gateway.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the resource gateway was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the resource gateway was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class GetResourceGatewayResponse < Struct.new(
      nil,
      :name,
      :id,
      :arn,
      :status,
      :vpc_id,
      :subnet_ids,
      :service_managed,
      :managed_by,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :resource_config_dns_resolution,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the service network or service.</p>
    #   @return [String]
    class GetResourcePolicyInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>An IAM policy.</p>
    #   @return [String]
    class GetResourcePolicyOutput < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    # @!attribute rule_identifier
    #   <p>The ID or ARN of the listener rule.</p>
    #   @return [String]
    class GetRuleInput < Struct.new(
      nil,
      :service_identifier,
      :listener_identifier,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the listener.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the listener.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Indicates whether this is the default rule.</p>
    #   @return [Boolean]
    # @!attribute match
    #   <p>The rule match.</p>
    #   @return [Types::RuleMatch]
    # @!attribute priority
    #   <p>The priority level for the specified rule.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The action for the default rule.</p>
    #   @return [Types::RuleAction]
    # @!attribute created_at
    #   <p>The date and time that the listener rule was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the listener rule was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class GetRuleOutput < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :is_default,
      :match,
      :priority,
      :action,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    class GetServiceInput < Struct.new(
      nil,
      :service_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    #   @return [String]
    class GetServiceNetworkInput < Struct.new(
      nil,
      :service_network_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service network.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the service network was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time of the last update, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service network.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #   @return [String]
    # @!attribute sharing_config
    #   <p>Specifies if the service network is enabled for sharing.</p>
    #   @return [Types::SharingConfig]
    # @!attribute number_of_associated_vp_cs
    #   <p>The number of VPCs associated with the service network.</p>
    #   @return [Integer]
    # @!attribute number_of_associated_services
    #   <p>The number of services associated with the service network.</p>
    #   @return [Integer]
    class GetServiceNetworkOutput < Struct.new(
      nil,
      :id,
      :name,
      :created_at,
      :last_updated_at,
      :arn,
      :auth_type,
      :sharing_config,
      :number_of_associated_vp_cs,
      :number_of_associated_services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_resource_association_identifier
    #   <p>The ID of the association.</p>
    #   @return [String]
    class GetServiceNetworkResourceAssociationRequest < Struct.new(
      nil,
      :service_network_resource_association_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the association.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the association was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute resource_configuration_id
    #   <p>The ID of the resource configuration that is associated with the service network.</p>
    #   @return [String]
    # @!attribute resource_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute resource_configuration_name
    #   <p>The name of the resource configuration that is associated with the service network.</p>
    #   @return [String]
    # @!attribute service_network_id
    #   <p>The ID of the service network that is associated with the resource configuration.</p>
    #   @return [String]
    # @!attribute service_network_arn
    #   <p>The Amazon Resource Name (ARN) of the service network that is associated with the resource configuration.</p>
    #   @return [String]
    # @!attribute service_network_name
    #   <p>The name of the service network that is associated with the resource configuration.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason the association request failed.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The most recent date and time that the association was updated, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute private_dns_entry
    #   <p>The private DNS entry for the service. This entry includes only the domain name.</p>
    #   @return [Types::DnsEntry]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is enabled in the service network resource association. </p>
    #   @return [Boolean]
    # @!attribute dns_entry
    #   <p>The DNS entry for the service.</p>
    #   @return [Types::DnsEntry]
    # @!attribute is_managed_association
    #   <p>Indicates whether the association is managed by Amazon.</p>
    #   @return [Boolean]
    # @!attribute domain_verification_status
    #   <p> The domain verification status in the service network resource association. </p>
    #   @return [String]
    class GetServiceNetworkResourceAssociationResponse < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      :created_by,
      :created_at,
      :resource_configuration_id,
      :resource_configuration_arn,
      :resource_configuration_name,
      :service_network_id,
      :service_network_arn,
      :service_network_name,
      :failure_reason,
      :failure_code,
      :last_updated_at,
      :private_dns_entry,
      :private_dns_enabled,
      :dns_entry,
      :is_managed_association,
      :domain_verification_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_service_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class GetServiceNetworkServiceAssociationInput < Struct.new(
      nil,
      :service_network_service_association_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service network and service association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the association was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute service_id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute service_network_id
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute service_network_name
    #   <p>The name of the service network.</p>
    #   @return [String]
    # @!attribute service_network_arn
    #   <p>The Amazon Resource Name (ARN) of the service network.</p>
    #   @return [String]
    # @!attribute dns_entry
    #   <p>The DNS name of the service.</p>
    #   @return [Types::DnsEntry]
    # @!attribute custom_domain_name
    #   <p>The custom domain name of the service.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>The failure message.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    class GetServiceNetworkServiceAssociationOutput < Struct.new(
      nil,
      :id,
      :status,
      :arn,
      :created_by,
      :created_at,
      :service_id,
      :service_name,
      :service_arn,
      :service_network_id,
      :service_network_name,
      :service_network_arn,
      :dns_entry,
      :custom_domain_name,
      :failure_message,
      :failure_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_vpc_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class GetServiceNetworkVpcAssociationInput < Struct.new(
      nil,
      :service_network_vpc_association_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the association was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute service_network_id
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute service_network_name
    #   <p>The name of the service network.</p>
    #   @return [String]
    # @!attribute service_network_arn
    #   <p>The Amazon Resource Name (ARN) of the service network.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups.</p>
    #   @return [Array<String>]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is enabled in the VPC association. </p>
    #   @return [Boolean]
    # @!attribute failure_message
    #   <p>The failure message.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time that the association was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute dns_options
    #   <p> DNS options for the service network VPC association. </p>
    #   @return [Types::DnsOptions]
    class GetServiceNetworkVpcAssociationOutput < Struct.new(
      nil,
      :id,
      :status,
      :arn,
      :created_by,
      :created_at,
      :service_network_id,
      :service_network_name,
      :service_network_arn,
      :vpc_id,
      :security_group_ids,
      :private_dns_enabled,
      :failure_message,
      :failure_code,
      :last_updated_at,
      :dns_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the service was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the service was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute dns_entry
    #   <p>The DNS name of the service.</p>
    #   @return [Types::DnsEntry]
    # @!attribute custom_domain_name
    #   <p>The custom domain name of the service.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #   @return [String]
    # @!attribute idle_timeout_seconds
    #   <p>The amount of time, in seconds, that a connection can remain idle before VPC Lattice closes it.</p>
    #   @return [Integer]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>The failure message.</p>
    #   @return [String]
    class GetServiceOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :created_at,
      :last_updated_at,
      :dns_entry,
      :custom_domain_name,
      :certificate_arn,
      :status,
      :auth_type,
      :idle_timeout_seconds,
      :failure_code,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    class GetTargetGroupInput < Struct.new(
      nil,
      :target_group_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the target group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the target group.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The target group type.</p>
    #   @return [String]
    # @!attribute config
    #   <p>The target group configuration.</p>
    #   @return [Types::TargetGroupConfig]
    # @!attribute created_at
    #   <p>The date and time that the target group was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the target group was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status.</p>
    #   @return [String]
    # @!attribute service_arns
    #   <p>The Amazon Resource Names (ARNs) of the service.</p>
    #   @return [Array<String>]
    # @!attribute failure_message
    #   <p>The failure message.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    class GetTargetGroupOutput < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :type,
      :config,
      :created_at,
      :last_updated_at,
      :status,
      :service_arns,
      :failure_message,
      :failure_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the constraints for a header match. Matches incoming requests with rule based on request header value before applying rule action.</p>
    # @!attribute name
    #   <p>The name of the header.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The header match type.</p>
    #   @return [Types::HeaderMatchType]
    # @!attribute case_sensitive
    #   <p>Indicates whether the match is case sensitive.</p>
    #   @return [Boolean]
    class HeaderMatch < Struct.new(
      nil,
      :name,
      :match,
      :case_sensitive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a header match type.</p>
    # @!attribute exact
    #   <p>An exact type match.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>A prefix type match. Matches the value with the prefix.</p>
    #   @return [String]
    # @!attribute contains
    #   <p>A contains type match.</p>
    #   @return [String]
    class HeaderMatchType < Struct.new(
      :exact,
      :prefix,
      :contains,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Exact < HeaderMatchType; end
      class Prefix < HeaderMatchType; end
      class Contains < HeaderMatchType; end
      class Unknown < HeaderMatchType; end
    end

    # <p>Describes the health check configuration of a target group. Health check configurations aren't used for target groups of type <code>LAMBDA</code> or <code>ALB</code>.</p>
    # @!attribute enabled
    #   <p>Indicates whether health checking is enabled.</p>
    #   @return [Boolean]
    # @!attribute protocol
    #   <p>The protocol used when performing health checks on targets. The possible protocols are <code>HTTP</code> and <code>HTTPS</code>. The default is <code>HTTP</code>.</p>
    #   @return [String]
    # @!attribute protocol_version
    #   <p>The protocol version used when performing health checks on targets. The possible protocol versions are <code>HTTP1</code> and <code>HTTP2</code>.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port used when performing health checks on targets. The default setting is the port that a target receives traffic on.</p>
    #   @return [Integer]
    # @!attribute path
    #   <p>The destination for health checks on the targets. If the protocol version is <code>HTTP/1.1</code> or <code>HTTP/2</code>, specify a valid URI (for example, <code>/path?query</code>). The default path is <code>/</code>. Health checks are not supported if the protocol version is <code>gRPC</code>, however, you can choose <code>HTTP/1.1</code> or <code>HTTP/2</code> and specify a valid URI.</p>
    #   @return [String]
    # @!attribute health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target. The range is 5–300 seconds. The default is 30 seconds.</p>
    #   @return [Integer]
    # @!attribute health_check_timeout_seconds
    #   <p>The amount of time, in seconds, to wait before reporting a target as unhealthy. The range is 1–120 seconds. The default is 5 seconds.</p>
    #   @return [Integer]
    # @!attribute healthy_threshold_count
    #   <p>The number of consecutive successful health checks required before considering an unhealthy target healthy. The range is 2–10. The default is 5.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold_count
    #   <p>The number of consecutive failed health checks required before considering a target unhealthy. The range is 2–10. The default is 2.</p>
    #   @return [Integer]
    # @!attribute matcher
    #   <p>The codes to use when checking for a successful response from a target.</p>
    #   @return [Types::Matcher]
    class HealthCheckConfig < Struct.new(
      nil,
      :enabled,
      :protocol,
      :protocol_version,
      :port,
      :path,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :matcher,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes criteria that can be applied to incoming requests.</p>
    # @!attribute method
    #   <p>The HTTP method type.</p>
    #   @return [String]
    # @!attribute path_match
    #   <p>The path match.</p>
    #   @return [Types::PathMatch]
    # @!attribute header_matches
    #   <p>The header matches. Matches incoming requests with rule based on request header value before applying rule action.</p>
    #   @return [Array<Types::HeaderMatch>]
    class HttpMatch < Struct.new(
      nil,
      :method,
      :path_match,
      :header_matches,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred while processing the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an IP resource.</p>
    # @!attribute ip_address
    #   <p>The IP address of the IP resource.</p>
    #   @return [String]
    class IpResource < Struct.new(
      nil,
      :ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The ID or ARN of the service network or service.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListAccessLogSubscriptionsInput < Struct.new(
      nil,
      :resource_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the access log subscriptions.</p>
    #   @return [Array<Types::AccessLogSubscriptionSummary>]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListAccessLogSubscriptionsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> A pagination token for the next page of results. </p>
    #   @return [String]
    class ListDomainVerificationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> Information about the domain verifications. </p>
    #   @return [Array<Types::DomainVerificationSummary>]
    # @!attribute next_token
    #   <p> A pagination token for the next page of results. </p>
    #   @return [String]
    class ListDomainVerificationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListListenersInput < Struct.new(
      nil,
      :service_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the listeners.</p>
    #   @return [Array<Types::ListenerSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListListenersOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_gateway_identifier
    #   <p>The ID of the resource gateway for the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_group_identifier
    #   <p>The ID of the resource configuration of type <code>Group</code>.</p>
    #   @return [String]
    # @!attribute domain_verification_identifier
    #   <p> The domain verification ID. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceConfigurationsRequest < Struct.new(
      nil,
      :resource_gateway_identifier,
      :resource_configuration_group_identifier,
      :domain_verification_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the resource configurations.</p>
    #   @return [Array<Types::ResourceConfigurationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceConfigurationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_configuration_identifier
    #   <p>The ID for the resource configuration associated with the VPC endpoint.</p>
    #   @return [String]
    # @!attribute resource_endpoint_association_identifier
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC endpoint in the association.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_owner
    #   <p>The owner of the VPC endpoint in the association.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceEndpointAssociationsRequest < Struct.new(
      nil,
      :resource_configuration_identifier,
      :resource_endpoint_association_identifier,
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the VPC endpoint associations.</p>
    #   @return [Array<Types::ResourceEndpointAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceEndpointAssociationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceGatewaysRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the resource gateways.</p>
    #   @return [Array<Types::ResourceGatewaySummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceGatewaysResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListRulesInput < Struct.new(
      nil,
      :service_identifier,
      :listener_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the rules.</p>
    #   @return [Array<Types::RuleSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListRulesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute resource_configuration_identifier
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    # @!attribute include_children
    #   <p>Include service network resource associations of the child resource configuration with the grouped resource configuration.</p> <p>The type is boolean and the default value is false.</p>
    #   @return [Boolean]
    class ListServiceNetworkResourceAssociationsRequest < Struct.new(
      nil,
      :service_network_identifier,
      :resource_configuration_identifier,
      :max_results,
      :next_token,
      :include_children,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the associations.</p>
    #   @return [Array<Types::ServiceNetworkResourceAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkResourceAssociationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    #   @return [String]
    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkServiceAssociationsInput < Struct.new(
      nil,
      :service_network_identifier,
      :service_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the associations.</p>
    #   @return [Array<Types::ServiceNetworkServiceAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkServiceAssociationsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID or ARN of the VPC.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkVpcAssociationsInput < Struct.new(
      nil,
      :service_network_identifier,
      :vpc_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the associations.</p>
    #   @return [Array<Types::ServiceNetworkVpcAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkVpcAssociationsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID of the service network associated with the VPC endpoint.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkVpcEndpointAssociationsRequest < Struct.new(
      nil,
      :service_network_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the association between the VPC endpoint and service network.</p>
    #   @return [Array<Types::ServiceNetworkEndpointAssociation>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkVpcEndpointAssociationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworksInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the service networks.</p>
    #   @return [Array<Types::ServiceNetworkSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworksOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListServicesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the services.</p>
    #   @return [Array<Types::ServiceSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServicesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Information about the tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID or ARN of the VPC.</p>
    #   @return [String]
    # @!attribute target_group_type
    #   <p>The target group type.</p>
    #   @return [String]
    class ListTargetGroupsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :vpc_identifier,
      :target_group_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the target groups.</p>
    #   @return [Array<Types::TargetGroupSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListTargetGroupsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets.</p>
    #   @return [Array<Types::Target>]
    class ListTargetsInput < Struct.new(
      nil,
      :target_group_identifier,
      :max_results,
      :next_token,
      :targets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the targets.</p>
    #   @return [Array<Types::TargetSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListTargetsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a listener.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the listener.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the listener.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The listener protocol.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The listener port.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date and time that the listener was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the listener was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class ListenerSummary < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the codes to use when checking for a successful response from a target for health checks.</p>
    # @!attribute http_code
    #   <p>The HTTP code to use when checking for a successful response from a target.</p>
    #   @return [String]
    class Matcher < Struct.new(
      :http_code,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class HttpCode < Matcher; end
      class Unknown < Matcher; end
    end

    # <p>Describes the conditions that can be applied when matching a path for incoming requests.</p>
    # @!attribute match
    #   <p>The type of path match.</p>
    #   @return [Types::PathMatchType]
    # @!attribute case_sensitive
    #   <p>Indicates whether the match is case sensitive.</p>
    #   @return [Boolean]
    class PathMatch < Struct.new(
      nil,
      :match,
      :case_sensitive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a path match type. Each rule can include only one of the following types of paths.</p>
    # @!attribute exact
    #   <p>An exact match of the path.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>A prefix match of the path.</p>
    #   @return [String]
    class PathMatchType < Struct.new(
      :exact,
      :prefix,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Exact < PathMatchType; end
      class Prefix < PathMatchType; end
      class Unknown < PathMatchType; end
    end

    # <p>Specifies which account pays for a category of charges on a VPC endpoint association.</p>
    # @!attribute scope
    #   <p>The category of charges that this entry applies to. <code>ResourceGatewayCharges</code> covers the resource gateway's data processing charge.</p>
    #   @return [String]
    # @!attribute payer_responsibility_type
    #   <p>The account that pays this category of charges. <code>VpcEndpointAccount</code> owns the VPC endpoint. <code>ResourceGatewayAccount</code> owns the resource gateway.</p>
    #   @return [String]
    class PayerResponsibilityEntry < Struct.new(
      nil,
      :scope,
      :payer_responsibility_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The ID or ARN of the service network or service for which the policy is created.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The auth policy. The policy string in JSON must not contain newlines or blank lines.</p>
    #   @return [String]
    class PutAuthPolicyInput < Struct.new(
      nil,
      :resource_identifier,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The auth policy. The policy string in JSON must not contain newlines or blank lines.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the auth policy. The auth policy is only active when the auth type is set to <code>AWS_IAM</code>. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is <code>NONE</code>, then, any auth policy that you provide remains inactive. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#create-service-network">Create a service network</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    #   @return [String]
    class PutAuthPolicyOutput < Struct.new(
      nil,
      :policy,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ID or ARN of the service network or service for which the policy is created.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>An IAM policy. The policy string in JSON must not contain newlines or blank lines.</p>
    #   @return [String]
    class PutResourcePolicyInput < Struct.new(
      nil,
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutResourcePolicyOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets.</p>
    #   @return [Array<Types::Target>]
    class RegisterTargetsInput < Struct.new(
      nil,
      :target_group_identifier,
      :targets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful
    #   <p>The targets that were successfully registered.</p>
    #   @return [Array<Types::Target>]
    # @!attribute unsuccessful
    #   <p>The targets that were not registered.</p>
    #   @return [Array<Types::TargetFailure>]
    class RegisterTargetsOutput < Struct.new(
      nil,
      :successful,
      :unsuccessful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a resource configuration.</p>
    # @!attribute dns_resource
    #   <p>The DNS name of the resource.</p>
    #   @return [Types::DnsResource]
    # @!attribute ip_resource
    #   <p>The IP resource.</p>
    #   @return [Types::IpResource]
    # @!attribute arn_resource
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [Types::ArnResource]
    # @!attribute cidr_resource
    #   <p>The network segment for a resource configuration of type CIDR, specified as one or more CIDR ranges (<code>cidrRanges</code>). Resources whose IP addresses fall within these ranges are reachable through a <code>Tunnel</code> VPC endpoint.</p>
    #   @return [Types::CidrResource]
    class ResourceConfigurationDefinition < Struct.new(
      :dns_resource,
      :ip_resource,
      :arn_resource,
      :cidr_resource,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DnsResource < ResourceConfigurationDefinition; end
      class IpResource < ResourceConfigurationDefinition; end
      class ArnResource < ResourceConfigurationDefinition; end
      class CidrResource < ResourceConfigurationDefinition; end
      class Unknown < ResourceConfigurationDefinition; end
    end

    # <p>Summary information about a resource configuration.</p>
    # @!attribute id
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The ID of the resource gateway.</p>
    #   @return [String]
    # @!attribute resource_configuration_group_id
    #   <p>The ID of the group resource configuration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of resource configuration.</p> <ul> <li> <p> <code>SINGLE</code> - A single resource.</p> </li> <li> <p> <code>GROUP</code> - A group of resources. You must create a group resource configuration before you create a child resource configuration.</p> </li> <li> <p> <code>CHILD</code> - A single resource that is part of a group resource configuration.</p> </li> <li> <p> <code>ARN</code> - An Amazon Web Services resource.</p> </li> <li> <p> <code>CIDR</code> - A network segment (a range of IP addresses) accessed through a <code>Tunnel</code> VPC endpoint.</p> </li> </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the resource configuration.</p>
    #   @return [String]
    # @!attribute amazon_managed
    #   <p>Indicates whether the resource configuration was created and is managed by Amazon.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The date and time that the resource configuration was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The most recent date and time that the resource configuration was updated, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute custom_domain_name
    #   <p> The custom domain name. </p>
    #   @return [String]
    # @!attribute domain_verification_id
    #   <p> The domain verification ID. </p>
    #   @return [String]
    # @!attribute group_domain
    #   <p> (GROUP) The group domain for a group resource configuration. Any domains that you create for the child resource are subdomains of the group domain. Child resources inherit the verification status of the domain. </p>
    #   @return [String]
    class ResourceConfigurationSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :resource_gateway_id,
      :resource_configuration_group_id,
      :type,
      :status,
      :amazon_managed,
      :created_at,
      :last_updated_at,
      :custom_domain_name,
      :domain_verification_id,
      :group_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a VPC endpoint association.</p>
    # @!attribute id
    #   <p>The ID of the VPC endpoint association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the VPC endpoint association.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_name
    #   <p>The name of the resource configuration.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_owner
    #   <p>The owner of the VPC endpoint.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the VPC endpoint association was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute payer_responsibility
    #   <p>Who pays for each category of charges on the VPC endpoint association.</p>
    #   @return [Array<Types::PayerResponsibilityEntry>]
    class ResourceEndpointAssociationSummary < Struct.new(
      nil,
      :id,
      :arn,
      :resource_configuration_id,
      :resource_configuration_arn,
      :resource_configuration_name,
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :created_by,
      :created_at,
      :payer_responsibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a resource gateway.</p>
    # @!attribute name
    #   <p>The name of the resource gateway.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the resource gateway.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The name of the resource gateway.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID of the VPC for the resource gateway.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The IDs of the VPC subnets for the resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups applied to the resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The type of IP address used by the resource gateway.</p>
    #   @return [String]
    # @!attribute ipv4_addresses_per_eni
    #   <p>The number of IPv4 addresses in each ENI for the resource gateway.</p>
    #   @return [Integer]
    # @!attribute resource_config_dns_resolution
    #   <p>The DNS resolution type for resource configurations that are associated with this resource gateway.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the VPC endpoint association was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The most recent date and time that the resource gateway was updated, in ISO-8601 format.</p>
    #   @return [Time]
    class ResourceGatewaySummary < Struct.new(
      nil,
      :name,
      :id,
      :arn,
      :status,
      :vpc_identifier,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :resource_config_dns_resolution,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource that does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
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

    # <p>Describes the action for a rule.</p>
    # @!attribute forward
    #   <p>The forward action. Traffic that matches the rule is forwarded to the specified target groups.</p>
    #   @return [Types::ForwardAction]
    # @!attribute fixed_response
    #   <p>The fixed response action. The rule returns a custom HTTP response.</p>
    #   @return [Types::FixedResponseAction]
    class RuleAction < Struct.new(
      :forward,
      :fixed_response,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Forward < RuleAction; end
      class FixedResponse < RuleAction; end
      class Unknown < RuleAction; end
    end

    # <p>Describes a rule match.</p>
    # @!attribute http_match
    #   <p>The HTTP criteria that a rule must match.</p>
    #   @return [Types::HttpMatch]
    class RuleMatch < Struct.new(
      :http_match,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class HttpMatch < RuleMatch; end
      class Unknown < RuleMatch; end
    end

    # <p>Summary information about a listener rule.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Indicates whether this is the default listener rule.</p>
    #   @return [Boolean]
    # @!attribute priority
    #   <p>The priority of the rule.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date and time that the listener rule was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the listener rule was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class RuleSummary < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :is_default,
      :priority,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a rule update.</p>
    # @!attribute rule_identifier
    #   <p>The ID or ARN of the rule.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The rule match.</p>
    #   @return [Types::RuleMatch]
    # @!attribute priority
    #   <p>The rule priority. A listener can't have multiple rules with the same priority.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The rule action.</p>
    #   @return [Types::RuleAction]
    class RuleUpdate < Struct.new(
      nil,
      :rule_identifier,
      :match,
      :priority,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a rule update that failed.</p>
    # @!attribute rule_identifier
    #   <p>The ID or ARN of the rule.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>The failure message.</p>
    #   @return [String]
    class RuleUpdateFailure < Struct.new(
      nil,
      :rule_identifier,
      :failure_code,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a successful rule update.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the listener.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the listener.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Indicates whether this is the default rule.</p>
    #   @return [Boolean]
    # @!attribute match
    #   <p>The rule match.</p>
    #   @return [Types::RuleMatch]
    # @!attribute priority
    #   <p>The rule priority.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The action for the rule.</p>
    #   @return [Types::RuleAction]
    class RuleUpdateSuccess < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :is_default,
      :match,
      :priority,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the association between a service network and a VPC endpoint.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC endpoint associated with the service network.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the association.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_owner_id
    #   <p>The owner of the VPC endpoint associated with the service network.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the association.</p>
    #   @return [String]
    # @!attribute service_network_arn
    #   <p>The Amazon Resource Name (ARN) of the service network.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the association was created, in ISO-8601 format.</p>
    #   @return [Time]
    class ServiceNetworkEndpointAssociation < Struct.new(
      nil,
      :vpc_endpoint_id,
      :vpc_id,
      :vpc_endpoint_owner_id,
      :id,
      :state,
      :service_network_arn,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an association between a service network and a resource configuration.</p>
    # @!attribute id
    #   <p>The ID of the association between the service network and resource configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service network’s association with the resource configuration. If the deletion fails, try to delete again. </p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the association was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute resource_configuration_id
    #   <p>The ID of the resource configuration associated with the service network.</p>
    #   @return [String]
    # @!attribute resource_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute resource_configuration_name
    #   <p>The name of the resource configuration associated with the service network.</p>
    #   @return [String]
    # @!attribute service_network_id
    #   <p>The ID of the service network associated with the resource configuration.</p>
    #   @return [String]
    # @!attribute service_network_arn
    #   <p>The Amazon Resource Name (ARN) of the service network associated with the resource configuration.</p>
    #   @return [String]
    # @!attribute service_network_name
    #   <p>The name of the service network associated with the resource configuration.</p>
    #   @return [String]
    # @!attribute dns_entry
    #   <p>The DNS entry for the service.</p>
    #   @return [Types::DnsEntry]
    # @!attribute private_dns_entry
    #   <p>The private DNS entry for the service. This entry includes only the domain name.</p>
    #   @return [Types::DnsEntry]
    # @!attribute is_managed_association
    #   <p>Specifies whether the association is managed by Amazon.</p>
    #   @return [Boolean]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is enabled for the service network resource association. </p>
    #   @return [Boolean]
    class ServiceNetworkResourceAssociationSummary < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      :created_by,
      :created_at,
      :resource_configuration_id,
      :resource_configuration_arn,
      :resource_configuration_name,
      :service_network_id,
      :service_network_arn,
      :service_network_name,
      :dns_entry,
      :private_dns_entry,
      :is_managed_association,
      :failure_code,
      :private_dns_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an association between a service network and a service.</p>
    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service network’s association with the service. If the deletion fails, try to delete again.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the association was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute service_id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute service_network_id
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute service_network_name
    #   <p>The name of the service network.</p>
    #   @return [String]
    # @!attribute service_network_arn
    #   <p>The Amazon Resource Name (ARN) of the service network.</p>
    #   @return [String]
    # @!attribute dns_entry
    #   <p>The DNS information.</p>
    #   @return [Types::DnsEntry]
    # @!attribute custom_domain_name
    #   <p>The custom domain name of the service.</p>
    #   @return [String]
    class ServiceNetworkServiceAssociationSummary < Struct.new(
      nil,
      :id,
      :status,
      :arn,
      :created_by,
      :created_at,
      :service_id,
      :service_name,
      :service_arn,
      :service_network_id,
      :service_network_name,
      :service_network_arn,
      :dns_entry,
      :custom_domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a service network.</p>
    # @!attribute id
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service network.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service network.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the service network was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the service network was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute number_of_associated_vp_cs
    #   <p>The number of VPCs associated with the service network.</p>
    #   @return [Integer]
    # @!attribute number_of_associated_services
    #   <p>The number of services associated with the service network.</p>
    #   @return [Integer]
    # @!attribute number_of_associated_resource_configurations
    #   <p>The number of resource configurations associated with a service network.</p>
    #   @return [Integer]
    class ServiceNetworkSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :created_at,
      :last_updated_at,
      :number_of_associated_vp_cs,
      :number_of_associated_services,
      :number_of_associated_resource_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an association between a service network and a VPC.</p>
    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the association was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute service_network_id
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute service_network_name
    #   <p>The name of the service network.</p>
    #   @return [String]
    # @!attribute service_network_arn
    #   <p>The Amazon Resource Name (ARN) of the service network.</p>
    #   @return [String]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is enabled for the service network VPC association. </p>
    #   @return [Boolean]
    # @!attribute dns_options
    #   <p> The DNS options for the service network VPC association. </p>
    #   @return [Types::DnsOptions]
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time that the association was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class ServiceNetworkVpcAssociationSummary < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      :created_by,
      :created_at,
      :service_network_id,
      :service_network_name,
      :service_network_arn,
      :private_dns_enabled,
      :dns_options,
      :vpc_id,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
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

    # <p>Summary information about a service.</p>
    # @!attribute id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the service was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the service was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute dns_entry
    #   <p>The DNS information.</p>
    #   @return [Types::DnsEntry]
    # @!attribute custom_domain_name
    #   <p>The custom domain name of the service.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status.</p>
    #   @return [String]
    class ServiceSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :created_at,
      :last_updated_at,
      :dns_entry,
      :custom_domain_name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies if the service network should be enabled for sharing.</p>
    # @!attribute enabled
    #   <p>Specifies if the service network is enabled for sharing.</p>
    #   @return [Boolean]
    class SharingConfig < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p> The domain name to verify ownership for. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags for the domain verification. </p>
    #   @return [Hash<String, String>]
    class StartDomainVerificationRequest < Struct.new(
      nil,
      :client_token,
      :domain_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the domain verification. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the domain verification. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p> The domain name being verified. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the domain verification process. </p>
    #   @return [String]
    # @!attribute txt_method_config
    #   <p> The TXT record configuration used for domain verification. </p>
    #   @return [Types::TxtMethodConfig]
    class StartDomainVerificationResponse < Struct.new(
      nil,
      :id,
      :arn,
      :domain_name,
      :status,
      :txt_method_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a target.</p>
    # @!attribute id
    #   <p>The ID of the target. If the target group type is <code>INSTANCE</code>, this is an instance ID. If the target group type is <code>IP</code>, this is an IP address. If the target group type is <code>LAMBDA</code>, this is the ARN of a Lambda function. If the target group type is <code>ALB</code>, this is the ARN of an Application Load Balancer.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the target is listening. For HTTP, the default is 80. For HTTPS, the default is 443.</p>
    #   @return [Integer]
    class Target < Struct.new(
      nil,
      :id,
      :port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a target failure.</p>
    # @!attribute id
    #   <p>The ID of the target. If the target group type is <code>INSTANCE</code>, this is an instance ID. If the target group type is <code>IP</code>, this is an IP address. If the target group type is <code>LAMBDA</code>, this is the ARN of a Lambda function. If the target group type is <code>ALB</code>, this is the ARN of an Application Load Balancer.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the target is listening. This parameter doesn't apply if the target is a Lambda function.</p>
    #   @return [Integer]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>The failure message.</p>
    #   @return [String]
    class TargetFailure < Struct.new(
      nil,
      :id,
      :port,
      :failure_code,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a target group.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html">Target groups</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @!attribute port
    #   <p>The port on which the targets are listening. For HTTP, the default is 80. For HTTPS, the default is 443. Not supported if the target group type is <code>LAMBDA</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol to use for routing traffic to the targets. The default is the protocol of the target group. Not supported if the target group type is <code>LAMBDA</code>.</p>
    #   @return [String]
    # @!attribute protocol_version
    #   <p>The protocol version. The default is <code>HTTP1</code>. Not supported if the target group type is <code>LAMBDA</code>.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The type of IP address used for the target group. Supported only if the target group type is <code>IP</code>. The default is <code>IPV4</code>.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID of the VPC. Not supported if the target group type is <code>LAMBDA</code>.</p>
    #   @return [String]
    # @!attribute health_check
    #   <p>The health check configuration. Not supported if the target group type is <code>LAMBDA</code> or <code>ALB</code>.</p>
    #   @return [Types::HealthCheckConfig]
    # @!attribute lambda_event_structure_version
    #   <p>The version of the event structure that your Lambda function receives. Supported only if the target group type is <code>LAMBDA</code>. The default is <code>V1</code>.</p>
    #   @return [String]
    class TargetGroupConfig < Struct.new(
      nil,
      :port,
      :protocol,
      :protocol_version,
      :ip_address_type,
      :vpc_identifier,
      :health_check,
      :lambda_event_structure_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a target group.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html">Target groups</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @!attribute id
    #   <p>The ID of the target group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the target group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the target group.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The target group type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the target group was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute port
    #   <p>The port of the target group.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol of the target group.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The type of IP address used for the target group. The possible values are <code>IPV4</code> and <code>IPV6</code>. This is an optional parameter. If not specified, the default is <code>IPV4</code>.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID of the VPC of the target group.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time that the target group was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status.</p>
    #   @return [String]
    # @!attribute service_arns
    #   <p>The Amazon Resource Names (ARNs) of the service.</p>
    #   @return [Array<String>]
    # @!attribute lambda_event_structure_version
    #   <p>The version of the event structure that your Lambda function receives. Supported only if the target group type is <code>LAMBDA</code>.</p>
    #   @return [String]
    class TargetGroupSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :type,
      :created_at,
      :port,
      :protocol,
      :ip_address_type,
      :vpc_identifier,
      :last_updated_at,
      :status,
      :service_arns,
      :lambda_event_structure_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a target.</p>
    # @!attribute id
    #   <p>The ID of the target. If the target group type is <code>INSTANCE</code>, this is an instance ID. If the target group type is <code>IP</code>, this is an IP address. If the target group type is <code>LAMBDA</code>, this is the ARN of a Lambda function. If the target type is <code>ALB</code>, this is the ARN of an Application Load Balancer.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the target is listening.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the target.</p> <ul> <li> <p> <code>DRAINING</code>: The target is being deregistered. No new connections are sent to this target while current connections are being drained. The default draining time is 1 minute.</p> </li> <li> <p> <code>UNAVAILABLE</code>: Health checks are unavailable for the target group.</p> </li> <li> <p> <code>HEALTHY</code>: The target is healthy.</p> </li> <li> <p> <code>UNHEALTHY</code>: The target is unhealthy.</p> </li> <li> <p> <code>INITIAL</code>: Initial health checks on the target are being performed.</p> </li> <li> <p> <code>UNUSED</code>: Target group is not used in a service.</p> </li> </ul>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The code for why the target status is what it is.</p>
    #   @return [String]
    class TargetSummary < Struct.new(
      nil,
      :id,
      :port,
      :status,
      :reason_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying.</p>
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

    # <p> Configuration for TXT record-based domain verification method. </p>
    # @!attribute value
    #   <p> The value that must be added to the TXT record for domain verification. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the TXT record that must be created for domain verification. </p>
    #   @return [String]
    class TxtMethodConfig < Struct.new(
      nil,
      :value,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys of the tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_log_subscription_identifier
    #   <p>The ID or ARN of the access log subscription.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the access log destination.</p>
    #   @return [String]
    class UpdateAccessLogSubscriptionInput < Struct.new(
      nil,
      :access_log_subscription_identifier,
      :destination_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the access log subscription.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the access log subscription.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the access log subscription.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the access log destination.</p>
    #   @return [String]
    class UpdateAccessLogSubscriptionOutput < Struct.new(
      nil,
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :destination_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    # @!attribute default_action
    #   <p>The action for the default rule.</p>
    #   @return [Types::RuleAction]
    class UpdateListenerInput < Struct.new(
      nil,
      :service_identifier,
      :listener_identifier,
      :default_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the listener.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the listener.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol of the listener.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The listener port.</p>
    #   @return [Integer]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute default_action
    #   <p>The action for the default rule.</p>
    #   @return [Types::RuleAction]
    class UpdateListenerOutput < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :service_arn,
      :service_id,
      :default_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_configuration_identifier
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_definition
    #   <p>Identifies the resource configuration in one of the following ways:</p> <ul> <li> <p> <b>Amazon Resource Name (ARN)</b> - Supported resource-types that are provisioned by Amazon Web Services services, such as RDS databases, can be identified by their ARN.</p> </li> <li> <p> <b>Domain name</b> - Any domain name that is publicly resolvable.</p> </li> <li> <p> <b>IP address</b> - For IPv4 and IPv6, only IP addresses in the VPC are supported.</p> </li> </ul>
    #   @return [Types::ResourceConfigurationDefinition]
    # @!attribute allow_association_to_shareable_service_network
    #   <p>Indicates whether to add the resource configuration to service networks that are shared with other accounts.</p>
    #   @return [Boolean]
    # @!attribute port_ranges
    #   <p>The TCP port ranges that a consumer can use to access a resource configuration. You can separate port ranges with a comma. Example: 1-65535 or 1,2,22-30</p>
    #   @return [Array<String>]
    class UpdateResourceConfigurationRequest < Struct.new(
      nil,
      :resource_configuration_identifier,
      :resource_configuration_definition,
      :allow_association_to_shareable_service_network,
      :port_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The ID of the resource gateway associated with the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_group_id
    #   <p>The ID of the group resource configuration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of resource configuration.</p> <ul> <li> <p> <code>SINGLE</code> - A single resource.</p> </li> <li> <p> <code>GROUP</code> - A group of resources.</p> </li> <li> <p> <code>CHILD</code> - A single resource that is part of a group resource configuration.</p> </li> <li> <p> <code>ARN</code> - An Amazon Web Services resource.</p> </li> <li> <p> <code>CIDR</code> - A network segment (a range of IP addresses) accessed through a <code>Tunnel</code> VPC endpoint.</p> </li> </ul>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>The TCP port ranges that a consumer can use to access a resource configuration. You can separate port ranges with a comma. Example: 1-65535 or 1,2,22-30</p>
    #   @return [Array<String>]
    # @!attribute allow_association_to_shareable_service_network
    #   <p>Indicates whether to add the resource configuration to service networks that are shared with other accounts.</p>
    #   @return [Boolean]
    # @!attribute protocol
    #   <p>The TCP protocol accepted by the specified resource configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_definition
    #   <p>The resource configuration.</p>
    #   @return [Types::ResourceConfigurationDefinition]
    class UpdateResourceConfigurationResponse < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :resource_gateway_id,
      :resource_configuration_group_id,
      :type,
      :port_ranges,
      :allow_association_to_shareable_service_network,
      :protocol,
      :status,
      :resource_configuration_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_gateway_identifier
    #   <p>The ID or ARN of the resource gateway.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups associated with the resource gateway.</p>
    #   @return [Array<String>]
    class UpdateResourceGatewayRequest < Struct.new(
      nil,
      :resource_gateway_identifier,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the resource gateway.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the resource gateway.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the resource gateway.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the resource gateway.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The IDs of the VPC subnets for the resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups associated with the resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The type of IP address used by the resource gateway.</p>
    #   @return [String]
    class UpdateResourceGatewayResponse < Struct.new(
      nil,
      :name,
      :id,
      :arn,
      :status,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    # @!attribute rule_identifier
    #   <p>The ID or ARN of the rule.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The rule match.</p>
    #   @return [Types::RuleMatch]
    # @!attribute priority
    #   <p>The rule priority. A listener can't have multiple rules with the same priority.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>Information about the action for the specified listener rule.</p>
    #   @return [Types::RuleAction]
    class UpdateRuleInput < Struct.new(
      nil,
      :service_identifier,
      :listener_identifier,
      :rule_identifier,
      :match,
      :priority,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the listener.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the listener.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Indicates whether this is the default rule.</p>
    #   @return [Boolean]
    # @!attribute match
    #   <p>The rule match.</p>
    #   @return [Types::RuleMatch]
    # @!attribute priority
    #   <p>The rule priority.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>Information about the action for the specified listener rule.</p>
    #   @return [Types::RuleAction]
    class UpdateRuleOutput < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :is_default,
      :match,
      :priority,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p> <ul> <li> <p> <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p> </li> <li> <p> <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p> </li> </ul>
    #   @return [String]
    # @!attribute idle_timeout_seconds
    #   <p>The amount of time, in seconds, that a connection can remain idle (no data sent) before VPC Lattice closes it. The valid range is 60 to 600 seconds. If you don't specify a value, the default is 60 seconds. This setting does not change the maximum connection duration of 10 minutes; connections are still closed when they reach that limit.</p>
    #   @return [Integer]
    class UpdateServiceInput < Struct.new(
      nil,
      :service_identifier,
      :certificate_arn,
      :auth_type,
      :idle_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p> <ul> <li> <p> <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p> </li> <li> <p> <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p> </li> </ul>
    #   @return [String]
    class UpdateServiceNetworkInput < Struct.new(
      nil,
      :service_network_identifier,
      :auth_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service network.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service network.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #   @return [String]
    class UpdateServiceNetworkOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :auth_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_network_vpc_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups.</p>
    #   @return [Array<String>]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is enabled for the VPC association. </p>
    #   @return [Boolean]
    # @!attribute dns_options
    #   <p> DNS options for the service network VPC association. </p>
    #   @return [Types::DnsOptions]
    class UpdateServiceNetworkVpcAssociationInput < Struct.new(
      nil,
      :service_network_vpc_association_identifier,
      :security_group_ids,
      :private_dns_enabled,
      :dns_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>. However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, there is no change in the status.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups.</p>
    #   @return [Array<String>]
    # @!attribute private_dns_enabled
    #   <p> Indicates if private DNS is enabled for the VPC association. </p>
    #   @return [Boolean]
    # @!attribute dns_options
    #   <p> DNS options for the service network VPC association. </p>
    #   @return [Types::DnsOptions]
    class UpdateServiceNetworkVpcAssociationOutput < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      :created_by,
      :security_group_ids,
      :private_dns_enabled,
      :dns_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute custom_domain_name
    #   <p>The custom domain name of the service.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #   @return [String]
    # @!attribute idle_timeout_seconds
    #   <p>The amount of time, in seconds, that a connection can remain idle before VPC Lattice closes it.</p>
    #   @return [Integer]
    class UpdateServiceOutput < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :custom_domain_name,
      :certificate_arn,
      :auth_type,
      :idle_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    # @!attribute health_check
    #   <p>The health check configuration.</p>
    #   @return [Types::HealthCheckConfig]
    class UpdateTargetGroupInput < Struct.new(
      nil,
      :target_group_identifier,
      :health_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the target group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the target group.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The target group type.</p>
    #   @return [String]
    # @!attribute config
    #   <p>The target group configuration.</p>
    #   @return [Types::TargetGroupConfig]
    # @!attribute status
    #   <p>The status.</p>
    #   @return [String]
    class UpdateTargetGroupOutput < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :type,
      :config,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input does not satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The fields that failed validation.</p>
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

    # <p>Describes a validation failure.</p>
    # @!attribute name
    #   <p>The name of the validation exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Additional information about why the validation failed.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the weight of a target group.</p>
    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>Only required if you specify multiple target groups for a forward action. The weight determines how requests are distributed to the target group. For example, if you specify two target groups, each with a weight of 10, each target group receives half the requests. If you specify two target groups, one with a weight of 10 and the other with a weight of 20, the target group with a weight of 20 receives twice as many requests as the other target group. If there's only one target group specified, then the default value is 100.</p>
    #   @return [Integer]
    class WeightedTargetGroup < Struct.new(
      nil,
      :target_group_identifier,
      :weight,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
