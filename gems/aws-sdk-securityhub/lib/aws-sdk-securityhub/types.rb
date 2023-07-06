# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityHub
  module Types

    # @!attribute [rw] administrator_id
    #   The account ID of the Security Hub administrator account that sent
    #   the invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The identifier of the invitation sent from the Security Hub
    #   administrator account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptAdministratorInvitationRequest AWS API Documentation
    #
    class AcceptAdministratorInvitationRequest < Struct.new(
      :administrator_id,
      :invitation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptAdministratorInvitationResponse AWS API Documentation
    #
    class AcceptAdministratorInvitationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] master_id
    #   The account ID of the Security Hub administrator account that sent
    #   the invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The identifier of the invitation sent from the Security Hub
    #   administrator account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitationRequest AWS API Documentation
    #
    class AcceptInvitationRequest < Struct.new(
      :master_id,
      :invitation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitationResponse AWS API Documentation
    #
    class AcceptInvitationResponse < Aws::EmptyStructure; end

    # You don't have permission to perform the action specified in the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Amazon Web Services account.
    #
    # @!attribute [rw] account_id
    #   The ID of an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of an Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AccountDetails AWS API Documentation
    #
    class AccountDetails < Struct.new(
      :account_id,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about one of the following actions that affects or
    # that was taken on a resource:
    #
    # * A remote IP address issued an Amazon Web Services API call
    #
    # * A DNS request was received
    #
    # * A remote IP address attempted to connect to an EC2 instance
    #
    # * A remote IP address attempted a port probe on an EC2 instance
    #
    # @!attribute [rw] action_type
    #   The type of action that was detected. The possible action types are:
    #
    #   * `NETWORK_CONNECTION`
    #
    #   * `AWS_API_CALL`
    #
    #   * `DNS_REQUEST`
    #
    #   * `PORT_PROBE`
    #   @return [String]
    #
    # @!attribute [rw] network_connection_action
    #   Included if `ActionType` is `NETWORK_CONNECTION`. Provides details
    #   about the network connection that was detected.
    #   @return [Types::NetworkConnectionAction]
    #
    # @!attribute [rw] aws_api_call_action
    #   Included if `ActionType` is `AWS_API_CALL`. Provides details about
    #   the API call that was detected.
    #   @return [Types::AwsApiCallAction]
    #
    # @!attribute [rw] dns_request_action
    #   Included if `ActionType` is `DNS_REQUEST`. Provides details about
    #   the DNS request that was detected.
    #   @return [Types::DnsRequestAction]
    #
    # @!attribute [rw] port_probe_action
    #   Included if `ActionType` is `PORT_PROBE`. Provides details about the
    #   port probe that was detected.
    #   @return [Types::PortProbeAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Action AWS API Documentation
    #
    class Action < Struct.new(
      :action_type,
      :network_connection_action,
      :aws_api_call_action,
      :dns_request_action,
      :port_probe_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the IP address where the scanned port is
    # located.
    #
    # @!attribute [rw] ip_address_v4
    #   The IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ActionLocalIpDetails AWS API Documentation
    #
    class ActionLocalIpDetails < Struct.new(
      :ip_address_v4)
      SENSITIVE = []
      include Aws::Structure
    end

    # For `NetworkConnectionAction` and `PortProbeDetails`,
    # `LocalPortDetails` provides information about the local port that was
    # involved in the action.
    #
    # @!attribute [rw] port
    #   The number of the port.
    #   @return [Integer]
    #
    # @!attribute [rw] port_name
    #   The port name of the local connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ActionLocalPortDetails AWS API Documentation
    #
    class ActionLocalPortDetails < Struct.new(
      :port,
      :port_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # For `AwsApiAction`, `NetworkConnectionAction`, and `PortProbeAction`,
    # `RemoteIpDetails` provides information about the remote IP address
    # that was involved in the action.
    #
    # @!attribute [rw] ip_address_v4
    #   The IP address.
    #   @return [String]
    #
    # @!attribute [rw] organization
    #   The internet service provider (ISP) organization associated with the
    #   remote IP address.
    #   @return [Types::IpOrganizationDetails]
    #
    # @!attribute [rw] country
    #   The country where the remote IP address is located.
    #   @return [Types::Country]
    #
    # @!attribute [rw] city
    #   The city where the remote IP address is located.
    #   @return [Types::City]
    #
    # @!attribute [rw] geo_location
    #   The coordinates of the location of the remote IP address.
    #   @return [Types::GeoLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ActionRemoteIpDetails AWS API Documentation
    #
    class ActionRemoteIpDetails < Struct.new(
      :ip_address_v4,
      :organization,
      :country,
      :city,
      :geo_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the remote port that was involved in an
    # attempted network connection.
    #
    # @!attribute [rw] port
    #   The number of the port.
    #   @return [Integer]
    #
    # @!attribute [rw] port_name
    #   The port name of the remote connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ActionRemotePortDetails AWS API Documentation
    #
    class ActionRemotePortDetails < Struct.new(
      :port,
      :port_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An `ActionTarget` object.
    #
    # @!attribute [rw] action_target_arn
    #   The ARN for the target action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ActionTarget AWS API Documentation
    #
    class ActionTarget < Struct.new(
      :action_target_arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # An adjustment to the CVSS metric.
    #
    # @!attribute [rw] metric
    #   The metric to adjust.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the adjustment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Adjustment AWS API Documentation
    #
    class Adjustment < Struct.new(
      :metric,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a Security Hub administrator account designated by an
    # organization management account.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account identifier of the Security Hub
    #   administrator account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the Security Hub administrator account.
    #   Indicates whether the account is currently enabled as a Security Hub
    #   administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AdminAccount AWS API Documentation
    #
    class AdminAccount < Struct.new(
      :account_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an enabled security standard in which a security
    # control is enabled.
    #
    # @!attribute [rw] standards_id
    #   The unique identifier of a standard in which a control is enabled.
    #   This field consists of the resource portion of the Amazon Resource
    #   Name (ARN) returned for a standard in the [DescribeStandards][1] API
    #   response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_DescribeStandards.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AssociatedStandard AWS API Documentation
    #
    class AssociatedStandard < Struct.new(
      :standards_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The associations between a route table and one or more subnets or a
    # gateway.
    #
    # @!attribute [rw] association_state
    #   The state of the association between a route table and a subnet or
    #   gateway.
    #   @return [Types::AssociationStateDetails]
    #
    # @!attribute [rw] gateway_id
    #   The ID of the internet gateway or virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] main
    #   Indicates whether this is the main route table.
    #   @return [Boolean]
    #
    # @!attribute [rw] route_table_association_id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet. A subnet ID is not returned for an implicit
    #   association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AssociationSetDetails AWS API Documentation
    #
    class AssociationSetDetails < Struct.new(
      :association_state,
      :gateway_id,
      :main,
      :route_table_association_id,
      :route_table_id,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of an association between a route table and a
    # subnet or gateway.
    #
    # @!attribute [rw] state
    #   The state of the association.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AssociationStateDetails AWS API Documentation
    #
    class AssociationStateDetails < Struct.new(
      :state,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more actions to update finding fields if a finding matches the
    # defined criteria of the rule.
    #
    # @!attribute [rw] type
    #   Specifies that the rule action should update the `Types` finding
    #   field. The `Types` finding field classifies findings in the format
    #   of namespace/category/classifier. For more information, see [Types
    #   taxonomy for ASFF][1] in the *Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format-type-taxonomy.html
    #   @return [String]
    #
    # @!attribute [rw] finding_fields_update
    #   Specifies that the automation rule action is an update to a finding
    #   field.
    #   @return [Types::AutomationRulesFindingFieldsUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AutomationRulesAction AWS API Documentation
    #
    class AutomationRulesAction < Struct.new(
      :type,
      :finding_fields_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the configuration of an automation rule.
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of a rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_status
    #   Whether the rule is active after it is created. If this parameter is
    #   equal to `ENABLED`, Security Hub starts applying the rule to
    #   findings and finding updates after the rule is created.
    #   @return [String]
    #
    # @!attribute [rw] rule_order
    #   An integer ranging from 1 to 1000 that represents the order in which
    #   the rule action is applied to findings. Security Hub applies rules
    #   with lower values for this parameter first.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] is_terminal
    #   Specifies whether a rule is the last to be applied with respect to a
    #   finding that matches the rule criteria. This is useful when a
    #   finding matches the criteria for multiple rules, and each rule has
    #   different actions. If the value of this field is set to `true` for a
    #   rule, Security Hub applies the rule action to a finding that matches
    #   the rule criteria and doesn't evaluate other rules for the
    #   finding.  The default value of this field is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] criteria
    #   A set of [Amazon Web Services Security Finding Format][1] finding
    #   field attributes and corresponding expected values that Security Hub
    #   uses to filter findings. If a rule is enabled and a finding matches
    #   the conditions specified in this parameter, Security Hub applies the
    #   rule action to the finding.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html
    #   @return [Types::AutomationRulesFindingFilters]
    #
    # @!attribute [rw] actions
    #   One or more actions to update finding fields if a finding matches
    #   the defined criteria of the rule.
    #   @return [Array<Types::AutomationRulesAction>]
    #
    # @!attribute [rw] created_at
    #   A timestamp that indicates when the rule was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   A timestamp that indicates when the rule was most recently updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The principal that created a rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AutomationRulesConfig AWS API Documentation
    #
    class AutomationRulesConfig < Struct.new(
      :rule_arn,
      :rule_status,
      :rule_order,
      :rule_name,
      :description,
      :is_terminal,
      :criteria,
      :actions,
      :created_at,
      :updated_at,
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the finding fields that the automation rule action updates
    # when a finding matches the defined criteria.
    #
    # @!attribute [rw] note
    #   The updated note.
    #   @return [Types::NoteUpdate]
    #
    # @!attribute [rw] severity
    #   Updates to the severity information for a finding.
    #   @return [Types::SeverityUpdate]
    #
    # @!attribute [rw] verification_state
    #   The rule action updates the `VerificationState` field of a finding.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The rule action updates the `Confidence` field of a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] criticality
    #   The rule action updates the `Criticality` field of a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] types
    #   The rule action updates the `Types` field of a finding.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_defined_fields
    #   The rule action updates the `UserDefinedFields` field of a finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow
    #   Used to update information about the investigation into the finding.
    #   @return [Types::WorkflowUpdate]
    #
    # @!attribute [rw] related_findings
    #   The rule action updates the `RelatedFindings` field of a finding.
    #   @return [Array<Types::RelatedFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AutomationRulesFindingFieldsUpdate AWS API Documentation
    #
    class AutomationRulesFindingFieldsUpdate < Struct.new(
      :note,
      :severity,
      :verification_state,
      :confidence,
      :criticality,
      :types,
      :user_defined_fields,
      :workflow,
      :related_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria that determine which findings a rule applies to.
    #
    # @!attribute [rw] product_arn
    #   The Amazon Resource Name (ARN) for a third-party product that
    #   generated a finding in Security Hub.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID in which a finding was generated.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] id
    #   The product-specific identifier for a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the solution-specific component that generated a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] type
    #   One or more finding types in the format of
    #   namespace/category/classifier that classify a finding. For a list of
    #   namespaces, classifiers, and categories, see [Types taxonomy for
    #   ASFF][1] in the *Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format-type-taxonomy.html
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] first_observed_at
    #   A timestamp that indicates when the potential security issue
    #   captured by a finding was first observed by the security findings
    #   product.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] last_observed_at
    #   A timestamp that indicates when the potential security issue
    #   captured by a finding was most recently observed by the security
    #   findings product.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] created_at
    #   A timestamp that indicates when this finding record was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] updated_at
    #   A timestamp that indicates when the finding record was most recently
    #   updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] confidence
    #   The likelihood that a finding accurately identifies the behavior or
    #   issue that it was intended to identify. `Confidence` is scored on a
    #   0–100 basis using a ratio scale. A value of `0` means 0 percent
    #   confidence, and a value of `100` means 100 percent confidence. For
    #   example, a data exfiltration detection based on a statistical
    #   deviation of network traffic has low confidence because an actual
    #   exfiltration hasn't been verified. For more information, see
    #   [Confidence][1] in the *Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/asff-top-level-attributes.html#asff-confidence
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] criticality
    #   The level of importance that is assigned to the resources that are
    #   associated with a finding. `Criticality` is scored on a 0–100 basis,
    #   using a ratio scale that supports only full integers. A score of `0`
    #   means that the underlying resources have no criticality, and a score
    #   of `100` is reserved for the most critical resources. For more
    #   information, see [Criticality][1] in the *Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/asff-top-level-attributes.html#asff-criticality
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] title
    #   A finding's title.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] description
    #   A finding's description.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] source_url
    #   Provides a URL that links to a page about the current finding in the
    #   finding product.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] product_name
    #   Provides the name of the product that generated the finding. For
    #   control-based findings, the product name is Security Hub.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] company_name
    #   The name of the company for the product that generated the finding.
    #   For control-based findings, the company is Amazon Web Services.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] severity_label
    #   The severity value of the finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that the finding pertains to.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the given resource type. For Amazon Web Services
    #   resources that are identified by Amazon Resource Names (ARNs), this
    #   is the ARN. For Amazon Web Services resources that lack ARNs, this
    #   is the identifier as defined by the Amazon Web Service that created
    #   the resource. For non-Amazon Web Services resources, this is a
    #   unique identifier that is associated with the resource.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_partition
    #   The partition in which the resource that the finding pertains to is
    #   located. A partition is a group of Amazon Web Services Regions. Each
    #   Amazon Web Services account is scoped to one partition.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_region
    #   The Amazon Web Services Region where the resource that a finding
    #   pertains to is located.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_tags
    #   A list of Amazon Web Services tags associated with a resource at the
    #   time the finding was processed.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] resource_details_other
    #   Custom fields and values about the resource that a finding pertains
    #   to.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] compliance_status
    #   The result of a security check. This field is only used for findings
    #   generated from controls.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] compliance_security_control_id
    #   The security control ID for which a finding was generated. Security
    #   control IDs are the same across standards.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] compliance_associated_standards_id
    #   The unique identifier of a standard in which a control is enabled.
    #   This field consists of the resource portion of the Amazon Resource
    #   Name (ARN) returned for a standard in the [DescribeStandards][1] API
    #   response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_DescribeStandards.html
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] verification_state
    #   Provides the veracity of a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] workflow_status
    #   Provides information about the status of the investigation into a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] record_state
    #   Provides the current state of a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_product_arn
    #   The ARN for the product that generated a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_id
    #   The product-generated identifier for a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_text
    #   The text of a user-defined note that's added to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_updated_at
    #   The timestamp of when the note was updated. Uses the date-time
    #   format specified in [RFC 3339 section 5.6, Internet Date/Time
    #   Format][1]. The value cannot contain spaces. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] note_updated_by
    #   The principal that created a note.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of user-defined name and value string pairs added to a
    #   finding.
    #   @return [Array<Types::MapFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AutomationRulesFindingFilters AWS API Documentation
    #
    class AutomationRulesFindingFilters < Struct.new(
      :product_arn,
      :aws_account_id,
      :id,
      :generator_id,
      :type,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :confidence,
      :criticality,
      :title,
      :description,
      :source_url,
      :product_name,
      :company_name,
      :severity_label,
      :resource_type,
      :resource_id,
      :resource_partition,
      :resource_region,
      :resource_tags,
      :resource_details_other,
      :compliance_status,
      :compliance_security_control_id,
      :compliance_associated_standards_id,
      :verification_state,
      :workflow_status,
      :record_state,
      :related_findings_product_arn,
      :related_findings_id,
      :note_text,
      :note_updated_at,
      :note_updated_by,
      :user_defined_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for automation rules in the calling account. The response
    # includes rules with a `RuleStatus` of `ENABLED` and `DISABLED`.
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) for the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_status
    #   Whether the rule is active after it is created. If this parameter is
    #   equal to `ENABLED`, Security Hub starts applying the rule to
    #   findings and finding updates after the rule is created. To change
    #   the value of this parameter after creating a rule, use [
    #   `BatchUpdateAutomationRules` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateAutomationRules.html
    #   @return [String]
    #
    # @!attribute [rw] rule_order
    #   An integer ranging from 1 to 1000 that represents the order in which
    #   the rule action is applied to findings. Security Hub applies rules
    #   with lower values for this parameter first.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] is_terminal
    #   Specifies whether a rule is the last to be applied with respect to a
    #   finding that matches the rule criteria. This is useful when a
    #   finding matches the criteria for multiple rules, and each rule has
    #   different actions. If the value of this field is set to `true` for a
    #   rule, Security Hub applies the rule action to a finding that matches
    #   the rule criteria and doesn't evaluate other rules for the
    #   finding.  The default value of this field is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   A timestamp that indicates when the rule was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   A timestamp that indicates when the rule was most recently updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The principal that created a rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AutomationRulesMetadata AWS API Documentation
    #
    class AutomationRulesMetadata < Struct.new(
      :rule_arn,
      :rule_status,
      :rule_order,
      :rule_name,
      :description,
      :is_terminal,
      :created_at,
      :updated_at,
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Availability Zone.
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet. You can specify one subnet per Availability
    #   Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :zone_name,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Amazon MQ message broker. A message broker
    # allows software applications and components to communicate using
    # various programming languages, operating systems, and formal messaging
    # protocols.
    #
    # @!attribute [rw] authentication_strategy
    #   The authentication strategy used to secure the broker. The default
    #   is `SIMPLE`.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Whether automatically upgrade new minor versions for brokers, as new
    #   versions are released and supported by Amazon MQ. Automatic upgrades
    #   occur during the scheduled maintenance window of the broker or after
    #   a manual broker reboot.
    #   @return [Boolean]
    #
    # @!attribute [rw] broker_arn
    #   The Amazon Resource Name (ARN) of the broker.
    #   @return [String]
    #
    # @!attribute [rw] broker_name
    #   The broker's name.
    #   @return [String]
    #
    # @!attribute [rw] deployment_mode
    #   The broker's deployment mode.
    #   @return [String]
    #
    # @!attribute [rw] encryption_options
    #   Encryption options for the broker. Doesn’t apply to RabbitMQ
    #   brokers.
    #   @return [Types::AwsAmazonMqBrokerEncryptionOptionsDetails]
    #
    # @!attribute [rw] engine_type
    #   The type of broker engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the broker engine.
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   The broker's instance type.
    #   @return [String]
    #
    # @!attribute [rw] broker_id
    #   The unique ID that Amazon MQ generates for the broker.
    #   @return [String]
    #
    # @!attribute [rw] ldap_server_metadata
    #   The metadata of the Lightweight Directory Access Protocol (LDAP)
    #   server used to authenticate and authorize connections to the broker.
    #   This is an optional failover server.
    #   @return [Types::AwsAmazonMqBrokerLdapServerMetadataDetails]
    #
    # @!attribute [rw] logs
    #   Turns on Amazon CloudWatch logging for brokers.
    #   @return [Types::AwsAmazonMqBrokerLogsDetails]
    #
    # @!attribute [rw] maintenance_window_start_time
    #   The scheduled time period (UTC) during which Amazon MQ begins to
    #   apply pending updates or patches to the broker.
    #   @return [Types::AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails]
    #
    # @!attribute [rw] publicly_accessible
    #   Permits connections from applications outside of the VPC that hosts
    #   the broker's subnets.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_groups
    #   The list of rules (one minimum, 125 maximum) that authorize
    #   connections to brokers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_type
    #   The broker's storage type.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The list of groups that define which subnets and IP ranges the
    #   broker can use from different Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] users
    #   The list of all broker usernames for the specified broker. Doesn't
    #   apply to RabbitMQ brokers.
    #   @return [Array<Types::AwsAmazonMqBrokerUsersDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAmazonMqBrokerDetails AWS API Documentation
    #
    class AwsAmazonMqBrokerDetails < Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_arn,
      :broker_name,
      :deployment_mode,
      :encryption_options,
      :engine_type,
      :engine_version,
      :host_instance_type,
      :broker_id,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :publicly_accessible,
      :security_groups,
      :storage_type,
      :subnet_ids,
      :users)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about broker encryption options.
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key that’s used to encrypt your data at rest. If not
    #   provided, Amazon MQ will use a default KMS key to encrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] use_aws_owned_key
    #   Specifies that an KMS key should be used for at-rest encryption. Set
    #   to `true` by default if no value is provided (for example, for
    #   RabbitMQ brokers).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAmazonMqBrokerEncryptionOptionsDetails AWS API Documentation
    #
    class AwsAmazonMqBrokerEncryptionOptionsDetails < Struct.new(
      :kms_key_id,
      :use_aws_owned_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of the Lightweight Directory Access Protocol (LDAP)
    # server used to authenticate and authorize connections to the broker.
    # This is an optional failover server.
    #
    # @!attribute [rw] hosts
    #   Specifies the location of the LDAP server, such as Amazon Web
    #   Services Directory Service for Microsoft Active Directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_base
    #   The distinguished name of the node in the directory information tree
    #   (DIT) to search for roles or groups.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The group name attribute in a role entry whose value is the name of
    #   that role.
    #   @return [String]
    #
    # @!attribute [rw] role_search_matching
    #   The LDAP search filter used to find roles within the `roleBase`.
    #   @return [String]
    #
    # @!attribute [rw] role_search_subtree
    #   The directory search scope for the role. If set to `true`, the scope
    #   is to search the entire subtree.
    #   @return [Boolean]
    #
    # @!attribute [rw] service_account_username
    #   A username for the service account, which is an account in your LDAP
    #   server that has access to initiate a connection.
    #   @return [String]
    #
    # @!attribute [rw] user_base
    #   Selects a particular subtree of the directory information tree (DIT)
    #   to search for user entries.
    #   @return [String]
    #
    # @!attribute [rw] user_role_name
    #   The name of the LDAP attribute in the user's directory entry for
    #   the user's group membership.
    #   @return [String]
    #
    # @!attribute [rw] user_search_matching
    #   The LDAP search filter used to find users within the `userBase`.
    #   @return [String]
    #
    # @!attribute [rw] user_search_subtree
    #   The directory search scope for the user. If set to true, the scope
    #   is to search the entire subtree.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAmazonMqBrokerLdapServerMetadataDetails AWS API Documentation
    #
    class AwsAmazonMqBrokerLdapServerMetadataDetails < Struct.new(
      :hosts,
      :role_base,
      :role_name,
      :role_search_matching,
      :role_search_subtree,
      :service_account_username,
      :user_base,
      :user_role_name,
      :user_search_matching,
      :user_search_subtree)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about logs to be activated for the specified
    # broker.
    #
    # @!attribute [rw] audit
    #   Activates audit logging. Every user management action made using JMX
    #   or the ActiveMQ Web Console is logged. Doesn't apply to RabbitMQ
    #   brokers.
    #   @return [Boolean]
    #
    # @!attribute [rw] general
    #   Activates general logging.
    #   @return [Boolean]
    #
    # @!attribute [rw] audit_log_group
    #   The location of the CloudWatch Logs log group where audit logs are
    #   sent.
    #   @return [String]
    #
    # @!attribute [rw] general_log_group
    #   The location of the CloudWatch Logs log group where general logs are
    #   sent.
    #   @return [String]
    #
    # @!attribute [rw] pending
    #   The list of information about logs that are to be turned on for the
    #   specified broker.
    #   @return [Types::AwsAmazonMqBrokerLogsPendingDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAmazonMqBrokerLogsDetails AWS API Documentation
    #
    class AwsAmazonMqBrokerLogsDetails < Struct.new(
      :audit,
      :general,
      :audit_log_group,
      :general_log_group,
      :pending)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about logs to be activated for the specified
    # broker.
    #
    # @!attribute [rw] audit
    #   Activates audit logging. Every user management action made using JMX
    #   or the ActiveMQ Web Console is logged. Doesn't apply to RabbitMQ
    #   brokers.
    #   @return [Boolean]
    #
    # @!attribute [rw] general
    #   Activates general logging.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAmazonMqBrokerLogsPendingDetails AWS API Documentation
    #
    class AwsAmazonMqBrokerLogsPendingDetails < Struct.new(
      :audit,
      :general)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scheduled time period (UTC) during which Amazon MQ begins to apply
    # pending updates or patches to the broker.
    #
    # @!attribute [rw] day_of_week
    #   The day of the week on which the maintenance window falls.
    #   @return [String]
    #
    # @!attribute [rw] time_of_day
    #   The time, in 24-hour format, on which the maintenance window falls.
    #   @return [String]
    #
    # @!attribute [rw] time_zone
    #   The time zone in either the Country/City format or the UTC offset
    #   format. UTC is the default format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails AWS API Documentation
    #
    class AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails < Struct.new(
      :day_of_week,
      :time_of_day,
      :time_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the broker usernames for the specified broker.
    # Doesn't apply to RabbitMQ brokers.
    #
    # @!attribute [rw] pending_change
    #   The type of change pending for the broker user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of the broker user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAmazonMqBrokerUsersDetails AWS API Documentation
    #
    class AwsAmazonMqBrokerUsersDetails < Struct.new(
      :pending_change,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provided if `ActionType` is `AWS_API_CALL`. It provides details about
    # the API call that was detected.
    #
    # @!attribute [rw] api
    #   The name of the API method that was issued.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the Amazon Web Services service that the API method
    #   belongs to.
    #   @return [String]
    #
    # @!attribute [rw] caller_type
    #   Indicates whether the API call originated from a remote IP address
    #   (`remoteip`) or from a DNS domain (`domain`).
    #   @return [String]
    #
    # @!attribute [rw] remote_ip_details
    #   Provided if `CallerType` is `remoteIp`. Provides information about
    #   the remote IP address that the API call originated from.
    #   @return [Types::ActionRemoteIpDetails]
    #
    # @!attribute [rw] domain_details
    #   Provided if `CallerType` is `domain`. Provides information about the
    #   DNS domain that the API call originated from.
    #   @return [Types::AwsApiCallActionDomainDetails]
    #
    # @!attribute [rw] affected_resources
    #   Identifies the resources that were affected by the API call.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] first_seen
    #   An ISO8601-formatted timestamp that indicates when the API call was
    #   first observed.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] last_seen
    #   An ISO8601-formatted timestamp that indicates when the API call was
    #   most recently observed.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiCallAction AWS API Documentation
    #
    class AwsApiCallAction < Struct.new(
      :api,
      :service_name,
      :caller_type,
      :remote_ip_details,
      :domain_details,
      :affected_resources,
      :first_seen,
      :last_seen)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provided if `CallerType` is `domain`. It provides information about
    # the DNS domain that issued the API call.
    #
    # @!attribute [rw] domain
    #   The name of the DNS domain that issued the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiCallActionDomainDetails AWS API Documentation
    #
    class AwsApiCallActionDomainDetails < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about settings for logging access for the stage.
    #
    # @!attribute [rw] format
    #   A single-line format of the access logs of data, as specified by
    #   selected `$context` variables. The format must include at least
    #   `$context.requestId`.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the CloudWatch Logs log group that receives the access
    #   logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayAccessLogSettings AWS API Documentation
    #
    class AwsApiGatewayAccessLogSettings < Struct.new(
      :format,
      :destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about settings for canary deployment in the
    # stage.
    #
    # @!attribute [rw] percent_traffic
    #   The percentage of traffic that is diverted to a canary deployment.
    #   @return [Float]
    #
    # @!attribute [rw] deployment_id
    #   The deployment identifier for the canary deployment.
    #   @return [String]
    #
    # @!attribute [rw] stage_variable_overrides
    #   Stage variables that are overridden in the canary release
    #   deployment. The variables include new stage variables that are
    #   introduced in the canary.
    #
    #   Each variable is represented as a string-to-string map between the
    #   stage variable name and the variable value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_stage_cache
    #   Indicates whether the canary deployment uses the stage cache.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayCanarySettings AWS API Documentation
    #
    class AwsApiGatewayCanarySettings < Struct.new(
      :percent_traffic,
      :deployment_id,
      :stage_variable_overrides,
      :use_stage_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the endpoints for the API.
    #
    # @!attribute [rw] types
    #   A list of endpoint types for the REST API.
    #
    #   For an edge-optimized API, the endpoint type is `EDGE`. For a
    #   Regional API, the endpoint type is `REGIONAL`. For a private API,
    #   the endpoint type is `PRIVATE`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayEndpointConfiguration AWS API Documentation
    #
    class AwsApiGatewayEndpointConfiguration < Struct.new(
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines settings for a method for the stage.
    #
    # @!attribute [rw] metrics_enabled
    #   Indicates whether CloudWatch metrics are enabled for the method.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_level
    #   The logging level for this method. The logging level affects the log
    #   entries that are pushed to CloudWatch Logs.
    #
    #   If the logging level is `ERROR`, then the logs only include
    #   error-level entries.
    #
    #   If the logging level is `INFO`, then the logs include both `ERROR`
    #   events and extra informational events.
    #
    #   Valid values: `OFF` \| `ERROR` \| `INFO`
    #   @return [String]
    #
    # @!attribute [rw] data_trace_enabled
    #   Indicates whether data trace logging is enabled for the method. Data
    #   trace logging affects the log entries that are pushed to CloudWatch
    #   Logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] throttling_burst_limit
    #   The throttling burst limit for the method.
    #   @return [Integer]
    #
    # @!attribute [rw] throttling_rate_limit
    #   The throttling rate limit for the method.
    #   @return [Float]
    #
    # @!attribute [rw] caching_enabled
    #   Indicates whether responses are cached and returned for requests.
    #   For responses to be cached, a cache cluster must be enabled on the
    #   stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_ttl_in_seconds
    #   Specifies the time to live (TTL), in seconds, for cached responses.
    #   The higher the TTL, the longer the response is cached.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_data_encrypted
    #   Indicates whether the cached responses are encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_authorization_for_cache_control
    #   Indicates whether authorization is required for a cache invalidation
    #   request.
    #   @return [Boolean]
    #
    # @!attribute [rw] unauthorized_cache_control_header_strategy
    #   Indicates how to handle unauthorized requests for cache
    #   invalidation.
    #
    #   Valid values: `FAIL_WITH_403` \| `SUCCEED_WITH_RESPONSE_HEADER` \|
    #   `SUCCEED_WITHOUT_RESPONSE_HEADER`
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP method. You can use an asterisk (*) as a wildcard to apply
    #   method settings to multiple methods.
    #   @return [String]
    #
    # @!attribute [rw] resource_path
    #   The resource path for this method. Forward slashes (/) are encoded
    #   as ~1 . The initial slash must include a forward slash.
    #
    #   For example, the path value `/resource/subresource` must be encoded
    #   as `/~1resource~1subresource`.
    #
    #   To specify the root path, use only a slash (/). You can use an
    #   asterisk (*) as a wildcard to apply method settings to multiple
    #   methods.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayMethodSettings AWS API Documentation
    #
    class AwsApiGatewayMethodSettings < Struct.new(
      :metrics_enabled,
      :logging_level,
      :data_trace_enabled,
      :throttling_burst_limit,
      :throttling_rate_limit,
      :caching_enabled,
      :cache_ttl_in_seconds,
      :cache_data_encrypted,
      :require_authorization_for_cache_control,
      :unauthorized_cache_control_header_strategy,
      :http_method,
      :resource_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a REST API in version 1 of Amazon API
    # Gateway.
    #
    # @!attribute [rw] id
    #   The identifier of the REST API.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the REST API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the REST API.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   Indicates when the API was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version identifier for the REST API.
    #   @return [String]
    #
    # @!attribute [rw] binary_media_types
    #   The list of binary media types supported by the REST API.
    #   @return [Array<String>]
    #
    # @!attribute [rw] minimum_compression_size
    #   The minimum size in bytes of a payload before compression is
    #   enabled.
    #
    #   If `null`, then compression is disabled.
    #
    #   If 0, then all payloads are compressed.
    #   @return [Integer]
    #
    # @!attribute [rw] api_key_source
    #   The source of the API key for metering requests according to a usage
    #   plan.
    #
    #   `HEADER` indicates whether to read the API key from the X-API-Key
    #   header of a request.
    #
    #   `AUTHORIZER` indicates whether to read the API key from the
    #   `UsageIdentifierKey` from a custom authorizer.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The endpoint configuration of the REST API.
    #   @return [Types::AwsApiGatewayEndpointConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayRestApiDetails AWS API Documentation
    #
    class AwsApiGatewayRestApiDetails < Struct.new(
      :id,
      :name,
      :description,
      :created_date,
      :version,
      :binary_media_types,
      :minimum_compression_size,
      :api_key_source,
      :endpoint_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a version 1 Amazon API Gateway stage.
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the deployment that the stage points to.
    #   @return [String]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the client certificate for the stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_enabled
    #   Indicates whether a cache cluster is enabled for the stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_cluster_size
    #   If a cache cluster is enabled, the size of the cache cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_status
    #   If a cache cluster is enabled, the status of the cache cluster.
    #   @return [String]
    #
    # @!attribute [rw] method_settings
    #   Defines the method settings for the stage.
    #   @return [Array<Types::AwsApiGatewayMethodSettings>]
    #
    # @!attribute [rw] variables
    #   A map that defines the stage variables for the stage.
    #
    #   Variable names can have alphanumeric and underscore characters.
    #
    #   Variable values can contain the following characters:
    #
    #   * Uppercase and lowercase letters
    #
    #   * Numbers
    #
    #   * Special characters -.\_~:/?#&amp;=,
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] documentation_version
    #   The version of the API documentation that is associated with the
    #   stage.
    #   @return [String]
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access for the stage.
    #   @return [Types::AwsApiGatewayAccessLogSettings]
    #
    # @!attribute [rw] canary_settings
    #   Information about settings for canary deployment in the stage.
    #   @return [Types::AwsApiGatewayCanarySettings]
    #
    # @!attribute [rw] tracing_enabled
    #   Indicates whether active tracing with X-Ray is enabled for the
    #   stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   Indicates when the stage was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   Indicates when the stage was most recently updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] web_acl_arn
    #   The ARN of the web ACL associated with the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayStageDetails AWS API Documentation
    #
    class AwsApiGatewayStageDetails < Struct.new(
      :deployment_id,
      :client_certificate_id,
      :stage_name,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :cache_cluster_status,
      :method_settings,
      :variables,
      :documentation_version,
      :access_log_settings,
      :canary_settings,
      :tracing_enabled,
      :created_date,
      :last_updated_date,
      :web_acl_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a version 2 API in Amazon API Gateway.
    #
    # @!attribute [rw] api_endpoint
    #   The URI of the API.
    #
    #   Uses the format ` <api-id>.execute-api.<region>.amazonaws.com`
    #
    #   The stage name is typically appended to the URI to form a complete
    #   path to a deployed API stage.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The identifier of the API.
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An API key selection expression. Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   Indicates when the API was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the API.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version identifier for the API.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the API.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The API protocol for the API.
    #
    #   Valid values: `WEBSOCKET` \| `HTTP`
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   The route selection expression for the API.
    #
    #   For HTTP APIs, must be `$\{request.method\} $\{request.path\}`. This
    #   is the default value for HTTP APIs.
    #
    #   For WebSocket APIs, there is no default value.
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   A cross-origin resource sharing (CORS) configuration. Supported only
    #   for HTTP APIs.
    #   @return [Types::AwsCorsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayV2ApiDetails AWS API Documentation
    #
    class AwsApiGatewayV2ApiDetails < Struct.new(
      :api_endpoint,
      :api_id,
      :api_key_selection_expression,
      :created_date,
      :description,
      :version,
      :name,
      :protocol_type,
      :route_selection_expression,
      :cors_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains route settings for a stage.
    #
    # @!attribute [rw] detailed_metrics_enabled
    #   Indicates whether detailed metrics are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_level
    #   The logging level. The logging level affects the log entries that
    #   are pushed to CloudWatch Logs. Supported only for WebSocket APIs.
    #
    #   If the logging level is `ERROR`, then the logs only include
    #   error-level entries.
    #
    #   If the logging level is `INFO`, then the logs include both `ERROR`
    #   events and extra informational events.
    #
    #   Valid values: `OFF` \| `ERROR` \| `INFO`
    #   @return [String]
    #
    # @!attribute [rw] data_trace_enabled
    #   Indicates whether data trace logging is enabled. Data trace logging
    #   affects the log entries that are pushed to CloudWatch Logs.
    #   Supported only for WebSocket APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] throttling_burst_limit
    #   The throttling burst limit.
    #   @return [Integer]
    #
    # @!attribute [rw] throttling_rate_limit
    #   The throttling rate limit.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayV2RouteSettings AWS API Documentation
    #
    class AwsApiGatewayV2RouteSettings < Struct.new(
      :detailed_metrics_enabled,
      :logging_level,
      :data_trace_enabled,
      :throttling_burst_limit,
      :throttling_rate_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a version 2 stage for Amazon API Gateway.
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of a client certificate for a stage. Supported only
    #   for WebSocket API calls.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   Indicates when the stage was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] default_route_settings
    #   Default route settings for the stage.
    #   @return [Types::AwsApiGatewayV2RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the deployment that the stage is associated with.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   Indicates when the stage was most recently updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] route_settings
    #   The route settings for the stage.
    #   @return [Types::AwsApiGatewayV2RouteSettings]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A map that defines the stage variables for the stage.
    #
    #   Variable names can have alphanumeric and underscore characters.
    #
    #   Variable values can contain the following characters:
    #
    #   * Uppercase and lowercase letters
    #
    #   * Numbers
    #
    #   * Special characters -.\_~:/?#&amp;=,
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] access_log_settings
    #   Information about settings for logging access for the stage.
    #   @return [Types::AwsApiGatewayAccessLogSettings]
    #
    # @!attribute [rw] auto_deploy
    #   Indicates whether updates to an API automatically trigger a new
    #   deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_deployment_status_message
    #   The status of the last deployment of a stage. Supported only if the
    #   stage has automatic deployment enabled.
    #   @return [String]
    #
    # @!attribute [rw] api_gateway_managed
    #   Indicates whether the stage is managed by API Gateway.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayV2StageDetails AWS API Documentation
    #
    class AwsApiGatewayV2StageDetails < Struct.new(
      :client_certificate_id,
      :created_date,
      :description,
      :default_route_settings,
      :deployment_id,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables,
      :access_log_settings,
      :auto_deploy,
      :last_deployment_status_message,
      :api_gateway_managed)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of additional authentication providers for the GraphqlApi API.
    #
    # @!attribute [rw] authentication_type
    #   The type of security configuration for your GraphQL API: API key,
    #   Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon
    #   Cognito user pools, or Lambda.
    #   @return [String]
    #
    # @!attribute [rw] lambda_authorizer_config
    #   The configuration for Lambda function authorization.
    #   @return [Types::AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails]
    #
    # @!attribute [rw] open_id_connect_config
    #   The OpenID Connect configuration.
    #   @return [Types::AwsAppSyncGraphQlApiOpenIdConnectConfigDetails]
    #
    # @!attribute [rw] user_pool_config
    #   The Amazon Cognito user pools configuration.
    #   @return [Types::AwsAppSyncGraphQlApiUserPoolConfigDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails AWS API Documentation
    #
    class AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails < Struct.new(
      :authentication_type,
      :lambda_authorizer_config,
      :open_id_connect_config,
      :user_pool_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an AppSync Graph QL API, which lets you query
    # multiple databases, microservices, and APIs from a single GraphQL
    # endpoint.
    #
    # @!attribute [rw] api_id
    #   The unique identifier for the API.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the API.
    #   @return [String]
    #
    # @!attribute [rw] open_id_connect_config
    #   Specifies the authorization configuration for using an OpenID
    #   Connect compliant service with an AppSync GraphQL API endpoint.
    #   @return [Types::AwsAppSyncGraphQlApiOpenIdConnectConfigDetails]
    #
    # @!attribute [rw] name
    #   The API name.
    #   @return [String]
    #
    # @!attribute [rw] lambda_authorizer_config
    #   Specifies the configuration for Lambda function authorization.
    #   @return [Types::AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails]
    #
    # @!attribute [rw] xray_enabled
    #   Indicates whether to use X-Ray tracing for the GraphQL API.
    #   @return [Boolean]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the API.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_config
    #   The Amazon Cognito user pools configuration.
    #   @return [Types::AwsAppSyncGraphQlApiUserPoolConfigDetails]
    #
    # @!attribute [rw] authentication_type
    #   The type of security configuration for your GraphQL API: API key,
    #   Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon
    #   Cognito user pools, or Lambda.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The Amazon CloudWatch Logs configuration.
    #   @return [Types::AwsAppSyncGraphQlApiLogConfigDetails]
    #
    # @!attribute [rw] additional_authentication_providers
    #   A list of additional authentication providers for the GraphQL API.
    #   @return [Array<Types::AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails>]
    #
    # @!attribute [rw] waf_web_acl_arn
    #   The Amazon Resource Name (ARN) of the WAF web access control list
    #   (web ACL) associated with this GraphQL API, if one exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAppSyncGraphQlApiDetails AWS API Documentation
    #
    class AwsAppSyncGraphQlApiDetails < Struct.new(
      :api_id,
      :id,
      :open_id_connect_config,
      :name,
      :lambda_authorizer_config,
      :xray_enabled,
      :arn,
      :user_pool_config,
      :authentication_type,
      :log_config,
      :additional_authentication_providers,
      :waf_web_acl_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the authorization configuration for using an Lambda function
    # with your AppSync GraphQL API endpoint.
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The number of seconds a response should be cached for. The default
    #   is 5 minutes (300 seconds).
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_uri
    #   The Amazon Resource Name (ARN) of the Lambda function to be called
    #   for authorization. This can be a standard Lambda ARN, a version ARN
    #   (.../v3), or an alias ARN.
    #   @return [String]
    #
    # @!attribute [rw] identity_validation_expression
    #   A regular expression for validation of tokens before the Lambda
    #   function is called.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails AWS API Documentation
    #
    class AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails < Struct.new(
      :authorizer_result_ttl_in_seconds,
      :authorizer_uri,
      :identity_validation_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the logging configuration when writing GraphQL operations
    # and tracing to Amazon CloudWatch for an AppSync GraphQL API.
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   The Amazon Resource Name (ARN) of the service role that AppSync
    #   assumes to publish to CloudWatch Logs in your account.
    #   @return [String]
    #
    # @!attribute [rw] exclude_verbose_content
    #   Set to `TRUE` to exclude sections that contain information such as
    #   headers, context, and evaluated mapping templates, regardless of
    #   logging level.
    #   @return [Boolean]
    #
    # @!attribute [rw] field_log_level
    #   The field logging level.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAppSyncGraphQlApiLogConfigDetails AWS API Documentation
    #
    class AwsAppSyncGraphQlApiLogConfigDetails < Struct.new(
      :cloud_watch_logs_role_arn,
      :exclude_verbose_content,
      :field_log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the authorization configuration for using an OpenID Connect
    # compliant service with your AppSync GraphQL API endpoint.
    #
    # @!attribute [rw] auth_tt_l
    #   The number of milliseconds that a token is valid after being
    #   authenticated.
    #   @return [Integer]
    #
    # @!attribute [rw] client_id
    #   The client identifier of the relying party at the OpenID identity
    #   provider. This identifier is typically obtained when the relying
    #   party is registered with the OpenID identity provider. You can
    #   specify a regular expression so that AppSync can validate against
    #   multiple client identifiers at a time.
    #   @return [String]
    #
    # @!attribute [rw] iat_tt_l
    #   The number of milliseconds that a token is valid after it's issued
    #   to a user.
    #   @return [Integer]
    #
    # @!attribute [rw] issuer
    #   The issuer for the OIDC configuration. The issuer returned by
    #   discovery must exactly match the value of `iss` in the ID token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAppSyncGraphQlApiOpenIdConnectConfigDetails AWS API Documentation
    #
    class AwsAppSyncGraphQlApiOpenIdConnectConfigDetails < Struct.new(
      :auth_tt_l,
      :client_id,
      :iat_tt_l,
      :issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the authorization configuration for using Amazon Cognito
    # user pools with your AppSync GraphQL API endpoint.
    #
    # @!attribute [rw] app_id_client_regex
    #   A regular expression for validating the incoming Amazon Cognito user
    #   pools app client ID. If this value isn't set, no filtering is
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region in which the user pool was created.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action that you want your GraphQL API to take when a request
    #   that uses Amazon Cognito user pools authentication doesn't match
    #   the Amazon Cognito user pools configuration.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAppSyncGraphQlApiUserPoolConfigDetails AWS API Documentation
    #
    class AwsAppSyncGraphQlApiUserPoolConfigDetails < Struct.new(
      :app_id_client_regex,
      :aws_region,
      :default_action,
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Availability Zone for the automatic scaling group.
    #
    # @!attribute [rw] value
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails AWS API Documentation
    #
    class AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an auto scaling group.
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_names
    #   The list of load balancers associated with the group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] health_check_type
    #   The service to use for the health checks. Valid values are `EC2` or
    #   `ELB`.
    #   @return [String]
    #
    # @!attribute [rw] health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before it checks the health status of an EC2 instance that has come
    #   into service.
    #   @return [Integer]
    #
    # @!attribute [rw] created_time
    #   Indicates when the auto scaling group was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] mixed_instances_policy
    #   The mixed instances policy for the automatic scaling group.
    #   @return [Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails]
    #
    # @!attribute [rw] availability_zones
    #   The list of Availability Zones for the automatic scaling group.
    #   @return [Array<Types::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails>]
    #
    # @!attribute [rw] launch_template
    #   The launch template to use.
    #   @return [Types::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification]
    #
    # @!attribute [rw] capacity_rebalance
    #   Indicates whether capacity rebalancing is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingAutoScalingGroupDetails AWS API Documentation
    #
    class AwsAutoScalingAutoScalingGroupDetails < Struct.new(
      :launch_configuration_name,
      :load_balancer_names,
      :health_check_type,
      :health_check_grace_period,
      :created_time,
      :mixed_instances_policy,
      :availability_zones,
      :launch_template,
      :capacity_rebalance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the launch template to use.
    #
    # @!attribute [rw] launch_template_id
    #   The identifier of the launch template. You must specify either
    #   `LaunchTemplateId` or `LaunchTemplateName`.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_name
    #   The name of the launch template. You must specify either
    #   `LaunchTemplateId` or `LaunchTemplateName`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Identifies the version of the launch template. You can specify a
    #   version identifier, or use the values `$Latest` or `$Default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification AWS API Documentation
    #
    class AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification < Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The mixed instances policy for the automatic scaling group.
    #
    # @!attribute [rw] instances_distribution
    #   The instances distribution. The instances distribution specifies the
    #   distribution of On-Demand Instances and Spot Instances, the maximum
    #   price to pay for Spot Instances, and how the Auto Scaling group
    #   allocates instance types to fulfill On-Demand and Spot capacity.
    #   @return [Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails]
    #
    # @!attribute [rw] launch_template
    #   The launch template to use and the instance types (overrides) to use
    #   to provision EC2 instances to fulfill On-Demand and Spot capacities.
    #   @return [Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails AWS API Documentation
    #
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails < Struct.new(
      :instances_distribution,
      :launch_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the instances distribution.
    #
    # @!attribute [rw] on_demand_allocation_strategy
    #   How to allocate instance types to fulfill On-Demand capacity. The
    #   valid value is `prioritized`.
    #   @return [String]
    #
    # @!attribute [rw] on_demand_base_capacity
    #   The minimum amount of the Auto Scaling group's capacity that must
    #   be fulfilled by On-Demand Instances.
    #   @return [Integer]
    #
    # @!attribute [rw] on_demand_percentage_above_base_capacity
    #   The percentage of On-Demand Instances and Spot Instances for
    #   additional capacity beyond `OnDemandBaseCapacity`.
    #   @return [Integer]
    #
    # @!attribute [rw] spot_allocation_strategy
    #   How to allocate instances across Spot Instance pools. Valid values
    #   are as follows:
    #
    #   * `lowest-price`
    #
    #   * `capacity-optimized`
    #
    #   * `capacity-optimized-prioritized`
    #   @return [String]
    #
    # @!attribute [rw] spot_instance_pools
    #   The number of Spot Instance pools across which to allocate your Spot
    #   Instances.
    #   @return [Integer]
    #
    # @!attribute [rw] spot_max_price
    #   The maximum price per unit hour that you are willing to pay for a
    #   Spot Instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails AWS API Documentation
    #
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails < Struct.new(
      :on_demand_allocation_strategy,
      :on_demand_base_capacity,
      :on_demand_percentage_above_base_capacity,
      :spot_allocation_strategy,
      :spot_instance_pools,
      :spot_max_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a launch template and overrides for a mixed instances
    # policy.
    #
    # @!attribute [rw] launch_template_specification
    #   The launch template to use for a mixed instances policy.
    #   @return [Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification]
    #
    # @!attribute [rw] overrides
    #   Property values to use to override the values in the launch
    #   template.
    #   @return [Array<Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails AWS API Documentation
    #
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails < Struct.new(
      :launch_template_specification,
      :overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the launch template to use for a mixed instances policy.
    #
    # @!attribute [rw] launch_template_id
    #   The identifier of the launch template. You must specify either
    #   `LaunchTemplateId` or `LaunchTemplateName`.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_name
    #   The name of the launch template. You must specify either
    #   `LaunchTemplateId` or `LaunchTemplateName`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Identifies the version of the launch template. You can specify a
    #   version identifier, or use the values `$Latest` or `$Default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification AWS API Documentation
    #
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification < Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Property values to use to override the values in the launch template.
    #
    # @!attribute [rw] instance_type
    #   The instance type. For example, `m3.xlarge`.
    #   @return [String]
    #
    # @!attribute [rw] weighted_capacity
    #   The number of capacity units provided by the specified instance type
    #   in terms of virtual CPUs, memory, storage, throughput, or other
    #   relative performance characteristic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails AWS API Documentation
    #
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails < Struct.new(
      :instance_type,
      :weighted_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A block device for the instance.
    #
    # @!attribute [rw] device_name
    #   The device name that is exposed to the EC2 instance. For example,
    #   `/dev/sdh` or `xvdh`.
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   Parameters that are used to automatically set up Amazon EBS volumes
    #   when an instance is launched.
    #   @return [Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails]
    #
    # @!attribute [rw] no_device
    #   Whether to suppress the device that is included in the block device
    #   mapping of the Amazon Machine Image (AMI).
    #
    #   If `NoDevice` is `true`, then you cannot specify `Ebs`.&gt;
    #   @return [Boolean]
    #
    # @!attribute [rw] virtual_name
    #   The name of the virtual device (for example, `ephemeral0`).
    #
    #   You can provide either `VirtualName` or `Ebs`, but not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails AWS API Documentation
    #
    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails < Struct.new(
      :device_name,
      :ebs,
      :no_device,
      :virtual_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are used to automatically set up EBS volumes when an
    # instance is launched.
    #
    # @!attribute [rw] delete_on_termination
    #   Whether to delete the volume when the instance is terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] encrypted
    #   Whether to encrypt the volume.
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The number of input/output (I/O) operations per second (IOPS) to
    #   provision for the volume.
    #
    #   Only supported for `gp3` or `io1` volumes. Required for `io1`
    #   volumes. Not used with `standard`, `gp2`, `st1`, or `sc1` volumes.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID of the volume to use.
    #
    #   You must specify either `VolumeSize` or `SnapshotId`.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   The volume size, in GiBs. The following are the supported volumes
    #   sizes for each volume type:
    #
    #   * gp2 and gp3: 1-16,384
    #
    #   * io1: 4-16,384
    #
    #   * st1 and sc1: 125-16,384
    #
    #   * standard: 1-1,024
    #
    #   You must specify either `SnapshotId` or `VolumeSize`. If you specify
    #   both `SnapshotId` and `VolumeSize`, the volume size must be equal or
    #   greater than the size of the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   The volume type. Valid values are as follows:
    #
    #   * `gp2`
    #
    #   * `gp3`
    #
    #   * `io1`
    #
    #   * `sc1`
    #
    #   * `st1`
    #
    #   * `standard`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails AWS API Documentation
    #
    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails < Struct.new(
      :delete_on_termination,
      :encrypted,
      :iops,
      :snapshot_id,
      :volume_size,
      :volume_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a launch configuration.
    #
    # @!attribute [rw] associate_public_ip_address
    #   For Auto Scaling groups that run in a VPC, specifies whether to
    #   assign a public IP address to the group's instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] block_device_mappings
    #   Specifies the block devices for the instance.
    #   @return [Array<Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails>]
    #
    # @!attribute [rw] classic_link_vpc_id
    #   The identifier of a ClassicLink-enabled VPC that EC2-Classic
    #   instances are linked to.
    #   @return [String]
    #
    # @!attribute [rw] classic_link_vpc_security_groups
    #   The identifiers of one or more security groups for the VPC that is
    #   specified in `ClassicLinkVPCId`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_time
    #   The creation date and time for the launch configuration.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] ebs_optimized
    #   Whether the launch configuration is optimized for Amazon EBS I/O.
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_instance_profile
    #   The name or the ARN of the instance profile associated with the IAM
    #   role for the instance. The instance profile contains the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The identifier of the Amazon Machine Image (AMI) that is used to
    #   launch EC2 instances.
    #   @return [String]
    #
    # @!attribute [rw] instance_monitoring
    #   Indicates the type of monitoring for instances in the group.
    #   @return [Types::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the instances.
    #   @return [String]
    #
    # @!attribute [rw] kernel_id
    #   The identifier of the kernel associated with the AMI.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair.
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] placement_tenancy
    #   The tenancy of the instance. An instance with `dedicated` tenancy
    #   runs on isolated, single-tenant hardware and can only be launched
    #   into a VPC.
    #   @return [String]
    #
    # @!attribute [rw] ramdisk_id
    #   The identifier of the RAM disk associated with the AMI.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups to assign to the instances in the Auto Scaling
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] spot_price
    #   The maximum hourly price to be paid for any Spot Instance that is
    #   launched to fulfill the request.
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   The user data to make available to the launched EC2 instances. Must
    #   be base64-encoded text.
    #   @return [String]
    #
    # @!attribute [rw] metadata_options
    #   The metadata options for the instances.
    #   @return [Types::AwsAutoScalingLaunchConfigurationMetadataOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingLaunchConfigurationDetails AWS API Documentation
    #
    class AwsAutoScalingLaunchConfigurationDetails < Struct.new(
      :associate_public_ip_address,
      :block_device_mappings,
      :classic_link_vpc_id,
      :classic_link_vpc_security_groups,
      :created_time,
      :ebs_optimized,
      :iam_instance_profile,
      :image_id,
      :instance_monitoring,
      :instance_type,
      :kernel_id,
      :key_name,
      :launch_configuration_name,
      :placement_tenancy,
      :ramdisk_id,
      :security_groups,
      :spot_price,
      :user_data,
      :metadata_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the type of monitoring for instances in the group.
    #
    # @!attribute [rw] enabled
    #   If set to `true`, then instances in the group launch with detailed
    #   monitoring.
    #
    #   If set to `false`, then instances in the group launch with basic
    #   monitoring.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails AWS API Documentation
    #
    class AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata options for the instances.
    #
    # @!attribute [rw] http_endpoint
    #   Enables or disables the HTTP metadata endpoint on your instances. By
    #   default, the metadata endpoint is enabled.
    #   @return [String]
    #
    # @!attribute [rw] http_put_response_hop_limit
    #   The HTTP `PUT` response hop limit for instance metadata requests.
    #   The larger the number, the further instance metadata requests can
    #   travel.
    #   @return [Integer]
    #
    # @!attribute [rw] http_tokens
    #   Indicates whether token usage is `required` or `optional` for
    #   metadata requests. By default, token usage is `optional`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingLaunchConfigurationMetadataOptions AWS API Documentation
    #
    class AwsAutoScalingLaunchConfigurationMetadataOptions < Struct.new(
      :http_endpoint,
      :http_put_response_hop_limit,
      :http_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a list of backup options for each resource type.
    #
    # @!attribute [rw] backup_options
    #   Specifies the backup option for a selected resource. This option is
    #   only available for Windows Volume Shadow Copy Service (VSS) backup
    #   jobs. Valid values are as follows:
    #
    #   * Set to `WindowsVSS: enabled` to enable the WindowsVSS backup
    #     option and create a Windows VSS backup.
    #
    #   * Set to `WindowsVSS: disabled` to create a regular backup. The
    #     `WindowsVSS` option is not enabled by default.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_type
    #   The name of a resource type. The only supported resource type is
    #   Amazon EC2 instances with Windows VSS.
    #
    #   The only valid value is `EC2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupBackupPlanAdvancedBackupSettingsDetails AWS API Documentation
    #
    class AwsBackupBackupPlanAdvancedBackupSettingsDetails < Struct.new(
      :backup_options,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Backup backup plan and an array of
    # `BackupRule` objects, each of which specifies a backup rule.
    #
    # @!attribute [rw] backup_plan_name
    #   The display name of a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] advanced_backup_settings
    #   A list of backup options for each resource type.
    #   @return [Array<Types::AwsBackupBackupPlanAdvancedBackupSettingsDetails>]
    #
    # @!attribute [rw] backup_plan_rule
    #   An array of `BackupRule` objects, each of which specifies a
    #   scheduled task that is used to back up a selection of resources.
    #   @return [Array<Types::AwsBackupBackupPlanRuleDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupBackupPlanBackupPlanDetails AWS API Documentation
    #
    class AwsBackupBackupPlanBackupPlanDetails < Struct.new(
      :backup_plan_name,
      :advanced_backup_settings,
      :backup_plan_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Backup backup plan and an array of
    # `BackupRule` objects, each of which specifies a backup rule.
    #
    # @!attribute [rw] backup_plan
    #   Uniquely identifies the backup plan to be associated with the
    #   selection of resources.
    #   @return [Types::AwsBackupBackupPlanBackupPlanDetails]
    #
    # @!attribute [rw] backup_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the backup
    #   plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_id
    #   A unique ID for the backup plan.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Unique, randomly generated, Unicode, UTF-8 encoded strings. Version
    #   IDs cannot be edited.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupBackupPlanDetails AWS API Documentation
    #
    class AwsBackupBackupPlanDetails < Struct.new(
      :backup_plan,
      :backup_plan_arn,
      :backup_plan_id,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides lifecycle details for the backup plan. A lifecycle defines
    # when a backup is transitioned to cold storage and when it expires.
    #
    # @!attribute [rw] delete_after_days
    #   Specifies the number of days after creation that a recovery point is
    #   deleted. Must be greater than 90 days plus
    #   `MoveToColdStorageAfterDays`.
    #   @return [Integer]
    #
    # @!attribute [rw] move_to_cold_storage_after_days
    #   Specifies the number of days after creation that a recovery point is
    #   moved to cold storage.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupBackupPlanLifecycleDetails AWS API Documentation
    #
    class AwsBackupBackupPlanLifecycleDetails < Struct.new(
      :delete_after_days,
      :move_to_cold_storage_after_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of `CopyAction` objects, each of which contains details of
    # the copy operation.
    #
    # @!attribute [rw] destination_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the
    #   destination backup vault for the copied backup.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   Defines when a protected resource is transitioned to cold storage
    #   and when it expires. Backup transitions and expires backups
    #   automatically according to the lifecycle that you define. If you do
    #   not specify a lifecycle, Backup applies the lifecycle policy of the
    #   source backup to the destination backup.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days.
    #   @return [Types::AwsBackupBackupPlanLifecycleDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupBackupPlanRuleCopyActionsDetails AWS API Documentation
    #
    class AwsBackupBackupPlanRuleCopyActionsDetails < Struct.new(
      :destination_backup_vault_arn,
      :lifecycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an array of `BackupRule` objects, each of which
    # specifies a scheduled task that is used to back up a selection of
    # resources.
    #
    # @!attribute [rw] target_backup_vault
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the Amazon Web
    #   Services account used to create them and the Amazon Web Services
    #   Region where they are created. They consist of letters, numbers, and
    #   hyphens.
    #   @return [String]
    #
    # @!attribute [rw] start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully.
    #   @return [Integer]
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression in UTC specifying when Backup initiates a backup
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   A display name for a backup rule. Must contain 1 to 50 alphanumeric
    #   or '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   Uniquely identifies a rule that is used to schedule the backup of a
    #   selection of resources.
    #   @return [String]
    #
    # @!attribute [rw] enable_continuous_backup
    #   Specifies whether Backup creates continuous backups capable of
    #   point-in-time restore (PITR).
    #   @return [Boolean]
    #
    # @!attribute [rw] completion_window_minutes
    #   A value in minutes after a backup job is successfully started before
    #   it must be completed, or it is canceled by Backup.
    #   @return [Integer]
    #
    # @!attribute [rw] copy_actions
    #   An array of `CopyAction` objects, each of which contains details of
    #   the copy operation.
    #   @return [Array<Types::AwsBackupBackupPlanRuleCopyActionsDetails>]
    #
    # @!attribute [rw] lifecycle
    #   Defines when a protected resource is transitioned to cold storage
    #   and when it expires. Backup transitions and expires backups
    #   automatically according to the lifecycle that you define. If you do
    #   not specify a lifecycle, Backup applies the lifecycle policy of the
    #   source backup to the destination backup.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days.
    #   @return [Types::AwsBackupBackupPlanLifecycleDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupBackupPlanRuleDetails AWS API Documentation
    #
    class AwsBackupBackupPlanRuleDetails < Struct.new(
      :target_backup_vault,
      :start_window_minutes,
      :schedule_expression,
      :rule_name,
      :rule_id,
      :enable_continuous_backup,
      :completion_window_minutes,
      :copy_actions,
      :lifecycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Backup backup vault. In Backup, a backup
    # vault is a container that stores and organizes your backups.
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the Amazon Web
    #   Services account used to create them and the Amazon Web Services
    #   Region where they are created. They consist of lowercase letters,
    #   numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The unique ARN associated with the server-side encryption key. You
    #   can specify a key to encrypt your backups from services that support
    #   full Backup management. If you do not specify a key, Backup creates
    #   an KMS key for you by default.
    #   @return [String]
    #
    # @!attribute [rw] notifications
    #   The Amazon SNS event notifications for the specified backup vault.
    #   @return [Types::AwsBackupBackupVaultNotificationsDetails]
    #
    # @!attribute [rw] access_policy
    #   A resource-based policy that is used to manage access permissions on
    #   the target backup vault.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupBackupVaultDetails AWS API Documentation
    #
    class AwsBackupBackupVaultDetails < Struct.new(
      :backup_vault_arn,
      :backup_vault_name,
      :encryption_key_arn,
      :notifications,
      :access_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the Amazon SNS event notifications for the
    # specified backup vault.
    #
    # @!attribute [rw] backup_vault_events
    #   An array of events that indicate the status of jobs to back up
    #   resources to the backup vault. The following events are supported:
    #
    #   * `BACKUP_JOB_STARTED | BACKUP_JOB_COMPLETED`
    #
    #   * `COPY_JOB_STARTED | COPY_JOB_SUCCESSFUL | COPY_JOB_FAILED`
    #
    #   * `RESTORE_JOB_STARTED | RESTORE_JOB_COMPLETED |
    #     RECOVERY_POINT_MODIFIED`
    #
    #   * `S3_BACKUP_OBJECT_FAILED | S3_RESTORE_OBJECT_FAILED`
    #   @return [Array<String>]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the Amazon
    #   SNS topic for a backup vault's events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupBackupVaultNotificationsDetails AWS API Documentation
    #
    class AwsBackupBackupVaultNotificationsDetails < Struct.new(
      :backup_vault_events,
      :sns_topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how long in days before a recovery point transitions to cold
    # storage or is deleted.
    #
    # @!attribute [rw] delete_at
    #   Specifies the number of days after creation that a recovery point is
    #   deleted. Must be greater than 90 days plus
    #   `MoveToColdStorageAfterDays`.
    #   @return [String]
    #
    # @!attribute [rw] move_to_cold_storage_at
    #   Specifies the number of days after creation that a recovery point is
    #   moved to cold storage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupRecoveryPointCalculatedLifecycleDetails AWS API Documentation
    #
    class AwsBackupRecoveryPointCalculatedLifecycleDetails < Struct.new(
      :delete_at,
      :move_to_cold_storage_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the backup plan and rule that Backup used
    # to initiate the recovery point backup.
    #
    # @!attribute [rw] backup_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_version
    #   Unique, randomly generated, Unicode, UTF-8 encoded strings that are
    #   at most 1,024 bytes long. Version IDs cannot be edited.
    #   @return [String]
    #
    # @!attribute [rw] backup_rule_id
    #   Uniquely identifies a rule used to schedule the backup of a
    #   selection of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupRecoveryPointCreatedByDetails AWS API Documentation
    #
    class AwsBackupRecoveryPointCreatedByDetails < Struct.new(
      :backup_plan_arn,
      :backup_plan_id,
      :backup_plan_version,
      :backup_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about the recovery points stored in an
    # Backup backup vault. A backup, or recovery point, represents the
    # content of a resource at a specified time.
    #
    # @!attribute [rw] backup_size_in_bytes
    #   The size, in bytes, of a backup.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the Amazon Web
    #   Services account used to create them and the Amazon Web Services
    #   Region where they are created. They consist of lowercase letters,
    #   numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] calculated_lifecycle
    #   A `CalculatedLifecycle` object containing `DeleteAt` and
    #   `MoveToColdStorageAt` timestamps.
    #   @return [Types::AwsBackupRecoveryPointCalculatedLifecycleDetails]
    #
    # @!attribute [rw] completion_date
    #   The date and time that a job to create a recovery point is
    #   completed, in Unix format and UTC. The value of `CompletionDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Contains identifying information about the creation of a recovery
    #   point, including the `BackupPlanArn`, `BackupPlanId`,
    #   `BackupPlanVersion`, and `BackupRuleId` of the backup plan that is
    #   used to create it.
    #   @return [Types::AwsBackupRecoveryPointCreatedByDetails]
    #
    # @!attribute [rw] creation_date
    #   The date and time a recovery point is created, in Unix format and
    #   UTC. The value of `CreationDate` is accurate to milliseconds. For
    #   example, the value 1516925490.087 represents Friday, January 26,
    #   2018 12:11:30.087 AM.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The ARN for the server-side encryption key that is used to protect
    #   your backups.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to create the target recovery point
    #   @return [String]
    #
    # @!attribute [rw] is_encrypted
    #   A Boolean value that is returned as `TRUE` if the specified recovery
    #   point is encrypted, or `FALSE` if the recovery point is not
    #   encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_restore_time
    #   The date and time that a recovery point was last restored, in Unix
    #   format and UTC. The value of `LastRestoreTime` is accurate to
    #   milliseconds. For example, the value 1516925490.087 represents
    #   Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. Backup transitions and expires
    #   backups automatically according to the lifecycle that you define
    #   @return [Types::AwsBackupRecoveryPointLifecycleDetails]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource saved as a recovery point,
    #   such as an Amazon EBS volume or an Amazon RDS database.
    #   @return [String]
    #
    # @!attribute [rw] source_backup_vault_arn
    #   The ARN for the backup vault where the recovery point was originally
    #   copied from. If the recovery point is restored to the same account,
    #   this value will be null.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A status code specifying the state of the recovery point. Valid
    #   values are as follows:
    #
    #   * `COMPLETED`
    #
    #   * `DELETING`
    #
    #   * `EXPIRED`
    #
    #   * `PARTIAL`
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message explaining the reason of the recovery point deletion
    #   failure.
    #   @return [String]
    #
    # @!attribute [rw] storage_class
    #   Specifies the storage class of the recovery point. Valid values are
    #   as follows:
    #
    #   * `COLD`
    #
    #   * `DELETED`
    #
    #   * `WARM`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupRecoveryPointDetails AWS API Documentation
    #
    class AwsBackupRecoveryPointDetails < Struct.new(
      :backup_size_in_bytes,
      :backup_vault_arn,
      :backup_vault_name,
      :calculated_lifecycle,
      :completion_date,
      :created_by,
      :creation_date,
      :encryption_key_arn,
      :iam_role_arn,
      :is_encrypted,
      :last_restore_time,
      :lifecycle,
      :recovery_point_arn,
      :resource_arn,
      :resource_type,
      :source_backup_vault_arn,
      :status,
      :status_message,
      :storage_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an array of Transition objects specifying how long in days
    # before a recovery point transitions to cold storage or is deleted.
    #
    # @!attribute [rw] delete_after_days
    #   Specifies the number of days after creation that a recovery point is
    #   deleted. Must be greater than 90 days plus
    #   `MoveToColdStorageAfterDays`.
    #   @return [Integer]
    #
    # @!attribute [rw] move_to_cold_storage_after_days
    #   Specifies the number of days after creation that a recovery point is
    #   moved to cold storage.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsBackupRecoveryPointLifecycleDetails AWS API Documentation
    #
    class AwsBackupRecoveryPointLifecycleDetails < Struct.new(
      :delete_after_days,
      :move_to_cold_storage_after_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Certificate Manager certificate.
    #
    # @!attribute [rw] certificate_authority_arn
    #   The ARN of the private certificate authority (CA) that will be used
    #   to issue the certificate.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Indicates when the certificate was requested.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name (FQDN), such as www.example.com,
    #   that is secured by the certificate.
    #   @return [String]
    #
    # @!attribute [rw] domain_validation_options
    #   Contains information about the initial validation of each domain
    #   name that occurs as a result of the `RequestCertificate` request.
    #
    #   Only provided if the certificate type is `AMAZON_ISSUED`.
    #   @return [Array<Types::AwsCertificateManagerCertificateDomainValidationOption>]
    #
    # @!attribute [rw] extended_key_usages
    #   Contains a list of Extended Key Usage X.509 v3 extension objects.
    #   Each object specifies a purpose for which the certificate public key
    #   can be used and consists of a name and an object identifier (OID).
    #   @return [Array<Types::AwsCertificateManagerCertificateExtendedKeyUsage>]
    #
    # @!attribute [rw] failure_reason
    #   For a failed certificate request, the reason for the failure.
    #
    #   Valid values: `NO_AVAILABLE_CONTACTS` \|
    #   `ADDITIONAL_VERIFICATION_REQUIRED` \| `DOMAIN_NOT_ALLOWED` \|
    #   `INVALID_PUBLIC_DOMAIN` \| `DOMAIN_VALIDATION_DENIED` \| `CAA_ERROR`
    #   \| `PCA_LIMIT_EXCEEDED` \| `PCA_INVALID_ARN` \| `PCA_INVALID_STATE`
    #   \| `PCA_REQUEST_FAILED` \| `PCA_NAME_CONSTRAINTS_VALIDATION` \|
    #   `PCA_RESOURCE_NOT_FOUND` \| `PCA_INVALID_ARGS` \|
    #   `PCA_INVALID_DURATION` \| `PCA_ACCESS_DENIED` \| `SLR_NOT_FOUND` \|
    #   `OTHER`
    #   @return [String]
    #
    # @!attribute [rw] imported_at
    #   Indicates when the certificate was imported. Provided if the
    #   certificate type is `IMPORTED`.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] in_use_by
    #   The list of ARNs for the Amazon Web Services resources that use the
    #   certificate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] issued_at
    #   Indicates when the certificate was issued. Provided if the
    #   certificate type is `AMAZON_ISSUED`.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The name of the certificate authority that issued and signed the
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] key_algorithm
    #   The algorithm that was used to generate the public-private key pair.
    #
    #   Valid values: `RSA_2048` \| `RSA_1024` \|` RSA_4096` \|
    #   `EC_prime256v1` \| `EC_secp384r1` \| `EC_secp521r1`
    #   @return [String]
    #
    # @!attribute [rw] key_usages
    #   A list of key usage X.509 v3 extension objects.
    #   @return [Array<Types::AwsCertificateManagerCertificateKeyUsage>]
    #
    # @!attribute [rw] not_after
    #   The time after which the certificate becomes invalid.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] not_before
    #   The time before which the certificate is not valid.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Provides a value that specifies whether to add the certificate to a
    #   transparency log.
    #   @return [Types::AwsCertificateManagerCertificateOptions]
    #
    # @!attribute [rw] renewal_eligibility
    #   Whether the certificate is eligible for renewal.
    #
    #   Valid values: `ELIGIBLE` \| `INELIGIBLE`
    #   @return [String]
    #
    # @!attribute [rw] renewal_summary
    #   Information about the status of the Certificate Manager managed
    #   renewal for the certificate. Provided only when the certificate type
    #   is `AMAZON_ISSUED`.
    #   @return [Types::AwsCertificateManagerCertificateRenewalSummary]
    #
    # @!attribute [rw] serial
    #   The serial number of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] signature_algorithm
    #   The algorithm that was used to sign the certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the certificate.
    #
    #   Valid values: `PENDING_VALIDATION` \| `ISSUED` \| `INACTIVE` \|
    #   `EXPIRED` \| `VALIDATION_TIMED_OUT` \| `REVOKED` \| `FAILED`
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The name of the entity that is associated with the public key
    #   contained in the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_names
    #   One or more domain names (subject alternative names) included in the
    #   certificate. This list contains the domain names that are bound to
    #   the public key that is contained in the certificate.
    #
    #   The subject alternative names include the canonical domain name (CN)
    #   of the certificate and additional domain names that can be used to
    #   connect to the website.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The source of the certificate. For certificates that Certificate
    #   Manager provides, `Type` is `AMAZON_ISSUED`. For certificates that
    #   are imported with `ImportCertificate`, `Type` is `IMPORTED`.
    #
    #   Valid values: `IMPORTED` \| `AMAZON_ISSUED` \| `PRIVATE`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateDetails AWS API Documentation
    #
    class AwsCertificateManagerCertificateDetails < Struct.new(
      :certificate_authority_arn,
      :created_at,
      :domain_name,
      :domain_validation_options,
      :extended_key_usages,
      :failure_reason,
      :imported_at,
      :in_use_by,
      :issued_at,
      :issuer,
      :key_algorithm,
      :key_usages,
      :not_after,
      :not_before,
      :options,
      :renewal_eligibility,
      :renewal_summary,
      :serial,
      :signature_algorithm,
      :status,
      :subject,
      :subject_alternative_names,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about one of the following:
    #
    # * The initial validation of each domain name that occurs as a result
    #   of the `RequestCertificate` request
    #
    # * The validation of each domain name in the certificate, as it
    #   pertains to Certificate Manager managed renewal
    #
    # @!attribute [rw] domain_name
    #   A fully qualified domain name (FQDN) in the certificate.
    #   @return [String]
    #
    # @!attribute [rw] resource_record
    #   The CNAME record that is added to the DNS database for domain
    #   validation.
    #   @return [Types::AwsCertificateManagerCertificateResourceRecord]
    #
    # @!attribute [rw] validation_domain
    #   The domain name that Certificate Manager uses to send domain
    #   validation emails.
    #   @return [String]
    #
    # @!attribute [rw] validation_emails
    #   A list of email addresses that Certificate Manager uses to send
    #   domain validation emails.
    #   @return [Array<String>]
    #
    # @!attribute [rw] validation_method
    #   The method used to validate the domain name.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The validation status of the domain name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateDomainValidationOption AWS API Documentation
    #
    class AwsCertificateManagerCertificateDomainValidationOption < Struct.new(
      :domain_name,
      :resource_record,
      :validation_domain,
      :validation_emails,
      :validation_method,
      :validation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an extended key usage X.509 v3 extension
    # object.
    #
    # @!attribute [rw] name
    #   The name of an extension value. Indicates the purpose for which the
    #   certificate public key can be used.
    #   @return [String]
    #
    # @!attribute [rw] o_id
    #   An object identifier (OID) for the extension value.
    #
    #   The format is numbers separated by periods.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateExtendedKeyUsage AWS API Documentation
    #
    class AwsCertificateManagerCertificateExtendedKeyUsage < Struct.new(
      :name,
      :o_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a key usage X.509 v3 extension object.
    #
    # @!attribute [rw] name
    #   The key usage extension name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateKeyUsage AWS API Documentation
    #
    class AwsCertificateManagerCertificateKeyUsage < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains other options for the certificate.
    #
    # @!attribute [rw] certificate_transparency_logging_preference
    #   Whether to add the certificate to a transparency log.
    #
    #   Valid values: `DISABLED` \| `ENABLED`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateOptions AWS API Documentation
    #
    class AwsCertificateManagerCertificateOptions < Struct.new(
      :certificate_transparency_logging_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Certificate Manager managed renewal for
    # an `AMAZON_ISSUED` certificate.
    #
    # @!attribute [rw] domain_validation_options
    #   Information about the validation of each domain name in the
    #   certificate, as it pertains to Certificate Manager managed renewal.
    #   Provided only when the certificate type is `AMAZON_ISSUED`.
    #   @return [Array<Types::AwsCertificateManagerCertificateDomainValidationOption>]
    #
    # @!attribute [rw] renewal_status
    #   The status of the Certificate Manager managed renewal of the
    #   certificate.
    #
    #   Valid values: `PENDING_AUTO_RENEWAL` \| `PENDING_VALIDATION` \|
    #   `SUCCESS` \| `FAILED`
    #   @return [String]
    #
    # @!attribute [rw] renewal_status_reason
    #   The reason that a renewal request was unsuccessful. This attribute
    #   is used only when `RenewalStatus` is `FAILED`.
    #
    #   Valid values: `NO_AVAILABLE_CONTACTS` \|
    #   `ADDITIONAL_VERIFICATION_REQUIRED` \| `DOMAIN_NOT_ALLOWED` \|
    #   `INVALID_PUBLIC_DOMAIN` \| `DOMAIN_VALIDATION_DENIED` \| `CAA_ERROR`
    #   \| `PCA_LIMIT_EXCEEDED` \| `PCA_INVALID_ARN` \| `PCA_INVALID_STATE`
    #   \| `PCA_REQUEST_FAILED` \| `PCA_NAME_CONSTRAINTS_VALIDATION` \|
    #   `PCA_RESOURCE_NOT_FOUND` \| `PCA_INVALID_ARGS` \|
    #   `PCA_INVALID_DURATION` \| `PCA_ACCESS_DENIED` \| `SLR_NOT_FOUND` \|
    #   `OTHER`
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Indicates when the renewal summary was last updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateRenewalSummary AWS API Documentation
    #
    class AwsCertificateManagerCertificateRenewalSummary < Struct.new(
      :domain_validation_options,
      :renewal_status,
      :renewal_status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the CNAME record that is added to the DNS
    # database for domain validation.
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateResourceRecord AWS API Documentation
    #
    class AwsCertificateManagerCertificateResourceRecord < Struct.new(
      :name,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Nests a stack as a resource in a top-level template. Nested stacks are
    # stacks created as resources for another stack.
    #
    # @!attribute [rw] capabilities
    #   The capabilities allowed in the stack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time at which the stack was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-defined description associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] disable_rollback
    #   Boolean to enable or disable rollback on stack creation failures.
    #   @return [Boolean]
    #
    # @!attribute [rw] drift_information
    #   Information about whether a stack's actual configuration differs,
    #   or has drifted, from its expected configuration, as defined in the
    #   stack template and any values specified as template parameters.
    #   @return [Types::AwsCloudFormationStackDriftInformationDetails]
    #
    # @!attribute [rw] enable_termination_protection
    #   Whether termination protection is enabled for the stack.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_updated_time
    #   The time the nested stack was last updated. This field will only be
    #   returned if the stack has been updated at least once.
    #   @return [String]
    #
    # @!attribute [rw] notification_arns
    #   The Amazon Resource Names (ARNs) of the Amazon SNS topic to which
    #   stack-related events are published.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   A list of output structures.
    #   @return [Array<Types::AwsCloudFormationStackOutputsDetails>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that's associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   Unique identifier of the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_status
    #   Current status of the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_status_reason
    #   Success or failure message associated with the stack status.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   The length of time, in minutes, that CloudFormation waits for the
    #   nested stack to reach the `CREATE_COMPLETE` state.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFormationStackDetails AWS API Documentation
    #
    class AwsCloudFormationStackDetails < Struct.new(
      :capabilities,
      :creation_time,
      :description,
      :disable_rollback,
      :drift_information,
      :enable_termination_protection,
      :last_updated_time,
      :notification_arns,
      :outputs,
      :role_arn,
      :stack_id,
      :stack_name,
      :stack_status,
      :stack_status_reason,
      :timeout_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the stack's conformity to its expected
    # template configuration.
    #
    # @!attribute [rw] stack_drift_status
    #   Status of the stack's actual configuration compared to its expected
    #   template configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFormationStackDriftInformationDetails AWS API Documentation
    #
    class AwsCloudFormationStackDriftInformationDetails < Struct.new(
      :stack_drift_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the CloudFormation stack output.
    #
    # @!attribute [rw] description
    #   A user-defined description associated with the output.
    #   @return [String]
    #
    # @!attribute [rw] output_key
    #   The key associated with the output.
    #   @return [String]
    #
    # @!attribute [rw] output_value
    #   The value associated with the output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFormationStackOutputsDetails AWS API Documentation
    #
    class AwsCloudFormationStackOutputsDetails < Struct.new(
      :description,
      :output_key,
      :output_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a cache behavior for the distribution.
    #
    # @!attribute [rw] viewer_protocol_policy
    #   The protocol that viewers can use to access the files in an origin.
    #   You can specify the following options:
    #
    #   * `allow-all` - Viewers can use HTTP or HTTPS.
    #
    #   * `redirect-to-https` - CloudFront responds to HTTP requests with an
    #     HTTP status code of 301 (Moved Permanently) and the HTTPS URL. The
    #     viewer then uses the new URL to resubmit.
    #
    #   * `https-only` - CloudFront responds to HTTP request with an HTTP
    #     status code of 403 (Forbidden).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionCacheBehavior AWS API Documentation
    #
    class AwsCloudFrontDistributionCacheBehavior < Struct.new(
      :viewer_protocol_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about caching for the CloudFront distribution.
    #
    # @!attribute [rw] items
    #   The cache behaviors for the distribution.
    #   @return [Array<Types::AwsCloudFrontDistributionCacheBehavior>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionCacheBehaviors AWS API Documentation
    #
    class AwsCloudFrontDistributionCacheBehaviors < Struct.new(
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the default cache configuration for the
    # CloudFront distribution.
    #
    # @!attribute [rw] viewer_protocol_policy
    #   The protocol that viewers can use to access the files in an origin.
    #   You can specify the following options:
    #
    #   * `allow-all` - Viewers can use HTTP or HTTPS.
    #
    #   * `redirect-to-https` - CloudFront responds to HTTP requests with an
    #     HTTP status code of 301 (Moved Permanently) and the HTTPS URL. The
    #     viewer then uses the new URL to resubmit.
    #
    #   * `https-only` - CloudFront responds to HTTP request with an HTTP
    #     status code of 403 (Forbidden).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionDefaultCacheBehavior AWS API Documentation
    #
    class AwsCloudFrontDistributionDefaultCacheBehavior < Struct.new(
      :viewer_protocol_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CloudFront distribution configuration.
    #
    # @!attribute [rw] cache_behaviors
    #   Provides information about the cache configuration for the
    #   distribution.
    #   @return [Types::AwsCloudFrontDistributionCacheBehaviors]
    #
    # @!attribute [rw] default_cache_behavior
    #   The default cache behavior for the configuration.
    #   @return [Types::AwsCloudFrontDistributionDefaultCacheBehavior]
    #
    # @!attribute [rw] default_root_object
    #   The object that CloudFront sends in response to requests from the
    #   origin (for example, index.html) when a viewer requests the root URL
    #   for the distribution (http://www.example.com) instead of an object
    #   in your distribution
    #   (http://www.example.com/product-description.html).
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name corresponding to the distribution.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The entity tag is a hash of the object.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   Indicates when that the distribution was last modified.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   A complex type that controls whether access logs are written for the
    #   distribution.
    #   @return [Types::AwsCloudFrontDistributionLogging]
    #
    # @!attribute [rw] origins
    #   A complex type that contains information about origins for this
    #   distribution.
    #   @return [Types::AwsCloudFrontDistributionOrigins]
    #
    # @!attribute [rw] origin_groups
    #   Provides information about the origin groups in the distribution.
    #   @return [Types::AwsCloudFrontDistributionOriginGroups]
    #
    # @!attribute [rw] viewer_certificate
    #   Provides information about the TLS/SSL configuration that the
    #   distribution uses to communicate with viewers.
    #   @return [Types::AwsCloudFrontDistributionViewerCertificate]
    #
    # @!attribute [rw] status
    #   Indicates the current status of the distribution.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier that specifies the WAF web ACL, if any, to
    #   associate with this distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionDetails AWS API Documentation
    #
    class AwsCloudFrontDistributionDetails < Struct.new(
      :cache_behaviors,
      :default_cache_behavior,
      :default_root_object,
      :domain_name,
      :etag,
      :last_modified_time,
      :logging,
      :origins,
      :origin_groups,
      :viewer_certificate,
      :status,
      :web_acl_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that controls whether access logs are written for the
    # CloudFront distribution.
    #
    # @!attribute [rw] bucket
    #   The S3 bucket to store the access logs in.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   With this field, you can enable or disable the selected
    #   distribution.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_cookies
    #   Specifies whether you want CloudFront to include cookies in access
    #   logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] prefix
    #   An optional string that you want CloudFront to use as a prefix to
    #   the access log filenames for this distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionLogging AWS API Documentation
    #
    class AwsCloudFrontDistributionLogging < Struct.new(
      :bucket,
      :enabled,
      :include_cookies,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom origin. A custom origin is any origin that is not an Amazon
    # S3 bucket, with one exception. An Amazon S3 bucket that is [configured
    # with static website hosting][1] is a custom origin.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html
    #
    # @!attribute [rw] http_port
    #   The HTTP port that CloudFront uses to connect to the origin.
    #   @return [Integer]
    #
    # @!attribute [rw] https_port
    #   The HTTPS port that CloudFront uses to connect to the origin.
    #   @return [Integer]
    #
    # @!attribute [rw] origin_keepalive_timeout
    #   Specifies how long, in seconds, CloudFront persists its connection
    #   to the origin.
    #   @return [Integer]
    #
    # @!attribute [rw] origin_protocol_policy
    #   Specifies the protocol (HTTP or HTTPS) that CloudFront uses to
    #   connect to the origin.
    #   @return [String]
    #
    # @!attribute [rw] origin_read_timeout
    #   Specifies how long, in seconds, CloudFront waits for a response from
    #   the origin.
    #   @return [Integer]
    #
    # @!attribute [rw] origin_ssl_protocols
    #   Specifies the minimum SSL/TLS protocol that CloudFront uses when
    #   connecting to your origin over HTTPS.
    #   @return [Types::AwsCloudFrontDistributionOriginSslProtocols]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginCustomOriginConfig AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginCustomOriginConfig < Struct.new(
      :http_port,
      :https_port,
      :origin_keepalive_timeout,
      :origin_protocol_policy,
      :origin_read_timeout,
      :origin_ssl_protocols)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an origin group for the CloudFront distribution.
    #
    # @!attribute [rw] failover_criteria
    #   Provides the criteria for an origin group to fail over.
    #   @return [Types::AwsCloudFrontDistributionOriginGroupFailover]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginGroup AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginGroup < Struct.new(
      :failover_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about when an origin group fails over.
    #
    # @!attribute [rw] status_codes
    #   Information about the status codes that cause an origin group to
    #   fail over.
    #   @return [Types::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginGroupFailover AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginGroupFailover < Struct.new(
      :status_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status codes that cause an origin group to fail over.
    #
    # @!attribute [rw] items
    #   The list of status code values that can cause a failover to the next
    #   origin.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] quantity
    #   The number of status codes that can cause a failover.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginGroupFailoverStatusCodes AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodes < Struct.new(
      :items,
      :quantity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about origin groups that are associated with the
    # CloudFront distribution.
    #
    # @!attribute [rw] items
    #   The list of origin groups.
    #   @return [Array<Types::AwsCloudFrontDistributionOriginGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginGroups AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginGroups < Struct.new(
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes the Amazon S3 bucket, HTTP server (for
    # example, a web server), AWS Elemental MediaStore, or other server from
    # which CloudFront gets your files.
    #
    # @!attribute [rw] domain_name
    #   Amazon S3 origins: The DNS name of the S3 bucket from which you want
    #   CloudFront to get objects for this origin.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the origin or origin group.
    #   @return [String]
    #
    # @!attribute [rw] origin_path
    #   An optional element that causes CloudFront to request your content
    #   from a directory in your Amazon S3 bucket or your custom origin.
    #   @return [String]
    #
    # @!attribute [rw] s3_origin_config
    #   An origin that is an S3 bucket that is not configured with static
    #   website hosting.
    #   @return [Types::AwsCloudFrontDistributionOriginS3OriginConfig]
    #
    # @!attribute [rw] custom_origin_config
    #   An origin that is not an Amazon S3 bucket, with one exception. If
    #   the Amazon S3 bucket is configured with static website hosting, use
    #   this attribute. If the Amazon S3 bucket is not configured with
    #   static website hosting, use the `S3OriginConfig` type instead.
    #   @return [Types::AwsCloudFrontDistributionOriginCustomOriginConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginItem AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginItem < Struct.new(
      :domain_name,
      :id,
      :origin_path,
      :s3_origin_config,
      :custom_origin_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an origin that is an Amazon S3 bucket that is not
    # configured with static website hosting.
    #
    # @!attribute [rw] origin_access_identity
    #   The CloudFront origin access identity to associate with the origin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginS3OriginConfig AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginS3OriginConfig < Struct.new(
      :origin_access_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about the SSL/TLS protocols
    # that CloudFront can use when establishing an HTTPS connection with
    # your origin.
    #
    # @!attribute [rw] items
    #   A list that contains allowed SSL/TLS protocols for this
    #   distribution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] quantity
    #   The number of SSL/TLS protocols that you want to allow CloudFront to
    #   use when establishing an HTTPS connection with this origin.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginSslProtocols AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginSslProtocols < Struct.new(
      :items,
      :quantity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about origins and origin
    # groups for this CloudFront distribution.
    #
    # @!attribute [rw] items
    #   A complex type that contains origins or origin groups for this
    #   distribution.
    #   @return [Array<Types::AwsCloudFrontDistributionOriginItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOrigins AWS API Documentation
    #
    class AwsCloudFrontDistributionOrigins < Struct.new(
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the TLS/SSL configuration that the
    # CloudFront distribution uses to communicate with viewers.
    #
    # @!attribute [rw] acm_certificate_arn
    #   The ARN of the ACM certificate. Used if the certificate is stored in
    #   ACM. If you provide an ACM certificate ARN, you must also provide
    #   `MinimumCertificateVersion` and `SslSupportMethod`.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The identifier of the certificate. Note that in CloudFront, this
    #   attribute is deprecated.
    #   @return [String]
    #
    # @!attribute [rw] certificate_source
    #   The source of the certificate identified by `Certificate`. Note that
    #   in CloudFront, this attribute is deprecated.
    #   @return [String]
    #
    # @!attribute [rw] cloud_front_default_certificate
    #   Whether the distribution uses the CloudFront domain name. If set to
    #   `false`, then you provide either `AcmCertificateArn` or
    #   `IamCertificateId`.
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_certificate_id
    #   The identifier of the IAM certificate. Used if the certificate is
    #   stored in IAM. If you provide `IamCertificateId`, then you also must
    #   provide `MinimumProtocolVersion` and `SslSupportMethod`.
    #   @return [String]
    #
    # @!attribute [rw] minimum_protocol_version
    #   The security policy that CloudFront uses for HTTPS connections with
    #   viewers. If `SslSupportMethod` is `sni-only`, then
    #   `MinimumProtocolVersion` must be `TLSv1` or higher.
    #   @return [String]
    #
    # @!attribute [rw] ssl_support_method
    #   The viewers that the distribution accepts HTTPS connections from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionViewerCertificate AWS API Documentation
    #
    class AwsCloudFrontDistributionViewerCertificate < Struct.new(
      :acm_certificate_arn,
      :certificate,
      :certificate_source,
      :cloud_front_default_certificate,
      :iam_certificate_id,
      :minimum_protocol_version,
      :ssl_support_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a CloudTrail trail.
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   The ARN of the log group that CloudTrail logs are delivered to.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   The ARN of the role that the CloudWatch Events endpoint assumes when
    #   it writes to the log group.
    #   @return [String]
    #
    # @!attribute [rw] has_custom_event_selectors
    #   Indicates whether the trail has custom event selectors.
    #   @return [Boolean]
    #
    # @!attribute [rw] home_region
    #   The Region where the trail was created.
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Indicates whether the trail publishes events from global services
    #   such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Indicates whether the trail applies only to the current Region or to
    #   all Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_organization_trail
    #   Whether the trail is created for all accounts in an organization in
    #   Organizations, or only for the current Amazon Web Services account.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID to use to encrypt the logs.
    #   @return [String]
    #
    # @!attribute [rw] log_file_validation_enabled
    #   Indicates whether CloudTrail log file validation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the trail.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket where the log files are published.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The S3 key prefix. The key prefix is added after the name of the S3
    #   bucket where the log files are published.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The ARN of the SNS topic that is used for notifications of log file
    #   delivery.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   The name of the SNS topic that is used for notifications of log file
    #   delivery.
    #   @return [String]
    #
    # @!attribute [rw] trail_arn
    #   The ARN of the trail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudTrailTrailDetails AWS API Documentation
    #
    class AwsCloudTrailTrailDetails < Struct.new(
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :has_custom_event_selectors,
      :home_region,
      :include_global_service_events,
      :is_multi_region_trail,
      :is_organization_trail,
      :kms_key_id,
      :log_file_validation_enabled,
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_arn,
      :sns_topic_name,
      :trail_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an alarm and associates it with the specified metric or
    # metric math expression.
    #
    # @!attribute [rw] actions_enabled
    #   Indicates whether actions should be executed during any changes to
    #   the alarm state.
    #   @return [Boolean]
    #
    # @!attribute [rw] alarm_actions
    #   The list of actions, specified as Amazon Resource Names (ARNs) to
    #   execute when this alarm transitions into an `ALARM` state from any
    #   other state.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_arn
    #   The ARN of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration_updated_timestamp
    #   The time stamp of the last update to the alarm configuration.
    #   @return [String]
    #
    # @!attribute [rw] alarm_description
    #   The description of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm. If you don't specify a name, CloudFront
    #   generates a unique physical ID and uses that ID for the alarm name.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified
    #   statistic and threshold. The specified statistic value is used as
    #   the first operand.
    #   @return [String]
    #
    # @!attribute [rw] datapoints_to_alarm
    #   The number of datapoints that must be breaching to trigger the
    #   alarm.
    #   @return [Integer]
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric associated with the alarm.
    #   @return [Array<Types::AwsCloudWatchAlarmDimensionsDetails>]
    #
    # @!attribute [rw] evaluate_low_sample_count_percentile
    #   Used only for alarms based on percentiles. If `ignore`, the alarm
    #   state does not change during periods with too few data points to be
    #   statistically significant. If `evaluate` or this parameter is not
    #   used, the alarm is always evaluated and possibly changes state no
    #   matter how many data points are available.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] extended_statistic
    #   The percentile statistic for the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] insufficient_data_actions
    #   The actions to execute when this alarm transitions to the
    #   `INSUFFICIENT_DATA` state from any other state. Each action is
    #   specified as an ARN.
    #   @return [Array<String>]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric associated with the alarm. This is required
    #   for an alarm based on a metric. For an alarm based on a math
    #   expression, you use `Metrics` instead and you can't specify
    #   `MetricName`.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric associated with the alarm. This is
    #   required for an alarm based on a metric. For an alarm based on a
    #   math expression, you can't specify `Namespace` and you use
    #   `Metrics` instead.
    #   @return [String]
    #
    # @!attribute [rw] ok_actions
    #   The actions to execute when this alarm transitions to the `OK` state
    #   from any other state. Each action is specified as an ARN.
    #   @return [Array<String>]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the statistic is applied. This is
    #   required for an alarm based on a metric.
    #   @return [Integer]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric associated with the alarm, other than
    #   percentile. For percentile statistics, use `ExtendedStatistic`.
    #
    #   For an alarm based on a metric, you must specify either `Statistic`
    #   or `ExtendedStatistic` but not both.
    #
    #   For an alarm based on a math expression, you can't specify
    #   `Statistic`. Instead, you use `Metrics`.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The value to compare with the specified statistic.
    #   @return [Float]
    #
    # @!attribute [rw] threshold_metric_id
    #   n an alarm based on an anomaly detection model, this is the ID of
    #   the `ANOMALY_DETECTION_BAND` function used as the threshold for the
    #   alarm.
    #   @return [String]
    #
    # @!attribute [rw] treat_missing_data
    #   Sets how this alarm is to handle missing data points.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the metric associated with the alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudWatchAlarmDetails AWS API Documentation
    #
    class AwsCloudWatchAlarmDetails < Struct.new(
      :actions_enabled,
      :alarm_actions,
      :alarm_arn,
      :alarm_configuration_updated_timestamp,
      :alarm_description,
      :alarm_name,
      :comparison_operator,
      :datapoints_to_alarm,
      :dimensions,
      :evaluate_low_sample_count_percentile,
      :evaluation_periods,
      :extended_statistic,
      :insufficient_data_actions,
      :metric_name,
      :namespace,
      :ok_actions,
      :period,
      :statistic,
      :threshold,
      :threshold_metric_id,
      :treat_missing_data,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the dimensions for the metric associated with the alarm.
    #
    # @!attribute [rw] name
    #   The name of a dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudWatchAlarmDimensionsDetails AWS API Documentation
    #
    class AwsCloudWatchAlarmDimensionsDetails < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the build artifacts for the CodeBuild project.
    #
    # @!attribute [rw] artifact_identifier
    #   An identifier for the artifact definition.
    #   @return [String]
    #
    # @!attribute [rw] encryption_disabled
    #   Indicates whether to disable encryption on the artifact. Only valid
    #   when `Type` is `S3`.
    #   @return [Boolean]
    #
    # @!attribute [rw] location
    #   Only used when `Type` is `S3`. The name of the S3 bucket where the
    #   artifact is located.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Only used when Type is S3. The name of the artifact. Used with
    #   `NamepaceType` and `Path` to determine the pattern for storing the
    #   artifact.
    #   @return [String]
    #
    # @!attribute [rw] namespace_type
    #   Only used when `Type` is `S3`. The value to use for the namespace.
    #   Used with `Name` and `Path` to determine the pattern for storing the
    #   artifact.
    #   @return [String]
    #
    # @!attribute [rw] override_artifact_name
    #   Whether the name specified in the buildspec file overrides the
    #   artifact name.
    #   @return [Boolean]
    #
    # @!attribute [rw] packaging
    #   Only used when `Type` is `S3`. The type of output artifact to
    #   create.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   Only used when `Type` is `S3`. The path to the artifact. Used with
    #   `Name` and `NamespaceType` to determine the pattern for storing the
    #   artifact.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of build artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectArtifactsDetails AWS API Documentation
    #
    class AwsCodeBuildProjectArtifactsDetails < Struct.new(
      :artifact_identifier,
      :encryption_disabled,
      :location,
      :name,
      :namespace_type,
      :override_artifact_name,
      :packaging,
      :path,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an CodeBuild project.
    #
    # @!attribute [rw] encryption_key
    #   The KMS key used to encrypt the build output artifacts.
    #
    #   You can specify either the ARN of the KMS key or, if available, the
    #   KMS key alias (using the format alias/alias-name).
    #   @return [String]
    #
    # @!attribute [rw] artifacts
    #   Information about the build artifacts for the CodeBuild project.
    #   @return [Array<Types::AwsCodeBuildProjectArtifactsDetails>]
    #
    # @!attribute [rw] environment
    #   Information about the build environment for this build project.
    #   @return [Types::AwsCodeBuildProjectEnvironment]
    #
    # @!attribute [rw] name
    #   The name of the build project.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information about the build input source code for this build
    #   project.
    #   @return [Types::AwsCodeBuildProjectSource]
    #
    # @!attribute [rw] service_role
    #   The ARN of the IAM role that enables CodeBuild to interact with
    #   dependent Amazon Web Services services on behalf of the Amazon Web
    #   Services account.
    #   @return [String]
    #
    # @!attribute [rw] logs_config
    #   Information about logs for the build project.
    #   @return [Types::AwsCodeBuildProjectLogsConfigDetails]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that CodeBuild accesses.
    #   @return [Types::AwsCodeBuildProjectVpcConfig]
    #
    # @!attribute [rw] secondary_artifacts
    #   Information about the secondary artifacts for the CodeBuild project.
    #   @return [Array<Types::AwsCodeBuildProjectArtifactsDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectDetails AWS API Documentation
    #
    class AwsCodeBuildProjectDetails < Struct.new(
      :encryption_key,
      :artifacts,
      :environment,
      :name,
      :source,
      :service_role,
      :logs_config,
      :vpc_config,
      :secondary_artifacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the build environment for this build project.
    #
    # @!attribute [rw] certificate
    #   The certificate to use with this build project.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   A set of environment variables to make available to builds for the
    #   build project.
    #   @return [Array<Types::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails>]
    #
    # @!attribute [rw] privileged_mode
    #   Whether to allow the Docker daemon to run inside a Docker container.
    #   Set to `true` if the build project is used to build Docker images.
    #   @return [Boolean]
    #
    # @!attribute [rw] image_pull_credentials_type
    #   The type of credentials CodeBuild uses to pull images in your build.
    #
    #   Valid values:
    #
    #   * `CODEBUILD` specifies that CodeBuild uses its own credentials.
    #     This requires that you modify your ECR repository policy to trust
    #     the CodeBuild service principal.
    #
    #   * `SERVICE_ROLE` specifies that CodeBuild uses your build project's
    #     service role.
    #
    #   When you use a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When you use an CodeBuild curated image,
    #   you must use `CODEBUILD` credentials.
    #   @return [String]
    #
    # @!attribute [rw] registry_credential
    #   The credentials for access to a private registry.
    #   @return [Types::AwsCodeBuildProjectEnvironmentRegistryCredential]
    #
    # @!attribute [rw] type
    #   The type of build environment to use for related builds.
    #
    #   The environment type `ARM_CONTAINER` is available only in Regions US
    #   East (N. Virginia), US East (Ohio), US West (Oregon), Europe
    #   (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific
    #   (Sydney), and Europe (Frankfurt).
    #
    #   The environment type `LINUX_CONTAINER` with compute type
    #   build.general1.2xlarge is available only in Regions US East (N.
    #   Virginia), US East (N. Virginia), US West (Oregon), Canada
    #   (Central), Europe (Ireland), Europe (London), Europe (Frankfurt),
    #   Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific
    #   (Singapore), Asia Pacific (Sydney), China (Beijing), and China
    #   (Ningxia).
    #
    #   The environment type `LINUX_GPU_CONTAINER` is available only in
    #   Regions US East (N. Virginia), US East (N. Virginia), US West
    #   (Oregon), Canada (Central), Europe (Ireland), Europe (London),
    #   Europe (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia
    #   Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and
    #   China (Ningxia).
    #
    #   Valid values: `WINDOWS_CONTAINER` \| `LINUX_CONTAINER` \|
    #   `LINUX_GPU_CONTAINER` \| `ARM_CONTAINER`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectEnvironment AWS API Documentation
    #
    class AwsCodeBuildProjectEnvironment < Struct.new(
      :certificate,
      :environment_variables,
      :privileged_mode,
      :image_pull_credentials_type,
      :registry_credential,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an environment variable that is available to builds
    # for the build project.
    #
    # @!attribute [rw] name
    #   The name of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the environment variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails AWS API Documentation
    #
    class AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails < Struct.new(
      :name,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The credentials for access to a private registry.
    #
    # @!attribute [rw] credential
    #   The ARN or name of credentials created using Secrets Manager.
    #
    #   <note markdown="1"> The credential can use the name of the credentials only if they
    #   exist in your current Amazon Web Services Region.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] credential_provider
    #   The service that created the credentials to access a private Docker
    #   registry.
    #
    #   The valid value,` SECRETS_MANAGER`, is for Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectEnvironmentRegistryCredential AWS API Documentation
    #
    class AwsCodeBuildProjectEnvironmentRegistryCredential < Struct.new(
      :credential,
      :credential_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about CloudWatch Logs for the build project.
    #
    # @!attribute [rw] group_name
    #   The group name of the logs in CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the logs in CloudWatch Logs for a build
    #   project.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The prefix of the stream name of the CloudWatch Logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails AWS API Documentation
    #
    class AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails < Struct.new(
      :group_name,
      :status,
      :stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about logs for the build project.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Information about CloudWatch Logs for the build project.
    #   @return [Types::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails]
    #
    # @!attribute [rw] s3_logs
    #   Information about logs built to an S3 bucket for a build project.
    #   @return [Types::AwsCodeBuildProjectLogsConfigS3LogsDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectLogsConfigDetails AWS API Documentation
    #
    class AwsCodeBuildProjectLogsConfigDetails < Struct.new(
      :cloud_watch_logs,
      :s3_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about logs built to an S3 bucket for a build project.
    #
    # @!attribute [rw] encryption_disabled
    #   Whether to disable encryption of the S3 build log output.
    #   @return [Boolean]
    #
    # @!attribute [rw] location
    #   The ARN of the S3 bucket and the path prefix for S3 logs.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the S3 build logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectLogsConfigS3LogsDetails AWS API Documentation
    #
    class AwsCodeBuildProjectLogsConfigS3LogsDetails < Struct.new(
      :encryption_disabled,
      :location,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the build input source code for this build project.
    #
    # @!attribute [rw] type
    #   The type of repository that contains the source code to be built.
    #   Valid values are:
    #
    #   * `BITBUCKET` - The source code is in a Bitbucket repository.
    #
    #   * `CODECOMMIT` - The source code is in an CodeCommit repository.
    #
    #   * `CODEPIPELINE` - The source code settings are specified in the
    #     source action of a pipeline in CodePipeline.
    #
    #   * `GITHUB` - The source code is in a GitHub repository.
    #
    #   * `GITHUB_ENTERPRISE` - The source code is in a GitHub Enterprise
    #     repository.
    #
    #   * `NO_SOURCE` - The project does not have input source code.
    #
    #   * `S3` - The source code is in an S3 input bucket.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the location of the source code to be built.
    #
    #   Valid values include:
    #
    #   * For source code settings that are specified in the source action
    #     of a pipeline in CodePipeline, location should not be specified.
    #     If it is specified, CodePipeline ignores it. This is because
    #     CodePipeline uses the settings in a pipeline's source action
    #     instead of this value.
    #
    #   * For source code in an CodeCommit repository, the HTTPS clone URL
    #     to the repository that contains the source code and the build spec
    #     file (for example,
    #     `https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name`
    #     ).
    #
    #   * For source code in an S3 input bucket, one of the following.
    #
    #     * The path to the ZIP file that contains the source code (for
    #       example, `bucket-name/path/to/object-name.zip`).
    #
    #     * The path to the folder that contains the source code (for
    #       example, `bucket-name/path/to/source-code/folder/`).
    #
    #   * For source code in a GitHub repository, the HTTPS clone URL to the
    #     repository that contains the source and the build spec file.
    #
    #   * For source code in a Bitbucket repository, the HTTPS clone URL to
    #     the repository that contains the source and the build spec file.
    #   @return [String]
    #
    # @!attribute [rw] git_clone_depth
    #   Information about the Git clone depth for the build project.
    #   @return [Integer]
    #
    # @!attribute [rw] insecure_ssl
    #   Whether to ignore SSL warnings while connecting to the project
    #   source code.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectSource AWS API Documentation
    #
    class AwsCodeBuildProjectSource < Struct.new(
      :type,
      :location,
      :git_clone_depth,
      :insecure_ssl)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the VPC configuration that CodeBuild accesses.
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of one or more subnet IDs in your VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of one or more security group IDs in your VPC.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectVpcConfig AWS API Documentation
    #
    class AwsCodeBuildProjectVpcConfig < Struct.new(
      :vpc_id,
      :subnets,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the cross-origin resource sharing (CORS) configuration for
    # the API. CORS is only supported for HTTP APIs.
    #
    # @!attribute [rw] allow_origins
    #   The allowed origins for CORS requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_credentials
    #   Indicates whether the CORS request includes credentials.
    #   @return [Boolean]
    #
    # @!attribute [rw] expose_headers
    #   The exposed headers for CORS requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_age
    #   The number of seconds for which the browser caches preflight request
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_methods
    #   The allowed methods for CORS requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_headers
    #   The allowed headers for CORS requests.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCorsConfiguration AWS API Documentation
    #
    class AwsCorsConfiguration < Struct.new(
      :allow_origins,
      :allow_credentials,
      :expose_headers,
      :max_age,
      :allow_methods,
      :allow_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a definition of an attribute for the table.
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableAttributeDefinition AWS API Documentation
    #
    class AwsDynamoDbTableAttributeDefinition < Struct.new(
      :attribute_name,
      :attribute_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the billing for read/write capacity on the
    # table.
    #
    # @!attribute [rw] billing_mode
    #   The method used to charge for read and write throughput and to
    #   manage capacity.
    #   @return [String]
    #
    # @!attribute [rw] last_update_to_pay_per_request_date_time
    #   If the billing mode is `PAY_PER_REQUEST`, indicates when the billing
    #   mode was set to that value.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableBillingModeSummary AWS API Documentation
    #
    class AwsDynamoDbTableBillingModeSummary < Struct.new(
      :billing_mode,
      :last_update_to_pay_per_request_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a DynamoDB table.
    #
    # @!attribute [rw] attribute_definitions
    #   A list of attribute definitions for the table.
    #   @return [Array<Types::AwsDynamoDbTableAttributeDefinition>]
    #
    # @!attribute [rw] billing_mode_summary
    #   Information about the billing for read/write capacity on the table.
    #   @return [Types::AwsDynamoDbTableBillingModeSummary]
    #
    # @!attribute [rw] creation_date_time
    #   Indicates when the table was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] global_secondary_indexes
    #   List of global secondary indexes for the table.
    #   @return [Array<Types::AwsDynamoDbTableGlobalSecondaryIndex>]
    #
    # @!attribute [rw] global_table_version
    #   The version of global tables being used.
    #   @return [String]
    #
    # @!attribute [rw] item_count
    #   The number of items in the table.
    #   @return [Integer]
    #
    # @!attribute [rw] key_schema
    #   The primary key structure for the table.
    #   @return [Array<Types::AwsDynamoDbTableKeySchema>]
    #
    # @!attribute [rw] latest_stream_arn
    #   The ARN of the latest stream for the table.
    #   @return [String]
    #
    # @!attribute [rw] latest_stream_label
    #   The label of the latest stream. The label is not a unique
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] local_secondary_indexes
    #   The list of local secondary indexes for the table.
    #   @return [Array<Types::AwsDynamoDbTableLocalSecondaryIndex>]
    #
    # @!attribute [rw] provisioned_throughput
    #   Information about the provisioned throughput for the table.
    #   @return [Types::AwsDynamoDbTableProvisionedThroughput]
    #
    # @!attribute [rw] replicas
    #   The list of replicas of this table.
    #   @return [Array<Types::AwsDynamoDbTableReplica>]
    #
    # @!attribute [rw] restore_summary
    #   Information about the restore for the table.
    #   @return [Types::AwsDynamoDbTableRestoreSummary]
    #
    # @!attribute [rw] sse_description
    #   Information about the server-side encryption for the table.
    #   @return [Types::AwsDynamoDbTableSseDescription]
    #
    # @!attribute [rw] stream_specification
    #   The current DynamoDB Streams configuration for the table.
    #   @return [Types::AwsDynamoDbTableStreamSpecification]
    #
    # @!attribute [rw] table_id
    #   The identifier of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_size_bytes
    #   The total size of the table in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] table_status
    #   The current status of the table. Valid values are as follows:
    #
    #   * `ACTIVE`
    #
    #   * `ARCHIVED`
    #
    #   * `ARCHIVING`
    #
    #   * `CREATING`
    #
    #   * `DELETING`
    #
    #   * `INACCESSIBLE_ENCRYPTION_CREDENTIALS`
    #
    #   * `UPDATING`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableDetails AWS API Documentation
    #
    class AwsDynamoDbTableDetails < Struct.new(
      :attribute_definitions,
      :billing_mode_summary,
      :creation_date_time,
      :global_secondary_indexes,
      :global_table_version,
      :item_count,
      :key_schema,
      :latest_stream_arn,
      :latest_stream_label,
      :local_secondary_indexes,
      :provisioned_throughput,
      :replicas,
      :restore_summary,
      :sse_description,
      :stream_specification,
      :table_id,
      :table_name,
      :table_size_bytes,
      :table_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information abut a global secondary index for the table.
    #
    # @!attribute [rw] backfilling
    #   Whether the index is currently backfilling.
    #   @return [Boolean]
    #
    # @!attribute [rw] index_arn
    #   The ARN of the index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] index_size_bytes
    #   The total size in bytes of the index.
    #   @return [Integer]
    #
    # @!attribute [rw] index_status
    #   The current status of the index.
    #
    #   * `ACTIVE`
    #
    #   * `CREATING`
    #
    #   * `DELETING`
    #
    #   * `UPDATING`
    #   @return [String]
    #
    # @!attribute [rw] item_count
    #   The number of items in the index.
    #   @return [Integer]
    #
    # @!attribute [rw] key_schema
    #   The key schema for the index.
    #   @return [Array<Types::AwsDynamoDbTableKeySchema>]
    #
    # @!attribute [rw] projection
    #   Attributes that are copied from the table into an index.
    #   @return [Types::AwsDynamoDbTableProjection]
    #
    # @!attribute [rw] provisioned_throughput
    #   Information about the provisioned throughput settings for the
    #   indexes.
    #   @return [Types::AwsDynamoDbTableProvisionedThroughput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableGlobalSecondaryIndex AWS API Documentation
    #
    class AwsDynamoDbTableGlobalSecondaryIndex < Struct.new(
      :backfilling,
      :index_arn,
      :index_name,
      :index_size_bytes,
      :index_status,
      :item_count,
      :key_schema,
      :projection,
      :provisioned_throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # A component of the key schema for the DynamoDB table, a global
    # secondary index, or a local secondary index.
    #
    # @!attribute [rw] attribute_name
    #   The name of the key schema attribute.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of key used for the key schema attribute. Valid values are
    #   `HASH` or `RANGE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableKeySchema AWS API Documentation
    #
    class AwsDynamoDbTableKeySchema < Struct.new(
      :attribute_name,
      :key_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a local secondary index for a DynamoDB table.
    #
    # @!attribute [rw] index_arn
    #   The ARN of the index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The complete key schema for the index.
    #   @return [Array<Types::AwsDynamoDbTableKeySchema>]
    #
    # @!attribute [rw] projection
    #   Attributes that are copied from the table into the index. These are
    #   in addition to the primary key attributes and index key attributes,
    #   which are automatically projected.
    #   @return [Types::AwsDynamoDbTableProjection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableLocalSecondaryIndex AWS API Documentation
    #
    class AwsDynamoDbTableLocalSecondaryIndex < Struct.new(
      :index_arn,
      :index_name,
      :key_schema,
      :projection)
      SENSITIVE = []
      include Aws::Structure
    end

    # For global and local secondary indexes, identifies the attributes that
    # are copied from the table into the index.
    #
    # @!attribute [rw] non_key_attributes
    #   The nonkey attributes that are projected into the index. For each
    #   attribute, provide the attribute name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] projection_type
    #   The types of attributes that are projected into the index. Valid
    #   values are as follows:
    #
    #   * `ALL`
    #
    #   * `INCLUDE`
    #
    #   * `KEYS_ONLY`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableProjection AWS API Documentation
    #
    class AwsDynamoDbTableProjection < Struct.new(
      :non_key_attributes,
      :projection_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the provisioned throughput for the table or for a
    # global secondary index.
    #
    # @!attribute [rw] last_decrease_date_time
    #   Indicates when the provisioned throughput was last decreased.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] last_increase_date_time
    #   Indicates when the provisioned throughput was last increased.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] number_of_decreases_today
    #   The number of times during the current UTC calendar day that the
    #   provisioned throughput was decreased.
    #   @return [Integer]
    #
    # @!attribute [rw] read_capacity_units
    #   The maximum number of strongly consistent reads consumed per second
    #   before DynamoDB returns a `ThrottlingException`.
    #   @return [Integer]
    #
    # @!attribute [rw] write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableProvisionedThroughput AWS API Documentation
    #
    class AwsDynamoDbTableProvisionedThroughput < Struct.new(
      :last_decrease_date_time,
      :last_increase_date_time,
      :number_of_decreases_today,
      :read_capacity_units,
      :write_capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Replica-specific configuration for the provisioned throughput.
    #
    # @!attribute [rw] read_capacity_units
    #   The read capacity units for the replica.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableProvisionedThroughputOverride AWS API Documentation
    #
    class AwsDynamoDbTableProvisionedThroughputOverride < Struct.new(
      :read_capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a replica of a DynamoDB table.
    #
    # @!attribute [rw] global_secondary_indexes
    #   List of global secondary indexes for the replica.
    #   @return [Array<Types::AwsDynamoDbTableReplicaGlobalSecondaryIndex>]
    #
    # @!attribute [rw] kms_master_key_id
    #   The identifier of the KMS key that will be used for KMS encryption
    #   for the replica.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_override
    #   Replica-specific configuration for the provisioned throughput.
    #   @return [Types::AwsDynamoDbTableProvisionedThroughputOverride]
    #
    # @!attribute [rw] region_name
    #   The name of the Region where the replica is located.
    #   @return [String]
    #
    # @!attribute [rw] replica_status
    #   The current status of the replica. Valid values are as follows:
    #
    #   * `ACTIVE`
    #
    #   * `CREATING`
    #
    #   * `CREATION_FAILED`
    #
    #   * `DELETING`
    #
    #   * `UPDATING`
    #   @return [String]
    #
    # @!attribute [rw] replica_status_description
    #   Detailed information about the replica status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableReplica AWS API Documentation
    #
    class AwsDynamoDbTableReplica < Struct.new(
      :global_secondary_indexes,
      :kms_master_key_id,
      :provisioned_throughput_override,
      :region_name,
      :replica_status,
      :replica_status_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a global secondary index for a DynamoDB table
    # replica.
    #
    # @!attribute [rw] index_name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_override
    #   Replica-specific configuration for the provisioned throughput for
    #   the index.
    #   @return [Types::AwsDynamoDbTableProvisionedThroughputOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableReplicaGlobalSecondaryIndex AWS API Documentation
    #
    class AwsDynamoDbTableReplicaGlobalSecondaryIndex < Struct.new(
      :index_name,
      :provisioned_throughput_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the restore for the table.
    #
    # @!attribute [rw] source_backup_arn
    #   The ARN of the source backup from which the table was restored.
    #   @return [String]
    #
    # @!attribute [rw] source_table_arn
    #   The ARN of the source table for the backup.
    #   @return [String]
    #
    # @!attribute [rw] restore_date_time
    #   Indicates the point in time that the table was restored to.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] restore_in_progress
    #   Whether a restore is currently in progress.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableRestoreSummary AWS API Documentation
    #
    class AwsDynamoDbTableRestoreSummary < Struct.new(
      :source_backup_arn,
      :source_table_arn,
      :restore_date_time,
      :restore_in_progress)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the server-side encryption for the table.
    #
    # @!attribute [rw] inaccessible_encryption_date_time
    #   If the key is inaccessible, the date and time when DynamoDB detected
    #   that the key was inaccessible.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] sse_type
    #   The type of server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] kms_master_key_arn
    #   The ARN of the KMS key that is used for the KMS encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableSseDescription AWS API Documentation
    #
    class AwsDynamoDbTableSseDescription < Struct.new(
      :inaccessible_encryption_date_time,
      :status,
      :sse_type,
      :kms_master_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current DynamoDB Streams configuration for the table.
    #
    # @!attribute [rw] stream_enabled
    #   Indicates whether DynamoDB Streams is enabled on the table.
    #   @return [Boolean]
    #
    # @!attribute [rw] stream_view_type
    #   Determines the information that is written to the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableStreamSpecification AWS API Documentation
    #
    class AwsDynamoDbTableStreamSpecification < Struct.new(
      :stream_enabled,
      :stream_view_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Elastic IP address.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   A public IP address that is associated with the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] allocation_id
    #   The identifier that Amazon Web Services assigns to represent the
    #   allocation of the Elastic IP address for use with Amazon VPC.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The identifier that represents the association of the Elastic IP
    #   address with an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain in which to allocate the address.
    #
    #   If the address is for use with EC2 instances in a VPC, then `Domain`
    #   is `vpc`. Otherwise, `Domain` is `standard`.
    #   @return [String]
    #
    # @!attribute [rw] public_ipv_4_pool
    #   The identifier of an IP address pool. This parameter allows Amazon
    #   EC2 to select an IP address from the address pool.
    #   @return [String]
    #
    # @!attribute [rw] network_border_group
    #   The name of the location from which the Elastic IP address is
    #   advertised.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The identifier of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_owner_id
    #   The Amazon Web Services account ID of the owner of the network
    #   interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address that is associated with the Elastic IP
    #   address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2EipDetails AWS API Documentation
    #
    class AwsEc2EipDetails < Struct.new(
      :instance_id,
      :public_ip,
      :allocation_id,
      :association_id,
      :domain,
      :public_ipv_4_pool,
      :network_border_group,
      :network_interface_id,
      :network_interface_owner_id,
      :private_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Amazon EC2 instance.
    #
    # @!attribute [rw] type
    #   The instance type of the instance.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] ip_v4_addresses
    #   The IPv4 addresses associated with the instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_v6_addresses
    #   The IPv6 addresses associated with the instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_name
    #   The key name associated with the instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile_arn
    #   The IAM profile ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the instance was launched in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The identifier of the subnet that the instance was launched in.
    #   @return [String]
    #
    # @!attribute [rw] launched_at
    #   Indicates when the instance was launched.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   The identifiers of the network interfaces for the EC2 instance. The
    #   details for each network interface are in a corresponding
    #   `AwsEc2NetworkInterfacesDetails` object.
    #   @return [Array<Types::AwsEc2InstanceNetworkInterfacesDetails>]
    #
    # @!attribute [rw] virtualization_type
    #   The virtualization type of the Amazon Machine Image (AMI) required
    #   to launch the instance.
    #   @return [String]
    #
    # @!attribute [rw] metadata_options
    #   Details about the metadata options for the Amazon EC2 instance.
    #   @return [Types::AwsEc2InstanceMetadataOptions]
    #
    # @!attribute [rw] monitoring
    #   Describes the type of monitoring that’s turned on for an instance.
    #   @return [Types::AwsEc2InstanceMonitoringDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2InstanceDetails AWS API Documentation
    #
    class AwsEc2InstanceDetails < Struct.new(
      :type,
      :image_id,
      :ip_v4_addresses,
      :ip_v6_addresses,
      :key_name,
      :iam_instance_profile_arn,
      :vpc_id,
      :subnet_id,
      :launched_at,
      :network_interfaces,
      :virtualization_type,
      :metadata_options,
      :monitoring)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata options that allow you to configure and secure the Amazon EC2
    # instance.
    #
    # @!attribute [rw] http_endpoint
    #   Enables or disables the HTTP metadata endpoint on the instance.
    #   @return [String]
    #
    # @!attribute [rw] http_protocol_ipv_6
    #   Enables or disables the IPv6 endpoint for the instance metadata
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] http_put_response_hop_limit
    #   The desired HTTP PUT response hop limit for instance metadata
    #   requests. The larger the number, the further instance metadata
    #   requests can travel.
    #   @return [Integer]
    #
    # @!attribute [rw] http_tokens
    #   The state of token usage for your instance metadata requests.
    #   @return [String]
    #
    # @!attribute [rw] instance_metadata_tags
    #   Specifies whether to allow access to instance tags from the instance
    #   metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2InstanceMetadataOptions AWS API Documentation
    #
    class AwsEc2InstanceMetadataOptions < Struct.new(
      :http_endpoint,
      :http_protocol_ipv_6,
      :http_put_response_hop_limit,
      :http_tokens,
      :instance_metadata_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type of monitoring that’s turned on for an Amazon EC2 instance.
    #
    # @!attribute [rw] state
    #   Indicates whether detailed monitoring is turned on. Otherwise, basic
    #   monitoring is turned on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2InstanceMonitoringDetails AWS API Documentation
    #
    class AwsEc2InstanceMonitoringDetails < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a network interface for the Amazon EC2 instance.
    #
    # @!attribute [rw] network_interface_id
    #   The identifier of the network interface. The details are in a
    #   corresponding `AwsEc2NetworkInterfacesDetails` object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2InstanceNetworkInterfacesDetails AWS API Documentation
    #
    class AwsEc2InstanceNetworkInterfacesDetails < Struct.new(
      :network_interface_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a block device mapping for an Amazon Elastic Compute
    # Cloud (Amazon EC2) launch template.
    #
    # @!attribute [rw] device_name
    #   The device name.
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   Parameters used to automatically set up Amazon EBS volumes when the
    #   instance is launched.
    #   @return [Types::AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails]
    #
    # @!attribute [rw] no_device
    #   Omits the device from the block device mapping when an empty string
    #   is specified.
    #   @return [String]
    #
    # @!attribute [rw] virtual_name
    #   The virtual device name (ephemeralN). Instance store volumes are
    #   numbered starting from 0. An instance type with 2 available instance
    #   store volumes can specify mappings for `ephemeral0` and
    #   `ephemeral1`. The number of available instance store volumes depends
    #   on the instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails < Struct.new(
      :device_name,
      :ebs,
      :no_device,
      :virtual_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for a block device for an Amazon Elastic Block Store
    # (Amazon EBS) volume in an Amazon EC2 launch template.
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the EBS volume is deleted on instance termination.
    #   @return [Boolean]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the EBS volume is encrypted. Encrypted volumes can
    #   only be attached to instances that support Amazon EBS encryption. If
    #   you're creating a volume from a snapshot, you can't specify an
    #   encryption value.
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second (IOPS).
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of the symmetric Key Management
    #   Service (KMS) customer managed key used for encryption.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the EBS snapshot.
    #   @return [String]
    #
    # @!attribute [rw] throughput
    #   The throughput to provision for a gp3 volume, with a maximum of
    #   1,000 MiB/s.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_size
    #   The size of the volume, in GiBs. You must specify either a snapshot
    #   ID or a volume size.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   The volume type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails < Struct.new(
      :delete_on_termination,
      :encrypted,
      :iops,
      :kms_key_id,
      :snapshot_id,
      :throughput,
      :volume_size,
      :volume_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the target Capacity Reservation or Capacity
    # Reservation group in which to run an Amazon EC2 instance.
    #
    # @!attribute [rw] capacity_reservation_id
    #   The ID of the Capacity Reservation in which to run the instance.
    #   @return [String]
    #
    # @!attribute [rw] capacity_reservation_resource_group_arn
    #   The Amazon Resource Name (ARN) of the Capacity Reservation resource
    #   group in which to run the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails < Struct.new(
      :capacity_reservation_id,
      :capacity_reservation_resource_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Capacity Reservation targeting option of an Amazon EC2
    # instance.
    #
    # @!attribute [rw] capacity_reservation_preference
    #   Indicates the instance's Capacity Reservation preferences. If equal
    #   to `open`, the instance can run in any open Capacity Reservation
    #   that has matching attributes (instance type, platform, Availability
    #   Zone). If equal to `none`, the instance avoids running in a Capacity
    #   Reservation even if one is available. The instance runs in On-Demand
    #   capacity.
    #   @return [String]
    #
    # @!attribute [rw] capacity_reservation_target
    #   Specifies a target Capacity Reservation.
    #   @return [Types::AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails < Struct.new(
      :capacity_reservation_preference,
      :capacity_reservation_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the CPU options for an Amazon EC2 instance. For more
    # information, see [Optimize CPU options][1] in the *Amazon Elastic
    # Compute Cloud User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html
    #
    # @!attribute [rw] core_count
    #   The number of CPU cores for the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] threads_per_core
    #   The number of threads per CPU core. A value of `1` disables
    #   multithreading for the instance, The default value is `2`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataCpuOptionsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataCpuOptionsDetails < Struct.new(
      :core_count,
      :threads_per_core)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the credit option for CPU usage of a T2, T3, or T3a Amazon
    # EC2 instance.
    #
    # @!attribute [rw] cpu_credits
    #   The credit option for CPU usage of a T instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataCreditSpecificationDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataCreditSpecificationDetails < Struct.new(
      :cpu_credits)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information to include in an Amazon Elastic Compute Cloud (Amazon
    # EC2) launch template.
    #
    # @!attribute [rw] block_device_mapping_set
    #   Information about a block device mapping for an Amazon EC2 launch
    #   template.
    #   @return [Array<Types::AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails>]
    #
    # @!attribute [rw] capacity_reservation_specification
    #   Specifies an instance's Capacity Reservation targeting option. You
    #   can specify only one option at a time.
    #   @return [Types::AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails]
    #
    # @!attribute [rw] cpu_options
    #   Specifies the CPU options for an instance. For more information, see
    #   [Optimize CPU options][1] in the *Amazon Elastic Compute Cloud User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html
    #   @return [Types::AwsEc2LaunchTemplateDataCpuOptionsDetails]
    #
    # @!attribute [rw] credit_specification
    #   Specifies the credit option for CPU usage of a T2, T3, or T3a
    #   instance.
    #   @return [Types::AwsEc2LaunchTemplateDataCreditSpecificationDetails]
    #
    # @!attribute [rw] disable_api_stop
    #   Indicates whether to enable the instance for stop protection. For
    #   more information, see [Enable stop protection][1] in the *Amazon EC2
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_api_termination
    #   If you set this parameter to `true`, you can't terminate the
    #   instance using the Amazon EC2 console, CLI, or API. If set to
    #   `true`, you can.
    #   @return [Boolean]
    #
    # @!attribute [rw] ebs_optimized
    #   Indicates whether the instance is optimized for Amazon EBS I/O.
    #   @return [Boolean]
    #
    # @!attribute [rw] elastic_gpu_specification_set
    #   Provides details about Elastic Graphics accelerators to associate
    #   with the instance.
    #   @return [Array<Types::AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails>]
    #
    # @!attribute [rw] elastic_inference_accelerator_set
    #   The Amazon Elastic Inference accelerator for the instance.
    #   @return [Array<Types::AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails>]
    #
    # @!attribute [rw] enclave_options
    #   Indicates whether the Amazon EC2 instance is enabled for Amazon Web
    #   Services Nitro Enclaves.
    #   @return [Types::AwsEc2LaunchTemplateDataEnclaveOptionsDetails]
    #
    # @!attribute [rw] hibernation_options
    #   Specifies whether your Amazon EC2 instance is configured for
    #   hibernation.
    #   @return [Types::AwsEc2LaunchTemplateDataHibernationOptionsDetails]
    #
    # @!attribute [rw] iam_instance_profile
    #   The name or Amazon Resource Name (ARN) of an IAM instance profile.
    #   @return [Types::AwsEc2LaunchTemplateDataIamInstanceProfileDetails]
    #
    # @!attribute [rw] image_id
    #   The ID of the Amazon Machine Image (AMI).
    #   @return [String]
    #
    # @!attribute [rw] instance_initiated_shutdown_behavior
    #   Provides the options for specifying the instance initiated shutdown
    #   behavior.
    #   @return [String]
    #
    # @!attribute [rw] instance_market_options
    #   Specifies the market (purchasing) option for an instance.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails]
    #
    # @!attribute [rw] instance_requirements
    #   The attributes for the instance types. When you specify instance
    #   attributes, Amazon EC2 will identify instance types with these
    #   attributes. If you specify `InstanceRequirements`, you can't
    #   specify `InstanceType`.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceRequirementsDetails]
    #
    # @!attribute [rw] instance_type
    #   The instance type. For more information, see [Instance types][1] in
    #   the *Amazon EC2 User Guide*. If you specify `InstanceType`, you
    #   can't specify `InstanceRequirements`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] kernel_id
    #   The ID of the kernel.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair that allows users to connect to the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] license_set
    #   Specifies a license configuration for an instance.
    #   @return [Array<Types::AwsEc2LaunchTemplateDataLicenseSetDetails>]
    #
    # @!attribute [rw] maintenance_options
    #   The maintenance options of your instance.
    #   @return [Types::AwsEc2LaunchTemplateDataMaintenanceOptionsDetails]
    #
    # @!attribute [rw] metadata_options
    #   The metadata options for the instance. For more information, see
    #   [Instance metadata and user data][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    #   @return [Types::AwsEc2LaunchTemplateDataMetadataOptionsDetails]
    #
    # @!attribute [rw] monitoring
    #   The monitoring for the instance.
    #   @return [Types::AwsEc2LaunchTemplateDataMonitoringDetails]
    #
    # @!attribute [rw] network_interface_set
    #   Specifies the parameters for a network interface that is attached to
    #   the instance.
    #   @return [Array<Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails>]
    #
    # @!attribute [rw] placement
    #   Specifies the placement of an instance.
    #   @return [Types::AwsEc2LaunchTemplateDataPlacementDetails]
    #
    # @!attribute [rw] private_dns_name_options
    #   The options for the instance hostname.
    #   @return [Types::AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails]
    #
    # @!attribute [rw] ram_disk_id
    #   The ID of the RAM disk.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id_set
    #   One or more security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_set
    #   One or more security group names. For a nondefault VPC, you must use
    #   security group IDs instead. You cannot specify both a security group
    #   ID and security name in the same request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_data
    #   The user data to make available to the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataDetails < Struct.new(
      :block_device_mapping_set,
      :capacity_reservation_specification,
      :cpu_options,
      :credit_specification,
      :disable_api_stop,
      :disable_api_termination,
      :ebs_optimized,
      :elastic_gpu_specification_set,
      :elastic_inference_accelerator_set,
      :enclave_options,
      :hibernation_options,
      :iam_instance_profile,
      :image_id,
      :instance_initiated_shutdown_behavior,
      :instance_market_options,
      :instance_requirements,
      :instance_type,
      :kernel_id,
      :key_name,
      :license_set,
      :maintenance_options,
      :metadata_options,
      :monitoring,
      :network_interface_set,
      :placement,
      :private_dns_name_options,
      :ram_disk_id,
      :security_group_id_set,
      :security_group_set,
      :user_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Elastic Graphics specification for an Amazon
    # EC2 launch template.
    #
    # @!attribute [rw] type
    #   The type of Elastic Graphics accelerator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details for an Amazon Elastic Inference accelerator.
    #
    # @!attribute [rw] count
    #   The number of Elastic Inference accelerators to attach to the
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of Elastic Inference accelerator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails < Struct.new(
      :count,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether the instance is enabled for Amazon Web Services
    # Nitro Enclaves.
    #
    # @!attribute [rw] enabled
    #   If this parameter is set to `true`, the instance is enabled for
    #   Amazon Web Services Nitro Enclaves.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataEnclaveOptionsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataEnclaveOptionsDetails < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether your Amazon EC2 instance is configured for
    # hibernation.
    #
    # @!attribute [rw] configured
    #   If you set this parameter to `true`, the instance is enabled for
    #   hibernation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataHibernationOptionsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataHibernationOptionsDetails < Struct.new(
      :configured)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details for an Identity and Access Management (IAM) instance
    # profile, which is a container for an IAM role for your instance.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the instance profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataIamInstanceProfileDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataIamInstanceProfileDetails < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the market (purchasing) option for an Amazon
    # EC2 instance.
    #
    # @!attribute [rw] market_type
    #   The market type.
    #   @return [String]
    #
    # @!attribute [rw] spot_options
    #   The options for Spot Instances.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails < Struct.new(
      :market_type,
      :spot_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the market (purchasing) options for Spot
    # Instances.
    #
    # @!attribute [rw] block_duration_minutes
    #   Deprecated.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_interruption_behavior
    #   The behavior when a Spot Instance is interrupted.
    #   @return [String]
    #
    # @!attribute [rw] max_price
    #   The maximum hourly price you're willing to pay for the Spot
    #   Instances.
    #   @return [String]
    #
    # @!attribute [rw] spot_instance_type
    #   The Spot Instance request type.
    #   @return [String]
    #
    # @!attribute [rw] valid_until
    #   The end date of the request, in UTC format (YYYY-MM-DDTHH:MM:SSZ),
    #   for persistent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails < Struct.new(
      :block_duration_minutes,
      :instance_interruption_behavior,
      :max_price,
      :spot_instance_type,
      :valid_until)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon
    # Web Services Inferentia chips) on an Amazon EC2 instance.
    #
    # @!attribute [rw] max
    #   The maximum number of accelerators. If this parameter isn't
    #   specified, there's no maximum limit. To exclude accelerator-enabled
    #   instance types, set `Max` to `0`.
    #   @return [Integer]
    #
    # @!attribute [rw] min
    #   The minimum number of accelerators. If this parameter isn't
    #   specified, there's no minimum limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails < Struct.new(
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum amount of memory, in MiB, for the accelerators
    # on an Amazon EC2 instance.
    #
    # @!attribute [rw] max
    #   The maximum amount of memory, in MiB. If this parameter isn't
    #   specified, there's no maximum limit.
    #   @return [Integer]
    #
    # @!attribute [rw] min
    #   The minimum amount of memory, in MiB. If `0` is specified, there's
    #   no maximum limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails < Struct.new(
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum baseline bandwidth to Amazon Elastic Block
    # Store (Amazon EBS), in Mbps. For more information, see [Amazon
    # EBS–optimized instances ][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html
    #
    # @!attribute [rw] max
    #   The maximum baseline bandwidth, in Mbps. If this parameter is
    #   omitted, there's no maximum limit.
    #   @return [Integer]
    #
    # @!attribute [rw] min
    #   The minimum baseline bandwidth, in Mbps. If this parameter is
    #   omitted, there's no minimum limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails < Struct.new(
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes for the Amazon EC2 instance types.
    #
    # @!attribute [rw] accelerator_count
    #   The minimum and maximum number of accelerators (GPUs, FPGAs, or
    #   Amazon Web Services Inferentia chips) on an instance.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails]
    #
    # @!attribute [rw] accelerator_manufacturers
    #   Indicates whether instance types must have accelerators by specific
    #   manufacturers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_names
    #   The accelerators that must be on the instance type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_total_memory_mi_b
    #   The minimum and maximum amount of total accelerator memory, in MiB.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails]
    #
    # @!attribute [rw] accelerator_types
    #   The accelerator types that must be on the instance type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bare_metal
    #   Indicates whether bare metal instance types must be included,
    #   excluded, or required.
    #   @return [String]
    #
    # @!attribute [rw] baseline_ebs_bandwidth_mbps
    #   The minimum and maximum baseline bandwidth to Amazon EBS, in Mbps.
    #   For more information, see [Amazon EBS optimized instances][1] in the
    #   *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails]
    #
    # @!attribute [rw] burstable_performance
    #   Indicates whether burstable performance T instance types are
    #   included, excluded, or required. For more information, [Burstable
    #   performance instances][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html
    #   @return [String]
    #
    # @!attribute [rw] cpu_manufacturers
    #   The CPU manufacturers to include.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_instance_types
    #   The instance types to exclude.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_generations
    #   Indicates whether current or previous generation instance types are
    #   included.
    #   @return [Array<String>]
    #
    # @!attribute [rw] local_storage
    #   Indicates whether instance types with instance store volumes are
    #   included, excluded, or required. For more information, see [Amazon
    #   EC2 instance store][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html
    #   @return [String]
    #
    # @!attribute [rw] local_storage_types
    #   The type of local storage that is required.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_gi_b_per_v_cpu
    #   The minimum and maximum amount of memory per vCPU, in GiB.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails]
    #
    # @!attribute [rw] memory_mi_b
    #   The minimum and maximum amount of memory, in MiB.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails]
    #
    # @!attribute [rw] network_interface_count
    #   The minimum and maximum number of network interfaces.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails]
    #
    # @!attribute [rw] on_demand_max_price_percentage_over_lowest_price
    #   The price protection threshold for On-Demand Instances. This is the
    #   maximum you'll pay for an On-Demand Instance, expressed as a
    #   percentage above the least expensive current generation M, C, or R
    #   instance type with your specified attributes. When Amazon EC2
    #   selects instance types with your attributes, it excludes instance
    #   types priced above your threshold.
    #
    #   The parameter accepts an integer, which Amazon EC2 interprets as a
    #   percentage.
    #
    #   A high value, such as `999999`, turns off price protection.
    #   @return [Integer]
    #
    # @!attribute [rw] require_hibernate_support
    #   Indicates whether instance types must support hibernation for
    #   On-Demand Instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] spot_max_price_percentage_over_lowest_price
    #   The price protection threshold for Spot Instances. This is the
    #   maximum you'll pay for a Spot Instance, expressed as a percentage
    #   above the least expensive current generation M, C, or R instance
    #   type with your specified attributes. When Amazon EC2 selects
    #   instance types with your attributes, it excludes instance types
    #   priced above your threshold.
    #
    #   The parameter accepts an integer, which Amazon EC2 interprets as a
    #   percentage.
    #
    #   A high value, such as `999999`, turns off price protection.
    #   @return [Integer]
    #
    # @!attribute [rw] total_local_storage_gb
    #   The minimum and maximum amount of total local storage, in GB.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails]
    #
    # @!attribute [rw] v_cpu_count
    #   The minimum and maximum number of vCPUs.
    #   @return [Types::AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceRequirementsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceRequirementsDetails < Struct.new(
      :accelerator_count,
      :accelerator_manufacturers,
      :accelerator_names,
      :accelerator_total_memory_mi_b,
      :accelerator_types,
      :bare_metal,
      :baseline_ebs_bandwidth_mbps,
      :burstable_performance,
      :cpu_manufacturers,
      :excluded_instance_types,
      :instance_generations,
      :local_storage,
      :local_storage_types,
      :memory_gi_b_per_v_cpu,
      :memory_mi_b,
      :network_interface_count,
      :on_demand_max_price_percentage_over_lowest_price,
      :require_hibernate_support,
      :spot_max_price_percentage_over_lowest_price,
      :total_local_storage_gb,
      :v_cpu_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum amount of memory per vCPU, in GiB.
    #
    # @!attribute [rw] max
    #   The maximum amount of memory per vCPU, in GiB. If this parameter is
    #   omitted, there's no maximum limit.
    #   @return [Float]
    #
    # @!attribute [rw] min
    #   The minimum amount of memory per vCPU, in GiB. If this parameter is
    #   omitted, there's no maximum limit.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails < Struct.new(
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum amount of memory, in MiB, for an Amazon EC2
    # instance.
    #
    # @!attribute [rw] max
    #   The maximum amount of memory, in MiB.
    #   @return [Integer]
    #
    # @!attribute [rw] min
    #   The minimum amount of memory, in MiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails < Struct.new(
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum number of network interfaces to be attached to
    # an Amazon EC2 instance.
    #
    # @!attribute [rw] max
    #   The maximum number of network interfaces.
    #   @return [Integer]
    #
    # @!attribute [rw] min
    #   The minimum number of network interfaces.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails < Struct.new(
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum amount of total local storage, in GB, that an
    # Amazon EC2 instance uses.
    #
    # @!attribute [rw] max
    #   The maximum amount of total local storage, in GB.
    #   @return [Float]
    #
    # @!attribute [rw] min
    #   The minimum amount of total local storage, in GB.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails < Struct.new(
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum number of vCPUs for an Amazon EC2 instance.
    #
    # @!attribute [rw] max
    #   The maximum number of vCPUs.
    #   @return [Integer]
    #
    # @!attribute [rw] min
    #   The minimum number of vCPUs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails < Struct.new(
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the license configuration for an Amazon EC2
    # instance.
    #
    # @!attribute [rw] license_configuration_arn
    #   The Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataLicenseSetDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataLicenseSetDetails < Struct.new(
      :license_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maintenance options of an Amazon EC2 instance.
    #
    # @!attribute [rw] auto_recovery
    #   Disables the automatic recovery behavior of your instance or sets it
    #   to default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataMaintenanceOptionsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataMaintenanceOptionsDetails < Struct.new(
      :auto_recovery)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the metadata options for an Amazon EC2 instance.
    #
    # @!attribute [rw] http_endpoint
    #   Enables or disables the HTTP metadata endpoint on your instances. If
    #   the parameter is not specified, the default state is enabled, and
    #   you won't be able to access your instance metadata.
    #   @return [String]
    #
    # @!attribute [rw] http_protocol_ipv_6
    #   Enables or disables the IPv6 endpoint for the instance metadata
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] http_tokens
    #   The state of token usage for your instance metadata requests.
    #   @return [String]
    #
    # @!attribute [rw] http_put_response_hop_limit
    #   The desired HTTP PUT response hop limit for instance metadata
    #   requests. The larger the number, the further instance metadata
    #   requests can travel.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_metadata_tags
    #   When set to `enabled`, this parameter allows access to instance tags
    #   from the instance metadata. When set to `disabled`, it turns off
    #   access to instance tags from the instance metadata. For more
    #   information, see [Work with instance tags in instance metadata][1]
    #   in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataMetadataOptionsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataMetadataOptionsDetails < Struct.new(
      :http_endpoint,
      :http_protocol_ipv_6,
      :http_tokens,
      :http_put_response_hop_limit,
      :instance_metadata_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The monitoring for an Amazon EC2 instance.
    #
    # @!attribute [rw] enabled
    #   Enables detailed monitoring when `true` is specified. Otherwise,
    #   basic monitoring is enabled. For more information about detailed
    #   monitoring, see [Enable or turn off detailed monitoring for your
    #   instances][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch-new.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataMonitoringDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataMonitoringDetails < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more network interfaces to attach to an Amazon EC2 instance. If
    # you specify a network interface, you must specify security groups and
    # subnets as part of the network interface.
    #
    # @!attribute [rw] associate_carrier_ip_address
    #   Indicates whether to associate a Carrier IP address with eth0 for a
    #   new network interface. You use this option when you launch an
    #   instance in a Wavelength Zone and want to associate a Carrier IP
    #   address with the network interface. For more information, see
    #   [Carrier IP address][1] in the *Wavelength Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#provider-owned-ip
    #   @return [Boolean]
    #
    # @!attribute [rw] associate_public_ip_address
    #   Associates a public IPv4 address with eth0 for a new network
    #   interface.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the network interface is deleted when the instance
    #   is terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] device_index
    #   The device index for the network interface attachment.
    #   @return [Integer]
    #
    # @!attribute [rw] groups
    #   The IDs of one or more security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] interface_type
    #   The type of network interface.
    #   @return [String]
    #
    # @!attribute [rw] ipv_4_prefix_count
    #   The number of IPv4 prefixes to be automatically assigned to the
    #   network interface. You cannot use this option if you use the
    #   `Ipv4Prefixes` option.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_4_prefixes
    #   One or more IPv4 prefixes to be assigned to the network interface.
    #   You cannot use this option if you use the `Ipv4PrefixCount` option.
    #   @return [Array<Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails>]
    #
    # @!attribute [rw] ipv_6_address_count
    #   The number of IPv6 addresses to assign to a network interface.
    #   Amazon EC2 automatically selects the IPv6 addresses from the subnet
    #   range. You can't use this option if you use `Ipv6Addresses`.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6_addresses
    #   One or more specific IPv6 addresses from the IPv6 CIDR block range
    #   of your subnet. You can't use this option if you use
    #   `Ipv6AddressCount`.
    #   @return [Array<Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails>]
    #
    # @!attribute [rw] ipv_6_prefix_count
    #   The number of IPv6 prefixes to be automatically assigned to the
    #   network interface. You cannot use this option if you use the
    #   `Ipv6Prefix` option.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6_prefixes
    #   One or more IPv6 prefixes to be assigned to the network interface.
    #   You cannot use this option if you use the `Ipv6PrefixCount` option.
    #   @return [Array<Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails>]
    #
    # @!attribute [rw] network_card_index
    #   The index of the network card. Some instance types support multiple
    #   network cards. The primary network interface must be assigned to
    #   network card index `0`. The default is network card index `0`.
    #   @return [Integer]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The primary private IPv4 address of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   One or more private IPv4 addresses.
    #   @return [Array<Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails>]
    #
    # @!attribute [rw] secondary_private_ip_address_count
    #   The number of secondary private IPv4 addresses to assign to a
    #   network interface.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet for the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails < Struct.new(
      :associate_carrier_ip_address,
      :associate_public_ip_address,
      :delete_on_termination,
      :description,
      :device_index,
      :groups,
      :interface_type,
      :ipv_4_prefix_count,
      :ipv_4_prefixes,
      :ipv_6_address_count,
      :ipv_6_addresses,
      :ipv_6_prefix_count,
      :ipv_6_prefixes,
      :network_card_index,
      :network_interface_id,
      :private_ip_address,
      :private_ip_addresses,
      :secondary_private_ip_address_count,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details on one or more IPv4 prefixes for a network interface.
    #
    # @!attribute [rw] ipv_4_prefix
    #   The IPv4 prefix. For more information, see [Assigning prefixes to
    #   Amazon EC2 network interfaces][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails < Struct.new(
      :ipv_4_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an IPv6 address in an Amazon EC2 launch template.
    #
    # @!attribute [rw] ipv_6_address
    #   One or more specific IPv6 addresses from the IPv6 CIDR block range
    #   of your subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails < Struct.new(
      :ipv_6_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details on one or more IPv6 prefixes to be assigned to the
    # network interface.
    #
    # @!attribute [rw] ipv_6_prefix
    #   The IPv6 prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails < Struct.new(
      :ipv_6_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more private IPv4 addresses.
    #
    # @!attribute [rw] primary
    #   Indicates whether the private IPv4 address is the primary private
    #   IPv4 address. Only one IPv4 address can be designated as primary.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_ip_address
    #   The private IPv4 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails < Struct.new(
      :primary,
      :private_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the placement of an Amazon EC2 instance.
    #
    # @!attribute [rw] affinity
    #   The affinity setting for an instance on an EC2 Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the instance.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the placement group for the instance.
    #   @return [String]
    #
    # @!attribute [rw] host_id
    #   The ID of the Dedicated Host for the instance.
    #   @return [String]
    #
    # @!attribute [rw] host_resource_group_arn
    #   The Amazon Resource Name (ARN) of the host resource group in which
    #   to launch the instances.
    #   @return [String]
    #
    # @!attribute [rw] partition_number
    #   The number of the partition the instance should launch in.
    #   @return [Integer]
    #
    # @!attribute [rw] spread_domain
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] tenancy
    #   The tenancy of the instance (if the instance is running in a VPC).
    #   An instance with a tenancy of dedicated runs on single-tenant
    #   hardware.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataPlacementDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataPlacementDetails < Struct.new(
      :affinity,
      :availability_zone,
      :group_name,
      :host_id,
      :host_resource_group_arn,
      :partition_number,
      :spread_domain,
      :tenancy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the options for Amazon EC2 instance hostnames.
    #
    # @!attribute [rw] enable_resource_name_dns_aaaa_record
    #   Indicates whether to respond to DNS queries for instance hostnames
    #   with DNS AAAA records.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_resource_name_dns_a_record
    #   Indicates whether to respond to DNS queries for instance hostnames
    #   with DNS A records.
    #   @return [Boolean]
    #
    # @!attribute [rw] hostname_type
    #   The type of hostname for EC2 instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails < Struct.new(
      :enable_resource_name_dns_aaaa_record,
      :enable_resource_name_dns_a_record,
      :hostname_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the properties for creating an Amazon Elastic Compute Cloud
    # (Amazon EC2) launch template.
    #
    # @!attribute [rw] launch_template_name
    #   A name for the launch template.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   An ID for the launch template.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_data
    #   The information to include in the launch template.
    #   @return [Types::AwsEc2LaunchTemplateDataDetails]
    #
    # @!attribute [rw] default_version_number
    #   The default version of the launch template.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_version_number
    #   The latest version of the launch template.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2LaunchTemplateDetails AWS API Documentation
    #
    class AwsEc2LaunchTemplateDetails < Struct.new(
      :launch_template_name,
      :id,
      :launch_template_data,
      :default_version_number,
      :latest_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # An association between the network ACL and a subnet.
    #
    # @!attribute [rw] network_acl_association_id
    #   The identifier of the association between the network ACL and the
    #   subnet.
    #   @return [String]
    #
    # @!attribute [rw] network_acl_id
    #   The identifier of the network ACL.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The identifier of the subnet that is associated with the network
    #   ACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkAclAssociation AWS API Documentation
    #
    class AwsEc2NetworkAclAssociation < Struct.new(
      :network_acl_association_id,
      :network_acl_id,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an Amazon EC2 network access control list
    # (ACL).
    #
    # @!attribute [rw] is_default
    #   Whether this is the default network ACL for the VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_acl_id
    #   The identifier of the network ACL.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The identifier of the Amazon Web Services account that owns the
    #   network ACL.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC for the network ACL.
    #   @return [String]
    #
    # @!attribute [rw] associations
    #   Associations between the network ACL and subnets.
    #   @return [Array<Types::AwsEc2NetworkAclAssociation>]
    #
    # @!attribute [rw] entries
    #   The set of rules in the network ACL.
    #   @return [Array<Types::AwsEc2NetworkAclEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkAclDetails AWS API Documentation
    #
    class AwsEc2NetworkAclDetails < Struct.new(
      :is_default,
      :network_acl_id,
      :owner_id,
      :vpc_id,
      :associations,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule for the network ACL. Each rule allows or denies access based on
    # the IP address, traffic direction, port, and protocol.
    #
    # @!attribute [rw] cidr_block
    #   The IPV4 network range for which to deny or allow access.
    #   @return [String]
    #
    # @!attribute [rw] egress
    #   Whether the rule is an egress rule. An egress rule is a rule that
    #   applies to traffic that leaves the subnet.
    #   @return [Boolean]
    #
    # @!attribute [rw] icmp_type_code
    #   The Internet Control Message Protocol (ICMP) type and code for which
    #   to deny or allow access.
    #   @return [Types::IcmpTypeCode]
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPV6 network range for which to deny or allow access.
    #   @return [String]
    #
    # @!attribute [rw] port_range
    #   For TCP or UDP protocols, the range of ports that the rule applies
    #   to.
    #   @return [Types::PortRangeFromTo]
    #
    # @!attribute [rw] protocol
    #   The protocol that the rule applies to. To deny or allow access to
    #   all protocols, use the value `-1`.
    #   @return [String]
    #
    # @!attribute [rw] rule_action
    #   Whether the rule is used to allow access or deny access.
    #   @return [String]
    #
    # @!attribute [rw] rule_number
    #   The rule number. The rules are processed in order by their number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkAclEntry AWS API Documentation
    #
    class AwsEc2NetworkAclEntry < Struct.new(
      :cidr_block,
      :egress,
      :icmp_type_code,
      :ipv_6_cidr_block,
      :port_range,
      :protocol,
      :rule_action,
      :rule_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the network interface attachment.
    #
    # @!attribute [rw] attach_time
    #   Indicates when the attachment initiated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   The identifier of the network interface attachment
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the network interface is deleted when the instance
    #   is terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] device_index
    #   The device index of the network interface attachment on the
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_owner_id
    #   The Amazon Web Services account ID of the owner of the instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The attachment state.
    #
    #   Valid values: `attaching` \| `attached` \| `detaching` \| `detached`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceAttachment AWS API Documentation
    #
    class AwsEc2NetworkInterfaceAttachment < Struct.new(
      :attach_time,
      :attachment_id,
      :delete_on_termination,
      :device_index,
      :instance_id,
      :instance_owner_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the network interface
    #
    # @!attribute [rw] attachment
    #   The network interface attachment.
    #   @return [Types::AwsEc2NetworkInterfaceAttachment]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   Security groups for the network interface.
    #   @return [Array<Types::AwsEc2NetworkInterfaceSecurityGroup>]
    #
    # @!attribute [rw] source_dest_check
    #   Indicates whether traffic to or from the instance is validated.
    #   @return [Boolean]
    #
    # @!attribute [rw] ip_v6_addresses
    #   The IPv6 addresses associated with the network interface.
    #   @return [Array<Types::AwsEc2NetworkInterfaceIpV6AddressDetail>]
    #
    # @!attribute [rw] private_ip_addresses
    #   The private IPv4 addresses associated with the network interface.
    #   @return [Array<Types::AwsEc2NetworkInterfacePrivateIpAddressDetail>]
    #
    # @!attribute [rw] public_dns_name
    #   The public DNS name of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The address of the Elastic IP address bound to the network
    #   interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceDetails AWS API Documentation
    #
    class AwsEc2NetworkInterfaceDetails < Struct.new(
      :attachment,
      :network_interface_id,
      :security_groups,
      :source_dest_check,
      :ip_v6_addresses,
      :private_ip_addresses,
      :public_dns_name,
      :public_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an IPV6 address that is associated with the
    # network interface.
    #
    # @!attribute [rw] ip_v6_address
    #   The IPV6 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceIpV6AddressDetail AWS API Documentation
    #
    class AwsEc2NetworkInterfaceIpV6AddressDetail < Struct.new(
      :ip_v6_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a private IPv4 address that is with the
    # network interface.
    #
    # @!attribute [rw] private_ip_address
    #   The IP address.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_name
    #   The private DNS name for the IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfacePrivateIpAddressDetail AWS API Documentation
    #
    class AwsEc2NetworkInterfacePrivateIpAddressDetail < Struct.new(
      :private_ip_address,
      :private_dns_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A security group associated with the network interface.
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceSecurityGroup AWS API Documentation
    #
    class AwsEc2NetworkInterfaceSecurityGroup < Struct.new(
      :group_name,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a route table for the specified VPC.
    #
    # @!attribute [rw] association_set
    #   The associations between a route table and one or more subnets or a
    #   gateway.
    #   @return [Array<Types::AssociationSetDetails>]
    #
    # @!attribute [rw] owner_id
    #   The ID of the Amazon Web Services account that owns the route table.
    #   @return [String]
    #
    # @!attribute [rw] propagating_vgw_set
    #   Describes a virtual private gateway propagating route.
    #   @return [Array<Types::PropagatingVgwSetDetails>]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @!attribute [rw] route_set
    #   The routes in the route table.
    #   @return [Array<Types::RouteSetDetails>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2RouteTableDetails AWS API Documentation
    #
    class AwsEc2RouteTableDetails < Struct.new(
      :association_set,
      :owner_id,
      :propagating_vgw_set,
      :route_table_id,
      :route_set,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon EC2 security group.
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the owner of the security
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   \[VPC only\] The ID of the VPC for the security group.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   The inbound rules associated with the security group.
    #   @return [Array<Types::AwsEc2SecurityGroupIpPermission>]
    #
    # @!attribute [rw] ip_permissions_egress
    #   \[VPC only\] The outbound rules associated with the security group.
    #   @return [Array<Types::AwsEc2SecurityGroupIpPermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupDetails AWS API Documentation
    #
    class AwsEc2SecurityGroupDetails < Struct.new(
      :group_name,
      :group_id,
      :owner_id,
      :vpc_id,
      :ip_permissions,
      :ip_permissions_egress)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IP permission for an EC2 security group.
    #
    # @!attribute [rw] ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number.
    #
    #   \[VPC only\] Use `-1` to specify all protocols.
    #
    #   When authorizing security group rules, specifying `-1` or a protocol
    #   number other than `tcp`, `udp`, `icmp`, or `icmpv6` allows traffic
    #   on all ports, regardless of any port range you specify.
    #
    #   For `tcp`, `udp`, and `icmp`, you must specify a port range.
    #
    #   For `icmpv6`, the port range is optional. If you omit the port
    #   range, traffic for all types and codes is allowed.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 type number.
    #
    #   A value of -1 indicates all ICMP/ICMPv6 types. If you specify all
    #   ICMP/ICMPv6 types, you must specify all codes.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The end of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 code.
    #
    #   A value of `-1` indicates all ICMP/ICMPv6 codes. If you specify all
    #   ICMP/ICMPv6 types, you must specify all codes.
    #   @return [Integer]
    #
    # @!attribute [rw] user_id_group_pairs
    #   The security group and Amazon Web Services account ID pairs.
    #   @return [Array<Types::AwsEc2SecurityGroupUserIdGroupPair>]
    #
    # @!attribute [rw] ip_ranges
    #   The IPv4 ranges.
    #   @return [Array<Types::AwsEc2SecurityGroupIpRange>]
    #
    # @!attribute [rw] ipv_6_ranges
    #   The IPv6 ranges.
    #   @return [Array<Types::AwsEc2SecurityGroupIpv6Range>]
    #
    # @!attribute [rw] prefix_list_ids
    #   \[VPC only\] The prefix list IDs for an Amazon Web Services service.
    #   With outbound rules, this is the Amazon Web Services service to
    #   access through a VPC endpoint from instances associated with the
    #   security group.
    #   @return [Array<Types::AwsEc2SecurityGroupPrefixListId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupIpPermission AWS API Documentation
    #
    class AwsEc2SecurityGroupIpPermission < Struct.new(
      :ip_protocol,
      :from_port,
      :to_port,
      :user_id_group_pairs,
      :ip_ranges,
      :ipv_6_ranges,
      :prefix_list_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of IPv4 addresses.
    #
    # @!attribute [rw] cidr_ip
    #   The IPv4 CIDR range. You can specify either a CIDR range or a source
    #   security group, but not both. To specify a single IPv4 address, use
    #   the /32 prefix length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupIpRange AWS API Documentation
    #
    class AwsEc2SecurityGroupIpRange < Struct.new(
      :cidr_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of IPv6 addresses.
    #
    # @!attribute [rw] cidr_ipv_6
    #   The IPv6 CIDR range. You can specify either a CIDR range or a source
    #   security group, but not both. To specify a single IPv6 address, use
    #   the /128 prefix length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupIpv6Range AWS API Documentation
    #
    class AwsEc2SecurityGroupIpv6Range < Struct.new(
      :cidr_ipv_6)
      SENSITIVE = []
      include Aws::Structure
    end

    # A prefix list ID.
    #
    # @!attribute [rw] prefix_list_id
    #   The ID of the prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupPrefixListId AWS API Documentation
    #
    class AwsEc2SecurityGroupPrefixListId < Struct.new(
      :prefix_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A relationship between a security group and a user.
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] peering_status
    #   The status of a VPC peering connection, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of an Amazon Web Services account.
    #
    #   For a referenced security group in another VPC, the account ID of
    #   the referenced security group is returned in the response. If the
    #   referenced security group is deleted, this value is not returned.
    #
    #   \[EC2-Classic\] Required when adding or removing rules that
    #   reference a security group in another VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the referenced security group, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupUserIdGroupPair AWS API Documentation
    #
    class AwsEc2SecurityGroupUserIdGroupPair < Struct.new(
      :group_id,
      :group_name,
      :peering_status,
      :user_id,
      :vpc_id,
      :vpc_peering_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a subnet in Amazon EC2.
    #
    # @!attribute [rw] assign_ipv_6_address_on_creation
    #   Whether to assign an IPV6 address to a network interface that is
    #   created in this subnet.
    #   @return [Boolean]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the subnet.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the Availability Zone for the subnet.
    #   @return [String]
    #
    # @!attribute [rw] available_ip_address_count
    #   The number of available IPV4 addresses in the subnet. Does not
    #   include addresses for stopped instances.
    #   @return [Integer]
    #
    # @!attribute [rw] cidr_block
    #   The IPV4 CIDR block that is assigned to the subnet.
    #   @return [String]
    #
    # @!attribute [rw] default_for_az
    #   Whether this subnet is the default subnet for the Availability Zone.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_public_ip_on_launch
    #   Whether instances in this subnet receive a public IP address.
    #   @return [Boolean]
    #
    # @!attribute [rw] owner_id
    #   The identifier of the Amazon Web Services account that owns the
    #   subnet.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the subnet. Valid values are `available` or
    #   `pending`.
    #   @return [String]
    #
    # @!attribute [rw] subnet_arn
    #   The ARN of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The identifier of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that contains the subnet.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block_association_set
    #   The IPV6 CIDR blocks that are associated with the subnet.
    #   @return [Array<Types::Ipv6CidrBlockAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SubnetDetails AWS API Documentation
    #
    class AwsEc2SubnetDetails < Struct.new(
      :assign_ipv_6_address_on_creation,
      :availability_zone,
      :availability_zone_id,
      :available_ip_address_count,
      :cidr_block,
      :default_for_az,
      :map_public_ip_on_launch,
      :owner_id,
      :state,
      :subnet_arn,
      :subnet_id,
      :vpc_id,
      :ipv_6_cidr_block_association_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon Web Services Amazon EC2 Transit Gateway
    # that interconnects virtual private clouds (VPCs) and on-premises
    # networks.
    #
    # @!attribute [rw] id
    #   The ID of the transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] default_route_table_propagation
    #   Turn on or turn off automatic propagation of routes to the default
    #   propagation route table.
    #   @return [String]
    #
    # @!attribute [rw] auto_accept_shared_attachments
    #   Turn on or turn off automatic acceptance of attachment requests.
    #   @return [String]
    #
    # @!attribute [rw] default_route_table_association
    #   Turn on or turn off automatic association with the default
    #   association route table.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_cidr_blocks
    #   The transit gateway Classless Inter-Domain Routing (CIDR) blocks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] association_default_route_table_id
    #   The ID of the default association route table.
    #   @return [String]
    #
    # @!attribute [rw] propagation_default_route_table_id
    #   The ID of the default propagation route table.
    #   @return [String]
    #
    # @!attribute [rw] vpn_ecmp_support
    #   Turn on or turn off Equal Cost Multipath Protocol (ECMP) support.
    #   @return [String]
    #
    # @!attribute [rw] dns_support
    #   Turn on or turn off DNS support.
    #   @return [String]
    #
    # @!attribute [rw] multicast_support
    #   Indicates whether multicast is supported on the transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] amazon_side_asn
    #   A private Autonomous System Number (ASN) for the Amazon side of a
    #   BGP session.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2TransitGatewayDetails AWS API Documentation
    #
    class AwsEc2TransitGatewayDetails < Struct.new(
      :id,
      :description,
      :default_route_table_propagation,
      :auto_accept_shared_attachments,
      :default_route_table_association,
      :transit_gateway_cidr_blocks,
      :association_default_route_table_id,
      :propagation_default_route_table_id,
      :vpn_ecmp_support,
      :dns_support,
      :multicast_support,
      :amazon_side_asn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attachment to an Amazon EC2 volume.
    #
    # @!attribute [rw] attach_time
    #   The datetime when the attachment initiated.
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Whether the EBS volume is deleted when the EC2 instance is
    #   terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The attachment state of the volume. Valid values are as follows:
    #
    #   * `attaching`
    #
    #   * `attached`
    #
    #   * `busy`
    #
    #   * `detaching`
    #
    #   * `detached`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VolumeAttachment AWS API Documentation
    #
    class AwsEc2VolumeAttachment < Struct.new(
      :attach_time,
      :delete_on_termination,
      :instance_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an EC2 volume.
    #
    # @!attribute [rw] create_time
    #   Indicates when the volume was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The device name for the volume that is attached to the instance.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether the volume is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] size
    #   The size of the volume, in GiBs.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot from which the volume was created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The volume state. Valid values are as follows:
    #
    #   * `available`
    #
    #   * `creating`
    #
    #   * `deleted`
    #
    #   * `deleting`
    #
    #   * `error`
    #
    #   * `in-use`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of the KMS key that was used to protect the volume
    #   encryption key for the volume.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   The volume attachments.
    #   @return [Array<Types::AwsEc2VolumeAttachment>]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The volume type.
    #   @return [String]
    #
    # @!attribute [rw] volume_scan_status
    #   Indicates whether the volume was scanned or skipped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VolumeDetails AWS API Documentation
    #
    class AwsEc2VolumeDetails < Struct.new(
      :create_time,
      :device_name,
      :encrypted,
      :size,
      :snapshot_id,
      :status,
      :kms_key_id,
      :attachments,
      :volume_id,
      :volume_type,
      :volume_scan_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an EC2 VPC.
    #
    # @!attribute [rw] cidr_block_association_set
    #   Information about the IPv4 CIDR blocks associated with the VPC.
    #   @return [Array<Types::CidrBlockAssociation>]
    #
    # @!attribute [rw] ipv_6_cidr_block_association_set
    #   Information about the IPv6 CIDR blocks associated with the VPC.
    #   @return [Array<Types::Ipv6CidrBlockAssociation>]
    #
    # @!attribute [rw] dhcp_options_id
    #   The identifier of the set of Dynamic Host Configuration Protocol
    #   (DHCP) options that are associated with the VPC. If the default
    #   options are associated with the VPC, then this is default.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the VPC. Valid values are `available` or
    #   `pending`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpcDetails AWS API Documentation
    #
    class AwsEc2VpcDetails < Struct.new(
      :cidr_block_association_set,
      :ipv_6_cidr_block_association_set,
      :dhcp_options_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the service configuration for a VPC endpoint
    # service.
    #
    # @!attribute [rw] acceptance_required
    #   Whether requests from other Amazon Web Services accounts to create
    #   an endpoint to the service must first be accepted.
    #   @return [Boolean]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones where the service is available.
    #   @return [Array<String>]
    #
    # @!attribute [rw] base_endpoint_dns_names
    #   The DNS names for the service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] manages_vpc_endpoints
    #   Whether the service manages its VPC endpoints.
    #   @return [Boolean]
    #
    # @!attribute [rw] gateway_load_balancer_arns
    #   The ARNs of the Gateway Load Balancers for the service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_load_balancer_arns
    #   The ARNs of the Network Load Balancers for the service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] private_dns_name
    #   The private DNS name for the service.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The identifier of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_state
    #   The current state of the service. Valid values are as follows:
    #
    #   * `Available`
    #
    #   * `Deleted`
    #
    #   * `Deleting`
    #
    #   * `Failed`
    #
    #   * `Pending`
    #   @return [String]
    #
    # @!attribute [rw] service_type
    #   The types for the service.
    #   @return [Array<Types::AwsEc2VpcEndpointServiceServiceTypeDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpcEndpointServiceDetails AWS API Documentation
    #
    class AwsEc2VpcEndpointServiceDetails < Struct.new(
      :acceptance_required,
      :availability_zones,
      :base_endpoint_dns_names,
      :manages_vpc_endpoints,
      :gateway_load_balancer_arns,
      :network_load_balancer_arns,
      :private_dns_name,
      :service_id,
      :service_name,
      :service_state,
      :service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service type information for a VPC endpoint service.
    #
    # @!attribute [rw] service_type
    #   The type of service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpcEndpointServiceServiceTypeDetails AWS API Documentation
    #
    class AwsEc2VpcEndpointServiceServiceTypeDetails < Struct.new(
      :service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a VPC peering connection between two VPCs:
    # a requester VPC that you own and an accepter VPC with which to create
    # the connection.
    #
    # @!attribute [rw] accepter_vpc_info
    #   Information about the accepter VPC.
    #   @return [Types::AwsEc2VpcPeeringConnectionVpcInfoDetails]
    #
    # @!attribute [rw] expiration_time
    #   The time at which an unaccepted VPC peering connection will expire.
    #   @return [String]
    #
    # @!attribute [rw] requester_vpc_info
    #   Information about the requester VPC.
    #   @return [Types::AwsEc2VpcPeeringConnectionVpcInfoDetails]
    #
    # @!attribute [rw] status
    #   The status of the VPC peering connection.
    #   @return [Types::AwsEc2VpcPeeringConnectionStatusDetails]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpcPeeringConnectionDetails AWS API Documentation
    #
    class AwsEc2VpcPeeringConnectionDetails < Struct.new(
      :accepter_vpc_info,
      :expiration_time,
      :requester_vpc_info,
      :status,
      :vpc_peering_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the status of the VPC peering connection.
    #
    # @!attribute [rw] code
    #   The status of the VPC peering connection.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that provides more information about the status, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpcPeeringConnectionStatusDetails AWS API Documentation
    #
    class AwsEc2VpcPeeringConnectionStatusDetails < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a VPC in a VPC peering connection.
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 CIDR block for the VPC.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block_set
    #   Information about the IPv4 CIDR blocks for the VPC.
    #   @return [Array<Types::VpcInfoCidrBlockSetDetails>]
    #
    # @!attribute [rw] ipv_6_cidr_block_set
    #   The IPv6 CIDR block for the VPC.
    #   @return [Array<Types::VpcInfoIpv6CidrBlockSetDetails>]
    #
    # @!attribute [rw] owner_id
    #   The ID of the Amazon Web Services account that owns the VPC.
    #   @return [String]
    #
    # @!attribute [rw] peering_options
    #   Information about the VPC peering connection options for the
    #   accepter or requester VPC.
    #   @return [Types::VpcInfoPeeringOptionsDetails]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region in which the VPC is located.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpcPeeringConnectionVpcInfoDetails AWS API Documentation
    #
    class AwsEc2VpcPeeringConnectionVpcInfoDetails < Struct.new(
      :cidr_block,
      :cidr_block_set,
      :ipv_6_cidr_block_set,
      :owner_id,
      :peering_options,
      :region,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon EC2 VPN connection.
    #
    # @!attribute [rw] vpn_connection_id
    #   The identifier of the VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the VPN connection. Valid values are as
    #   follows:
    #
    #   * `available`
    #
    #   * `deleted`
    #
    #   * `deleting`
    #
    #   * `pending`
    #   @return [String]
    #
    # @!attribute [rw] customer_gateway_id
    #   The identifier of the customer gateway that is at your end of the
    #   VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] customer_gateway_configuration
    #   The configuration information for the VPN connection's customer
    #   gateway, in the native XML format.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] vpn_gateway_id
    #   The identifier of the virtual private gateway that is at the Amazon
    #   Web Services side of the VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the VPN connection. `VPN` indicates an Amazon Web
    #   Services VPN connection. `VPN-Classic` indicates an Amazon Web
    #   Services Classic VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] vgw_telemetry
    #   Information about the VPN tunnel.
    #   @return [Array<Types::AwsEc2VpnConnectionVgwTelemetryDetails>]
    #
    # @!attribute [rw] options
    #   The VPN connection options.
    #   @return [Types::AwsEc2VpnConnectionOptionsDetails]
    #
    # @!attribute [rw] routes
    #   The static routes that are associated with the VPN connection.
    #   @return [Array<Types::AwsEc2VpnConnectionRoutesDetails>]
    #
    # @!attribute [rw] transit_gateway_id
    #   The identifier of the transit gateway that is associated with the
    #   VPN connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpnConnectionDetails AWS API Documentation
    #
    class AwsEc2VpnConnectionDetails < Struct.new(
      :vpn_connection_id,
      :state,
      :customer_gateway_id,
      :customer_gateway_configuration,
      :type,
      :vpn_gateway_id,
      :category,
      :vgw_telemetry,
      :options,
      :routes,
      :transit_gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # VPN connection options.
    #
    # @!attribute [rw] static_routes_only
    #   Whether the VPN connection uses static routes only.
    #   @return [Boolean]
    #
    # @!attribute [rw] tunnel_options
    #   The VPN tunnel options.
    #   @return [Array<Types::AwsEc2VpnConnectionOptionsTunnelOptionsDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpnConnectionOptionsDetails AWS API Documentation
    #
    class AwsEc2VpnConnectionOptionsDetails < Struct.new(
      :static_routes_only,
      :tunnel_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPN tunnel options.
    #
    # @!attribute [rw] dpd_timeout_seconds
    #   The number of seconds after which a Dead Peer Detection (DPD)
    #   timeout occurs.
    #   @return [Integer]
    #
    # @!attribute [rw] ike_versions
    #   The Internet Key Exchange (IKE) versions that are permitted for the
    #   VPN tunnel.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outside_ip_address
    #   The external IP address of the VPN tunnel.
    #   @return [String]
    #
    # @!attribute [rw] phase_1_dh_group_numbers
    #   The permitted Diffie-Hellman group numbers for the VPN tunnel for
    #   phase 1 IKE negotiations.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] phase_1_encryption_algorithms
    #   The permitted encryption algorithms for the VPN tunnel for phase 1
    #   IKE negotiations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] phase_1_integrity_algorithms
    #   The permitted integrity algorithms for the VPN tunnel for phase 1
    #   IKE negotiations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] phase_1_lifetime_seconds
    #   The lifetime for phase 1 of the IKE negotiation, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] phase_2_dh_group_numbers
    #   The permitted Diffie-Hellman group numbers for the VPN tunnel for
    #   phase 2 IKE negotiations.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] phase_2_encryption_algorithms
    #   The permitted encryption algorithms for the VPN tunnel for phase 2
    #   IKE negotiations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] phase_2_integrity_algorithms
    #   The permitted integrity algorithms for the VPN tunnel for phase 2
    #   IKE negotiations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] phase_2_lifetime_seconds
    #   The lifetime for phase 2 of the IKE negotiation, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] pre_shared_key
    #   The preshared key to establish initial authentication between the
    #   virtual private gateway and the customer gateway.
    #   @return [String]
    #
    # @!attribute [rw] rekey_fuzz_percentage
    #   The percentage of the rekey window, which is determined by
    #   `RekeyMarginTimeSeconds` during which the rekey time is randomly
    #   selected.
    #   @return [Integer]
    #
    # @!attribute [rw] rekey_margin_time_seconds
    #   The margin time, in seconds, before the phase 2 lifetime expires,
    #   during which the Amazon Web Services side of the VPN connection
    #   performs an IKE rekey.
    #   @return [Integer]
    #
    # @!attribute [rw] replay_window_size
    #   The number of packets in an IKE replay window.
    #   @return [Integer]
    #
    # @!attribute [rw] tunnel_inside_cidr
    #   The range of inside IPv4 addresses for the tunnel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpnConnectionOptionsTunnelOptionsDetails AWS API Documentation
    #
    class AwsEc2VpnConnectionOptionsTunnelOptionsDetails < Struct.new(
      :dpd_timeout_seconds,
      :ike_versions,
      :outside_ip_address,
      :phase_1_dh_group_numbers,
      :phase_1_encryption_algorithms,
      :phase_1_integrity_algorithms,
      :phase_1_lifetime_seconds,
      :phase_2_dh_group_numbers,
      :phase_2_encryption_algorithms,
      :phase_2_integrity_algorithms,
      :phase_2_lifetime_seconds,
      :pre_shared_key,
      :rekey_fuzz_percentage,
      :rekey_margin_time_seconds,
      :replay_window_size,
      :tunnel_inside_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # A static routes associated with the VPN connection.
    #
    # @!attribute [rw] destination_cidr_block
    #   The CIDR block associated with the local subnet of the customer data
    #   center.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the static route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpnConnectionRoutesDetails AWS API Documentation
    #
    class AwsEc2VpnConnectionRoutesDetails < Struct.new(
      :destination_cidr_block,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the VPN tunnel.
    #
    # @!attribute [rw] accepted_route_count
    #   The number of accepted routes.
    #   @return [Integer]
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the VPN tunnel endpoint certificate.
    #   @return [String]
    #
    # @!attribute [rw] last_status_change
    #   The date and time of the last change in status.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] outside_ip_address
    #   The Internet-routable IP address of the virtual private gateway's
    #   outside interface.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPN tunnel. Valid values are `DOWN` or `UP`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If an error occurs, a description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpnConnectionVgwTelemetryDetails AWS API Documentation
    #
    class AwsEc2VpnConnectionVgwTelemetryDetails < Struct.new(
      :accepted_route_count,
      :certificate_arn,
      :last_status_change,
      :outside_ip_address,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon ECR image.
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account identifier that is associated with
    #   the registry that the image belongs to.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that the image belongs to.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture of the image. Valid values are as follows:
    #
    #   * `arm64`
    #
    #   * `i386`
    #
    #   * `x86_64`
    #   @return [String]
    #
    # @!attribute [rw] image_digest
    #   The sha256 digest of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] image_tags
    #   The list of tags that are associated with the image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_published_at
    #   The date and time when the image was pushed to the repository.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcrContainerImageDetails AWS API Documentation
    #
    class AwsEcrContainerImageDetails < Struct.new(
      :registry_id,
      :repository_name,
      :architecture,
      :image_digest,
      :image_tags,
      :image_published_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon Elastic Container Registry
    # repository.
    #
    # @!attribute [rw] arn
    #   The ARN of the repository.
    #   @return [String]
    #
    # @!attribute [rw] image_scanning_configuration
    #   The image scanning configuration for a repository.
    #   @return [Types::AwsEcrRepositoryImageScanningConfigurationDetails]
    #
    # @!attribute [rw] image_tag_mutability
    #   The tag mutability setting for the repository. Valid values are
    #   `IMMUTABLE` or `MUTABLE`.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_policy
    #   Information about the lifecycle policy for the repository.
    #   @return [Types::AwsEcrRepositoryLifecyclePolicyDetails]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_policy_text
    #   The text of the repository policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcrRepositoryDetails AWS API Documentation
    #
    class AwsEcrRepositoryDetails < Struct.new(
      :arn,
      :image_scanning_configuration,
      :image_tag_mutability,
      :lifecycle_policy,
      :repository_name,
      :repository_policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image scanning configuration for a repository.
    #
    # @!attribute [rw] scan_on_push
    #   Whether to scan images after they are pushed to a repository.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcrRepositoryImageScanningConfigurationDetails AWS API Documentation
    #
    class AwsEcrRepositoryImageScanningConfigurationDetails < Struct.new(
      :scan_on_push)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the lifecycle policy for the repository.
    #
    # @!attribute [rw] lifecycle_policy_text
    #   The text of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account identifier that is associated with
    #   the registry that contains the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcrRepositoryLifecyclePolicyDetails AWS API Documentation
    #
    class AwsEcrRepositoryLifecyclePolicyDetails < Struct.new(
      :lifecycle_policy_text,
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether to enable CloudWatch Container Insights for the ECS
    # cluster.
    #
    # @!attribute [rw] name
    #   The name of the setting. The valid value is `containerInsights`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the setting. Valid values are `disabled` or `enabled`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsClusterClusterSettingsDetails AWS API Documentation
    #
    class AwsEcsClusterClusterSettingsDetails < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The run command configuration for the cluster.
    #
    # @!attribute [rw] execute_command_configuration
    #   Contains the run command configuration for the cluster.
    #   @return [Types::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsClusterConfigurationDetails AWS API Documentation
    #
    class AwsEcsClusterConfigurationDetails < Struct.new(
      :execute_command_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the run command configuration for the cluster.
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the KMS key that is used to encrypt the data
    #   between the local client and the container.
    #   @return [String]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration for the results of the run command actions.
    #   Required if `Logging` is `NONE`.
    #   @return [Types::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails]
    #
    # @!attribute [rw] logging
    #   The log setting to use for redirecting logs for run command results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsClusterConfigurationExecuteCommandConfigurationDetails AWS API Documentation
    #
    class AwsEcsClusterConfigurationExecuteCommandConfigurationDetails < Struct.new(
      :kms_key_id,
      :log_configuration,
      :logging)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log configuration for the results of the run command actions.
    #
    # @!attribute [rw] cloud_watch_encryption_enabled
    #   Whether to enable encryption on the CloudWatch logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_log_group_name
    #   The name of the CloudWatch log group to send the logs to.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket to send logs to.
    #   @return [String]
    #
    # @!attribute [rw] s3_encryption_enabled
    #   Whether to encrypt the logs that are sent to the S3 bucket.
    #   @return [Boolean]
    #
    # @!attribute [rw] s3_key_prefix
    #   Identifies the folder in the S3 bucket to send the logs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails AWS API Documentation
    #
    class AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails < Struct.new(
      :cloud_watch_encryption_enabled,
      :cloud_watch_log_group_name,
      :s3_bucket_name,
      :s3_encryption_enabled,
      :s3_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default capacity provider strategy for the cluster. The default
    # capacity provider strategy is used when services or tasks are run
    # without a specified launch type or capacity provider strategy.
    #
    # @!attribute [rw] base
    #   The minimum number of tasks to run on the specified capacity
    #   provider.
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_provider
    #   The name of the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The relative percentage of the total number of tasks launched that
    #   should use the capacity provider.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsClusterDefaultCapacityProviderStrategyDetails AWS API Documentation
    #
    class AwsEcsClusterDefaultCapacityProviderStrategyDetails < Struct.new(
      :base,
      :capacity_provider,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Amazon ECS cluster.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] active_services_count
    #   The number of services that are running on the cluster in an
    #   `ACTIVE` state. You can view these services with the Amazon ECS [
    #   `ListServices` ][1] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServices.html
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_providers
    #   The short name of one or more capacity providers to associate with
    #   the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cluster_settings
    #   The setting to use to create the cluster. Specifically used to
    #   configure whether to enable CloudWatch Container Insights for the
    #   cluster.
    #   @return [Array<Types::AwsEcsClusterClusterSettingsDetails>]
    #
    # @!attribute [rw] configuration
    #   The run command configuration for the cluster.
    #   @return [Types::AwsEcsClusterConfigurationDetails]
    #
    # @!attribute [rw] default_capacity_provider_strategy
    #   The default capacity provider strategy for the cluster. The default
    #   capacity provider strategy is used when services or tasks are run
    #   without a specified launch type or capacity provider strategy.
    #   @return [Array<Types::AwsEcsClusterDefaultCapacityProviderStrategyDetails>]
    #
    # @!attribute [rw] cluster_name
    #   A name that you use to identify your cluster.
    #   @return [String]
    #
    # @!attribute [rw] registered_container_instances_count
    #   The number of container instances registered into the cluster. This
    #   includes container instances in both `ACTIVE` and `DRAINING` status.
    #   @return [Integer]
    #
    # @!attribute [rw] running_tasks_count
    #   The number of tasks in the cluster that are in the `RUNNING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsClusterDetails AWS API Documentation
    #
    class AwsEcsClusterDetails < Struct.new(
      :cluster_arn,
      :active_services_count,
      :capacity_providers,
      :cluster_settings,
      :configuration,
      :default_capacity_provider_strategy,
      :cluster_name,
      :registered_container_instances_count,
      :running_tasks_count,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon ECS container.
    #
    # @!attribute [rw] name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image used for the container.
    #   @return [String]
    #
    # @!attribute [rw] mount_points
    #   The mount points for data volumes in your container.
    #   @return [Array<Types::AwsMountPoint>]
    #
    # @!attribute [rw] privileged
    #   When this parameter is true, the container is given elevated
    #   privileges on the host container instance (similar to the root
    #   user).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsContainerDetails AWS API Documentation
    #
    class AwsEcsContainerDetails < Struct.new(
      :name,
      :image,
      :mount_points,
      :privileged)
      SENSITIVE = []
      include Aws::Structure
    end

    # Strategy item for the capacity provider strategy that the service
    # uses.
    #
    # @!attribute [rw] base
    #   The minimum number of tasks to run on the capacity provider. Only
    #   one strategy item can specify a value for `Base`.
    #
    #   The value must be between 0 and 100000.
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_provider
    #   The short name of the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The relative percentage of the total number of tasks that should use
    #   the capacity provider.
    #
    #   If no weight is specified, the default value is 0. At least one
    #   capacity provider must have a weight greater than 0.
    #
    #   The value can be between 0 and 1000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServiceCapacityProviderStrategyDetails AWS API Documentation
    #
    class AwsEcsServiceCapacityProviderStrategyDetails < Struct.new(
      :base,
      :capacity_provider,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether a service deployment fails if a service cannot
    # reach a steady state.
    #
    # @!attribute [rw] enable
    #   Whether to enable the deployment circuit breaker logic for the
    #   service.
    #   @return [Boolean]
    #
    # @!attribute [rw] rollback
    #   Whether to roll back the service if a service deployment fails. If
    #   rollback is enabled, when a service deployment fails, the service is
    #   rolled back to the last deployment that completed successfully.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails AWS API Documentation
    #
    class AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails < Struct.new(
      :enable,
      :rollback)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional deployment parameters for the service.
    #
    # @!attribute [rw] deployment_circuit_breaker
    #   Determines whether a service deployment fails if a service cannot
    #   reach a steady state.
    #   @return [Types::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails]
    #
    # @!attribute [rw] maximum_percent
    #   For a service that uses the rolling update (`ECS`) deployment type,
    #   the maximum number of tasks in a service that are allowed in the
    #   `RUNNING` or `PENDING` state during a deployment, and for tasks that
    #   use the EC2 launch type, when any container instances are in the
    #   `DRAINING` state. Provided as a percentage of the desired number of
    #   tasks. The default value is 200%.
    #
    #   For a service that uses the blue/green (`CODE_DEPLOY`) or `EXTERNAL`
    #   deployment types, and tasks that use the EC2 launch type, the
    #   maximum number of tasks in the service that remain in the `RUNNING`
    #   state while the container instances are in the `DRAINING` state.
    #
    #   For the Fargate launch type, the maximum percent value is not used.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_healthy_percent
    #   For a service that uses the rolling update (`ECS`) deployment type,
    #   the minimum number of tasks in a service that must remain in the
    #   `RUNNING` state during a deployment, and while any container
    #   instances are in the `DRAINING` state if the service contains tasks
    #   using the EC2 launch type. Expressed as a percentage of the desired
    #   number of tasks. The default value is 100%.
    #
    #   For a service that uses the blue/green (`CODE_DEPLOY`) or `EXTERNAL`
    #   deployment types and tasks that use the EC2 launch type, the minimum
    #   number of the tasks in the service that remain in the `RUNNING`
    #   state while the container instances are in the `DRAINING` state.
    #
    #   For the Fargate launch type, the minimum healthy percent value is
    #   not used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServiceDeploymentConfigurationDetails AWS API Documentation
    #
    class AwsEcsServiceDeploymentConfigurationDetails < Struct.new(
      :deployment_circuit_breaker,
      :maximum_percent,
      :minimum_healthy_percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the deployment controller type that the service
    # uses.
    #
    # @!attribute [rw] type
    #   The rolling update (`ECS`) deployment type replaces the current
    #   running version of the container with the latest version.
    #
    #   The blue/green (`CODE_DEPLOY`) deployment type uses the blue/green
    #   deployment model that is powered by CodeDeploy. This deployment
    #   model a new deployment of a service can be verified before
    #   production traffic is sent to it.
    #
    #   The external (`EXTERNAL`) deployment type allows the use of any
    #   third-party deployment controller for full control over the
    #   deployment process for an Amazon ECS service.
    #
    #   Valid values: `ECS` \| `CODE_DEPLOY` \| `EXTERNAL`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServiceDeploymentControllerDetails AWS API Documentation
    #
    class AwsEcsServiceDeploymentControllerDetails < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a service within an ECS cluster.
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy that the service uses.
    #   @return [Array<Types::AwsEcsServiceCapacityProviderStrategyDetails>]
    #
    # @!attribute [rw] cluster
    #   The ARN of the cluster that hosts the service.
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   Deployment parameters for the service. Includes the number of tasks
    #   that run and the order in which to start and stop tasks.
    #   @return [Types::AwsEcsServiceDeploymentConfigurationDetails]
    #
    # @!attribute [rw] deployment_controller
    #   Contains the deployment controller type that the service uses.
    #   @return [Types::AwsEcsServiceDeploymentControllerDetails]
    #
    # @!attribute [rw] desired_count
    #   The number of instantiations of the task definition to run on the
    #   service.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Whether to enable Amazon ECS managed tags for the tasks in the
    #   service.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_execute_command
    #   Whether the execute command functionality is enabled for the
    #   service.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_check_grace_period_seconds
    #   After a task starts, the amount of time in seconds that the Amazon
    #   ECS service scheduler ignores unhealthy Elastic Load Balancing
    #   target health checks.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_type
    #   The launch type that the service uses.
    #
    #   Valid values: `EC2` \| `FARGATE` \| `EXTERNAL`
    #   @return [String]
    #
    # @!attribute [rw] load_balancers
    #   Information about the load balancers that the service uses.
    #   @return [Array<Types::AwsEcsServiceLoadBalancersDetails>]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   For tasks that use the `awsvpc` networking mode, the VPC subnet and
    #   security group configuration.
    #   @return [Types::AwsEcsServiceNetworkConfigurationDetails]
    #
    # @!attribute [rw] placement_constraints
    #   The placement constraints for the tasks in the service.
    #   @return [Array<Types::AwsEcsServicePlacementConstraintsDetails>]
    #
    # @!attribute [rw] placement_strategies
    #   Information about how tasks for the service are placed.
    #   @return [Array<Types::AwsEcsServicePlacementStrategiesDetails>]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which to run the service. Only specified for
    #   tasks that are hosted on Fargate. If a platform version is not
    #   specified, the `LATEST` platform version is used by default.
    #   @return [String]
    #
    # @!attribute [rw] propagate_tags
    #   Indicates whether to propagate the tags from the task definition to
    #   the task or from the service to the task. If no value is provided,
    #   then tags are not propagated.
    #
    #   Valid values: `TASK_DEFINITION` \| `SERVICE`
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the IAM role that is associated with the service. The
    #   role allows the Amazon ECS container agent to register container
    #   instances with an Elastic Load Balancing load balancer.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_strategy
    #   The scheduling strategy to use for the service.
    #
    #   The `REPLICA` scheduling strategy places and maintains the desired
    #   number of tasks across the cluster. By default, the service
    #   scheduler spreads tasks across Availability Zones. Task placement
    #   strategies and constraints are used to customize task placement
    #   decisions.
    #
    #   The `DAEMON` scheduling strategy deploys exactly one task on each
    #   active container instance that meets all of the task placement
    #   constraints that are specified in the cluster. The service scheduler
    #   also evaluates the task placement constraints for running tasks and
    #   stops tasks that do not meet the placement constraints.
    #
    #   Valid values: `REPLICA` \| `DAEMON`
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The ARN of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service.
    #
    #   The name can contain up to 255 characters. It can use letters,
    #   numbers, underscores, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] service_registries
    #   Information about the service discovery registries to assign to the
    #   service.
    #   @return [Array<Types::AwsEcsServiceServiceRegistriesDetails>]
    #
    # @!attribute [rw] task_definition
    #   The task definition to use for tasks in the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServiceDetails AWS API Documentation
    #
    class AwsEcsServiceDetails < Struct.new(
      :capacity_provider_strategy,
      :cluster,
      :deployment_configuration,
      :deployment_controller,
      :desired_count,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :health_check_grace_period_seconds,
      :launch_type,
      :load_balancers,
      :name,
      :network_configuration,
      :placement_constraints,
      :placement_strategies,
      :platform_version,
      :propagate_tags,
      :role,
      :scheduling_strategy,
      :service_arn,
      :service_name,
      :service_registries,
      :task_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a load balancer that the service uses.
    #
    # @!attribute [rw] container_name
    #   The name of the container to associate with the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port on the container to associate with the load balancer. This
    #   port must correspond to a `containerPort` in the task definition the
    #   tasks in the service are using. For tasks that use the EC2 launch
    #   type, the container instance they are launched on must allow ingress
    #   traffic on the `hostPort` of the port mapping.
    #   @return [Integer]
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer to associate with the Amazon ECS
    #   service or task set.
    #
    #   Only specified when using a Classic Load Balancer. For an
    #   Application Load Balancer or a Network Load Balancer, the load
    #   balancer name is omitted.
    #   @return [String]
    #
    # @!attribute [rw] target_group_arn
    #   The ARN of the Elastic Load Balancing target group or groups
    #   associated with a service or task set.
    #
    #   Only specified when using an Application Load Balancer or a Network
    #   Load Balancer. For a Classic Load Balancer, the target group ARN is
    #   omitted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServiceLoadBalancersDetails AWS API Documentation
    #
    class AwsEcsServiceLoadBalancersDetails < Struct.new(
      :container_name,
      :container_port,
      :load_balancer_name,
      :target_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For tasks that use the `awsvpc` networking mode, the VPC subnet and
    # security group configuration.
    #
    # @!attribute [rw] assign_public_ip
    #   Whether the task's elastic network interface receives a public IP
    #   address. The default value is `DISABLED`.
    #
    #   Valid values: `ENABLED` \| `DISABLED`
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The IDs of the security groups associated with the task or service.
    #
    #   You can provide up to five security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   The IDs of the subnets associated with the task or service.
    #
    #   You can provide up to 16 subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails AWS API Documentation
    #
    class AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails < Struct.new(
      :assign_public_ip,
      :security_groups,
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

    # For tasks that use the `awsvpc` networking mode, the VPC subnet and
    # security group configuration.
    #
    # @!attribute [rw] aws_vpc_configuration
    #   The VPC subnet and security group configuration.
    #   @return [Types::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServiceNetworkConfigurationDetails AWS API Documentation
    #
    class AwsEcsServiceNetworkConfigurationDetails < Struct.new(
      :aws_vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A placement constraint for the tasks in the service.
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. You
    #   cannot specify an expression if the constraint type is
    #   `distinctInstance`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of constraint. Use `distinctInstance` to run each task in a
    #   particular group on a different container instance. Use `memberOf`
    #   to restrict the selection to a group of valid candidates.
    #
    #   Valid values: `distinctInstance` \| `memberOf`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServicePlacementConstraintsDetails AWS API Documentation
    #
    class AwsEcsServicePlacementConstraintsDetails < Struct.new(
      :expression,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A placement strategy that determines how to place the tasks for the
    # service.
    #
    # @!attribute [rw] field
    #   The field to apply the placement strategy against.
    #
    #   For the `spread` placement strategy, valid values are `instanceId`
    #   (or `host`, which has the same effect), or any platform or custom
    #   attribute that is applied to a container instance, such as
    #   `attribute:ecs.availability-zone`.
    #
    #   For the `binpack` placement strategy, valid values are `cpu` and
    #   `memory`.
    #
    #   For the `random` placement strategy, this attribute is not used.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of placement strategy.
    #
    #   The `random` placement strategy randomly places tasks on available
    #   candidates.
    #
    #   The `spread` placement strategy spreads placement across available
    #   candidates evenly based on the value of `Field`.
    #
    #   The `binpack` strategy places tasks on available candidates that
    #   have the least available amount of the resource that is specified in
    #   `Field`.
    #
    #   Valid values: `random` \| `spread` \| `binpack`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServicePlacementStrategiesDetails AWS API Documentation
    #
    class AwsEcsServicePlacementStrategiesDetails < Struct.new(
      :field,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a service discovery registry to assign to the
    # service.
    #
    # @!attribute [rw] container_name
    #   The container name value to use for the service discovery service.
    #
    #   If the task definition uses the `bridge` or `host` network mode, you
    #   must specify `ContainerName` and `ContainerPort`.
    #
    #   If the task definition uses the `awsvpc` network mode and a type SRV
    #   DNS record, you must specify either `ContainerName` and
    #   `ContainerPort`, or `Port` , but not both.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port value to use for the service discovery service.
    #
    #   If the task definition uses the `bridge` or `host` network mode, you
    #   must specify `ContainerName` and `ContainerPort`.
    #
    #   If the task definition uses the `awsvpc` network mode and a type SRV
    #   DNS record, you must specify either `ContainerName` and
    #   `ContainerPort`, or `Port` , but not both.
    #   @return [Integer]
    #
    # @!attribute [rw] port
    #   The port value to use for a service discovery service that specifies
    #   an SRV record. This field can be used if both the `awsvpc`awsvpc
    #   network mode and SRV records are used.
    #   @return [Integer]
    #
    # @!attribute [rw] registry_arn
    #   The ARN of the service registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsServiceServiceRegistriesDetails AWS API Documentation
    #
    class AwsEcsServiceServiceRegistriesDetails < Struct.new(
      :container_name,
      :container_port,
      :port,
      :registry_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dependency that is defined for container startup and shutdown.
    #
    # @!attribute [rw] condition
    #   The dependency condition of the dependent container. Indicates the
    #   required status of the dependent container before the current
    #   container can start. Valid values are as follows:
    #
    #   * `COMPLETE`
    #
    #   * `HEALTHY`
    #
    #   * `SUCCESS`
    #
    #   * `START`
    #   @return [String]
    #
    # @!attribute [rw] container_name
    #   The name of the dependent container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails < Struct.new(
      :condition,
      :container_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container definition that describes a container in the task.
    #
    # @!attribute [rw] command
    #   The command that is passed to the container.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units reserved for the container.
    #   @return [Integer]
    #
    # @!attribute [rw] depends_on
    #   The dependencies that are defined for container startup and
    #   shutdown.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails>]
    #
    # @!attribute [rw] disable_networking
    #   Whether to disable networking within the container.
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_search_domains
    #   A list of DNS search domains that are presented to the container.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_servers
    #   A list of DNS servers that are presented to the container.
    #   @return [Array<String>]
    #
    # @!attribute [rw] docker_labels
    #   A key-value map of labels to add to the container.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] docker_security_options
    #   A list of strings to provide custom labels for SELinux and AppArmor
    #   multi-level security systems.
    #   @return [Array<String>]
    #
    # @!attribute [rw] entry_point
    #   The entry point that is passed to the container.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment
    #   The environment variables to pass to a container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails>]
    #
    # @!attribute [rw] environment_files
    #   A list of files containing the environment variables to pass to a
    #   container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails>]
    #
    # @!attribute [rw] essential
    #   Whether the container is essential. All tasks must have at least one
    #   essential container.
    #   @return [Boolean]
    #
    # @!attribute [rw] extra_hosts
    #   A list of hostnames and IP address mappings to append to the
    #   **/etc/hosts** file on the container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails>]
    #
    # @!attribute [rw] firelens_configuration
    #   The FireLens configuration for the container. Specifies and
    #   configures a log router for container logs.
    #   @return [Types::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails]
    #
    # @!attribute [rw] health_check
    #   The container health check command and associated configuration
    #   parameters for the container.
    #   @return [Types::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails]
    #
    # @!attribute [rw] hostname
    #   The hostname to use for the container.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image used to start the container.
    #   @return [String]
    #
    # @!attribute [rw] interactive
    #   If set to true, then containerized applications can be deployed that
    #   require `stdin` or a `tty` to be allocated.
    #   @return [Boolean]
    #
    # @!attribute [rw] links
    #   A list of links for the container in the form ` container_name:alias
    #   `. Allows containers to communicate with each other without the need
    #   for port mappings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] linux_parameters
    #   Linux-specific modifications that are applied to the container, such
    #   as Linux kernel capabilities.
    #   @return [Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration specification for the container.
    #   @return [Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails]
    #
    # @!attribute [rw] memory
    #   The amount (in MiB) of memory to present to the container. If the
    #   container attempts to exceed the memory specified here, the
    #   container is shut down. The total amount of memory reserved for all
    #   containers within a task must be lower than the task memory value,
    #   if one is specified.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_reservation
    #   The soft limit (in MiB) of memory to reserve for the container.
    #   @return [Integer]
    #
    # @!attribute [rw] mount_points
    #   The mount points for the data volumes in the container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails>]
    #
    # @!attribute [rw] name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] port_mappings
    #   The list of port mappings for the container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails>]
    #
    # @!attribute [rw] privileged
    #   Whether the container is given elevated privileges on the host
    #   container instance. The elevated privileges are similar to the root
    #   user.
    #   @return [Boolean]
    #
    # @!attribute [rw] pseudo_terminal
    #   Whether to allocate a TTY to the container.
    #   @return [Boolean]
    #
    # @!attribute [rw] readonly_root_filesystem
    #   Whether the container is given read-only access to its root file
    #   system.
    #   @return [Boolean]
    #
    # @!attribute [rw] repository_credentials
    #   The private repository authentication credentials to use.
    #   @return [Types::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of a resource to assign to a container. The only
    #   supported resource is a GPU.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails>]
    #
    # @!attribute [rw] secrets
    #   The secrets to pass to the container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails>]
    #
    # @!attribute [rw] start_timeout
    #   The number of seconds to wait before giving up on resolving
    #   dependencies for a container.
    #   @return [Integer]
    #
    # @!attribute [rw] stop_timeout
    #   The number of seconds to wait before the container is stopped if it
    #   doesn't shut down normally on its own.
    #   @return [Integer]
    #
    # @!attribute [rw] system_controls
    #   A list of namespaced kernel parameters to set in the container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails>]
    #
    # @!attribute [rw] ulimits
    #   A list of ulimits to set in the container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails>]
    #
    # @!attribute [rw] user
    #   The user to use inside the container.
    #
    #   The value can use one of the following formats.
    #
    #   * ` user `
    #
    #   * ` user `:` group `
    #
    #   * ` uid `
    #
    #   * ` uid `:` gid `
    #
    #   * ` user `:` gid `
    #
    #   * ` uid `:` group `
    #   @return [String]
    #
    # @!attribute [rw] volumes_from
    #   Data volumes to mount from another container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails>]
    #
    # @!attribute [rw] working_directory
    #   The working directory in which to run commands inside the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsDetails < Struct.new(
      :command,
      :cpu,
      :depends_on,
      :disable_networking,
      :dns_search_domains,
      :dns_servers,
      :docker_labels,
      :docker_security_options,
      :entry_point,
      :environment,
      :environment_files,
      :essential,
      :extra_hosts,
      :firelens_configuration,
      :health_check,
      :hostname,
      :image,
      :interactive,
      :links,
      :linux_parameters,
      :log_configuration,
      :memory,
      :memory_reservation,
      :mount_points,
      :name,
      :port_mappings,
      :privileged,
      :pseudo_terminal,
      :readonly_root_filesystem,
      :repository_credentials,
      :resource_requirements,
      :secrets,
      :start_timeout,
      :stop_timeout,
      :system_controls,
      :ulimits,
      :user,
      :volumes_from,
      :working_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # An environment variable to pass to the container.
    #
    # @!attribute [rw] name
    #   The name of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the environment variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A file that contain environment variables to pass to a container.
    #
    # @!attribute [rw] type
    #   The type of environment file. The valid value is `s3`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The ARN of the S3 object that contains the environment variable
    #   file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A hostname and IP address mapping to append to the **/etc/hosts** file
    # on the container.
    #
    # @!attribute [rw] hostname
    #   The hostname to use in the **/etc/hosts** entry.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address to use in the **/etc/hosts** entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails < Struct.new(
      :hostname,
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The FireLens configuration for the container. The configuration
    # specifies and configures a log router for container logs.
    #
    # @!attribute [rw] options
    #   The options to use to configure the log router.
    #
    #   The valid option keys are as follows:
    #
    #   * `enable-ecs-log-metadata`. The value can be `true` or `false`.
    #
    #   * `config-file-type`. The value can be `s3` or `file`.
    #
    #   * `config-file-value`. The value is either an S3 ARN or a file path.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The log router to use. Valid values are `fluentbit` or `fluentd`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails < Struct.new(
      :options,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container health check command and associated configuration
    # parameters for the container.
    #
    # @!attribute [rw] command
    #   The command that the container runs to determine whether it is
    #   healthy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] interval
    #   The time period in seconds between each health check execution. The
    #   default value is 30 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] retries
    #   The number of times to retry a failed health check before the
    #   container is considered unhealthy. The default value is 3.
    #   @return [Integer]
    #
    # @!attribute [rw] start_period
    #   The optional grace period in seconds that allows containers time to
    #   bootstrap before failed health checks count towards the maximum
    #   number of retries.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The time period in seconds to wait for a health check to succeed
    #   before it is considered a failure. The default value is 5.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails < Struct.new(
      :command,
      :interval,
      :retries,
      :start_period,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Linux capabilities for the container that are added to or dropped
    # from the default configuration provided by Docker.
    #
    # @!attribute [rw] add
    #   The Linux capabilities for the container that are added to the
    #   default configuration provided by Docker. Valid values are as
    #   follows:
    #
    #   Valid values: `"ALL"` \| `"AUDIT_CONTROL"` \|` "AUDIT_WRITE"` \|
    #   `"BLOCK_SUSPEND"` \| `"CHOWN"` \| `"DAC_OVERRIDE"` \|
    #   `"DAC_READ_SEARCH"` \| `"FOWNER"` \| `"FSETID"` \| `"IPC_LOCK"` \|
    #   `"IPC_OWNER"` \| `"KILL"` \| `"LEASE"` \| `"LINUX_IMMUTABLE"` \|
    #   `"MAC_ADMIN"` \|` "MAC_OVERRIDE"` \| `"MKNOD"` \| `"NET_ADMIN"` \|
    #   `"NET_BIND_SERVICE"` \| `"NET_BROADCAST"` \| `"NET_RAW"` \|
    #   `"SETFCAP"` \| `"SETGID"` \| `"SETPCAP"` \| `"SETUID"` \|
    #   `"SYS_ADMIN"` \| `"SYS_BOOT"` \| `"SYS_CHROOT"` \| `"SYS_MODULE"` \|
    #   `"SYS_NICE"` \| `"SYS_PACCT"` \| `"SYS_PTRACE"` \| `"SYS_RAWIO"` \|
    #   `"SYS_RESOURCE"` \| `"SYS_TIME"` \| `"SYS_TTY_CONFIG"` \| `"SYSLOG"`
    #   \| `"WAKE_ALARM"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] drop
    #   The Linux capabilities for the container that are dropped from the
    #   default configuration provided by Docker.
    #
    #   Valid values: `"ALL"` \| `"AUDIT_CONTROL"` \|` "AUDIT_WRITE"` \|
    #   `"BLOCK_SUSPEND"` \| `"CHOWN"` \| `"DAC_OVERRIDE"` \|
    #   `"DAC_READ_SEARCH"` \| `"FOWNER"` \| `"FSETID"` \| `"IPC_LOCK"` \|
    #   `"IPC_OWNER"` \| `"KILL"` \| `"LEASE"` \| `"LINUX_IMMUTABLE"` \|
    #   `"MAC_ADMIN"` \|` "MAC_OVERRIDE"` \| `"MKNOD"` \| `"NET_ADMIN"` \|
    #   `"NET_BIND_SERVICE"` \| `"NET_BROADCAST"` \| `"NET_RAW"` \|
    #   `"SETFCAP"` \| `"SETGID"` \| `"SETPCAP"` \| `"SETUID"` \|
    #   `"SYS_ADMIN"` \| `"SYS_BOOT"` \| `"SYS_CHROOT"` \| `"SYS_MODULE"` \|
    #   `"SYS_NICE"` \| `"SYS_PACCT"` \| `"SYS_PTRACE"` \| `"SYS_RAWIO"` \|
    #   `"SYS_RESOURCE"` \| `"SYS_TIME"` \| `"SYS_TTY_CONFIG"` \| `"SYSLOG"`
    #   \| `"WAKE_ALARM"`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails < Struct.new(
      :add,
      :drop)
      SENSITIVE = []
      include Aws::Structure
    end

    # &gt;Linux-specific modifications that are applied to the container,
    # such as Linux kernel capabilities.
    #
    # @!attribute [rw] capabilities
    #   The Linux capabilities for the container that are added to or
    #   dropped from the default configuration provided by Docker.
    #   @return [Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails]
    #
    # @!attribute [rw] devices
    #   The host devices to expose to the container.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails>]
    #
    # @!attribute [rw] init_process_enabled
    #   Whether to run an `init` process inside the container that forwards
    #   signals and reaps processes.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_swap
    #   The total amount of swap memory (in MiB) that a container can use.
    #   @return [Integer]
    #
    # @!attribute [rw] shared_memory_size
    #   The value for the size (in MiB) of the **/dev/shm** volume.
    #   @return [Integer]
    #
    # @!attribute [rw] swappiness
    #   Configures the container's memory swappiness behavior. Determines
    #   how aggressively pages are swapped. The higher the value, the more
    #   aggressive the swappiness. The default is 60.
    #   @return [Integer]
    #
    # @!attribute [rw] tmpfs
    #   The container path, mount options, and size (in MiB) of the tmpfs
    #   mount.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails < Struct.new(
      :capabilities,
      :devices,
      :init_process_enabled,
      :max_swap,
      :shared_memory_size,
      :swappiness,
      :tmpfs)
      SENSITIVE = []
      include Aws::Structure
    end

    # A host device to expose to the container.
    #
    # @!attribute [rw] container_path
    #   The path inside the container at which to expose the host device.
    #   @return [String]
    #
    # @!attribute [rw] host_path
    #   The path for the device on the host container instance.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The explicit permissions to provide to the container for the device.
    #   By default, the container has permissions for read, write, and
    #   `mknod` for the device.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails < Struct.new(
      :container_path,
      :host_path,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container path, mount options, and size (in MiB) of a tmpfs mount.
    #
    # @!attribute [rw] container_path
    #   The absolute file path where the tmpfs volume is to be mounted.
    #   @return [String]
    #
    # @!attribute [rw] mount_options
    #   The list of tmpfs volume mount options.
    #
    #   Valid values: `"defaults"` \| `"ro"` \| `"rw"` \| `"suid"` \|
    #   `"nosuid"` \| `"dev"` \| `"nodev"` \|` "exec"` \| `"noexec"` \|
    #   `"sync"` \| `"async"` \| `"dirsync"` \| `"remount"` \| `"mand"` \|
    #   `"nomand"` \| `"atime"` \| `"noatime"` \| `"diratime"` \|
    #   `"nodiratime"` \| `"bind"` \| `"rbind"` \| `"unbindable"` \|
    #   `"runbindable"` \| `"private"` \| `"rprivate"` \| `"shared"` \|
    #   `"rshared"` \| `"slave"` \| `"rslave"` \| `"relatime"` \|
    #   `"norelatime"` \| `"strictatime"` \| `"nostrictatime"` \|` "mode"`
    #   \| `"uid"` \| `"gid"` \| `"nr_inodes"` \|` "nr_blocks"` \| `"mpol"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] size
    #   The maximum size (in MiB) of the tmpfs volume.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails < Struct.new(
      :container_path,
      :mount_options,
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log configuration specification for the container.
    #
    # @!attribute [rw] log_driver
    #   The log driver to use for the container.
    #
    #   Valid values on Fargate are as follows:
    #
    #   * `awsfirelens`
    #
    #   * `awslogs`
    #
    #   * `splunk`
    #
    #   Valid values on Amazon EC2 are as follows:
    #
    #   * `awsfirelens`
    #
    #   * `awslogs`
    #
    #   * `fluentd`
    #
    #   * `gelf`
    #
    #   * `journald`
    #
    #   * `json-file`
    #
    #   * `logentries`
    #
    #   * `splunk`
    #
    #   * `syslog`
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The configuration options to send to the log driver. Requires
    #   version 1.19 of the Docker Remote API or greater on your container
    #   instance.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] secret_options
    #   The secrets to pass to the log configuration.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails < Struct.new(
      :log_driver,
      :options,
      :secret_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A secret to pass to the log configuration.
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] value_from
    #   The secret to expose to the container.
    #
    #   The value is either the full ARN of the Secrets Manager secret or
    #   the full ARN of the parameter in the Systems Manager Parameter
    #   Store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails < Struct.new(
      :name,
      :value_from)
      SENSITIVE = []
      include Aws::Structure
    end

    # A mount point for the data volumes in the container.
    #
    # @!attribute [rw] container_path
    #   The path on the container to mount the host volume at.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   Whether the container has read-only access to the volume.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_volume
    #   The name of the volume to mount. Must match the name of a volume
    #   listed in `VolumeDetails` for the task definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails < Struct.new(
      :container_path,
      :read_only,
      :source_volume)
      SENSITIVE = []
      include Aws::Structure
    end

    # A port mapping for the container.
    #
    # @!attribute [rw] container_port
    #   The port number on the container that is bound to the user-specified
    #   or automatically assigned host port.
    #   @return [Integer]
    #
    # @!attribute [rw] host_port
    #   The port number on the container instance to reserve for the
    #   container.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the port mapping. The default is `tcp`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails < Struct.new(
      :container_port,
      :host_port,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # The private repository authentication credentials to use.
    #
    # @!attribute [rw] credentials_parameter
    #   The ARN of the secret that contains the private repository
    #   credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails < Struct.new(
      :credentials_parameter)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource to assign to a container.
    #
    # @!attribute [rw] type
    #   The type of resource to assign to a container. Valid values are
    #   `GPU` or `InferenceAccelerator`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the specified resource type.
    #
    #   For `GPU`, the value is the number of physical GPUs the Amazon ECS
    #   container agent reserves for the container.
    #
    #   For `InferenceAccelerator`, the value should match the `DeviceName`
    #   attribute of an entry in `InferenceAccelerators`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A secret to pass to the container.
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] value_from
    #   The secret to expose to the container. The value is either the full
    #   ARN of the Secrets Manager secret or the full ARN of the parameter
    #   in the Systems Manager Parameter Store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails < Struct.new(
      :name,
      :value_from)
      SENSITIVE = []
      include Aws::Structure
    end

    # A namespaced kernel parameter to set in the container.
    #
    # @!attribute [rw] namespace
    #   The namespaced kernel parameter for which to set a value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails < Struct.new(
      :namespace,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A ulimit to set in the container.
    #
    # @!attribute [rw] hard_limit
    #   The hard limit for the ulimit type.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The type of the ulimit. Valid values are as follows:
    #
    #   * `core`
    #
    #   * `cpu`
    #
    #   * `data`
    #
    #   * `fsize`
    #
    #   * `locks`
    #
    #   * `memlock`
    #
    #   * `msgqueue`
    #
    #   * `nice`
    #
    #   * `nofile`
    #
    #   * `nproc`
    #
    #   * `rss`
    #
    #   * `rtprio`
    #
    #   * `rttime`
    #
    #   * `sigpending`
    #
    #   * `stack`
    #   @return [String]
    #
    # @!attribute [rw] soft_limit
    #   The soft limit for the ulimit type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails < Struct.new(
      :hard_limit,
      :name,
      :soft_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data volume to mount from another container.
    #
    # @!attribute [rw] read_only
    #   Whether the container has read-only access to the volume.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_container
    #   The name of another container within the same task definition from
    #   which to mount volumes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails < Struct.new(
      :read_only,
      :source_container)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a task definition. A task definition describes the
    # container and volume definitions of an Amazon Elastic Container
    # Service task.
    #
    # @!attribute [rw] container_definitions
    #   The container definitions that describe the containers that make up
    #   the task.
    #   @return [Array<Types::AwsEcsTaskDefinitionContainerDefinitionsDetails>]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units used by the task.Valid values are as
    #   follows:
    #
    #   * `256 (.25 vCPU)`
    #
    #   * `512 (.5 vCPU)`
    #
    #   * `1024 (1 vCPU)`
    #
    #   * `2048 (2 vCPU)`
    #
    #   * `4096 (4 vCPU)`
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the task execution role that grants the container agent
    #   permission to make API calls on behalf of the container user.
    #   @return [String]
    #
    # @!attribute [rw] family
    #   The name of a family that this task definition is registered to.
    #   @return [String]
    #
    # @!attribute [rw] inference_accelerators
    #   The Elastic Inference accelerators to use for the containers in the
    #   task.
    #   @return [Array<Types::AwsEcsTaskDefinitionInferenceAcceleratorsDetails>]
    #
    # @!attribute [rw] ipc_mode
    #   The inter-process communication (IPC) resource namespace to use for
    #   the containers in the task. Valid values are as follows:
    #
    #   * `host`
    #
    #   * `none`
    #
    #   * `task`
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount (in MiB) of memory used by the task.
    #
    #   For tasks that are hosted on Amazon EC2, you can provide a
    #   task-level memory value or a container-level memory value. For tasks
    #   that are hosted on Fargate, you must use one of the [specified
    #   values][1] in the <i> <i>Amazon Elastic Container Service Developer
    #   Guide</i> </i>, which determines your range of supported values for
    #   the `Cpu` and `Memory` parameters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size
    #   @return [String]
    #
    # @!attribute [rw] network_mode
    #   The Docker networking mode to use for the containers in the task.
    #   Valid values are as follows:
    #
    #   * `awsvpc`
    #
    #   * `bridge`
    #
    #   * `host`
    #
    #   * `none`
    #   @return [String]
    #
    # @!attribute [rw] pid_mode
    #   The process namespace to use for the containers in the task. Valid
    #   values are `host` or `task`.
    #   @return [String]
    #
    # @!attribute [rw] placement_constraints
    #   The placement constraint objects to use for tasks.
    #   @return [Array<Types::AwsEcsTaskDefinitionPlacementConstraintsDetails>]
    #
    # @!attribute [rw] proxy_configuration
    #   The configuration details for the App Mesh proxy.
    #   @return [Types::AwsEcsTaskDefinitionProxyConfigurationDetails]
    #
    # @!attribute [rw] requires_compatibilities
    #   The task launch types that the task definition was validated
    #   against.
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_role_arn
    #   The short name or ARN of the IAM role that grants containers in the
    #   task permission to call Amazon Web Services API operations on your
    #   behalf.
    #   @return [String]
    #
    # @!attribute [rw] volumes
    #   The data volume definitions for the task.
    #   @return [Array<Types::AwsEcsTaskDefinitionVolumesDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionDetails < Struct.new(
      :container_definitions,
      :cpu,
      :execution_role_arn,
      :family,
      :inference_accelerators,
      :ipc_mode,
      :memory,
      :network_mode,
      :pid_mode,
      :placement_constraints,
      :proxy_configuration,
      :requires_compatibilities,
      :task_role_arn,
      :volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Elastic Inference accelerator to use for the containers in the
    # task.
    #
    # @!attribute [rw] device_name
    #   The Elastic Inference accelerator device name.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The Elastic Inference accelerator type to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionInferenceAcceleratorsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionInferenceAcceleratorsDetails < Struct.new(
      :device_name,
      :device_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A placement constraint object to use for tasks.
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of constraint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionPlacementConstraintsDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionPlacementConstraintsDetails < Struct.new(
      :expression,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for the App Mesh proxy.
    #
    # @!attribute [rw] container_name
    #   The name of the container that will serve as the App Mesh proxy.
    #   @return [String]
    #
    # @!attribute [rw] proxy_configuration_properties
    #   The set of network configuration parameters to provide to the
    #   Container Network Interface (CNI) plugin, specified as key-value
    #   pairs.
    #   @return [Array<Types::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails>]
    #
    # @!attribute [rw] type
    #   The proxy type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionProxyConfigurationDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionProxyConfigurationDetails < Struct.new(
      :container_name,
      :proxy_configuration_properties,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A network configuration parameter to provide to the Container Network
    # Interface (CNI) plugin.
    #
    # @!attribute [rw] name
    #   The name of the property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the property.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data volume to mount from another container.
    #
    # @!attribute [rw] docker_volume_configuration
    #   Information about a Docker volume.
    #   @return [Types::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails]
    #
    # @!attribute [rw] efs_volume_configuration
    #   Information about the Amazon Elastic File System file system that is
    #   used for task storage.
    #   @return [Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails]
    #
    # @!attribute [rw] host
    #   Information about a bind mount host volume.
    #   @return [Types::AwsEcsTaskDefinitionVolumesHostDetails]
    #
    # @!attribute [rw] name
    #   The name of the data volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionVolumesDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionVolumesDetails < Struct.new(
      :docker_volume_configuration,
      :efs_volume_configuration,
      :host,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Docker volume.
    #
    # @!attribute [rw] autoprovision
    #   Whether to create the Docker volume automatically if it does not
    #   already exist.
    #   @return [Boolean]
    #
    # @!attribute [rw] driver
    #   The Docker volume driver to use.
    #   @return [String]
    #
    # @!attribute [rw] driver_opts
    #   A map of Docker driver-specific options that are passed through.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] labels
    #   Custom metadata to add to the Docker volume.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] scope
    #   The scope for the Docker volume that determines its lifecycle.
    #   Docker volumes that are scoped to a task are provisioned
    #   automatically when the task starts and destroyed when the task
    #   stops. Docker volumes that are shared persist after the task stops.
    #   Valid values are `shared` or `task`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails < Struct.new(
      :autoprovision,
      :driver,
      :driver_opts,
      :labels,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_point_id
    #   The Amazon EFS access point identifier to use.
    #   @return [String]
    #
    # @!attribute [rw] iam
    #   Whether to use the Amazon ECS task IAM role defined in a task
    #   definition when mounting the Amazon EFS file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails < Struct.new(
      :access_point_id,
      :iam)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon Elastic File System file system that is
    # used for task storage.
    #
    # @!attribute [rw] authorization_config
    #   The authorization configuration details for the Amazon EFS file
    #   system.
    #   @return [Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails]
    #
    # @!attribute [rw] filesystem_id
    #   The Amazon EFS file system identifier to use.
    #   @return [String]
    #
    # @!attribute [rw] root_directory
    #   The directory within the Amazon EFS file system to mount as the root
    #   directory inside the host.
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption
    #   Whether to enable encryption for Amazon EFS data in transit between
    #   the Amazon ECS host and the Amazon EFS server.
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_port
    #   The port to use when sending encrypted data between the Amazon ECS
    #   host and the Amazon EFS server.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails < Struct.new(
      :authorization_config,
      :filesystem_id,
      :root_directory,
      :transit_encryption,
      :transit_encryption_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a bind mount host volume.
    #
    # @!attribute [rw] source_path
    #   The path on the host container instance that is presented to the
    #   container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDefinitionVolumesHostDetails AWS API Documentation
    #
    class AwsEcsTaskDefinitionVolumesHostDetails < Struct.new(
      :source_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a task in a cluster.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster that hosts the task.
    #   @return [String]
    #
    # @!attribute [rw] task_definition_arn
    #   The ARN of the task definition that creates the task.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version counter for the task.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for the time when the task was created. More
    #   specifically, it's for the time when the task entered the `PENDING`
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp for the time when the task started. More
    #   specifically, it's for the time when the task transitioned from the
    #   `PENDING` state to the `RUNNING` state.
    #   @return [String]
    #
    # @!attribute [rw] started_by
    #   The tag specified when a task is started. If an Amazon ECS service
    #   started the task, the `startedBy` parameter contains the deployment
    #   ID of that service.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name of the task group that's associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] volumes
    #   Details about the data volume that is used in a task definition.
    #   @return [Array<Types::AwsEcsTaskVolumeDetails>]
    #
    # @!attribute [rw] containers
    #   The containers that are associated with the task.
    #   @return [Array<Types::AwsEcsContainerDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskDetails AWS API Documentation
    #
    class AwsEcsTaskDetails < Struct.new(
      :cluster_arn,
      :task_definition_arn,
      :version,
      :created_at,
      :started_at,
      :started_by,
      :group,
      :volumes,
      :containers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a data volume that's used in a task
    # definition.
    #
    # @!attribute [rw] name
    #   The name of the volume. Up to 255 letters (uppercase and lowercase),
    #   numbers, underscores, and hyphens are allowed. This name is
    #   referenced in the `sourceVolume` parameter of container definition
    #   `mountPoints`.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   This parameter is specified when you use bind mount host volumes.
    #   The contents of the `host` parameter determine whether your bind
    #   mount host volume persists on the host container instance and where
    #   it's stored.
    #   @return [Types::AwsEcsTaskVolumeHostDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskVolumeDetails AWS API Documentation
    #
    class AwsEcsTaskVolumeDetails < Struct.new(
      :name,
      :host)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details on a container instance bind mount host volume.
    #
    # @!attribute [rw] source_path
    #   When the `host` parameter is used, specify a `sourcePath` to declare
    #   the path on the host container instance that's presented to the
    #   container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEcsTaskVolumeHostDetails AWS API Documentation
    #
    class AwsEcsTaskVolumeHostDetails < Struct.new(
      :source_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon EFS access point.
    #
    # @!attribute [rw] access_point_id
    #   The ID of the Amazon EFS access point.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Amazon EFS access point.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The opaque string specified in the request to ensure idempotent
    #   creation.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the Amazon EFS file system that the access point applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] posix_user
    #   The full POSIX identity, including the user ID, group ID, and
    #   secondary group IDs on the access point, that is used for all file
    #   operations by NFS clients using the access point.
    #   @return [Types::AwsEfsAccessPointPosixUserDetails]
    #
    # @!attribute [rw] root_directory
    #   The directory on the Amazon EFS file system that the access point
    #   exposes as the root directory to NFS clients using the access point.
    #   @return [Types::AwsEfsAccessPointRootDirectoryDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEfsAccessPointDetails AWS API Documentation
    #
    class AwsEfsAccessPointDetails < Struct.new(
      :access_point_id,
      :arn,
      :client_token,
      :file_system_id,
      :posix_user,
      :root_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details for all file system operations using this Amazon EFS
    # access point.
    #
    # @!attribute [rw] gid
    #   The POSIX group ID used for all file system operations using this
    #   access point.
    #   @return [String]
    #
    # @!attribute [rw] secondary_gids
    #   Secondary POSIX group IDs used for all file system operations using
    #   this access point.
    #   @return [Array<String>]
    #
    # @!attribute [rw] uid
    #   The POSIX user ID used for all file system operations using this
    #   access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEfsAccessPointPosixUserDetails AWS API Documentation
    #
    class AwsEfsAccessPointPosixUserDetails < Struct.new(
      :gid,
      :secondary_gids,
      :uid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the settings that Amazon EFS uses to create
    # the root directory when a client connects to an access point.
    #
    # @!attribute [rw] owner_gid
    #   Specifies the POSIX group ID to apply to the root directory.
    #   @return [String]
    #
    # @!attribute [rw] owner_uid
    #   Specifies the POSIX user ID to apply to the root directory.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   Specifies the POSIX permissions to apply to the root directory, in
    #   the format of an octal number representing the file's mode bits.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEfsAccessPointRootDirectoryCreationInfoDetails AWS API Documentation
    #
    class AwsEfsAccessPointRootDirectoryCreationInfoDetails < Struct.new(
      :owner_gid,
      :owner_uid,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the directory on the Amazon EFS file system
    # that the access point exposes as the root directory to NFS clients
    # using the access point.
    #
    # @!attribute [rw] creation_info
    #   Specifies the POSIX IDs and permissions to apply to the access
    #   point's root directory.
    #   @return [Types::AwsEfsAccessPointRootDirectoryCreationInfoDetails]
    #
    # @!attribute [rw] path
    #   Specifies the path on the Amazon EFS file system to expose as the
    #   root directory to NFS clients using the access point to access the
    #   EFS file system. A path can have up to four subdirectories. If the
    #   specified path does not exist, you are required to provide
    #   `CreationInfo`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEfsAccessPointRootDirectoryDetails AWS API Documentation
    #
    class AwsEfsAccessPointRootDirectoryDetails < Struct.new(
      :creation_info,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Amazon EKS cluster.
    #
    # @!attribute [rw] arn
    #   The ARN of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_data
    #   The certificate authority data for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_status
    #   The status of the cluster. Valid values are as follows:
    #
    #   * `ACTIVE`
    #
    #   * `CREATING`
    #
    #   * `DELETING`
    #
    #   * `FAILED`
    #
    #   * `PENDING`
    #
    #   * `UPDATING`
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint for the Amazon EKS API server.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   The VPC configuration used by the cluster control plane.
    #   @return [Types::AwsEksClusterResourcesVpcConfigDetails]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that provides permissions for the Amazon EKS
    #   control plane to make calls to Amazon Web Services API operations on
    #   your behalf.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The Amazon EKS server version for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The logging configuration for the cluster.
    #   @return [Types::AwsEksClusterLoggingDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEksClusterDetails AWS API Documentation
    #
    class AwsEksClusterDetails < Struct.new(
      :arn,
      :certificate_authority_data,
      :cluster_status,
      :endpoint,
      :name,
      :resources_vpc_config,
      :role_arn,
      :version,
      :logging)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a cluster logging configuration.
    #
    # @!attribute [rw] enabled
    #   Whether the logging types that are listed in `Types` are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] types
    #   A list of logging types. Valid values are as follows:
    #
    #   * `api`
    #
    #   * `audit`
    #
    #   * `authenticator`
    #
    #   * `controllerManager`
    #
    #   * `scheduler`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEksClusterLoggingClusterLoggingDetails AWS API Documentation
    #
    class AwsEksClusterLoggingClusterLoggingDetails < Struct.new(
      :enabled,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The logging configuration for an Amazon EKS cluster.
    #
    # @!attribute [rw] cluster_logging
    #   Cluster logging configurations.
    #   @return [Array<Types::AwsEksClusterLoggingClusterLoggingDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEksClusterLoggingDetails AWS API Documentation
    #
    class AwsEksClusterLoggingDetails < Struct.new(
      :cluster_logging)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the VPC configuration used by the cluster control
    # plane.
    #
    # @!attribute [rw] security_group_ids
    #   The security groups that are associated with the cross-account
    #   elastic network interfaces that are used to allow communication
    #   between your nodes and the Amazon EKS control plane.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   The subnets that are associated with the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint_public_access
    #   Indicates whether the Amazon EKS public API server endpoint is
    #   turned on. If the Amazon EKS public API server endpoint is turned
    #   off, your cluster's Kubernetes API server can only receive requests
    #   that originate from within the cluster VPC.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEksClusterResourcesVpcConfigDetails AWS API Documentation
    #
    class AwsEksClusterResourcesVpcConfigDetails < Struct.new(
      :security_group_ids,
      :subnet_ids,
      :endpoint_public_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an Elastic Beanstalk environment.
    #
    # @!attribute [rw] application_name
    #   The name of the application that is associated with the environment.
    #   @return [String]
    #
    # @!attribute [rw] cname
    #   The URL to the CNAME for this environment.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The creation date for this environment.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date when this environment was last modified.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_url
    #   For load-balanced, autoscaling environments, the URL to the load
    #   balancer. For single-instance environments, the IP address of the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_links
    #   Links to other environments in the same group.
    #   @return [Array<Types::AwsElasticBeanstalkEnvironmentEnvironmentLink>]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] option_settings
    #   The configuration setting for the environment.
    #   @return [Array<Types::AwsElasticBeanstalkEnvironmentOptionSetting>]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the platform version for the environment.
    #   @return [String]
    #
    # @!attribute [rw] solution_stack_name
    #   The name of the solution stack that is deployed with the
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current operational status of the environment. Valid values are
    #   as follows:
    #
    #   * `Aborting`
    #
    #   * `Launching`
    #
    #   * `LinkingFrom`
    #
    #   * `LinkingTo`
    #
    #   * `Ready`
    #
    #   * `Terminated`
    #
    #   * `Terminating`
    #
    #   * `Updating`
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The tier of the environment.
    #   @return [Types::AwsElasticBeanstalkEnvironmentTier]
    #
    # @!attribute [rw] version_label
    #   The application version of the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticBeanstalkEnvironmentDetails AWS API Documentation
    #
    class AwsElasticBeanstalkEnvironmentDetails < Struct.new(
      :application_name,
      :cname,
      :date_created,
      :date_updated,
      :description,
      :endpoint_url,
      :environment_arn,
      :environment_id,
      :environment_links,
      :environment_name,
      :option_settings,
      :platform_arn,
      :solution_stack_name,
      :status,
      :tier,
      :version_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a link to another environment that is in
    # the same group.
    #
    # @!attribute [rw] environment_name
    #   The name of the linked environment.
    #   @return [String]
    #
    # @!attribute [rw] link_name
    #   The name of the environment link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticBeanstalkEnvironmentEnvironmentLink AWS API Documentation
    #
    class AwsElasticBeanstalkEnvironmentEnvironmentLink < Struct.new(
      :environment_name,
      :link_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration option setting for the environment.
    #
    # @!attribute [rw] namespace
    #   The type of resource that the configuration option is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] option_name
    #   The name of the option.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the configuration setting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticBeanstalkEnvironmentOptionSetting AWS API Documentation
    #
    class AwsElasticBeanstalkEnvironmentOptionSetting < Struct.new(
      :namespace,
      :option_name,
      :resource_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the tier of the environment.
    #
    # @!attribute [rw] name
    #   The name of the environment tier. Valid values are `WebServer` or
    #   `Worker`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of environment tier. Valid values are `Standard` or
    #   `SQS/HTTP`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the environment tier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticBeanstalkEnvironmentTier AWS API Documentation
    #
    class AwsElasticBeanstalkEnvironmentTier < Struct.new(
      :name,
      :type,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Elasticsearch domain.
    #
    # @!attribute [rw] access_policies
    #   IAM policy document specifying the access policies for the new
    #   Elasticsearch domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Additional options for the domain endpoint.
    #   @return [Types::AwsElasticsearchDomainDomainEndpointOptions]
    #
    # @!attribute [rw] domain_id
    #   Unique identifier for an Elasticsearch domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of an Elasticsearch domain.
    #
    #   Domain names are unique across all domains owned by the same account
    #   within an Amazon Web Services Region.
    #
    #   Domain names must start with a lowercase letter and must be between
    #   3 and 28 characters.
    #
    #   Valid characters are a-z (lowercase only), 0-9, and – (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   Domain-specific endpoint used to submit index, search, and data
    #   upload requests to an Elasticsearch domain.
    #
    #   The endpoint is a service URL.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The key-value pair that exists if the Elasticsearch domain uses VPC
    #   endpoints.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] elasticsearch_version
    #   OpenSearch version.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_cluster_config
    #   Information about an OpenSearch cluster configuration.
    #   @return [Types::AwsElasticsearchDomainElasticsearchClusterConfigDetails]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Details about the configuration for encryption at rest.
    #   @return [Types::AwsElasticsearchDomainEncryptionAtRestOptions]
    #
    # @!attribute [rw] log_publishing_options
    #   Configures the CloudWatch Logs to publish for the Elasticsearch
    #   domain.
    #   @return [Types::AwsElasticsearchDomainLogPublishingOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Details about the configuration for node-to-node encryption.
    #   @return [Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] service_software_options
    #   Information about the status of a domain relative to the latest
    #   service software.
    #   @return [Types::AwsElasticsearchDomainServiceSoftwareOptions]
    #
    # @!attribute [rw] vpc_options
    #   Information that OpenSearch derives based on `VPCOptions` for the
    #   domain.
    #   @return [Types::AwsElasticsearchDomainVPCOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainDetails AWS API Documentation
    #
    class AwsElasticsearchDomainDetails < Struct.new(
      :access_policies,
      :domain_endpoint_options,
      :domain_id,
      :domain_name,
      :endpoint,
      :endpoints,
      :elasticsearch_version,
      :elasticsearch_cluster_config,
      :encryption_at_rest_options,
      :log_publishing_options,
      :node_to_node_encryption_options,
      :service_software_options,
      :vpc_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options for the domain endpoint, such as whether to require
    # HTTPS for all traffic.
    #
    # @!attribute [rw] enforce_https
    #   Whether to require that all traffic to the domain arrive over HTTPS.
    #   @return [Boolean]
    #
    # @!attribute [rw] tls_security_policy
    #   The TLS security policy to apply to the HTTPS endpoint of the
    #   OpenSearch domain.
    #
    #   Valid values:
    #
    #   * `Policy-Min-TLS-1-0-2019-07`, which supports TLSv1.0 and higher
    #
    #   * `Policy-Min-TLS-1-2-2019-07`, which only supports TLSv1.2
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainDomainEndpointOptions AWS API Documentation
    #
    class AwsElasticsearchDomainDomainEndpointOptions < Struct.new(
      :enforce_https,
      :tls_security_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # details about the configuration of an OpenSearch cluster.
    #
    # @!attribute [rw] dedicated_master_count
    #   The number of instances to use for the master node. If this
    #   attribute is specified, then `DedicatedMasterEnabled` must be
    #   `true`.
    #   @return [Integer]
    #
    # @!attribute [rw] dedicated_master_enabled
    #   Whether to use a dedicated master node for the Elasticsearch domain.
    #   A dedicated master node performs cluster management tasks, but
    #   doesn't hold data or respond to data upload requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] dedicated_master_type
    #   The hardware configuration of the computer that hosts the dedicated
    #   master node. A sample value is `m3.medium.elasticsearch`. If this
    #   attribute is specified, then `DedicatedMasterEnabled` must be
    #   `true`.
    #
    #   For a list of valid values, see [Supported instance types in Amazon
    #   OpenSearch Service][1] in the *Amazon OpenSearch Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/supported-instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of data nodes to use in the Elasticsearch domain.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type for your data nodes. For example,
    #   `m3.medium.elasticsearch`.
    #
    #   For a list of valid values, see [Supported instance types in Amazon
    #   OpenSearch Service][1] in the *Amazon OpenSearch Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/supported-instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] zone_awareness_config
    #   Configuration options for zone awareness. Provided if
    #   `ZoneAwarenessEnabled` is `true`.
    #   @return [Types::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails]
    #
    # @!attribute [rw] zone_awareness_enabled
    #   Whether to enable zone awareness for the Elasticsearch domain. When
    #   zone awareness is enabled, OpenSearch allocates the cluster's nodes
    #   and replica index shards across Availability Zones in the same
    #   Region. This prevents data loss and minimizes downtime if a node or
    #   data center fails.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainElasticsearchClusterConfigDetails AWS API Documentation
    #
    class AwsElasticsearchDomainElasticsearchClusterConfigDetails < Struct.new(
      :dedicated_master_count,
      :dedicated_master_enabled,
      :dedicated_master_type,
      :instance_count,
      :instance_type,
      :zone_awareness_config,
      :zone_awareness_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration options for zone awareness.
    #
    # @!attribute [rw] availability_zone_count
    #   he number of Availability Zones that the domain uses. Valid values
    #   are 2 and 3. The default is 2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails AWS API Documentation
    #
    class AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails < Struct.new(
      :availability_zone_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the configuration for encryption at rest.
    #
    # @!attribute [rw] enabled
    #   Whether encryption at rest is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID. Takes the form
    #   `1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainEncryptionAtRestOptions AWS API Documentation
    #
    class AwsElasticsearchDomainEncryptionAtRestOptions < Struct.new(
      :enabled,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # configures the CloudWatch Logs to publish for the Elasticsearch
    # domain.
    #
    # @!attribute [rw] index_slow_logs
    #   Configures the OpenSearch index logs publishing.
    #   @return [Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig]
    #
    # @!attribute [rw] search_slow_logs
    #   Configures the OpenSearch search slow log publishing.
    #   @return [Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig]
    #
    # @!attribute [rw] audit_logs
    #   The log configuration.
    #   @return [Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainLogPublishingOptions AWS API Documentation
    #
    class AwsElasticsearchDomainLogPublishingOptions < Struct.new(
      :index_slow_logs,
      :search_slow_logs,
      :audit_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log configuration.
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   The ARN of the CloudWatch Logs group to publish the logs to.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the log publishing is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainLogPublishingOptionsLogConfig AWS API Documentation
    #
    class AwsElasticsearchDomainLogPublishingOptionsLogConfig < Struct.new(
      :cloud_watch_logs_log_group_arn,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the configuration for node-to-node encryption.
    #
    # @!attribute [rw] enabled
    #   Whether node-to-node encryption is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainNodeToNodeEncryptionOptions AWS API Documentation
    #
    class AwsElasticsearchDomainNodeToNodeEncryptionOptions < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the state of the domain relative to the latest
    # service software.
    #
    # @!attribute [rw] automated_update_date
    #   The epoch time when the deployment window closes for required
    #   updates. After this time, Amazon OpenSearch Service schedules the
    #   software upgrade automatically.
    #   @return [String]
    #
    # @!attribute [rw] cancellable
    #   Whether a request to update the domain can be canceled.
    #   @return [Boolean]
    #
    # @!attribute [rw] current_version
    #   The version of the service software that is currently installed on
    #   the domain.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A more detailed description of the service software status.
    #   @return [String]
    #
    # @!attribute [rw] new_version
    #   The most recent version of the service software.
    #   @return [String]
    #
    # @!attribute [rw] update_available
    #   Whether a service software update is available for the domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_status
    #   The status of the service software update. Valid values are as
    #   follows:
    #
    #   * `COMPLETED`
    #
    #   * `ELIGIBLE`
    #
    #   * `IN_PROGRESS`
    #
    #   * `NOT_ELIGIBLE`
    #
    #   * `PENDING_UPDATE`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainServiceSoftwareOptions AWS API Documentation
    #
    class AwsElasticsearchDomainServiceSoftwareOptions < Struct.new(
      :automated_update_date,
      :cancellable,
      :current_version,
      :description,
      :new_version,
      :update_available,
      :update_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information that OpenSearch derives based on `VPCOptions` for the
    # domain.
    #
    # @!attribute [rw] availability_zones
    #   The list of Availability Zones associated with the VPC subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The list of security group IDs associated with the VPC endpoints for
    #   the domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs associated with the VPC endpoints for the
    #   domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   ID for the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainVPCOptions AWS API Documentation
    #
    class AwsElasticsearchDomainVPCOptions < Struct.new(
      :availability_zones,
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a stickiness policy that was created using
    # `CreateAppCookieStickinessPolicy`.
    #
    # @!attribute [rw] cookie_name
    #   The name of the application cookie used for stickiness.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The mnemonic name for the policy being created. The name must be
    #   unique within the set of policies for the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbAppCookieStickinessPolicy AWS API Documentation
    #
    class AwsElbAppCookieStickinessPolicy < Struct.new(
      :cookie_name,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a stickiness policy that was created using
    # `CreateLBCookieStickinessPolicy`.
    #
    # @!attribute [rw] cookie_expiration_period
    #   The amount of time, in seconds, after which the cookie is considered
    #   stale. If an expiration period is not specified, the stickiness
    #   session lasts for the duration of the browser session.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy. The name must be unique within the set of
    #   policies for the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLbCookieStickinessPolicy AWS API Documentation
    #
    class AwsElbLbCookieStickinessPolicy < Struct.new(
      :cookie_expiration_period,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the access log configuration for the load
    # balancer.
    #
    # @!attribute [rw] emit_interval
    #   The interval in minutes for publishing the access logs.
    #
    #   You can publish access logs either every 5 minutes or every 60
    #   minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Indicates whether access logs are enabled for the load balancer.
    #   @return [Boolean]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket where the access logs are stored.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_prefix
    #   The logical hierarchy that was created for the S3 bucket.
    #
    #   If a prefix is not provided, the log is placed at the root level of
    #   the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerAccessLog AWS API Documentation
    #
    class AwsElbLoadBalancerAccessLog < Struct.new(
      :emit_interval,
      :enabled,
      :s3_bucket_name,
      :s3_bucket_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about additional attributes for the load
    # balancer.
    #
    # @!attribute [rw] key
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerAdditionalAttribute AWS API Documentation
    #
    class AwsElbLoadBalancerAdditionalAttribute < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains attributes for the load balancer.
    #
    # @!attribute [rw] access_log
    #   Information about the access log configuration for the load
    #   balancer.
    #
    #   If the access log is enabled, the load balancer captures detailed
    #   information about all requests. It delivers the information to a
    #   specified S3 bucket.
    #   @return [Types::AwsElbLoadBalancerAccessLog]
    #
    # @!attribute [rw] connection_draining
    #   Information about the connection draining configuration for the load
    #   balancer.
    #
    #   If connection draining is enabled, the load balancer allows existing
    #   requests to complete before it shifts traffic away from a
    #   deregistered or unhealthy instance.
    #   @return [Types::AwsElbLoadBalancerConnectionDraining]
    #
    # @!attribute [rw] connection_settings
    #   Connection settings for the load balancer.
    #
    #   If an idle timeout is configured, the load balancer allows
    #   connections to remain idle for the specified duration. When a
    #   connection is idle, no data is sent over the connection.
    #   @return [Types::AwsElbLoadBalancerConnectionSettings]
    #
    # @!attribute [rw] cross_zone_load_balancing
    #   Cross-zone load balancing settings for the load balancer.
    #
    #   If cross-zone load balancing is enabled, the load balancer routes
    #   the request traffic evenly across all instances regardless of the
    #   Availability Zones.
    #   @return [Types::AwsElbLoadBalancerCrossZoneLoadBalancing]
    #
    # @!attribute [rw] additional_attributes
    #   Any additional attributes for a load balancer.
    #   @return [Array<Types::AwsElbLoadBalancerAdditionalAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerAttributes AWS API Documentation
    #
    class AwsElbLoadBalancerAttributes < Struct.new(
      :access_log,
      :connection_draining,
      :connection_settings,
      :cross_zone_load_balancing,
      :additional_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the configuration of an EC2 instance for
    # the load balancer.
    #
    # @!attribute [rw] instance_port
    #   The port on which the EC2 instance is listening.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_names
    #   The names of the policies that are enabled for the EC2 instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerBackendServerDescription AWS API Documentation
    #
    class AwsElbLoadBalancerBackendServerDescription < Struct.new(
      :instance_port,
      :policy_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the connection draining configuration for
    # the load balancer.
    #
    # @!attribute [rw] enabled
    #   Indicates whether connection draining is enabled for the load
    #   balancer.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout
    #   The maximum time, in seconds, to keep the existing connections open
    #   before deregistering the instances.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerConnectionDraining AWS API Documentation
    #
    class AwsElbLoadBalancerConnectionDraining < Struct.new(
      :enabled,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains connection settings for the load balancer.
    #
    # @!attribute [rw] idle_timeout
    #   The time, in seconds, that the connection can be idle (no data is
    #   sent over the connection) before it is closed by the load balancer.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerConnectionSettings AWS API Documentation
    #
    class AwsElbLoadBalancerConnectionSettings < Struct.new(
      :idle_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains cross-zone load balancing settings for the load balancer.
    #
    # @!attribute [rw] enabled
    #   Indicates whether cross-zone load balancing is enabled for the load
    #   balancer.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerCrossZoneLoadBalancing AWS API Documentation
    #
    class AwsElbLoadBalancerCrossZoneLoadBalancing < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a Classic Load Balancer.
    #
    # @!attribute [rw] availability_zones
    #   The list of Availability Zones for the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backend_server_descriptions
    #   Information about the configuration of the EC2 instances.
    #   @return [Array<Types::AwsElbLoadBalancerBackendServerDescription>]
    #
    # @!attribute [rw] canonical_hosted_zone_name
    #   The name of the Amazon Route 53 hosted zone for the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] canonical_hosted_zone_name_id
    #   The ID of the Amazon Route 53 hosted zone for the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Indicates when the load balancer was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] health_check
    #   Information about the health checks that are conducted on the load
    #   balancer.
    #   @return [Types::AwsElbLoadBalancerHealthCheck]
    #
    # @!attribute [rw] instances
    #   List of EC2 instances for the load balancer.
    #   @return [Array<Types::AwsElbLoadBalancerInstance>]
    #
    # @!attribute [rw] listener_descriptions
    #   The policies that are enabled for the load balancer listeners.
    #   @return [Array<Types::AwsElbLoadBalancerListenerDescription>]
    #
    # @!attribute [rw] load_balancer_attributes
    #   The attributes for a load balancer.
    #   @return [Types::AwsElbLoadBalancerAttributes]
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   The policies for a load balancer.
    #   @return [Types::AwsElbLoadBalancerPolicies]
    #
    # @!attribute [rw] scheme
    #   The type of load balancer. Only provided if the load balancer is in
    #   a VPC.
    #
    #   If `Scheme` is `internet-facing`, the load balancer has a public DNS
    #   name that resolves to a public IP address.
    #
    #   If `Scheme` is `internal`, the load balancer has a public DNS name
    #   that resolves to a private IP address.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups for the load balancer. Only provided if the load
    #   balancer is in a VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_security_group
    #   Information about the security group for the load balancer. This is
    #   the security group that is used for inbound rules.
    #   @return [Types::AwsElbLoadBalancerSourceSecurityGroup]
    #
    # @!attribute [rw] subnets
    #   The list of subnet identifiers for the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC for the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerDetails AWS API Documentation
    #
    class AwsElbLoadBalancerDetails < Struct.new(
      :availability_zones,
      :backend_server_descriptions,
      :canonical_hosted_zone_name,
      :canonical_hosted_zone_name_id,
      :created_time,
      :dns_name,
      :health_check,
      :instances,
      :listener_descriptions,
      :load_balancer_attributes,
      :load_balancer_name,
      :policies,
      :scheme,
      :security_groups,
      :source_security_group,
      :subnets,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the health checks that are conducted on the
    # load balancer.
    #
    # @!attribute [rw] healthy_threshold
    #   The number of consecutive health check successes required before the
    #   instance is moved to the Healthy state.
    #   @return [Integer]
    #
    # @!attribute [rw] interval
    #   The approximate interval, in seconds, between health checks of an
    #   individual instance.
    #   @return [Integer]
    #
    # @!attribute [rw] target
    #   The instance that is being checked. The target specifies the
    #   protocol and port. The available protocols are TCP, SSL, HTTP, and
    #   HTTPS. The range of valid ports is 1 through 65535.
    #
    #   For the HTTP and HTTPS protocols, the target also specifies the ping
    #   path.
    #
    #   For the TCP protocol, the target is specified as `TCP: <port> `.
    #
    #   For the SSL protocol, the target is specified as `SSL.<port> `.
    #
    #   For the HTTP and HTTPS protocols, the target is specified as `
    #   <protocol>:<port>/<path to ping> `.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time, in seconds, during which no response means a
    #   failed health check.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold
    #   The number of consecutive health check failures that must occur
    #   before the instance is moved to the Unhealthy state.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerHealthCheck AWS API Documentation
    #
    class AwsElbLoadBalancerHealthCheck < Struct.new(
      :healthy_threshold,
      :interval,
      :target,
      :timeout,
      :unhealthy_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an EC2 instance for a load balancer.
    #
    # @!attribute [rw] instance_id
    #   The instance identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerInstance AWS API Documentation
    #
    class AwsElbLoadBalancerInstance < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a load balancer listener.
    #
    # @!attribute [rw] instance_port
    #   The port on which the instance is listening.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_protocol
    #   The protocol to use to route traffic to instances.
    #
    #   Valid values: `HTTP` \| `HTTPS` \| `TCP` \| `SSL`
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_port
    #   The port on which the load balancer is listening.
    #
    #   On EC2-VPC, you can specify any port from the range 1-65535.
    #
    #   On EC2-Classic, you can specify any port from the following list:
    #   25, 80, 443, 465, 587, 1024-65535.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The load balancer transport protocol to use for routing.
    #
    #   Valid values: `HTTP` \| `HTTPS` \| `TCP` \| `SSL`
    #   @return [String]
    #
    # @!attribute [rw] ssl_certificate_id
    #   The ARN of the server certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerListener AWS API Documentation
    #
    class AwsElbLoadBalancerListener < Struct.new(
      :instance_port,
      :instance_protocol,
      :load_balancer_port,
      :protocol,
      :ssl_certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists the policies that are enabled for a load balancer listener.
    #
    # @!attribute [rw] listener
    #   Information about the listener.
    #   @return [Types::AwsElbLoadBalancerListener]
    #
    # @!attribute [rw] policy_names
    #   The policies enabled for the listener.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerListenerDescription AWS API Documentation
    #
    class AwsElbLoadBalancerListenerDescription < Struct.new(
      :listener,
      :policy_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the policies for a load balancer.
    #
    # @!attribute [rw] app_cookie_stickiness_policies
    #   The stickiness policies that are created using
    #   `CreateAppCookieStickinessPolicy`.
    #   @return [Array<Types::AwsElbAppCookieStickinessPolicy>]
    #
    # @!attribute [rw] lb_cookie_stickiness_policies
    #   The stickiness policies that are created using
    #   `CreateLBCookieStickinessPolicy`.
    #   @return [Array<Types::AwsElbLbCookieStickinessPolicy>]
    #
    # @!attribute [rw] other_policies
    #   The policies other than the stickiness policies.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerPolicies AWS API Documentation
    #
    class AwsElbLoadBalancerPolicies < Struct.new(
      :app_cookie_stickiness_policies,
      :lb_cookie_stickiness_policies,
      :other_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the security group for the load balancer.
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] owner_alias
    #   The owner of the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerSourceSecurityGroup AWS API Documentation
    #
    class AwsElbLoadBalancerSourceSecurityGroup < Struct.new(
      :group_name,
      :owner_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # A load balancer attribute.
    #
    # @!attribute [rw] key
    #   The name of the load balancer attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the load balancer attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbv2LoadBalancerAttribute AWS API Documentation
    #
    class AwsElbv2LoadBalancerAttribute < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a load balancer.
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones for the load balancer.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] canonical_hosted_zone_id
    #   The ID of the Amazon Route 53 hosted zone associated with the load
    #   balancer.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Indicates when the load balancer was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The public DNS name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP addresses used by the subnets for your load balancer.
    #   The possible values are `ipv4` (for IPv4 addresses) and `dualstack`
    #   (for IPv4 and IPv6 addresses).
    #   @return [String]
    #
    # @!attribute [rw] scheme
    #   The nodes of an Internet-facing load balancer have public IP
    #   addresses.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The IDs of the security groups for the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The state of the load balancer.
    #   @return [Types::LoadBalancerState]
    #
    # @!attribute [rw] type
    #   The type of load balancer.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_attributes
    #   Attributes of the load balancer.
    #   @return [Array<Types::AwsElbv2LoadBalancerAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbv2LoadBalancerDetails AWS API Documentation
    #
    class AwsElbv2LoadBalancerDetails < Struct.new(
      :availability_zones,
      :canonical_hosted_zone_id,
      :created_time,
      :dns_name,
      :ip_address_type,
      :scheme,
      :security_groups,
      :state,
      :type,
      :vpc_id,
      :load_balancer_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A schema defines the structure of events that are sent to Amazon
    # EventBridge. Schema registries are containers for schemas. They
    # collect and organize schemas so that your schemas are in logical
    # groups.
    #
    # @!attribute [rw] description
    #   A description of the registry to be created.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   The name of the schema registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEventSchemasRegistryDetails AWS API Documentation
    #
    class AwsEventSchemasRegistryDetails < Struct.new(
      :description,
      :registry_arn,
      :registry_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of CloudTrail as a
    # data source for the detector.
    #
    # @!attribute [rw] status
    #   Specifies whether CloudTrail is activated as a data source for the
    #   detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesCloudTrailDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesCloudTrailDetails < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes which data sources are activated for the detector.
    #
    # @!attribute [rw] cloud_trail
    #   An object that contains information on the status of CloudTrail as a
    #   data source for the detector.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesCloudTrailDetails]
    #
    # @!attribute [rw] dns_logs
    #   An object that contains information on the status of DNS logs as a
    #   data source for the detector.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesDnsLogsDetails]
    #
    # @!attribute [rw] flow_logs
    #   An object that contains information on the status of VPC Flow Logs
    #   as a data source for the detector.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesFlowLogsDetails]
    #
    # @!attribute [rw] kubernetes
    #   An object that contains information on the status of Kubernetes data
    #   sources for the detector.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesKubernetesDetails]
    #
    # @!attribute [rw] malware_protection
    #   An object that contains information on the status of Malware
    #   Protection as a data source for the detector.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails]
    #
    # @!attribute [rw] s3_logs
    #   An object that contains information on the status of S3 Data event
    #   logs as a data source for the detector.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesS3LogsDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesDetails < Struct.new(
      :cloud_trail,
      :dns_logs,
      :flow_logs,
      :kubernetes,
      :malware_protection,
      :s3_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of DNS logs as a
    # data source for the detector.
    #
    # @!attribute [rw] status
    #   Describes whether DNS logs is enabled as a data source for the
    #   detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesDnsLogsDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesDnsLogsDetails < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of VPC Flow Logs as
    # a data source for the detector.
    #
    # @!attribute [rw] status
    #   Describes whether VPC Flow Logs are activated as a data source for
    #   the detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesFlowLogsDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesFlowLogsDetails < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of Kubernetes audit
    # logs as a data source for the detector.
    #
    # @!attribute [rw] status
    #   Describes whether Kubernetes audit logs are activated as a data
    #   source for the detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of Kubernetes data
    # sources for the detector.
    #
    # @!attribute [rw] audit_logs
    #   Describes whether Kubernetes audit logs are activated as a data
    #   source for the detector.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesKubernetesDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesKubernetesDetails < Struct.new(
      :audit_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of Malware
    # Protection as a data source for the detector.
    #
    # @!attribute [rw] scan_ec2_instance_with_findings
    #   Describes the configuration of Malware Protection for EC2 instances
    #   with findings.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails]
    #
    # @!attribute [rw] service_role
    #   The GuardDuty Malware Protection service role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails < Struct.new(
      :scan_ec2_instance_with_findings,
      :service_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of Malware Protection for EC2 instances
    # with findings.
    #
    # @!attribute [rw] ebs_volumes
    #   Describes the configuration of scanning EBS volumes (Malware
    #   Protection) as a data source.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails < Struct.new(
      :ebs_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of scanning EBS volumes (Malware
    # Protection) as a data source.
    #
    # @!attribute [rw] reason
    #   Specifies the reason why scanning EBS volumes (Malware Protection)
    #   isn’t activated as a data source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes whether scanning EBS volumes is activated as a data source
    #   for the detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails < Struct.new(
      :reason,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of S3 data event
    # logs as a data source for the detector.
    #
    # @!attribute [rw] status
    #   A value that describes whether S3 data event logs are automatically
    #   enabled for new members of an organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDataSourcesS3LogsDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDataSourcesS3LogsDetails < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Amazon GuardDuty detector. A detector is an
    # object that represents the GuardDuty service. A detector is required
    # for GuardDuty to become operational.
    #
    # @!attribute [rw] data_sources
    #   Describes which data sources are activated for the detector.
    #   @return [Types::AwsGuardDutyDetectorDataSourcesDetails]
    #
    # @!attribute [rw] features
    #   Describes which features are activated for the detector.
    #   @return [Array<Types::AwsGuardDutyDetectorFeaturesDetails>]
    #
    # @!attribute [rw] finding_publishing_frequency
    #   The publishing frequency of the finding.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The GuardDuty service role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The activation status of the detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorDetails < Struct.new(
      :data_sources,
      :features,
      :finding_publishing_frequency,
      :service_role,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes which features are activated for the detector.
    #
    # @!attribute [rw] name
    #   Indicates the name of the feature that is activated for the
    #   detector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the feature that is activated for the
    #   detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsGuardDutyDetectorFeaturesDetails AWS API Documentation
    #
    class AwsGuardDutyDetectorFeaturesDetails < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # IAM access key details related to a finding.
    #
    # @!attribute [rw] user_name
    #   The user associated with the IAM access key related to a finding.
    #
    #   The `UserName` parameter has been replaced with the `PrincipalName`
    #   parameter because access keys can also be assigned to principals
    #   that are not IAM users.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the IAM access key related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Indicates when the IAM access key was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The ID of the principal associated with an access key.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The type of principal associated with an access key.
    #   @return [String]
    #
    # @!attribute [rw] principal_name
    #   The name of the principal.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the account for the key.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The identifier of the access key.
    #   @return [String]
    #
    # @!attribute [rw] session_context
    #   Information about the session that the key was used for.
    #   @return [Types::AwsIamAccessKeySessionContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeyDetails AWS API Documentation
    #
    class AwsIamAccessKeyDetails < Struct.new(
      :user_name,
      :status,
      :created_at,
      :principal_id,
      :principal_type,
      :principal_name,
      :account_id,
      :access_key_id,
      :session_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the session that the key was used for.
    #
    # @!attribute [rw] attributes
    #   Attributes of the session that the key was used for.
    #   @return [Types::AwsIamAccessKeySessionContextAttributes]
    #
    # @!attribute [rw] session_issuer
    #   Information about the entity that created the session.
    #   @return [Types::AwsIamAccessKeySessionContextSessionIssuer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeySessionContext AWS API Documentation
    #
    class AwsIamAccessKeySessionContext < Struct.new(
      :attributes,
      :session_issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of the session that the key was used for.
    #
    # @!attribute [rw] mfa_authenticated
    #   Indicates whether the session used multi-factor authentication
    #   (MFA).
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_date
    #   Indicates when the session was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeySessionContextAttributes AWS API Documentation
    #
    class AwsIamAccessKeySessionContextAttributes < Struct.new(
      :mfa_authenticated,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the entity that created the session.
    #
    # @!attribute [rw] type
    #   The type of principal (user, role, or group) that created the
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the principal (user, role, or group) that
    #   created the session.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the session.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The identifier of the Amazon Web Services account that created the
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the principal that created the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeySessionContextSessionIssuer AWS API Documentation
    #
    class AwsIamAccessKeySessionContextSessionIssuer < Struct.new(
      :type,
      :principal_id,
      :arn,
      :account_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A managed policy that is attached to an IAM principal.
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAttachedManagedPolicy AWS API Documentation
    #
    class AwsIamAttachedManagedPolicy < Struct.new(
      :policy_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an IAM group.
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of the managed policies that are attached to the IAM group.
    #   @return [Array<Types::AwsIamAttachedManagedPolicy>]
    #
    # @!attribute [rw] create_date
    #   Indicates when the IAM group was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier of the IAM group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the IAM group.
    #   @return [String]
    #
    # @!attribute [rw] group_policy_list
    #   The list of inline policies that are embedded in the group.
    #   @return [Array<Types::AwsIamGroupPolicy>]
    #
    # @!attribute [rw] path
    #   The path to the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamGroupDetails AWS API Documentation
    #
    class AwsIamGroupDetails < Struct.new(
      :attached_managed_policies,
      :create_date,
      :group_id,
      :group_name,
      :group_policy_list,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A managed policy that is attached to the IAM group.
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamGroupPolicy AWS API Documentation
    #
    class AwsIamGroupPolicy < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an instance profile.
    #
    # @!attribute [rw] arn
    #   The ARN of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   Indicates when the instance profile was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_id
    #   The identifier of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] roles
    #   The roles associated with the instance profile.
    #   @return [Array<Types::AwsIamInstanceProfileRole>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamInstanceProfile AWS API Documentation
    #
    class AwsIamInstanceProfile < Struct.new(
      :arn,
      :create_date,
      :instance_profile_id,
      :instance_profile_name,
      :path,
      :roles)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a role associated with an instance profile.
    #
    # @!attribute [rw] arn
    #   The ARN of the role.
    #   @return [String]
    #
    # @!attribute [rw] assume_role_policy_document
    #   The policy that grants an entity permission to assume the role.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   Indicates when the role was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the role.
    #   @return [String]
    #
    # @!attribute [rw] role_id
    #   The identifier of the role.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamInstanceProfileRole AWS API Documentation
    #
    class AwsIamInstanceProfileRole < Struct.new(
      :arn,
      :assume_role_policy_document,
      :create_date,
      :path,
      :role_id,
      :role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the policy used to set the permissions boundary for
    # an IAM principal.
    #
    # @!attribute [rw] permissions_boundary_arn
    #   The ARN of the policy used to set the permissions boundary.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary_type
    #   The usage type for the permissions boundary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamPermissionsBoundary AWS API Documentation
    #
    class AwsIamPermissionsBoundary < Struct.new(
      :permissions_boundary_arn,
      :permissions_boundary_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an IAM permissions policy.
    #
    # @!attribute [rw] attachment_count
    #   The number of users, groups, and roles that the policy is attached
    #   to.
    #   @return [Integer]
    #
    # @!attribute [rw] create_date
    #   When the policy was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The identifier of the default version of the policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] is_attachable
    #   Whether the policy can be attached to a user, group, or role.
    #   @return [Boolean]
    #
    # @!attribute [rw] path
    #   The path to the policy.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary_usage_count
    #   The number of users and roles that use the policy to set the
    #   permissions boundary.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_id
    #   The unique identifier of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_list
    #   List of versions of the policy.
    #   @return [Array<Types::AwsIamPolicyVersion>]
    #
    # @!attribute [rw] update_date
    #   When the policy was most recently updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamPolicyDetails AWS API Documentation
    #
    class AwsIamPolicyDetails < Struct.new(
      :attachment_count,
      :create_date,
      :default_version_id,
      :description,
      :is_attachable,
      :path,
      :permissions_boundary_usage_count,
      :policy_id,
      :policy_name,
      :policy_version_list,
      :update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A version of an IAM policy.
    #
    # @!attribute [rw] version_id
    #   The identifier of the policy version.
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   Whether the version is the default version.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_date
    #   Indicates when the version was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamPolicyVersion AWS API Documentation
    #
    class AwsIamPolicyVersion < Struct.new(
      :version_id,
      :is_default_version,
      :create_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IAM role, including all of the role's
    # policies.
    #
    # @!attribute [rw] assume_role_policy_document
    #   The trust policy that grants permission to assume the role.
    #   @return [String]
    #
    # @!attribute [rw] attached_managed_policies
    #   The list of the managed policies that are attached to the role.
    #   @return [Array<Types::AwsIamAttachedManagedPolicy>]
    #
    # @!attribute [rw] create_date
    #   Indicates when the role was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_list
    #   The list of instance profiles that contain this role.
    #   @return [Array<Types::AwsIamInstanceProfile>]
    #
    # @!attribute [rw] permissions_boundary
    #   Information about the policy used to set the permissions boundary
    #   for an IAM principal.
    #   @return [Types::AwsIamPermissionsBoundary]
    #
    # @!attribute [rw] role_id
    #   The stable and unique string identifying the role.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The friendly name that identifies the role.
    #   @return [String]
    #
    # @!attribute [rw] role_policy_list
    #   The list of inline policies that are embedded in the role.
    #   @return [Array<Types::AwsIamRolePolicy>]
    #
    # @!attribute [rw] max_session_duration
    #   The maximum session duration (in seconds) that you want to set for
    #   the specified role.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The path to the role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamRoleDetails AWS API Documentation
    #
    class AwsIamRoleDetails < Struct.new(
      :assume_role_policy_document,
      :attached_managed_policies,
      :create_date,
      :instance_profile_list,
      :permissions_boundary,
      :role_id,
      :role_name,
      :role_policy_list,
      :max_session_duration,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # An inline policy that is embedded in the role.
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamRolePolicy AWS API Documentation
    #
    class AwsIamRolePolicy < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an IAM user.
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of the managed policies that are attached to the user.
    #   @return [Array<Types::AwsIamAttachedManagedPolicy>]
    #
    # @!attribute [rw] create_date
    #   Indicates when the user was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] group_list
    #   A list of IAM groups that the user belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] path
    #   The path to the user.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary
    #   The permissions boundary for the user.
    #   @return [Types::AwsIamPermissionsBoundary]
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_policy_list
    #   The list of inline policies that are embedded in the user.
    #   @return [Array<Types::AwsIamUserPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamUserDetails AWS API Documentation
    #
    class AwsIamUserDetails < Struct.new(
      :attached_managed_policies,
      :create_date,
      :group_list,
      :path,
      :permissions_boundary,
      :user_id,
      :user_name,
      :user_policy_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an inline policy that is embedded in the user.
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamUserPolicy AWS API Documentation
    #
    class AwsIamUserPolicy < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon Kinesis data stream.
    #
    # @!attribute [rw] name
    #   The name of the Kinesis stream. If you don't specify a name,
    #   CloudFront generates a unique physical ID and uses that ID for the
    #   stream name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Kinesis data stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_encryption
    #   When specified, enables or updates server-side encryption using an
    #   KMS key for a specified stream. Removing this property from your
    #   stack template and updating your stack disables encryption.
    #   @return [Types::AwsKinesisStreamStreamEncryptionDetails]
    #
    # @!attribute [rw] shard_count
    #   The number of shards that the stream uses.
    #   @return [Integer]
    #
    # @!attribute [rw] retention_period_hours
    #   The number of hours for the data records that are stored in shards
    #   to remain accessible.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsKinesisStreamDetails AWS API Documentation
    #
    class AwsKinesisStreamDetails < Struct.new(
      :name,
      :arn,
      :stream_encryption,
      :shard_count,
      :retention_period_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about stream encryption.
    #
    # @!attribute [rw] encryption_type
    #   The encryption type to use.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The globally unique identifier for the customer-managed KMS key to
    #   use for encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsKinesisStreamStreamEncryptionDetails AWS API Documentation
    #
    class AwsKinesisStreamStreamEncryptionDetails < Struct.new(
      :encryption_type,
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about an KMS key.
    #
    # @!attribute [rw] aws_account_id
    #   The twelve-digit account ID of the Amazon Web Services account that
    #   owns the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   Indicates when the KMS key was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Float]
    #
    # @!attribute [rw] key_id
    #   The globally unique identifier for the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] key_manager
    #   The manager of the KMS key. KMS keys in your Amazon Web Services
    #   account are either customer managed or Amazon Web Services managed.
    #   @return [String]
    #
    # @!attribute [rw] key_state
    #   The state of the KMS key. Valid values are as follows:
    #
    #   * `Disabled`
    #
    #   * `Enabled`
    #
    #   * `PendingDeletion`
    #
    #   * `PendingImport`
    #
    #   * `Unavailable`
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The source of the KMS key material.
    #
    #   When this value is `AWS_KMS`, KMS created the key material.
    #
    #   When this value is `EXTERNAL`, the key material was imported from
    #   your existing key management infrastructure or the KMS key lacks key
    #   material.
    #
    #   When this value is `AWS_CLOUDHSM`, the key material was created in
    #   the CloudHSM cluster associated with a custom key store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] key_rotation_status
    #   Whether the key has key rotation enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsKmsKeyDetails AWS API Documentation
    #
    class AwsKmsKeyDetails < Struct.new(
      :aws_account_id,
      :creation_date,
      :key_id,
      :key_manager,
      :key_state,
      :origin,
      :description,
      :key_rotation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code for the Lambda function. You can specify either an object in
    # Amazon S3, or upload a deployment package directly.
    #
    # @!attribute [rw] s3_bucket
    #   An Amazon S3 bucket in the same Amazon Web Services Region as your
    #   function. The bucket can be in a different Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key of the deployment package.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   For versioned objects, the version of the deployment package object
    #   to use.
    #   @return [String]
    #
    # @!attribute [rw] zip_file
    #   The base64-encoded contents of the deployment package. Amazon Web
    #   Services SDK and Amazon Web Services CLI clients handle the encoding
    #   for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionCode AWS API Documentation
    #
    class AwsLambdaFunctionCode < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :zip_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dead-letter queue for failed asynchronous invocations.
    #
    # @!attribute [rw] target_arn
    #   The ARN of an SQS queue or SNS topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionDeadLetterConfig AWS API Documentation
    #
    class AwsLambdaFunctionDeadLetterConfig < Struct.new(
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Lambda function's configuration.
    #
    # @!attribute [rw] code
    #   An `AwsLambdaFunctionCode` object.
    #   @return [Types::AwsLambdaFunctionCode]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA256 hash of the function's deployment package.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_config
    #   The function's dead letter queue.
    #   @return [Types::AwsLambdaFunctionDeadLetterConfig]
    #
    # @!attribute [rw] environment
    #   The function's environment variables.
    #   @return [Types::AwsLambdaFunctionEnvironment]
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The function that Lambda calls to begin executing your function.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key that is used to encrypt the function's environment
    #   variables. This key is only returned if you've configured a
    #   customer managed customer managed key.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   Indicates when the function was last updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   The function's layers.
    #   @return [Array<Types::AwsLambdaFunctionLayer>]
    #
    # @!attribute [rw] master_arn
    #   For Lambda@Edge functions, the ARN of the master function.
    #   @return [String]
    #
    # @!attribute [rw] memory_size
    #   The memory that is allocated to the function.
    #   @return [Integer]
    #
    # @!attribute [rw] revision_id
    #   The latest updated revision of the function or alias.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time that Lambda allows a function to run before
    #   stopping it.
    #   @return [Integer]
    #
    # @!attribute [rw] tracing_config
    #   The function's X-Ray tracing configuration.
    #   @return [Types::AwsLambdaFunctionTracingConfig]
    #
    # @!attribute [rw] vpc_config
    #   The function's networking configuration.
    #   @return [Types::AwsLambdaFunctionVpcConfig]
    #
    # @!attribute [rw] version
    #   The version of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] architectures
    #   The instruction set architecture that the function uses. Valid
    #   values are `x86_64` or `arm64`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] package_type
    #   The type of deployment package that's used to deploy the function
    #   code to Lambda. Set to `Image` for a container image and `Zip` for a
    #   .zip file archive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionDetails AWS API Documentation
    #
    class AwsLambdaFunctionDetails < Struct.new(
      :code,
      :code_sha_256,
      :dead_letter_config,
      :environment,
      :function_name,
      :handler,
      :kms_key_arn,
      :last_modified,
      :layers,
      :master_arn,
      :memory_size,
      :revision_id,
      :role,
      :runtime,
      :timeout,
      :tracing_config,
      :vpc_config,
      :version,
      :architectures,
      :package_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A function's environment variable settings.
    #
    # @!attribute [rw] variables
    #   Environment variable key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error
    #   An `AwsLambdaFunctionEnvironmentError` object.
    #   @return [Types::AwsLambdaFunctionEnvironmentError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionEnvironment AWS API Documentation
    #
    class AwsLambdaFunctionEnvironment < Struct.new(
      :variables,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error messages for environment variables that could not be applied.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionEnvironmentError AWS API Documentation
    #
    class AwsLambdaFunctionEnvironmentError < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Lambda layer.
    #
    # @!attribute [rw] arn
    #   The ARN of the function layer.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size of the layer archive in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionLayer AWS API Documentation
    #
    class AwsLambdaFunctionLayer < Struct.new(
      :arn,
      :code_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function's X-Ray tracing configuration.
    #
    # @!attribute [rw] mode
    #   The tracing mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionTracingConfig AWS API Documentation
    #
    class AwsLambdaFunctionTracingConfig < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC security groups and subnets that are attached to a Lambda
    # function.
    #
    # @!attribute [rw] security_group_ids
    #   A list of VPC security groups IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionVpcConfig AWS API Documentation
    #
    class AwsLambdaFunctionVpcConfig < Struct.new(
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a Lambda layer version.
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_runtimes
    #   The layer's compatible runtimes. Maximum number of five items.
    #
    #   Valid values: `nodejs10.x` \| `nodejs12.x` \| `java8` \| `java11` \|
    #   `python2.7` \| `python3.6` \| `python3.7` \| `python3.8` \|
    #   `dotnetcore1.0` \| `dotnetcore2.1` \| `go1.x` \| `ruby2.5` \|
    #   `provided`
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   Indicates when the version was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaLayerVersionDetails AWS API Documentation
    #
    class AwsLambdaLayerVersionDetails < Struct.new(
      :version,
      :compatible_runtimes,
      :created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a volume mount point that's used in a container
    # definition.
    #
    # @!attribute [rw] source_volume
    #   The name of the volume to mount. Must be a volume name referenced in
    #   the `name` parameter of task definition `volume`.
    #   @return [String]
    #
    # @!attribute [rw] container_path
    #   The path on the container to mount the host volume at.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsMountPoint AWS API Documentation
    #
    class AwsMountPoint < Struct.new(
      :source_volume,
      :container_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Network Firewall firewall.
    #
    # @!attribute [rw] delete_protection
    #   Whether the firewall is protected from deletion. If set to `true`,
    #   then the firewall cannot be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The ARN of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_id
    #   The identifier of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   A descriptive name of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The ARN of the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_change_protection
    #   Whether the firewall is protected from a change to the firewall
    #   policy. If set to `true`, you cannot associate a different policy
    #   with the firewall.
    #   @return [Boolean]
    #
    # @!attribute [rw] subnet_change_protection
    #   Whether the firewall is protected from a change to the subnet
    #   associations. If set to `true`, you cannot map different subnets to
    #   the firewall.
    #   @return [Boolean]
    #
    # @!attribute [rw] subnet_mappings
    #   The public subnets that Network Firewall uses for the firewall. Each
    #   subnet must belong to a different Availability Zone.
    #   @return [Array<Types::AwsNetworkFirewallFirewallSubnetMappingsDetails>]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC where the firewall is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsNetworkFirewallFirewallDetails AWS API Documentation
    #
    class AwsNetworkFirewallFirewallDetails < Struct.new(
      :delete_protection,
      :description,
      :firewall_arn,
      :firewall_id,
      :firewall_name,
      :firewall_policy_arn,
      :firewall_policy_change_protection,
      :subnet_change_protection,
      :subnet_mappings,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a firewall policy. A firewall policy defines the
    # behavior of a network firewall.
    #
    # @!attribute [rw] firewall_policy
    #   The firewall policy configuration.
    #   @return [Types::FirewallPolicyDetails]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The ARN of the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_id
    #   The identifier of the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_name
    #   The name of the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the firewall policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsNetworkFirewallFirewallPolicyDetails AWS API Documentation
    #
    class AwsNetworkFirewallFirewallPolicyDetails < Struct.new(
      :firewall_policy,
      :firewall_policy_arn,
      :firewall_policy_id,
      :firewall_policy_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A public subnet that Network Firewall uses for the firewall.
    #
    # @!attribute [rw] subnet_id
    #   The identifier of the subnet
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsNetworkFirewallFirewallSubnetMappingsDetails AWS API Documentation
    #
    class AwsNetworkFirewallFirewallSubnetMappingsDetails < Struct.new(
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Network Firewall rule group. Rule groups are used to
    # inspect and control network traffic. Stateless rule groups apply to
    # individual packets. Stateful rule groups apply to packets in the
    # context of their traffic flow.
    #
    # Rule groups are referenced in firewall policies.
    #
    # @!attribute [rw] capacity
    #   The maximum number of operating resources that this rule group can
    #   use.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] rule_group
    #   Details about the rule group.
    #   @return [Types::RuleGroupDetails]
    #
    # @!attribute [rw] rule_group_arn
    #   The ARN of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_id
    #   The identifier of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of rule group. A rule group can be stateful or stateless.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsNetworkFirewallRuleGroupDetails AWS API Documentation
    #
    class AwsNetworkFirewallRuleGroupDetails < Struct.new(
      :capacity,
      :description,
      :rule_group,
      :rule_group_arn,
      :rule_group_id,
      :rule_group_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about domain access control options.
    #
    # @!attribute [rw] enabled
    #   Enables fine-grained access control.
    #   @return [Boolean]
    #
    # @!attribute [rw] internal_user_database_enabled
    #   Enables the internal user database.
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_options
    #   Specifies information about the master user of the domain.
    #   @return [Types::AwsOpenSearchServiceDomainMasterUserOptionsDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails < Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :master_user_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the configuration of an OpenSearch cluster.
    #
    # @!attribute [rw] instance_count
    #   The number of data nodes to use in the OpenSearch domain.
    #   @return [Integer]
    #
    # @!attribute [rw] warm_enabled
    #   Whether UltraWarm is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] warm_count
    #   The number of UltraWarm instances.
    #   @return [Integer]
    #
    # @!attribute [rw] dedicated_master_enabled
    #   Whether to use a dedicated master node for the OpenSearch domain. A
    #   dedicated master node performs cluster management tasks, but does
    #   not hold data or respond to data upload requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_awareness_config
    #   Configuration options for zone awareness. Provided if
    #   `ZoneAwarenessEnabled` is `true`.
    #   @return [Types::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails]
    #
    # @!attribute [rw] dedicated_master_count
    #   The number of instances to use for the master node. If this
    #   attribute is specified, then `DedicatedMasterEnabled` must be
    #   `true`.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type for your data nodes.
    #
    #   For a list of valid values, see [Supported instance types in Amazon
    #   OpenSearch Service][1] in the *Amazon OpenSearch Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/supported-instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] warm_type
    #   The type of UltraWarm instance.
    #   @return [String]
    #
    # @!attribute [rw] zone_awareness_enabled
    #   Whether to enable zone awareness for the OpenSearch domain. When
    #   zone awareness is enabled, OpenSearch Service allocates the
    #   cluster's nodes and replica index shards across Availability Zones
    #   (AZs) in the same Region. This prevents data loss and minimizes
    #   downtime if a node or data center fails.
    #   @return [Boolean]
    #
    # @!attribute [rw] dedicated_master_type
    #   The hardware configuration of the computer that hosts the dedicated
    #   master node.
    #
    #   If this attribute is specified, then `DedicatedMasterEnabled` must
    #   be `true`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainClusterConfigDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainClusterConfigDetails < Struct.new(
      :instance_count,
      :warm_enabled,
      :warm_count,
      :dedicated_master_enabled,
      :zone_awareness_config,
      :dedicated_master_count,
      :instance_type,
      :warm_type,
      :zone_awareness_enabled,
      :dedicated_master_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration options for zone awareness.
    #
    # @!attribute [rw] availability_zone_count
    #   The number of Availability Zones that the domain uses. Valid values
    #   are `2` or `3`. The default is `2`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails < Struct.new(
      :availability_zone_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon OpenSearch Service domain.
    #
    # @!attribute [rw] arn
    #   The ARN of the OpenSearch Service domain.
    #   @return [String]
    #
    # @!attribute [rw] access_policies
    #   IAM policy document that specifies the access policies for the
    #   OpenSearch Service domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_endpoint
    #   The domain endpoint.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the domain engine.
    #   @return [String]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Details about the configuration for encryption at rest.
    #   @return [Types::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Details about the configuration for node-to-node encryption.
    #   @return [Types::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails]
    #
    # @!attribute [rw] service_software_options
    #   Information about the status of a domain relative to the latest
    #   service software.
    #   @return [Types::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails]
    #
    # @!attribute [rw] cluster_config
    #   Details about the configuration of an OpenSearch cluster.
    #   @return [Types::AwsOpenSearchServiceDomainClusterConfigDetails]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Additional options for the domain endpoint.
    #   @return [Types::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails]
    #
    # @!attribute [rw] vpc_options
    #   Information that OpenSearch Service derives based on `VPCOptions`
    #   for the domain.
    #   @return [Types::AwsOpenSearchServiceDomainVpcOptionsDetails]
    #
    # @!attribute [rw] log_publishing_options
    #   Configures the CloudWatch Logs to publish for the OpenSearch domain.
    #   @return [Types::AwsOpenSearchServiceDomainLogPublishingOptionsDetails]
    #
    # @!attribute [rw] domain_endpoints
    #   The domain endpoints. Used if the OpenSearch domain resides in a
    #   VPC.
    #
    #   This is a map of key-value pairs. The key is always `vpc`. The value
    #   is the endpoint.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] advanced_security_options
    #   Specifies options for fine-grained access control.
    #   @return [Types::AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainDetails < Struct.new(
      :arn,
      :access_policies,
      :domain_name,
      :id,
      :domain_endpoint,
      :engine_version,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :service_software_options,
      :cluster_config,
      :domain_endpoint_options,
      :vpc_options,
      :log_publishing_options,
      :domain_endpoints,
      :advanced_security_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about additional options for the domain endpoint.
    #
    # @!attribute [rw] custom_endpoint_certificate_arn
    #   The ARN for the security certificate. The certificate is managed in
    #   ACM.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_enabled
    #   Whether to enable a custom endpoint for the domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] enforce_https
    #   Whether to require that all traffic to the domain arrive over HTTPS.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_endpoint
    #   The fully qualified URL for the custom endpoint.
    #   @return [String]
    #
    # @!attribute [rw] tls_security_policy
    #   The TLS security policy to apply to the HTTPS endpoint of the
    #   OpenSearch domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainDomainEndpointOptionsDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainDomainEndpointOptionsDetails < Struct.new(
      :custom_endpoint_certificate_arn,
      :custom_endpoint_enabled,
      :enforce_https,
      :custom_endpoint,
      :tls_security_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the configuration for encryption at rest for the
    # OpenSearch domain.
    #
    # @!attribute [rw] enabled
    #   Whether encryption at rest is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails < Struct.new(
      :enabled,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details for a log publishing option.
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   The ARN of the CloudWatch Logs group to publish the logs to.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the log publishing is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainLogPublishingOption AWS API Documentation
    #
    class AwsOpenSearchServiceDomainLogPublishingOption < Struct.new(
      :cloud_watch_logs_log_group_arn,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the CloudWatch Logs to publish for the OpenSearch domain.
    #
    # @!attribute [rw] index_slow_logs
    #   Configures the OpenSearch index logs publishing.
    #   @return [Types::AwsOpenSearchServiceDomainLogPublishingOption]
    #
    # @!attribute [rw] search_slow_logs
    #   Configures the OpenSearch search slow log publishing.
    #   @return [Types::AwsOpenSearchServiceDomainLogPublishingOption]
    #
    # @!attribute [rw] audit_logs
    #   Configures the OpenSearch audit logs publishing.
    #   @return [Types::AwsOpenSearchServiceDomainLogPublishingOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainLogPublishingOptionsDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainLogPublishingOptionsDetails < Struct.new(
      :index_slow_logs,
      :search_slow_logs,
      :audit_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies information about the master user of the domain.
    #
    # @!attribute [rw] master_user_arn
    #   The Amazon Resource Name (ARN) for the master user.
    #   @return [String]
    #
    # @!attribute [rw] master_user_name
    #   The username for the master user.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainMasterUserOptionsDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainMasterUserOptionsDetails < Struct.new(
      :master_user_arn,
      :master_user_name,
      :master_user_password)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the configuration for node-to-node encryption.
    #
    # @!attribute [rw] enabled
    #   Whether node-to-node encryption is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the state of the domain relative to the
    # latest service software.
    #
    # @!attribute [rw] automated_update_date
    #   The epoch time when the deployment window closes for required
    #   updates. After this time, OpenSearch Service schedules the software
    #   upgrade automatically.
    #   @return [String]
    #
    # @!attribute [rw] cancellable
    #   Whether a request to update the domain can be canceled.
    #   @return [Boolean]
    #
    # @!attribute [rw] current_version
    #   The version of the service software that is currently installed on
    #   the domain.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A more detailed description of the service software status.
    #   @return [String]
    #
    # @!attribute [rw] new_version
    #   The most recent version of the service software.
    #   @return [String]
    #
    # @!attribute [rw] update_available
    #   Whether a service software update is available for the domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_status
    #   The status of the service software update. Valid values are as
    #   follows:
    #
    #   * `COMPLETED`
    #
    #   * `ELIGIBLE`
    #
    #   * `IN_PROGRESS`
    #
    #   * `NOT_ELIGIBLE`
    #
    #   * `PENDING_UPDATE`
    #   @return [String]
    #
    # @!attribute [rw] optional_deployment
    #   Whether the service software update is optional.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails < Struct.new(
      :automated_update_date,
      :cancellable,
      :current_version,
      :description,
      :new_version,
      :update_available,
      :update_status,
      :optional_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information that OpenSearch Service derives based on the
    # `VPCOptions` for the domain.
    #
    # @!attribute [rw] security_group_ids
    #   The list of security group IDs that are associated with the VPC
    #   endpoints for the domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs that are associated with the VPC endpoints for
    #   the domain.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsOpenSearchServiceDomainVpcOptionsDetails AWS API Documentation
    #
    class AwsOpenSearchServiceDomainVpcOptionsDetails < Struct.new(
      :security_group_ids,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IAM role that is associated with the Amazon RDS DB cluster.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association between the IAM role and the DB
    #   cluster. Valid values are as follows:
    #
    #   * `ACTIVE`
    #
    #   * `INVALID`
    #
    #   * `PENDING`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterAssociatedRole AWS API Documentation
    #
    class AwsRdsDbClusterAssociatedRole < Struct.new(
      :role_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon RDS DB cluster.
    #
    # @!attribute [rw] allocated_storage
    #   For all database engines except Aurora, specifies the allocated
    #   storage size in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones (AZs) where instances in the DB cluster
    #   can be created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint for the primary instance of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] reader_endpoint
    #   The reader endpoint for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoints
    #   A list of custom endpoints for the DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] multi_az
    #   Whether the DB cluster has instances in multiple Availability Zones.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to use for this DB cluster. Valid
    #   values are as follows:
    #
    #   * `aurora`
    #
    #   * `aurora-mysql`
    #
    #   * `aurora-postgresql`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the DB instances in the DB cluster accept
    #   connections.
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The name of the master user for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The range of time each day when automated backups are created, if
    #   automated backups are enabled.
    #
    #   Uses the format `HH:MM-HH:MM`. For example, `04:52-05:22`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Uses the format `<day>:HH:MM-<day>:HH:MM`.
    #
    #   For the day values, use
    #   `mon`\|`tue`\|`wed`\|`thu`\|`fri`\|`sat`\|`sun`.
    #
    #   For example, `sun:09:32-sun:10:02`.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_identifiers
    #   The identifiers of the read replicas that are associated with this
    #   DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_groups
    #   A list of VPC security groups that the DB cluster belongs to.
    #   @return [Array<Types::AwsRdsDbInstanceVpcSecurityGroup>]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the identifier that Amazon Route 53 assigns when you
    #   create a hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of the KMS master key that is used to encrypt the database
    #   instances in the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_resource_id
    #   The identifier of the DB cluster. The identifier must be unique
    #   within each Amazon Web Services Region and is immutable.
    #   @return [String]
    #
    # @!attribute [rw] associated_roles
    #   A list of the IAM roles that are associated with the DB cluster.
    #   @return [Array<Types::AwsRdsDbClusterAssociatedRole>]
    #
    # @!attribute [rw] cluster_create_time
    #   Indicates when the DB cluster was created, in Universal Coordinated
    #   Time (UTC).
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] enabled_cloud_watch_logs_exports
    #   A list of log types that this DB cluster is configured to export to
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_mode
    #   The database engine mode of the DB cluster.Valid values are as
    #   follows:
    #
    #   * `global`
    #
    #   * `multimaster`
    #
    #   * `parallelquery`
    #
    #   * `provisioned`
    #
    #   * `serverless`
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Whether the DB cluster has deletion protection enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] http_endpoint_enabled
    #   Whether the HTTP endpoint for an Aurora Serverless DB cluster is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] activity_stream_status
    #   The status of the database activity stream. Valid values are as
    #   follows:
    #
    #   * `started`
    #
    #   * `starting`
    #
    #   * `stopped`
    #
    #   * `stopping`
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Whether tags are copied from the DB cluster to snapshots of the DB
    #   cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] cross_account_clone
    #   Whether the DB cluster is a clone of a DB cluster owned by a
    #   different Amazon Web Services account.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_memberships
    #   The Active Directory domain membership records that are associated
    #   with the DB cluster.
    #   @return [Array<Types::AwsRdsDbDomainMembership>]
    #
    # @!attribute [rw] db_cluster_parameter_group
    #   The name of the DB cluster parameter group for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   The subnet group that is associated with the DB cluster, including
    #   the name, description, and subnets in the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_option_group_memberships
    #   The list of option group memberships for this DB cluster.
    #   @return [Array<Types::AwsRdsDbClusterOptionGroupMembership>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier that the user assigned to the cluster.
    #   This identifier is the unique key that identifies a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_members
    #   The list of instances that make up the DB cluster.
    #   @return [Array<Types::AwsRdsDbClusterMember>]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   Whether the mapping of IAM accounts to database accounts is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterDetails AWS API Documentation
    #
    class AwsRdsDbClusterDetails < Struct.new(
      :allocated_storage,
      :availability_zones,
      :backup_retention_period,
      :database_name,
      :status,
      :endpoint,
      :reader_endpoint,
      :custom_endpoints,
      :multi_az,
      :engine,
      :engine_version,
      :port,
      :master_username,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :read_replica_identifiers,
      :vpc_security_groups,
      :hosted_zone_id,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_resource_id,
      :associated_roles,
      :cluster_create_time,
      :enabled_cloud_watch_logs_exports,
      :engine_mode,
      :deletion_protection,
      :http_endpoint_enabled,
      :activity_stream_status,
      :copy_tags_to_snapshot,
      :cross_account_clone,
      :domain_memberships,
      :db_cluster_parameter_group,
      :db_subnet_group,
      :db_cluster_option_group_memberships,
      :db_cluster_identifier,
      :db_cluster_members,
      :iam_database_authentication_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an instance in the DB cluster.
    #
    # @!attribute [rw] is_cluster_writer
    #   Whether the cluster member is the primary instance for the DB
    #   cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] promotion_tier
    #   Specifies the order in which an Aurora replica is promoted to the
    #   primary instance when the existing primary instance fails.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_identifier
    #   The instance identifier for this member of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_status
    #   The status of the DB cluster parameter group for this member of the
    #   DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterMember AWS API Documentation
    #
    class AwsRdsDbClusterMember < Struct.new(
      :is_cluster_writer,
      :promotion_tier,
      :db_instance_identifier,
      :db_cluster_parameter_group_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an option group membership for a DB cluster.
    #
    # @!attribute [rw] db_cluster_option_group_name
    #   The name of the DB cluster option group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB cluster option group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterOptionGroupMembership AWS API Documentation
    #
    class AwsRdsDbClusterOptionGroupMembership < Struct.new(
      :db_cluster_option_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon RDS DB cluster snapshot.
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones where instances in the DB cluster can
    #   be created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_create_time
    #   Indicates when the snapshot was taken.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine that you want to use for this DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Specifies the allocated storage size in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of this DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the DB instances in the DB cluster accept
    #   connections.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID that is associated with the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Indicates when the DB cluster was created, in Universal Coordinated
    #   Time (UTC).
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The name of the master user for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine to use.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model information for this DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   Specifies the percentage of the estimated data that has been
    #   transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_encrypted
    #   Whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of the KMS master key that is used to encrypt the database
    #   instances in the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   Whether mapping of IAM accounts to database accounts is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterSnapshotDetails AWS API Documentation
    #
    class AwsRdsDbClusterSnapshotDetails < Struct.new(
      :availability_zones,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :vpc_id,
      :cluster_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :percent_progress,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_identifier,
      :db_cluster_snapshot_identifier,
      :iam_database_authentication_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Active Directory domain membership record
    # associated with the DB instance.
    #
    # @!attribute [rw] domain
    #   The identifier of the Active Directory domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Active Directory Domain membership for the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] fqdn
    #   The fully qualified domain name of the Active Directory domain.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_name
    #   The name of the IAM role to use when making API calls to the
    #   Directory Service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbDomainMembership AWS API Documentation
    #
    class AwsRdsDbDomainMembership < Struct.new(
      :domain,
      :status,
      :fqdn,
      :iam_role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IAM role associated with the DB instance.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that is associated with the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature associated with the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the state of the association between the IAM role and the
    #   DB instance. The `Status` property returns one of the following
    #   values:
    #
    #   * `ACTIVE` - The IAM role ARN is associated with the DB instance and
    #     can be used to access other Amazon Web Services services on your
    #     behalf.
    #
    #   * `PENDING` - The IAM role ARN is being associated with the DB
    #     instance.
    #
    #   * `INVALID` - The IAM role ARN is associated with the DB instance.
    #     But the DB instance is unable to assume the IAM role in order to
    #     access other Amazon Web Services services on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceAssociatedRole AWS API Documentation
    #
    class AwsRdsDbInstanceAssociatedRole < Struct.new(
      :role_arn,
      :feature_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB instance.
    #
    # @!attribute [rw] associated_roles
    #   The IAM roles associated with the DB instance.
    #   @return [Array<Types::AwsRdsDbInstanceAssociatedRole>]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The identifier of the CA certificate for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   If the DB instance is a member of a DB cluster, contains the name of
    #   the DB cluster that the DB instance is a member of.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains a user-supplied database identifier. This identifier is the
    #   unique key that identifies a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   Contains the name of the compute and memory capacity class of the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_port
    #   Specifies the port that the DB instance listens on. If the DB
    #   instance is part of a DB cluster, this can be a different port than
    #   the DB cluster port.
    #   @return [Integer]
    #
    # @!attribute [rw] dbi_resource_id
    #   The Amazon Web Services Region-unique, immutable identifier for the
    #   DB instance. This identifier is found in CloudTrail log entries
    #   whenever the KMS key for the DB instance is accessed.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The meaning of this parameter differs according to the database
    #   engine you use.
    #
    #   **MySQL, MariaDB, SQL Server, PostgreSQL**
    #
    #   Contains the name of the initial database of this instance that was
    #   provided at create time, if one was specified when the DB instance
    #   was created. This same name is returned for the life of the DB
    #   instance.
    #
    #   **Oracle**
    #
    #   Contains the Oracle System ID (SID) of the created DB instance. Not
    #   shown when the returned parameters do not apply to an Oracle DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether the DB instance has deletion protection enabled.
    #
    #   When deletion protection is enabled, the database cannot be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   Specifies the connection endpoint.
    #   @return [Types::AwsRdsDbInstanceEndpoint]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to use for this DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of IAM accounts to database accounts is enabled, and
    #   otherwise false.
    #
    #   IAM database authentication can be enabled for the following
    #   database engines.
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   * Aurora 5.6 or higher
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_create_time
    #   Indicates when the DB instance was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is true, the KMS key identifier for the
    #   encrypted DB instance.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the DB instance.
    #
    #   A value of true specifies an Internet-facing instance with a
    #   publicly resolvable DNS name, which resolves to a public IP address.
    #
    #   A value of false specifies an internal instance with a DNS name that
    #   resolves to a private IP address.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which the instance is associated for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_groups
    #   A list of VPC security groups that the DB instance belongs to.
    #   @return [Array<Types::AwsRdsDbInstanceVpcSecurityGroup>]
    #
    # @!attribute [rw] multi_az
    #   Whether the DB instance is a multiple Availability Zone deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] enhanced_monitoring_resource_arn
    #   The ARN of the CloudWatch Logs log stream that receives the enhanced
    #   monitoring metrics data for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_status
    #   The current status of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The master user name of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) to initially allocate for the
    #   DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The range of time each day when automated backups are created, if
    #   automated backups are enabled.
    #
    #   Uses the format `HH:MM-HH:MM`. For example, `04:52-05:22`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which to retain automated backups.
    #   @return [Integer]
    #
    # @!attribute [rw] db_security_groups
    #   A list of the DB security groups to assign to the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_parameter_groups
    #   A list of the DB parameter groups to assign to the DB instance.
    #   @return [Array<Types::AwsRdsDbParameterGroup>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the DB instance will be created.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Information about the subnet group that is associated with the DB
    #   instance.
    #   @return [Types::AwsRdsDbSubnetGroup]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Uses the format `<day>:HH:MM-<day>:HH:MM`.
    #
    #   For the day values, use
    #   `mon`\|`tue`\|`wed`\|`thu`\|`fri`\|`sat`\|`sun`.
    #
    #   For example, `sun:09:32-sun:10:02`.
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   Changes to the DB instance that are currently pending.
    #   @return [Types::AwsRdsDbPendingModifiedValues]
    #
    # @!attribute [rw] latest_restorable_time
    #   Specifies the latest time to which a database can be restored with
    #   point-in-time restore.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates whether minor version patches are applied automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_replica_source_db_instance_identifier
    #   If this DB instance is a read replica, contains the identifier of
    #   the source DB instance.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_db_instance_identifiers
    #   List of identifiers of the read replicas associated with this DB
    #   instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] read_replica_db_cluster_identifiers
    #   List of identifiers of Aurora DB clusters to which the RDS DB
    #   instance is replicated as a read replica.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_model
    #   License model information for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the provisioned IOPS (I/O operations per second) for this
    #   DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_memberships
    #   The list of option group memberships for this DB instance.
    #   @return [Array<Types::AwsRdsDbOptionGroupMembership>]
    #
    # @!attribute [rw] character_set_name
    #   The name of the character set that this DB instance is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   For a DB instance with multi-Availability Zone support, the name of
    #   the secondary Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] status_infos
    #   The status of a read replica. If the instance isn't a read replica,
    #   this is empty.
    #   @return [Array<Types::AwsRdsDbStatusInfo>]
    #
    # @!attribute [rw] storage_type
    #   The storage type for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] domain_memberships
    #   The Active Directory domain membership records associated with the
    #   DB instance.
    #   @return [Array<Types::AwsRdsDbDomainMembership>]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Whether to copy resource tags to snapshots of the DB instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when enhanced monitoring
    #   metrics are collected for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits Amazon RDS to send enhanced
    #   monitoring metrics to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   The order in which to promote an Aurora replica to the primary
    #   instance after a failure of the existing primary instance.
    #   @return [Integer]
    #
    # @!attribute [rw] timezone
    #   The time zone of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_enabled
    #   Indicates whether Performance Insights is enabled for the DB
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The identifier of the KMS key used to encrypt the Performance
    #   Insights data.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled_cloud_watch_logs_exports
    #   A list of log types that this DB instance is configured to export to
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::AwsRdsDbProcessorFeature>]
    #
    # @!attribute [rw] listener_endpoint
    #   Specifies the connection endpoint.
    #   @return [Types::AwsRdsDbInstanceEndpoint]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit to which Amazon RDS can automatically scale the
    #   storage of the DB instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceDetails AWS API Documentation
    #
    class AwsRdsDbInstanceDetails < Struct.new(
      :associated_roles,
      :ca_certificate_identifier,
      :db_cluster_identifier,
      :db_instance_identifier,
      :db_instance_class,
      :db_instance_port,
      :dbi_resource_id,
      :db_name,
      :deletion_protection,
      :endpoint,
      :engine,
      :engine_version,
      :iam_database_authentication_enabled,
      :instance_create_time,
      :kms_key_id,
      :publicly_accessible,
      :storage_encrypted,
      :tde_credential_arn,
      :vpc_security_groups,
      :multi_az,
      :enhanced_monitoring_resource_arn,
      :db_instance_status,
      :master_username,
      :allocated_storage,
      :preferred_backup_window,
      :backup_retention_period,
      :db_security_groups,
      :db_parameter_groups,
      :availability_zone,
      :db_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :latest_restorable_time,
      :auto_minor_version_upgrade,
      :read_replica_source_db_instance_identifier,
      :read_replica_db_instance_identifiers,
      :read_replica_db_cluster_identifiers,
      :license_model,
      :iops,
      :option_group_memberships,
      :character_set_name,
      :secondary_availability_zone,
      :status_infos,
      :storage_type,
      :domain_memberships,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :promotion_tier,
      :timezone,
      :performance_insights_enabled,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :enabled_cloud_watch_logs_exports,
      :processor_features,
      :listener_endpoint,
      :max_allocated_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the connection endpoint.
    #
    # @!attribute [rw] address
    #   Specifies the DNS address of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceEndpoint AWS API Documentation
    #
    class AwsRdsDbInstanceEndpoint < Struct.new(
      :address,
      :port,
      :hosted_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A VPC security groups that the DB instance belongs to.
    #
    # @!attribute [rw] vpc_security_group_id
    #   The name of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceVpcSecurityGroup AWS API Documentation
    #
    class AwsRdsDbInstanceVpcSecurityGroup < Struct.new(
      :vpc_security_group_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An option group membership.
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the option group membership.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbOptionGroupMembership AWS API Documentation
    #
    class AwsRdsDbOptionGroupMembership < Struct.new(
      :option_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a parameter group for a DB instance.
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of parameter updates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbParameterGroup AWS API Documentation
    #
    class AwsRdsDbParameterGroup < Struct.new(
      :db_parameter_group_name,
      :parameter_apply_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Changes to a DB instance that are currently pending.
    #
    # @!attribute [rw] db_instance_class
    #   The new DB instance class for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The new value of the allocated storage for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   The new master user password for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The new port for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_retention_period
    #   The new backup retention period for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Indicates that a single Availability Zone DB instance is changing to
    #   a multiple Availability Zone deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The new engine version for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The new license model value for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The new provisioned IOPS value for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_identifier
    #   The new DB instance identifier for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The new storage type for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The new CA certificate identifier for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the new subnet group for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] pending_cloud_watch_logs_exports
    #   A list of log types that are being enabled or disabled.
    #   @return [Types::AwsRdsPendingCloudWatchLogsExports]
    #
    # @!attribute [rw] processor_features
    #   Processor features that are being updated.
    #   @return [Array<Types::AwsRdsDbProcessorFeature>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbPendingModifiedValues AWS API Documentation
    #
    class AwsRdsDbPendingModifiedValues < Struct.new(
      :db_instance_class,
      :allocated_storage,
      :master_user_password,
      :port,
      :backup_retention_period,
      :multi_az,
      :engine_version,
      :license_model,
      :iops,
      :db_instance_identifier,
      :storage_type,
      :ca_certificate_identifier,
      :db_subnet_group_name,
      :pending_cloud_watch_logs_exports,
      :processor_features)
      SENSITIVE = []
      include Aws::Structure
    end

    # A processor feature.
    #
    # @!attribute [rw] name
    #   The name of the processor feature. Valid values are `coreCount` or
    #   `threadsPerCore`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the processor feature.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbProcessorFeature AWS API Documentation
    #
    class AwsRdsDbProcessorFeature < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon RDS DB security group.
    #
    # @!attribute [rw] db_security_group_arn
    #   The ARN for the DB security group.
    #   @return [String]
    #
    # @!attribute [rw] db_security_group_description
    #   Provides the description of the DB security group.
    #   @return [String]
    #
    # @!attribute [rw] db_security_group_name
    #   Specifies the name of the DB security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_groups
    #   Contains a list of EC2 security groups.
    #   @return [Array<Types::AwsRdsDbSecurityGroupEc2SecurityGroup>]
    #
    # @!attribute [rw] ip_ranges
    #   Contains a list of IP ranges.
    #   @return [Array<Types::AwsRdsDbSecurityGroupIpRange>]
    #
    # @!attribute [rw] owner_id
    #   Provides the Amazon Web Services ID of the owner of a specific DB
    #   security group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides VPC ID associated with the DB security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSecurityGroupDetails AWS API Documentation
    #
    class AwsRdsDbSecurityGroupDetails < Struct.new(
      :db_security_group_arn,
      :db_security_group_description,
      :db_security_group_name,
      :ec2_security_groups,
      :ip_ranges,
      :owner_id,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # EC2 security group information for an RDS DB security group.
    #
    # @!attribute [rw] ec2_security_group_id
    #   Specifies the ID for the EC2 security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   Specifies the name of the EC2 security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   Provides the Amazon Web Services ID of the owner of the EC2 security
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Provides the status of the EC2 security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSecurityGroupEc2SecurityGroup AWS API Documentation
    #
    class AwsRdsDbSecurityGroupEc2SecurityGroup < Struct.new(
      :ec2_security_group_id,
      :ec2_security_group_name,
      :ec2_security_group_owner_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # IP range information for an RDS DB security group.
    #
    # @!attribute [rw] cidr_ip
    #   Specifies the IP range.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of the IP range.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSecurityGroupIpRange AWS API Documentation
    #
    class AwsRdsDbSecurityGroupIpRange < Struct.new(
      :cidr_ip,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Amazon RDS DB cluster snapshot.
    #
    # @!attribute [rw] db_snapshot_identifier
    #   The name or ARN of the DB snapshot that is used to restore the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   A name for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   When the snapshot was taken in Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to use for this DB instance. Valid
    #   values are as follows:
    #
    #   * `aurora`
    #
    #   * `aurora-mysql`
    #
    #   * `aurora-postgresql`
    #
    #   * `c`
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-se`
    #
    #   * `oracle-se1`
    #
    #   * `oracle-se2`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-web`
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) to be initially allocated for
    #   the database instance.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of this DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that the database engine was listening on at the time of
    #   the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   Specifies the name of the Availability Zone in which the DB instance
    #   was located at the time of the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID associated with the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] instance_create_time
    #   Specifies the time in Coordinated Universal Time (UTC) when the DB
    #   instance, from which the snapshot was taken, was created.
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The master user name for the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   License model information for the restored DB instance.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The provisioned IOPS (I/O operations per second) value of the DB
    #   instance at the time of the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   The option group name for the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   The percentage of the estimated data that has been transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] source_region
    #   The Amazon Web Services Region that the DB snapshot was created in
    #   or copied from.
    #   @return [String]
    #
    # @!attribute [rw] source_db_snapshot_identifier
    #   The DB snapshot ARN that the DB snapshot was copied from.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The storage type associated with the DB snapshot. Valid values are
    #   as follows:
    #
    #   * `gp2`
    #
    #   * `io1`
    #
    #   * `standard`
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Whether the DB snapshot is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `Encrypted` is `true`, the KMS key identifier for the encrypted
    #   DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone of the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   Whether mapping of IAM accounts to database accounts is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::AwsRdsDbProcessorFeature>]
    #
    # @!attribute [rw] dbi_resource_id
    #   The identifier for the source DB instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSnapshotDetails AWS API Documentation
    #
    class AwsRdsDbSnapshotDetails < Struct.new(
      :db_snapshot_identifier,
      :db_instance_identifier,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :availability_zone,
      :vpc_id,
      :instance_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :iops,
      :option_group_name,
      :percent_progress,
      :source_region,
      :source_db_snapshot_identifier,
      :storage_type,
      :tde_credential_arn,
      :encrypted,
      :kms_key_id,
      :timezone,
      :iam_database_authentication_enabled,
      :processor_features,
      :dbi_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the status of a read replica.
    #
    # @!attribute [rw] status_type
    #   The type of status. For a read replica, the status type is read
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] normal
    #   Whether the read replica instance is operating normally.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the read replica instance.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If the read replica is currently in an error state, provides the
    #   error details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbStatusInfo AWS API Documentation
    #
    class AwsRdsDbStatusInfo < Struct.new(
      :status_type,
      :normal,
      :status,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the subnet group for the database instance.
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_status
    #   The status of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of subnets in the subnet group.
    #   @return [Array<Types::AwsRdsDbSubnetGroupSubnet>]
    #
    # @!attribute [rw] db_subnet_group_arn
    #   The ARN of the subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSubnetGroup AWS API Documentation
    #
    class AwsRdsDbSubnetGroup < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a subnet in a subnet group.
    #
    # @!attribute [rw] subnet_identifier
    #   The identifier of a subnet in the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   Information about the Availability Zone for a subnet in the subnet
    #   group.
    #   @return [Types::AwsRdsDbSubnetGroupSubnetAvailabilityZone]
    #
    # @!attribute [rw] subnet_status
    #   The status of a subnet in the subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSubnetGroupSubnet AWS API Documentation
    #
    class AwsRdsDbSubnetGroupSubnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Availability Zone for a subnet in a subnet group.
    #
    # @!attribute [rw] name
    #   The name of the Availability Zone for a subnet in the subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSubnetGroupSubnetAvailabilityZone AWS API Documentation
    #
    class AwsRdsDbSubnetGroupSubnetAvailabilityZone < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon RDS event notification subscription. The
    # subscription allows Amazon RDS to post events to an SNS topic.
    #
    # @!attribute [rw] cust_subscription_id
    #   The identifier of the account that is associated with the event
    #   notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] customer_aws_id
    #   The identifier of the event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the event notification subscription is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] event_categories_list
    #   The list of event categories for the event notification
    #   subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_subscription_arn
    #   The ARN of the event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The ARN of the SNS topic to post the event notifications to.
    #   @return [String]
    #
    # @!attribute [rw] source_ids_list
    #   A list of source identifiers for the event notification
    #   subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_type
    #   The source type for the event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the event notification subscription.
    #
    #   Valid values: `creating` \| `modifying` \| `deleting` \| `active` \|
    #   `no-permission` \| `topic-not-exist`
    #   @return [String]
    #
    # @!attribute [rw] subscription_creation_time
    #   The datetime when the event notification subscription was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsEventSubscriptionDetails AWS API Documentation
    #
    class AwsRdsEventSubscriptionDetails < Struct.new(
      :cust_subscription_id,
      :customer_aws_id,
      :enabled,
      :event_categories_list,
      :event_subscription_arn,
      :sns_topic_arn,
      :source_ids_list,
      :source_type,
      :status,
      :subscription_creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the log types to enable and disable.
    #
    # @!attribute [rw] log_types_to_enable
    #   A list of log types that are being enabled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_types_to_disable
    #   A list of log types that are being disabled.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsPendingCloudWatchLogsExports AWS API Documentation
    #
    class AwsRdsPendingCloudWatchLogsExports < Struct.new(
      :log_types_to_enable,
      :log_types_to_disable)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node in an Amazon Redshift cluster.
    #
    # @!attribute [rw] node_role
    #   The role of the node. A node might be a leader node or a compute
    #   node.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address of the node.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The public IP address of the node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterNode AWS API Documentation
    #
    class AwsRedshiftClusterClusterNode < Struct.new(
      :node_role,
      :private_ip_address,
      :public_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cluster parameter group that is associated with an Amazon Redshift
    # cluster.
    #
    # @!attribute [rw] cluster_parameter_status_list
    #   The list of parameter statuses.
    #   @return [Array<Types::AwsRedshiftClusterClusterParameterStatus>]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of updates to the parameters.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterParameterGroup AWS API Documentation
    #
    class AwsRedshiftClusterClusterParameterGroup < Struct.new(
      :cluster_parameter_status_list,
      :parameter_apply_status,
      :parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of a parameter in a cluster parameter group for an Amazon
    # Redshift cluster.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of the parameter. Indicates whether the parameter is in
    #   sync with the database, waiting for a cluster reboot, or encountered
    #   an error when it was applied.
    #
    #   Valid values: `in-sync` \| `pending-reboot` \| `applying` \|
    #   `invalid-parameter` \| `apply-deferred` \| `apply-error` \|
    #   `unknown-error`
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_error_description
    #   The error that prevented the parameter from being applied to the
    #   database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterParameterStatus AWS API Documentation
    #
    class AwsRedshiftClusterClusterParameterStatus < Struct.new(
      :parameter_name,
      :parameter_apply_status,
      :parameter_apply_error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A security group that is associated with the cluster.
    #
    # @!attribute [rw] cluster_security_group_name
    #   The name of the cluster security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the cluster security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterSecurityGroup AWS API Documentation
    #
    class AwsRedshiftClusterClusterSecurityGroup < Struct.new(
      :cluster_security_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can configure Amazon Redshift to copy snapshots for a cluster to
    # another Amazon Web Services Region. This parameter provides
    # information about a cross-Region snapshot copy.
    #
    # @!attribute [rw] destination_region
    #   The destination Region that snapshots are automatically copied to
    #   when cross-Region snapshot copy is enabled.
    #   @return [String]
    #
    # @!attribute [rw] manual_snapshot_retention_period
    #   The number of days that manual snapshots are retained in the
    #   destination Region after they are copied from a source Region.
    #
    #   If the value is `-1`, then the manual snapshot is retained
    #   indefinitely.
    #
    #   Valid values: Either `-1` or an integer between 1 and 3,653
    #   @return [Integer]
    #
    # @!attribute [rw] retention_period
    #   The number of days to retain automated snapshots in the destination
    #   Region after they are copied from a source Region.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_copy_grant_name
    #   The name of the snapshot copy grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterSnapshotCopyStatus AWS API Documentation
    #
    class AwsRedshiftClusterClusterSnapshotCopyStatus < Struct.new(
      :destination_region,
      :manual_snapshot_retention_period,
      :retention_period,
      :snapshot_copy_grant_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time windows during which maintenance was deferred for an Amazon
    # Redshift cluster.
    #
    # @!attribute [rw] defer_maintenance_end_time
    #   The end of the time window for which maintenance was deferred.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] defer_maintenance_identifier
    #   The identifier of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] defer_maintenance_start_time
    #   The start of the time window for which maintenance was deferred.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterDeferredMaintenanceWindow AWS API Documentation
    #
    class AwsRedshiftClusterDeferredMaintenanceWindow < Struct.new(
      :defer_maintenance_end_time,
      :defer_maintenance_identifier,
      :defer_maintenance_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon Redshift cluster.
    #
    # @!attribute [rw] allow_version_upgrade
    #   Indicates whether major version upgrades are applied automatically
    #   to the cluster during the maintenance window.
    #   @return [Boolean]
    #
    # @!attribute [rw] automated_snapshot_retention_period
    #   The number of days that automatic cluster snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The name of the Availability Zone in which the cluster is located.
    #   @return [String]
    #
    # @!attribute [rw] cluster_availability_status
    #   The availability status of the cluster for queries. Possible values
    #   are the following:
    #
    #   * `Available` - The cluster is available for queries.
    #
    #   * `Unavailable` - The cluster is not available for queries.
    #
    #   * `Maintenance` - The cluster is intermittently available for
    #     queries due to maintenance activities.
    #
    #   * `Modifying` -The cluster is intermittently available for queries
    #     due to changes that modify the cluster.
    #
    #   * `Failed` - The cluster failed and is not available for queries.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Indicates when the cluster was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_nodes
    #   The nodes in the cluster.
    #   @return [Array<Types::AwsRedshiftClusterClusterNode>]
    #
    # @!attribute [rw] cluster_parameter_groups
    #   The list of cluster parameter groups that are associated with this
    #   cluster.
    #   @return [Array<Types::AwsRedshiftClusterClusterParameterGroup>]
    #
    # @!attribute [rw] cluster_public_key
    #   The public key for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_revision_number
    #   The specific revision number of the database in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_security_groups
    #   A list of cluster security groups that are associated with the
    #   cluster.
    #   @return [Array<Types::AwsRedshiftClusterClusterSecurityGroup>]
    #
    # @!attribute [rw] cluster_snapshot_copy_status
    #   Information about the destination Region and retention period for
    #   the cross-Region snapshot copy.
    #   @return [Types::AwsRedshiftClusterClusterSnapshotCopyStatus]
    #
    # @!attribute [rw] cluster_status
    #   The current status of the cluster.
    #
    #   Valid values: `available` \| `available, prep-for-resize` \|
    #   `available, resize-cleanup` \|` cancelling-resize` \| `creating` \|
    #   `deleting` \| `final-snapshot` \| `hardware-failure` \|
    #   `incompatible-hsm` \|` incompatible-network` \|
    #   `incompatible-parameters` \| `incompatible-restore` \| `modifying`
    #   \| `paused` \| `rebooting` \| `renaming` \| `resizing` \|
    #   `rotating-keys` \| `storage-full` \| `updating-hsm`
    #   @return [String]
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name of the subnet group that is associated with the cluster.
    #   This parameter is valid only when the cluster is in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] cluster_version
    #   The version ID of the Amazon Redshift engine that runs on the
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The name of the initial database that was created when the cluster
    #   was created.
    #
    #   The same name is returned for the life of the cluster.
    #
    #   If an initial database is not specified, a database named `devdev`
    #   is created by default.
    #   @return [String]
    #
    # @!attribute [rw] deferred_maintenance_windows
    #   List of time windows during which maintenance was deferred.
    #   @return [Array<Types::AwsRedshiftClusterDeferredMaintenanceWindow>]
    #
    # @!attribute [rw] elastic_ip_status
    #   Information about the status of the Elastic IP (EIP) address.
    #   @return [Types::AwsRedshiftClusterElasticIpStatus]
    #
    # @!attribute [rw] elastic_resize_number_of_node_options
    #   The number of nodes that you can use the elastic resize method to
    #   resize the cluster to.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the data in the cluster is encrypted at rest.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint.
    #   @return [Types::AwsRedshiftClusterEndpoint]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   Indicates whether to create the cluster with enhanced VPC routing
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] expected_next_snapshot_schedule_time
    #   Indicates when the next snapshot is expected to be taken. The
    #   cluster must have a valid snapshot schedule and have backups
    #   enabled.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] expected_next_snapshot_schedule_time_status
    #   The status of the next expected snapshot.
    #
    #   Valid values: `OnTrack` \| `Pending`
    #   @return [String]
    #
    # @!attribute [rw] hsm_status
    #   Information about whether the Amazon Redshift cluster finished
    #   applying any changes to hardware security module (HSM) settings that
    #   were specified in a modify cluster command.
    #   @return [Types::AwsRedshiftClusterHsmStatus]
    #
    # @!attribute [rw] iam_roles
    #   A list of IAM roles that the cluster can use to access other Amazon
    #   Web Services services.
    #   @return [Array<Types::AwsRedshiftClusterIamRole>]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the KMS encryption key that is used to encrypt
    #   data in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] manual_snapshot_retention_period
    #   The default number of days to retain a manual snapshot.
    #
    #   If the value is `-1`, the snapshot is retained indefinitely.
    #
    #   This setting doesn't change the retention period of existing
    #   snapshots.
    #
    #   Valid values: Either `-1` or an integer between 1 and 3,653
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The master user name for the cluster. This name is used to connect
    #   to the database that is specified in as the value of `DBName`.
    #   @return [String]
    #
    # @!attribute [rw] next_maintenance_window_start_time
    #   Indicates the start of the next maintenance window.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type for the nodes in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of compute nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_actions
    #   A list of cluster operations that are waiting to start.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pending_modified_values
    #   A list of changes to the cluster that are currently pending.
    #   @return [Types::AwsRedshiftClusterPendingModifiedValues]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range, in Universal Coordinated Time (UTC), during
    #   which system maintenance can occur.
    #
    #   Format: ` <day>:HH:MM-<day>:HH:MM`
    #
    #   For the day values, use `mon` \| `tue` \| `wed` \| `thu` \| `fri` \|
    #   `sat` \| `sun`
    #
    #   For example, `sun:09:32-sun:10:02`
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Whether the cluster can be accessed from a public network.
    #   @return [Boolean]
    #
    # @!attribute [rw] resize_info
    #   Information about the resize operation for the cluster.
    #   @return [Types::AwsRedshiftClusterResizeInfo]
    #
    # @!attribute [rw] restore_status
    #   Information about the status of a cluster restore action. Only
    #   applies to a cluster that was created by restoring a snapshot.
    #   @return [Types::AwsRedshiftClusterRestoreStatus]
    #
    # @!attribute [rw] snapshot_schedule_identifier
    #   A unique identifier for the cluster snapshot schedule.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_schedule_state
    #   The current state of the cluster snapshot schedule.
    #
    #   Valid values: `MODIFYING` \| `ACTIVE` \| `FAILED`
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the cluster is in, if the cluster is
    #   in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_groups
    #   The list of VPC security groups that the cluster belongs to, if the
    #   cluster is in a VPC.
    #   @return [Array<Types::AwsRedshiftClusterVpcSecurityGroup>]
    #
    # @!attribute [rw] logging_status
    #   Information about the logging status of the cluster.
    #   @return [Types::AwsRedshiftClusterLoggingStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterDetails AWS API Documentation
    #
    class AwsRedshiftClusterDetails < Struct.new(
      :allow_version_upgrade,
      :automated_snapshot_retention_period,
      :availability_zone,
      :cluster_availability_status,
      :cluster_create_time,
      :cluster_identifier,
      :cluster_nodes,
      :cluster_parameter_groups,
      :cluster_public_key,
      :cluster_revision_number,
      :cluster_security_groups,
      :cluster_snapshot_copy_status,
      :cluster_status,
      :cluster_subnet_group_name,
      :cluster_version,
      :db_name,
      :deferred_maintenance_windows,
      :elastic_ip_status,
      :elastic_resize_number_of_node_options,
      :encrypted,
      :endpoint,
      :enhanced_vpc_routing,
      :expected_next_snapshot_schedule_time,
      :expected_next_snapshot_schedule_time_status,
      :hsm_status,
      :iam_roles,
      :kms_key_id,
      :maintenance_track_name,
      :manual_snapshot_retention_period,
      :master_username,
      :next_maintenance_window_start_time,
      :node_type,
      :number_of_nodes,
      :pending_actions,
      :pending_modified_values,
      :preferred_maintenance_window,
      :publicly_accessible,
      :resize_info,
      :restore_status,
      :snapshot_schedule_identifier,
      :snapshot_schedule_state,
      :vpc_id,
      :vpc_security_groups,
      :logging_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the elastic IP (EIP) address for an Amazon Redshift
    # cluster.
    #
    # @!attribute [rw] elastic_ip
    #   The elastic IP address for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the elastic IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterElasticIpStatus AWS API Documentation
    #
    class AwsRedshiftClusterElasticIpStatus < Struct.new(
      :elastic_ip,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection endpoint for an Amazon Redshift cluster.
    #
    # @!attribute [rw] address
    #   The DNS address of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that the database engine listens on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterEndpoint AWS API Documentation
    #
    class AwsRedshiftClusterEndpoint < Struct.new(
      :address,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about whether an Amazon Redshift cluster finished applying
    # any hardware changes to security module (HSM) settings that were
    # specified in a modify cluster command.
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   The name of the HSM client certificate that the Amazon Redshift
    #   cluster uses to retrieve the data encryption keys that are stored in
    #   an HSM.
    #   @return [String]
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   The name of the HSM configuration that contains the information that
    #   the Amazon Redshift cluster can use to retrieve and store keys in an
    #   HSM.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates whether the Amazon Redshift cluster has finished applying
    #   any HSM settings changes specified in a modify cluster command.
    #
    #   Type: String
    #
    #   Valid values: `active` \| `applying`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterHsmStatus AWS API Documentation
    #
    class AwsRedshiftClusterHsmStatus < Struct.new(
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IAM role that the cluster can use to access other Amazon Web
    # Services services.
    #
    # @!attribute [rw] apply_status
    #   The status of the IAM role's association with the cluster.
    #
    #   Valid values: `in-sync` \| `adding` \| `removing`
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterIamRole AWS API Documentation
    #
    class AwsRedshiftClusterIamRole < Struct.new(
      :apply_status,
      :iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the logging status of the cluster.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket where the log files are stored.
    #   @return [String]
    #
    # @!attribute [rw] last_failure_message
    #   The message indicating that the logs failed to be delivered.
    #   @return [String]
    #
    # @!attribute [rw] last_failure_time
    #   The last time when logs failed to be delivered.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] last_successful_delivery_time
    #   The last time that logs were delivered successfully.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] logging_enabled
    #   Indicates whether logging is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] s3_key_prefix
    #   Provides the prefix applied to the log file names.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterLoggingStatus AWS API Documentation
    #
    class AwsRedshiftClusterLoggingStatus < Struct.new(
      :bucket_name,
      :last_failure_message,
      :last_failure_time,
      :last_successful_delivery_time,
      :logging_enabled,
      :s3_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Changes to the Amazon Redshift cluster that are currently pending.
    #
    # @!attribute [rw] automated_snapshot_retention_period
    #   The pending or in-progress change to the automated snapshot
    #   retention period.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_identifier
    #   The pending or in-progress change to the identifier for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The pending or in-progress change to the cluster type.
    #   @return [String]
    #
    # @!attribute [rw] cluster_version
    #   The pending or in-progress change to the service version.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   The encryption type for a cluster.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   Indicates whether to create the cluster with enhanced VPC routing
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track that the cluster changes to during
    #   the next maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The pending or in-progress change to the master user password for
    #   the cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The pending or in-progress change to the cluster's node type.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The pending or in-progress change to the number of nodes in the
    #   cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   The pending or in-progress change to whether the cluster can be
    #   connected to from the public network.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterPendingModifiedValues AWS API Documentation
    #
    class AwsRedshiftClusterPendingModifiedValues < Struct.new(
      :automated_snapshot_retention_period,
      :cluster_identifier,
      :cluster_type,
      :cluster_version,
      :encryption_type,
      :enhanced_vpc_routing,
      :maintenance_track_name,
      :master_user_password,
      :node_type,
      :number_of_nodes,
      :publicly_accessible)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the resize operation for the cluster.
    #
    # @!attribute [rw] allow_cancel_resize
    #   Indicates whether the resize operation can be canceled.
    #   @return [Boolean]
    #
    # @!attribute [rw] resize_type
    #   The type of resize operation.
    #
    #   Valid values: `ClassicResize`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterResizeInfo AWS API Documentation
    #
    class AwsRedshiftClusterResizeInfo < Struct.new(
      :allow_cancel_resize,
      :resize_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the status of a cluster restore action. It only
    # applies if the cluster was created by restoring a snapshot.
    #
    # @!attribute [rw] current_restore_rate_in_mega_bytes_per_second
    #   The number of megabytes per second being transferred from the backup
    #   storage. Returns the average rate for a completed backup.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Float]
    #
    # @!attribute [rw] elapsed_time_in_seconds
    #   The amount of time an in-progress restore has been running, or the
    #   amount of time it took a completed restore to finish.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_time_to_completion_in_seconds
    #   The estimate of the time remaining before the restore is complete.
    #   Returns 0 for a completed restore.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_in_mega_bytes
    #   The number of megabytes that were transferred from snapshot storage.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_size_in_mega_bytes
    #   The size of the set of snapshot data that was used to restore the
    #   cluster.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the restore action.
    #
    #   Valid values: `starting` \| `restoring` \| `completed` \| `failed`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterRestoreStatus AWS API Documentation
    #
    class AwsRedshiftClusterRestoreStatus < Struct.new(
      :current_restore_rate_in_mega_bytes_per_second,
      :elapsed_time_in_seconds,
      :estimated_time_to_completion_in_seconds,
      :progress_in_mega_bytes,
      :snapshot_size_in_mega_bytes,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A VPC security group that the cluster belongs to, if the cluster is in
    # a VPC.
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_id
    #   The identifier of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterVpcSecurityGroup AWS API Documentation
    #
    class AwsRedshiftClusterVpcSecurityGroup < Struct.new(
      :status,
      :vpc_security_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # provides information about the Amazon S3 Public Access Block
    # configuration for accounts.
    #
    # @!attribute [rw] block_public_acls
    #   Indicates whether to reject calls to update an S3 bucket if the
    #   calls include a public access control list (ACL).
    #   @return [Boolean]
    #
    # @!attribute [rw] block_public_policy
    #   Indicates whether to reject calls to update the access policy for an
    #   S3 bucket or access point if the policy allows public access.
    #   @return [Boolean]
    #
    # @!attribute [rw] ignore_public_acls
    #   Indicates whether Amazon S3 ignores public ACLs that are associated
    #   with an S3 bucket.
    #   @return [Boolean]
    #
    # @!attribute [rw] restrict_public_buckets
    #   Indicates whether to restrict access to an access point or S3 bucket
    #   that has a public policy to only Amazon Web Services service
    #   principals and authorized users within the S3 bucket owner's
    #   account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3AccountPublicAccessBlockDetails AWS API Documentation
    #
    class AwsS3AccountPublicAccessBlockDetails < Struct.new(
      :block_public_acls,
      :block_public_policy,
      :ignore_public_acls,
      :restrict_public_buckets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The lifecycle configuration for the objects in the S3 bucket.
    #
    # @!attribute [rw] rules
    #   The lifecycle rules.
    #   @return [Array<Types::AwsS3BucketBucketLifecycleConfigurationRulesDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationDetails < Struct.new(
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about what Amazon S3 does when a multipart upload is
    # incomplete.
    #
    # @!attribute [rw] days_after_initiation
    #   The number of days after which Amazon S3 cancels an incomplete
    #   multipart upload.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails < Struct.new(
      :days_after_initiation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a lifecycle rule.
    #
    # @!attribute [rw] abort_incomplete_multipart_upload
    #   How Amazon S3 responds when a multipart upload is incomplete.
    #   Specifically, provides a number of days before Amazon S3 cancels the
    #   entire upload.
    #   @return [Types::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails]
    #
    # @!attribute [rw] expiration_date
    #   The date when objects are moved or deleted.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] expiration_in_days
    #   The length in days of the lifetime for objects that are subject to
    #   the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] expired_object_delete_marker
    #   Whether Amazon S3 removes a delete marker that has no noncurrent
    #   versions. If set to `true`, the delete marker is expired. If set to
    #   `false`, the policy takes no action.
    #
    #   If you provide `ExpiredObjectDeleteMarker`, you cannot provide
    #   `ExpirationInDays` or `ExpirationDate`.
    #   @return [Boolean]
    #
    # @!attribute [rw] filter
    #   Identifies the objects that a rule applies to.
    #   @return [Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails]
    #
    # @!attribute [rw] id
    #   The unique identifier of the rule.
    #   @return [String]
    #
    # @!attribute [rw] noncurrent_version_expiration_in_days
    #   The number of days that an object is noncurrent before Amazon S3 can
    #   perform the associated action.
    #   @return [Integer]
    #
    # @!attribute [rw] noncurrent_version_transitions
    #   Transition rules that describe when noncurrent objects transition to
    #   a specified storage class.
    #   @return [Array<Types::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails>]
    #
    # @!attribute [rw] prefix
    #   A prefix that identifies one or more objects that the rule applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the rule. Indicates whether the rule is
    #   currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] transitions
    #   Transition rules that indicate when objects transition to a
    #   specified storage class.
    #   @return [Array<Types::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationRulesDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationRulesDetails < Struct.new(
      :abort_incomplete_multipart_upload,
      :expiration_date,
      :expiration_in_days,
      :expired_object_delete_marker,
      :filter,
      :id,
      :noncurrent_version_expiration_in_days,
      :noncurrent_version_transitions,
      :prefix,
      :status,
      :transitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the objects that a rule applies to.
    #
    # @!attribute [rw] predicate
    #   The configuration for the filter.
    #   @return [Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails < Struct.new(
      :predicate)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the filter.
    #
    # @!attribute [rw] operands
    #   The values to use for the filter.
    #   @return [Array<Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails>]
    #
    # @!attribute [rw] prefix
    #   A prefix filter.
    #   @return [String]
    #
    # @!attribute [rw] tag
    #   A tag filter.
    #   @return [Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails]
    #
    # @!attribute [rw] type
    #   Whether to use `AND` or `OR` to join the operands. Valid values are
    #   `LifecycleAndOperator` or `LifecycleOrOperator`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails < Struct.new(
      :operands,
      :prefix,
      :tag,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A value to use for the filter.
    #
    # @!attribute [rw] prefix
    #   Prefix text for matching objects.
    #   @return [String]
    #
    # @!attribute [rw] tag
    #   A tag that is assigned to matching objects.
    #   @return [Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails]
    #
    # @!attribute [rw] type
    #   The type of filter value. Valid values are
    #   `LifecyclePrefixPredicate` or `LifecycleTagPredicate`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails < Struct.new(
      :prefix,
      :tag,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag that is assigned to matching objects.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag filter.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transition rule that describes when noncurrent objects transition to
    # a specified storage class.
    #
    # @!attribute [rw] days
    #   The number of days that an object is noncurrent before Amazon S3 can
    #   perform the associated action.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_class
    #   The class of storage to change the object to after the object is
    #   noncurrent for the specified number of days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails < Struct.new(
      :days,
      :storage_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule for when objects transition to specific storage classes.
    #
    # @!attribute [rw] date
    #   A date on which to transition objects to the specified storage
    #   class. If you provide `Date`, you cannot provide `Days`.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] days
    #   The number of days after which to transition the object to the
    #   specified storage class. If you provide `Days`, you cannot provide
    #   `Date`.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_class
    #   The storage class to transition the object to. Valid values are as
    #   follows:
    #
    #   * `DEEP_ARCHIVE`
    #
    #   * `GLACIER`
    #
    #   * `INTELLIGENT_TIERING`
    #
    #   * `ONEZONE_IA`
    #
    #   * `STANDARD_IA`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails AWS API Documentation
    #
    class AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails < Struct.new(
      :date,
      :days,
      :storage_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the versioning state of an S3 bucket.
    #
    # @!attribute [rw] is_mfa_delete_enabled
    #   Specifies whether MFA delete is currently enabled in the S3 bucket
    #   versioning configuration. If the S3 bucket was never configured with
    #   MFA delete, then this attribute is not included.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The versioning status of the S3 bucket. Valid values are `Enabled`
    #   or `Suspended`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketBucketVersioningConfiguration AWS API Documentation
    #
    class AwsS3BucketBucketVersioningConfiguration < Struct.new(
      :is_mfa_delete_enabled,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Amazon S3 bucket.
    #
    # @!attribute [rw] owner_id
    #   The canonical user ID of the owner of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The display name of the owner of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account identifier of the account that owns
    #   the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Indicates when the S3 bucket was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The encryption rules that are applied to the S3 bucket.
    #   @return [Types::AwsS3BucketServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] bucket_lifecycle_configuration
    #   The lifecycle configuration for objects in the S3 bucket.
    #   @return [Types::AwsS3BucketBucketLifecycleConfigurationDetails]
    #
    # @!attribute [rw] public_access_block_configuration
    #   Provides information about the Amazon S3 Public Access Block
    #   configuration for the S3 bucket.
    #   @return [Types::AwsS3AccountPublicAccessBlockDetails]
    #
    # @!attribute [rw] access_control_list
    #   The access control list for the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket_logging_configuration
    #   The logging configuration for the S3 bucket.
    #   @return [Types::AwsS3BucketLoggingConfiguration]
    #
    # @!attribute [rw] bucket_website_configuration
    #   The website configuration parameters for the S3 bucket.
    #   @return [Types::AwsS3BucketWebsiteConfiguration]
    #
    # @!attribute [rw] bucket_notification_configuration
    #   The notification configuration for the S3 bucket.
    #   @return [Types::AwsS3BucketNotificationConfiguration]
    #
    # @!attribute [rw] bucket_versioning_configuration
    #   The versioning state of an S3 bucket.
    #   @return [Types::AwsS3BucketBucketVersioningConfiguration]
    #
    # @!attribute [rw] object_lock_configuration
    #   Specifies which rule Amazon S3 applies by default to every new
    #   object placed in the specified bucket.
    #   @return [Types::AwsS3BucketObjectLockConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketDetails AWS API Documentation
    #
    class AwsS3BucketDetails < Struct.new(
      :owner_id,
      :owner_name,
      :owner_account_id,
      :created_at,
      :server_side_encryption_configuration,
      :bucket_lifecycle_configuration,
      :public_access_block_configuration,
      :access_control_list,
      :bucket_logging_configuration,
      :bucket_website_configuration,
      :bucket_notification_configuration,
      :bucket_versioning_configuration,
      :object_lock_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about logging for the S3 bucket
    #
    # @!attribute [rw] destination_bucket_name
    #   The name of the S3 bucket where log files for the S3 bucket are
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] log_file_prefix
    #   The prefix added to log files for the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketLoggingConfiguration AWS API Documentation
    #
    class AwsS3BucketLoggingConfiguration < Struct.new(
      :destination_bucket_name,
      :log_file_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The notification configuration for the S3 bucket.
    #
    # @!attribute [rw] configurations
    #   Configurations for S3 bucket notifications.
    #   @return [Array<Types::AwsS3BucketNotificationConfigurationDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketNotificationConfiguration AWS API Documentation
    #
    class AwsS3BucketNotificationConfiguration < Struct.new(
      :configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an S3 bucket notification configuration.
    #
    # @!attribute [rw] events
    #   The list of events that trigger a notification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter
    #   The filters that determine which S3 buckets generate notifications.
    #   @return [Types::AwsS3BucketNotificationConfigurationFilter]
    #
    # @!attribute [rw] destination
    #   The ARN of the Lambda function, Amazon SQS queue, or Amazon SNS
    #   topic that generates the notification.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates the type of notification. Notifications can be generated
    #   using Lambda functions, Amazon SQS queues, or Amazon SNS topics,
    #   with corresponding valid values as follows:
    #
    #   * `LambdaConfiguration`
    #
    #   * `QueueConfiguration`
    #
    #   * `TopicConfiguration`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketNotificationConfigurationDetail AWS API Documentation
    #
    class AwsS3BucketNotificationConfigurationDetail < Struct.new(
      :events,
      :filter,
      :destination,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filtering information for the notifications. The filtering is based on
    # Amazon S3 key names.
    #
    # @!attribute [rw] s3_key_filter
    #   Details for an Amazon S3 filter.
    #   @return [Types::AwsS3BucketNotificationConfigurationS3KeyFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketNotificationConfigurationFilter AWS API Documentation
    #
    class AwsS3BucketNotificationConfigurationFilter < Struct.new(
      :s3_key_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an Amazon S3 filter.
    #
    # @!attribute [rw] filter_rules
    #   The filter rules for the filter.
    #   @return [Array<Types::AwsS3BucketNotificationConfigurationS3KeyFilterRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketNotificationConfigurationS3KeyFilter AWS API Documentation
    #
    class AwsS3BucketNotificationConfigurationS3KeyFilter < Struct.new(
      :filter_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a filter rule.
    #
    # @!attribute [rw] name
    #   Indicates whether the filter is based on the prefix or suffix of the
    #   Amazon S3 key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketNotificationConfigurationS3KeyFilterRule AWS API Documentation
    #
    class AwsS3BucketNotificationConfigurationS3KeyFilterRule < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container element for S3 Object Lock configuration parameters. In
    # Amazon S3, Object Lock can help prevent objects from being deleted or
    # overwritten for a fixed amount of time or indefinitely.
    #
    # @!attribute [rw] object_lock_enabled
    #   Indicates whether the bucket has an Object Lock configuration
    #   enabled.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   Specifies the Object Lock rule for the specified object.
    #   @return [Types::AwsS3BucketObjectLockConfigurationRuleDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketObjectLockConfiguration AWS API Documentation
    #
    class AwsS3BucketObjectLockConfiguration < Struct.new(
      :object_lock_enabled,
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default S3 Object Lock retention mode and period that you want to
    # apply to new objects placed in the specified Amazon S3 bucket.
    #
    # @!attribute [rw] days
    #   The number of days that you want to specify for the default
    #   retention period.
    #   @return [Integer]
    #
    # @!attribute [rw] mode
    #   The default Object Lock retention mode you want to apply to new
    #   objects placed in the specified bucket.
    #   @return [String]
    #
    # @!attribute [rw] years
    #   The number of years that you want to specify for the default
    #   retention period.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails AWS API Documentation
    #
    class AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails < Struct.new(
      :days,
      :mode,
      :years)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the S3 Object Lock rule for the specified object. In Amazon
    # S3, Object Lock can help prevent objects from being deleted or
    # overwritten for a fixed amount of time or indefinitely.
    #
    # @!attribute [rw] default_retention
    #   The default Object Lock retention mode and period that you want to
    #   apply to new objects placed in the specified bucket.
    #   @return [Types::AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketObjectLockConfigurationRuleDetails AWS API Documentation
    #
    class AwsS3BucketObjectLockConfigurationRuleDetails < Struct.new(
      :default_retention)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the default server-side encryption to apply to new objects
    # in the bucket.
    #
    # @!attribute [rw] sse_algorithm
    #   Server-side encryption algorithm to use for the default encryption.
    #   Valid values are `aws: kms` or `AES256`.
    #   @return [String]
    #
    # @!attribute [rw] kms_master_key_id
    #   KMS key ID to use for the default encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketServerSideEncryptionByDefault AWS API Documentation
    #
    class AwsS3BucketServerSideEncryptionByDefault < Struct.new(
      :sse_algorithm,
      :kms_master_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption configuration for the S3 bucket.
    #
    # @!attribute [rw] rules
    #   The encryption rules that are applied to the S3 bucket.
    #   @return [Array<Types::AwsS3BucketServerSideEncryptionRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketServerSideEncryptionConfiguration AWS API Documentation
    #
    class AwsS3BucketServerSideEncryptionConfiguration < Struct.new(
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # An encryption rule to apply to the S3 bucket.
    #
    # @!attribute [rw] apply_server_side_encryption_by_default
    #   Specifies the default server-side encryption to apply to new objects
    #   in the bucket. If a `PUT` object request doesn't specify any
    #   server-side encryption, this default encryption is applied.
    #   @return [Types::AwsS3BucketServerSideEncryptionByDefault]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketServerSideEncryptionRule AWS API Documentation
    #
    class AwsS3BucketServerSideEncryptionRule < Struct.new(
      :apply_server_side_encryption_by_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # Website parameters for the S3 bucket.
    #
    # @!attribute [rw] error_document
    #   The name of the error document for the website.
    #   @return [String]
    #
    # @!attribute [rw] index_document_suffix
    #   The name of the index document for the website.
    #   @return [String]
    #
    # @!attribute [rw] redirect_all_requests_to
    #   The redirect behavior for requests to the website.
    #   @return [Types::AwsS3BucketWebsiteConfigurationRedirectTo]
    #
    # @!attribute [rw] routing_rules
    #   The rules for applying redirects for requests to the website.
    #   @return [Array<Types::AwsS3BucketWebsiteConfigurationRoutingRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketWebsiteConfiguration AWS API Documentation
    #
    class AwsS3BucketWebsiteConfiguration < Struct.new(
      :error_document,
      :index_document_suffix,
      :redirect_all_requests_to,
      :routing_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # The redirect behavior for requests to the website.
    #
    # @!attribute [rw] hostname
    #   The name of the host to redirect requests to.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to use when redirecting requests. By default, this
    #   field uses the same protocol as the original request. Valid values
    #   are `http` or `https`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketWebsiteConfigurationRedirectTo AWS API Documentation
    #
    class AwsS3BucketWebsiteConfigurationRedirectTo < Struct.new(
      :hostname,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule for redirecting requests to the website.
    #
    # @!attribute [rw] condition
    #   Provides the condition that must be met in order to apply the
    #   routing rule.
    #   @return [Types::AwsS3BucketWebsiteConfigurationRoutingRuleCondition]
    #
    # @!attribute [rw] redirect
    #   Provides the rules to redirect the request if the condition in
    #   `Condition` is met.
    #   @return [Types::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketWebsiteConfigurationRoutingRule AWS API Documentation
    #
    class AwsS3BucketWebsiteConfigurationRoutingRule < Struct.new(
      :condition,
      :redirect)
      SENSITIVE = []
      include Aws::Structure
    end

    # The condition that must be met in order to apply the routing rule.
    #
    # @!attribute [rw] http_error_code_returned_equals
    #   Indicates to redirect the request if the HTTP error code matches
    #   this value.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix_equals
    #   Indicates to redirect the request if the key prefix matches this
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketWebsiteConfigurationRoutingRuleCondition AWS API Documentation
    #
    class AwsS3BucketWebsiteConfigurationRoutingRuleCondition < Struct.new(
      :http_error_code_returned_equals,
      :key_prefix_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rules to redirect the request if the condition in `Condition` is
    # met.
    #
    # @!attribute [rw] hostname
    #   The host name to use in the redirect request.
    #   @return [String]
    #
    # @!attribute [rw] http_redirect_code
    #   The HTTP redirect code to use in the response.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to use to redirect the request. By default, uses the
    #   protocol from the original request.
    #   @return [String]
    #
    # @!attribute [rw] replace_key_prefix_with
    #   The object key prefix to use in the redirect request.
    #
    #   Cannot be provided if `ReplaceKeyWith` is present.
    #   @return [String]
    #
    # @!attribute [rw] replace_key_with
    #   The specific object key to use in the redirect request.
    #
    #   Cannot be provided if `ReplaceKeyPrefixWith` is present.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketWebsiteConfigurationRoutingRuleRedirect AWS API Documentation
    #
    class AwsS3BucketWebsiteConfigurationRoutingRuleRedirect < Struct.new(
      :hostname,
      :http_redirect_code,
      :protocol,
      :replace_key_prefix_with,
      :replace_key_with)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon S3 object.
    #
    # @!attribute [rw] last_modified
    #   Indicates when the object was last modified.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The opaque identifier assigned by a web server to a specific version
    #   of a resource found at a URL.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the object.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A standard MIME type describing the format of the object data.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption
    #   If the object is stored using server-side encryption, the value of
    #   the server-side encryption algorithm used when storing this object
    #   in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] ssekms_key_id
    #   The identifier of the KMS symmetric customer managed key that was
    #   used for the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3ObjectDetails AWS API Documentation
    #
    class AwsS3ObjectDetails < Struct.new(
      :last_modified,
      :etag,
      :version_id,
      :content_type,
      :server_side_encryption,
      :ssekms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Amazon SageMaker notebook instance.
    #
    # @!attribute [rw] accelerator_types
    #   A list of Amazon Elastic Inference instance types to associate with
    #   the notebook instance. Currently, only one instance type can be
    #   associated with a notebook instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_code_repositories
    #   An array of up to three Git repositories associated with the
    #   notebook instance. These can be either the names of Git repositories
    #   stored as resources in your account, or the URL of Git repositories
    #   in [CodeCommit][1] or in any other Git repository. These
    #   repositories are cloned at the same level as the default repository
    #   of your notebook instance. For more information, see [Associating
    #   Git repositories with SageMaker notebook instances][2] in the
    #   *Amazon SageMaker Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_code_repository
    #   The Git repository associated with the notebook instance as its
    #   default code repository. This can be either the name of a Git
    #   repository stored as a resource in your account, or the URL of a Git
    #   repository in [CodeCommit][1] or in any other Git repository. When
    #   you open a notebook instance, it opens in the directory that
    #   contains this repository. For more information, see [Associating Git
    #   repositories with SageMaker notebook instances][2] in the *Amazon
    #   SageMaker Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [String]
    #
    # @!attribute [rw] direct_internet_access
    #   Sets whether SageMaker provides internet access to the notebook
    #   instance. If you set this to `Disabled`, this notebook instance is
    #   able to access resources only in your VPC, and is not be able to
    #   connect to SageMaker training and endpoint services unless you
    #   configure a Network Address Translation (NAT) Gateway in your VPC.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If status of the instance is `Failed`, the reason it failed.
    #   @return [String]
    #
    # @!attribute [rw] instance_metadata_service_configuration
    #   Information on the IMDS configuration of the notebook instance.
    #   @return [Types::AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails]
    #
    # @!attribute [rw] instance_type
    #   The type of machine learning (ML) compute instance to launch for the
    #   notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of an Key Management Service (KMS)
    #   key that SageMaker uses to encrypt data on the storage volume
    #   attached to your notebook instance. The KMS key you provide must be
    #   enabled. For information, see [Enabling and disabling keys][1] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/enabling-keys.html
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface ID that SageMaker created when the instance
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_arn
    #   The Amazon Resource Name (ARN) of the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name
    #   The name of a notebook instance lifecycle configuration.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the new notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_status
    #   The status of the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] platform_identifier
    #   The platform identifier of the notebook instance runtime
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] root_access
    #   Whether root access is enabled or disabled for users of the notebook
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The VPC security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the VPC subnet to which you have a connectivity from your
    #   ML compute instance.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL that you use to connect to the Jupyter notebook that is
    #   running in your notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size, in GB, of the ML storage volume to attach to the notebook
    #   instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSageMakerNotebookInstanceDetails AWS API Documentation
    #
    class AwsSageMakerNotebookInstanceDetails < Struct.new(
      :accelerator_types,
      :additional_code_repositories,
      :default_code_repository,
      :direct_internet_access,
      :failure_reason,
      :instance_metadata_service_configuration,
      :instance_type,
      :kms_key_id,
      :network_interface_id,
      :notebook_instance_arn,
      :notebook_instance_lifecycle_config_name,
      :notebook_instance_name,
      :notebook_instance_status,
      :platform_identifier,
      :role_arn,
      :root_access,
      :security_groups,
      :subnet_id,
      :url,
      :volume_size_in_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the instance metadata service (IMDS) configuration of
    # the notebook instance.
    #
    # @!attribute [rw] minimum_instance_metadata_service_version
    #   Indicates the minimum IMDS version that the notebook instance
    #   supports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails AWS API Documentation
    #
    class AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails < Struct.new(
      :minimum_instance_metadata_service_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Secrets Manager secret.
    #
    # @!attribute [rw] rotation_rules
    #   Defines the rotation schedule for the secret.
    #   @return [Types::AwsSecretsManagerSecretRotationRules]
    #
    # @!attribute [rw] rotation_occurred_within_frequency
    #   Whether the rotation occurred within the specified rotation
    #   frequency.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN, Key ID, or alias of the KMS key used to encrypt the
    #   `SecretString` or `SecretBinary` values for versions of this secret.
    #   @return [String]
    #
    # @!attribute [rw] rotation_enabled
    #   Whether rotation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rotation_lambda_arn
    #   The ARN of the Lambda function that rotates the secret.
    #   @return [String]
    #
    # @!attribute [rw] deleted
    #   Whether the secret is deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The user-provided description of the secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecretsManagerSecretDetails AWS API Documentation
    #
    class AwsSecretsManagerSecretDetails < Struct.new(
      :rotation_rules,
      :rotation_occurred_within_frequency,
      :kms_key_id,
      :rotation_enabled,
      :rotation_lambda_arn,
      :deleted,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the rotation schedule for the secret.
    #
    # @!attribute [rw] automatically_after_days
    #   The number of days after the previous rotation to rotate the secret.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecretsManagerSecretRotationRules AWS API Documentation
    #
    class AwsSecretsManagerSecretRotationRules < Struct.new(
      :automatically_after_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a consistent format for Security Hub findings.
    # `AwsSecurityFinding` format allows you to share findings between
    # Amazon Web Services security services and third-party solutions.
    #
    # <note markdown="1"> A finding is a potential security issue generated either by Amazon Web
    # Services services or by the integrated third-party solutions and
    # standards checks.
    #
    #  </note>
    #
    # @!attribute [rw] schema_version
    #   The schema version that a finding is formatted for.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The security findings provider-specific identifier for a finding.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a product
    #   that generates findings. This can be the ARN for a third-party
    #   product that is integrated with Security Hub, or the ARN for a
    #   custom integration.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The name of the product that generated the finding.
    #
    #   Security Hub populates this attribute automatically for each
    #   finding. You cannot update this attribute with `BatchImportFindings`
    #   or `BatchUpdateFindings`. The exception to this is a custom
    #   integration.
    #
    #   When you use the Security Hub console or API to filter findings by
    #   product name, you use this attribute.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   The name of the company for the product that generated the finding.
    #
    #   Security Hub populates this attribute automatically for each
    #   finding. You cannot update this attribute with `BatchImportFindings`
    #   or `BatchUpdateFindings`. The exception to this is a custom
    #   integration.
    #
    #   When you use the Security Hub console or API to filter findings by
    #   company name, you use this attribute.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Region from which the finding was generated.
    #
    #   Security Hub populates this attribute automatically for each
    #   finding. You cannot update it using `BatchImportFindings` or
    #   `BatchUpdateFindings`.
    #   @return [String]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the solution-specific component (a discrete unit
    #   of logic) that generated a finding. In various security findings
    #   providers' solutions, this generator can be called a rule, a check,
    #   a detector, a plugin, etc.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID that a finding is generated in.
    #   @return [String]
    #
    # @!attribute [rw] types
    #   One or more finding types in the format of
    #   `namespace/category/classifier` that classify a finding.
    #
    #   Valid namespace values are: Software and Configuration Checks \|
    #   TTPs \| Effects \| Unusual Behaviors \| Sensitive Data
    #   Identifications
    #   @return [Array<String>]
    #
    # @!attribute [rw] first_observed_at
    #   Indicates when the security findings provider first observed the
    #   potential security issue that a finding captured.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] last_observed_at
    #   Indicates when the security findings provider most recently observed
    #   the potential security issue that a finding captured.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Indicates when the security findings provider created the potential
    #   security issue that a finding captured.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Indicates when the security findings provider last updated the
    #   finding record.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   A finding's severity.
    #   @return [Types::Severity]
    #
    # @!attribute [rw] confidence
    #   A finding's confidence. Confidence is defined as the likelihood
    #   that a finding accurately identifies the behavior or issue that it
    #   was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Integer]
    #
    # @!attribute [rw] criticality
    #   The level of importance assigned to the resources associated with
    #   the finding.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   A finding's title.
    #
    #   <note markdown="1"> In this release, `Title` is a required property.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A finding's description.
    #
    #   <note markdown="1"> In this release, `Description` is a required property.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   A data type that describes the remediation options for a finding.
    #   @return [Types::Remediation]
    #
    # @!attribute [rw] source_url
    #   A URL that links to a page about the current finding in the security
    #   findings provider's solution.
    #   @return [String]
    #
    # @!attribute [rw] product_fields
    #   A data type where security findings providers can include additional
    #   solution-specific details that aren't part of the defined
    #   `AwsSecurityFinding` format.
    #
    #   Can contain up to 50 key-value pairs. For each key-value pair, the
    #   key can contain up to 128 characters, and the value can contain up
    #   to 2048 characters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] malware
    #   A list of malware related to a finding.
    #   @return [Array<Types::Malware>]
    #
    # @!attribute [rw] network
    #   The details of network-related information about a finding.
    #   @return [Types::Network]
    #
    # @!attribute [rw] network_path
    #   Provides information about a network path that is relevant to a
    #   finding. Each entry under `NetworkPath` represents a component of
    #   that path.
    #   @return [Array<Types::NetworkPathComponent>]
    #
    # @!attribute [rw] process
    #   The details of process-related information about a finding.
    #   @return [Types::ProcessDetails]
    #
    # @!attribute [rw] threats
    #   Details about the threat detected in a security finding and the file
    #   paths that were affected by the threat.
    #   @return [Array<Types::Threat>]
    #
    # @!attribute [rw] threat_intel_indicators
    #   Threat intelligence details related to a finding.
    #   @return [Array<Types::ThreatIntelIndicator>]
    #
    # @!attribute [rw] resources
    #   A set of resource data types that describe the resources that the
    #   finding refers to.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] compliance
    #   This data type is exclusive to findings that are generated as the
    #   result of a check run against a specific rule in a supported
    #   security standard, such as CIS Amazon Web Services Foundations.
    #   Contains security standard-related finding details.
    #   @return [Types::Compliance]
    #
    # @!attribute [rw] verification_state
    #   Indicates the veracity of a finding.
    #   @return [String]
    #
    # @!attribute [rw] workflow_state
    #   The workflow state of a finding.
    #   @return [String]
    #
    # @!attribute [rw] workflow
    #   Provides information about the status of the investigation into a
    #   finding.
    #   @return [Types::Workflow]
    #
    # @!attribute [rw] record_state
    #   The record state of a finding.
    #   @return [String]
    #
    # @!attribute [rw] related_findings
    #   A list of related findings.
    #   @return [Array<Types::RelatedFinding>]
    #
    # @!attribute [rw] note
    #   A user-defined note added to a finding.
    #   @return [Types::Note]
    #
    # @!attribute [rw] vulnerabilities
    #   Provides a list of vulnerabilities associated with the findings.
    #   @return [Array<Types::Vulnerability>]
    #
    # @!attribute [rw] patch_summary
    #   Provides an overview of the patch compliance status for an instance
    #   against a selected compliance standard.
    #   @return [Types::PatchSummary]
    #
    # @!attribute [rw] action
    #   Provides details about an action that affects or that was taken on a
    #   resource.
    #   @return [Types::Action]
    #
    # @!attribute [rw] finding_provider_fields
    #   In a `BatchImportFindings` request, finding providers use
    #   `FindingProviderFields` to provide and update their own values for
    #   confidence, criticality, related findings, severity, and types.
    #   @return [Types::FindingProviderFields]
    #
    # @!attribute [rw] sample
    #   Indicates whether the finding is a sample finding.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFinding AWS API Documentation
    #
    class AwsSecurityFinding < Struct.new(
      :schema_version,
      :id,
      :product_arn,
      :product_name,
      :company_name,
      :region,
      :generator_id,
      :aws_account_id,
      :types,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity,
      :confidence,
      :criticality,
      :title,
      :description,
      :remediation,
      :source_url,
      :product_fields,
      :user_defined_fields,
      :malware,
      :network,
      :network_path,
      :process,
      :threats,
      :threat_intel_indicators,
      :resources,
      :compliance,
      :verification_state,
      :workflow_state,
      :workflow,
      :record_state,
      :related_findings,
      :note,
      :vulnerabilities,
      :patch_summary,
      :action,
      :finding_provider_fields,
      :sample)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of attributes that are applied to all active Security
    # Hub-aggregated findings and that result in a subset of findings that
    # are included in this insight.
    #
    # You can filter by up to 10 finding attributes. For each attribute, you
    # can provide up to 20 filter values.
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a
    #   third-party company (security findings provider) after this
    #   provider's product (solution that generates findings) is registered
    #   with Security Hub.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID that a finding is generated in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] id
    #   The security findings provider-specific identifier for a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the solution-specific component (a discrete unit
    #   of logic) that generated a finding. In various security findings
    #   providers' solutions, this generator can be called a rule, a check,
    #   a detector, a plugin, etc.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] region
    #   The Region from which the finding was generated.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] type
    #   A finding type in the format of `namespace/category/classifier` that
    #   classifies a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] first_observed_at
    #   An ISO8601-formatted timestamp that indicates when the security
    #   findings provider first observed the potential security issue that a
    #   finding captured.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] last_observed_at
    #   An ISO8601-formatted timestamp that indicates when the security
    #   findings provider most recently observed the potential security
    #   issue that a finding captured.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] created_at
    #   An ISO8601-formatted timestamp that indicates when the security
    #   findings provider captured the potential security issue that a
    #   finding captured.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] updated_at
    #   An ISO8601-formatted timestamp that indicates when the security
    #   findings provider last updated the finding record.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] severity_product
    #   The native severity as defined by the security findings provider's
    #   solution that generated the finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] severity_normalized
    #   The normalized severity of a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] severity_label
    #   The label of a finding's severity.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] confidence
    #   A finding's confidence. Confidence is defined as the likelihood
    #   that a finding accurately identifies the behavior or issue that it
    #   was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] criticality
    #   The level of importance assigned to the resources associated with
    #   the finding.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] title
    #   A finding's title.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] description
    #   A finding's description.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] recommendation_text
    #   The recommendation of what to do about the issue described in a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] source_url
    #   A URL that links to a page about the current finding in the security
    #   findings provider's solution.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] product_fields
    #   A data type where security findings providers can include additional
    #   solution-specific details that aren't part of the defined
    #   `AwsSecurityFinding` format.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] product_name
    #   The name of the solution (product) that generates findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] company_name
    #   The name of the findings provider (company) that owns the solution
    #   (product) that generates findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] malware_name
    #   The name of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_type
    #   The type of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_path
    #   The filesystem path of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_state
    #   The state of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_direction
    #   Indicates the direction of network traffic associated with a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_protocol
    #   The protocol of network-related information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_source_ip_v4
    #   The source IPv4 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_source_ip_v6
    #   The source IPv6 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_source_port
    #   The source port of network-related information about a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] network_source_domain
    #   The source domain of network-related information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_source_mac
    #   The source media access control (MAC) address of network-related
    #   information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_destination_ip_v4
    #   The destination IPv4 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_destination_ip_v6
    #   The destination IPv6 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_destination_port
    #   The destination port of network-related information about a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] network_destination_domain
    #   The destination domain of network-related information about a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_name
    #   The name of the process.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_path
    #   The path to the process executable.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_pid
    #   The process ID.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] process_parent_pid
    #   The parent process ID. This field accepts positive integers between
    #   `O` and `2147483647`.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] process_launched_at
    #   A timestamp that identifies when the process was launched.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] process_terminated_at
    #   A timestamp that identifies when the process was terminated.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_type
    #   The type of a threat intelligence indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_value
    #   The value of a threat intelligence indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_category
    #   The category of a threat intelligence indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_last_observed_at
    #   A timestamp that identifies the last observation of a threat
    #   intelligence indicator.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_source
    #   The source of the threat intelligence.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_source_url
    #   The URL for more details from the source of the threat intelligence.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_type
    #   Specifies the type of the resource that details are provided for.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_id
    #   The canonical identifier for the given resource type.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_partition
    #   The canonical Amazon Web Services partition name that the Region is
    #   assigned to.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_region
    #   The canonical Amazon Web Services external Region name where this
    #   resource is located.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_tags
    #   A list of Amazon Web Services tags associated with a resource at the
    #   time the finding was processed.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_type
    #   The instance type of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_image_id
    #   The Amazon Machine Image (AMI) ID of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_ip_v4_addresses
    #   The IPv4 addresses associated with the instance.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_ip_v6_addresses
    #   The IPv6 addresses associated with the instance.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_key_name
    #   The key name associated with the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_iam_instance_profile_arn
    #   The IAM profile ARN of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_vpc_id
    #   The identifier of the VPC that the instance was launched in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_subnet_id
    #   The identifier of the subnet that the instance was launched in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_launched_at
    #   The date and time the instance was launched.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_aws_s3_bucket_owner_id
    #   The canonical user ID of the owner of the S3 bucket.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_s3_bucket_owner_name
    #   The display name of the owner of the S3 bucket.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_user_name
    #   The user associated with the IAM access key related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_principal_name
    #   The name of the principal that is associated with an IAM access key.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_status
    #   The status of the IAM access key related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_created_at
    #   The creation date/time of the IAM access key related to a finding.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_aws_iam_user_user_name
    #   The name of an IAM user.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_name
    #   The name of the container related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_image_id
    #   The identifier of the image related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_image_name
    #   The name of the image related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_launched_at
    #   A timestamp that identifies when the container was started.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_details_other
    #   The details of a resource that doesn't have a specific subfield for
    #   the resource type defined.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] compliance_status
    #   Exclusive to findings that are generated as the result of a check
    #   run against a specific rule in a supported standard, such as CIS
    #   Amazon Web Services Foundations. Contains security standard-related
    #   finding details.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] verification_state
    #   The veracity of a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] workflow_state
    #   The workflow state of a finding.
    #
    #   Note that this field is deprecated. To search for a finding based on
    #   its workflow status, use `WorkflowStatus`.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] workflow_status
    #   The status of the investigation into a finding. Allowed values are
    #   the following.
    #
    #   * `NEW` - The initial state of a finding, before it is reviewed.
    #
    #     Security Hub also resets the workflow status from `NOTIFIED` or
    #     `RESOLVED` to `NEW` in the following cases:
    #
    #     * `RecordState` changes from `ARCHIVED` to `ACTIVE`.
    #
    #     * `Compliance.Status` changes from `PASSED` to either `WARNING`,
    #       `FAILED`, or `NOT_AVAILABLE`.
    #
    #   * `NOTIFIED` - Indicates that the resource owner has been notified
    #     about the security issue. Used when the initial reviewer is not
    #     the resource owner, and needs intervention from the resource
    #     owner.
    #
    #     If one of the following occurs, the workflow status is changed
    #     automatically from `NOTIFIED` to `NEW`:
    #
    #     * `RecordState` changes from `ARCHIVED` to `ACTIVE`.
    #
    #     * `Compliance.Status` changes from `PASSED` to `FAILED`,
    #       `WARNING`, or `NOT_AVAILABLE`.
    #
    #   * `SUPPRESSED` - Indicates that you reviewed the finding and do not
    #     believe that any action is needed.
    #
    #     The workflow status of a `SUPPRESSED` finding does not change if
    #     `RecordState` changes from `ARCHIVED` to `ACTIVE`.
    #
    #   * `RESOLVED` - The finding was reviewed and remediated and is now
    #     considered resolved.
    #
    #     The finding remains `RESOLVED` unless one of the following occurs:
    #
    #     * `RecordState` changes from `ARCHIVED` to `ACTIVE`.
    #
    #     * `Compliance.Status` changes from `PASSED` to `FAILED`,
    #       `WARNING`, or `NOT_AVAILABLE`.
    #
    #     In those cases, the workflow status is automatically reset to
    #     `NEW`.
    #
    #     For findings from controls, if `Compliance.Status` is `PASSED`,
    #     then Security Hub automatically sets the workflow status to
    #     `RESOLVED`.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] record_state
    #   The updated record state for the finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_product_arn
    #   The ARN of the solution that generated a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_id
    #   The solution-generated identifier for a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_text
    #   The text of a note.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_updated_at
    #   The timestamp of when the note was updated.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] note_updated_by
    #   The principal that created a note.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] keyword
    #   A keyword for a finding.
    #   @return [Array<Types::KeywordFilter>]
    #
    # @!attribute [rw] finding_provider_fields_confidence
    #   The finding provider value for the finding confidence. Confidence is
    #   defined as the likelihood that a finding accurately identifies the
    #   behavior or issue that it was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] finding_provider_fields_criticality
    #   The finding provider value for the level of importance assigned to
    #   the resources associated with the findings.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] finding_provider_fields_related_findings_id
    #   The finding identifier of a related finding that is identified by
    #   the finding provider.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] finding_provider_fields_related_findings_product_arn
    #   The ARN of the solution that generated a related finding that is
    #   identified by the finding provider.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] finding_provider_fields_severity_label
    #   The finding provider value for the severity label.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] finding_provider_fields_severity_original
    #   The finding provider's original value for the severity.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] finding_provider_fields_types
    #   One or more finding types that the finding provider assigned to the
    #   finding. Uses the format of `namespace/category/classifier` that
    #   classify a finding.
    #
    #   Valid namespace values are: Software and Configuration Checks \|
    #   TTPs \| Effects \| Unusual Behaviors \| Sensitive Data
    #   Identifications
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sample
    #   Indicates whether or not sample findings are included in the filter
    #   results.
    #   @return [Array<Types::BooleanFilter>]
    #
    # @!attribute [rw] compliance_security_control_id
    #   The unique identifier of a control across standards. Values for this
    #   field typically consist of an Amazon Web Service and a number, such
    #   as APIGateway.5.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] compliance_associated_standards_id
    #   The unique identifier of a standard in which a control is enabled.
    #   This field consists of the resource portion of the Amazon Resource
    #   Name (ARN) returned for a standard in the [DescribeStandards][1] API
    #   response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_DescribeStandards.html
    #   @return [Array<Types::StringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFindingFilters AWS API Documentation
    #
    class AwsSecurityFindingFilters < Struct.new(
      :product_arn,
      :aws_account_id,
      :id,
      :generator_id,
      :region,
      :type,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity_product,
      :severity_normalized,
      :severity_label,
      :confidence,
      :criticality,
      :title,
      :description,
      :recommendation_text,
      :source_url,
      :product_fields,
      :product_name,
      :company_name,
      :user_defined_fields,
      :malware_name,
      :malware_type,
      :malware_path,
      :malware_state,
      :network_direction,
      :network_protocol,
      :network_source_ip_v4,
      :network_source_ip_v6,
      :network_source_port,
      :network_source_domain,
      :network_source_mac,
      :network_destination_ip_v4,
      :network_destination_ip_v6,
      :network_destination_port,
      :network_destination_domain,
      :process_name,
      :process_path,
      :process_pid,
      :process_parent_pid,
      :process_launched_at,
      :process_terminated_at,
      :threat_intel_indicator_type,
      :threat_intel_indicator_value,
      :threat_intel_indicator_category,
      :threat_intel_indicator_last_observed_at,
      :threat_intel_indicator_source,
      :threat_intel_indicator_source_url,
      :resource_type,
      :resource_id,
      :resource_partition,
      :resource_region,
      :resource_tags,
      :resource_aws_ec2_instance_type,
      :resource_aws_ec2_instance_image_id,
      :resource_aws_ec2_instance_ip_v4_addresses,
      :resource_aws_ec2_instance_ip_v6_addresses,
      :resource_aws_ec2_instance_key_name,
      :resource_aws_ec2_instance_iam_instance_profile_arn,
      :resource_aws_ec2_instance_vpc_id,
      :resource_aws_ec2_instance_subnet_id,
      :resource_aws_ec2_instance_launched_at,
      :resource_aws_s3_bucket_owner_id,
      :resource_aws_s3_bucket_owner_name,
      :resource_aws_iam_access_key_user_name,
      :resource_aws_iam_access_key_principal_name,
      :resource_aws_iam_access_key_status,
      :resource_aws_iam_access_key_created_at,
      :resource_aws_iam_user_user_name,
      :resource_container_name,
      :resource_container_image_id,
      :resource_container_image_name,
      :resource_container_launched_at,
      :resource_details_other,
      :compliance_status,
      :verification_state,
      :workflow_state,
      :workflow_status,
      :record_state,
      :related_findings_product_arn,
      :related_findings_id,
      :note_text,
      :note_updated_at,
      :note_updated_by,
      :keyword,
      :finding_provider_fields_confidence,
      :finding_provider_fields_criticality,
      :finding_provider_fields_related_findings_id,
      :finding_provider_fields_related_findings_product_arn,
      :finding_provider_fields_severity_label,
      :finding_provider_fields_severity_original,
      :finding_provider_fields_types,
      :sample,
      :compliance_security_control_id,
      :compliance_associated_standards_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies which finding to get the finding history for.
    #
    # @!attribute [rw] id
    #   The identifier of the finding that was specified by the finding
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a product
    #   that generates findings. This can be the ARN for a third-party
    #   product that is integrated with Security Hub, or the ARN for a
    #   custom integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFindingIdentifier AWS API Documentation
    #
    class AwsSecurityFindingIdentifier < Struct.new(
      :id,
      :product_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon SNS topic to which notifications
    # can be published.
    #
    # @!attribute [rw] kms_master_key_id
    #   The ID of an Amazon Web Services managed key for Amazon SNS or a
    #   customer managed key.
    #   @return [String]
    #
    # @!attribute [rw] subscription
    #   Subscription is an embedded property that describes the subscription
    #   endpoints of an Amazon SNS topic.
    #   @return [Array<Types::AwsSnsTopicSubscription>]
    #
    # @!attribute [rw] topic_name
    #   The name of the Amazon SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The subscription's owner.
    #   @return [String]
    #
    # @!attribute [rw] sqs_success_feedback_role_arn
    #   Indicates successful message delivery status for an Amazon SNS topic
    #   that is subscribed to an Amazon SQS endpoint.
    #   @return [String]
    #
    # @!attribute [rw] sqs_failure_feedback_role_arn
    #   Indicates failed message delivery status for an Amazon SNS topic
    #   that is subscribed to an Amazon SQS endpoint.
    #   @return [String]
    #
    # @!attribute [rw] application_success_feedback_role_arn
    #   Indicates failed message delivery status for an Amazon SNS topic
    #   that is subscribed to a platform application endpoint.
    #   @return [String]
    #
    # @!attribute [rw] firehose_success_feedback_role_arn
    #   Indicates successful message delivery status for an Amazon SNS topic
    #   that is subscribed to an Amazon Kinesis Data Firehose endpoint.
    #   @return [String]
    #
    # @!attribute [rw] firehose_failure_feedback_role_arn
    #   Indicates failed message delivery status for an Amazon SNS topic
    #   that is subscribed to an Amazon Kinesis Data Firehose endpoint.
    #   @return [String]
    #
    # @!attribute [rw] http_success_feedback_role_arn
    #   Indicates successful message delivery status for an Amazon SNS topic
    #   that is subscribed to an HTTP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] http_failure_feedback_role_arn
    #   Indicates failed message delivery status for an Amazon SNS topic
    #   that is subscribed to an HTTP endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSnsTopicDetails AWS API Documentation
    #
    class AwsSnsTopicDetails < Struct.new(
      :kms_master_key_id,
      :subscription,
      :topic_name,
      :owner,
      :sqs_success_feedback_role_arn,
      :sqs_failure_feedback_role_arn,
      :application_success_feedback_role_arn,
      :firehose_success_feedback_role_arn,
      :firehose_failure_feedback_role_arn,
      :http_success_feedback_role_arn,
      :http_failure_feedback_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper type for the attributes of an Amazon SNS subscription.
    #
    # @!attribute [rw] endpoint
    #   The subscription's endpoint (format depends on the protocol).
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The subscription's protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSnsTopicSubscription AWS API Documentation
    #
    class AwsSnsTopicSubscription < Struct.new(
      :endpoint,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data about a queue.
    #
    # @!attribute [rw] kms_data_key_reuse_period_seconds
    #   The length of time, in seconds, for which Amazon SQS can reuse a
    #   data key to encrypt or decrypt messages before calling KMS again.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_master_key_id
    #   The ID of an Amazon Web Services managed key for Amazon SQS or a
    #   custom KMS key.
    #   @return [String]
    #
    # @!attribute [rw] queue_name
    #   The name of the new queue.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_target_arn
    #   The ARN of the dead-letter queue to which Amazon SQS moves messages
    #   after the value of `maxReceiveCount` is exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSqsQueueDetails AWS API Documentation
    #
    class AwsSqsQueueDetails < Struct.new(
      :kms_data_key_reuse_period_seconds,
      :kms_master_key_id,
      :queue_name,
      :dead_letter_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the details about the compliance status for a patch.
    #
    # @!attribute [rw] status
    #   The current patch compliance status. Valid values are as follows:
    #
    #   * `COMPLIANT`
    #
    #   * `NON_COMPLIANT`
    #
    #   * `UNSPECIFIED_DATA`
    #   @return [String]
    #
    # @!attribute [rw] compliant_critical_count
    #   For the patches that are compliant, the number that have a severity
    #   of `CRITICAL`.
    #   @return [Integer]
    #
    # @!attribute [rw] compliant_high_count
    #   For the patches that are compliant, the number that have a severity
    #   of `HIGH`.
    #   @return [Integer]
    #
    # @!attribute [rw] compliant_medium_count
    #   For the patches that are compliant, the number that have a severity
    #   of `MEDIUM`.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_type
    #   The type of execution that was used determine compliance.
    #   @return [String]
    #
    # @!attribute [rw] non_compliant_critical_count
    #   For the patch items that are noncompliant, the number of items that
    #   have a severity of `CRITICAL`.
    #   @return [Integer]
    #
    # @!attribute [rw] compliant_informational_count
    #   For the patches that are compliant, the number that have a severity
    #   of `INFORMATIONAL`.
    #   @return [Integer]
    #
    # @!attribute [rw] non_compliant_informational_count
    #   For the patches that are noncompliant, the number that have a
    #   severity of `INFORMATIONAL`.
    #   @return [Integer]
    #
    # @!attribute [rw] compliant_unspecified_count
    #   For the patches that are compliant, the number that have a severity
    #   of `UNSPECIFIED`.
    #   @return [Integer]
    #
    # @!attribute [rw] non_compliant_low_count
    #   For the patches that are noncompliant, the number that have a
    #   severity of `LOW`.
    #   @return [Integer]
    #
    # @!attribute [rw] non_compliant_high_count
    #   For the patches that are noncompliant, the number that have a
    #   severity of `HIGH`.
    #   @return [Integer]
    #
    # @!attribute [rw] compliant_low_count
    #   For the patches that are compliant, the number that have a severity
    #   of `LOW`.
    #   @return [Integer]
    #
    # @!attribute [rw] compliance_type
    #   The type of resource for which the compliance was determined. For
    #   `AwsSsmPatchCompliance`, `ComplianceType` is `Patch`.
    #   @return [String]
    #
    # @!attribute [rw] patch_baseline_id
    #   The identifier of the patch baseline. The patch baseline lists the
    #   patches that are approved for installation.
    #   @return [String]
    #
    # @!attribute [rw] overall_severity
    #   The highest severity for the patches. Valid values are as follows:
    #
    #   * `CRITICAL`
    #
    #   * `HIGH`
    #
    #   * `MEDIUM`
    #
    #   * `LOW`
    #
    #   * `INFORMATIONAL`
    #
    #   * `UNSPECIFIED`
    #   @return [String]
    #
    # @!attribute [rw] non_compliant_medium_count
    #   For the patches that are noncompliant, the number that have a
    #   severity of `MEDIUM`.
    #   @return [Integer]
    #
    # @!attribute [rw] non_compliant_unspecified_count
    #   For the patches that are noncompliant, the number that have a
    #   severity of `UNSPECIFIED`.
    #   @return [Integer]
    #
    # @!attribute [rw] patch_group
    #   The identifier of the patch group for which compliance was
    #   determined. A patch group uses tags to group EC2 instances that
    #   should have the same patch compliance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSsmComplianceSummary AWS API Documentation
    #
    class AwsSsmComplianceSummary < Struct.new(
      :status,
      :compliant_critical_count,
      :compliant_high_count,
      :compliant_medium_count,
      :execution_type,
      :non_compliant_critical_count,
      :compliant_informational_count,
      :non_compliant_informational_count,
      :compliant_unspecified_count,
      :non_compliant_low_count,
      :non_compliant_high_count,
      :compliant_low_count,
      :compliance_type,
      :patch_baseline_id,
      :overall_severity,
      :non_compliant_medium_count,
      :non_compliant_unspecified_count,
      :patch_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the compliance for a patch.
    #
    # @!attribute [rw] compliance_summary
    #   The compliance status details for the patch.
    #   @return [Types::AwsSsmComplianceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSsmPatch AWS API Documentation
    #
    class AwsSsmPatch < Struct.new(
      :compliance_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the state of a patch on an instance based
    # on the patch baseline that was used to patch the instance.
    #
    # @!attribute [rw] patch
    #   Information about the status of a patch.
    #   @return [Types::AwsSsmPatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSsmPatchComplianceDetails AWS API Documentation
    #
    class AwsSsmPatchComplianceDetails < Struct.new(
      :patch)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an Step Functions state machine, which is a
    # workflow consisting of a series of event- driven steps.
    #
    # @!attribute [rw] label
    #   A user-defined or an auto-generated string that identifies a `Map`
    #   state. This parameter is present only if the `stateMachineArn`
    #   specified in input is a qualified state machine ARN.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   Used to set CloudWatch Logs options.
    #   @return [Types::AwsStepFunctionStateMachineLoggingConfigurationDetails]
    #
    # @!attribute [rw] name
    #   The name of the state machine.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used when creating
    #   this state machine.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_arn
    #   The ARN that identifies the state machine.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the state machine.
    #   @return [String]
    #
    # @!attribute [rw] tracing_configuration
    #   Specifies whether X-Ray tracing is enabled.
    #   @return [Types::AwsStepFunctionStateMachineTracingConfigurationDetails]
    #
    # @!attribute [rw] type
    #   The type of the state machine (STANDARD or EXPRESS).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsStepFunctionStateMachineDetails AWS API Documentation
    #
    class AwsStepFunctionStateMachineDetails < Struct.new(
      :label,
      :logging_configuration,
      :name,
      :role_arn,
      :state_machine_arn,
      :status,
      :tracing_configuration,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object describing a CloudWatch log group. For more information, see
    # [ Amazon Web Services::Logs::LogGroup][1] in the *CloudFormation User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html
    #
    # @!attribute [rw] log_group_arn
    #   The ARN (ends with `:*`) of the CloudWatch Logs log group to which
    #   you want your logs emitted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails AWS API Documentation
    #
    class AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails < Struct.new(
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of objects that describes where your execution history events
    # will be logged.
    #
    # @!attribute [rw] cloud_watch_logs_log_group
    #   An object describing a CloudWatch Logs log group. For more
    #   information, see [ Amazon Web Services::Logs::LogGroup][1] in the
    #   *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html
    #   @return [Types::AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails AWS API Documentation
    #
    class AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails < Struct.new(
      :cloud_watch_logs_log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `LoggingConfiguration` data type is used to set CloudWatch Logs
    # options.
    #
    # @!attribute [rw] destinations
    #   An array of objects that describes where your execution history
    #   events will be logged.
    #   @return [Array<Types::AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails>]
    #
    # @!attribute [rw] include_execution_data
    #   Determines whether execution data is included in your log. When set
    #   to false, data is excluded.
    #   @return [Boolean]
    #
    # @!attribute [rw] level
    #   Defines which category of execution history events are logged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsStepFunctionStateMachineLoggingConfigurationDetails AWS API Documentation
    #
    class AwsStepFunctionStateMachineLoggingConfigurationDetails < Struct.new(
      :destinations,
      :include_execution_data,
      :level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether X-Ray tracing is enabled.
    #
    # @!attribute [rw] enabled
    #   When set to true, X-Ray tracing is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsStepFunctionStateMachineTracingConfigurationDetails AWS API Documentation
    #
    class AwsStepFunctionStateMachineTracingConfigurationDetails < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a rate-based rule for global resources. A rate-based
    # rule provides settings to indicate when to allow, block, or count a
    # request. Rate-based rules include the number of requests that arrive
    # over a specified period of time.
    #
    # @!attribute [rw] metric_name
    #   The name of the metrics for the rate-based rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rate-based rule.
    #   @return [String]
    #
    # @!attribute [rw] rate_key
    #   The field that WAF uses to determine whether requests are likely
    #   arriving from single source and are subject to rate monitoring.
    #   @return [String]
    #
    # @!attribute [rw] rate_limit
    #   The maximum number of requests that have an identical value for the
    #   field specified in `RateKey` that are allowed within a five-minute
    #   period. If the number of requests exceeds `RateLimit` and the other
    #   predicates specified in the rule are met, WAF triggers the action
    #   for the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier for the rate-based rule.
    #   @return [String]
    #
    # @!attribute [rw] match_predicates
    #   The predicates to include in the rate-based rule.
    #   @return [Array<Types::AwsWafRateBasedRuleMatchPredicate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRateBasedRuleDetails AWS API Documentation
    #
    class AwsWafRateBasedRuleDetails < Struct.new(
      :metric_name,
      :name,
      :rate_key,
      :rate_limit,
      :rule_id,
      :match_predicates)
      SENSITIVE = []
      include Aws::Structure
    end

    # A match predicate. A predicate might look for characteristics such as
    # specific IP addresses, geographic locations, or sizes.
    #
    # @!attribute [rw] data_id
    #   The unique identifier for the predicate.
    #   @return [String]
    #
    # @!attribute [rw] negated
    #   If set to `true`, then the rule actions are performed on requests
    #   that match the predicate settings.
    #
    #   If set to `false`, then the rule actions are performed on all
    #   requests except those that match the predicate settings.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of predicate. Valid values are as follows:
    #
    #   * `ByteMatch`
    #
    #   * `GeoMatch`
    #
    #   * `IPMatch`
    #
    #   * `RegexMatch`
    #
    #   * `SizeConstraint`
    #
    #   * `SqlInjectionMatch`
    #
    #   * `XssMatch`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRateBasedRuleMatchPredicate AWS API Documentation
    #
    class AwsWafRateBasedRuleMatchPredicate < Struct.new(
      :data_id,
      :negated,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # contains details about a rate-based rule for Regional resources. A
    # rate-based rule provides settings to indicate when to allow, block, or
    # count a request. Rate-based rules include the number of requests that
    # arrive over a specified period of time.
    #
    # @!attribute [rw] metric_name
    #   The name of the metrics for the rate-based rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rate-based rule.
    #   @return [String]
    #
    # @!attribute [rw] rate_key
    #   The field that WAF uses to determine whether requests are likely
    #   arriving from single source and are subject to rate monitoring.
    #   @return [String]
    #
    # @!attribute [rw] rate_limit
    #   The maximum number of requests that have an identical value for the
    #   field specified in `RateKey` that are allowed within a five-minute
    #   period. If the number of requests exceeds `RateLimit` and the other
    #   predicates specified in the rule are met, WAF triggers the action
    #   for the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier for the rate-based rule.
    #   @return [String]
    #
    # @!attribute [rw] match_predicates
    #   The predicates to include in the rate-based rule.
    #   @return [Array<Types::AwsWafRegionalRateBasedRuleMatchPredicate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalRateBasedRuleDetails AWS API Documentation
    #
    class AwsWafRegionalRateBasedRuleDetails < Struct.new(
      :metric_name,
      :name,
      :rate_key,
      :rate_limit,
      :rule_id,
      :match_predicates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a match predicate. A predicate might look for
    # characteristics such as specific IP addresses, geographic locations,
    # or sizes.
    #
    # @!attribute [rw] data_id
    #   The unique identifier for the predicate.
    #   @return [String]
    #
    # @!attribute [rw] negated
    #   If set to `true`, then the rule actions are performed on requests
    #   that match the predicate settings.
    #
    #   If set to `false`, then the rule actions are performed on all
    #   requests except those that match the predicate settings.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of predicate. Valid values are as follows:
    #
    #   * `ByteMatch`
    #
    #   * `GeoMatch`
    #
    #   * `IPMatch`
    #
    #   * `RegexMatch`
    #
    #   * `SizeConstraint`
    #
    #   * `SqlInjectionMatch`
    #
    #   * `XssMatch`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalRateBasedRuleMatchPredicate AWS API Documentation
    #
    class AwsWafRegionalRateBasedRuleMatchPredicate < Struct.new(
      :data_id,
      :negated,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an WAF Regional rule. This rule identifies
    # the web requests that you want to allow, block, or count.
    #
    # @!attribute [rw] metric_name
    #   A name for the metrics for the rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the rule.
    #   @return [String]
    #
    # @!attribute [rw] predicate_list
    #   Specifies the `ByteMatchSet`, `IPSet`, `SqlInjectionMatchSet`,
    #   `XssMatchSet`, `RegexMatchSet`, `GeoMatchSet`, and
    #   `SizeConstraintSet` objects that you want to add to a rule and, for
    #   each object, indicates whether you want to negate the settings.
    #   @return [Array<Types::AwsWafRegionalRulePredicateListDetails>]
    #
    # @!attribute [rw] rule_id
    #   The ID of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalRuleDetails AWS API Documentation
    #
    class AwsWafRegionalRuleDetails < Struct.new(
      :metric_name,
      :name,
      :predicate_list,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an WAF Regional rule group. The rule group
    # is a collection of rules for inspecting and controlling web requests.
    #
    # @!attribute [rw] metric_name
    #   A name for the metrics for this rule group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_id
    #   The ID of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   Provides information about the rule statements used to identify the
    #   web requests that you want to allow, block, or count.
    #   @return [Array<Types::AwsWafRegionalRuleGroupRulesDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalRuleGroupDetails AWS API Documentation
    #
    class AwsWafRegionalRuleGroupDetails < Struct.new(
      :metric_name,
      :name,
      :rule_group_id,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the action that WAF should take on a web request when it
    # matches the criteria defined in the rule.
    #
    # @!attribute [rw] type
    #   Specifies the `ByteMatchSet`, `IPSet`, `SqlInjectionMatchSet`,
    #   `XssMatchSet`, `RegexMatchSet`, `GeoMatchSet`, and
    #   `SizeConstraintSet` objects that you want to add to a rule and, for
    #   each object, indicates whether you want to negate the settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalRuleGroupRulesActionDetails AWS API Documentation
    #
    class AwsWafRegionalRuleGroupRulesActionDetails < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the rules attached to a rule group
    #
    # @!attribute [rw] action
    #   The action that WAF should take on a web request when it matches the
    #   criteria defined in the rule.
    #   @return [Types::AwsWafRegionalRuleGroupRulesActionDetails]
    #
    # @!attribute [rw] priority
    #   If you define more than one rule in a web ACL, WAF evaluates each
    #   request against the rules in order based on the value of `Priority`.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The ID for a rule.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of rule in the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalRuleGroupRulesDetails AWS API Documentation
    #
    class AwsWafRegionalRuleGroupRulesDetails < Struct.new(
      :action,
      :priority,
      :rule_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the `ByteMatchSet`, `IPSet`,
    # `SqlInjectionMatchSet`, `XssMatchSet`, `RegexMatchSet`, `GeoMatchSet`,
    # and `SizeConstraintSet` objects that you want to add to a rule and,
    # for each object, indicates whether you want to negate the settings.
    #
    # @!attribute [rw] data_id
    #   A unique identifier for a predicate in a rule, such as
    #   `ByteMatchSetId` or `IPSetId`.
    #   @return [String]
    #
    # @!attribute [rw] negated
    #   Specifies if you want WAF to allow, block, or count requests based
    #   on the settings in the `ByteMatchSet`, `IPSet`,
    #   `SqlInjectionMatchSet`, `XssMatchSet`, `RegexMatchSet`,
    #   `GeoMatchSet`, or `SizeConstraintSet`.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of predicate in a rule, such as `ByteMatch` or `IPSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalRulePredicateListDetails AWS API Documentation
    #
    class AwsWafRegionalRulePredicateListDetails < Struct.new(
      :data_id,
      :negated,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the web access control list (web ACL). The
    # web ACL contains the rules that identify the requests that you want to
    # allow, block, or count.
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the rules contained in the web ACL
    #   match.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A name for the metrics for this web ACL.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the web ACL.
    #   @return [String]
    #
    # @!attribute [rw] rules_list
    #   An array that contains the action for each rule in a web ACL, the
    #   priority of the rule, and the ID of the rule.
    #   @return [Array<Types::AwsWafRegionalWebAclRulesListDetails>]
    #
    # @!attribute [rw] web_acl_id
    #   The ID of the web ACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalWebAclDetails AWS API Documentation
    #
    class AwsWafRegionalWebAclDetails < Struct.new(
      :default_action,
      :metric_name,
      :name,
      :rules_list,
      :web_acl_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action that WAF takes when a web request matches all conditions in
    # the rule, such as allow, block, or count the request.
    #
    # @!attribute [rw] type
    #   For actions that are associated with a rule, the action that WAF
    #   takes when a web request matches all conditions in a rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalWebAclRulesListActionDetails AWS API Documentation
    #
    class AwsWafRegionalWebAclRulesListActionDetails < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A combination of `ByteMatchSet`, `IPSet`, and/or
    # `SqlInjectionMatchSet` objects that identify the web requests that you
    # want to allow, block, or count.
    #
    # @!attribute [rw] action
    #   The action that WAF takes when a web request matches all conditions
    #   in the rule, such as allow, block, or count the request.
    #   @return [Types::AwsWafRegionalWebAclRulesListActionDetails]
    #
    # @!attribute [rw] override_action
    #   Overrides the rule evaluation result in the rule group.
    #   @return [Types::AwsWafRegionalWebAclRulesListOverrideActionDetails]
    #
    # @!attribute [rw] priority
    #   The order in which WAF evaluates the rules in a web ACL.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The ID of an WAF Regional rule to associate with a web ACL.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   For actions that are associated with a rule, the action that WAF
    #   takes when a web request matches all conditions in a rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalWebAclRulesListDetails AWS API Documentation
    #
    class AwsWafRegionalWebAclRulesListDetails < Struct.new(
      :action,
      :override_action,
      :priority,
      :rule_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the action to use in the place of the action
    # that results from the rule group evaluation.
    #
    # @!attribute [rw] type
    #   Overrides the rule evaluation result in the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRegionalWebAclRulesListOverrideActionDetails AWS API Documentation
    #
    class AwsWafRegionalWebAclRulesListOverrideActionDetails < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a WAF rule. This rule specifies the web
    # requests that you want to allow, block, or count.
    #
    # @!attribute [rw] metric_name
    #   The name of the metrics for this rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the rule.
    #   @return [String]
    #
    # @!attribute [rw] predicate_list
    #   Specifies the `ByteMatchSet`, `IPSet`, `SqlInjectionMatchSet`,
    #   `XssMatchSet`, `RegexMatchSet`, `GeoMatchSet`, and
    #   `SizeConstraintSet` objects that you want to add to a rule and, for
    #   each object, indicates whether you want to negate the settings.
    #   @return [Array<Types::AwsWafRulePredicateListDetails>]
    #
    # @!attribute [rw] rule_id
    #   The ID of the WAF rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRuleDetails AWS API Documentation
    #
    class AwsWafRuleDetails < Struct.new(
      :metric_name,
      :name,
      :predicate_list,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an WAF rule group. A rule group is a
    # collection of rules for inspecting and controlling web requests.
    #
    # @!attribute [rw] metric_name
    #   The name of the metrics for this rule group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_id
    #   The ID of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   Provides information about the rules attached to the rule group.
    #   These rules identify the web requests that you want to allow, block,
    #   or count.
    #   @return [Array<Types::AwsWafRuleGroupRulesDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRuleGroupDetails AWS API Documentation
    #
    class AwsWafRuleGroupDetails < Struct.new(
      :metric_name,
      :name,
      :rule_group_id,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about what action WAF should take on a web
    # request when it matches the criteria defined in the rule.
    #
    # @!attribute [rw] type
    #   The action that WAF should take on a web request when it matches the
    #   rule's statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRuleGroupRulesActionDetails AWS API Documentation
    #
    class AwsWafRuleGroupRulesActionDetails < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the rules attached to the rule group. These
    # rules identify the web requests that you want to allow, block, or
    # count.
    #
    # @!attribute [rw] action
    #   Provides information about what action WAF should take on a web
    #   request when it matches the criteria defined in the rule.
    #   @return [Types::AwsWafRuleGroupRulesActionDetails]
    #
    # @!attribute [rw] priority
    #   If you define more than one rule in a web ACL, WAF evaluates each
    #   request against the rules in order based on the value of `Priority`.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The rule ID for a rule.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRuleGroupRulesDetails AWS API Documentation
    #
    class AwsWafRuleGroupRulesDetails < Struct.new(
      :action,
      :priority,
      :rule_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the `ByteMatchSet`, `IPSet`,
    # `SqlInjectionMatchSet`, `XssMatchSet`, `RegexMatchSet`, `GeoMatchSet`,
    # and `SizeConstraintSet` objects that you want to add to a rule and,
    # for each object, indicates whether you want to negate the settings.
    #
    # @!attribute [rw] data_id
    #   A unique identifier for a predicate in a rule, such as
    #   `ByteMatchSetId` or `IPSetId`.
    #   @return [String]
    #
    # @!attribute [rw] negated
    #   Specifies if you want WAF to allow, block, or count requests based
    #   on the settings in the `ByteMatchSet`, `IPSet`,
    #   `SqlInjectionMatchSet`, `XssMatchSet`, `RegexMatchSet`,
    #   `GeoMatchSet`, or `SizeConstraintSet`.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of predicate in a rule, such as `ByteMatch` or `IPSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafRulePredicateListDetails AWS API Documentation
    #
    class AwsWafRulePredicateListDetails < Struct.new(
      :data_id,
      :negated,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an WAF web access control list (web ACL).
    #
    # @!attribute [rw] name
    #   A friendly name or description of the web ACL. You can't change the
    #   name of a web ACL after you create it.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the rules contained in the web ACL
    #   match.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array that contains the action for each rule in a web ACL, the
    #   priority of the rule, and the ID of the rule.
    #   @return [Array<Types::AwsWafWebAclRule>]
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier for a web ACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafWebAclDetails AWS API Documentation
    #
    class AwsWafWebAclDetails < Struct.new(
      :name,
      :default_action,
      :rules,
      :web_acl_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a rule in an WAF web ACL.
    #
    # @!attribute [rw] action
    #   Specifies the action that CloudFront or WAF takes when a web request
    #   matches the conditions in the rule.
    #   @return [Types::WafAction]
    #
    # @!attribute [rw] excluded_rules
    #   Rules to exclude from a rule group.
    #   @return [Array<Types::WafExcludedRule>]
    #
    # @!attribute [rw] override_action
    #   Use the `OverrideAction` to test your `RuleGroup`.
    #
    #   Any rule in a `RuleGroup` can potentially block a request. If you
    #   set the `OverrideAction` to `None`, the `RuleGroup` blocks a request
    #   if any individual rule in the `RuleGroup` matches the request and is
    #   configured to block that request.
    #
    #   However, if you first want to test the `RuleGroup`, set the
    #   `OverrideAction` to `Count`. The `RuleGroup` then overrides any
    #   block action specified by individual rules contained within the
    #   group. Instead of blocking matching requests, those requests are
    #   counted.
    #
    #   `ActivatedRule`\|`OverrideAction` applies only when updating or
    #   adding a `RuleGroup` to a web ACL. In this case you do not use
    #   `ActivatedRule` `Action`. For all other update requests,
    #   `ActivatedRule` `Action` is used instead of `ActivatedRule`
    #   `OverrideAction`.
    #   @return [Types::WafOverrideAction]
    #
    # @!attribute [rw] priority
    #   Specifies the order in which the rules in a web ACL are evaluated.
    #   Rules with a lower value for `Priority` are evaluated before rules
    #   with a higher value. The value must be a unique integer. If you add
    #   multiple rules to a web ACL, the values do not need to be
    #   consecutive.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The identifier for a rule.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The rule type.
    #
    #   Valid values: `REGULAR` \| `RATE_BASED` \| `GROUP`
    #
    #   The default is `REGULAR`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafWebAclRule AWS API Documentation
    #
    class AwsWafWebAclRule < Struct.new(
      :action,
      :excluded_rules,
      :override_action,
      :priority,
      :rule_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that WAF should allow the request and optionally defines
    # additional custom handling for the request.
    #
    # @!attribute [rw] custom_request_handling
    #   Defines custom handling for the web request. For information about
    #   customizing web requests and responses, see [Customizing web
    #   requests and responses in WAF][1] in the *WAF Developer Guide.*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   @return [Types::AwsWafv2CustomRequestHandlingDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2ActionAllowDetails AWS API Documentation
    #
    class AwsWafv2ActionAllowDetails < Struct.new(
      :custom_request_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that WAF should block the request and optionally defines
    # additional custom handling for the response to the web request.
    #
    # @!attribute [rw] custom_response
    #   Defines a custom response for the web request. For information, see
    #   [Customizing web requests and responses in WAF][1] in the *WAF
    #   Developer Guide.*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   @return [Types::AwsWafv2CustomResponseDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2ActionBlockDetails AWS API Documentation
    #
    class AwsWafv2ActionBlockDetails < Struct.new(
      :custom_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom header for custom request and response handling.
    #
    # @!attribute [rw] name
    #   The name of the custom header.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the custom header.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2CustomHttpHeader AWS API Documentation
    #
    class AwsWafv2CustomHttpHeader < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Custom request handling behavior that inserts custom headers into a
    # web request. WAF uses custom request handling when the rule action
    # doesn't block the request.
    #
    # @!attribute [rw] insert_headers
    #   The HTTP headers to insert into the request.
    #   @return [Array<Types::AwsWafv2CustomHttpHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2CustomRequestHandlingDetails AWS API Documentation
    #
    class AwsWafv2CustomRequestHandlingDetails < Struct.new(
      :insert_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom response to send to the client. You can define a custom
    # response for rule actions and default web ACL actions that are set to
    # block.
    #
    # @!attribute [rw] custom_response_body_key
    #   References the response body that you want WAF to return to the web
    #   request client. You can define a custom response for a rule action
    #   or a default web ACL action that is set to block.
    #   @return [String]
    #
    # @!attribute [rw] response_code
    #   The HTTP status code to return to the client. For a list of status
    #   codes that you can use in your custom responses, see [Supported
    #   status codes for custom response][1] in the *WAF Developer Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/customizing-the-response-status-codes.html
    #   @return [Integer]
    #
    # @!attribute [rw] response_headers
    #   The HTTP headers to use in the response.
    #   @return [Array<Types::AwsWafv2CustomHttpHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2CustomResponseDetails AWS API Documentation
    #
    class AwsWafv2CustomResponseDetails < Struct.new(
      :custom_response_body_key,
      :response_code,
      :response_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an WAFv2 rule group.
    #
    # @!attribute [rw] capacity
    #   The web ACL capacity units (WCUs) required for this rule group.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the rule group that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the rule group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that WAF uses to identify matching web requests, and
    #   parameters that govern how WAF handles them.
    #   @return [Array<Types::AwsWafv2RulesDetails>]
    #
    # @!attribute [rw] scope
    #   Specifies whether the rule group is for an Amazon CloudFront
    #   distribution or for a regional application. A regional application
    #   can be an Application Load Balancer (ALB), an Amazon API Gateway
    #   REST API, an AppSync GraphQL API, or an Amazon Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::AwsWafv2VisibilityConfigDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2RuleGroupDetails AWS API Documentation
    #
    class AwsWafv2RuleGroupDetails < Struct.new(
      :capacity,
      :description,
      :id,
      :name,
      :arn,
      :rules,
      :scope,
      :visibility_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that WAF should run a CAPTCHA check against the request.
    #
    # @!attribute [rw] custom_request_handling
    #   Defines custom handling for the web request, used when the CAPTCHA
    #   inspection determines that the request's token is valid and
    #   unexpired. For more information, see [Customizing web requests and
    #   responses in WAF][1] in the *WAF Developer Guide.*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   @return [Types::AwsWafv2CustomRequestHandlingDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2RulesActionCaptchaDetails AWS API Documentation
    #
    class AwsWafv2RulesActionCaptchaDetails < Struct.new(
      :custom_request_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that WAF should count the request.
    #
    # @!attribute [rw] custom_request_handling
    #   Defines custom handling for the web request. For more information,
    #   see [Customizing web requests and responses in WAF][1] in the *WAF
    #   Developer Guide.*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   @return [Types::AwsWafv2CustomRequestHandlingDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2RulesActionCountDetails AWS API Documentation
    #
    class AwsWafv2RulesActionCountDetails < Struct.new(
      :custom_request_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action that WAF should take on a web request when it matches a
    # rule's statement. Settings at the web ACL level can override the rule
    # action setting.
    #
    # @!attribute [rw] allow
    #   Instructs WAF to allow the web request.
    #   @return [Types::AwsWafv2ActionAllowDetails]
    #
    # @!attribute [rw] block
    #   Instructs WAF to block the web request.
    #   @return [Types::AwsWafv2ActionBlockDetails]
    #
    # @!attribute [rw] captcha
    #   Instructs WAF to run a CAPTCHA check against the web request.
    #   @return [Types::AwsWafv2RulesActionCaptchaDetails]
    #
    # @!attribute [rw] count
    #   Instructs WAF to count the web request and then continue evaluating
    #   the request using the remaining rules in the web ACL.
    #   @return [Types::AwsWafv2RulesActionCountDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2RulesActionDetails AWS API Documentation
    #
    class AwsWafv2RulesActionDetails < Struct.new(
      :allow,
      :block,
      :captcha,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about rules in a rule group. A rule identifies web
    # requests that you want to allow, block, or count. Each rule includes
    # one top-level Statement that WAF uses to identify matching web
    # requests, and parameters that govern how WAF handles them.
    #
    # @!attribute [rw] action
    #   The action that WAF should take on a web request when it matches the
    #   rule statement. Settings at the web ACL level can override the rule
    #   action setting.
    #   @return [Types::AwsWafv2RulesActionDetails]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] override_action
    #   The action to use in the place of the action that results from the
    #   rule group evaluation.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   If you define more than one Rule in a WebACL, WAF evaluates each
    #   request against the Rules in order based on the value of `Priority`.
    #   WAF processes rules with lower priority first. The priorities don't
    #   need to be consecutive, but they must all be different.
    #   @return [Integer]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::AwsWafv2VisibilityConfigDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2RulesDetails AWS API Documentation
    #
    class AwsWafv2RulesDetails < Struct.new(
      :action,
      :name,
      :override_action,
      :priority,
      :visibility_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines and enables Amazon CloudWatch metrics and web request sample
    # collection.
    #
    # @!attribute [rw] cloud_watch_metrics_enabled
    #   A boolean indicating whether the associated resource sends metrics
    #   to Amazon CloudWatch. For the list of available metrics, see [WAF
    #   metrics and dimensions][1] in the *WAF Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics
    #   @return [Boolean]
    #
    # @!attribute [rw] metric_name
    #   A name of the Amazon CloudWatch metric.
    #   @return [String]
    #
    # @!attribute [rw] sampled_requests_enabled
    #   A boolean indicating whether WAF should store a sampling of the web
    #   requests that match the rules. You can view the sampled requests
    #   through the WAF console.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2VisibilityConfigDetails AWS API Documentation
    #
    class AwsWafv2VisibilityConfigDetails < Struct.new(
      :cloud_watch_metrics_enabled,
      :metric_name,
      :sampled_requests_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the action that Amazon CloudFront or WAF takes when a web
    # request matches the conditions in the rule.
    #
    # @!attribute [rw] allow
    #   Specifies that WAF should allow requests by default.
    #   @return [Types::AwsWafv2ActionAllowDetails]
    #
    # @!attribute [rw] block
    #   Specifies that WAF should block requests by default.
    #   @return [Types::AwsWafv2ActionBlockDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2WebAclActionDetails AWS API Documentation
    #
    class AwsWafv2WebAclActionDetails < Struct.new(
      :allow,
      :block)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how WAF should handle CAPTCHA evaluations for rules that
    # don't have their own `CaptchaConfig` settings.
    #
    # @!attribute [rw] immunity_time_property
    #   Determines how long a CAPTCHA timestamp in the token remains valid
    #   after the client successfully solves a CAPTCHA puzzle.
    #   @return [Types::AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2WebAclCaptchaConfigDetails AWS API Documentation
    #
    class AwsWafv2WebAclCaptchaConfigDetails < Struct.new(
      :immunity_time_property)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used for CAPTCHA and challenge token settings. Determines how long a
    # CAPTCHA or challenge timestamp remains valid after WAF updates it for
    # a successful CAPTCHA or challenge response.
    #
    # @!attribute [rw] immunity_time
    #   The amount of time, in seconds, that a CAPTCHA or challenge
    #   timestamp is considered valid by WAF.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails AWS API Documentation
    #
    class AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails < Struct.new(
      :immunity_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an WAFv2 web Access Control List (ACL).
    #
    # @!attribute [rw] name
    #   The name of the web ACL.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the web ACL that you want to
    #   associate with the resource.
    #   @return [String]
    #
    # @!attribute [rw] managedby_firewall_manager
    #   Indicates whether this web ACL is managed by Firewall Manager.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   A unique identifier for the web ACL.
    #   @return [String]
    #
    # @!attribute [rw] capacity
    #   The web ACL capacity units (WCUs) currently being used by this web
    #   ACL.
    #   @return [Integer]
    #
    # @!attribute [rw] captcha_config
    #   Specifies how WAF should handle CAPTCHA evaluations for rules that
    #   don't have their own `CaptchaConfig` settings.
    #   @return [Types::AwsWafv2WebAclCaptchaConfigDetails]
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the Rules contained in the web ACL
    #   match.
    #   @return [Types::AwsWafv2WebAclActionDetails]
    #
    # @!attribute [rw] description
    #   A description of the web ACL that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that WAF uses to identify matching web requests, and
    #   parameters that govern how WAF handles them.
    #   @return [Array<Types::AwsWafv2RulesDetails>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::AwsWafv2VisibilityConfigDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafv2WebAclDetails AWS API Documentation
    #
    class AwsWafv2WebAclDetails < Struct.new(
      :name,
      :arn,
      :managedby_firewall_manager,
      :id,
      :capacity,
      :captcha_config,
      :default_action,
      :description,
      :rules,
      :visibility_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the encryption configuration for X-Ray.
    #
    # @!attribute [rw] key_id
    #   The identifier of the KMS key that is used for encryption. Provided
    #   if `Type` is `KMS`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the encryption configuration. Valid values are
    #   `ACTIVE` or `UPDATING`.
    #
    #   When `Status` is equal to `UPDATING`, X-Ray might use both the old
    #   and new encryption.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of encryption. `KMS` indicates that the encryption uses KMS
    #   keys. `NONE` indicates the default encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsXrayEncryptionConfigDetails AWS API Documentation
    #
    class AwsXrayEncryptionConfigDetails < Struct.new(
      :key_id,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automation_rules_arns
    #   A list of Amazon Resource Names (ARNs) for the rules that are to be
    #   deleted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDeleteAutomationRulesRequest AWS API Documentation
    #
    class BatchDeleteAutomationRulesRequest < Struct.new(
      :automation_rules_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processed_automation_rules
    #   A list of properly processed rule ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unprocessed_automation_rules
    #   A list of objects containing `RuleArn`, `ErrorCode`, and
    #   `ErrorMessage`. This parameter tells you which automation rules the
    #   request didn't delete and why.
    #   @return [Array<Types::UnprocessedAutomationRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDeleteAutomationRulesResponse AWS API Documentation
    #
    class BatchDeleteAutomationRulesResponse < Struct.new(
      :processed_automation_rules,
      :unprocessed_automation_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscription_arns
    #   The ARNs of the standards subscriptions to disable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandardsRequest AWS API Documentation
    #
    class BatchDisableStandardsRequest < Struct.new(
      :standards_subscription_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The details of the standards subscriptions that were disabled.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandardsResponse AWS API Documentation
    #
    class BatchDisableStandardsResponse < Struct.new(
      :standards_subscriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscription_requests
    #   The list of standards checks to enable.
    #   @return [Array<Types::StandardsSubscriptionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandardsRequest AWS API Documentation
    #
    class BatchEnableStandardsRequest < Struct.new(
      :standards_subscription_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The details of the standards subscriptions that were enabled.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandardsResponse AWS API Documentation
    #
    class BatchEnableStandardsResponse < Struct.new(
      :standards_subscriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automation_rules_arns
    #   A list of rule ARNs to get details for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetAutomationRulesRequest AWS API Documentation
    #
    class BatchGetAutomationRulesRequest < Struct.new(
      :automation_rules_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   A list of rule details for the provided rule ARNs.
    #   @return [Array<Types::AutomationRulesConfig>]
    #
    # @!attribute [rw] unprocessed_automation_rules
    #   A list of objects containing `RuleArn`, `ErrorCode`, and
    #   `ErrorMessage`. This parameter tells you which automation rules the
    #   request didn't retrieve and why.
    #   @return [Array<Types::UnprocessedAutomationRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetAutomationRulesResponse AWS API Documentation
    #
    class BatchGetAutomationRulesResponse < Struct.new(
      :rules,
      :unprocessed_automation_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_control_ids
    #   A list of security controls (identified with `SecurityControlId`,
    #   `SecurityControlArn`, or a mix of both parameters). The security
    #   control ID or Amazon Resource Name (ARN) is the same across
    #   standards.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetSecurityControlsRequest AWS API Documentation
    #
    class BatchGetSecurityControlsRequest < Struct.new(
      :security_control_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_controls
    #   An array that returns the identifier, Amazon Resource Name (ARN),
    #   and other details about a security control. The same information is
    #   returned whether the request includes `SecurityControlId` or
    #   `SecurityControlArn`.
    #   @return [Array<Types::SecurityControl>]
    #
    # @!attribute [rw] unprocessed_ids
    #   A security control (identified with `SecurityControlId`,
    #   `SecurityControlArn`, or a mix of both parameters) for which details
    #   cannot be returned.
    #   @return [Array<Types::UnprocessedSecurityControl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetSecurityControlsResponse AWS API Documentation
    #
    class BatchGetSecurityControlsResponse < Struct.new(
      :security_controls,
      :unprocessed_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_control_association_ids
    #   An array with one or more objects that includes a security control
    #   (identified with `SecurityControlId`, `SecurityControlArn`, or a mix
    #   of both parameters) and the Amazon Resource Name (ARN) of a
    #   standard. This field is used to query the enablement status of a
    #   control in a specified standard. The security control ID or ARN is
    #   the same across standards.
    #   @return [Array<Types::StandardsControlAssociationId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetStandardsControlAssociationsRequest AWS API Documentation
    #
    class BatchGetStandardsControlAssociationsRequest < Struct.new(
      :standards_control_association_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_control_association_details
    #   Provides the enablement status of a security control in a specified
    #   standard and other details for the control in relation to the
    #   specified standard.
    #   @return [Array<Types::StandardsControlAssociationDetail>]
    #
    # @!attribute [rw] unprocessed_associations
    #   A security control (identified with `SecurityControlId`,
    #   `SecurityControlArn`, or a mix of both parameters) whose enablement
    #   status in a specified standard cannot be returned.
    #   @return [Array<Types::UnprocessedStandardsControlAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetStandardsControlAssociationsResponse AWS API Documentation
    #
    class BatchGetStandardsControlAssociationsResponse < Struct.new(
      :standards_control_association_details,
      :unprocessed_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   A list of findings to import. To successfully import a finding, it
    #   must follow the [Amazon Web Services Security Finding Format][1].
    #   Maximum of 100 findings per request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html
    #   @return [Array<Types::AwsSecurityFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindingsRequest AWS API Documentation
    #
    class BatchImportFindingsRequest < Struct.new(
      :findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_count
    #   The number of findings that failed to import.
    #   @return [Integer]
    #
    # @!attribute [rw] success_count
    #   The number of findings that were successfully imported.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_findings
    #   The list of findings that failed to import.
    #   @return [Array<Types::ImportFindingsError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindingsResponse AWS API Documentation
    #
    class BatchImportFindingsResponse < Struct.new(
      :failed_count,
      :success_count,
      :failed_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_automation_rules_request_items
    #   An array of ARNs for the rules that are to be updated. Optionally,
    #   you can also include `RuleStatus` and `RuleOrder`.
    #   @return [Array<Types::UpdateAutomationRulesRequestItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateAutomationRulesRequest AWS API Documentation
    #
    class BatchUpdateAutomationRulesRequest < Struct.new(
      :update_automation_rules_request_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processed_automation_rules
    #   A list of properly processed rule ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unprocessed_automation_rules
    #   A list of objects containing `RuleArn`, `ErrorCode`, and
    #   `ErrorMessage`. This parameter tells you which automation rules the
    #   request didn't update and why.
    #   @return [Array<Types::UnprocessedAutomationRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateAutomationRulesResponse AWS API Documentation
    #
    class BatchUpdateAutomationRulesResponse < Struct.new(
      :processed_automation_rules,
      :unprocessed_automation_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_identifiers
    #   The list of findings to update. `BatchUpdateFindings` can be used to
    #   update up to 100 findings at a time.
    #
    #   For each finding, the list provides the finding identifier and the
    #   ARN of the finding provider.
    #   @return [Array<Types::AwsSecurityFindingIdentifier>]
    #
    # @!attribute [rw] note
    #   The updated note.
    #   @return [Types::NoteUpdate]
    #
    # @!attribute [rw] severity
    #   Used to update the finding severity.
    #   @return [Types::SeverityUpdate]
    #
    # @!attribute [rw] verification_state
    #   Indicates the veracity of a finding.
    #
    #   The available values for `VerificationState` are as follows.
    #
    #   * `UNKNOWN` – The default disposition of a security finding
    #
    #   * `TRUE_POSITIVE` – The security finding is confirmed
    #
    #   * `FALSE_POSITIVE` – The security finding was determined to be a
    #     false alarm
    #
    #   * `BENIGN_POSITIVE` – A special case of `TRUE_POSITIVE` where the
    #     finding doesn't pose any threat, is expected, or both
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The updated value for the finding confidence. Confidence is defined
    #   as the likelihood that a finding accurately identifies the behavior
    #   or issue that it was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Integer]
    #
    # @!attribute [rw] criticality
    #   The updated value for the level of importance assigned to the
    #   resources associated with the findings.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] types
    #   One or more finding types in the format of
    #   namespace/category/classifier that classify a finding.
    #
    #   Valid namespace values are as follows.
    #
    #   * Software and Configuration Checks
    #
    #   * TTPs
    #
    #   * Effects
    #
    #   * Unusual Behaviors
    #
    #   * Sensitive Data Identifications
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow
    #   Used to update the workflow status of a finding.
    #
    #   The workflow status indicates the progress of the investigation into
    #   the finding.
    #   @return [Types::WorkflowUpdate]
    #
    # @!attribute [rw] related_findings
    #   A list of findings that are related to the updated findings.
    #   @return [Array<Types::RelatedFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsRequest AWS API Documentation
    #
    class BatchUpdateFindingsRequest < Struct.new(
      :finding_identifiers,
      :note,
      :severity,
      :verification_state,
      :confidence,
      :criticality,
      :types,
      :user_defined_fields,
      :workflow,
      :related_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processed_findings
    #   The list of findings that were updated successfully.
    #   @return [Array<Types::AwsSecurityFindingIdentifier>]
    #
    # @!attribute [rw] unprocessed_findings
    #   The list of findings that were not updated.
    #   @return [Array<Types::BatchUpdateFindingsUnprocessedFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsResponse AWS API Documentation
    #
    class BatchUpdateFindingsResponse < Struct.new(
      :processed_findings,
      :unprocessed_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A finding from a `BatchUpdateFindings` request that Security Hub was
    # unable to update.
    #
    # @!attribute [rw] finding_identifier
    #   The identifier of the finding that was not updated.
    #   @return [Types::AwsSecurityFindingIdentifier]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error. Possible values are:
    #
    #   * `ConcurrentUpdateError` - Another request attempted to update the
    #     finding while this request was being processed. This error may
    #     also occur if you call [ `BatchUpdateFindings` ][1] and [
    #     `BatchImportFindings` ][2] at the same time.
    #
    #   * `DuplicatedFindingIdentifier` - The request included two or more
    #     findings with the same `FindingIdentifier`.
    #
    #   * `FindingNotFound` - The `FindingIdentifier` included in the
    #     request did not match an existing finding.
    #
    #   * `FindingSizeExceeded` - The finding size was greater than the
    #     permissible value of 240 KB.
    #
    #   * `InternalFailure` - An internal service failure occurred when
    #     updating the finding.
    #
    #   * `InvalidInput` - The finding update contained an invalid value
    #     that did not satisfy the [Amazon Web Services Security Finding
    #     Format][3] syntax.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateFindings.html
    #   [2]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchImportFindings.html
    #   [3]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message associated with the error. Possible values are:
    #
    #   * `Concurrent finding updates detected`
    #
    #   * `Finding Identifier is duplicated`
    #
    #   * `Finding Not Found`
    #
    #   * `Finding size exceeded 240 KB`
    #
    #   * `Internal service failure`
    #
    #   * `Invalid Input`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsUnprocessedFinding AWS API Documentation
    #
    class BatchUpdateFindingsUnprocessedFinding < Struct.new(
      :finding_identifier,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_control_association_updates
    #   Updates the enablement status of a security control in a specified
    #   standard.
    #   @return [Array<Types::StandardsControlAssociationUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateStandardsControlAssociationsRequest AWS API Documentation
    #
    class BatchUpdateStandardsControlAssociationsRequest < Struct.new(
      :standards_control_association_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_association_updates
    #   A security control (identified with `SecurityControlId`,
    #   `SecurityControlArn`, or a mix of both parameters) whose enablement
    #   status in a specified standard couldn't be updated.
    #   @return [Array<Types::UnprocessedStandardsControlAssociationUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateStandardsControlAssociationsResponse AWS API Documentation
    #
    class BatchUpdateStandardsControlAssociationsResponse < Struct.new(
      :unprocessed_association_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Boolean filter for querying findings.
    #
    # @!attribute [rw] value
    #   The value of the boolean.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BooleanFilter AWS API Documentation
    #
    class BooleanFilter < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An occurrence of sensitive data detected in a Microsoft Excel
    # workbook, comma-separated value (CSV) file, or tab-separated value
    # (TSV) file.
    #
    # @!attribute [rw] column
    #   The column number of the column that contains the data. For a
    #   Microsoft Excel workbook, the column number corresponds to the
    #   alphabetical column identifiers. For example, a value of 1 for
    #   Column corresponds to the A column in the workbook.
    #   @return [Integer]
    #
    # @!attribute [rw] row
    #   The row number of the row that contains the data.
    #   @return [Integer]
    #
    # @!attribute [rw] column_name
    #   The name of the column that contains the data.
    #   @return [String]
    #
    # @!attribute [rw] cell_reference
    #   For a Microsoft Excel workbook, provides the location of the cell,
    #   as an absolute cell reference, that contains the data. For example,
    #   Sheet2!C5 for cell C5 on Sheet2.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Cell AWS API Documentation
    #
    class Cell < Struct.new(
      :column,
      :row,
      :column_name,
      :cell_reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IPv4 CIDR block association.
    #
    # @!attribute [rw] association_id
    #   The association ID for the IPv4 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block_state
    #   Information about the state of the IPv4 CIDR block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CidrBlockAssociation AWS API Documentation
    #
    class CidrBlockAssociation < Struct.new(
      :association_id,
      :cidr_block,
      :cidr_block_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a city.
    #
    # @!attribute [rw] city_name
    #   The name of the city.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/City AWS API Documentation
    #
    class City < Struct.new(
      :city_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the sensitive data that was detected on the resource.
    #
    # @!attribute [rw] mime_type
    #   The type of content that the finding applies to.
    #   @return [String]
    #
    # @!attribute [rw] size_classified
    #   The total size in bytes of the affected data.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_occurrences
    #   Indicates whether there are additional occurrences of sensitive data
    #   that are not included in the finding. This occurs when the number of
    #   occurrences exceeds the maximum that can be included.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the sensitive data detection.
    #   @return [Types::ClassificationStatus]
    #
    # @!attribute [rw] sensitive_data
    #   Provides details about sensitive data that was identified based on
    #   built-in configuration.
    #   @return [Array<Types::SensitiveDataResult>]
    #
    # @!attribute [rw] custom_data_identifiers
    #   Provides details about sensitive data that was identified based on
    #   customer-defined configuration.
    #   @return [Types::CustomDataIdentifiersResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ClassificationResult AWS API Documentation
    #
    class ClassificationResult < Struct.new(
      :mime_type,
      :size_classified,
      :additional_occurrences,
      :status,
      :sensitive_data,
      :custom_data_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the current status of the sensitive data
    # detection.
    #
    # @!attribute [rw] code
    #   The code that represents the status of the sensitive data detection.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A longer description of the current status of the sensitive data
    #   detection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ClassificationStatus AWS API Documentation
    #
    class ClassificationStatus < Struct.new(
      :code,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains finding details that are specific to control-based findings.
    # Only returned for findings generated from controls.
    #
    # @!attribute [rw] status
    #   The result of a standards check.
    #
    #   The valid values for `Status` are as follows.
    #
    #   * * `PASSED` - Standards check passed for all evaluated resources.
    #
    #     * `WARNING` - Some information is missing or this check is not
    #       supported for your configuration.
    #
    #     * `FAILED` - Standards check failed for at least one evaluated
    #       resource.
    #
    #     * `NOT_AVAILABLE` - Check could not be performed due to a service
    #       outage, API error, or because the result of the Config
    #       evaluation was `NOT_APPLICABLE`. If the Config evaluation result
    #       was `NOT_APPLICABLE`, then after 3 days, Security Hub
    #       automatically archives the finding.
    #   @return [String]
    #
    # @!attribute [rw] related_requirements
    #   For a control, the industry or regulatory framework requirements
    #   that are related to the control. The check for that control is
    #   aligned with these requirements.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status_reasons
    #   For findings generated from controls, a list of reasons behind the
    #   value of `Status`. For the list of status reason codes and their
    #   meanings, see [Standards-related information in the ASFF][1] in the
    #   *Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html#securityhub-standards-results-asff
    #   @return [Array<Types::StatusReason>]
    #
    # @!attribute [rw] security_control_id
    #   The unique identifier of a control across standards. Values for this
    #   field typically consist of an Amazon Web Service and a number, such
    #   as APIGateway.5.
    #   @return [String]
    #
    # @!attribute [rw] associated_standards
    #   The enabled security standards in which a security control is
    #   currently enabled.
    #   @return [Array<Types::AssociatedStandard>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Compliance AWS API Documentation
    #
    class Compliance < Struct.new(
      :status,
      :related_requirements,
      :status_reasons,
      :security_control_id,
      :associated_standards)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container details related to a finding.
    #
    # @!attribute [rw] container_runtime
    #   The runtime of the container.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the container related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The identifier of the container image related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The name of the container image related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] launched_at
    #   Indicates when the container started.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] volume_mounts
    #   Provides information about the mounting of a volume in a container.
    #   @return [Array<Types::VolumeMount>]
    #
    # @!attribute [rw] privileged
    #   When this parameter is `true`, the container is given elevated
    #   privileges on the host container instance (similar to the root
    #   user).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ContainerDetails AWS API Documentation
    #
    class ContainerDetails < Struct.new(
      :container_runtime,
      :name,
      :image_id,
      :image_name,
      :launched_at,
      :volume_mounts,
      :privileged)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a country.
    #
    # @!attribute [rw] country_code
    #   The 2-letter ISO 3166 country code for the country.
    #   @return [String]
    #
    # @!attribute [rw] country_name
    #   The name of the country.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Country AWS API Documentation
    #
    class Country < Struct.new(
      :country_code,
      :country_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the custom action target. Can contain up to 20
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID for the custom action target. Can contain up to 20
    #   alphanumeric characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTargetRequest AWS API Documentation
    #
    class CreateActionTargetRequest < Struct.new(
      :name,
      :description,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arn
    #   The Amazon Resource Name (ARN) for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTargetResponse AWS API Documentation
    #
    class CreateActionTargetResponse < Struct.new(
      :action_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   User-defined tags that help you label the purpose of a rule.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] rule_status
    #   Whether the rule is active after it is created. If this parameter is
    #   equal to `ENABLED`, Security Hub starts applying the rule to
    #   findings and finding updates after the rule is created. To change
    #   the value of this parameter after creating a rule, use [
    #   `BatchUpdateAutomationRules` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateAutomationRules.html
    #   @return [String]
    #
    # @!attribute [rw] rule_order
    #   An integer ranging from 1 to 1000 that represents the order in which
    #   the rule action is applied to findings. Security Hub applies rules
    #   with lower values for this parameter first.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] is_terminal
    #   Specifies whether a rule is the last to be applied with respect to a
    #   finding that matches the rule criteria. This is useful when a
    #   finding matches the criteria for multiple rules, and each rule has
    #   different actions. If the value of this field is set to `true` for a
    #   rule, Security Hub applies the rule action to a finding that matches
    #   the rule criteria and doesn't evaluate other rules for the finding.
    #   The default value of this field is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] criteria
    #   A set of ASFF finding field attributes and corresponding expected
    #   values that Security Hub uses to filter findings. If a rule is
    #   enabled and a finding matches the conditions specified in this
    #   parameter, Security Hub applies the rule action to the finding.
    #   @return [Types::AutomationRulesFindingFilters]
    #
    # @!attribute [rw] actions
    #   One or more actions to update finding fields if a finding matches
    #   the conditions specified in `Criteria`.
    #   @return [Array<Types::AutomationRulesAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateAutomationRuleRequest AWS API Documentation
    #
    class CreateAutomationRuleRequest < Struct.new(
      :tags,
      :rule_status,
      :rule_order,
      :rule_name,
      :description,
      :is_terminal,
      :criteria,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the automation rule that you
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateAutomationRuleResponse AWS API Documentation
    #
    class CreateAutomationRuleResponse < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] region_linking_mode
    #   Indicates whether to aggregate findings from all of the available
    #   Regions in the current partition. Also determines whether to
    #   automatically aggregate findings from new Regions as Security Hub
    #   supports them and you opt into them.
    #
    #   The selected option also determines how to use the Regions provided
    #   in the Regions list.
    #
    #   The options are as follows:
    #
    #   * `ALL_REGIONS` - Indicates to aggregate findings from all of the
    #     Regions where Security Hub is enabled. When you choose this
    #     option, Security Hub also automatically aggregates findings from
    #     new Regions as Security Hub supports them and you opt into them.
    #
    #   * `ALL_REGIONS_EXCEPT_SPECIFIED` - Indicates to aggregate findings
    #     from all of the Regions where Security Hub is enabled, except for
    #     the Regions listed in the `Regions` parameter. When you choose
    #     this option, Security Hub also automatically aggregates findings
    #     from new Regions as Security Hub supports them and you opt into
    #     them.
    #
    #   * `SPECIFIED_REGIONS` - Indicates to aggregate findings only from
    #     the Regions listed in the `Regions` parameter. Security Hub does
    #     not automatically aggregate findings from new Regions.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   If `RegionLinkingMode` is `ALL_REGIONS_EXCEPT_SPECIFIED`, then this
    #   is a space-separated list of Regions that do not aggregate findings
    #   to the aggregation Region.
    #
    #   If `RegionLinkingMode` is `SPECIFIED_REGIONS`, then this is a
    #   space-separated list of Regions that do aggregate findings to the
    #   aggregation Region.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateFindingAggregatorRequest AWS API Documentation
    #
    class CreateFindingAggregatorRequest < Struct.new(
      :region_linking_mode,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_aggregator_arn
    #   The ARN of the finding aggregator. You use the finding aggregator
    #   ARN to retrieve details for, update, and stop finding aggregation.
    #   @return [String]
    #
    # @!attribute [rw] finding_aggregation_region
    #   The aggregation Region.
    #   @return [String]
    #
    # @!attribute [rw] region_linking_mode
    #   Indicates whether to link all Regions, all Regions except for a list
    #   of excluded Regions, or a list of included Regions.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The list of excluded Regions or included Regions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateFindingAggregatorResponse AWS API Documentation
    #
    class CreateFindingAggregatorResponse < Struct.new(
      :finding_aggregator_arn,
      :finding_aggregation_region,
      :region_linking_mode,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the custom insight to create.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more attributes used to filter the findings included in the
    #   insight. The insight only includes findings that match the criteria
    #   defined in the filters.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The attribute used to group the findings for the insight. The
    #   grouping attribute identifies the type of item that the insight
    #   applies to. For example, if an insight is grouped by resource
    #   identifier, then the insight produces a list of resource
    #   identifiers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsightRequest AWS API Documentation
    #
    class CreateInsightRequest < Struct.new(
      :name,
      :filters,
      :group_by_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsightResponse AWS API Documentation
    #
    class CreateInsightResponse < Struct.new(
      :insight_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_details
    #   The list of accounts to associate with the Security Hub
    #   administrator account. For each account, the list includes the
    #   account ID and optionally the email address.
    #   @return [Array<Types::AccountDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembersRequest AWS API Documentation
    #
    class CreateMembersRequest < Struct.new(
      :account_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of Amazon Web Services accounts that were not processed.
    #   For each account, the list includes the account ID and the email
    #   address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembersResponse AWS API Documentation
    #
    class CreateMembersResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of detected instances of sensitive data.
    #
    # @!attribute [rw] count
    #   The total number of occurrences of sensitive data that were
    #   detected.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The ARN of the custom identifier that was used to detect the
    #   sensitive data.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   he name of the custom identifier that detected the sensitive data.
    #   @return [String]
    #
    # @!attribute [rw] occurrences
    #   Details about the sensitive data that was detected.
    #   @return [Types::Occurrences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CustomDataIdentifiersDetections AWS API Documentation
    #
    class CustomDataIdentifiersDetections < Struct.new(
      :count,
      :arn,
      :name,
      :occurrences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an instance of sensitive data that was detected by a
    # customer-defined identifier.
    #
    # @!attribute [rw] detections
    #   The list of detected instances of sensitive data.
    #   @return [Array<Types::CustomDataIdentifiersDetections>]
    #
    # @!attribute [rw] total_count
    #   The total number of occurrences of sensitive data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CustomDataIdentifiersResult AWS API Documentation
    #
    class CustomDataIdentifiersResult < Struct.new(
      :detections,
      :total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # CVSS scores from the advisory related to the vulnerability.
    #
    # @!attribute [rw] version
    #   The version of CVSS for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] base_score
    #   The base CVSS score.
    #   @return [Float]
    #
    # @!attribute [rw] base_vector
    #   The base scoring vector for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The origin of the original CVSS score and vector.
    #   @return [String]
    #
    # @!attribute [rw] adjustments
    #   Adjustments to the CVSS metrics.
    #   @return [Array<Types::Adjustment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Cvss AWS API Documentation
    #
    class Cvss < Struct.new(
      :version,
      :base_score,
      :base_vector,
      :source,
      :adjustments)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about sensitive data that was detected on a resource.
    #
    # @!attribute [rw] detailed_results_location
    #   The path to the folder or file that contains the sensitive data.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   The details about the sensitive data that was detected on the
    #   resource.
    #   @return [Types::ClassificationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DataClassificationDetails AWS API Documentation
    #
    class DataClassificationDetails < Struct.new(
      :detailed_results_location,
      :result)
      SENSITIVE = []
      include Aws::Structure
    end

    # A date filter for querying findings.
    #
    # @!attribute [rw] start
    #   A timestamp that provides the start date for the date filter.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] end
    #   A timestamp that provides the end date for the date filter.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] date_range
    #   A date range for the date filter.
    #   @return [Types::DateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DateFilter AWS API Documentation
    #
    class DateFilter < Struct.new(
      :start,
      :end,
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # A date range for the date filter.
    #
    # @!attribute [rw] value
    #   A date range value for the date filter.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   A date range unit for the date filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DateRange AWS API Documentation
    #
    class DateRange < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The list of prospective member account IDs for which to decline an
    #   invitation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitationsRequest AWS API Documentation
    #
    class DeclineInvitationsRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of Amazon Web Services accounts that were not processed.
    #   For each account, the list includes the account ID and the email
    #   address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitationsResponse AWS API Documentation
    #
    class DeclineInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arn
    #   The Amazon Resource Name (ARN) of the custom action target to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTargetRequest AWS API Documentation
    #
    class DeleteActionTargetRequest < Struct.new(
      :action_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTargetResponse AWS API Documentation
    #
    class DeleteActionTargetResponse < Struct.new(
      :action_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_aggregator_arn
    #   The ARN of the finding aggregator to delete. To obtain the ARN, use
    #   `ListFindingAggregators`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteFindingAggregatorRequest AWS API Documentation
    #
    class DeleteFindingAggregatorRequest < Struct.new(
      :finding_aggregator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteFindingAggregatorResponse AWS API Documentation
    #
    class DeleteFindingAggregatorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsightRequest AWS API Documentation
    #
    class DeleteInsightRequest < Struct.new(
      :insight_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsightResponse AWS API Documentation
    #
    class DeleteInsightResponse < Struct.new(
      :insight_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The list of member account IDs that received the invitations you
    #   want to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitationsRequest AWS API Documentation
    #
    class DeleteInvitationsRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of Amazon Web Services accounts for which the invitations
    #   were not deleted. For each account, the list includes the account ID
    #   and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitationsResponse AWS API Documentation
    #
    class DeleteInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The list of account IDs for the member accounts to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembersRequest AWS API Documentation
    #
    class DeleteMembersRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of Amazon Web Services accounts that were not deleted. For
    #   each account, the list includes the account ID and the email
    #   address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembersResponse AWS API Documentation
    #
    class DeleteMembersResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arns
    #   A list of custom action target ARNs for the custom action targets to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeActionTargets` operation, set the value of this parameter
    #   to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargetsRequest AWS API Documentation
    #
    class DescribeActionTargetsRequest < Struct.new(
      :action_target_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_targets
    #   A list of `ActionTarget` objects. Each object includes the
    #   `ActionTargetArn`, `Description`, and `Name` of a custom action
    #   target available in Security Hub.
    #   @return [Array<Types::ActionTarget>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargetsResponse AWS API Documentation
    #
    class DescribeActionTargetsResponse < Struct.new(
      :action_targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hub_arn
    #   The ARN of the Hub resource to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHubRequest AWS API Documentation
    #
    class DescribeHubRequest < Struct.new(
      :hub_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hub_arn
    #   The ARN of the Hub resource that was retrieved.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_at
    #   The date and time when Security Hub was enabled in the account.
    #   @return [String]
    #
    # @!attribute [rw] auto_enable_controls
    #   Whether to automatically enable new controls when they are added to
    #   standards that are enabled.
    #
    #   If set to `true`, then new controls for enabled standards are
    #   enabled automatically. If set to `false`, then new controls are not
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] control_finding_generator
    #   Specifies whether the calling account has consolidated control
    #   findings turned on. If the value for this field is set to
    #   `SECURITY_CONTROL`, Security Hub generates a single finding for a
    #   control check even when the check applies to multiple enabled
    #   standards.
    #
    #   If the value for this field is set to `STANDARD_CONTROL`, Security
    #   Hub generates separate findings for a control check when the check
    #   applies to multiple enabled standards.
    #
    #   The value for this field in a member account matches the value in
    #   the administrator account. For accounts that aren't part of an
    #   organization, the default value of this field is `SECURITY_CONTROL`
    #   if you enabled Security Hub on or after February 23, 2023.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHubResponse AWS API Documentation
    #
    class DescribeHubResponse < Struct.new(
      :hub_arn,
      :subscribed_at,
      :auto_enable_controls,
      :control_finding_generator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeOrganizationConfigurationRequest AWS API Documentation
    #
    class DescribeOrganizationConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] auto_enable
    #   Whether to automatically enable Security Hub for new accounts in the
    #   organization.
    #
    #   If set to `true`, then Security Hub is enabled for new accounts. If
    #   set to false, then new accounts are not added automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] member_account_limit_reached
    #   Whether the maximum number of allowed member accounts are already
    #   associated with the Security Hub administrator account.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_enable_standards
    #   Whether to automatically enable Security Hub [default standards][1]
    #   for new member accounts in the organization.
    #
    #   The default value of this parameter is equal to `DEFAULT`.
    #
    #   If equal to `DEFAULT`, then Security Hub default standards are
    #   automatically enabled for new member accounts. If equal to `NONE`,
    #   then default standards are not automatically enabled for new member
    #   accounts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeOrganizationConfigurationResponse AWS API Documentation
    #
    class DescribeOrganizationConfigurationResponse < Struct.new(
      :auto_enable,
      :member_account_limit_reached,
      :auto_enable_standards)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeProducts` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] product_arn
    #   The ARN of the integration to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProductsRequest AWS API Documentation
    #
    class DescribeProductsRequest < Struct.new(
      :next_token,
      :max_results,
      :product_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] products
    #   A list of products, including details for each product.
    #   @return [Array<Types::Product>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProductsResponse AWS API Documentation
    #
    class DescribeProductsResponse < Struct.new(
      :products,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscription_arn
    #   The ARN of a resource that represents your subscription to a
    #   supported standard. To get the subscription ARNs of the standards
    #   you have enabled, use the `GetEnabledStandards` operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandardsControls` operation, set the value of this
    #   parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of security standard controls to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsControlsRequest AWS API Documentation
    #
    class DescribeStandardsControlsRequest < Struct.new(
      :standards_subscription_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] controls
    #   A list of security standards controls.
    #   @return [Array<Types::StandardsControl>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsControlsResponse AWS API Documentation
    #
    class DescribeStandardsControlsResponse < Struct.new(
      :controls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of standards to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsRequest AWS API Documentation
    #
    class DescribeStandardsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards
    #   A list of available standards.
    #   @return [Array<Types::Standard>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsResponse AWS API Documentation
    #
    class DescribeStandardsResponse < Struct.new(
      :standards,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_subscription_arn
    #   The ARN of the integrated product to disable the integration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProductRequest AWS API Documentation
    #
    class DisableImportFindingsForProductRequest < Struct.new(
      :product_subscription_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProductResponse AWS API Documentation
    #
    class DisableImportFindingsForProductResponse < Aws::EmptyStructure; end

    # @!attribute [rw] admin_account_id
    #   The Amazon Web Services account identifier of the Security Hub
    #   administrator account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableOrganizationAdminAccountRequest AWS API Documentation
    #
    class DisableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableOrganizationAdminAccountResponse AWS API Documentation
    #
    class DisableOrganizationAdminAccountResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHubRequest AWS API Documentation
    #
    class DisableSecurityHubRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHubResponse AWS API Documentation
    #
    class DisableSecurityHubResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromAdministratorAccountRequest AWS API Documentation
    #
    class DisassociateFromAdministratorAccountRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromAdministratorAccountResponse AWS API Documentation
    #
    class DisassociateFromAdministratorAccountResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccountRequest AWS API Documentation
    #
    class DisassociateFromMasterAccountRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccountResponse AWS API Documentation
    #
    class DisassociateFromMasterAccountResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_ids
    #   The account IDs of the member accounts to disassociate from the
    #   administrator account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembersRequest AWS API Documentation
    #
    class DisassociateMembersRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembersResponse AWS API Documentation
    #
    class DisassociateMembersResponse < Aws::EmptyStructure; end

    # Provided if `ActionType` is `DNS_REQUEST`. It provides details about
    # the DNS request that was detected.
    #
    # @!attribute [rw] domain
    #   The DNS domain that is associated with the DNS request.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol that was used for the DNS request.
    #   @return [String]
    #
    # @!attribute [rw] blocked
    #   Indicates whether the DNS request was blocked.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DnsRequestAction AWS API Documentation
    #
    class DnsRequestAction < Struct.new(
      :domain,
      :protocol,
      :blocked)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_arn
    #   The ARN of the product to enable the integration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProductRequest AWS API Documentation
    #
    class EnableImportFindingsForProductRequest < Struct.new(
      :product_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_subscription_arn
    #   The ARN of your subscription to the product to enable integrations
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProductResponse AWS API Documentation
    #
    class EnableImportFindingsForProductResponse < Struct.new(
      :product_subscription_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_account_id
    #   The Amazon Web Services account identifier of the account to
    #   designate as the Security Hub administrator account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableOrganizationAdminAccountRequest AWS API Documentation
    #
    class EnableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableOrganizationAdminAccountResponse AWS API Documentation
    #
    class EnableOrganizationAdminAccountResponse < Aws::EmptyStructure; end

    # @!attribute [rw] tags
    #   The tags to add to the hub resource when you enable Security Hub.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enable_default_standards
    #   Whether to enable the security standards that Security Hub has
    #   designated as automatically enabled. If you do not provide a value
    #   for `EnableDefaultStandards`, it is set to `true`. To not enable the
    #   automatically enabled standards, set `EnableDefaultStandards` to
    #   `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] control_finding_generator
    #   This field, used when enabling Security Hub, specifies whether the
    #   calling account has consolidated control findings turned on. If the
    #   value for this field is set to `SECURITY_CONTROL`, Security Hub
    #   generates a single finding for a control check even when the check
    #   applies to multiple enabled standards.
    #
    #   If the value for this field is set to `STANDARD_CONTROL`, Security
    #   Hub generates separate findings for a control check when the check
    #   applies to multiple enabled standards.
    #
    #   The value for this field in a member account matches the value in
    #   the administrator account. For accounts that aren't part of an
    #   organization, the default value of this field is `SECURITY_CONTROL`
    #   if you enabled Security Hub on or after February 23, 2023.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHubRequest AWS API Documentation
    #
    class EnableSecurityHubRequest < Struct.new(
      :tags,
      :enable_default_standards,
      :control_finding_generator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHubResponse AWS API Documentation
    #
    class EnableSecurityHubResponse < Aws::EmptyStructure; end

    # Provides information about the file paths that were affected by the
    # threat.
    #
    # @!attribute [rw] file_path
    #   Path to the infected or suspicious file on the resource it was
    #   detected on.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The name of the infected or suspicious file corresponding to the
    #   hash.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Amazon Resource Name (ARN) of the resource on which the threat
    #   was detected.
    #   @return [String]
    #
    # @!attribute [rw] hash
    #   The hash value for the infected or suspicious file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FilePaths AWS API Documentation
    #
    class FilePaths < Struct.new(
      :file_path,
      :file_name,
      :resource_id,
      :hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # A finding aggregator. A finding aggregator contains the configuration
    # for finding aggregation.
    #
    # @!attribute [rw] finding_aggregator_arn
    #   The ARN of the finding aggregator. You use the finding aggregator
    #   ARN to retrieve details for, update, and delete the finding
    #   aggregator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FindingAggregator AWS API Documentation
    #
    class FindingAggregator < Struct.new(
      :finding_aggregator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of events that changed the specified finding during the
    # specified time period. Each record represents a single finding change
    # event.
    #
    # @!attribute [rw] finding_identifier
    #   Identifies which finding to get the finding history for.
    #   @return [Types::AwsSecurityFindingIdentifier]
    #
    # @!attribute [rw] update_time
    #   An ISO 8601-formatted timestamp that indicates when Security Hub
    #   processed the updated finding record.
    #
    #   A correctly formatted example is `2020-05-21T20:16:34.724Z`. The
    #   value cannot contain spaces, and date and time should be separated
    #   by `T`. For more information, see [RFC 3339 section 5.6, Internet
    #   Date/Time Format][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] finding_created
    #   Identifies whether the event marks the creation of a new finding. A
    #   value of `True` means that the finding is newly created. A value of
    #   `False` means that the finding isn’t newly created.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_source
    #   Identifies the source of the event that changed the finding. For
    #   example, an integrated Amazon Web Service or third-party partner
    #   integration may call [ `BatchImportFindings` ][1], or an Security
    #   Hub customer may call [ `BatchUpdateFindings` ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchImportFindings.html
    #   [2]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateFindings.html
    #   @return [Types::FindingHistoryUpdateSource]
    #
    # @!attribute [rw] updates
    #   An array of objects that provides details about the finding change
    #   event, including the Amazon Web Services Security Finding Format
    #   (ASFF) field that changed, the value of the field before the change,
    #   and the value of the field after the change.
    #   @return [Array<Types::FindingHistoryUpdate>]
    #
    # @!attribute [rw] next_token
    #   A token for pagination purposes. Provide this token in the
    #   subsequent request to [ `GetFindingsHistory` ][1] to get up to an
    #   additional 100 results of history for the same finding that you
    #   specified in your initial request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_GetFindingsHistory.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FindingHistoryRecord AWS API Documentation
    #
    class FindingHistoryRecord < Struct.new(
      :finding_identifier,
      :update_time,
      :finding_created,
      :update_source,
      :updates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of objects that provides details about a change to a finding,
    # including the Amazon Web Services Security Finding Format (ASFF) field
    # that changed, the value of the field before the change, and the value
    # of the field after the change.
    #
    # @!attribute [rw] updated_field
    #   The ASFF field that changed during the finding change event.
    #   @return [String]
    #
    # @!attribute [rw] old_value
    #   The value of the ASFF field before the finding change event.
    #   @return [String]
    #
    # @!attribute [rw] new_value
    #   The value of the ASFF field after the finding change event. To
    #   preserve storage and readability, Security Hub omits this value if [
    #   `FindingHistoryRecord` ][1] exceeds database limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_FindingHistoryRecord.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FindingHistoryUpdate AWS API Documentation
    #
    class FindingHistoryUpdate < Struct.new(
      :updated_field,
      :old_value,
      :new_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the source of the finding change event.
    #
    # @!attribute [rw] type
    #   Describes the type of finding change event, such as a call to [
    #   `BatchImportFindings` ][1] (by an integrated Amazon Web Service or
    #   third party partner integration) or [ `BatchUpdateFindings` ][2] (by
    #   a Security Hub customer).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchImportFindings.html
    #   [2]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateFindings.html
    #   @return [String]
    #
    # @!attribute [rw] identity
    #   The identity of the source that initiated the finding change event.
    #   For example, the Amazon Resource Name (ARN) of a partner that calls
    #   BatchImportFindings or of a customer that calls BatchUpdateFindings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FindingHistoryUpdateSource AWS API Documentation
    #
    class FindingHistoryUpdateSource < Struct.new(
      :type,
      :identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # In a `BatchImportFindings` request, finding providers use
    # `FindingProviderFields` to provide and update values for confidence,
    # criticality, related findings, severity, and types.
    #
    # @!attribute [rw] confidence
    #   A finding's confidence. Confidence is defined as the likelihood
    #   that a finding accurately identifies the behavior or issue that it
    #   was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Integer]
    #
    # @!attribute [rw] criticality
    #   The level of importance assigned to the resources associated with
    #   the finding.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] related_findings
    #   A list of findings that are related to the current finding.
    #   @return [Array<Types::RelatedFinding>]
    #
    # @!attribute [rw] severity
    #   The severity of a finding.
    #   @return [Types::FindingProviderSeverity]
    #
    # @!attribute [rw] types
    #   One or more finding types in the format of
    #   `namespace/category/classifier` that classify a finding.
    #
    #   Valid namespace values are: Software and Configuration Checks \|
    #   TTPs \| Effects \| Unusual Behaviors \| Sensitive Data
    #   Identifications
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FindingProviderFields AWS API Documentation
    #
    class FindingProviderFields < Struct.new(
      :confidence,
      :criticality,
      :related_findings,
      :severity,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The severity assigned to the finding by the finding provider.
    #
    # @!attribute [rw] label
    #   The severity label assigned to the finding by the finding provider.
    #   @return [String]
    #
    # @!attribute [rw] original
    #   The finding provider's original value for the severity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FindingProviderSeverity AWS API Documentation
    #
    class FindingProviderSeverity < Struct.new(
      :label,
      :original)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the behavior of the firewall.
    #
    # @!attribute [rw] stateful_rule_group_references
    #   The stateful rule groups that are used in the firewall policy.
    #   @return [Array<Types::FirewallPolicyStatefulRuleGroupReferencesDetails>]
    #
    # @!attribute [rw] stateless_custom_actions
    #   The custom action definitions that are available to use in the
    #   firewall policy's `StatelessDefaultActions` setting.
    #   @return [Array<Types::FirewallPolicyStatelessCustomActionsDetails>]
    #
    # @!attribute [rw] stateless_default_actions
    #   The actions to take on a packet if it doesn't match any of the
    #   stateless rules in the policy.
    #
    #   You must specify a standard action (`aws:pass`, `aws:drop`,
    #   `aws:forward_to_sfe`), and can optionally include a custom action
    #   from `StatelessCustomActions`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stateless_fragment_default_actions
    #   The actions to take on a fragmented UDP packet if it doesn't match
    #   any of the stateless rules in the policy.
    #
    #   You must specify a standard action (`aws:pass`, `aws:drop`,
    #   `aws:forward_to_sfe`), and can optionally include a custom action
    #   from `StatelessCustomActions`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stateless_rule_group_references
    #   The stateless rule groups that are used in the firewall policy.
    #   @return [Array<Types::FirewallPolicyStatelessRuleGroupReferencesDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FirewallPolicyDetails AWS API Documentation
    #
    class FirewallPolicyDetails < Struct.new(
      :stateful_rule_group_references,
      :stateless_custom_actions,
      :stateless_default_actions,
      :stateless_fragment_default_actions,
      :stateless_rule_group_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # A stateful rule group that is used by the firewall policy.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the stateful rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FirewallPolicyStatefulRuleGroupReferencesDetails AWS API Documentation
    #
    class FirewallPolicyStatefulRuleGroupReferencesDetails < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom action that can be used for stateless packet handling.
    #
    # @!attribute [rw] action_definition
    #   The definition of the custom action.
    #   @return [Types::StatelessCustomActionDefinition]
    #
    # @!attribute [rw] action_name
    #   The name of the custom action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FirewallPolicyStatelessCustomActionsDetails AWS API Documentation
    #
    class FirewallPolicyStatelessCustomActionsDetails < Struct.new(
      :action_definition,
      :action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A stateless rule group that is used by the firewall policy.
    #
    # @!attribute [rw] priority
    #   The order in which to run the stateless rule group.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the stateless rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/FirewallPolicyStatelessRuleGroupReferencesDetails AWS API Documentation
    #
    class FirewallPolicyStatelessRuleGroupReferencesDetails < Struct.new(
      :priority,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the latitude and longitude coordinates of a location.
    #
    # @!attribute [rw] lon
    #   The longitude of the location.
    #   @return [Float]
    #
    # @!attribute [rw] lat
    #   The latitude of the location.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GeoLocation AWS API Documentation
    #
    class GeoLocation < Struct.new(
      :lon,
      :lat)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetAdministratorAccountRequest AWS API Documentation
    #
    class GetAdministratorAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] administrator
    #   Details about an invitation.
    #   @return [Types::Invitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetAdministratorAccountResponse AWS API Documentation
    #
    class GetAdministratorAccountResponse < Struct.new(
      :administrator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscription_arns
    #   The list of the standards subscription ARNs for the standards to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetEnabledStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandardsRequest AWS API Documentation
    #
    class GetEnabledStandardsRequest < Struct.new(
      :standards_subscription_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The list of `StandardsSubscriptions` objects that include
    #   information about the enabled standards.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandardsResponse AWS API Documentation
    #
    class GetEnabledStandardsResponse < Struct.new(
      :standards_subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_aggregator_arn
    #   The ARN of the finding aggregator to return details for. To obtain
    #   the ARN, use `ListFindingAggregators`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingAggregatorRequest AWS API Documentation
    #
    class GetFindingAggregatorRequest < Struct.new(
      :finding_aggregator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_aggregator_arn
    #   The ARN of the finding aggregator.
    #   @return [String]
    #
    # @!attribute [rw] finding_aggregation_region
    #   The aggregation Region.
    #   @return [String]
    #
    # @!attribute [rw] region_linking_mode
    #   Indicates whether to link all Regions, all Regions except for a list
    #   of excluded Regions, or a list of included Regions.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The list of excluded Regions or included Regions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingAggregatorResponse AWS API Documentation
    #
    class GetFindingAggregatorResponse < Struct.new(
      :finding_aggregator_arn,
      :finding_aggregation_region,
      :region_linking_mode,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_identifier
    #   Identifies which finding to get the finding history for.
    #   @return [Types::AwsSecurityFindingIdentifier]
    #
    # @!attribute [rw] start_time
    #   An ISO 8601-formatted timestamp that indicates the start time of the
    #   requested finding history. A correctly formatted example is
    #   `2020-05-21T20:16:34.724Z`. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For more information, see
    #   [RFC 3339 section 5.6, Internet Date/Time Format][1].
    #
    #   If you provide values for both `StartTime` and `EndTime`, Security
    #   Hub returns finding history for the specified time period. If you
    #   provide a value for `StartTime` but not for `EndTime`, Security Hub
    #   returns finding history from the `StartTime` to the time at which
    #   the API is called. If you provide a value for `EndTime` but not for
    #   `StartTime`, Security Hub returns finding history from the
    #   [CreatedAt][2] timestamp of the finding to the `EndTime`. If you
    #   provide neither `StartTime` nor `EndTime`, Security Hub returns
    #   finding history from the CreatedAt timestamp of the finding to the
    #   time at which the API is called. In all of these scenarios, the
    #   response is limited to 100 results, and the maximum time period is
    #   limited to 90 days.
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   [2]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   An ISO 8601-formatted timestamp that indicates the end time of the
    #   requested finding history. A correctly formatted example is
    #   `2020-05-21T20:16:34.724Z`. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For more information, see
    #   [RFC 3339 section 5.6, Internet Date/Time Format][1].
    #
    #   If you provide values for both `StartTime` and `EndTime`, Security
    #   Hub returns finding history for the specified time period. If you
    #   provide a value for `StartTime` but not for `EndTime`, Security Hub
    #   returns finding history from the `StartTime` to the time at which
    #   the API is called. If you provide a value for `EndTime` but not for
    #   `StartTime`, Security Hub returns finding history from the
    #   [CreatedAt][2] timestamp of the finding to the `EndTime`. If you
    #   provide neither `StartTime` nor `EndTime`, Security Hub returns
    #   finding history from the CreatedAt timestamp of the finding to the
    #   time at which the API is called. In all of these scenarios, the
    #   response is limited to 100 results, and the maximum time period is
    #   limited to 90 days.
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   [2]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   A token for pagination purposes. Provide `NULL` as the initial
    #   value. In subsequent requests, provide the token included in the
    #   response to get up to an additional 100 results of finding history.
    #   If you don’t provide `NextToken`, Security Hub returns up to 100
    #   results of finding history for each request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned. If you don’t provide
    #   it, Security Hub returns up to 100 results of finding history.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingHistoryRequest AWS API Documentation
    #
    class GetFindingHistoryRequest < Struct.new(
      :finding_identifier,
      :start_time,
      :end_time,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] records
    #   A list of events that altered the specified finding during the
    #   specified time period.
    #   @return [Array<Types::FindingHistoryRecord>]
    #
    # @!attribute [rw] next_token
    #   A token for pagination purposes. Provide this token in the
    #   subsequent request to `GetFindingsHistory` to get up to an
    #   additional 100 results of history for the same finding that you
    #   specified in your initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingHistoryResponse AWS API Documentation
    #
    class GetFindingHistoryResponse < Struct.new(
      :records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The finding attributes used to define a condition to filter the
    #   returned findings.
    #
    #   You can filter by up to 10 finding attributes. For each attribute,
    #   you can provide up to 20 filter values.
    #
    #   Note that in the available filter fields, `WorkflowState` is
    #   deprecated. To search for a finding based on its workflow status,
    #   use `WorkflowStatus`.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] sort_criteria
    #   The finding attributes used to sort the list of returned findings.
    #   @return [Array<Types::SortCriterion>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetFindings` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of findings to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingsRequest AWS API Documentation
    #
    class GetFindingsRequest < Struct.new(
      :filters,
      :sort_criteria,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   The findings that matched the filters specified in the request.
    #   @return [Array<Types::AwsSecurityFinding>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingsResponse AWS API Documentation
    #
    class GetFindingsResponse < Struct.new(
      :findings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight for which to return results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResultsRequest AWS API Documentation
    #
    class GetInsightResultsRequest < Struct.new(
      :insight_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight_results
    #   The insight results returned by the operation.
    #   @return [Types::InsightResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResultsResponse AWS API Documentation
    #
    class GetInsightResultsResponse < Struct.new(
      :insight_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight_arns
    #   The ARNs of the insights to describe. If you do not provide any
    #   insight ARNs, then `GetInsights` returns all of your custom
    #   insights. It does not return any managed insights.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetInsights` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightsRequest AWS API Documentation
    #
    class GetInsightsRequest < Struct.new(
      :insight_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insights
    #   The insights returned by the operation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightsResponse AWS API Documentation
    #
    class GetInsightsResponse < Struct.new(
      :insights,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCountRequest AWS API Documentation
    #
    class GetInvitationsCountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] invitations_count
    #   The number of all membership invitations sent to this Security Hub
    #   member account, not including the currently accepted invitation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCountResponse AWS API Documentation
    #
    class GetInvitationsCountResponse < Struct.new(
      :invitations_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccountRequest AWS API Documentation
    #
    class GetMasterAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] master
    #   A list of details about the Security Hub administrator account for
    #   the current member account.
    #   @return [Types::Invitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccountResponse AWS API Documentation
    #
    class GetMasterAccountResponse < Struct.new(
      :master)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The list of account IDs for the Security Hub member accounts to
    #   return the details for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembersRequest AWS API Documentation
    #
    class GetMembersRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The list of details about the Security Hub member accounts.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   The list of Amazon Web Services accounts that could not be
    #   processed. For each account, the list includes the account ID and
    #   the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembersResponse AWS API Documentation
    #
    class GetMembersResponse < Struct.new(
      :members,
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Internet Control Message Protocol (ICMP) type and code.
    #
    # @!attribute [rw] code
    #   The ICMP code for which to deny or allow access. To deny or allow
    #   all codes, use the value `-1`.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The ICMP type for which to deny or allow access. To deny or allow
    #   all types, use the value `-1`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/IcmpTypeCode AWS API Documentation
    #
    class IcmpTypeCode < Struct.new(
      :code,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of the findings that cannot be imported. For each finding,
    # the list provides the error.
    #
    # @!attribute [rw] id
    #   The identifier of the finding that could not be updated.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code of the error returned by the `BatchImportFindings`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message of the error returned by the `BatchImportFindings`
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ImportFindingsError AWS API Documentation
    #
    class ImportFindingsError < Struct.new(
      :id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a Security Hub insight.
    #
    # @!attribute [rw] insight_arn
    #   The ARN of a Security Hub insight.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a Security Hub insight.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more attributes used to filter the findings included in the
    #   insight. The insight only includes findings that match the criteria
    #   defined in the filters.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The grouping attribute for the insight's findings. Indicates how to
    #   group the matching findings, and identifies the type of item that
    #   the insight applies to. For example, if an insight is grouped by
    #   resource identifier, then the insight produces a list of resource
    #   identifiers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Insight AWS API Documentation
    #
    class Insight < Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # The insight result values returned by the `GetInsightResults`
    # operation.
    #
    # @!attribute [rw] group_by_attribute_value
    #   The value of the attribute that the findings are grouped by for the
    #   insight whose results are returned by the `GetInsightResults`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of findings returned for each `GroupByAttributeValue`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InsightResultValue AWS API Documentation
    #
    class InsightResultValue < Struct.new(
      :group_by_attribute_value,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The insight results returned by the `GetInsightResults` operation.
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight whose results are returned by the
    #   `GetInsightResults` operation.
    #   @return [String]
    #
    # @!attribute [rw] group_by_attribute
    #   The attribute that the findings are grouped by for the insight whose
    #   results are returned by the `GetInsightResults` operation.
    #   @return [String]
    #
    # @!attribute [rw] result_values
    #   The list of insight result values returned by the
    #   `GetInsightResults` operation.
    #   @return [Array<Types::InsightResultValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InsightResults AWS API Documentation
    #
    class InsightResults < Struct.new(
      :insight_arn,
      :group_by_attribute,
      :result_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InternalException AWS API Documentation
    #
    class InternalException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account doesn't have permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InvalidAccessException AWS API Documentation
    #
    class InvalidAccessException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because you supplied an invalid or
    # out-of-range value for an input parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an invitation.
    #
    # @!attribute [rw] account_id
    #   The account ID of the Security Hub administrator account that the
    #   invitation was sent from.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The ID of the invitation sent to the member account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   The timestamp of when the invitation was sent.
    #   @return [Time]
    #
    # @!attribute [rw] member_status
    #   The current status of the association between the member and
    #   administrator accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Invitation AWS API Documentation
    #
    class Invitation < Struct.new(
      :account_id,
      :invitation_id,
      :invited_at,
      :member_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The list of account IDs of the Amazon Web Services accounts to
    #   invite to Security Hub as members.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembersRequest AWS API Documentation
    #
    class InviteMembersRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of Amazon Web Services accounts that could not be
    #   processed. For each account, the list includes the account ID and
    #   the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembersResponse AWS API Documentation
    #
    class InviteMembersResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IP filter for querying findings.
    #
    # @!attribute [rw] cidr
    #   A finding's CIDR value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/IpFilter AWS API Documentation
    #
    class IpFilter < Struct.new(
      :cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an internet provider.
    #
    # @!attribute [rw] asn
    #   The Autonomous System Number (ASN) of the internet provider
    #   @return [Integer]
    #
    # @!attribute [rw] asn_org
    #   The name of the organization that registered the ASN.
    #   @return [String]
    #
    # @!attribute [rw] isp
    #   The ISP information for the internet provider.
    #   @return [String]
    #
    # @!attribute [rw] org
    #   The name of the internet provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/IpOrganizationDetails AWS API Documentation
    #
    class IpOrganizationDetails < Struct.new(
      :asn,
      :asn_org,
      :isp,
      :org)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IPV6 CIDR block association.
    #
    # @!attribute [rw] association_id
    #   The association ID for the IPv6 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block_state
    #   Information about the state of the CIDR block. Valid values are as
    #   follows:
    #
    #   * `associating`
    #
    #   * `associated`
    #
    #   * `disassociating`
    #
    #   * `disassociated`
    #
    #   * `failed`
    #
    #   * `failing`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Ipv6CidrBlockAssociation AWS API Documentation
    #
    class Ipv6CidrBlockAssociation < Struct.new(
      :association_id,
      :ipv_6_cidr_block,
      :cidr_block_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A keyword filter for querying findings.
    #
    # @!attribute [rw] value
    #   A value for the keyword.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/KeywordFilter AWS API Documentation
    #
    class KeywordFilter < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it attempted to create resources
    # beyond the current Amazon Web Services account or throttling limits.
    # The error code describes the limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to specify where to start paginating the response. This is
    #   the `NextToken` from a previously truncated response. On your first
    #   call to the `ListAutomationRules` API, set the value of this
    #   parameter to `NULL`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of rules to return in the response. This
    #   currently ranges from 1 to 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListAutomationRulesRequest AWS API Documentation
    #
    class ListAutomationRulesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automation_rules_metadata
    #   Metadata for rules in the calling account. The response includes
    #   rules with a `RuleStatus` of `ENABLED` and `DISABLED`.
    #   @return [Array<Types::AutomationRulesMetadata>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListAutomationRulesResponse AWS API Documentation
    #
    class ListAutomationRulesResponse < Struct.new(
      :automation_rules_metadata,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListEnabledProductsForImport` operation, set the value of this
    #   parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImportRequest AWS API Documentation
    #
    class ListEnabledProductsForImportRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_subscriptions
    #   The list of ARNs for the resources that represent your subscriptions
    #   to products.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImportResponse AWS API Documentation
    #
    class ListEnabledProductsForImportResponse < Struct.new(
      :product_subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token returned with the previous set of results. Identifies the
    #   next set of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. This operation currently
    #   only returns a single result.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListFindingAggregatorsRequest AWS API Documentation
    #
    class ListFindingAggregatorsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_aggregators
    #   The list of finding aggregators. This operation currently only
    #   returns a single result.
    #   @return [Array<Types::FindingAggregator>]
    #
    # @!attribute [rw] next_token
    #   If there are more results, this is the token to provide in the next
    #   call to `ListFindingAggregators`.
    #
    #   This operation currently only returns a single result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListFindingAggregatorsResponse AWS API Documentation
    #
    class ListFindingAggregatorsResponse < Struct.new(
      :finding_aggregators,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListInvitations` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitationsRequest AWS API Documentation
    #
    class ListInvitationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invitations
    #   The details of the invitations returned by the operation.
    #   @return [Array<Types::Invitation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitationsResponse AWS API Documentation
    #
    class ListInvitationsResponse < Struct.new(
      :invitations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] only_associated
    #   Specifies which member accounts to include in the response based on
    #   their relationship status with the administrator account. The
    #   default value is `TRUE`.
    #
    #   If `OnlyAssociated` is set to `TRUE`, the response includes member
    #   accounts whose relationship status with the administrator account is
    #   set to `ENABLED`.
    #
    #   If `OnlyAssociated` is set to `FALSE`, the response includes all
    #   existing member accounts.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListMembers` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :only_associated,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   Member details returned by the operation.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembersResponse AWS API Documentation
    #
    class ListMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListOrganizationAdminAccounts` operation, set the value of this
    #   parameter to `NULL`. For subsequent calls to the operation, to
    #   continue listing data, set the value of this parameter to the value
    #   returned from the previous response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListOrganizationAdminAccountsRequest AWS API Documentation
    #
    class ListOrganizationAdminAccountsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_accounts
    #   The list of Security Hub administrator accounts.
    #   @return [Array<Types::AdminAccount>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListOrganizationAdminAccountsResponse AWS API Documentation
    #
    class ListOrganizationAdminAccountsResponse < Struct.new(
      :admin_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_arn
    #   The Amazon Resource Name (ARN) of the standard that you want to view
    #   controls for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Optional pagination parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that limits the total results of the API
    #   response to the specified number. If this parameter isn't provided
    #   in the request, the results include the first 25 security controls
    #   that apply to the specified standard. The results also include a
    #   `NextToken` parameter that you can use in a subsequent API call to
    #   get the next 25 controls. This repeats until all controls for the
    #   standard are returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListSecurityControlDefinitionsRequest AWS API Documentation
    #
    class ListSecurityControlDefinitionsRequest < Struct.new(
      :standards_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_control_definitions
    #   An array of controls that apply to the specified standard.
    #   @return [Array<Types::SecurityControlDefinition>]
    #
    # @!attribute [rw] next_token
    #   A pagination parameter that's included in the response only if it
    #   was included in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListSecurityControlDefinitionsResponse AWS API Documentation
    #
    class ListSecurityControlDefinitionsResponse < Struct.new(
      :security_control_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_control_id
    #   The identifier of the control (identified with `SecurityControlId`,
    #   `SecurityControlArn`, or a mix of both parameters) that you want to
    #   determine the enablement status of in each enabled standard.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Optional pagination parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that limits the total results of the API
    #   response to the specified number. If this parameter isn't provided
    #   in the request, the results include the first 25 standard and
    #   control associations. The results also include a `NextToken`
    #   parameter that you can use in a subsequent API call to get the next
    #   25 associations. This repeats until all associations for the
    #   specified control are returned. The number of results is limited by
    #   the number of supported Security Hub standards that you've enabled
    #   in the calling account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListStandardsControlAssociationsRequest AWS API Documentation
    #
    class ListStandardsControlAssociationsRequest < Struct.new(
      :security_control_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_control_association_summaries
    #   An array that provides the enablement status and other details for
    #   each security control that applies to each enabled standard.
    #   @return [Array<Types::StandardsControlAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination parameter that's included in the response only if it
    #   was included in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListStandardsControlAssociationsResponse AWS API Documentation
    #
    class ListStandardsControlAssociationsResponse < Struct.new(
      :standards_control_association_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to retrieve tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the state of the load balancer.
    #
    # @!attribute [rw] code
    #   The state code. The initial state of the load balancer is
    #   provisioning.
    #
    #   After the load balancer is fully set up and ready to route traffic,
    #   its state is active.
    #
    #   If the load balancer could not be set up, its state is failed.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A description of the state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/LoadBalancerState AWS API Documentation
    #
    class LoadBalancerState < Struct.new(
      :code,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of malware related to a finding.
    #
    # @!attribute [rw] name
    #   The name of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The file system path of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the malware that was observed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Malware AWS API Documentation
    #
    class Malware < Struct.new(
      :name,
      :type,
      :path,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map filter for querying findings. Each map filter provides the field
    # to check, the value to look for, and the comparison operator.
    #
    # @!attribute [rw] key
    #   The key of the map filter. For example, for `ResourceTags`, `Key`
    #   identifies the name of the tag. For `UserDefinedFields`, `Key` is
    #   the name of the field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the key in the map filter. Filter values are case
    #   sensitive. For example, one of the values for a tag called
    #   `Department` might be `Security`. If you provide `security` as the
    #   filter value, then there is no match.
    #   @return [String]
    #
    # @!attribute [rw] comparison
    #   The condition to apply to the key value when querying for findings
    #   with a map filter.
    #
    #   To search for values that exactly match the filter value, use
    #   `EQUALS`. For example, for the `ResourceTags` field, the filter
    #   `Department EQUALS Security` matches findings that have the value
    #   `Security` for the tag `Department`.
    #
    #   To search for values other than the filter value, use `NOT_EQUALS`.
    #   For example, for the `ResourceTags` field, the filter `Department
    #   NOT_EQUALS Finance` matches findings that do not have the value
    #   `Finance` for the tag `Department`.
    #
    #   `EQUALS` filters on the same field are joined by `OR`. A finding
    #   matches if it matches any one of those filters.
    #
    #   `NOT_EQUALS` filters on the same field are joined by `AND`. A
    #   finding matches only if it matches all of those filters.
    #
    #   You cannot have both an `EQUALS` filter and a `NOT_EQUALS` filter on
    #   the same field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/MapFilter AWS API Documentation
    #
    class MapFilter < Struct.new(
      :key,
      :value,
      :comparison)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about a member account.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the member account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the member account.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   This is replaced by `AdministratorID`.
    #
    #   The Amazon Web Services account ID of the Security Hub administrator
    #   account associated with this member account.
    #   @return [String]
    #
    # @!attribute [rw] administrator_id
    #   The Amazon Web Services account ID of the Security Hub administrator
    #   account associated with this member account.
    #   @return [String]
    #
    # @!attribute [rw] member_status
    #   The status of the relationship between the member account and its
    #   administrator account.
    #
    #   The status can have one of the following values:
    #
    #   * `Created` - Indicates that the administrator account added the
    #     member account, but has not yet invited the member account.
    #
    #   * `Invited` - Indicates that the administrator account invited the
    #     member account. The member account has not yet responded to the
    #     invitation.
    #
    #   * `Enabled` - Indicates that the member account is currently active.
    #     For manually invited member accounts, indicates that the member
    #     account accepted the invitation.
    #
    #   * `Removed` - Indicates that the administrator account disassociated
    #     the member account.
    #
    #   * `Resigned` - Indicates that the member account disassociated
    #     themselves from the administrator account.
    #
    #   * `Deleted` - Indicates that the administrator account deleted the
    #     member account.
    #
    #   * `AccountSuspended` - Indicates that an organization account was
    #     suspended from Amazon Web Services at the same time that the
    #     administrator account tried to enable the organization account as
    #     a member account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   A timestamp for the date and time when the invitation was sent to
    #   the member account.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for the date and time when the member account was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Member AWS API Documentation
    #
    class Member < Struct.new(
      :account_id,
      :email,
      :master_id,
      :administrator_id,
      :member_status,
      :invited_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of network-related information about a finding.
    #
    # @!attribute [rw] direction
    #   The direction of network traffic associated with a finding.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of network-related information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] open_port_range
    #   The range of open ports that is present on the network.
    #   @return [Types::PortRange]
    #
    # @!attribute [rw] source_ip_v4
    #   The source IPv4 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] source_ip_v6
    #   The source IPv6 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] source_port
    #   The source port of network-related information about a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] source_domain
    #   The source domain of network-related information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] source_mac
    #   The source media access control (MAC) address of network-related
    #   information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_ip_v4
    #   The destination IPv4 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_ip_v6
    #   The destination IPv6 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port of network-related information about a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_domain
    #   The destination domain of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Network AWS API Documentation
    #
    class Network < Struct.new(
      :direction,
      :protocol,
      :open_port_range,
      :source_ip_v4,
      :source_ip_v6,
      :source_port,
      :source_domain,
      :source_mac,
      :destination_ip_v4,
      :destination_ip_v6,
      :destination_port,
      :destination_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provided if `ActionType` is `NETWORK_CONNECTION`. It provides details
    # about the attempted network connection that was detected.
    #
    # @!attribute [rw] connection_direction
    #   The direction of the network connection request (`IN` or `OUT`).
    #   @return [String]
    #
    # @!attribute [rw] remote_ip_details
    #   Information about the remote IP address that issued the network
    #   connection request.
    #   @return [Types::ActionRemoteIpDetails]
    #
    # @!attribute [rw] remote_port_details
    #   Information about the port on the remote IP address.
    #   @return [Types::ActionRemotePortDetails]
    #
    # @!attribute [rw] local_port_details
    #   Information about the port on the EC2 instance.
    #   @return [Types::ActionLocalPortDetails]
    #
    # @!attribute [rw] protocol
    #   The protocol used to make the network connection request.
    #   @return [String]
    #
    # @!attribute [rw] blocked
    #   Indicates whether the network connection attempt was blocked.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NetworkConnectionAction AWS API Documentation
    #
    class NetworkConnectionAction < Struct.new(
      :connection_direction,
      :remote_ip_details,
      :remote_port_details,
      :local_port_details,
      :protocol,
      :blocked)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a network path component that occurs before or after the
    # current component.
    #
    # @!attribute [rw] protocol
    #   The protocol used for the component.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   Information about the destination of the component.
    #   @return [Types::NetworkPathComponentDetails]
    #
    # @!attribute [rw] source
    #   Information about the origin of the component.
    #   @return [Types::NetworkPathComponentDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NetworkHeader AWS API Documentation
    #
    class NetworkHeader < Struct.new(
      :protocol,
      :destination,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a network path component.
    #
    # @!attribute [rw] component_id
    #   The identifier of a component in the network path.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The type of component.
    #   @return [String]
    #
    # @!attribute [rw] egress
    #   Information about the component that comes after the current
    #   component in the network path.
    #   @return [Types::NetworkHeader]
    #
    # @!attribute [rw] ingress
    #   Information about the component that comes before the current node
    #   in the network path.
    #   @return [Types::NetworkHeader]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NetworkPathComponent AWS API Documentation
    #
    class NetworkPathComponent < Struct.new(
      :component_id,
      :component_type,
      :egress,
      :ingress)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the destination of the next component in the network
    # path.
    #
    # @!attribute [rw] address
    #   The IP addresses of the destination.
    #   @return [Array<String>]
    #
    # @!attribute [rw] port_ranges
    #   A list of port ranges for the destination.
    #   @return [Array<Types::PortRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NetworkPathComponentDetails AWS API Documentation
    #
    class NetworkPathComponentDetails < Struct.new(
      :address,
      :port_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user-defined note added to a finding.
    #
    # @!attribute [rw] text
    #   The text of a note.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The principal that created a note.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the note was updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Note AWS API Documentation
    #
    class Note < Struct.new(
      :text,
      :updated_by,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated note.
    #
    # @!attribute [rw] text
    #   The updated note text.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The principal that updated the note.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NoteUpdate AWS API Documentation
    #
    class NoteUpdate < Struct.new(
      :text,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A number filter for querying findings.
    #
    # @!attribute [rw] gte
    #   The greater-than-equal condition to be applied to a single field
    #   when querying for findings.
    #   @return [Float]
    #
    # @!attribute [rw] lte
    #   The less-than-equal condition to be applied to a single field when
    #   querying for findings.
    #   @return [Float]
    #
    # @!attribute [rw] eq
    #   The equal-to condition to be applied to a single field when querying
    #   for findings.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NumberFilter AWS API Documentation
    #
    class NumberFilter < Struct.new(
      :gte,
      :lte,
      :eq)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detected occurrences of sensitive data.
    #
    # @!attribute [rw] line_ranges
    #   Occurrences of sensitive data detected in a non-binary text file or
    #   a Microsoft Word file. Non-binary text files include files such as
    #   HTML, XML, JSON, and TXT files.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] offset_ranges
    #   Occurrences of sensitive data detected in a binary text file.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] pages
    #   Occurrences of sensitive data in an Adobe Portable Document Format
    #   (PDF) file.
    #   @return [Array<Types::Page>]
    #
    # @!attribute [rw] records
    #   Occurrences of sensitive data in an Apache Avro object container or
    #   an Apache Parquet file.
    #   @return [Array<Types::Record>]
    #
    # @!attribute [rw] cells
    #   Occurrences of sensitive data detected in Microsoft Excel workbooks,
    #   comma-separated value (CSV) files, or tab-separated value (TSV)
    #   files.
    #   @return [Array<Types::Cell>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Occurrences AWS API Documentation
    #
    class Occurrences < Struct.new(
      :line_ranges,
      :offset_ranges,
      :pages,
      :records,
      :cells)
      SENSITIVE = []
      include Aws::Structure
    end

    # An occurrence of sensitive data in an Adobe Portable Document Format
    # (PDF) file.
    #
    # @!attribute [rw] page_number
    #   The page number of the page that contains the sensitive data.
    #   @return [Integer]
    #
    # @!attribute [rw] line_range
    #   An occurrence of sensitive data detected in a non-binary text file
    #   or a Microsoft Word file. Non-binary text files include files such
    #   as HTML, XML, JSON, and TXT files.
    #   @return [Types::Range]
    #
    # @!attribute [rw] offset_range
    #   An occurrence of sensitive data detected in a binary text file.
    #   @return [Types::Range]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Page AWS API Documentation
    #
    class Page < Struct.new(
      :page_number,
      :line_range,
      :offset_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides an overview of the patch compliance status for an instance
    # against a selected compliance standard.
    #
    # @!attribute [rw] id
    #   The identifier of the compliance standard that was used to determine
    #   the patch compliance status.
    #   @return [String]
    #
    # @!attribute [rw] installed_count
    #   The number of patches from the compliance standard that were
    #   installed successfully.
    #   @return [Integer]
    #
    # @!attribute [rw] missing_count
    #   The number of patches that are part of the compliance standard but
    #   are not installed. The count includes patches that failed to
    #   install.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_count
    #   The number of patches from the compliance standard that failed to
    #   install.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_other_count
    #   The number of installed patches that are not part of the compliance
    #   standard.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_rejected_count
    #   The number of patches that are installed but are also on a list of
    #   patches that the customer rejected.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_pending_reboot
    #   The number of patches that were applied, but that require the
    #   instance to be rebooted in order to be marked as installed.
    #   @return [Integer]
    #
    # @!attribute [rw] operation_start_time
    #   Indicates when the operation started.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] operation_end_time
    #   Indicates when the operation completed.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] reboot_option
    #   The reboot option specified for the instance.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The type of patch operation performed. For Patch Manager, the values
    #   are `SCAN` and `INSTALL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/PatchSummary AWS API Documentation
    #
    class PatchSummary < Struct.new(
      :id,
      :installed_count,
      :missing_count,
      :failed_count,
      :installed_other_count,
      :installed_rejected_count,
      :installed_pending_reboot,
      :operation_start_time,
      :operation_end_time,
      :reboot_option,
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provided if `ActionType` is `PORT_PROBE`. It provides details about
    # the attempted port probe that was detected.
    #
    # @!attribute [rw] port_probe_details
    #   Information about the ports affected by the port probe.
    #   @return [Array<Types::PortProbeDetail>]
    #
    # @!attribute [rw] blocked
    #   Indicates whether the port probe was blocked.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/PortProbeAction AWS API Documentation
    #
    class PortProbeAction < Struct.new(
      :port_probe_details,
      :blocked)
      SENSITIVE = []
      include Aws::Structure
    end

    # A port scan that was part of the port probe. For each scan,
    # PortProbeDetails provides information about the local IP address and
    # port that were scanned, and the remote IP address that the scan
    # originated from.
    #
    # @!attribute [rw] local_port_details
    #   Provides information about the port that was scanned.
    #   @return [Types::ActionLocalPortDetails]
    #
    # @!attribute [rw] local_ip_details
    #   Provides information about the IP address where the scanned port is
    #   located.
    #   @return [Types::ActionLocalIpDetails]
    #
    # @!attribute [rw] remote_ip_details
    #   Provides information about the remote IP address that performed the
    #   scan.
    #   @return [Types::ActionRemoteIpDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/PortProbeDetail AWS API Documentation
    #
    class PortProbeDetail < Struct.new(
      :local_port_details,
      :local_ip_details,
      :remote_ip_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of ports.
    #
    # @!attribute [rw] begin
    #   The first port in the port range.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The last port in the port range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/PortRange AWS API Documentation
    #
    class PortRange < Struct.new(
      :begin,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of ports.
    #
    # @!attribute [rw] from
    #   The first port in the port range.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The last port in the port range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/PortRangeFromTo AWS API Documentation
    #
    class PortRangeFromTo < Struct.new(
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of process-related information about a finding.
    #
    # @!attribute [rw] name
    #   The name of the process.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the process executable.
    #   @return [String]
    #
    # @!attribute [rw] pid
    #   The process ID.
    #   @return [Integer]
    #
    # @!attribute [rw] parent_pid
    #   The parent process ID. This field accepts positive integers between
    #   `O` and `2147483647`.
    #   @return [Integer]
    #
    # @!attribute [rw] launched_at
    #   Indicates when the process was launched.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] terminated_at
    #   Indicates when the process was terminated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ProcessDetails AWS API Documentation
    #
    class ProcessDetails < Struct.new(
      :name,
      :path,
      :pid,
      :parent_pid,
      :launched_at,
      :terminated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a product.
    #
    # @!attribute [rw] product_arn
    #   The ARN assigned to the product.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The name of the product.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   The name of the company that provides the product.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the product.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The categories assigned to the product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] integration_types
    #   The types of integration that the product supports. Available values
    #   are the following.
    #
    #   * `SEND_FINDINGS_TO_SECURITY_HUB` - The integration sends findings
    #     to Security Hub.
    #
    #   * `RECEIVE_FINDINGS_FROM_SECURITY_HUB` - The integration receives
    #     findings from Security Hub.
    #
    #   * `UPDATE_FINDINGS_IN_SECURITY_HUB` - The integration does not send
    #     new findings to Security Hub, but does make updates to the
    #     findings that it receives from Security Hub.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marketplace_url
    #   For integrations with Amazon Web Services services, the Amazon Web
    #   Services Console URL from which to activate the service.
    #
    #   For integrations with third-party products, the Amazon Web Services
    #   Marketplace URL from which to subscribe to or purchase the product.
    #   @return [String]
    #
    # @!attribute [rw] activation_url
    #   The URL to the service or product documentation about the
    #   integration with Security Hub, including how to activate the
    #   integration.
    #   @return [String]
    #
    # @!attribute [rw] product_subscription_resource_policy
    #   The resource policy associated with the product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Product AWS API Documentation
    #
    class Product < Struct.new(
      :product_arn,
      :product_name,
      :company_name,
      :description,
      :categories,
      :integration_types,
      :marketplace_url,
      :activation_url,
      :product_subscription_resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a virtual private gateway propagating route.
    #
    # @!attribute [rw] gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/PropagatingVgwSetDetails AWS API Documentation
    #
    class PropagatingVgwSetDetails < Struct.new(
      :gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies where the sensitive data begins and ends.
    #
    # @!attribute [rw] start
    #   The number of lines (for a line range) or characters (for an offset
    #   range) from the beginning of the file to the end of the sensitive
    #   data.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The number of lines (for a line range) or characters (for an offset
    #   range) from the beginning of the file to the end of the sensitive
    #   data.
    #   @return [Integer]
    #
    # @!attribute [rw] start_column
    #   In the line where the sensitive data starts, the column within the
    #   line where the sensitive data starts.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Range AWS API Documentation
    #
    class Range < Struct.new(
      :start,
      :end,
      :start_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # A recommendation on how to remediate the issue identified in a
    # finding.
    #
    # @!attribute [rw] text
    #   Describes the recommended steps to take to remediate an issue
    #   identified in a finding.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A URL to a page or site that contains information about how to
    #   remediate a finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :text,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # An occurrence of sensitive data in an Apache Avro object container or
    # an Apache Parquet file.
    #
    # @!attribute [rw] json_path
    #   The path, as a JSONPath expression, to the field in the record that
    #   contains the data. If the field name is longer than 20 characters,
    #   it is truncated. If the path is longer than 250 characters, it is
    #   truncated.
    #   @return [String]
    #
    # @!attribute [rw] record_index
    #   The record index, starting from 0, for the record that contains the
    #   data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Record AWS API Documentation
    #
    class Record < Struct.new(
      :json_path,
      :record_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a related finding.
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product that generated a related finding.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The product-generated identifier for a related finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RelatedFinding AWS API Documentation
    #
    class RelatedFinding < Struct.new(
      :product_arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the remediation steps for a finding.
    #
    # @!attribute [rw] recommendation
    #   A recommendation on the steps to take to remediate the issue
    #   identified by a finding.
    #   @return [Types::Recommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Remediation AWS API Documentation
    #
    class Remediation < Struct.new(
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource related to a finding.
    #
    # @!attribute [rw] type
    #   The type of the resource that details are provided for. If possible,
    #   set `Type` to one of the supported resource types. For example, if
    #   the resource is an EC2 instance, then set `Type` to
    #   `AwsEc2Instance`.
    #
    #   If the resource does not match any of the provided types, then set
    #   `Type` to `Other`.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The canonical identifier for the given resource type.
    #   @return [String]
    #
    # @!attribute [rw] partition
    #   The canonical Amazon Web Services partition name that the Region is
    #   assigned to.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The canonical Amazon Web Services external Region name where this
    #   resource is located.
    #   @return [String]
    #
    # @!attribute [rw] resource_role
    #   Identifies the role of the resource in the finding. A resource is
    #   either the actor or target of the finding activity,
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of Amazon Web Services tags associated with a resource at the
    #   time the finding was processed.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] data_classification
    #   Contains information about sensitive data that was detected on the
    #   resource.
    #   @return [Types::DataClassificationDetails]
    #
    # @!attribute [rw] details
    #   Additional details about the resource related to a finding.
    #   @return [Types::ResourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :type,
      :id,
      :partition,
      :region,
      :resource_role,
      :tags,
      :data_classification,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request conflicts with an existing
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional details about a resource related to a finding.
    #
    # To provide the details, use the object that corresponds to the
    # resource type. For example, if the resource type is `AwsEc2Instance`,
    # then you use the `AwsEc2Instance` object to provide the details.
    #
    # If the type-specific object does not contain all of the fields you
    # want to populate, then you use the `Other` object to populate those
    # additional fields.
    #
    # You also use the `Other` object to populate the details when the
    # selected type does not have a corresponding object.
    #
    # @!attribute [rw] aws_auto_scaling_auto_scaling_group
    #   Details for an autoscaling group.
    #   @return [Types::AwsAutoScalingAutoScalingGroupDetails]
    #
    # @!attribute [rw] aws_code_build_project
    #   Details for an CodeBuild project.
    #   @return [Types::AwsCodeBuildProjectDetails]
    #
    # @!attribute [rw] aws_cloud_front_distribution
    #   Details about a CloudFront distribution.
    #   @return [Types::AwsCloudFrontDistributionDetails]
    #
    # @!attribute [rw] aws_ec2_instance
    #   Details about an EC2 instance related to a finding.
    #   @return [Types::AwsEc2InstanceDetails]
    #
    # @!attribute [rw] aws_ec2_network_interface
    #   Details for an EC2 network interface.
    #   @return [Types::AwsEc2NetworkInterfaceDetails]
    #
    # @!attribute [rw] aws_ec2_security_group
    #   Details for an EC2 security group.
    #   @return [Types::AwsEc2SecurityGroupDetails]
    #
    # @!attribute [rw] aws_ec2_volume
    #   Details for an Amazon EC2 volume.
    #   @return [Types::AwsEc2VolumeDetails]
    #
    # @!attribute [rw] aws_ec2_vpc
    #   Details for an Amazon EC2 VPC.
    #   @return [Types::AwsEc2VpcDetails]
    #
    # @!attribute [rw] aws_ec2_eip
    #   Details about an Elastic IP address.
    #   @return [Types::AwsEc2EipDetails]
    #
    # @!attribute [rw] aws_ec2_subnet
    #   Details about a subnet in Amazon EC2.
    #   @return [Types::AwsEc2SubnetDetails]
    #
    # @!attribute [rw] aws_ec2_network_acl
    #   Details about an EC2 network access control list (ACL).
    #   @return [Types::AwsEc2NetworkAclDetails]
    #
    # @!attribute [rw] aws_elbv_2_load_balancer
    #   Details about a load balancer.
    #   @return [Types::AwsElbv2LoadBalancerDetails]
    #
    # @!attribute [rw] aws_elastic_beanstalk_environment
    #   Details about an Elastic Beanstalk environment.
    #   @return [Types::AwsElasticBeanstalkEnvironmentDetails]
    #
    # @!attribute [rw] aws_elasticsearch_domain
    #   Details for an Elasticsearch domain.
    #   @return [Types::AwsElasticsearchDomainDetails]
    #
    # @!attribute [rw] aws_s3_bucket
    #   Details about an S3 bucket related to a finding.
    #   @return [Types::AwsS3BucketDetails]
    #
    # @!attribute [rw] aws_s3_account_public_access_block
    #   Details about the Amazon S3 Public Access Block configuration for an
    #   account.
    #   @return [Types::AwsS3AccountPublicAccessBlockDetails]
    #
    # @!attribute [rw] aws_s3_object
    #   Details about an S3 object related to a finding.
    #   @return [Types::AwsS3ObjectDetails]
    #
    # @!attribute [rw] aws_secrets_manager_secret
    #   Details about a Secrets Manager secret.
    #   @return [Types::AwsSecretsManagerSecretDetails]
    #
    # @!attribute [rw] aws_iam_access_key
    #   Details about an IAM access key related to a finding.
    #   @return [Types::AwsIamAccessKeyDetails]
    #
    # @!attribute [rw] aws_iam_user
    #   Details about an IAM user.
    #   @return [Types::AwsIamUserDetails]
    #
    # @!attribute [rw] aws_iam_policy
    #   Details about an IAM permissions policy.
    #   @return [Types::AwsIamPolicyDetails]
    #
    # @!attribute [rw] aws_api_gateway_v2_stage
    #   Provides information about a version 2 stage for Amazon API Gateway.
    #   @return [Types::AwsApiGatewayV2StageDetails]
    #
    # @!attribute [rw] aws_api_gateway_v2_api
    #   Provides information about a version 2 API in Amazon API Gateway.
    #   @return [Types::AwsApiGatewayV2ApiDetails]
    #
    # @!attribute [rw] aws_dynamo_db_table
    #   Details about a DynamoDB table.
    #   @return [Types::AwsDynamoDbTableDetails]
    #
    # @!attribute [rw] aws_api_gateway_stage
    #   Provides information about a version 1 Amazon API Gateway stage.
    #   @return [Types::AwsApiGatewayStageDetails]
    #
    # @!attribute [rw] aws_api_gateway_rest_api
    #   Provides information about a REST API in version 1 of Amazon API
    #   Gateway.
    #   @return [Types::AwsApiGatewayRestApiDetails]
    #
    # @!attribute [rw] aws_cloud_trail_trail
    #   Provides details about a CloudTrail trail.
    #   @return [Types::AwsCloudTrailTrailDetails]
    #
    # @!attribute [rw] aws_ssm_patch_compliance
    #   Provides information about the state of a patch on an instance based
    #   on the patch baseline that was used to patch the instance.
    #   @return [Types::AwsSsmPatchComplianceDetails]
    #
    # @!attribute [rw] aws_certificate_manager_certificate
    #   Provides details about an Certificate Manager certificate.
    #   @return [Types::AwsCertificateManagerCertificateDetails]
    #
    # @!attribute [rw] aws_redshift_cluster
    #   Contains details about an Amazon Redshift cluster.
    #   @return [Types::AwsRedshiftClusterDetails]
    #
    # @!attribute [rw] aws_elb_load_balancer
    #   Contains details about a Classic Load Balancer.
    #   @return [Types::AwsElbLoadBalancerDetails]
    #
    # @!attribute [rw] aws_iam_group
    #   Contains details about an IAM group.
    #   @return [Types::AwsIamGroupDetails]
    #
    # @!attribute [rw] aws_iam_role
    #   Details about an IAM role.
    #   @return [Types::AwsIamRoleDetails]
    #
    # @!attribute [rw] aws_kms_key
    #   Details about an KMS key.
    #   @return [Types::AwsKmsKeyDetails]
    #
    # @!attribute [rw] aws_lambda_function
    #   Details about a Lambda function.
    #   @return [Types::AwsLambdaFunctionDetails]
    #
    # @!attribute [rw] aws_lambda_layer_version
    #   Details for a Lambda layer version.
    #   @return [Types::AwsLambdaLayerVersionDetails]
    #
    # @!attribute [rw] aws_rds_db_instance
    #   Details about an Amazon RDS database instance.
    #   @return [Types::AwsRdsDbInstanceDetails]
    #
    # @!attribute [rw] aws_sns_topic
    #   Details about an SNS topic.
    #   @return [Types::AwsSnsTopicDetails]
    #
    # @!attribute [rw] aws_sqs_queue
    #   Details about an SQS queue.
    #   @return [Types::AwsSqsQueueDetails]
    #
    # @!attribute [rw] aws_waf_web_acl
    #   Details for an WAF web ACL.
    #   @return [Types::AwsWafWebAclDetails]
    #
    # @!attribute [rw] aws_rds_db_snapshot
    #   Details about an Amazon RDS database snapshot.
    #   @return [Types::AwsRdsDbSnapshotDetails]
    #
    # @!attribute [rw] aws_rds_db_cluster_snapshot
    #   Details about an Amazon RDS database cluster snapshot.
    #   @return [Types::AwsRdsDbClusterSnapshotDetails]
    #
    # @!attribute [rw] aws_rds_db_cluster
    #   Details about an Amazon RDS database cluster.
    #   @return [Types::AwsRdsDbClusterDetails]
    #
    # @!attribute [rw] aws_ecs_cluster
    #   Details about an Amazon ECS cluster.
    #   @return [Types::AwsEcsClusterDetails]
    #
    # @!attribute [rw] aws_ecs_container
    #   Provides information about a Docker container that's part of a
    #   task.
    #   @return [Types::AwsEcsContainerDetails]
    #
    # @!attribute [rw] aws_ecs_task_definition
    #   Details about a task definition. A task definition describes the
    #   container and volume definitions of an Amazon Elastic Container
    #   Service task.
    #   @return [Types::AwsEcsTaskDefinitionDetails]
    #
    # @!attribute [rw] container
    #   Details about a container resource related to a finding.
    #   @return [Types::ContainerDetails]
    #
    # @!attribute [rw] other
    #   Details about a resource that are not available in a type-specific
    #   details object. Use the `Other` object in the following cases.
    #
    #   * The type-specific object does not contain all of the fields that
    #     you want to populate. In this case, first use the type-specific
    #     object to populate those fields. Use the `Other` object to
    #     populate the fields that are missing from the type-specific
    #     object.
    #
    #   * The resource type does not have a corresponding object. This
    #     includes resources for which the type is `Other`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] aws_rds_event_subscription
    #   Details about an RDS event notification subscription.
    #   @return [Types::AwsRdsEventSubscriptionDetails]
    #
    # @!attribute [rw] aws_ecs_service
    #   Details about a service within an ECS cluster.
    #   @return [Types::AwsEcsServiceDetails]
    #
    # @!attribute [rw] aws_auto_scaling_launch_configuration
    #   Provides details about a launch configuration.
    #   @return [Types::AwsAutoScalingLaunchConfigurationDetails]
    #
    # @!attribute [rw] aws_ec2_vpn_connection
    #   Details about an Amazon EC2 VPN connection.
    #   @return [Types::AwsEc2VpnConnectionDetails]
    #
    # @!attribute [rw] aws_ecr_container_image
    #   Information about an Amazon ECR image.
    #   @return [Types::AwsEcrContainerImageDetails]
    #
    # @!attribute [rw] aws_open_search_service_domain
    #   Details about an Amazon OpenSearch Service domain.
    #   @return [Types::AwsOpenSearchServiceDomainDetails]
    #
    # @!attribute [rw] aws_ec2_vpc_endpoint_service
    #   Details about the service configuration for a VPC endpoint service.
    #   @return [Types::AwsEc2VpcEndpointServiceDetails]
    #
    # @!attribute [rw] aws_xray_encryption_config
    #   Information about the encryption configuration for X-Ray.
    #   @return [Types::AwsXrayEncryptionConfigDetails]
    #
    # @!attribute [rw] aws_waf_rate_based_rule
    #   Details about a rate-based rule for global resources.
    #   @return [Types::AwsWafRateBasedRuleDetails]
    #
    # @!attribute [rw] aws_waf_regional_rate_based_rule
    #   Details about a rate-based rule for Regional resources.
    #   @return [Types::AwsWafRegionalRateBasedRuleDetails]
    #
    # @!attribute [rw] aws_ecr_repository
    #   Information about an Amazon Elastic Container Registry repository.
    #   @return [Types::AwsEcrRepositoryDetails]
    #
    # @!attribute [rw] aws_eks_cluster
    #   Details about an Amazon EKS cluster.
    #   @return [Types::AwsEksClusterDetails]
    #
    # @!attribute [rw] aws_network_firewall_firewall_policy
    #   Details about an Network Firewall firewall policy.
    #   @return [Types::AwsNetworkFirewallFirewallPolicyDetails]
    #
    # @!attribute [rw] aws_network_firewall_firewall
    #   Details about an Network Firewall firewall.
    #   @return [Types::AwsNetworkFirewallFirewallDetails]
    #
    # @!attribute [rw] aws_network_firewall_rule_group
    #   Details about an Network Firewall rule group.
    #   @return [Types::AwsNetworkFirewallRuleGroupDetails]
    #
    # @!attribute [rw] aws_rds_db_security_group
    #   Details about an Amazon RDS DB security group.
    #   @return [Types::AwsRdsDbSecurityGroupDetails]
    #
    # @!attribute [rw] aws_kinesis_stream
    #   Details about an Amazon Kinesis data stream.
    #   @return [Types::AwsKinesisStreamDetails]
    #
    # @!attribute [rw] aws_ec2_transit_gateway
    #   Details about an Amazon EC2 transit gateway that interconnects your
    #   virtual private clouds (VPC) and on-premises networks.
    #   @return [Types::AwsEc2TransitGatewayDetails]
    #
    # @!attribute [rw] aws_efs_access_point
    #   Details about an Amazon EFS access point. An access point is an
    #   application-specific view into an EFS file system that applies an
    #   operating system user and group, and a file system path, to any file
    #   system request made through the access point.
    #   @return [Types::AwsEfsAccessPointDetails]
    #
    # @!attribute [rw] aws_cloud_formation_stack
    #   Details about an CloudFormation stack. A stack is a collection of
    #   Amazon Web Services resources that you can manage as a single unit.
    #   @return [Types::AwsCloudFormationStackDetails]
    #
    # @!attribute [rw] aws_cloud_watch_alarm
    #   Details about an Amazon CloudWatch alarm. An alarm allows you to
    #   monitor and receive alerts about your Amazon Web Services resources
    #   and applications across multiple Regions.
    #   @return [Types::AwsCloudWatchAlarmDetails]
    #
    # @!attribute [rw] aws_ec2_vpc_peering_connection
    #   Details about an Amazon EC2 VPC peering connection. A VPC peering
    #   connection is a networking connection between two VPCs that enables
    #   you to route traffic between them privately.
    #   @return [Types::AwsEc2VpcPeeringConnectionDetails]
    #
    # @!attribute [rw] aws_waf_regional_rule_group
    #   Details about an WAF rule group for Regional resources.
    #   @return [Types::AwsWafRegionalRuleGroupDetails]
    #
    # @!attribute [rw] aws_waf_regional_rule
    #   Details about an WAF rule for Regional resources.
    #   @return [Types::AwsWafRegionalRuleDetails]
    #
    # @!attribute [rw] aws_waf_regional_web_acl
    #   Details about an WAF web access control list (web ACL) for Regional
    #   resources.
    #   @return [Types::AwsWafRegionalWebAclDetails]
    #
    # @!attribute [rw] aws_waf_rule
    #   Details about an WAF rule for global resources.
    #   @return [Types::AwsWafRuleDetails]
    #
    # @!attribute [rw] aws_waf_rule_group
    #   Details about an WAF rule group for global resources.
    #   @return [Types::AwsWafRuleGroupDetails]
    #
    # @!attribute [rw] aws_ecs_task
    #   Details about a task in a cluster.
    #   @return [Types::AwsEcsTaskDetails]
    #
    # @!attribute [rw] aws_backup_backup_vault
    #   Provides details about an Backup backup vault.
    #   @return [Types::AwsBackupBackupVaultDetails]
    #
    # @!attribute [rw] aws_backup_backup_plan
    #   Provides details about an Backup backup plan.
    #   @return [Types::AwsBackupBackupPlanDetails]
    #
    # @!attribute [rw] aws_backup_recovery_point
    #   Provides details about an Backup backup, or recovery point.
    #   @return [Types::AwsBackupRecoveryPointDetails]
    #
    # @!attribute [rw] aws_ec2_launch_template
    #   Specifies the properties for creating an Amazon Elastic Compute
    #   Cloud (Amazon EC2) launch template.
    #   @return [Types::AwsEc2LaunchTemplateDetails]
    #
    # @!attribute [rw] aws_sage_maker_notebook_instance
    #   Provides details about an Amazon SageMaker notebook instance.
    #   @return [Types::AwsSageMakerNotebookInstanceDetails]
    #
    # @!attribute [rw] aws_wafv_2_web_acl
    #   Details about an WAFv2 web Access Control List (ACL).
    #   @return [Types::AwsWafv2WebAclDetails]
    #
    # @!attribute [rw] aws_wafv_2_rule_group
    #   Details about an WAFv2 rule group.
    #   @return [Types::AwsWafv2RuleGroupDetails]
    #
    # @!attribute [rw] aws_ec2_route_table
    #   Provides details about a route table. A route table contains a set
    #   of rules, called routes, that determine where to direct network
    #   traffic from your subnet or gateway.
    #   @return [Types::AwsEc2RouteTableDetails]
    #
    # @!attribute [rw] aws_amazon_mq_broker
    #   Provides details about AppSync message broker. A message broker
    #   allows software applications and components to communicate using
    #   various programming languages, operating systems, and formal
    #   messaging protocols.
    #   @return [Types::AwsAmazonMqBrokerDetails]
    #
    # @!attribute [rw] aws_app_sync_graph_ql_api
    #   Provides details about an AppSync Graph QL API, which lets you query
    #   multiple databases, microservices, and APIs from a single GraphQL
    #   endpoint.
    #   @return [Types::AwsAppSyncGraphQlApiDetails]
    #
    # @!attribute [rw] aws_event_schemas_registry
    #   A schema defines the structure of events that are sent to Amazon
    #   EventBridge. Schema registries are containers for schemas. They
    #   collect and organize schemas so that your schemas are in logical
    #   groups.
    #   @return [Types::AwsEventSchemasRegistryDetails]
    #
    # @!attribute [rw] aws_guard_duty_detector
    #   Provides details about an Amazon GuardDuty detector. A detector is
    #   an object that represents the GuardDuty service. A detector is
    #   required for GuardDuty to become operational.
    #   @return [Types::AwsGuardDutyDetectorDetails]
    #
    # @!attribute [rw] aws_step_function_state_machine
    #   Provides details about an Step Functions state machine, which is a
    #   workflow consisting of a series of event-driven steps.
    #   @return [Types::AwsStepFunctionStateMachineDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :aws_auto_scaling_auto_scaling_group,
      :aws_code_build_project,
      :aws_cloud_front_distribution,
      :aws_ec2_instance,
      :aws_ec2_network_interface,
      :aws_ec2_security_group,
      :aws_ec2_volume,
      :aws_ec2_vpc,
      :aws_ec2_eip,
      :aws_ec2_subnet,
      :aws_ec2_network_acl,
      :aws_elbv_2_load_balancer,
      :aws_elastic_beanstalk_environment,
      :aws_elasticsearch_domain,
      :aws_s3_bucket,
      :aws_s3_account_public_access_block,
      :aws_s3_object,
      :aws_secrets_manager_secret,
      :aws_iam_access_key,
      :aws_iam_user,
      :aws_iam_policy,
      :aws_api_gateway_v2_stage,
      :aws_api_gateway_v2_api,
      :aws_dynamo_db_table,
      :aws_api_gateway_stage,
      :aws_api_gateway_rest_api,
      :aws_cloud_trail_trail,
      :aws_ssm_patch_compliance,
      :aws_certificate_manager_certificate,
      :aws_redshift_cluster,
      :aws_elb_load_balancer,
      :aws_iam_group,
      :aws_iam_role,
      :aws_kms_key,
      :aws_lambda_function,
      :aws_lambda_layer_version,
      :aws_rds_db_instance,
      :aws_sns_topic,
      :aws_sqs_queue,
      :aws_waf_web_acl,
      :aws_rds_db_snapshot,
      :aws_rds_db_cluster_snapshot,
      :aws_rds_db_cluster,
      :aws_ecs_cluster,
      :aws_ecs_container,
      :aws_ecs_task_definition,
      :container,
      :other,
      :aws_rds_event_subscription,
      :aws_ecs_service,
      :aws_auto_scaling_launch_configuration,
      :aws_ec2_vpn_connection,
      :aws_ecr_container_image,
      :aws_open_search_service_domain,
      :aws_ec2_vpc_endpoint_service,
      :aws_xray_encryption_config,
      :aws_waf_rate_based_rule,
      :aws_waf_regional_rate_based_rule,
      :aws_ecr_repository,
      :aws_eks_cluster,
      :aws_network_firewall_firewall_policy,
      :aws_network_firewall_firewall,
      :aws_network_firewall_rule_group,
      :aws_rds_db_security_group,
      :aws_kinesis_stream,
      :aws_ec2_transit_gateway,
      :aws_efs_access_point,
      :aws_cloud_formation_stack,
      :aws_cloud_watch_alarm,
      :aws_ec2_vpc_peering_connection,
      :aws_waf_regional_rule_group,
      :aws_waf_regional_rule,
      :aws_waf_regional_web_acl,
      :aws_waf_rule,
      :aws_waf_rule_group,
      :aws_ecs_task,
      :aws_backup_backup_vault,
      :aws_backup_backup_plan,
      :aws_backup_recovery_point,
      :aws_ec2_launch_template,
      :aws_sage_maker_notebook_instance,
      :aws_wafv_2_web_acl,
      :aws_wafv_2_rule_group,
      :aws_ec2_route_table,
      :aws_amazon_mq_broker,
      :aws_app_sync_graph_ql_api,
      :aws_event_schemas_registry,
      :aws_guard_duty_detector,
      :aws_step_function_state_machine)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because we can't find the specified
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the account that was not processed.
    #
    # @!attribute [rw] account_id
    #   An Amazon Web Services account ID of the account that was not
    #   processed.
    #   @return [String]
    #
    # @!attribute [rw] processing_result
    #   The reason that the account was not processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Result AWS API Documentation
    #
    class Result < Struct.new(
      :account_id,
      :processing_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the routes in the route table.
    #
    # @!attribute [rw] carrier_gateway_id
    #   The ID of the carrier gateway.
    #   @return [String]
    #
    # @!attribute [rw] core_network_arn
    #   The Amazon Resource Name (ARN) of the core network.
    #   @return [String]
    #
    # @!attribute [rw] destination_cidr_block
    #   The IPv4 CIDR block used for the destination match.
    #   @return [String]
    #
    # @!attribute [rw] destination_ipv_6_cidr_block
    #   The IPv6 CIDR block used for the destination match.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix_list_id
    #   The prefix of the destination Amazon Web Service.
    #   @return [String]
    #
    # @!attribute [rw] egress_only_internet_gateway_id
    #   The ID of the egress-only internet gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The ID of a gateway attached to your VPC.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of a NAT instance in your VPC.
    #   @return [String]
    #
    # @!attribute [rw] instance_owner_id
    #   The ID of the Amazon Web Services account that owns the instance.
    #   @return [String]
    #
    # @!attribute [rw] local_gateway_id
    #   The ID of the local gateway.
    #   @return [String]
    #
    # @!attribute [rw] nat_gateway_id
    #   The ID of a NAT gateway.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Describes how the route was created.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the route.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_id
    #   The ID of a transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of a VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RouteSetDetails AWS API Documentation
    #
    class RouteSetDetails < Struct.new(
      :carrier_gateway_id,
      :core_network_arn,
      :destination_cidr_block,
      :destination_ipv_6_cidr_block,
      :destination_prefix_list_id,
      :egress_only_internet_gateway_id,
      :gateway_id,
      :instance_id,
      :instance_owner_id,
      :local_gateway_id,
      :nat_gateway_id,
      :network_interface_id,
      :origin,
      :state,
      :transit_gateway_id,
      :vpc_peering_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the rule group.
    #
    # @!attribute [rw] rule_variables
    #   Additional settings to use in the specified rules.
    #   @return [Types::RuleGroupVariables]
    #
    # @!attribute [rw] rules_source
    #   The rules and actions for the rule group.
    #
    #   For stateful rule groups, can contain `RulesString`,
    #   `RulesSourceList`, or `StatefulRules`.
    #
    #   For stateless rule groups, contains
    #   `StatelessRulesAndCustomActions`.
    #   @return [Types::RuleGroupSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupDetails AWS API Documentation
    #
    class RuleGroupDetails < Struct.new(
      :rule_variables,
      :rules_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rules and actions for the rule group.
    #
    # @!attribute [rw] rules_source_list
    #   Stateful inspection criteria for a domain list rule group. A domain
    #   list rule group determines access by specific protocols to specific
    #   domains.
    #   @return [Types::RuleGroupSourceListDetails]
    #
    # @!attribute [rw] rules_string
    #   Stateful inspection criteria, provided in Suricata compatible
    #   intrusion prevention system (IPS) rules.
    #   @return [String]
    #
    # @!attribute [rw] stateful_rules
    #   Suricata rule specifications.
    #   @return [Array<Types::RuleGroupSourceStatefulRulesDetails>]
    #
    # @!attribute [rw] stateless_rules_and_custom_actions
    #   The stateless rules and custom actions used by a stateless rule
    #   group.
    #   @return [Types::RuleGroupSourceStatelessRulesAndCustomActionsDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSource AWS API Documentation
    #
    class RuleGroupSource < Struct.new(
      :rules_source_list,
      :rules_string,
      :stateful_rules,
      :stateless_rules_and_custom_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom action definition. A custom action is an optional,
    # non-standard action to use for stateless packet handling.
    #
    # @!attribute [rw] action_definition
    #   The definition of a custom action.
    #   @return [Types::StatelessCustomActionDefinition]
    #
    # @!attribute [rw] action_name
    #   A descriptive name of the custom action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceCustomActionsDetails AWS API Documentation
    #
    class RuleGroupSourceCustomActionsDetails < Struct.new(
      :action_definition,
      :action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stateful inspection criteria for a domain list rule group.
    #
    # @!attribute [rw] generated_rules_type
    #   Indicates whether to allow or deny access to the domains listed in
    #   `Targets`.
    #   @return [String]
    #
    # @!attribute [rw] target_types
    #   The protocols that you want to inspect. Specify `LS_SNI` for HTTPS.
    #   Specify `HTTP_HOST` for HTTP. You can specify either or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] targets
    #   The domains that you want to inspect for in your traffic flows. You
    #   can provide full domain names, or use the '.' prefix as a
    #   wildcard. For example, `.example.com` matches all domains that end
    #   with `example.com`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceListDetails AWS API Documentation
    #
    class RuleGroupSourceListDetails < Struct.new(
      :generated_rules_type,
      :target_types,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Suricata rule specification.
    #
    # @!attribute [rw] action
    #   Defines what Network Firewall should do with the packets in a
    #   traffic flow when the flow matches the stateful rule criteria.
    #   @return [String]
    #
    # @!attribute [rw] header
    #   The stateful inspection criteria for the rule.
    #   @return [Types::RuleGroupSourceStatefulRulesHeaderDetails]
    #
    # @!attribute [rw] rule_options
    #   Additional options for the rule.
    #   @return [Array<Types::RuleGroupSourceStatefulRulesOptionsDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatefulRulesDetails AWS API Documentation
    #
    class RuleGroupSourceStatefulRulesDetails < Struct.new(
      :action,
      :header,
      :rule_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The inspection criteria for a stateful rule.
    #
    # @!attribute [rw] destination
    #   The destination IP address or address range to inspect for, in CIDR
    #   notation. To match with any address, specify `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port to inspect for. You can specify an individual
    #   port, such as `1994`. You also can specify a port range, such as
    #   `1990:1994`. To match with any port, specify `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] direction
    #   The direction of traffic flow to inspect. If set to `ANY`, the
    #   inspection matches bidirectional traffic, both from the source to
    #   the destination and from the destination to the source. If set to
    #   `FORWARD`, the inspection only matches traffic going from the source
    #   to the destination.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to inspect for. To inspector for all protocols, use
    #   `IP`.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source IP address or address range to inspect for, in CIDR
    #   notation. To match with any address, specify `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] source_port
    #   The source port to inspect for. You can specify an individual port,
    #   such as `1994`. You also can specify a port range, such as
    #   `1990:1994`. To match with any port, specify `ANY`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatefulRulesHeaderDetails AWS API Documentation
    #
    class RuleGroupSourceStatefulRulesHeaderDetails < Struct.new(
      :destination,
      :destination_port,
      :direction,
      :protocol,
      :source,
      :source_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule option for a stateful rule.
    #
    # @!attribute [rw] keyword
    #   A keyword to look for.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   A list of settings.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatefulRulesOptionsDetails AWS API Documentation
    #
    class RuleGroupSourceStatefulRulesOptionsDetails < Struct.new(
      :keyword,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of the stateless rule.
    #
    # @!attribute [rw] actions
    #   The actions to take on a packet that matches one of the stateless
    #   rule definition's match attributes. You must specify a standard
    #   action (`aws:pass`, `aws:drop`, or `aws:forward_to_sfe`). You can
    #   then add custom actions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_attributes
    #   The criteria for Network Firewall to use to inspect an individual
    #   packet in a stateless rule inspection.
    #   @return [Types::RuleGroupSourceStatelessRuleMatchAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatelessRuleDefinition AWS API Documentation
    #
    class RuleGroupSourceStatelessRuleDefinition < Struct.new(
      :actions,
      :match_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Criteria for the stateless rule.
    #
    # @!attribute [rw] destination_ports
    #   A list of port ranges to specify the destination ports to inspect
    #   for.
    #   @return [Array<Types::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts>]
    #
    # @!attribute [rw] destinations
    #   The destination IP addresses and address ranges to inspect for, in
    #   CIDR notation.
    #   @return [Array<Types::RuleGroupSourceStatelessRuleMatchAttributesDestinations>]
    #
    # @!attribute [rw] protocols
    #   The protocols to inspect for.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] source_ports
    #   A list of port ranges to specify the source ports to inspect for.
    #   @return [Array<Types::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts>]
    #
    # @!attribute [rw] sources
    #   The source IP addresses and address ranges to inspect for, in CIDR
    #   notation.
    #   @return [Array<Types::RuleGroupSourceStatelessRuleMatchAttributesSources>]
    #
    # @!attribute [rw] tcp_flags
    #   The TCP flags and masks to inspect for.
    #   @return [Array<Types::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatelessRuleMatchAttributes AWS API Documentation
    #
    class RuleGroupSourceStatelessRuleMatchAttributes < Struct.new(
      :destination_ports,
      :destinations,
      :protocols,
      :source_ports,
      :sources,
      :tcp_flags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A port range to specify the destination ports to inspect for.
    #
    # @!attribute [rw] from_port
    #   The starting port value for the port range.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The ending port value for the port range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts AWS API Documentation
    #
    class RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts < Struct.new(
      :from_port,
      :to_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # A destination IP address or range.
    #
    # @!attribute [rw] address_definition
    #   An IP address or a block of IP addresses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatelessRuleMatchAttributesDestinations AWS API Documentation
    #
    class RuleGroupSourceStatelessRuleMatchAttributesDestinations < Struct.new(
      :address_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A port range to specify the source ports to inspect for.
    #
    # @!attribute [rw] from_port
    #   The starting port value for the port range.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The ending port value for the port range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatelessRuleMatchAttributesSourcePorts AWS API Documentation
    #
    class RuleGroupSourceStatelessRuleMatchAttributesSourcePorts < Struct.new(
      :from_port,
      :to_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source IP addresses and address range to inspect for.
    #
    # @!attribute [rw] address_definition
    #   An IP address or a block of IP addresses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatelessRuleMatchAttributesSources AWS API Documentation
    #
    class RuleGroupSourceStatelessRuleMatchAttributesSources < Struct.new(
      :address_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of TCP flags and masks to inspect for.
    #
    # @!attribute [rw] flags
    #   Defines the flags from the `Masks` setting that must be set in order
    #   for the packet to match. Flags that are listed must be set. Flags
    #   that are not listed must not be set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] masks
    #   The set of flags to consider in the inspection. If not specified,
    #   then all flags are inspected.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatelessRuleMatchAttributesTcpFlags AWS API Documentation
    #
    class RuleGroupSourceStatelessRuleMatchAttributesTcpFlags < Struct.new(
      :flags,
      :masks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stateless rules and custom actions for a stateless rule group.
    #
    # @!attribute [rw] custom_actions
    #   Custom actions for the rule group.
    #   @return [Array<Types::RuleGroupSourceCustomActionsDetails>]
    #
    # @!attribute [rw] stateless_rules
    #   Stateless rules for the rule group.
    #   @return [Array<Types::RuleGroupSourceStatelessRulesDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatelessRulesAndCustomActionsDetails AWS API Documentation
    #
    class RuleGroupSourceStatelessRulesAndCustomActionsDetails < Struct.new(
      :custom_actions,
      :stateless_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # A stateless rule in the rule group.
    #
    # @!attribute [rw] priority
    #   Indicates the order in which to run this rule relative to all of the
    #   rules in the stateless rule group.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_definition
    #   Provides the definition of the stateless rule.
    #   @return [Types::RuleGroupSourceStatelessRuleDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupSourceStatelessRulesDetails AWS API Documentation
    #
    class RuleGroupSourceStatelessRulesDetails < Struct.new(
      :priority,
      :rule_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional settings to use in the specified rules.
    #
    # @!attribute [rw] ip_sets
    #   A list of IP addresses and address ranges, in CIDR notation.
    #   @return [Types::RuleGroupVariablesIpSetsDetails]
    #
    # @!attribute [rw] port_sets
    #   A list of port ranges.
    #   @return [Types::RuleGroupVariablesPortSetsDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupVariables AWS API Documentation
    #
    class RuleGroupVariables < Struct.new(
      :ip_sets,
      :port_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of IP addresses and address ranges, in CIDR notation.
    #
    # @!attribute [rw] definition
    #   The list of IP addresses and ranges.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupVariablesIpSetsDetails AWS API Documentation
    #
    class RuleGroupVariablesIpSetsDetails < Struct.new(
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of port ranges.
    #
    # @!attribute [rw] definition
    #   The list of port ranges.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RuleGroupVariablesPortSetsDetails AWS API Documentation
    #
    class RuleGroupVariablesPortSetsDetails < Struct.new(
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A security control in Security Hub describes a security best practice
    # related to a specific resource.
    #
    # @!attribute [rw] security_control_id
    #   The unique identifier of a security control across standards. Values
    #   for this field typically consist of an Amazon Web Service name and a
    #   number, such as APIGateway.3.
    #   @return [String]
    #
    # @!attribute [rw] security_control_arn
    #   The Amazon Resource Name (ARN) for a security control across
    #   standards, such as
    #   `arn:aws:securityhub:eu-central-1:123456789012:security-control/S3.1`.
    #   This parameter doesn't mention a specific standard.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of a security control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a security control across standards. This
    #   typically summarizes how Security Hub evaluates the control and the
    #   conditions under which it produces a failed finding. This parameter
    #   doesn't reference a specific standard.
    #   @return [String]
    #
    # @!attribute [rw] remediation_url
    #   A link to Security Hub documentation that explains how to remediate
    #   a failed finding for a security control.
    #   @return [String]
    #
    # @!attribute [rw] severity_rating
    #   The severity of a security control. For more information about how
    #   Security Hub determines control severity, see [Assigning severity to
    #   control findings][1] in the *Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/controls-findings-create-update.html#control-findings-severity
    #   @return [String]
    #
    # @!attribute [rw] security_control_status
    #   The enablement status of a security control in a specific standard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SecurityControl AWS API Documentation
    #
    class SecurityControl < Struct.new(
      :security_control_id,
      :security_control_arn,
      :title,
      :description,
      :remediation_url,
      :severity_rating,
      :security_control_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides metadata for a security control, including its unique
    # standard-agnostic identifier, title, description, severity,
    # availability in Amazon Web Services Regions, and a link to remediation
    # steps.
    #
    # @!attribute [rw] security_control_id
    #   The unique identifier of a security control across standards. Values
    #   for this field typically consist of an Amazon Web Service name and a
    #   number (for example, APIGateway.3). This parameter differs from
    #   `SecurityControlArn`, which is a unique Amazon Resource Name (ARN)
    #   assigned to a control. The ARN references the security control ID
    #   (for example,
    #   arn:aws:securityhub:eu-central-1:123456789012:security-control/APIGateway.3).
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of a security control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a security control across standards. This
    #   typically summarizes how Security Hub evaluates the control and the
    #   conditions under which it produces a failed finding. This parameter
    #   doesn't reference a specific standard.
    #   @return [String]
    #
    # @!attribute [rw] remediation_url
    #   A link to Security Hub documentation that explains how to remediate
    #   a failed finding for a security control.
    #   @return [String]
    #
    # @!attribute [rw] severity_rating
    #   The severity of a security control. For more information about how
    #   Security Hub determines control severity, see [Assigning severity to
    #   control findings][1] in the *Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/controls-findings-create-update.html#control-findings-severity
    #   @return [String]
    #
    # @!attribute [rw] current_region_availability
    #   Specifies whether a security control is available in the current
    #   Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SecurityControlDefinition AWS API Documentation
    #
    class SecurityControlDefinition < Struct.new(
      :security_control_id,
      :title,
      :description,
      :remediation_url,
      :severity_rating,
      :current_region_availability)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of detected instances of sensitive data.
    #
    # @!attribute [rw] count
    #   The total number of occurrences of sensitive data that were
    #   detected.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of sensitive data that was detected. For example, the type
    #   might indicate that the data is an email address.
    #   @return [String]
    #
    # @!attribute [rw] occurrences
    #   Details about the sensitive data that was detected.
    #   @return [Types::Occurrences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SensitiveDataDetections AWS API Documentation
    #
    class SensitiveDataDetections < Struct.new(
      :count,
      :type,
      :occurrences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a detected instance of sensitive data that are based on
    # built-in identifiers.
    #
    # @!attribute [rw] category
    #   The category of sensitive data that was detected. For example, the
    #   category can indicate that the sensitive data involved credentials,
    #   financial information, or personal information.
    #   @return [String]
    #
    # @!attribute [rw] detections
    #   The list of detected instances of sensitive data.
    #   @return [Array<Types::SensitiveDataDetections>]
    #
    # @!attribute [rw] total_count
    #   The total number of occurrences of sensitive data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SensitiveDataResult AWS API Documentation
    #
    class SensitiveDataResult < Struct.new(
      :category,
      :detections,
      :total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The severity of the finding.
    #
    # The finding provider can provide the initial severity. The finding
    # provider can only update the severity if it hasn't been updated using
    # `BatchUpdateFindings`.
    #
    # The finding must have either `Label` or `Normalized` populated. If
    # only one of these attributes is populated, then Security Hub
    # automatically populates the other one. If neither attribute is
    # populated, then the finding is invalid. `Label` is the preferred
    # attribute.
    #
    # @!attribute [rw] product
    #   Deprecated. This attribute is being deprecated. Instead of providing
    #   `Product`, provide `Original`.
    #
    #   The native severity as defined by the Amazon Web Services service or
    #   integrated partner product that generated the finding.
    #   @return [Float]
    #
    # @!attribute [rw] label
    #   The severity value of the finding. The allowed values are the
    #   following.
    #
    #   * `INFORMATIONAL` - No issue was found.
    #
    #   * `LOW` - The issue does not require action on its own.
    #
    #   * `MEDIUM` - The issue must be addressed but not urgently.
    #
    #   * `HIGH` - The issue must be addressed as a priority.
    #
    #   * `CRITICAL` - The issue must be remediated immediately to avoid it
    #     escalating.
    #
    #   If you provide `Normalized` and do not provide `Label`, then `Label`
    #   is set automatically as follows.
    #
    #   * 0 - `INFORMATIONAL`
    #
    #   * 1–39 - `LOW`
    #
    #   * 40–69 - `MEDIUM`
    #
    #   * 70–89 - `HIGH`
    #
    #   * 90–100 - `CRITICAL`
    #   @return [String]
    #
    # @!attribute [rw] normalized
    #   Deprecated. The normalized severity of a finding. This attribute is
    #   being deprecated. Instead of providing `Normalized`, provide
    #   `Label`.
    #
    #   If you provide `Label` and do not provide `Normalized`, then
    #   `Normalized` is set automatically as follows.
    #
    #   * `INFORMATIONAL` - 0
    #
    #   * `LOW` - 1
    #
    #   * `MEDIUM` - 40
    #
    #   * `HIGH` - 70
    #
    #   * `CRITICAL` - 90
    #   @return [Integer]
    #
    # @!attribute [rw] original
    #   The native severity from the finding product that generated the
    #   finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Severity AWS API Documentation
    #
    class Severity < Struct.new(
      :product,
      :label,
      :normalized,
      :original)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates to the severity information for a finding.
    #
    # @!attribute [rw] normalized
    #   The normalized severity for the finding. This attribute is to be
    #   deprecated in favor of `Label`.
    #
    #   If you provide `Normalized` and do not provide `Label`, `Label` is
    #   set automatically as follows.
    #
    #   * 0 - `INFORMATIONAL`
    #
    #   * 1–39 - `LOW`
    #
    #   * 40–69 - `MEDIUM`
    #
    #   * 70–89 - `HIGH`
    #
    #   * 90–100 - `CRITICAL`
    #   @return [Integer]
    #
    # @!attribute [rw] product
    #   The native severity as defined by the Amazon Web Services service or
    #   integrated partner product that generated the finding.
    #   @return [Float]
    #
    # @!attribute [rw] label
    #   The severity value of the finding. The allowed values are the
    #   following.
    #
    #   * `INFORMATIONAL` - No issue was found.
    #
    #   * `LOW` - The issue does not require action on its own.
    #
    #   * `MEDIUM` - The issue must be addressed but not urgently.
    #
    #   * `HIGH` - The issue must be addressed as a priority.
    #
    #   * `CRITICAL` - The issue must be remediated immediately to avoid it
    #     escalating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SeverityUpdate AWS API Documentation
    #
    class SeverityUpdate < Struct.new(
      :normalized,
      :product,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a software package.
    #
    # @!attribute [rw] name
    #   The name of the software package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the software package.
    #   @return [String]
    #
    # @!attribute [rw] epoch
    #   The epoch of the software package.
    #   @return [String]
    #
    # @!attribute [rw] release
    #   The release of the software package.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture used for the software package.
    #   @return [String]
    #
    # @!attribute [rw] package_manager
    #   The source of the package.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The file system path to the package manager inventory file.
    #   @return [String]
    #
    # @!attribute [rw] fixed_in_version
    #   The version of the software package in which the vulnerability has
    #   been resolved.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   Describes the actions a customer can take to resolve the
    #   vulnerability in the software package.
    #   @return [String]
    #
    # @!attribute [rw] source_layer_hash
    #   The source layer hash of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] source_layer_arn
    #   The Amazon Resource Name (ARN) of the source layer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SoftwarePackage AWS API Documentation
    #
    class SoftwarePackage < Struct.new(
      :name,
      :version,
      :epoch,
      :release,
      :architecture,
      :package_manager,
      :file_path,
      :fixed_in_version,
      :remediation,
      :source_layer_hash,
      :source_layer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of finding attributes used to sort findings.
    #
    # @!attribute [rw] field
    #   The finding attribute used to sort findings.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order used to sort findings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SortCriterion AWS API Documentation
    #
    class SortCriterion < Struct.new(
      :field,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a specific security standard.
    #
    # @!attribute [rw] standards_arn
    #   The ARN of a standard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the standard.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the standard.
    #   @return [String]
    #
    # @!attribute [rw] enabled_by_default
    #   Whether the standard is enabled by default. When Security Hub is
    #   enabled from the console, if a standard is enabled by default, the
    #   check box for that standard is selected by default.
    #
    #   When Security Hub is enabled using the `EnableSecurityHub` API
    #   operation, the standard is enabled by default unless
    #   `EnableDefaultStandards` is set to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] standards_managed_by
    #   Provides details about the management of a standard.
    #   @return [Types::StandardsManagedBy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Standard AWS API Documentation
    #
    class Standard < Struct.new(
      :standards_arn,
      :name,
      :description,
      :enabled_by_default,
      :standards_managed_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an individual security standard control.
    #
    # @!attribute [rw] standards_control_arn
    #   The ARN of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] control_status
    #   The current status of the security standard control. Indicates
    #   whether the control is enabled or disabled. Security Hub does not
    #   check against disabled controls.
    #   @return [String]
    #
    # @!attribute [rw] disabled_reason
    #   The reason provided for the most recent change in status for the
    #   control.
    #   @return [String]
    #
    # @!attribute [rw] control_status_updated_at
    #   The date and time that the status of the security standard control
    #   was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] control_id
    #   The identifier of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The longer description of the security standard control. Provides
    #   information about what the control is checking for.
    #   @return [String]
    #
    # @!attribute [rw] remediation_url
    #   A link to remediation information for the control in the Security
    #   Hub user documentation.
    #   @return [String]
    #
    # @!attribute [rw] severity_rating
    #   The severity of findings generated from this security standard
    #   control.
    #
    #   The finding severity is based on an assessment of how easy it would
    #   be to compromise Amazon Web Services resources if the issue is
    #   detected.
    #   @return [String]
    #
    # @!attribute [rw] related_requirements
    #   The list of requirements that are related to this control.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsControl AWS API Documentation
    #
    class StandardsControl < Struct.new(
      :standards_control_arn,
      :control_status,
      :disabled_reason,
      :control_status_updated_at,
      :control_id,
      :title,
      :description,
      :remediation_url,
      :severity_rating,
      :related_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a control's enablement status in a specified
    # standard.
    #
    # @!attribute [rw] standards_arn
    #   The Amazon Resource Name (ARN) of a security standard.
    #   @return [String]
    #
    # @!attribute [rw] security_control_id
    #   The unique identifier of a security control across standards. Values
    #   for this field typically consist of an Amazon Web Service name and a
    #   number, such as APIGateway.3.
    #   @return [String]
    #
    # @!attribute [rw] security_control_arn
    #   The ARN of a security control across standards, such as
    #   `arn:aws:securityhub:eu-central-1:123456789012:security-control/S3.1`.
    #   This parameter doesn't mention a specific standard.
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   Specifies whether a control is enabled or disabled in a specified
    #   standard.
    #   @return [String]
    #
    # @!attribute [rw] related_requirements
    #   The requirement that underlies a control in the compliance framework
    #   related to the standard.
    #   @return [Array<String>]
    #
    # @!attribute [rw] updated_at
    #   The time at which the enablement status of the control in the
    #   specified standard was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_reason
    #   The reason for updating the enablement status of a control in a
    #   specified standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_control_title
    #   The title of a control. This field may reference a specific
    #   standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_control_description
    #   The description of a control. This typically summarizes how Security
    #   Hub evaluates the control and the conditions under which it produces
    #   a failed finding. This parameter may reference a specific standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_control_arns
    #   Provides the input parameter that Security Hub uses to call the
    #   [UpdateStandardsControl][1] API. This API can be used to enable or
    #   disable a control in a specified standard.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_UpdateStandardsControl.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsControlAssociationDetail AWS API Documentation
    #
    class StandardsControlAssociationDetail < Struct.new(
      :standards_arn,
      :security_control_id,
      :security_control_arn,
      :association_status,
      :related_requirements,
      :updated_at,
      :updated_reason,
      :standards_control_title,
      :standards_control_description,
      :standards_control_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array with one or more objects that includes a security control
    # (identified with `SecurityControlId`, `SecurityControlArn`, or a mix
    # of both parameters) and the Amazon Resource Name (ARN) of a standard.
    # The security control ID or ARN is the same across standards.
    #
    # @!attribute [rw] security_control_id
    #   The unique identifier (identified with `SecurityControlId`,
    #   `SecurityControlArn`, or a mix of both parameters) of a security
    #   control across standards.
    #   @return [String]
    #
    # @!attribute [rw] standards_arn
    #   The ARN of a standard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsControlAssociationId AWS API Documentation
    #
    class StandardsControlAssociationId < Struct.new(
      :security_control_id,
      :standards_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array that provides the enablement status and other details for
    # each control that applies to each enabled standard.
    #
    # @!attribute [rw] standards_arn
    #   The Amazon Resource Name (ARN) of a standard.
    #   @return [String]
    #
    # @!attribute [rw] security_control_id
    #   A unique standard-agnostic identifier for a control. Values for this
    #   field typically consist of an Amazon Web Service and a number, such
    #   as APIGateway.5. This field doesn't reference a specific standard.
    #   @return [String]
    #
    # @!attribute [rw] security_control_arn
    #   The ARN of a control, such as
    #   `arn:aws:securityhub:eu-central-1:123456789012:security-control/S3.1`.
    #   This parameter doesn't mention a specific standard.
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   The enablement status of a control in a specific standard.
    #   @return [String]
    #
    # @!attribute [rw] related_requirements
    #   The requirement that underlies this control in the compliance
    #   framework related to the standard.
    #   @return [Array<String>]
    #
    # @!attribute [rw] updated_at
    #   The last time that a control's enablement status in a specified
    #   standard was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_reason
    #   The reason for updating the control's enablement status in a
    #   specified standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_control_title
    #   The title of a control.
    #   @return [String]
    #
    # @!attribute [rw] standards_control_description
    #   The description of a control. This typically summarizes how Security
    #   Hub evaluates the control and the conditions under which it produces
    #   a failed finding. The parameter may reference a specific standard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsControlAssociationSummary AWS API Documentation
    #
    class StandardsControlAssociationSummary < Struct.new(
      :standards_arn,
      :security_control_id,
      :security_control_arn,
      :association_status,
      :related_requirements,
      :updated_at,
      :updated_reason,
      :standards_control_title,
      :standards_control_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of requested updates to the enablement status of controls in
    # specified standards. The objects in the array include a security
    # control ID, the Amazon Resource Name (ARN) of the standard, the
    # requested enablement status, and the reason for updating the
    # enablement status.
    #
    # @!attribute [rw] standards_arn
    #   The Amazon Resource Name (ARN) of the standard in which you want to
    #   update the control's enablement status.
    #   @return [String]
    #
    # @!attribute [rw] security_control_id
    #   The unique identifier for the security control whose enablement
    #   status you want to update.
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   The desired enablement status of the control in the standard.
    #   @return [String]
    #
    # @!attribute [rw] updated_reason
    #   The reason for updating the control's enablement status in the
    #   standard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsControlAssociationUpdate AWS API Documentation
    #
    class StandardsControlAssociationUpdate < Struct.new(
      :standards_arn,
      :security_control_id,
      :association_status,
      :updated_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the management of a security standard.
    #
    # @!attribute [rw] company
    #   An identifier for the company that manages a specific security
    #   standard. For existing standards, the value is equal to `Amazon Web
    #   Services`.
    #   @return [String]
    #
    # @!attribute [rw] product
    #   An identifier for the product that manages a specific security
    #   standard. For existing standards, the value is equal to the Amazon
    #   Web Services service that manages the standard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsManagedBy AWS API Documentation
    #
    class StandardsManagedBy < Struct.new(
      :company,
      :product)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reason for the current status of a standard subscription.
    #
    # @!attribute [rw] status_reason_code
    #   The reason code that represents the reason for the current status of
    #   a standard subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsStatusReason AWS API Documentation
    #
    class StandardsStatusReason < Struct.new(
      :status_reason_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that represents your subscription to a supported standard.
    #
    # @!attribute [rw] standards_subscription_arn
    #   The ARN of a resource that represents your subscription to a
    #   supported standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_arn
    #   The ARN of a standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_input
    #   A key-value pair of input for the standard.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] standards_status
    #   The status of the standard subscription.
    #
    #   The status values are as follows:
    #
    #   * `PENDING` - Standard is in the process of being enabled.
    #
    #   * `READY` - Standard is enabled.
    #
    #   * `INCOMPLETE` - Standard could not be enabled completely. Some
    #     controls may not be available.
    #
    #   * `DELETING` - Standard is in the process of being disabled.
    #
    #   * `FAILED` - Standard could not be disabled.
    #   @return [String]
    #
    # @!attribute [rw] standards_status_reason
    #   The reason for the current status.
    #   @return [Types::StandardsStatusReason]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsSubscription AWS API Documentation
    #
    class StandardsSubscription < Struct.new(
      :standards_subscription_arn,
      :standards_arn,
      :standards_input,
      :standards_status,
      :standards_status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The standard that you want to enable.
    #
    # @!attribute [rw] standards_arn
    #   The ARN of the standard that you want to enable. To view the list of
    #   available standards and their ARNs, use the `DescribeStandards`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] standards_input
    #   A key-value pair of input for the standard.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsSubscriptionRequest AWS API Documentation
    #
    class StandardsSubscriptionRequest < Struct.new(
      :standards_arn,
      :standards_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of a custom action that can be used for stateless
    # packet handling.
    #
    # @!attribute [rw] publish_metric_action
    #   Information about metrics to publish to CloudWatch.
    #   @return [Types::StatelessCustomPublishMetricAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StatelessCustomActionDefinition AWS API Documentation
    #
    class StatelessCustomActionDefinition < Struct.new(
      :publish_metric_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about metrics to publish to CloudWatch.
    #
    # @!attribute [rw] dimensions
    #   Defines CloudWatch dimension values to publish.
    #   @return [Array<Types::StatelessCustomPublishMetricActionDimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StatelessCustomPublishMetricAction AWS API Documentation
    #
    class StatelessCustomPublishMetricAction < Struct.new(
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a CloudWatch dimension value to publish.
    #
    # @!attribute [rw] value
    #   The value to use for the custom metric dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StatelessCustomPublishMetricActionDimension AWS API Documentation
    #
    class StatelessCustomPublishMetricActionDimension < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides additional context for the value of `Compliance.Status`.
    #
    # @!attribute [rw] reason_code
    #   A code that represents a reason for the control status. For the list
    #   of status reason codes and their meanings, see [Standards-related
    #   information in the ASFF][1] in the *Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html#securityhub-standards-results-asff
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The corresponding description for the status reason code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StatusReason AWS API Documentation
    #
    class StatusReason < Struct.new(
      :reason_code,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A string filter for querying findings.
    #
    # @!attribute [rw] value
    #   The string filter value. Filter values are case sensitive. For
    #   example, the product name for control-based findings is `Security
    #   Hub`. If you provide `security hub` as the filter text, then there
    #   is no match.
    #   @return [String]
    #
    # @!attribute [rw] comparison
    #   The condition to apply to a string value when querying for findings.
    #   To search for values that contain the filter criteria value, use one
    #   of the following comparison operators:
    #
    #   * To search for values that exactly match the filter value, use
    #     `EQUALS`.
    #
    #     For example, the filter `ResourceType EQUALS AwsEc2SecurityGroup`
    #     only matches findings that have a resource type of
    #     `AwsEc2SecurityGroup`.
    #
    #   * To search for values that start with the filter value, use
    #     `PREFIX`.
    #
    #     For example, the filter `ResourceType PREFIX AwsIam` matches
    #     findings that have a resource type that starts with `AwsIam`.
    #     Findings with a resource type of `AwsIamPolicy`, `AwsIamRole`, or
    #     `AwsIamUser` would all match.
    #
    #   `EQUALS` and `PREFIX` filters on the same field are joined by `OR`.
    #   A finding matches if it matches any one of those filters.
    #
    #   To search for values that do not contain the filter criteria value,
    #   use one of the following comparison operators:
    #
    #   * To search for values that do not exactly match the filter value,
    #     use `NOT_EQUALS`.
    #
    #     For example, the filter `ResourceType NOT_EQUALS AwsIamPolicy`
    #     matches findings that have a resource type other than
    #     `AwsIamPolicy`.
    #
    #   * To search for values that do not start with the filter value, use
    #     `PREFIX_NOT_EQUALS`.
    #
    #     For example, the filter `ResourceType PREFIX_NOT_EQUALS AwsIam`
    #     matches findings that have a resource type that does not start
    #     with `AwsIam`. Findings with a resource type of `AwsIamPolicy`,
    #     `AwsIamRole`, or `AwsIamUser` would all be excluded from the
    #     results.
    #
    #   `NOT_EQUALS` and `PREFIX_NOT_EQUALS` filters on the same field are
    #   joined by `AND`. A finding matches only if it matches all of those
    #   filters.
    #
    #   For filters on the same field, you cannot provide both an `EQUALS`
    #   filter and a `NOT_EQUALS` or `PREFIX_NOT_EQUALS` filter. Combining
    #   filters in this way always returns an error, even if the provided
    #   filter values would return valid results.
    #
    #   You can combine `PREFIX` filters with `NOT_EQUALS` or
    #   `PREFIX_NOT_EQUALS` filters for the same field. Security Hub first
    #   processes the `PREFIX` filters, then the `NOT_EQUALS` or
    #   `PREFIX_NOT_EQUALS` filters.
    #
    #   For example, for the following filter, Security Hub first identifies
    #   findings that have resource types that start with either `AwsIAM` or
    #   `AwsEc2`. It then excludes findings that have a resource type of
    #   `AwsIamPolicy` and findings that have a resource type of
    #   `AwsEc2NetworkInterface`.
    #
    #   * `ResourceType PREFIX AwsIam`
    #
    #   * `ResourceType PREFIX AwsEc2`
    #
    #   * `ResourceType NOT_EQUALS AwsIamPolicy`
    #
    #   * `ResourceType NOT_EQUALS AwsEc2NetworkInterface`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StringFilter AWS API Documentation
    #
    class StringFilter < Struct.new(
      :value,
      :comparison)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to apply the tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. You can add up to 50 tags at a
    #   time. The tag keys can be no longer than 128 characters. The tag
    #   values can be no longer than 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Provides information about the threat detected in a security finding
    # and the file paths that were affected by the threat.
    #
    # @!attribute [rw] name
    #   The name of the threat.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the threat.
    #   @return [String]
    #
    # @!attribute [rw] item_count
    #   This total number of items in which the threat has been detected.
    #   @return [Integer]
    #
    # @!attribute [rw] file_paths
    #   Provides information about the file paths that were affected by the
    #   threat.
    #   @return [Array<Types::FilePaths>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Threat AWS API Documentation
    #
    class Threat < Struct.new(
      :name,
      :severity,
      :item_count,
      :file_paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the threat intelligence related to a finding.
    #
    # @!attribute [rw] type
    #   The type of threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of a threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] last_observed_at
    #   Indicates when the most recent instance of a threat intelligence
    #   indicator was observed.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The URL to the page or site where you can get more information about
    #   the threat intelligence indicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ThreatIntelIndicator AWS API Documentation
    #
    class ThreatIntelIndicator < Struct.new(
      :type,
      :value,
      :category,
      :last_observed_at,
      :source,
      :source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of objects containing `RuleArn`, `ErrorCode`, and
    # `ErrorMessage`. This parameter tells you which automation rules the
    # request didn't process and why.
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) for the unprocessed automation rule.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the unprocessed automation rule.
    #   @return [Integer]
    #
    # @!attribute [rw] error_message
    #   An error message describing why a request didn't process a specific
    #   rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UnprocessedAutomationRule AWS API Documentation
    #
    class UnprocessedAutomationRule < Struct.new(
      :rule_arn,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a security control for which a response
    # couldn't be returned.
    #
    # @!attribute [rw] security_control_id
    #   The control (identified with `SecurityControlId`,
    #   `SecurityControlArn`, or a mix of both parameters) for which a
    #   response couldn't be returned.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code for the unprocessed security control.
    #   @return [String]
    #
    # @!attribute [rw] error_reason
    #   The reason why the security control was unprocessed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UnprocessedSecurityControl AWS API Documentation
    #
    class UnprocessedSecurityControl < Struct.new(
      :security_control_id,
      :error_code,
      :error_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about which control's enablement status couldn't be
    # retrieved in a specified standard when calling
    # [BatchUpdateStandardsControlAssociations][1]. This parameter also
    # provides details about why the request was unprocessed.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateStandardsControlAssociations.html
    #
    # @!attribute [rw] standards_control_association_id
    #   An array with one or more objects that includes a security control
    #   (identified with `SecurityControlId`, `SecurityControlArn`, or a mix
    #   of both parameters) and the Amazon Resource Name (ARN) of a
    #   standard. This parameter shows the specific controls for which the
    #   enablement status couldn't be retrieved in specified standards when
    #   calling [BatchUpdateStandardsControlAssociations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateStandardsControlAssociations.html
    #   @return [Types::StandardsControlAssociationId]
    #
    # @!attribute [rw] error_code
    #   The error code for the unprocessed standard and control association.
    #   @return [String]
    #
    # @!attribute [rw] error_reason
    #   The reason why the standard and control association was unprocessed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UnprocessedStandardsControlAssociation AWS API Documentation
    #
    class UnprocessedStandardsControlAssociation < Struct.new(
      :standards_control_association_id,
      :error_code,
      :error_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about which control's enablement status could not be
    # updated in a specified standard when calling the
    # [BatchUpdateStandardsControlAssociations][1] API. This parameter also
    # provides details about why the request was unprocessed.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateStandardsControlAssociations.html
    #
    # @!attribute [rw] standards_control_association_update
    #   An array of control and standard associations for which an update
    #   failed when calling [BatchUpdateStandardsControlAssociations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateStandardsControlAssociations.html
    #   @return [Types::StandardsControlAssociationUpdate]
    #
    # @!attribute [rw] error_code
    #   The error code for the unprocessed update of the control's
    #   enablement status in the specified standard.
    #   @return [String]
    #
    # @!attribute [rw] error_reason
    #   The reason why a control's enablement status in the specified
    #   standard couldn't be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UnprocessedStandardsControlAssociationUpdate AWS API Documentation
    #
    class UnprocessedStandardsControlAssociationUpdate < Struct.new(
      :standards_control_association_update,
      :error_code,
      :error_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove the tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys associated with the tags to remove from the resource.
    #   You can remove up to 50 tags at a time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTargetRequest AWS API Documentation
    #
    class UpdateActionTargetRequest < Struct.new(
      :action_target_arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTargetResponse AWS API Documentation
    #
    class UpdateActionTargetResponse < Aws::EmptyStructure; end

    # Specifies the parameters to update in an existing automation rule.
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) for the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_status
    #   Whether the rule is active after it is created. If this parameter is
    #   equal to `ENABLED`, Security Hub starts applying the rule to
    #   findings and finding updates after the rule is created. To change
    #   the value of this parameter after creating a rule, use [
    #   `BatchUpdateAutomationRules` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateAutomationRules.html
    #   @return [String]
    #
    # @!attribute [rw] rule_order
    #   An integer ranging from 1 to 1000 that represents the order in which
    #   the rule action is applied to findings. Security Hub applies rules
    #   with lower values for this parameter first.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] is_terminal
    #   Specifies whether a rule is the last to be applied with respect to a
    #   finding that matches the rule criteria. This is useful when a
    #   finding matches the criteria for multiple rules, and each rule has
    #   different actions. If the value of this field is set to `true` for a
    #   rule, Security Hub applies the rule action to a finding that matches
    #   the rule criteria and doesn't evaluate other rules for the
    #   finding.  The default value of this field is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] criteria
    #   A set of ASFF finding field attributes and corresponding expected
    #   values that Security Hub uses to filter findings. If a rule is
    #   enabled and a finding matches the conditions specified in this
    #   parameter, Security Hub applies the rule action to the finding.
    #   @return [Types::AutomationRulesFindingFilters]
    #
    # @!attribute [rw] actions
    #   One or more actions to update finding fields if a finding matches
    #   the conditions specified in `Criteria`.
    #   @return [Array<Types::AutomationRulesAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateAutomationRulesRequestItem AWS API Documentation
    #
    class UpdateAutomationRulesRequestItem < Struct.new(
      :rule_arn,
      :rule_status,
      :rule_order,
      :description,
      :rule_name,
      :is_terminal,
      :criteria,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_aggregator_arn
    #   The ARN of the finding aggregator. To obtain the ARN, use
    #   `ListFindingAggregators`.
    #   @return [String]
    #
    # @!attribute [rw] region_linking_mode
    #   Indicates whether to aggregate findings from all of the available
    #   Regions in the current partition. Also determines whether to
    #   automatically aggregate findings from new Regions as Security Hub
    #   supports them and you opt into them.
    #
    #   The selected option also determines how to use the Regions provided
    #   in the Regions list.
    #
    #   The options are as follows:
    #
    #   * `ALL_REGIONS` - Indicates to aggregate findings from all of the
    #     Regions where Security Hub is enabled. When you choose this
    #     option, Security Hub also automatically aggregates findings from
    #     new Regions as Security Hub supports them and you opt into them.
    #
    #   * `ALL_REGIONS_EXCEPT_SPECIFIED` - Indicates to aggregate findings
    #     from all of the Regions where Security Hub is enabled, except for
    #     the Regions listed in the `Regions` parameter. When you choose
    #     this option, Security Hub also automatically aggregates findings
    #     from new Regions as Security Hub supports them and you opt into
    #     them.
    #
    #   * `SPECIFIED_REGIONS` - Indicates to aggregate findings only from
    #     the Regions listed in the `Regions` parameter. Security Hub does
    #     not automatically aggregate findings from new Regions.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   If `RegionLinkingMode` is `ALL_REGIONS_EXCEPT_SPECIFIED`, then this
    #   is a space-separated list of Regions that do not aggregate findings
    #   to the aggregation Region.
    #
    #   If `RegionLinkingMode` is `SPECIFIED_REGIONS`, then this is a
    #   space-separated list of Regions that do aggregate findings to the
    #   aggregation Region.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingAggregatorRequest AWS API Documentation
    #
    class UpdateFindingAggregatorRequest < Struct.new(
      :finding_aggregator_arn,
      :region_linking_mode,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_aggregator_arn
    #   The ARN of the finding aggregator.
    #   @return [String]
    #
    # @!attribute [rw] finding_aggregation_region
    #   The aggregation Region.
    #   @return [String]
    #
    # @!attribute [rw] region_linking_mode
    #   Indicates whether to link all Regions, all Regions except for a list
    #   of excluded Regions, or a list of included Regions.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The list of excluded Regions or included Regions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingAggregatorResponse AWS API Documentation
    #
    class UpdateFindingAggregatorResponse < Struct.new(
      :finding_aggregator_arn,
      :finding_aggregation_region,
      :region_linking_mode,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   A collection of attributes that specify which findings you want to
    #   update.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] note
    #   The updated note for the finding.
    #   @return [Types::NoteUpdate]
    #
    # @!attribute [rw] record_state
    #   The updated record state for the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingsRequest AWS API Documentation
    #
    class UpdateFindingsRequest < Struct.new(
      :filters,
      :note,
      :record_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingsResponse AWS API Documentation
    #
    class UpdateFindingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name for the insight.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The updated filters that define this insight.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The updated `GroupBy` attribute that defines this insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsightRequest AWS API Documentation
    #
    class UpdateInsightRequest < Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsightResponse AWS API Documentation
    #
    class UpdateInsightResponse < Aws::EmptyStructure; end

    # @!attribute [rw] auto_enable
    #   Whether to automatically enable Security Hub for new accounts in the
    #   organization.
    #
    #   By default, this is `false`, and new accounts are not added
    #   automatically.
    #
    #   To automatically enable Security Hub for new accounts, set this to
    #   `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_enable_standards
    #   Whether to automatically enable Security Hub [default standards][1]
    #   for new member accounts in the organization.
    #
    #   By default, this parameter is equal to `DEFAULT`, and new member
    #   accounts are automatically enabled with default Security Hub
    #   standards.
    #
    #   To opt out of enabling default standards for new member accounts,
    #   set this parameter equal to `NONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateOrganizationConfigurationRequest AWS API Documentation
    #
    class UpdateOrganizationConfigurationRequest < Struct.new(
      :auto_enable,
      :auto_enable_standards)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateOrganizationConfigurationResponse AWS API Documentation
    #
    class UpdateOrganizationConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] auto_enable_controls
    #   Whether to automatically enable new controls when they are added to
    #   standards that are enabled.
    #
    #   By default, this is set to `true`, and new controls are enabled
    #   automatically. To not automatically enable new controls, set this to
    #   `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] control_finding_generator
    #   Updates whether the calling account has consolidated control
    #   findings turned on. If the value for this field is set to
    #   `SECURITY_CONTROL`, Security Hub generates a single finding for a
    #   control check even when the check applies to multiple enabled
    #   standards.
    #
    #   If the value for this field is set to `STANDARD_CONTROL`, Security
    #   Hub generates separate findings for a control check when the check
    #   applies to multiple enabled standards.
    #
    #   For accounts that are part of an organization, this value can only
    #   be updated in the administrator account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateSecurityHubConfigurationRequest AWS API Documentation
    #
    class UpdateSecurityHubConfigurationRequest < Struct.new(
      :auto_enable_controls,
      :control_finding_generator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateSecurityHubConfigurationResponse AWS API Documentation
    #
    class UpdateSecurityHubConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] standards_control_arn
    #   The ARN of the security standard control to enable or disable.
    #   @return [String]
    #
    # @!attribute [rw] control_status
    #   The updated status of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] disabled_reason
    #   A description of the reason why you are disabling a security
    #   standard control. If you are disabling a control, then this is
    #   required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateStandardsControlRequest AWS API Documentation
    #
    class UpdateStandardsControlRequest < Struct.new(
      :standards_control_arn,
      :control_status,
      :disabled_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateStandardsControlResponse AWS API Documentation
    #
    class UpdateStandardsControlResponse < Aws::EmptyStructure; end

    # Describes the mounting of a volume in a container.
    #
    # @!attribute [rw] name
    #   The name of the volume.
    #   @return [String]
    #
    # @!attribute [rw] mount_path
    #   The path in the container at which the volume should be mounted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/VolumeMount AWS API Documentation
    #
    class VolumeMount < Struct.new(
      :name,
      :mount_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the IPv4 CIDR blocks for the VPC.
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 CIDR block for the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/VpcInfoCidrBlockSetDetails AWS API Documentation
    #
    class VpcInfoCidrBlockSetDetails < Struct.new(
      :cidr_block)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the IPv6 CIDR blocks for the VPC.
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 CIDR block for the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/VpcInfoIpv6CidrBlockSetDetails AWS API Documentation
    #
    class VpcInfoIpv6CidrBlockSetDetails < Struct.new(
      :ipv_6_cidr_block)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the VPC peering connection options for the
    # accepter or requester VPC.
    #
    # @!attribute [rw] allow_dns_resolution_from_remote_vpc
    #   Indicates whether a local VPC can resolve public DNS hostnames to
    #   private IP addresses when queried from instances in a peer VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_egress_from_local_classic_link_to_remote_vpc
    #   Indicates whether a local ClassicLink connection can communicate
    #   with the peer VPC over the VPC peering connection.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_egress_from_local_vpc_to_remote_classic_link
    #   Indicates whether a local VPC can communicate with a ClassicLink
    #   connection in the peer VPC over the VPC peering connection.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/VpcInfoPeeringOptionsDetails AWS API Documentation
    #
    class VpcInfoPeeringOptionsDetails < Struct.new(
      :allow_dns_resolution_from_remote_vpc,
      :allow_egress_from_local_classic_link_to_remote_vpc,
      :allow_egress_from_local_vpc_to_remote_classic_link)
      SENSITIVE = []
      include Aws::Structure
    end

    # A vulnerability associated with a finding.
    #
    # @!attribute [rw] id
    #   The identifier of the vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] vulnerable_packages
    #   List of software packages that have the vulnerability.
    #   @return [Array<Types::SoftwarePackage>]
    #
    # @!attribute [rw] cvss
    #   CVSS scores from the advisory related to the vulnerability.
    #   @return [Array<Types::Cvss>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   List of vulnerabilities that are related to this vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vendor
    #   Information about the vendor that generates the vulnerability
    #   report.
    #   @return [Types::VulnerabilityVendor]
    #
    # @!attribute [rw] reference_urls
    #   A list of URLs that provide additional information about the
    #   vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fix_available
    #   Specifies if all vulnerable packages in a finding have a value for
    #   `FixedInVersion` and `Remediation`. This field is evaluated for each
    #   vulnerability `Id` based on the number of vulnerable packages that
    #   have a value for both `FixedInVersion` and `Remediation`. Valid
    #   values are as follows:
    #
    #   * `YES` if all vulnerable packages have a value for both
    #     `FixedInVersion` and `Remediation`
    #
    #   * `NO` if no vulnerable packages have a value for `FixedInVersion`
    #     and `Remediation`
    #
    #   * `PARTIAL` otherwise
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Vulnerability AWS API Documentation
    #
    class Vulnerability < Struct.new(
      :id,
      :vulnerable_packages,
      :cvss,
      :related_vulnerabilities,
      :vendor,
      :reference_urls,
      :fix_available)
      SENSITIVE = []
      include Aws::Structure
    end

    # A vendor that generates a vulnerability report.
    #
    # @!attribute [rw] name
    #   The name of the vendor.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the vulnerability advisory.
    #   @return [String]
    #
    # @!attribute [rw] vendor_severity
    #   The severity that the vendor assigned to the vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] vendor_created_at
    #   Indicates when the vulnerability advisory was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] vendor_updated_at
    #   Indicates when the vulnerability advisory was last updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces, and
    #   date and time should be separated by `T`. For example,
    #   `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/VulnerabilityVendor AWS API Documentation
    #
    class VulnerabilityVendor < Struct.new(
      :name,
      :url,
      :vendor_severity,
      :vendor_created_at,
      :vendor_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the action that CloudFront or WAF takes when a web
    # request matches the conditions in the rule.
    #
    # @!attribute [rw] type
    #   Specifies how you want WAF to respond to requests that match the
    #   settings in a rule.
    #
    #   Valid settings include the following:
    #
    #   * `ALLOW` - WAF allows requests
    #
    #   * `BLOCK` - WAF blocks requests
    #
    #   * `COUNT` - WAF increments a counter of the requests that match all
    #     of the conditions in the rule. WAF then continues to inspect the
    #     web request based on the remaining rules in the web ACL. You
    #     can't specify `COUNT` for the default action for a web ACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WafAction AWS API Documentation
    #
    class WafAction < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a rule to exclude from a rule group.
    #
    # @!attribute [rw] rule_id
    #   The unique identifier for the rule to exclude from the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WafExcludedRule AWS API Documentation
    #
    class WafExcludedRule < Struct.new(
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an override action for a rule.
    #
    # @!attribute [rw] type
    #   `COUNT` overrides the action specified by the individual rule within
    #   a `RuleGroup` .
    #
    #   If set to `NONE`, the rule's action takes place.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WafOverrideAction AWS API Documentation
    #
    class WafOverrideAction < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the status of the investigation into a
    # finding.
    #
    # @!attribute [rw] status
    #   The status of the investigation into the finding. The workflow
    #   status is specific to an individual finding. It does not affect the
    #   generation of new findings. For example, setting the workflow status
    #   to `SUPPRESSED` or `RESOLVED` does not prevent a new finding for the
    #   same issue.
    #
    #   The allowed values are the following.
    #
    #   * `NEW` - The initial state of a finding, before it is reviewed.
    #
    #     Security Hub also resets the workflow status from `NOTIFIED` or
    #     `RESOLVED` to `NEW` in the following cases:
    #
    #     * `RecordState` changes from `ARCHIVED` to `ACTIVE`.
    #
    #     * `ComplianceStatus` changes from `PASSED` to either `WARNING`,
    #       `FAILED`, or `NOT_AVAILABLE`.
    #
    #   * `NOTIFIED` - Indicates that you notified the resource owner about
    #     the security issue. Used when the initial reviewer is not the
    #     resource owner, and needs intervention from the resource owner.
    #
    #   * `SUPPRESSED` - Indicates that you reviewed the finding and do not
    #     believe that any action is needed. The finding is no longer
    #     updated.
    #
    #   * `RESOLVED` - The finding was reviewed and remediated and is now
    #     considered resolved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Workflow AWS API Documentation
    #
    class Workflow < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to update information about the investigation into the finding.
    #
    # @!attribute [rw] status
    #   The status of the investigation into the finding. The workflow
    #   status is specific to an individual finding. It does not affect the
    #   generation of new findings. For example, setting the workflow status
    #   to `SUPPRESSED` or `RESOLVED` does not prevent a new finding for the
    #   same issue.
    #
    #   The allowed values are the following.
    #
    #   * `NEW` - The initial state of a finding, before it is reviewed.
    #
    #     Security Hub also resets `WorkFlowStatus` from `NOTIFIED` or
    #     `RESOLVED` to `NEW` in the following cases:
    #
    #     * The record state changes from `ARCHIVED` to `ACTIVE`.
    #
    #     * The compliance status changes from `PASSED` to either `WARNING`,
    #       `FAILED`, or `NOT_AVAILABLE`.
    #
    #   * `NOTIFIED` - Indicates that you notified the resource owner about
    #     the security issue. Used when the initial reviewer is not the
    #     resource owner, and needs intervention from the resource owner.
    #
    #   * `RESOLVED` - The finding was reviewed and remediated and is now
    #     considered resolved.
    #
    #   * `SUPPRESSED` - Indicates that you reviewed the finding and do not
    #     believe that any action is needed. The finding is no longer
    #     updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WorkflowUpdate AWS API Documentation
    #
    class WorkflowUpdate < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
