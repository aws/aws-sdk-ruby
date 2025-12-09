# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::VPCLattice
  module Types

    # The user does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an access log subscription.
    #
    # @!attribute [rw] id
    #   The ID of the access log subscription.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the access log subscription
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the service or service network.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the service or service network.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) of the destination.
    #   @return [String]
    #
    # @!attribute [rw] service_network_log_type
    #   Log type of the service network.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the access log subscription was created, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the access log subscription was last updated,
    #   in ISO-8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/AccessLogSubscriptionSummary AWS API Documentation
    #
    class AccessLogSubscriptionSummary < Struct.new(
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :destination_arn,
      :service_network_log_type,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Resource Name (ARN) of the resource.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ArnResource AWS API Documentation
    #
    class ArnResource < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] listener_identifier
    #   The ID or ARN of the listener.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The rules for the specified listener.
    #   @return [Array<Types::RuleUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/BatchUpdateRuleRequest AWS API Documentation
    #
    class BatchUpdateRuleRequest < Struct.new(
      :service_identifier,
      :listener_identifier,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful
    #   The rules that were successfully updated.
    #   @return [Array<Types::RuleUpdateSuccess>]
    #
    # @!attribute [rw] unsuccessful
    #   The rules that the operation couldn't update.
    #   @return [Array<Types::RuleUpdateFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/BatchUpdateRuleResponse AWS API Documentation
    #
    class BatchUpdateRuleResponse < Struct.new(
      :successful,
      :unsuccessful)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource. Updating
    # or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The ID or ARN of the service network or service.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) of the destination. The supported
    #   destination types are CloudWatch Log groups, Kinesis Data Firehose
    #   delivery streams, and Amazon S3 buckets.
    #   @return [String]
    #
    # @!attribute [rw] service_network_log_type
    #   The type of log that monitors your Amazon VPC Lattice service
    #   networks.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the access log subscription.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateAccessLogSubscriptionRequest AWS API Documentation
    #
    class CreateAccessLogSubscriptionRequest < Struct.new(
      :client_token,
      :resource_identifier,
      :destination_arn,
      :service_network_log_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the access log subscription.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the access log subscription.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the service network or service.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the service network or service.
    #   @return [String]
    #
    # @!attribute [rw] service_network_log_type
    #   The type of log that monitors your Amazon VPC Lattice service
    #   networks.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) of the log destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateAccessLogSubscriptionResponse AWS API Documentation
    #
    class CreateAccessLogSubscriptionResponse < Struct.new(
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :service_network_log_type,
      :destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the listener. A listener name must be unique within a
    #   service. The valid characters are a-z, 0-9, and hyphens (-). You
    #   can't use a hyphen as the first or last character, or immediately
    #   after another hyphen.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The listener protocol.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The listener port. You can specify a value from 1 to 65535. For
    #   HTTP, the default is 80. For HTTPS, the default is 443.
    #   @return [Integer]
    #
    # @!attribute [rw] default_action
    #   The action for the default rule. Each listener has a default rule.
    #   The default rule is used if no other rules match.
    #   @return [Types::RuleAction]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the listener.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateListenerRequest AWS API Documentation
    #
    class CreateListenerRequest < Struct.new(
      :service_identifier,
      :name,
      :protocol,
      :port,
      :default_action,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the listener.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the listener.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of the listener.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number of the listener.
    #   @return [Integer]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action for the default rule.
    #   @return [Types::RuleAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateListenerResponse AWS API Documentation
    #
    class CreateListenerResponse < Struct.new(
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :service_arn,
      :service_id,
      :default_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the resource configuration. The name must be unique
    #   within the account. The valid characters are a-z, 0-9, and hyphens
    #   (-). You can't use a hyphen as the first or last character, or
    #   immediately after another hyphen.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource configuration. A resource configuration can be
    #   one of the following types:
    #
    #   * **SINGLE** - A single resource.
    #
    #   * **GROUP** - A group of resources. You must create a group resource
    #     configuration before you create a child resource configuration.
    #
    #   * **CHILD** - A single resource that is part of a group resource
    #     configuration.
    #
    #   * **ARN** - An Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] port_ranges
    #   (SINGLE, GROUP, CHILD) The TCP port ranges that a consumer can use
    #   to access a resource configuration (for example: 1-65535). You can
    #   separate port ranges using commas (for example: 1,2,22-30).
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocol
    #   (SINGLE, GROUP) The protocol accepted by the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_identifier
    #   (SINGLE, GROUP, ARN) The ID or ARN of the resource gateway used to
    #   connect to the resource configuration. For a child resource
    #   configuration, this value is inherited from the parent resource
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_group_identifier
    #   (CHILD) The ID or ARN of the parent resource configuration of type
    #   `GROUP`. This is used to associate a child resource configuration
    #   with a group resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_definition
    #   Identifies the resource configuration in one of the following ways:
    #
    #   * **Amazon Resource Name (ARN)** - Supported resource-types that are
    #     provisioned by Amazon Web Services services, such as RDS
    #     databases, can be identified by their ARN.
    #
    #   * **Domain name** - Any domain name that is publicly resolvable.
    #
    #   * **IP address** - For IPv4 and IPv6, only IP addresses in the VPC
    #     are supported.
    #   @return [Types::ResourceConfigurationDefinition]
    #
    # @!attribute [rw] allow_association_to_shareable_service_network
    #   (SINGLE, GROUP, ARN) Specifies whether the resource configuration
    #   can be associated with a sharable service network. The default is
    #   false.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_domain_name
    #   A custom domain name for your resource configuration. Additionally,
    #   provide a DomainVerificationID to prove your ownership of a domain.
    #   @return [String]
    #
    # @!attribute [rw] group_domain
    #   (GROUP) The group domain for a group resource configuration. Any
    #   domains that you create for the child resource are subdomains of the
    #   group domain. Child resources inherit the verification status of the
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_verification_identifier
    #   The domain verification ID of your verified custom domain name. If
    #   you don't provide an ID, you must configure the DNS settings
    #   yourself.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateResourceConfigurationRequest AWS API Documentation
    #
    class CreateResourceConfigurationRequest < Struct.new(
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The ID of the resource gateway associated with the resource
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_group_id
    #   The ID of the parent resource configuration of type `GROUP`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource configuration. A resource configuration can be
    #   one of the following types:
    #
    #   * **SINGLE** - A single resource.
    #
    #   * **GROUP** - A group of resources. You must create a group resource
    #     configuration before you create a child resource configuration.
    #
    #   * **CHILD** - A single resource that is part of a group resource
    #     configuration.
    #
    #   * **ARN** - An Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] port_ranges
    #   The port range.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocol
    #   The protocol.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_definition
    #   Identifies the resource configuration in one of the following ways:
    #
    #   * **Amazon Resource Name (ARN)** - Supported resource-types that are
    #     provisioned by Amazon Web Services services, such as RDS
    #     databases, can be identified by their ARN.
    #
    #   * **Domain name** - Any domain name that is publicly resolvable.
    #
    #   * **IP address** - For IPv4 and IPv6, only IP addresses in the VPC
    #     are supported.
    #   @return [Types::ResourceConfigurationDefinition]
    #
    # @!attribute [rw] allow_association_to_shareable_service_network
    #   Specifies whether the resource configuration can be associated with
    #   a sharable service network.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The date and time that the resource configuration was created, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason that the request failed.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name for your resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] domain_verification_id
    #   The domain name verification ID.
    #   @return [String]
    #
    # @!attribute [rw] group_domain
    #   (GROUP) The group domain for a group resource configuration. Any
    #   domains that you create for the child resource are subdomains of the
    #   group domain. Child resources inherit the verification status of the
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_verification_arn
    #   The verification ID ARN
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateResourceConfigurationResponse AWS API Documentation
    #
    class CreateResourceConfigurationResponse < Struct.new(
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
      :domain_verification_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] vpc_identifier
    #   The ID of the VPC for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the VPC subnets in which to create the resource gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups to apply to the resource gateway. The
    #   security groups must be in the same VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   A resource gateway can have IPv4, IPv6 or dualstack addresses. The
    #   IP address type of a resource gateway must be compatible with the
    #   subnets of the resource gateway and the IP address type of the
    #   resource, as described here:
    #
    #   * **IPv4**Assign IPv4 addresses to your resource gateway network
    #     interfaces. This option is supported only if all selected subnets
    #     have IPv4 address ranges, and the resource also has an IPv4
    #     address.
    #
    #   * **IPv6**Assign IPv6 addresses to your resource gateway network
    #     interfaces. This option is supported only if all selected subnets
    #     are IPv6 only subnets, and the resource also has an IPv6 address.
    #
    #   * **Dualstack**Assign both IPv4 and IPv6 addresses to your resource
    #     gateway network interfaces. This option is supported only if all
    #     selected subnets have both IPv4 and IPv6 address ranges, and the
    #     resource either has an IPv4 or IPv6 address.
    #
    #   The IP address type of the resource gateway is independent of the IP
    #   address type of the client or the VPC endpoint through which the
    #   resource is accessed.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses_per_eni
    #   The number of IPv4 addresses in each ENI for the resource gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags for the resource gateway.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateResourceGatewayRequest AWS API Documentation
    #
    class CreateResourceGatewayRequest < Struct.new(
      :client_token,
      :name,
      :vpc_identifier,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] vpc_identifier
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the resource gateway subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups for the resource gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP address for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses_per_eni
    #   The number of IPv4 addresses in each ENI for the resource gateway.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateResourceGatewayResponse AWS API Documentation
    #
    class CreateResourceGatewayResponse < Struct.new(
      :name,
      :id,
      :arn,
      :status,
      :vpc_identifier,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] listener_identifier
    #   The ID or ARN of the listener.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule. The name must be unique within the listener.
    #   The valid characters are a-z, 0-9, and hyphens (-). You can't use a
    #   hyphen as the first or last character, or immediately after another
    #   hyphen.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The rule match.
    #   @return [Types::RuleMatch]
    #
    # @!attribute [rw] priority
    #   The priority assigned to the rule. Each rule for a specific listener
    #   must have a unique priority. The lower the priority number the
    #   higher the priority.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   The action for the default rule.
    #   @return [Types::RuleAction]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the rule.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateRuleRequest AWS API Documentation
    #
    class CreateRuleRequest < Struct.new(
      :service_identifier,
      :listener_identifier,
      :name,
      :match,
      :priority,
      :action,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The rule match. The `RuleMatch` must be an `HttpMatch`. This means
    #   that the rule should be an exact match on HTTP constraints which are
    #   made up of the HTTP method, path, and header.
    #   @return [Types::RuleMatch]
    #
    # @!attribute [rw] priority
    #   The priority assigned to the rule. The lower the priority number the
    #   higher the priority.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   The rule action.
    #   @return [Types::RuleAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateRuleResponse AWS API Documentation
    #
    class CreateRuleResponse < Struct.new(
      :arn,
      :id,
      :name,
      :match,
      :priority,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service network. The name must be unique to the
    #   account. The valid characters are a-z, 0-9, and hyphens (-). You
    #   can't use a hyphen as the first or last character, or immediately
    #   after another hyphen.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #
    #   * `NONE`: The resource does not use an IAM policy. This is the
    #     default.
    #
    #   * `AWS_IAM`: The resource uses an IAM policy. When this type is
    #     used, auth is enabled and an auth policy is required.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the service network.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] sharing_config
    #   Specify if the service network should be enabled for sharing.
    #   @return [Types::SharingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkRequest AWS API Documentation
    #
    class CreateServiceNetworkRequest < Struct.new(
      :client_token,
      :name,
      :auth_type,
      :tags,
      :sharing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_identifier
    #   The ID of the resource configuration to associate with the service
    #   network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_identifier
    #   The ID of the service network to associate with the resource
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_enabled
    #   Indicates if private DNS is enabled for the service network resource
    #   association.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A key-value pair to associate with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkResourceAssociationRequest AWS API Documentation
    #
    class CreateServiceNetworkResourceAssociationRequest < Struct.new(
      :client_token,
      :resource_configuration_identifier,
      :service_network_identifier,
      :private_dns_enabled,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The ID of the account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_enabled
    #   Indicates if private DNS is is enabled for the service network
    #   resource association.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkResourceAssociationResponse AWS API Documentation
    #
    class CreateServiceNetworkResourceAssociationResponse < Struct.new(
      :id,
      :arn,
      :status,
      :created_by,
      :private_dns_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the service network.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service network.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service network.
    #   @return [String]
    #
    # @!attribute [rw] sharing_config
    #   Specifies if the service network is enabled for sharing.
    #   @return [Types::SharingConfig]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkResponse AWS API Documentation
    #
    class CreateServiceNetworkResponse < Struct.new(
      :id,
      :name,
      :arn,
      :sharing_config,
      :auth_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_network_identifier
    #   The ID or ARN of the service network. You must use an ARN if the
    #   resources are in different accounts.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the association.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkServiceAssociationRequest AWS API Documentation
    #
    class CreateServiceNetworkServiceAssociationRequest < Struct.new(
      :client_token,
      :service_identifier,
      :service_network_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The association status.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name of the service.
    #   @return [String]
    #
    # @!attribute [rw] dns_entry
    #   The DNS name of the service.
    #   @return [Types::DnsEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkServiceAssociationResponse AWS API Documentation
    #
    class CreateServiceNetworkServiceAssociationResponse < Struct.new(
      :id,
      :status,
      :arn,
      :created_by,
      :custom_domain_name,
      :dns_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] service_network_identifier
    #   The ID or ARN of the service network. You must use an ARN if the
    #   resources are in different accounts.
    #   @return [String]
    #
    # @!attribute [rw] vpc_identifier
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_enabled
    #   Indicates if private DNS is enabled for the VPC association.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups. Security groups aren't added by
    #   default. You can add a security group to apply network level
    #   controls to control which resources in a VPC are allowed to access
    #   the service network and its services. For more information, see
    #   [Control traffic to resources using security groups][1] in the
    #   *Amazon VPC User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags for the association.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dns_options
    #   DNS options for the service network VPC association.
    #   @return [Types::DnsOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkVpcAssociationRequest AWS API Documentation
    #
    class CreateServiceNetworkVpcAssociationRequest < Struct.new(
      :client_token,
      :service_network_identifier,
      :vpc_identifier,
      :private_dns_enabled,
      :security_group_ids,
      :tags,
      :dns_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The association status.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] private_dns_enabled
    #   Indicates if private DNS is enabled for the VPC association.
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_options
    #   The DNS configuration options.
    #   @return [Types::DnsOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkVpcAssociationResponse AWS API Documentation
    #
    class CreateServiceNetworkVpcAssociationResponse < Struct.new(
      :id,
      :status,
      :arn,
      :created_by,
      :security_group_ids,
      :private_dns_enabled,
      :dns_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service. The name must be unique within the account.
    #   The valid characters are a-z, 0-9, and hyphens (-). You can't use a
    #   hyphen as the first or last character, or immediately after another
    #   hyphen.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name of the service.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #
    #   * `NONE`: The resource does not use an IAM policy. This is the
    #     default.
    #
    #   * `AWS_IAM`: The resource uses an IAM policy. When this type is
    #     used, auth is enabled and an auth policy is required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :client_token,
      :name,
      :tags,
      :custom_domain_name,
      :certificate_arn,
      :auth_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name of the service.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status. If the status is `CREATE_FAILED`, you must delete and
    #   recreate the service.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #   @return [String]
    #
    # @!attribute [rw] dns_entry
    #   The public DNS name of the service.
    #   @return [Types::DnsEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceResponse AWS API Documentation
    #
    class CreateServiceResponse < Struct.new(
      :id,
      :arn,
      :name,
      :custom_domain_name,
      :certificate_arn,
      :status,
      :auth_type,
      :dns_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the target group. The name must be unique within the
    #   account. The valid characters are a-z, 0-9, and hyphens (-). You
    #   can't use a hyphen as the first or last character, or immediately
    #   after another hyphen.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of target group.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The target group configuration.
    #   @return [Types::TargetGroupConfig]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the target group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateTargetGroupRequest AWS API Documentation
    #
    class CreateTargetGroupRequest < Struct.new(
      :name,
      :type,
      :config,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the target group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the target group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of target group.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The target group configuration.
    #   @return [Types::TargetGroupConfig]
    #
    # @!attribute [rw] status
    #   The status. You can retry the operation if the status is
    #   `CREATE_FAILED`. However, if you retry it while the status is
    #   `CREATE_IN_PROGRESS`, there is no change in the status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateTargetGroupResponse AWS API Documentation
    #
    class CreateTargetGroupResponse < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :config,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_log_subscription_identifier
    #   The ID or ARN of the access log subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteAccessLogSubscriptionRequest AWS API Documentation
    #
    class DeleteAccessLogSubscriptionRequest < Struct.new(
      :access_log_subscription_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteAccessLogSubscriptionResponse AWS API Documentation
    #
    class DeleteAccessLogSubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_identifier
    #   The ID or ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteAuthPolicyRequest AWS API Documentation
    #
    class DeleteAuthPolicyRequest < Struct.new(
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteAuthPolicyResponse AWS API Documentation
    #
    class DeleteAuthPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_verification_identifier
    #   The ID of the domain verification to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteDomainVerificationRequest AWS API Documentation
    #
    class DeleteDomainVerificationRequest < Struct.new(
      :domain_verification_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteDomainVerificationResponse AWS API Documentation
    #
    class DeleteDomainVerificationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] listener_identifier
    #   The ID or ARN of the listener.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteListenerRequest AWS API Documentation
    #
    class DeleteListenerRequest < Struct.new(
      :service_identifier,
      :listener_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteListenerResponse AWS API Documentation
    #
    class DeleteListenerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_configuration_identifier
    #   The ID or ARN of the resource configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteResourceConfigurationRequest AWS API Documentation
    #
    class DeleteResourceConfigurationRequest < Struct.new(
      :resource_configuration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteResourceConfigurationResponse AWS API Documentation
    #
    class DeleteResourceConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_endpoint_association_identifier
    #   The ID or ARN of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteResourceEndpointAssociationRequest AWS API Documentation
    #
    class DeleteResourceEndpointAssociationRequest < Struct.new(
      :resource_endpoint_association_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The ID of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_arn
    #   The Amazon Resource Name (ARN) of the resource configuration
    #   associated with the VPC endpoint of type resource.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the resource VPC endpoint that is associated with the
    #   resource configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteResourceEndpointAssociationResponse AWS API Documentation
    #
    class DeleteResourceEndpointAssociationResponse < Struct.new(
      :id,
      :arn,
      :resource_configuration_id,
      :resource_configuration_arn,
      :vpc_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_gateway_identifier
    #   The ID or ARN of the resource gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteResourceGatewayRequest AWS API Documentation
    #
    class DeleteResourceGatewayRequest < Struct.new(
      :resource_gateway_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resource gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteResourceGatewayResponse AWS API Documentation
    #
    class DeleteResourceGatewayResponse < Struct.new(
      :id,
      :arn,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] listener_identifier
    #   The ID or ARN of the listener.
    #   @return [String]
    #
    # @!attribute [rw] rule_identifier
    #   The ID or ARN of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :service_identifier,
      :listener_identifier,
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteRuleResponse AWS API Documentation
    #
    class DeleteRuleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_network_identifier
    #   The ID or ARN of the service network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkRequest AWS API Documentation
    #
    class DeleteServiceNetworkRequest < Struct.new(
      :service_network_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_resource_association_identifier
    #   The ID of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkResourceAssociationRequest AWS API Documentation
    #
    class DeleteServiceNetworkResourceAssociationRequest < Struct.new(
      :service_network_resource_association_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkResourceAssociationResponse AWS API Documentation
    #
    class DeleteServiceNetworkResourceAssociationResponse < Struct.new(
      :id,
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkResponse AWS API Documentation
    #
    class DeleteServiceNetworkResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_network_service_association_identifier
    #   The ID or ARN of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkServiceAssociationRequest AWS API Documentation
    #
    class DeleteServiceNetworkServiceAssociationRequest < Struct.new(
      :service_network_service_association_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status. You can retry the operation if the status is
    #   `DELETE_FAILED`. However, if you retry it when the status is
    #   `DELETE_IN_PROGRESS`, there is no change in the status.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkServiceAssociationResponse AWS API Documentation
    #
    class DeleteServiceNetworkServiceAssociationResponse < Struct.new(
      :id,
      :status,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_vpc_association_identifier
    #   The ID or ARN of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkVpcAssociationRequest AWS API Documentation
    #
    class DeleteServiceNetworkVpcAssociationRequest < Struct.new(
      :service_network_vpc_association_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status. You can retry the operation if the status is
    #   `DELETE_FAILED`. However, if you retry it while the status is
    #   `DELETE_IN_PROGRESS`, there is no change in the status.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkVpcAssociationResponse AWS API Documentation
    #
    class DeleteServiceNetworkVpcAssociationResponse < Struct.new(
      :id,
      :status,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceRequest AWS API Documentation
    #
    class DeleteServiceRequest < Struct.new(
      :service_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status. You can retry the operation if the status is
    #   `DELETE_FAILED`. However, if you retry it while the status is
    #   `DELETE_IN_PROGRESS`, the status doesn't change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceResponse AWS API Documentation
    #
    class DeleteServiceResponse < Struct.new(
      :id,
      :arn,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_group_identifier
    #   The ID or ARN of the target group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteTargetGroupRequest AWS API Documentation
    #
    class DeleteTargetGroupRequest < Struct.new(
      :target_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the target group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status. You can retry the operation if the status is
    #   `DELETE_FAILED`. However, if you retry it while the status is
    #   `DELETE_IN_PROGRESS`, the status doesn't change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteTargetGroupResponse AWS API Documentation
    #
    class DeleteTargetGroupResponse < Struct.new(
      :id,
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_group_identifier
    #   The ID or ARN of the target group.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets to deregister.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeregisterTargetsRequest AWS API Documentation
    #
    class DeregisterTargetsRequest < Struct.new(
      :target_group_identifier,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful
    #   The targets that were successfully deregistered.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] unsuccessful
    #   The targets that the operation couldn't deregister.
    #   @return [Array<Types::TargetFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeregisterTargetsResponse AWS API Documentation
    #
    class DeregisterTargetsResponse < Struct.new(
      :successful,
      :unsuccessful)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the DNS information of a service.
    #
    # @!attribute [rw] domain_name
    #   The domain name of the service.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DnsEntry AWS API Documentation
    #
    class DnsEntry < Struct.new(
      :domain_name,
      :hosted_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DNS configuration options.
    #
    # @!attribute [rw] private_dns_preference
    #   The preference for which private domains have a private hosted zone
    #   created for and associated with the specified VPC. Only supported
    #   when private DNS is enabled and when the VPC endpoint type is
    #   ServiceNetwork or Resource.
    #
    #   * `ALL_DOMAINS` - VPC Lattice provisions private hosted zones for
    #     all custom domain names.
    #
    #   * `VERIFIED_DOMAINS_ONLY` - VPC Lattice provisions a private hosted
    #     zone only if custom domain name has been verified by the provider.
    #
    #   * `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` - VPC Lattice provisions
    #     private hosted zones for all verified custom domain names and
    #     other domain names that the resource consumer specifies. The
    #     resource consumer specifies the domain names in the
    #     privateDnsSpecifiedDomains parameter.
    #
    #   * `SPECIFIED_DOMAINS_ONLY` - VPC Lattice provisions a private hosted
    #     zone for domain names specified by the resource consumer. The
    #     resource consumer specifies the domain names in the
    #     privateDnsSpecifiedDomains parameter.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_specified_domains
    #   Indicates which of the private domains to create private hosted
    #   zones for and associate with the specified VPC. Only supported when
    #   private DNS is enabled and the private DNS preference is
    #   `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` or
    #   `SPECIFIED_DOMAINS_ONLY`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DnsOptions AWS API Documentation
    #
    class DnsOptions < Struct.new(
      :private_dns_preference,
      :private_dns_specified_domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DNS name of the resource.
    #
    # @!attribute [rw] domain_name
    #   The domain name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP address. Dualstack is currently not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DnsResource AWS API Documentation
    #
    class DnsResource < Struct.new(
      :domain_name,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a domain verification.
    #
    # @!attribute [rw] id
    #   The ID of the domain verification.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain verification.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name being verified.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the domain verification process.
    #   @return [String]
    #
    # @!attribute [rw] txt_method_config
    #   The TXT record configuration used for domain verification.
    #   @return [Types::TxtMethodConfig]
    #
    # @!attribute [rw] created_at
    #   The date and time that the domain verification was created, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_verified_time
    #   The date and time that the domain was last successfully verified, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags associated with the domain verification.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DomainVerificationSummary AWS API Documentation
    #
    class DomainVerificationSummary < Struct.new(
      :id,
      :arn,
      :domain_name,
      :status,
      :txt_method_config,
      :created_at,
      :last_verified_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action that returns a custom HTTP response.
    #
    # @!attribute [rw] status_code
    #   The HTTP response code. Only `404` and `500` status codes are
    #   supported.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/FixedResponseAction AWS API Documentation
    #
    class FixedResponseAction < Struct.new(
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a forward action. You can use forward actions to route
    # requests to one or more target groups.
    #
    # @!attribute [rw] target_groups
    #   The target groups. Traffic matching the rule is forwarded to the
    #   specified target groups. With forward actions, you can assign a
    #   weight that controls the prioritization and selection of each target
    #   group. This means that requests are distributed to individual target
    #   groups based on their weights. For example, if two target groups
    #   have the same weight, each target group receives half of the
    #   traffic.
    #
    #   The default value is 1. This means that if only one target group is
    #   provided, there is no need to set the weight; 100% of the traffic
    #   goes to that target group.
    #   @return [Array<Types::WeightedTargetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ForwardAction AWS API Documentation
    #
    class ForwardAction < Struct.new(
      :target_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_log_subscription_identifier
    #   The ID or ARN of the access log subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetAccessLogSubscriptionRequest AWS API Documentation
    #
    class GetAccessLogSubscriptionRequest < Struct.new(
      :access_log_subscription_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the access log subscription.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the access log subscription.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the service network or service.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the service network or service.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) of the access log destination.
    #   @return [String]
    #
    # @!attribute [rw] service_network_log_type
    #   The log type for the service network.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the access log subscription was created, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the access log subscription was last updated,
    #   in ISO-8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetAccessLogSubscriptionResponse AWS API Documentation
    #
    class GetAccessLogSubscriptionResponse < Struct.new(
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :destination_arn,
      :service_network_log_type,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The ID or ARN of the service network or service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetAuthPolicyRequest AWS API Documentation
    #
    class GetAuthPolicyRequest < Struct.new(
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The auth policy.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the auth policy. The auth policy is only active when
    #   the auth type is set to `AWS_IAM`. If you provide a policy, then
    #   authentication and authorization decisions are made based on this
    #   policy and the client's IAM policy. If the auth type is `NONE`,
    #   then any auth policy that you provide remains inactive. For more
    #   information, see [Create a service network][1] in the *Amazon VPC
    #   Lattice User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#create-service-network
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the auth policy was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the auth policy was last updated, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetAuthPolicyResponse AWS API Documentation
    #
    class GetAuthPolicyResponse < Struct.new(
      :policy,
      :state,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_verification_identifier
    #   The ID or ARN of the domain verification to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetDomainVerificationRequest AWS API Documentation
    #
    class GetDomainVerificationRequest < Struct.new(
      :domain_verification_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the domain verification.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain verification.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name being verified.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the domain verification process.
    #   @return [String]
    #
    # @!attribute [rw] txt_method_config
    #   The TXT record configuration used for domain verification.
    #   @return [Types::TxtMethodConfig]
    #
    # @!attribute [rw] created_at
    #   The date and time that the domain verification was created, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_verified_time
    #   The date and time that the domain was last successfully verified, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags associated with the domain verification.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetDomainVerificationResponse AWS API Documentation
    #
    class GetDomainVerificationResponse < Struct.new(
      :id,
      :arn,
      :domain_name,
      :status,
      :txt_method_config,
      :created_at,
      :last_verified_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] listener_identifier
    #   The ID or ARN of the listener.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetListenerRequest AWS API Documentation
    #
    class GetListenerRequest < Struct.new(
      :service_identifier,
      :listener_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the listener.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the listener.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The listener protocol.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The listener port.
    #   @return [Integer]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The actions for the default listener rule.
    #   @return [Types::RuleAction]
    #
    # @!attribute [rw] created_at
    #   The date and time that the listener was created, in ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the listener was last updated, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetListenerResponse AWS API Documentation
    #
    class GetListenerResponse < Struct.new(
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :service_arn,
      :service_id,
      :default_action,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_configuration_identifier
    #   The ID of the resource configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetResourceConfigurationRequest AWS API Documentation
    #
    class GetResourceConfigurationRequest < Struct.new(
      :resource_configuration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The ID of the resource gateway used to connect to the resource
    #   configuration in a given VPC. You can specify the resource gateway
    #   identifier only for resource configurations with type SINGLE, GROUP,
    #   or ARN.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_group_id
    #   The ID of the group resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource configuration.
    #
    #   * `SINGLE` - A single resource.
    #
    #   * `GROUP` - A group of resources.
    #
    #   * `CHILD` - A single resource that is part of a group resource
    #     configuration.
    #
    #   * `ARN` - An Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] allow_association_to_shareable_service_network
    #   Specifies whether the resource configuration is associated with a
    #   sharable service network.
    #   @return [Boolean]
    #
    # @!attribute [rw] port_ranges
    #   The TCP port ranges that a consumer can use to access a resource
    #   configuration. You can separate port ranges with a comma. Example:
    #   1-65535 or 1,2,22-30
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocol
    #   The TCP protocol accepted by the specified resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_definition
    #   The resource configuration.
    #   @return [Types::ResourceConfigurationDefinition]
    #
    # @!attribute [rw] created_at
    #   The date and time that the resource configuration was created, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] amazon_managed
    #   Indicates whether the resource configuration was created and is
    #   managed by Amazon.
    #   @return [Boolean]
    #
    # @!attribute [rw] failure_reason
    #   The reason the create-resource-configuration request failed.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The most recent date and time that the resource configuration was
    #   updated, in ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] domain_verification_id
    #   The domain verification ID.
    #   @return [String]
    #
    # @!attribute [rw] domain_verification_arn
    #   The ARN of the domain verification.
    #   @return [String]
    #
    # @!attribute [rw] domain_verification_status
    #   The domain verification status.
    #   @return [String]
    #
    # @!attribute [rw] group_domain
    #   (GROUP) The group domain for a group resource configuration. Any
    #   domains that you create for the child resource are subdomains of the
    #   group domain. Child resources inherit the verification status of the
    #   domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetResourceConfigurationResponse AWS API Documentation
    #
    class GetResourceConfigurationResponse < Struct.new(
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
      :group_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_gateway_identifier
    #   The ID of the resource gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetResourceGatewayRequest AWS API Documentation
    #
    class GetResourceGatewayRequest < Struct.new(
      :resource_gateway_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the VPC subnets for resource gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs associated with the resource gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP address for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses_per_eni
    #   The number of IPv4 addresses in each ENI for the resource gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The date and time that the resource gateway was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the resource gateway was last updated, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetResourceGatewayResponse AWS API Documentation
    #
    class GetResourceGatewayResponse < Struct.new(
      :name,
      :id,
      :arn,
      :status,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the service network or service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   An IAM policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] listener_identifier
    #   The ID or ARN of the listener.
    #   @return [String]
    #
    # @!attribute [rw] rule_identifier
    #   The ID or ARN of the listener rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetRuleRequest AWS API Documentation
    #
    class GetRuleRequest < Struct.new(
      :service_identifier,
      :listener_identifier,
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the listener.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the listener.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Indicates whether this is the default rule.
    #   @return [Boolean]
    #
    # @!attribute [rw] match
    #   The rule match.
    #   @return [Types::RuleMatch]
    #
    # @!attribute [rw] priority
    #   The priority level for the specified rule.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   The action for the default rule.
    #   @return [Types::RuleAction]
    #
    # @!attribute [rw] created_at
    #   The date and time that the listener rule was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the listener rule was last updated, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetRuleResponse AWS API Documentation
    #
    class GetRuleResponse < Struct.new(
      :arn,
      :id,
      :name,
      :is_default,
      :match,
      :priority,
      :action,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_identifier
    #   The ID or ARN of the service network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkRequest AWS API Documentation
    #
    class GetServiceNetworkRequest < Struct.new(
      :service_network_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_resource_association_identifier
    #   The ID of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkResourceAssociationRequest AWS API Documentation
    #
    class GetServiceNetworkResourceAssociationRequest < Struct.new(
      :service_network_resource_association_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the association was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] resource_configuration_id
    #   The ID of the resource configuration that is associated with the
    #   service network.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_name
    #   The name of the resource configuration that is associated with the
    #   service network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_id
    #   The ID of the service network that is associated with the resource
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] service_network_arn
    #   The Amazon Resource Name (ARN) of the service network that is
    #   associated with the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] service_network_name
    #   The name of the service network that is associated with the resource
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason the association request failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The most recent date and time that the association was updated, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] private_dns_entry
    #   The private DNS entry for the service.
    #   @return [Types::DnsEntry]
    #
    # @!attribute [rw] private_dns_enabled
    #   Indicates if private DNS is enabled in the service network resource
    #   association.
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_entry
    #   The DNS entry for the service.
    #   @return [Types::DnsEntry]
    #
    # @!attribute [rw] is_managed_association
    #   Indicates whether the association is managed by Amazon.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_verification_status
    #   The domain verification status in the service network resource
    #   association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkResourceAssociationResponse AWS API Documentation
    #
    class GetServiceNetworkResourceAssociationResponse < Struct.new(
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
      :domain_verification_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the service network.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service network.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the service network was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time of the last update, in ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service network.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #   @return [String]
    #
    # @!attribute [rw] sharing_config
    #   Specifies if the service network is enabled for sharing.
    #   @return [Types::SharingConfig]
    #
    # @!attribute [rw] number_of_associated_vp_cs
    #   The number of VPCs associated with the service network.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_associated_services
    #   The number of services associated with the service network.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkResponse AWS API Documentation
    #
    class GetServiceNetworkResponse < Struct.new(
      :id,
      :name,
      :created_at,
      :last_updated_at,
      :arn,
      :auth_type,
      :sharing_config,
      :number_of_associated_vp_cs,
      :number_of_associated_services)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_service_association_identifier
    #   The ID or ARN of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkServiceAssociationRequest AWS API Documentation
    #
    class GetServiceNetworkServiceAssociationRequest < Struct.new(
      :service_network_service_association_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the service network and service association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the association was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] service_id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_network_id
    #   The ID of the service network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_name
    #   The name of the service network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_arn
    #   The Amazon Resource Name (ARN) of the service network.
    #   @return [String]
    #
    # @!attribute [rw] dns_entry
    #   The DNS name of the service.
    #   @return [Types::DnsEntry]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name of the service.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   The failure message.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkServiceAssociationResponse AWS API Documentation
    #
    class GetServiceNetworkServiceAssociationResponse < Struct.new(
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
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_vpc_association_identifier
    #   The ID or ARN of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkVpcAssociationRequest AWS API Documentation
    #
    class GetServiceNetworkVpcAssociationRequest < Struct.new(
      :service_network_vpc_association_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the association was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] service_network_id
    #   The ID of the service network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_name
    #   The name of the service network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_arn
    #   The Amazon Resource Name (ARN) of the service network.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] private_dns_enabled
    #   Indicates if private DNS is enabled in the VPC association.
    #   @return [Boolean]
    #
    # @!attribute [rw] failure_message
    #   The failure message.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the association was last updated, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] dns_options
    #   DNS options for the service network VPC association.
    #   @return [Types::DnsOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkVpcAssociationResponse AWS API Documentation
    #
    class GetServiceNetworkVpcAssociationResponse < Struct.new(
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
      :dns_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceRequest AWS API Documentation
    #
    class GetServiceRequest < Struct.new(
      :service_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the service was created, in ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the service was last updated, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] dns_entry
    #   The DNS name of the service.
    #   @return [Types::DnsEntry]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name of the service.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   The failure message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceResponse AWS API Documentation
    #
    class GetServiceResponse < Struct.new(
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
      :failure_code,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_group_identifier
    #   The ID or ARN of the target group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetTargetGroupRequest AWS API Documentation
    #
    class GetTargetGroupRequest < Struct.new(
      :target_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the target group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the target group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The target group type.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The target group configuration.
    #   @return [Types::TargetGroupConfig]
    #
    # @!attribute [rw] created_at
    #   The date and time that the target group was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the target group was last updated, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] service_arns
    #   The Amazon Resource Names (ARNs) of the service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failure_message
    #   The failure message.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetTargetGroupResponse AWS API Documentation
    #
    class GetTargetGroupResponse < Struct.new(
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
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the constraints for a header match. Matches incoming
    # requests with rule based on request header value before applying rule
    # action.
    #
    # @!attribute [rw] name
    #   The name of the header.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The header match type.
    #   @return [Types::HeaderMatchType]
    #
    # @!attribute [rw] case_sensitive
    #   Indicates whether the match is case sensitive.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/HeaderMatch AWS API Documentation
    #
    class HeaderMatch < Struct.new(
      :name,
      :match,
      :case_sensitive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a header match type.
    #
    # @note HeaderMatchType is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HeaderMatchType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HeaderMatchType corresponding to the set member.
    #
    # @!attribute [rw] exact
    #   An exact type match.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   A prefix type match. Matches the value with the prefix.
    #   @return [String]
    #
    # @!attribute [rw] contains
    #   A contains type match.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/HeaderMatchType AWS API Documentation
    #
    class HeaderMatchType < Struct.new(
      :exact,
      :prefix,
      :contains,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Exact < HeaderMatchType; end
      class Prefix < HeaderMatchType; end
      class Contains < HeaderMatchType; end
      class Unknown < HeaderMatchType; end
    end

    # Describes the health check configuration of a target group. Health
    # check configurations aren't used for target groups of type `LAMBDA`
    # or `ALB`.
    #
    # @!attribute [rw] enabled
    #   Indicates whether health checking is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] protocol
    #   The protocol used when performing health checks on targets. The
    #   possible protocols are `HTTP` and `HTTPS`. The default is `HTTP`.
    #   @return [String]
    #
    # @!attribute [rw] protocol_version
    #   The protocol version used when performing health checks on targets.
    #   The possible protocol versions are `HTTP1` and `HTTP2`.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port used when performing health checks on targets. The default
    #   setting is the port that a target receives traffic on.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The destination for health checks on the targets. If the protocol
    #   version is `HTTP/1.1` or `HTTP/2`, specify a valid URI (for example,
    #   `/path?query`). The default path is `/`. Health checks are not
    #   supported if the protocol version is `gRPC`, however, you can choose
    #   `HTTP/1.1` or `HTTP/2` and specify a valid URI.
    #   @return [String]
    #
    # @!attribute [rw] health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target. The range is 5–300 seconds. The default is 30
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_timeout_seconds
    #   The amount of time, in seconds, to wait before reporting a target as
    #   unhealthy. The range is 1–120 seconds. The default is 5 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] healthy_threshold_count
    #   The number of consecutive successful health checks required before
    #   considering an unhealthy target healthy. The range is 2–10. The
    #   default is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold_count
    #   The number of consecutive failed health checks required before
    #   considering a target unhealthy. The range is 2–10. The default is 2.
    #   @return [Integer]
    #
    # @!attribute [rw] matcher
    #   The codes to use when checking for a successful response from a
    #   target.
    #   @return [Types::Matcher]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/HealthCheckConfig AWS API Documentation
    #
    class HealthCheckConfig < Struct.new(
      :enabled,
      :protocol,
      :protocol_version,
      :port,
      :path,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :matcher)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes criteria that can be applied to incoming requests.
    #
    # @!attribute [rw] method
    #   The HTTP method type.
    #   @return [String]
    #
    # @!attribute [rw] path_match
    #   The path match.
    #   @return [Types::PathMatch]
    #
    # @!attribute [rw] header_matches
    #   The header matches. Matches incoming requests with rule based on
    #   request header value before applying rule action.
    #   @return [Array<Types::HeaderMatch>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/HttpMatch AWS API Documentation
    #
    class HttpMatch < Struct.new(
      :method,
      :path_match,
      :header_matches)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an IP resource.
    #
    # @!attribute [rw] ip_address
    #   The IP address of the IP resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/IpResource AWS API Documentation
    #
    class IpResource < Struct.new(
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The ID or ARN of the service network or service.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListAccessLogSubscriptionsRequest AWS API Documentation
    #
    class ListAccessLogSubscriptionsRequest < Struct.new(
      :resource_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the access log subscriptions.
    #   @return [Array<Types::AccessLogSubscriptionSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListAccessLogSubscriptionsResponse AWS API Documentation
    #
    class ListAccessLogSubscriptionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListDomainVerificationsRequest AWS API Documentation
    #
    class ListDomainVerificationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the domain verifications.
    #   @return [Array<Types::DomainVerificationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListDomainVerificationsResponse AWS API Documentation
    #
    class ListDomainVerificationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListListenersRequest AWS API Documentation
    #
    class ListListenersRequest < Struct.new(
      :service_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the listeners.
    #   @return [Array<Types::ListenerSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListListenersResponse AWS API Documentation
    #
    class ListListenersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_gateway_identifier
    #   The ID of the resource gateway for the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_group_identifier
    #   The ID of the resource configuration of type `Group`.
    #   @return [String]
    #
    # @!attribute [rw] domain_verification_identifier
    #   The domain verification ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListResourceConfigurationsRequest AWS API Documentation
    #
    class ListResourceConfigurationsRequest < Struct.new(
      :resource_gateway_identifier,
      :resource_configuration_group_identifier,
      :domain_verification_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the resource configurations.
    #   @return [Array<Types::ResourceConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListResourceConfigurationsResponse AWS API Documentation
    #
    class ListResourceConfigurationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_configuration_identifier
    #   The ID for the resource configuration associated with the VPC
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] resource_endpoint_association_identifier
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the VPC endpoint in the association.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_owner
    #   The owner of the VPC endpoint in the association.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListResourceEndpointAssociationsRequest AWS API Documentation
    #
    class ListResourceEndpointAssociationsRequest < Struct.new(
      :resource_configuration_identifier,
      :resource_endpoint_association_identifier,
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the VPC endpoint associations.
    #   @return [Array<Types::ResourceEndpointAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListResourceEndpointAssociationsResponse AWS API Documentation
    #
    class ListResourceEndpointAssociationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListResourceGatewaysRequest AWS API Documentation
    #
    class ListResourceGatewaysRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the resource gateways.
    #   @return [Array<Types::ResourceGatewaySummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListResourceGatewaysResponse AWS API Documentation
    #
    class ListResourceGatewaysResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] listener_identifier
    #   The ID or ARN of the listener.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListRulesRequest AWS API Documentation
    #
    class ListRulesRequest < Struct.new(
      :service_identifier,
      :listener_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the rules.
    #   @return [Array<Types::RuleSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListRulesResponse AWS API Documentation
    #
    class ListRulesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_identifier
    #   The ID of the service network.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_identifier
    #   The ID of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] include_children
    #   Include service network resource associations of the child resource
    #   configuration with the grouped resource configuration.
    #
    #   The type is boolean and the default value is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkResourceAssociationsRequest AWS API Documentation
    #
    class ListServiceNetworkResourceAssociationsRequest < Struct.new(
      :service_network_identifier,
      :resource_configuration_identifier,
      :max_results,
      :next_token,
      :include_children)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the associations.
    #   @return [Array<Types::ServiceNetworkResourceAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkResourceAssociationsResponse AWS API Documentation
    #
    class ListServiceNetworkResourceAssociationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_identifier
    #   The ID or ARN of the service network.
    #   @return [String]
    #
    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkServiceAssociationsRequest AWS API Documentation
    #
    class ListServiceNetworkServiceAssociationsRequest < Struct.new(
      :service_network_identifier,
      :service_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the associations.
    #   @return [Array<Types::ServiceNetworkServiceAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkServiceAssociationsResponse AWS API Documentation
    #
    class ListServiceNetworkServiceAssociationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_identifier
    #   The ID or ARN of the service network.
    #   @return [String]
    #
    # @!attribute [rw] vpc_identifier
    #   The ID or ARN of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkVpcAssociationsRequest AWS API Documentation
    #
    class ListServiceNetworkVpcAssociationsRequest < Struct.new(
      :service_network_identifier,
      :vpc_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the associations.
    #   @return [Array<Types::ServiceNetworkVpcAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkVpcAssociationsResponse AWS API Documentation
    #
    class ListServiceNetworkVpcAssociationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_identifier
    #   The ID of the service network associated with the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkVpcEndpointAssociationsRequest AWS API Documentation
    #
    class ListServiceNetworkVpcEndpointAssociationsRequest < Struct.new(
      :service_network_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the association between the VPC endpoint and
    #   service network.
    #   @return [Array<Types::ServiceNetworkEndpointAssociation>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkVpcEndpointAssociationsResponse AWS API Documentation
    #
    class ListServiceNetworkVpcEndpointAssociationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworksRequest AWS API Documentation
    #
    class ListServiceNetworksRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the service networks.
    #   @return [Array<Types::ServiceNetworkSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworksResponse AWS API Documentation
    #
    class ListServiceNetworksResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServicesRequest AWS API Documentation
    #
    class ListServicesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the services.
    #   @return [Array<Types::ServiceSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServicesResponse AWS API Documentation
    #
    class ListServicesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Information about the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] vpc_identifier
    #   The ID or ARN of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] target_group_type
    #   The target group type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListTargetGroupsRequest AWS API Documentation
    #
    class ListTargetGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      :vpc_identifier,
      :target_group_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the target groups.
    #   @return [Array<Types::TargetGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListTargetGroupsResponse AWS API Documentation
    #
    class ListTargetGroupsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_group_identifier
    #   The ID or ARN of the target group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListTargetsRequest AWS API Documentation
    #
    class ListTargetsRequest < Struct.new(
      :target_group_identifier,
      :max_results,
      :next_token,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the targets.
    #   @return [Array<Types::TargetSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListTargetsResponse AWS API Documentation
    #
    class ListTargetsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a listener.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the listener.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the listener.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The listener protocol.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The listener port.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The date and time that the listener was created, in ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the listener was last updated, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListenerSummary AWS API Documentation
    #
    class ListenerSummary < Struct.new(
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the codes to use when checking for a successful response
    # from a target for health checks.
    #
    # @note Matcher is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Matcher is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Matcher corresponding to the set member.
    #
    # @!attribute [rw] http_code
    #   The HTTP code to use when checking for a successful response from a
    #   target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/Matcher AWS API Documentation
    #
    class Matcher < Struct.new(
      :http_code,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class HttpCode < Matcher; end
      class Unknown < Matcher; end
    end

    # Describes the conditions that can be applied when matching a path for
    # incoming requests.
    #
    # @!attribute [rw] match
    #   The type of path match.
    #   @return [Types::PathMatchType]
    #
    # @!attribute [rw] case_sensitive
    #   Indicates whether the match is case sensitive.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/PathMatch AWS API Documentation
    #
    class PathMatch < Struct.new(
      :match,
      :case_sensitive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a path match type. Each rule can include only one of the
    # following types of paths.
    #
    # @note PathMatchType is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PathMatchType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PathMatchType corresponding to the set member.
    #
    # @!attribute [rw] exact
    #   An exact match of the path.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   A prefix match of the path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/PathMatchType AWS API Documentation
    #
    class PathMatchType < Struct.new(
      :exact,
      :prefix,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Exact < PathMatchType; end
      class Prefix < PathMatchType; end
      class Unknown < PathMatchType; end
    end

    # @!attribute [rw] resource_identifier
    #   The ID or ARN of the service network or service for which the policy
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The auth policy. The policy string in JSON must not contain newlines
    #   or blank lines.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/PutAuthPolicyRequest AWS API Documentation
    #
    class PutAuthPolicyRequest < Struct.new(
      :resource_identifier,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The auth policy. The policy string in JSON must not contain newlines
    #   or blank lines.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the auth policy. The auth policy is only active when
    #   the auth type is set to `AWS_IAM`. If you provide a policy, then
    #   authentication and authorization decisions are made based on this
    #   policy and the client's IAM policy. If the Auth type is `NONE`,
    #   then, any auth policy that you provide remains inactive. For more
    #   information, see [Create a service network][1] in the *Amazon VPC
    #   Lattice User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#create-service-network
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/PutAuthPolicyResponse AWS API Documentation
    #
    class PutAuthPolicyResponse < Struct.new(
      :policy,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ID or ARN of the service network or service for which the policy
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   An IAM policy. The policy string in JSON must not contain newlines
    #   or blank lines.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] target_group_identifier
    #   The ID or ARN of the target group.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/RegisterTargetsRequest AWS API Documentation
    #
    class RegisterTargetsRequest < Struct.new(
      :target_group_identifier,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful
    #   The targets that were successfully registered.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] unsuccessful
    #   The targets that were not registered.
    #   @return [Array<Types::TargetFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/RegisterTargetsResponse AWS API Documentation
    #
    class RegisterTargetsResponse < Struct.new(
      :successful,
      :unsuccessful)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource configuration.
    #
    # @note ResourceConfigurationDefinition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ResourceConfigurationDefinition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceConfigurationDefinition corresponding to the set member.
    #
    # @!attribute [rw] dns_resource
    #   The DNS name of the resource.
    #   @return [Types::DnsResource]
    #
    # @!attribute [rw] ip_resource
    #   The IP resource.
    #   @return [Types::IpResource]
    #
    # @!attribute [rw] arn_resource
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [Types::ArnResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ResourceConfigurationDefinition AWS API Documentation
    #
    class ResourceConfigurationDefinition < Struct.new(
      :dns_resource,
      :ip_resource,
      :arn_resource,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DnsResource < ResourceConfigurationDefinition; end
      class IpResource < ResourceConfigurationDefinition; end
      class ArnResource < ResourceConfigurationDefinition; end
      class Unknown < ResourceConfigurationDefinition; end
    end

    # Summary information about a resource configuration.
    #
    # @!attribute [rw] id
    #   The ID of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The ID of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_group_id
    #   The ID of the group resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource configuration.
    #
    #   * `SINGLE` - A single resource.
    #
    #   * `GROUP` - A group of resources. You must create a group resource
    #     configuration before you create a child resource configuration.
    #
    #   * `CHILD` - A single resource that is part of a group resource
    #     configuration.
    #
    #   * `ARN` - An Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] amazon_managed
    #   Indicates whether the resource configuration was created and is
    #   managed by Amazon.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The date and time that the resource configuration was created, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The most recent date and time that the resource configuration was
    #   updated, in ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name.
    #   @return [String]
    #
    # @!attribute [rw] domain_verification_id
    #   The domain verification ID.
    #   @return [String]
    #
    # @!attribute [rw] group_domain
    #   (GROUP) The group domain for a group resource configuration. Any
    #   domains that you create for the child resource are subdomains of the
    #   group domain. Child resources inherit the verification status of the
    #   domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ResourceConfigurationSummary AWS API Documentation
    #
    class ResourceConfigurationSummary < Struct.new(
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
      :group_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a VPC endpoint association.
    #
    # @!attribute [rw] id
    #   The ID of the VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The ID of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_arn
    #   The Amazon Resource Name (ARN) of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_name
    #   The name of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_owner
    #   The owner of the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the VPC endpoint association was created, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ResourceEndpointAssociationSummary AWS API Documentation
    #
    class ResourceEndpointAssociationSummary < Struct.new(
      :id,
      :arn,
      :resource_configuration_id,
      :resource_configuration_arn,
      :resource_configuration_name,
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :created_by,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a resource gateway.
    #
    # @!attribute [rw] name
    #   The name of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The name of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] vpc_identifier
    #   The ID of the VPC for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the VPC subnets for the resource gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups applied to the resource gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP address used by the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses_per_eni
    #   The number of IPv4 addresses in each ENI for the resource gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The date and time that the VPC endpoint association was created, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The most recent date and time that the resource gateway was updated,
    #   in ISO-8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ResourceGatewaySummary AWS API Documentation
    #
    class ResourceGatewaySummary < Struct.new(
      :name,
      :id,
      :arn,
      :status,
      :vpc_identifier,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the action for a rule.
    #
    # @note RuleAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleAction is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleAction corresponding to the set member.
    #
    # @!attribute [rw] forward
    #   The forward action. Traffic that matches the rule is forwarded to
    #   the specified target groups.
    #   @return [Types::ForwardAction]
    #
    # @!attribute [rw] fixed_response
    #   The fixed response action. The rule returns a custom HTTP response.
    #   @return [Types::FixedResponseAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/RuleAction AWS API Documentation
    #
    class RuleAction < Struct.new(
      :forward,
      :fixed_response,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Forward < RuleAction; end
      class FixedResponse < RuleAction; end
      class Unknown < RuleAction; end
    end

    # Describes a rule match.
    #
    # @note RuleMatch is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleMatch is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleMatch corresponding to the set member.
    #
    # @!attribute [rw] http_match
    #   The HTTP criteria that a rule must match.
    #   @return [Types::HttpMatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/RuleMatch AWS API Documentation
    #
    class RuleMatch < Struct.new(
      :http_match,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class HttpMatch < RuleMatch; end
      class Unknown < RuleMatch; end
    end

    # Summary information about a listener rule.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Indicates whether this is the default listener rule.
    #   @return [Boolean]
    #
    # @!attribute [rw] priority
    #   The priority of the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The date and time that the listener rule was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the listener rule was last updated, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/RuleSummary AWS API Documentation
    #
    class RuleSummary < Struct.new(
      :arn,
      :id,
      :name,
      :is_default,
      :priority,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a rule update.
    #
    # @!attribute [rw] rule_identifier
    #   The ID or ARN of the rule.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The rule match.
    #   @return [Types::RuleMatch]
    #
    # @!attribute [rw] priority
    #   The rule priority. A listener can't have multiple rules with the
    #   same priority.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   The rule action.
    #   @return [Types::RuleAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/RuleUpdate AWS API Documentation
    #
    class RuleUpdate < Struct.new(
      :rule_identifier,
      :match,
      :priority,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a rule update that failed.
    #
    # @!attribute [rw] rule_identifier
    #   The ID or ARN of the rule.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   The failure message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/RuleUpdateFailure AWS API Documentation
    #
    class RuleUpdateFailure < Struct.new(
      :rule_identifier,
      :failure_code,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a successful rule update.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the listener.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the listener.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Indicates whether this is the default rule.
    #   @return [Boolean]
    #
    # @!attribute [rw] match
    #   The rule match.
    #   @return [Types::RuleMatch]
    #
    # @!attribute [rw] priority
    #   The rule priority.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   The action for the rule.
    #   @return [Types::RuleAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/RuleUpdateSuccess AWS API Documentation
    #
    class RuleUpdateSuccess < Struct.new(
      :arn,
      :id,
      :name,
      :is_default,
      :match,
      :priority,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the association between a service network and a VPC
    # endpoint.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the VPC endpoint associated with the service network.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the association.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_owner_id
    #   The owner of the VPC endpoint associated with the service network.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the association.
    #   @return [String]
    #
    # @!attribute [rw] service_network_arn
    #   The Amazon Resource Name (ARN) of the service network.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the association was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ServiceNetworkEndpointAssociation AWS API Documentation
    #
    class ServiceNetworkEndpointAssociation < Struct.new(
      :vpc_endpoint_id,
      :vpc_id,
      :vpc_endpoint_owner_id,
      :id,
      :state,
      :service_network_arn,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an association between a service network and
    # a resource configuration.
    #
    # @!attribute [rw] id
    #   The ID of the association between the service network and resource
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service network’s association with the resource
    #   configuration. If the deletion fails, try to delete again.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the association was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] resource_configuration_id
    #   The ID of the resource configuration associated with the service
    #   network.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_name
    #   The name of the resource configuration associated with the service
    #   network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_id
    #   The ID of the service network associated with the resource
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] service_network_arn
    #   The Amazon Resource Name (ARN) of the service network associated
    #   with the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] service_network_name
    #   The name of the service network associated with the resource
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] dns_entry
    #   The DNS entry for the service.
    #   @return [Types::DnsEntry]
    #
    # @!attribute [rw] private_dns_entry
    #   The private DNS entry for the service.
    #   @return [Types::DnsEntry]
    #
    # @!attribute [rw] is_managed_association
    #   Specifies whether the association is managed by Amazon.
    #   @return [Boolean]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_enabled
    #   Indicates if private DNS is enabled for the service network resource
    #   association.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ServiceNetworkResourceAssociationSummary AWS API Documentation
    #
    class ServiceNetworkResourceAssociationSummary < Struct.new(
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
      :private_dns_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an association between a service network and
    # a service.
    #
    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service network’s association with the service. If
    #   the deletion fails, try to delete again.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the association was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] service_id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_network_id
    #   The ID of the service network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_name
    #   The name of the service network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_arn
    #   The Amazon Resource Name (ARN) of the service network.
    #   @return [String]
    #
    # @!attribute [rw] dns_entry
    #   The DNS information.
    #   @return [Types::DnsEntry]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name of the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ServiceNetworkServiceAssociationSummary AWS API Documentation
    #
    class ServiceNetworkServiceAssociationSummary < Struct.new(
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
      :custom_domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a service network.
    #
    # @!attribute [rw] id
    #   The ID of the service network.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service network.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service network.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the service network was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the service network was last updated, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] number_of_associated_vp_cs
    #   The number of VPCs associated with the service network.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_associated_services
    #   The number of services associated with the service network.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_associated_resource_configurations
    #   The number of resource configurations associated with a service
    #   network.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ServiceNetworkSummary AWS API Documentation
    #
    class ServiceNetworkSummary < Struct.new(
      :id,
      :name,
      :arn,
      :created_at,
      :last_updated_at,
      :number_of_associated_vp_cs,
      :number_of_associated_services,
      :number_of_associated_resource_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an association between a service network and
    # a VPC.
    #
    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the association was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] service_network_id
    #   The ID of the service network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_name
    #   The name of the service network.
    #   @return [String]
    #
    # @!attribute [rw] service_network_arn
    #   The Amazon Resource Name (ARN) of the service network.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_enabled
    #   Indicates if private DNS is enabled for the service network VPC
    #   association.
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_options
    #   The DNS options for the service network VPC association.
    #   @return [Types::DnsOptions]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the association was last updated, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ServiceNetworkVpcAssociationSummary AWS API Documentation
    #
    class ServiceNetworkVpcAssociationSummary < Struct.new(
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
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ServiceQuotaExceededException AWS API Documentation
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

    # Summary information about a service.
    #
    # @!attribute [rw] id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the service was created, in ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the service was last updated, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] dns_entry
    #   The DNS information.
    #   @return [Types::DnsEntry]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name of the service.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ServiceSummary AWS API Documentation
    #
    class ServiceSummary < Struct.new(
      :id,
      :name,
      :arn,
      :created_at,
      :last_updated_at,
      :dns_entry,
      :custom_domain_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies if the service network should be enabled for sharing.
    #
    # @!attribute [rw] enabled
    #   Specifies if the service network is enabled for sharing.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/SharingConfig AWS API Documentation
    #
    class SharingConfig < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name to verify ownership for.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the domain verification.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/StartDomainVerificationRequest AWS API Documentation
    #
    class StartDomainVerificationRequest < Struct.new(
      :client_token,
      :domain_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the domain verification.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain verification.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name being verified.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the domain verification process.
    #   @return [String]
    #
    # @!attribute [rw] txt_method_config
    #   The TXT record configuration used for domain verification.
    #   @return [Types::TxtMethodConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/StartDomainVerificationResponse AWS API Documentation
    #
    class StartDomainVerificationResponse < Struct.new(
      :id,
      :arn,
      :domain_name,
      :status,
      :txt_method_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Describes a target.
    #
    # @!attribute [rw] id
    #   The ID of the target. If the target group type is `INSTANCE`, this
    #   is an instance ID. If the target group type is `IP`, this is an IP
    #   address. If the target group type is `LAMBDA`, this is the ARN of a
    #   Lambda function. If the target group type is `ALB`, this is the ARN
    #   of an Application Load Balancer.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the target is listening. For HTTP, the default is
    #   80. For HTTPS, the default is 443.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/Target AWS API Documentation
    #
    class Target < Struct.new(
      :id,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a target failure.
    #
    # @!attribute [rw] id
    #   The ID of the target. If the target group type is `INSTANCE`, this
    #   is an instance ID. If the target group type is `IP`, this is an IP
    #   address. If the target group type is `LAMBDA`, this is the ARN of a
    #   Lambda function. If the target group type is `ALB`, this is the ARN
    #   of an Application Load Balancer.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the target is listening. This parameter doesn't
    #   apply if the target is a Lambda function.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   The failure message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/TargetFailure AWS API Documentation
    #
    class TargetFailure < Struct.new(
      :id,
      :port,
      :failure_code,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a target group.
    #
    # For more information, see [Target groups][1] in the *Amazon VPC
    # Lattice User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html
    #
    # @!attribute [rw] port
    #   The port on which the targets are listening. For HTTP, the default
    #   is 80. For HTTPS, the default is 443. Not supported if the target
    #   group type is `LAMBDA`.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol to use for routing traffic to the targets. The default
    #   is the protocol of the target group. Not supported if the target
    #   group type is `LAMBDA`.
    #   @return [String]
    #
    # @!attribute [rw] protocol_version
    #   The protocol version. The default is `HTTP1`. Not supported if the
    #   target group type is `LAMBDA`.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP address used for the target group. Supported only if
    #   the target group type is `IP`. The default is `IPV4`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_identifier
    #   The ID of the VPC. Not supported if the target group type is
    #   `LAMBDA`.
    #   @return [String]
    #
    # @!attribute [rw] health_check
    #   The health check configuration. Not supported if the target group
    #   type is `LAMBDA` or `ALB`.
    #   @return [Types::HealthCheckConfig]
    #
    # @!attribute [rw] lambda_event_structure_version
    #   The version of the event structure that your Lambda function
    #   receives. Supported only if the target group type is `LAMBDA`. The
    #   default is `V1`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/TargetGroupConfig AWS API Documentation
    #
    class TargetGroupConfig < Struct.new(
      :port,
      :protocol,
      :protocol_version,
      :ip_address_type,
      :vpc_identifier,
      :health_check,
      :lambda_event_structure_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a target group.
    #
    # For more information, see [Target groups][1] in the *Amazon VPC
    # Lattice User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html
    #
    # @!attribute [rw] id
    #   The ID of the target group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the target group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The target group type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the target group was created, in ISO-8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] port
    #   The port of the target group.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol of the target group.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP address used for the target group. The possible
    #   values are `IPV4` and `IPV6`. This is an optional parameter. If not
    #   specified, the default is `IPV4`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_identifier
    #   The ID of the VPC of the target group.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time that the target group was last updated, in
    #   ISO-8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] service_arns
    #   The Amazon Resource Names (ARNs) of the service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] lambda_event_structure_version
    #   The version of the event structure that your Lambda function
    #   receives. Supported only if the target group type is `LAMBDA`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/TargetGroupSummary AWS API Documentation
    #
    class TargetGroupSummary < Struct.new(
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
      :lambda_event_structure_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a target.
    #
    # @!attribute [rw] id
    #   The ID of the target. If the target group type is `INSTANCE`, this
    #   is an instance ID. If the target group type is `IP`, this is an IP
    #   address. If the target group type is `LAMBDA`, this is the ARN of a
    #   Lambda function. If the target type is `ALB`, this is the ARN of an
    #   Application Load Balancer.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the target is listening.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the target.
    #
    #   * `DRAINING`: The target is being deregistered. No new connections
    #     are sent to this target while current connections are being
    #     drained. The default draining time is 5 minutes.
    #
    #   * `UNAVAILABLE`: Health checks are unavailable for the target group.
    #
    #   * `HEALTHY`: The target is healthy.
    #
    #   * `UNHEALTHY`: The target is unhealthy.
    #
    #   * `INITIAL`: Initial health checks on the target are being
    #     performed.
    #
    #   * `UNUSED`: Target group is not used in a service.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The code for why the target status is what it is.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/TargetSummary AWS API Documentation
    #
    class TargetSummary < Struct.new(
      :id,
      :port,
      :status,
      :reason_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit on the number of requests per second was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for TXT record-based domain verification method.
    #
    # @!attribute [rw] value
    #   The value that must be added to the TXT record for domain
    #   verification.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the TXT record that must be created for domain
    #   verification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/TxtMethodConfig AWS API Documentation
    #
    class TxtMethodConfig < Struct.new(
      :value,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys of the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] access_log_subscription_identifier
    #   The ID or ARN of the access log subscription.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) of the access log destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateAccessLogSubscriptionRequest AWS API Documentation
    #
    class UpdateAccessLogSubscriptionRequest < Struct.new(
      :access_log_subscription_identifier,
      :destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the access log subscription.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the access log subscription.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the access log subscription.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) of the access log destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateAccessLogSubscriptionResponse AWS API Documentation
    #
    class UpdateAccessLogSubscriptionResponse < Struct.new(
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] listener_identifier
    #   The ID or ARN of the listener.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action for the default rule.
    #   @return [Types::RuleAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateListenerRequest AWS API Documentation
    #
    class UpdateListenerRequest < Struct.new(
      :service_identifier,
      :listener_identifier,
      :default_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the listener.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the listener.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of the listener.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The listener port.
    #   @return [Integer]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action for the default rule.
    #   @return [Types::RuleAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateListenerResponse AWS API Documentation
    #
    class UpdateListenerResponse < Struct.new(
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :service_arn,
      :service_id,
      :default_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_configuration_identifier
    #   The ID of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_definition
    #   Identifies the resource configuration in one of the following ways:
    #
    #   * **Amazon Resource Name (ARN)** - Supported resource-types that are
    #     provisioned by Amazon Web Services services, such as RDS
    #     databases, can be identified by their ARN.
    #
    #   * **Domain name** - Any domain name that is publicly resolvable.
    #
    #   * **IP address** - For IPv4 and IPv6, only IP addresses in the VPC
    #     are supported.
    #   @return [Types::ResourceConfigurationDefinition]
    #
    # @!attribute [rw] allow_association_to_shareable_service_network
    #   Indicates whether to add the resource configuration to service
    #   networks that are shared with other accounts.
    #   @return [Boolean]
    #
    # @!attribute [rw] port_ranges
    #   The TCP port ranges that a consumer can use to access a resource
    #   configuration. You can separate port ranges with a comma. Example:
    #   1-65535 or 1,2,22-30
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateResourceConfigurationRequest AWS API Documentation
    #
    class UpdateResourceConfigurationRequest < Struct.new(
      :resource_configuration_identifier,
      :resource_configuration_definition,
      :allow_association_to_shareable_service_network,
      :port_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The ID of the resource gateway associated with the resource
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_group_id
    #   The ID of the group resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource configuration.
    #
    #   * `SINGLE` - A single resource.
    #
    #   * `GROUP` - A group of resources.
    #
    #   * `CHILD` - A single resource that is part of a group resource
    #     configuration.
    #
    #   * `ARN` - An Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] port_ranges
    #   The TCP port ranges that a consumer can use to access a resource
    #   configuration. You can separate port ranges with a comma. Example:
    #   1-65535 or 1,2,22-30
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_association_to_shareable_service_network
    #   Indicates whether to add the resource configuration to service
    #   networks that are shared with other accounts.
    #   @return [Boolean]
    #
    # @!attribute [rw] protocol
    #   The TCP protocol accepted by the specified resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_definition
    #   The resource configuration.
    #   @return [Types::ResourceConfigurationDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateResourceConfigurationResponse AWS API Documentation
    #
    class UpdateResourceConfigurationResponse < Struct.new(
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
      :resource_configuration_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_gateway_identifier
    #   The ID or ARN of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups associated with the resource gateway.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateResourceGatewayRequest AWS API Documentation
    #
    class UpdateResourceGatewayRequest < Struct.new(
      :resource_gateway_identifier,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the VPC subnets for the resource gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups associated with the resource gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP address used by the resource gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateResourceGatewayResponse AWS API Documentation
    #
    class UpdateResourceGatewayResponse < Struct.new(
      :name,
      :id,
      :arn,
      :status,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] listener_identifier
    #   The ID or ARN of the listener.
    #   @return [String]
    #
    # @!attribute [rw] rule_identifier
    #   The ID or ARN of the rule.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The rule match.
    #   @return [Types::RuleMatch]
    #
    # @!attribute [rw] priority
    #   The rule priority. A listener can't have multiple rules with the
    #   same priority.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   Information about the action for the specified listener rule.
    #   @return [Types::RuleAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateRuleRequest AWS API Documentation
    #
    class UpdateRuleRequest < Struct.new(
      :service_identifier,
      :listener_identifier,
      :rule_identifier,
      :match,
      :priority,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the listener.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the listener.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Indicates whether this is the default rule.
    #   @return [Boolean]
    #
    # @!attribute [rw] match
    #   The rule match.
    #   @return [Types::RuleMatch]
    #
    # @!attribute [rw] priority
    #   The rule priority.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   Information about the action for the specified listener rule.
    #   @return [Types::RuleAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateRuleResponse AWS API Documentation
    #
    class UpdateRuleResponse < Struct.new(
      :arn,
      :id,
      :name,
      :is_default,
      :match,
      :priority,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_identifier
    #   The ID or ARN of the service network.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #
    #   * `NONE`: The resource does not use an IAM policy. This is the
    #     default.
    #
    #   * `AWS_IAM`: The resource uses an IAM policy. When this type is
    #     used, auth is enabled and an auth policy is required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateServiceNetworkRequest AWS API Documentation
    #
    class UpdateServiceNetworkRequest < Struct.new(
      :service_network_identifier,
      :auth_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the service network.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service network.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service network.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateServiceNetworkResponse AWS API Documentation
    #
    class UpdateServiceNetworkResponse < Struct.new(
      :id,
      :name,
      :arn,
      :auth_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_network_vpc_association_identifier
    #   The ID or ARN of the association.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateServiceNetworkVpcAssociationRequest AWS API Documentation
    #
    class UpdateServiceNetworkVpcAssociationRequest < Struct.new(
      :service_network_vpc_association_identifier,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status. You can retry the operation if the status is
    #   `DELETE_FAILED`. However, if you retry it while the status is
    #   `DELETE_IN_PROGRESS`, there is no change in the status.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account that created the association.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateServiceNetworkVpcAssociationResponse AWS API Documentation
    #
    class UpdateServiceNetworkVpcAssociationResponse < Struct.new(
      :id,
      :arn,
      :status,
      :created_by,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_identifier
    #   The ID or ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #
    #   * `NONE`: The resource does not use an IAM policy. This is the
    #     default.
    #
    #   * `AWS_IAM`: The resource uses an IAM policy. When this type is
    #     used, auth is enabled and an auth policy is required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateServiceRequest AWS API Documentation
    #
    class UpdateServiceRequest < Struct.new(
      :service_identifier,
      :certificate_arn,
      :auth_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the service.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name of the service.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of IAM policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateServiceResponse AWS API Documentation
    #
    class UpdateServiceResponse < Struct.new(
      :id,
      :arn,
      :name,
      :custom_domain_name,
      :certificate_arn,
      :auth_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_group_identifier
    #   The ID or ARN of the target group.
    #   @return [String]
    #
    # @!attribute [rw] health_check
    #   The health check configuration.
    #   @return [Types::HealthCheckConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateTargetGroupRequest AWS API Documentation
    #
    class UpdateTargetGroupRequest < Struct.new(
      :target_group_identifier,
      :health_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the target group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the target group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The target group type.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The target group configuration.
    #   @return [Types::TargetGroupConfig]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateTargetGroupResponse AWS API Documentation
    #
    class UpdateTargetGroupResponse < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :config,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input does not satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a validation failure.
    #
    # @!attribute [rw] name
    #   The name of the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Additional information about why the validation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the weight of a target group.
    #
    # @!attribute [rw] target_group_identifier
    #   The ID or ARN of the target group.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   Only required if you specify multiple target groups for a forward
    #   action. The weight determines how requests are distributed to the
    #   target group. For example, if you specify two target groups, each
    #   with a weight of 10, each target group receives half the requests.
    #   If you specify two target groups, one with a weight of 10 and the
    #   other with a weight of 20, the target group with a weight of 20
    #   receives twice as many requests as the other target group. If
    #   there's only one target group specified, then the default value is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/WeightedTargetGroup AWS API Documentation
    #
    class WeightedTargetGroup < Struct.new(
      :target_group_identifier,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

