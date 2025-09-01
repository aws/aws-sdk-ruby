# frozen_string_literal: true

# This is generated code!

module Aws::VPCLattice
  # This module contains the types returned by client operations.
  module Types

    # <p>The user does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :destination_arn,
      :service_network_log_type,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ArnResource < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_identifier,
      :listener_identifier,
      :rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute successful
    #   <p>The rules that were successfully updated.</p>
    #   @return [Array<Types::RuleUpdateSuccess>]
    # @!attribute unsuccessful
    #   <p>The rules that the operation couldn't update.</p>
    #   @return [Array<Types::RuleUpdateFailure>]
    class BatchUpdateRuleOutput < Struct.new(
      :successful,
      :unsuccessful,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource. Updating or deleting a
    #    resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>The ID or ARN of the service network or service.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the destination. The supported destination types are
    #      CloudWatch Log groups, Kinesis Data Firehose delivery streams, and Amazon S3 buckets.</p>
    #   @return [String]
    # @!attribute service_network_log_type
    #   <p>The type of log that monitors your Amazon VPC Lattice service networks.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the access log subscription.</p>
    #   @return [Hash<String, String>]
    class CreateAccessLogSubscriptionInput < Struct.new(
      :client_token,
      :resource_identifier,
      :destination_arn,
      :service_network_log_type,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :service_network_log_type,
      :destination_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the listener. A listener name must be unique within a service. The valid characters are a-z, 0-9, and hyphens (-). You can't use a 
    #     hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The listener protocol.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The listener port. You can specify a value from 1 to 65535. For HTTP, the default is 80. For
    #      HTTPS, the default is 443.</p>
    #   @return [Integer]
    # @!attribute default_action
    #   <p>The action for the default rule. Each listener has a default rule. The default rule is used
    #      if no other rules match.</p>
    #   @return [Types::RuleAction]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the listener.</p>
    #   @return [Hash<String, String>]
    class CreateListenerInput < Struct.new(
      :service_identifier,
      :name,
      :protocol,
      :port,
      :default_action,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :service_arn,
      :service_id,
      :default_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the resource configuration. The name must be unique within the account. The
    #      valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last
    #      character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of resource configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SINGLE</code> - A single resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GROUP</code> - A group of resources. You must create a group resource
    #        configuration before you create a child resource configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHILD</code> - A single resource that is part of a group resource configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARN</code> - An Amazon Web Services resource.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>(SINGLE, GROUP, CHILD) The TCP port ranges that a consumer can use to access a resource configuration 
    #      (for example: 1-65535). You can separate port ranges using commas (for example: 1,2,22-30).</p>
    #   @return [Array<String>]
    # @!attribute protocol
    #   <p>(SINGLE, GROUP) The protocol accepted by the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_gateway_identifier
    #   <p>(SINGLE, GROUP, ARN) The ID or ARN of the resource gateway used to connect to the resource configuration.
    #      For a child resource configuration, this value is inherited from the parent resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_group_identifier
    #   <p>(CHILD) The ID or ARN of the parent resource configuration (type is <code>GROUP</code>). 
    #      This is used to associate a child resource configuration with a group resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_definition
    #   <p>(SINGLE, CHILD, ARN) The resource configuration.</p>
    #   @return [Types::ResourceConfigurationDefinition]
    # @!attribute allow_association_to_shareable_service_network
    #   <p>(SINGLE, GROUP, ARN) Specifies whether the resource configuration can be associated with 
    #      a sharable service network. The default is false.</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the resource configuration.</p>
    #   @return [Hash<String, String>]
    class CreateResourceConfigurationRequest < Struct.new(
      :name,
      :type,
      :port_ranges,
      :protocol,
      :resource_gateway_identifier,
      :resource_configuration_group_identifier,
      :resource_configuration_definition,
      :allow_association_to_shareable_service_network,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The ID of the parent resource configuration (type is GROUP).</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of resource configuration.</p>
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
    #   <p>The resource configuration.</p>
    #   @return [Types::ResourceConfigurationDefinition]
    # @!attribute allow_association_to_shareable_service_network
    #   <p>Specifies whether the resource configuration can be associated with a sharable service
    #      network.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The date and time that the resource configuration was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The reason that the request failed.</p>
    #   @return [String]
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
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
    #   <p>The IDs of the security groups to apply to the resource gateway. The security groups must be
    #      in the same VPC.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The type of IP address used by the resource gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the resource gateway.</p>
    #   @return [Hash<String, String>]
    class CreateResourceGatewayRequest < Struct.new(
      :client_token,
      :name,
      :vpc_identifier,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class CreateResourceGatewayResponse < Struct.new(
      :name,
      :id,
      :arn,
      :status,
      :vpc_identifier,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a 
    #     hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The rule match.</p>
    #   @return [Types::RuleMatch]
    # @!attribute priority
    #   <p>The priority assigned to the rule. Each rule for a specific listener must have a unique
    #      priority. The lower the priority number the higher the priority.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The action for the default rule.</p>
    #   @return [Types::RuleAction]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the rule.</p>
    #   @return [Hash<String, String>]
    class CreateRuleInput < Struct.new(
      :service_identifier,
      :listener_identifier,
      :name,
      :match,
      :priority,
      :action,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The rule match. The <code>RuleMatch</code> must be an <code>HttpMatch</code>. This means
    #      that the rule should be an exact match on HTTP constraints which are made up of the HTTP method,
    #      path, and header.</p>
    #   @return [Types::RuleMatch]
    # @!attribute priority
    #   <p>The priority assigned to the rule. The lower the priority number the higher the
    #      priority.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The rule action.</p>
    #   @return [Types::RuleAction]
    class CreateRuleOutput < Struct.new(
      :arn,
      :id,
      :name,
      :match,
      :priority,
      :action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a 
    #     hyphen as the first or last character, or immediately after another hyphen.</p>
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
    #   <p>The type of IAM policy.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateServiceInput < Struct.new(
      :client_token,
      :name,
      :tags,
      :custom_domain_name,
      :certificate_arn,
      :auth_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service network. The name must be unique to the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a 
    #     hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the service network.</p>
    #   @return [Hash<String, String>]
    # @!attribute sharing_config
    #   <p>Specify if the service network should be enabled for sharing.</p>
    #   @return [Types::SharingConfig]
    class CreateServiceNetworkInput < Struct.new(
      :client_token,
      :name,
      :auth_type,
      :tags,
      :sharing_config,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :name,
      :arn,
      :sharing_config,
      :auth_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute resource_configuration_identifier
    #   <p>The ID of the resource configuration to associate with the service network.</p>
    #   @return [String]
    # @!attribute service_network_identifier
    #   <p>The ID of the service network to associate with the resource configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the association.</p>
    #   @return [Hash<String, String>]
    class CreateServiceNetworkResourceAssociationRequest < Struct.new(
      :client_token,
      :resource_configuration_identifier,
      :service_network_identifier,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class CreateServiceNetworkResourceAssociationResponse < Struct.new(
      :id,
      :arn,
      :status,
      :created_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
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
      :client_token,
      :service_identifier,
      :service_network_identifier,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :status,
      :arn,
      :created_by,
      :custom_domain_name,
      :dns_entry,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network. You must use an ARN if the resources are in different accounts.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups. Security groups aren't added by default. You can add a
    #      security group to apply network level controls to control which resources in a VPC are allowed to
    #      access the service network and its services. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html">Control traffic to
    #       resources using security groups</a> in the <i>Amazon VPC User
    #      Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags for the association.</p>
    #   @return [Hash<String, String>]
    class CreateServiceNetworkVpcAssociationInput < Struct.new(
      :client_token,
      :service_network_identifier,
      :vpc_identifier,
      :security_group_ids,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class CreateServiceNetworkVpcAssociationOutput < Struct.new(
      :id,
      :status,
      :arn,
      :created_by,
      :security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The status. If the status is <code>CREATE_FAILED</code>, you must delete and recreate the
    #      service.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #   @return [String]
    # @!attribute dns_entry
    #   <p>The public DNS name of the service.</p>
    #   @return [Types::DnsEntry]
    class CreateServiceOutput < Struct.new(
      :id,
      :arn,
      :name,
      :custom_domain_name,
      :certificate_arn,
      :status,
      :auth_type,
      :dns_entry,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the target group. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a 
    #     hyphen as the first or last character, or immediately after another hyphen.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of target group.</p>
    #   @return [String]
    # @!attribute config
    #   <p>The target group configuration.</p>
    #   @return [Types::TargetGroupConfig]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #     the idempotency of the request. If you retry a request that completed successfully using
    #     the same client token and parameters, the retry succeeds without performing any actions.
    #     If the parameters aren't identical, the retry fails.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the target group.</p>
    #   @return [Hash<String, String>]
    class CreateTargetGroupInput < Struct.new(
      :name,
      :type,
      :config,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The status. You can retry the operation if the status is <code>CREATE_FAILED</code>.
    #      However, if you retry it while the status is <code>CREATE_IN_PROGRESS</code>, there is no change
    #      in the status.</p>
    #   @return [String]
    class CreateTargetGroupOutput < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :config,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_log_subscription_identifier
    #   <p>The ID or ARN of the access log subscription.</p>
    #   @return [String]
    class DeleteAccessLogSubscriptionInput < Struct.new(
      :access_log_subscription_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAccessLogSubscriptionOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The ID or ARN of the resource.</p>
    #   @return [String]
    class DeleteAuthPolicyInput < Struct.new(
      :resource_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAuthPolicyOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    class DeleteListenerInput < Struct.new(
      :service_identifier,
      :listener_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteListenerOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_configuration_identifier
    #   <p>The ID or ARN of the resource configuration.</p>
    #   @return [String]
    class DeleteResourceConfigurationRequest < Struct.new(
      :resource_configuration_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteResourceConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_endpoint_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class DeleteResourceEndpointAssociationRequest < Struct.new(
      :resource_endpoint_association_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The Amazon Resource Name (ARN) of the resource configuration associated with the VPC
    #      endpoint of type resource.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the resource VPC endpoint that is associated with the resource configuration.</p>
    #   @return [String]
    class DeleteResourceEndpointAssociationResponse < Struct.new(
      :id,
      :arn,
      :resource_configuration_id,
      :resource_configuration_arn,
      :vpc_endpoint_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_gateway_identifier
    #   <p>The ID or ARN of the resource gateway.</p>
    #   @return [String]
    class DeleteResourceGatewayRequest < Struct.new(
      :resource_gateway_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :arn,
      :name,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class DeleteResourcePolicyInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteResourcePolicyOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_identifier,
      :listener_identifier,
      :rule_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteRuleOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    class DeleteServiceInput < Struct.new(
      :service_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    #   @return [String]
    class DeleteServiceNetworkInput < Struct.new(
      :service_network_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteServiceNetworkOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_resource_association_identifier
    #   <p>The ID of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkResourceAssociationRequest < Struct.new(
      :service_network_resource_association_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_service_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkServiceAssociationInput < Struct.new(
      :service_network_service_association_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.
    #      However, if you retry it when the status is <code>DELETE_IN_PROGRESS</code>, there is no change
    #      in the status.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkServiceAssociationOutput < Struct.new(
      :id,
      :status,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_vpc_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkVpcAssociationInput < Struct.new(
      :service_network_vpc_association_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.
    #      However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, there is no change
    #      in the status.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    class DeleteServiceNetworkVpcAssociationOutput < Struct.new(
      :id,
      :status,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.
    #      However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, the status doesn't
    #      change.</p>
    #   @return [String]
    class DeleteServiceOutput < Struct.new(
      :id,
      :arn,
      :name,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    class DeleteTargetGroupInput < Struct.new(
      :target_group_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the target group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.
    #      However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, the status doesn't
    #      change.</p>
    #   @return [String]
    class DeleteTargetGroupOutput < Struct.new(
      :id,
      :arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets to deregister.</p>
    #   @return [Array<Types::Target>]
    class DeregisterTargetsInput < Struct.new(
      :target_group_identifier,
      :targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute successful
    #   <p>The targets that were successfully deregistered.</p>
    #   @return [Array<Types::Target>]
    # @!attribute unsuccessful
    #   <p>The targets that the operation couldn't deregister.</p>
    #   @return [Array<Types::TargetFailure>]
    class DeregisterTargetsOutput < Struct.new(
      :successful,
      :unsuccessful,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the DNS information of a service.</p>
    # @!attribute domain_name
    #   <p>The domain name of the service.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The ID of the hosted zone.</p>
    #   @return [String]
    class DnsEntry < Struct.new(
      :domain_name,
      :hosted_zone_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The DNS name of the resource.</p>
    # @!attribute domain_name
    #   <p>The domain name of the resource.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The type of IP address.</p>
    #   @return [String]
    class DnsResource < Struct.new(
      :domain_name,
      :ip_address_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes an action that returns a custom HTTP response.</p>
    # @!attribute status_code
    #   <p>The HTTP response code.</p>
    #   @return [Integer]
    class FixedResponseAction < Struct.new(
      :status_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a forward action. You can use forward actions to route requests to one or more
    #    target groups.
    #    </p>
    # @!attribute target_groups
    #   <p>The target groups. Traffic matching the rule is forwarded to the specified target groups.
    #      With forward actions, you can assign a weight that controls the prioritization and selection of
    #      each target group. This means that requests are distributed to individual target groups based on
    #      their weights. For example, if two target groups have the same weight, each target group receives
    #      half of the traffic.</p>
    #            <p>The default value is 1. This means that if only one target group is provided, there is no
    #      need to set the weight; 100% of the traffic goes to that target group.</p>
    #   @return [Array<Types::WeightedTargetGroup>]
    class ForwardAction < Struct.new(
      :target_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_log_subscription_identifier
    #   <p>The ID or ARN of the access log subscription.</p>
    #   @return [String]
    class GetAccessLogSubscriptionInput < Struct.new(
      :access_log_subscription_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :destination_arn,
      :service_network_log_type,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The ID or ARN of the service network or service.</p>
    #   @return [String]
    class GetAuthPolicyInput < Struct.new(
      :resource_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The auth policy.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the auth policy. The auth policy is only active when the auth type is set to
    #       <code>AWS_IAM</code>. If you provide a policy, then authentication and authorization decisions
    #      are made based on this policy and the client's IAM policy. If the auth type is <code>NONE</code>,
    #      then any auth policy that you provide remains inactive. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#create-service-network">Create a service network</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the auth policy was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the auth policy was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class GetAuthPolicyOutput < Struct.new(
      :policy,
      :state,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    #   @return [String]
    class GetListenerInput < Struct.new(
      :service_identifier,
      :listener_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_configuration_identifier
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    class GetResourceConfigurationRequest < Struct.new(
      :resource_configuration_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The ID of the resource gateway used to connect to the resource configuration in a given VPC. You can specify the resource gateway identifier only for resource configurations with type SINGLE, GROUP, or ARN.</p>
    #   @return [String]
    # @!attribute resource_configuration_group_id
    #   <p>The ID of the group resource configuration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of resource configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SINGLE</code> - A single resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GROUP</code> - A group of resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHILD</code> - A single resource that is part of a group resource configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARN</code> - An Amazon Web Services resource.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute allow_association_to_shareable_service_network
    #   <p>Specifies whether the resource configuration is associated with a sharable service
    #      network.</p>
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_gateway_identifier
    #   <p>The ID of the resource gateway.</p>
    #   @return [String]
    class GetResourceGatewayRequest < Struct.new(
      :resource_gateway_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute security_group_ids
    #   <p>The security group IDs associated with the resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The type of IP address for the resource gateway.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the resource gateway was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time that the resource gateway was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class GetResourceGatewayResponse < Struct.new(
      :name,
      :id,
      :arn,
      :status,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the service network or service.</p>
    #   @return [String]
    class GetResourcePolicyInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>An IAM policy.</p>
    #   @return [String]
    class GetResourcePolicyOutput < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_identifier,
      :listener_identifier,
      :rule_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :arn,
      :id,
      :name,
      :is_default,
      :match,
      :priority,
      :action,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    class GetServiceInput < Struct.new(
      :service_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    #   @return [String]
    class GetServiceNetworkInput < Struct.new(
      :service_network_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :name,
      :created_at,
      :last_updated_at,
      :arn,
      :auth_type,
      :sharing_config,
      :number_of_associated_vp_cs,
      :number_of_associated_services,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_resource_association_identifier
    #   <p>The ID of the association.</p>
    #   @return [String]
    class GetServiceNetworkResourceAssociationRequest < Struct.new(
      :service_network_resource_association_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The private DNS entry for the service.</p>
    #   @return [Types::DnsEntry]
    # @!attribute dns_entry
    #   <p>The DNS entry for the service.</p>
    #   @return [Types::DnsEntry]
    # @!attribute is_managed_association
    #   <p>Indicates whether the association is managed by Amazon.</p>
    #   @return [Boolean]
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
      :dns_entry,
      :is_managed_association,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_service_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class GetServiceNetworkServiceAssociationInput < Struct.new(
      :service_network_service_association_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_vpc_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    class GetServiceNetworkVpcAssociationInput < Struct.new(
      :service_network_vpc_association_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute failure_message
    #   <p>The failure message.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time that the association was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class GetServiceNetworkVpcAssociationOutput < Struct.new(
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
      :failure_message,
      :failure_code,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>The failure message.</p>
    #   @return [String]
    class GetServiceOutput < Struct.new(
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
      :failure_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    class GetTargetGroupInput < Struct.new(
      :target_group_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the constraints for a header match. Matches incoming requests with rule based on
    #    request header value before applying rule action.</p>
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
      :name,
      :match,
      :case_sensitive,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Union

      class Exact < HeaderMatchType; end
      class Prefix < HeaderMatchType; end
      class Contains < HeaderMatchType; end
      class Unknown < HeaderMatchType; end
    end

    # <p>Describes the health check configuration of a target group. Health check configurations
    #    aren't used for target groups of type <code>LAMBDA</code> or <code>ALB</code>.</p>
    # @!attribute enabled
    #   <p>Indicates whether health checking is enabled.</p>
    #   @return [Boolean]
    # @!attribute protocol
    #   <p>The protocol used when performing health checks on targets. The possible protocols are
    #       <code>HTTP</code> and <code>HTTPS</code>. The default is <code>HTTP</code>.</p>
    #   @return [String]
    # @!attribute protocol_version
    #   <p>The protocol version used when performing health checks on targets. The possible protocol
    #      versions are <code>HTTP1</code> and <code>HTTP2</code>.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port used when performing health checks on targets. The default setting is the port that
    #      a target receives traffic on.</p>
    #   @return [Integer]
    # @!attribute path
    #   <p>The destination for health checks on the targets. If the protocol version is
    #       <code>HTTP/1.1</code> or <code>HTTP/2</code>, specify a valid URI (for example,
    #       <code>/path?query</code>). The default path is <code>/</code>. Health checks are not supported
    #      if the protocol version is <code>gRPC</code>, however, you can choose <code>HTTP/1.1</code> or
    #       <code>HTTP/2</code> and specify a valid URI.</p>
    #   @return [String]
    # @!attribute health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target.
    #      The range is 5–300 seconds. The default is 30 seconds.</p>
    #   @return [Integer]
    # @!attribute health_check_timeout_seconds
    #   <p>The amount of time, in seconds, to wait before reporting a target as unhealthy. The range is
    #      1–120 seconds. The default is 5 seconds.</p>
    #   @return [Integer]
    # @!attribute healthy_threshold_count
    #   <p>The number of consecutive successful health checks required before considering an unhealthy
    #      target healthy. The range is 2–10. The default is 5.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold_count
    #   <p>The number of consecutive failed health checks required before considering a target
    #      unhealthy. The range is 2–10. The default is 2.</p>
    #   @return [Integer]
    # @!attribute matcher
    #   <p>The codes to use when checking for a successful response from a target.</p>
    #   @return [Types::Matcher]
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
      :matcher,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes criteria that can be applied to incoming requests.</p>
    # @!attribute method
    #   <p>The HTTP method type.</p>
    #   @return [String]
    # @!attribute path_match
    #   <p>The path match.</p>
    #   @return [Types::PathMatch]
    # @!attribute header_matches
    #   <p>The header matches. Matches incoming requests with rule based on request header value before
    #      applying rule action.</p>
    #   @return [Array<Types::HeaderMatch>]
    class HttpMatch < Struct.new(
      :method,
      :path_match,
      :header_matches,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred while processing the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes an IP resource.</p>
    # @!attribute ip_address
    #   <p>The IP address of the IP resource.</p>
    #   @return [String]
    class IpResource < Struct.new(
      :ip_address,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :resource_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the access log subscriptions.</p>
    #   @return [Array<Types::AccessLogSubscriptionSummary>]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListAccessLogSubscriptionsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the listeners.</p>
    #   @return [Array<Types::ListenerSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListListenersOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_gateway_identifier
    #   <p>The ID of the resource gateway for the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_group_identifier
    #   <p>The ID of the group resource configuration.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceConfigurationsRequest < Struct.new(
      :resource_gateway_identifier,
      :resource_configuration_group_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the resource configurations.</p>
    #   @return [Array<Types::ResourceConfigurationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceConfigurationsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :resource_configuration_identifier,
      :resource_endpoint_association_identifier,
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the VPC endpoint associations.</p>
    #   @return [Array<Types::ResourceEndpointAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceEndpointAssociationsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceGatewaysRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the resource gateways.</p>
    #   @return [Array<Types::ResourceGatewaySummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListResourceGatewaysResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_identifier,
      :listener_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the rules.</p>
    #   @return [Array<Types::RuleSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListRulesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID of the service network.</p>
    #   @return [String]
    # @!attribute resource_configuration_identifier
    #   <p>The ID of the resource configurationk.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkResourceAssociationsRequest < Struct.new(
      :service_network_identifier,
      :resource_configuration_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the associations.</p>
    #   @return [Array<Types::ServiceNetworkResourceAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkResourceAssociationsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_network_identifier,
      :service_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the associations.</p>
    #   @return [Array<Types::ServiceNetworkServiceAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkServiceAssociationsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_network_identifier,
      :vpc_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the associations.</p>
    #   @return [Array<Types::ServiceNetworkVpcAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkVpcAssociationsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_network_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the association between the VPC endpoint and service network.</p>
    #   @return [Array<Types::ServiceNetworkEndpointAssociation>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworkVpcEndpointAssociationsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworksInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the service networks.</p>
    #   @return [Array<Types::ServiceNetworkSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServiceNetworksOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token for the next page of results.</p>
    #   @return [String]
    class ListServicesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the services.</p>
    #   @return [Array<Types::ServiceSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListServicesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Information about the tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :max_results,
      :next_token,
      :vpc_identifier,
      :target_group_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the target groups.</p>
    #   @return [Array<Types::TargetGroupSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListTargetGroupsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :target_group_identifier,
      :max_results,
      :next_token,
      :targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the targets.</p>
    #   @return [Array<Types::TargetSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    #   @return [String]
    class ListTargetsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the codes to use when checking for a successful response from a target for health
    #    checks.</p>
    # @!attribute http_code
    #   <p>The HTTP code to use when checking for a successful response from a target.</p>
    #   @return [String]
    class Matcher < Struct.new(
      :http_code,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class HttpCode < Matcher; end
      class Unknown < Matcher; end
    end

    # <p>Describes the conditions that can be applied when matching a path for incoming
    #    requests.</p>
    # @!attribute match
    #   <p>The type of path match.</p>
    #   @return [Types::PathMatchType]
    # @!attribute case_sensitive
    #   <p>Indicates whether the match is case sensitive.</p>
    #   @return [Boolean]
    class PathMatch < Struct.new(
      :match,
      :case_sensitive,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a path match type. Each rule can include only one of the following types of
    #    paths.</p>
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
      keyword_init: true)
      include Smithy::Schema::Union

      class Exact < PathMatchType; end
      class Prefix < PathMatchType; end
      class Unknown < PathMatchType; end
    end

    # @!attribute resource_identifier
    #   <p>The ID or ARN of the service network or service for which the policy
    #      is created.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The auth policy. The policy string in JSON must not contain newlines or blank lines.</p>
    #   @return [String]
    class PutAuthPolicyInput < Struct.new(
      :resource_identifier,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The auth policy. The policy string in JSON must not contain newlines or blank lines.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the auth policy. The auth policy is only active when the auth type is set to
    #       <code>AWS_IAM</code>. If you provide a policy, then authentication and authorization decisions
    #      are made based on this policy and the client's IAM policy. If the Auth type is <code>NONE</code>,
    #      then, any auth policy that you provide remains inactive. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#create-service-network">Create a service network</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    #   @return [String]
    class PutAuthPolicyOutput < Struct.new(
      :policy,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ID or ARN of the service network or service for which the policy
    #      is created.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>An IAM policy. The policy string in JSON must not contain newlines or blank
    #      lines.</p>
    #   @return [String]
    class PutResourcePolicyInput < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutResourcePolicyOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets.</p>
    #   @return [Array<Types::Target>]
    class RegisterTargetsInput < Struct.new(
      :target_group_identifier,
      :targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute successful
    #   <p>The targets that were successfully registered.</p>
    #   @return [Array<Types::Target>]
    # @!attribute unsuccessful
    #   <p>The targets that were not registered.</p>
    #   @return [Array<Types::TargetFailure>]
    class RegisterTargetsOutput < Struct.new(
      :successful,
      :unsuccessful,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class ResourceConfigurationDefinition < Struct.new(
      :dns_resource,
      :ip_resource,
      :arn_resource,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DnsResource < ResourceConfigurationDefinition; end
      class IpResource < ResourceConfigurationDefinition; end
      class ArnResource < ResourceConfigurationDefinition; end
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
    #   <p>The type of resource configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SINGLE</code> - A single resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GROUP</code> - A group of resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHILD</code> - A single resource that is part of a group resource configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARN</code> - An Amazon Web Services resource.</p>
    #               </li>
    #            </ul>
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class ResourceEndpointAssociationSummary < Struct.new(
      :id,
      :arn,
      :resource_configuration_id,
      :resource_configuration_arn,
      :resource_configuration_name,
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :created_by,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute created_at
    #   <p>The date and time that the VPC endpoint association was created, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The most recent date and time that the resource gateway was updated, in ISO-8601 format.</p>
    #   @return [Time]
    class ResourceGatewaySummary < Struct.new(
      :name,
      :id,
      :arn,
      :status,
      :vpc_identifier,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the action for a rule.</p>
    # @!attribute forward
    #   <p>The forward action. Traffic that matches the rule is forwarded to the specified target
    #      groups.</p>
    #   @return [Types::ForwardAction]
    # @!attribute fixed_response
    #   <p>The fixed response action. The rule returns a custom HTTP response.</p>
    #   @return [Types::FixedResponseAction]
    class RuleAction < Struct.new(
      :forward,
      :fixed_response,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Union

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
      :arn,
      :id,
      :name,
      :is_default,
      :priority,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :rule_identifier,
      :match,
      :priority,
      :action,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :rule_identifier,
      :failure_code,
      :failure_message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :arn,
      :id,
      :name,
      :is_default,
      :match,
      :priority,
      :action,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :vpc_endpoint_id,
      :vpc_id,
      :vpc_endpoint_owner_id,
      :id,
      :state,
      :service_network_arn,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information about an association between a service network and a resource configuration.</p>
    # @!attribute id
    #   <p>The ID of the association between the service network and resource configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service network associated with the resource configuration.</p>
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
    #   <p>The private DNS entry for the service.</p>
    #   @return [Types::DnsEntry]
    # @!attribute is_managed_association
    #   <p>Specifies whether the association is managed by Amazon.</p>
    #   @return [Boolean]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information about an association between a service network and a service.</p>
    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. If the deletion fails, try to delete again.</p>
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :name,
      :arn,
      :created_at,
      :last_updated_at,
      :number_of_associated_vp_cs,
      :number_of_associated_services,
      :number_of_associated_resource_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time that the association was last updated, in ISO-8601 format.</p>
    #   @return [Time]
    class ServiceNetworkVpcAssociationSummary < Struct.new(
      :id,
      :arn,
      :status,
      :created_by,
      :created_at,
      :service_network_id,
      :service_network_name,
      :service_network_arn,
      :vpc_id,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :name,
      :arn,
      :created_at,
      :last_updated_at,
      :dns_entry,
      :custom_domain_name,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies if the service network should be enabled for sharing.</p>
    # @!attribute enabled
    #   <p>Specifies if the service network is enabled for sharing.</p>
    #   @return [Boolean]
    class SharingConfig < Struct.new(
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a target.</p>
    # @!attribute id
    #   <p>The ID of the target. If the target group type is <code>INSTANCE</code>, this is an instance
    #      ID. If the target group type is <code>IP</code>, this is an IP address. If the target group type
    #      is <code>LAMBDA</code>, this is the ARN of a Lambda function. If the target group type is
    #       <code>ALB</code>, this is the ARN of an Application Load Balancer.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the target is listening. For HTTP, the default is 80. For HTTPS, the
    #      default is 443.</p>
    #   @return [Integer]
    class Target < Struct.new(
      :id,
      :port,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a target failure.</p>
    # @!attribute id
    #   <p>The ID of the target. If the target group type is <code>INSTANCE</code>, this is an instance
    #      ID. If the target group type is <code>IP</code>, this is an IP address. If the target group type
    #      is <code>LAMBDA</code>, this is the ARN of a Lambda function. If the target group type is
    #       <code>ALB</code>, this is the ARN of an Application Load Balancer.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the target is listening. This parameter doesn't apply if the target is a
    #      Lambda function.</p>
    #   @return [Integer]
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>The failure message.</p>
    #   @return [String]
    class TargetFailure < Struct.new(
      :id,
      :port,
      :failure_code,
      :failure_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a target group.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html">Target groups</a> in the
    #     <i>Amazon VPC Lattice User Guide</i>.</p>
    # @!attribute port
    #   <p>The port on which the targets are listening. For HTTP, the default is 80. For HTTPS, the
    #      default is 443. Not supported if the target group type is <code>LAMBDA</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol to use for routing traffic to the targets. The default is the protocol of the
    #      target group. Not supported if the target group type is <code>LAMBDA</code>.</p>
    #   @return [String]
    # @!attribute protocol_version
    #   <p>The protocol version. The default is <code>HTTP1</code>. Not supported if the target group
    #      type is <code>LAMBDA</code>.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The type of IP address used for the target group. Supported only if the target group type is
    #       <code>IP</code>. The default is <code>IPV4</code>.</p>
    #   @return [String]
    # @!attribute vpc_identifier
    #   <p>The ID of the VPC. Not supported if the target group type is <code>LAMBDA</code>.</p>
    #   @return [String]
    # @!attribute health_check
    #   <p>The health check configuration. Not supported if the target group type is
    #       <code>LAMBDA</code> or <code>ALB</code>.</p>
    #   @return [Types::HealthCheckConfig]
    # @!attribute lambda_event_structure_version
    #   <p>The version of the event structure that your Lambda function receives. Supported only if the
    #      target group type is <code>LAMBDA</code>. The default is <code>V1</code>.</p>
    #   @return [String]
    class TargetGroupConfig < Struct.new(
      :port,
      :protocol,
      :protocol_version,
      :ip_address_type,
      :vpc_identifier,
      :health_check,
      :lambda_event_structure_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information about a target group.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html">Target groups</a> in the
    #     <i>Amazon VPC Lattice User Guide</i>.</p>
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
    #   <p>The type of IP address used for the target group. The possible values are <code>IPV4</code>
    #      and <code>IPV6</code>. This is an optional parameter. If not specified, the default is
    #       <code>IPV4</code>.</p>
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
    #   <p>The version of the event structure that your Lambda function receives. Supported only if the
    #      target group type is <code>LAMBDA</code>.</p>
    #   @return [String]
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
      :lambda_event_structure_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information about a target.</p>
    # @!attribute id
    #   <p>The ID of the target. If the target group type is <code>INSTANCE</code>, this is an instance
    #      ID. If the target group type is <code>IP</code>, this is an IP address. If the target group type
    #      is <code>LAMBDA</code>, this is the ARN of a Lambda function. If the target type is
    #       <code>ALB</code>, this is the ARN of an Application Load Balancer.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the target is listening.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the target.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRAINING</code>: The target is being deregistered. No new connections are sent to
    #        this target while current connections are being drained. The default draining time is 5
    #        minutes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNAVAILABLE</code>: Health checks are unavailable for the target group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code>: The target is healthy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code>: The target is unhealthy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INITIAL</code>: Initial health checks on the target are being performed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNUSED</code>: Target group is not used in a service.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The code for why the target status is what it is.</p>
    #   @return [String]
    class TargetSummary < Struct.new(
      :id,
      :port,
      :status,
      :reason_code,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys of the tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_log_subscription_identifier
    #   <p>The ID or ARN of the access log subscription.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the access log destination.</p>
    #   @return [String]
    class UpdateAccessLogSubscriptionInput < Struct.new(
      :access_log_subscription_identifier,
      :destination_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :arn,
      :resource_id,
      :resource_arn,
      :destination_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_identifier,
      :listener_identifier,
      :default_action,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :arn,
      :id,
      :name,
      :protocol,
      :port,
      :service_arn,
      :service_id,
      :default_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_configuration_identifier
    #   <p>The ID of the resource configuration.</p>
    #   @return [String]
    # @!attribute resource_configuration_definition
    #   <p>The resource configuration.</p>
    #   @return [Types::ResourceConfigurationDefinition]
    # @!attribute allow_association_to_shareable_service_network
    #   <p>Indicates whether to add the resource configuration to service networks that are shared with other accounts.</p>
    #   @return [Boolean]
    # @!attribute port_ranges
    #   <p>The TCP port ranges that a consumer can use to access a resource configuration. You can separate port ranges with a comma. Example: 1-65535 or 1,2,22-30</p>
    #   @return [Array<String>]
    class UpdateResourceConfigurationRequest < Struct.new(
      :resource_configuration_identifier,
      :resource_configuration_definition,
      :allow_association_to_shareable_service_network,
      :port_ranges,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The type of resource configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SINGLE</code> - A single resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GROUP</code> - A group of resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHILD</code> - A single resource that is part of a group resource configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARN</code> - An Amazon Web Services resource.</p>
    #               </li>
    #            </ul>
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_gateway_identifier
    #   <p>The ID or ARN of the resource gateway.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups associated with the resource gateway.</p>
    #   @return [Array<String>]
    class UpdateResourceGatewayRequest < Struct.new(
      :resource_gateway_identifier,
      :security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :name,
      :id,
      :arn,
      :status,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :service_identifier,
      :listener_identifier,
      :rule_identifier,
      :match,
      :priority,
      :action,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :arn,
      :id,
      :name,
      :is_default,
      :match,
      :priority,
      :action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_identifier
    #   <p>The ID or ARN of the service.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateServiceInput < Struct.new(
      :service_identifier,
      :certificate_arn,
      :auth_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of IAM policy.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateServiceNetworkInput < Struct.new(
      :service_network_identifier,
      :auth_type,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :name,
      :arn,
      :auth_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_network_vpc_association_identifier
    #   <p>The ID or ARN of the association.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups.</p>
    #   @return [Array<String>]
    class UpdateServiceNetworkVpcAssociationInput < Struct.new(
      :service_network_vpc_association_identifier,
      :security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.
    #      However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, there is no change
    #      in the status.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The account that created the association.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups.</p>
    #   @return [Array<String>]
    class UpdateServiceNetworkVpcAssociationOutput < Struct.new(
      :id,
      :arn,
      :status,
      :created_by,
      :security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class UpdateServiceOutput < Struct.new(
      :id,
      :arn,
      :name,
      :custom_domain_name,
      :certificate_arn,
      :auth_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    # @!attribute health_check
    #   <p>The health check configuration.</p>
    #   @return [Types::HealthCheckConfig]
    class UpdateTargetGroupInput < Struct.new(
      :target_group_identifier,
      :health_check,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :arn,
      :name,
      :type,
      :config,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input does not satisfy the constraints specified by an Amazon Web Services
    #    service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a validation failure.</p>
    # @!attribute name
    #   <p>The name of the validation exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Additional information about why the validation failed.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the weight of a target group.</p>
    # @!attribute target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>Only required if you specify multiple target groups for a forward action. The weight
    #      determines how requests are distributed to the target group. For example, if you specify two
    #      target groups, each with a weight of 10, each target group receives half the requests. If you
    #      specify two target groups, one with a weight of 10 and the other with a weight of 20, the target
    #      group with a weight of 20 receives twice as many requests as the other target group. If there's
    #      only one target group specified, then the default value is 100.</p>
    #   @return [Integer]
    class WeightedTargetGroup < Struct.new(
      :target_group_identifier,
      :weight,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
