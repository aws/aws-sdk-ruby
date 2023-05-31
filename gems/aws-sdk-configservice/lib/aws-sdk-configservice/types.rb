# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConfigService
  module Types

    # A collection of accounts and regions.
    #
    # @!attribute [rw] account_ids
    #   The 12-digit account ID of the account being aggregated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] all_aws_regions
    #   If true, aggregate existing Config regions and future regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_regions
    #   The source regions being aggregated.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AccountAggregationSource AWS API Documentation
    #
    class AccountAggregationSource < Struct.new(
      :account_ids,
      :all_aws_regions,
      :aws_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether an Config rule is compliant based on account ID,
    # region, compliance, and rule name.
    #
    # A rule is compliant if all of the resources that the rule evaluated
    # comply with it. It is noncompliant if any of these resources do not
    # comply.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   Indicates whether an Amazon Web Services resource or Config rule is
    #   compliant and provides the number of contributors that affect the
    #   compliance.
    #   @return [Types::Compliance]
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of the source account.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The source region from where the data is aggregated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateComplianceByConfigRule AWS API Documentation
    #
    class AggregateComplianceByConfigRule < Struct.new(
      :config_rule_name,
      :compliance,
      :account_id,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides aggregate compliance of the conformance pack. Indicates
    # whether a conformance pack is compliant based on the name of the
    # conformance pack, account ID, and region.
    #
    # A conformance pack is compliant if all of the rules in a conformance
    # packs are compliant. It is noncompliant if any of the rules are not
    # compliant. The compliance status of a conformance pack is
    # INSUFFICIENT\_DATA only if all rules within a conformance pack cannot
    # be evaluated due to insufficient data. If some of the rules in a
    # conformance pack are compliant but the compliance status of other
    # rules in that same conformance pack is INSUFFICIENT\_DATA, the
    # conformance pack shows compliant.
    #
    # @!attribute [rw] conformance_pack_name
    #   The name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   The compliance status of the conformance pack.
    #   @return [Types::AggregateConformancePackCompliance]
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account ID of the source account.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The source Amazon Web Services Region from where the data is
    #   aggregated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateComplianceByConformancePack AWS API Documentation
    #
    class AggregateComplianceByConformancePack < Struct.new(
      :conformance_pack_name,
      :compliance,
      :account_id,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the number of compliant and noncompliant rules for one or more
    # accounts and regions in an aggregator.
    #
    # @!attribute [rw] group_name
    #   The 12-digit account ID or region based on the GroupByKey value.
    #   @return [String]
    #
    # @!attribute [rw] compliance_summary
    #   The number of compliant and noncompliant Config rules.
    #   @return [Types::ComplianceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateComplianceCount AWS API Documentation
    #
    class AggregateComplianceCount < Struct.new(
      :group_name,
      :compliance_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the number of compliant and noncompliant rules within a
    # conformance pack. Also provides the compliance status of the
    # conformance pack and the total rule count which includes compliant
    # rules, noncompliant rules, and rules that cannot be evaluated due to
    # insufficient data.
    #
    # A conformance pack is compliant if all of the rules in a conformance
    # packs are compliant. It is noncompliant if any of the rules are not
    # compliant. The compliance status of a conformance pack is
    # INSUFFICIENT\_DATA only if all rules within a conformance pack cannot
    # be evaluated due to insufficient data. If some of the rules in a
    # conformance pack are compliant but the compliance status of other
    # rules in that same conformance pack is INSUFFICIENT\_DATA, the
    # conformance pack shows compliant.
    #
    # @!attribute [rw] compliance_type
    #   The compliance status of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] compliant_rule_count
    #   The number of compliant Config Rules.
    #   @return [Integer]
    #
    # @!attribute [rw] non_compliant_rule_count
    #   The number of noncompliant Config Rules.
    #   @return [Integer]
    #
    # @!attribute [rw] total_rule_count
    #   Total number of compliant rules, noncompliant rules, and the rules
    #   that do not have any applicable resources to evaluate upon resulting
    #   in insufficient data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateConformancePackCompliance AWS API Documentation
    #
    class AggregateConformancePackCompliance < Struct.new(
      :compliance_type,
      :compliant_rule_count,
      :non_compliant_rule_count,
      :total_rule_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of conformance packs that are compliant and noncompliant.
    #
    # @!attribute [rw] compliant_conformance_pack_count
    #   Number of compliant conformance packs.
    #   @return [Integer]
    #
    # @!attribute [rw] non_compliant_conformance_pack_count
    #   Number of noncompliant conformance packs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateConformancePackComplianceCount AWS API Documentation
    #
    class AggregateConformancePackComplianceCount < Struct.new(
      :compliant_conformance_pack_count,
      :non_compliant_conformance_pack_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the conformance packs based on an account ID, region,
    # compliance type, and the name of the conformance pack.
    #
    # @!attribute [rw] conformance_pack_name
    #   The name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The compliance status of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account ID of the source account.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The source Amazon Web Services Region from where the data is
    #   aggregated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateConformancePackComplianceFilters AWS API Documentation
    #
    class AggregateConformancePackComplianceFilters < Struct.new(
      :conformance_pack_name,
      :compliance_type,
      :account_id,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of compliance based on either account ID or region.
    #
    # @!attribute [rw] compliance_summary
    #   Returns an `AggregateConformancePackComplianceCount` object.
    #   @return [Types::AggregateConformancePackComplianceCount]
    #
    # @!attribute [rw] group_name
    #   Groups the result based on Amazon Web Services account ID or Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateConformancePackComplianceSummary AWS API Documentation
    #
    class AggregateConformancePackComplianceSummary < Struct.new(
      :compliance_summary,
      :group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the results based on account ID and region.
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account ID of the source account.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The source Amazon Web Services Region from where the data is
    #   aggregated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateConformancePackComplianceSummaryFilters AWS API Documentation
    #
    class AggregateConformancePackComplianceSummaryFilters < Struct.new(
      :account_id,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Config evaluation for an account ID and region in an
    # aggregator. Provides the Amazon Web Services resource that was
    # evaluated, the compliance of the resource, related time stamps, and
    # supplementary information.
    #
    # @!attribute [rw] evaluation_result_identifier
    #   Uniquely identifies the evaluation result.
    #   @return [Types::EvaluationResultIdentifier]
    #
    # @!attribute [rw] compliance_type
    #   The resource compliance status.
    #
    #   For the `AggregationEvaluationResult` data type, Config supports
    #   only the `COMPLIANT` and `NON_COMPLIANT`. Config does not support
    #   the `NOT_APPLICABLE` and `INSUFFICIENT_DATA` value.
    #   @return [String]
    #
    # @!attribute [rw] result_recorded_time
    #   The time when Config recorded the aggregate evaluation result.
    #   @return [Time]
    #
    # @!attribute [rw] config_rule_invoked_time
    #   The time when the Config rule evaluated the Amazon Web Services
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] annotation
    #   Supplementary information about how the agrregate evaluation
    #   determined the compliance.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of the source account.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The source region from where the data is aggregated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateEvaluationResult AWS API Documentation
    #
    class AggregateEvaluationResult < Struct.new(
      :evaluation_result_identifier,
      :compliance_type,
      :result_recorded_time,
      :config_rule_invoked_time,
      :annotation,
      :account_id,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that identify a resource that is collected by Config
    # aggregator, including the resource type, ID, (if available) the custom
    # resource name, the source account, and source region.
    #
    # @!attribute [rw] source_account_id
    #   The 12-digit account ID of the source account.
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The source region where data is aggregated.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the Amazon Web Services resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateResourceIdentifier AWS API Documentation
    #
    class AggregateResourceIdentifier < Struct.new(
      :source_account_id,
      :source_region,
      :resource_id,
      :resource_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current sync status between the source and the aggregator account.
    #
    # @!attribute [rw] source_id
    #   The source account ID or an organization.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source account or an organization.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The region authorized to collect aggregated data.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status
    #   Filters the last updated status type.
    #
    #   * Valid value FAILED indicates errors while moving data.
    #
    #   * Valid value SUCCEEDED indicates the data was successfully moved.
    #
    #   * Valid value OUTDATED indicates the data is not the most recent.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The time of the last update.
    #   @return [Time]
    #
    # @!attribute [rw] last_error_code
    #   The error code that Config returned when the source account
    #   aggregation last failed.
    #   @return [String]
    #
    # @!attribute [rw] last_error_message
    #   The message indicating that the source account aggregation failed
    #   due to an error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregatedSourceStatus AWS API Documentation
    #
    class AggregatedSourceStatus < Struct.new(
      :source_id,
      :source_type,
      :aws_region,
      :last_update_status,
      :last_update_time,
      :last_error_code,
      :last_error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the authorizations granted to aggregator
    # accounts and regions.
    #
    # @!attribute [rw] aggregation_authorization_arn
    #   The Amazon Resource Name (ARN) of the aggregation object.
    #   @return [String]
    #
    # @!attribute [rw] authorized_account_id
    #   The 12-digit account ID of the account authorized to aggregate data.
    #   @return [String]
    #
    # @!attribute [rw] authorized_aws_region
    #   The region authorized to collect aggregated data.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time stamp when the aggregation authorization was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregationAuthorization AWS API Documentation
    #
    class AggregationAuthorization < Struct.new(
      :aggregation_authorization_arn,
      :authorized_account_id,
      :authorized_aws_region,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detailed configuration of a specified resource.
    #
    # @!attribute [rw] version
    #   The version number of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account ID associated with the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] configuration_item_capture_time
    #   The time when the configuration recording was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] configuration_item_status
    #   The configuration item status. The valid values are:
    #
    #   * OK – The resource configuration has been updated
    #
    #   * ResourceDiscovered – The resource was newly discovered
    #
    #   * ResourceNotRecorded – The resource was discovered but its
    #     configuration was not recorded since the recorder excludes the
    #     recording of resources of this type
    #
    #   * ResourceDeleted – The resource was deleted
    #
    #   * ResourceDeletedNotRecorded – The resource was deleted but its
    #     configuration was not recorded since the recorder excludes the
    #     recording of resources of this type
    #
    #   <note markdown="1"> The CIs do not incur any cost.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] configuration_state_id
    #   An identifier that indicates the ordering of the configuration items
    #   of a resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource (for example., sg-xxxxxx).
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The custom name of the resource, if available.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The region where the resource resides.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_creation_time
    #   The time stamp when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] configuration
    #   The description of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] supplementary_configuration
    #   Configuration attributes that Config returns for certain resource
    #   types to supplement the information returned for the configuration
    #   parameter.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/BaseConfigurationItem AWS API Documentation
    #
    class BaseConfigurationItem < Struct.new(
      :version,
      :account_id,
      :configuration_item_capture_time,
      :configuration_item_status,
      :configuration_state_id,
      :arn,
      :resource_type,
      :resource_id,
      :resource_name,
      :aws_region,
      :availability_zone,
      :resource_creation_time,
      :configuration,
      :supplementary_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifiers
    #   A list of aggregate ResourceIdentifiers objects.
    #   @return [Array<Types::AggregateResourceIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/BatchGetAggregateResourceConfigRequest AWS API Documentation
    #
    class BatchGetAggregateResourceConfigRequest < Struct.new(
      :configuration_aggregator_name,
      :resource_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] base_configuration_items
    #   A list that contains the current configuration of one or more
    #   resources.
    #   @return [Array<Types::BaseConfigurationItem>]
    #
    # @!attribute [rw] unprocessed_resource_identifiers
    #   A list of resource identifiers that were not processed with current
    #   scope. The list is empty if all the resources are processed.
    #   @return [Array<Types::AggregateResourceIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/BatchGetAggregateResourceConfigResponse AWS API Documentation
    #
    class BatchGetAggregateResourceConfigResponse < Struct.new(
      :base_configuration_items,
      :unprocessed_resource_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_keys
    #   A list of resource keys to be processed with the current request.
    #   Each element in the list consists of the resource type and resource
    #   ID.
    #   @return [Array<Types::ResourceKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/BatchGetResourceConfigRequest AWS API Documentation
    #
    class BatchGetResourceConfigRequest < Struct.new(
      :resource_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] base_configuration_items
    #   A list that contains the current configuration of one or more
    #   resources.
    #   @return [Array<Types::BaseConfigurationItem>]
    #
    # @!attribute [rw] unprocessed_resource_keys
    #   A list of resource keys that were not processed with the current
    #   response. The unprocessesResourceKeys value is in the same form as
    #   ResourceKeys, so the value can be directly provided to a subsequent
    #   BatchGetResourceConfig operation. If there are no unprocessed
    #   resource keys, the response contains an empty
    #   unprocessedResourceKeys list.
    #   @return [Array<Types::ResourceKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/BatchGetResourceConfigResponse AWS API Documentation
    #
    class BatchGetResourceConfigResponse < Struct.new(
      :base_configuration_items,
      :unprocessed_resource_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether an Amazon Web Services resource or Config rule is
    # compliant and provides the number of contributors that affect the
    # compliance.
    #
    # @!attribute [rw] compliance_type
    #   Indicates whether an Amazon Web Services resource or Config rule is
    #   compliant.
    #
    #   A resource is compliant if it complies with all of the Config rules
    #   that evaluate it. A resource is noncompliant if it does not comply
    #   with one or more of these rules.
    #
    #   A rule is compliant if all of the resources that the rule evaluates
    #   comply with it. A rule is noncompliant if any of these resources do
    #   not comply.
    #
    #   Config returns the `INSUFFICIENT_DATA` value when no evaluation
    #   results are available for the Amazon Web Services resource or Config
    #   rule.
    #
    #   For the `Compliance` data type, Config supports only `COMPLIANT`,
    #   `NON_COMPLIANT`, and `INSUFFICIENT_DATA` values. Config does not
    #   support the `NOT_APPLICABLE` value for the `Compliance` data type.
    #   @return [String]
    #
    # @!attribute [rw] compliance_contributor_count
    #   The number of Amazon Web Services resources or Config rules that
    #   cause a result of `NON_COMPLIANT`, up to a maximum number.
    #   @return [Types::ComplianceContributorCount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/Compliance AWS API Documentation
    #
    class Compliance < Struct.new(
      :compliance_type,
      :compliance_contributor_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether an Config rule is compliant. A rule is compliant if
    # all of the resources that the rule evaluated comply with it. A rule is
    # noncompliant if any of these resources do not comply.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   Indicates whether the Config rule is compliant.
    #   @return [Types::Compliance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ComplianceByConfigRule AWS API Documentation
    #
    class ComplianceByConfigRule < Struct.new(
      :config_rule_name,
      :compliance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether an Amazon Web Services resource that is evaluated
    # according to one or more Config rules is compliant. A resource is
    # compliant if it complies with all of the rules that evaluate it. A
    # resource is noncompliant if it does not comply with one or more of
    # these rules.
    #
    # @!attribute [rw] resource_type
    #   The type of the Amazon Web Services resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the Amazon Web Services resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   Indicates whether the Amazon Web Services resource complies with all
    #   of the Config rules that evaluated it.
    #   @return [Types::Compliance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ComplianceByResource AWS API Documentation
    #
    class ComplianceByResource < Struct.new(
      :resource_type,
      :resource_id,
      :compliance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of Amazon Web Services resources or Config rules
    # responsible for the current compliance of the item, up to a maximum
    # number.
    #
    # @!attribute [rw] capped_count
    #   The number of Amazon Web Services resources or Config rules
    #   responsible for the current compliance of the item.
    #   @return [Integer]
    #
    # @!attribute [rw] cap_exceeded
    #   Indicates whether the maximum count is reached.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ComplianceContributorCount AWS API Documentation
    #
    class ComplianceContributorCount < Struct.new(
      :capped_count,
      :cap_exceeded)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of Config rules or Amazon Web Services resources that are
    # compliant and noncompliant.
    #
    # @!attribute [rw] compliant_resource_count
    #   The number of Config rules or Amazon Web Services resources that are
    #   compliant, up to a maximum of 25 for rules and 100 for resources.
    #   @return [Types::ComplianceContributorCount]
    #
    # @!attribute [rw] non_compliant_resource_count
    #   The number of Config rules or Amazon Web Services resources that are
    #   noncompliant, up to a maximum of 25 for rules and 100 for resources.
    #   @return [Types::ComplianceContributorCount]
    #
    # @!attribute [rw] compliance_summary_timestamp
    #   The time that Config created the compliance summary.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ComplianceSummary AWS API Documentation
    #
    class ComplianceSummary < Struct.new(
      :compliant_resource_count,
      :non_compliant_resource_count,
      :compliance_summary_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of Amazon Web Services resources of a specific type that
    # are compliant or noncompliant, up to a maximum of 100 for each.
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] compliance_summary
    #   The number of Amazon Web Services resources that are compliant or
    #   noncompliant, up to a maximum of 100 for each.
    #   @return [Types::ComplianceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ComplianceSummaryByResourceType AWS API Documentation
    #
    class ComplianceSummaryByResourceType < Struct.new(
      :resource_type,
      :compliance_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides status of the delivery of the snapshot or the configuration
    # history to the specified Amazon S3 bucket. Also provides the status of
    # notifications about the Amazon S3 delivery to the specified Amazon SNS
    # topic.
    #
    # @!attribute [rw] last_status
    #   Status of the last attempted delivery.
    #   @return [String]
    #
    # @!attribute [rw] last_error_code
    #   The error code from the last attempted delivery.
    #   @return [String]
    #
    # @!attribute [rw] last_error_message
    #   The error message from the last attempted delivery.
    #   @return [String]
    #
    # @!attribute [rw] last_attempt_time
    #   The time of the last attempted delivery.
    #   @return [Time]
    #
    # @!attribute [rw] last_successful_time
    #   The time of the last successful delivery.
    #   @return [Time]
    #
    # @!attribute [rw] next_delivery_time
    #   The time that the next delivery occurs.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigExportDeliveryInfo AWS API Documentation
    #
    class ConfigExportDeliveryInfo < Struct.new(
      :last_status,
      :last_error_code,
      :last_error_message,
      :last_attempt_time,
      :last_successful_time,
      :next_delivery_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Config rules evaluate the configuration settings of your Amazon Web
    # Services resources. A rule can run when Config detects a configuration
    # change to an Amazon Web Services resource or at a periodic frequency
    # that you choose (for example, every 24 hours). There are two types of
    # rules: *Config Managed Rules* and *Config Custom Rules*.
    #
    # Config Managed Rules are predefined, customizable rules created by
    # Config. For a list of managed rules, see [List of Config Managed
    # Rules][1].
    #
    # Config Custom Rules are rules that you create from scratch. There are
    # two ways to create Config custom rules: with Lambda functions ([
    # Lambda Developer Guide][2]) and with Guard ([Guard GitHub
    # Repository][3]), a policy-as-code language. Config custom rules
    # created with Lambda are called *Config Custom Lambda Rules* and Config
    # custom rules created with Guard are called *Config Custom Policy
    # Rules*.
    #
    # For more information about developing and using Config rules, see
    # [Evaluating Resource with Config Rules][4] in the *Config Developer
    # Guide*.
    #
    # <note markdown="1"> You can use the Amazon Web Services CLI and Amazon Web Services SDKs
    # if you want to create a rule that triggers evaluations for your
    # resources when Config delivers the configuration snapshot. For more
    # information, see ConfigSnapshotDeliveryProperties.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html
    # [2]: https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function
    # [3]: https://github.com/aws-cloudformation/cloudformation-guard
    # [4]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
    #
    # @!attribute [rw] config_rule_name
    #   The name that you assign to the Config rule. The name is required if
    #   you are adding a new rule.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_arn
    #   The Amazon Resource Name (ARN) of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_id
    #   The ID of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description that you provide for the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Defines which resources can trigger an evaluation for the rule. The
    #   scope can include one or more resource types, a combination of one
    #   resource type and one resource ID, or a combination of a tag key and
    #   value. Specify a scope to constrain the resources that can trigger
    #   an evaluation for the rule. If you do not specify a scope,
    #   evaluations are triggered when any resource in the recording group
    #   changes.
    #
    #   <note markdown="1"> The scope can be empty.
    #
    #    </note>
    #   @return [Types::Scope]
    #
    # @!attribute [rw] source
    #   Provides the rule owner (`Amazon Web Services` for managed rules,
    #   `CUSTOM_POLICY` for Custom Policy rules, and `CUSTOM_LAMBDA` for
    #   Custom Lambda rules), the rule identifier, and the notifications
    #   that cause the function to evaluate your Amazon Web Services
    #   resources.
    #   @return [Types::Source]
    #
    # @!attribute [rw] input_parameters
    #   A string, in JSON format, that is passed to the Config rule Lambda
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The maximum frequency with which Config runs evaluations for a rule.
    #   You can specify a value for `MaximumExecutionFrequency` when:
    #
    #   * This is for an Config managed rule that is triggered at a periodic
    #     frequency.
    #
    #   * Your custom rule is triggered when Config delivers the
    #     configuration snapshot. For more information, see
    #     ConfigSnapshotDeliveryProperties.
    #
    #   <note markdown="1"> By default, rules with a periodic trigger are evaluated every 24
    #   hours. To change the frequency, specify a valid value for the
    #   `MaximumExecutionFrequency` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] config_rule_state
    #   Indicates whether the Config rule is active or is currently being
    #   deleted by Config. It can also indicate the evaluation status for
    #   the Config rule.
    #
    #   Config sets the state of the rule to `EVALUATING` temporarily after
    #   you use the `StartConfigRulesEvaluation` request to evaluate your
    #   resources against the Config rule.
    #
    #   Config sets the state of the rule to `DELETING_RESULTS` temporarily
    #   after you use the `DeleteEvaluationResults` request to delete the
    #   current evaluation results for the Config rule.
    #
    #   Config temporarily sets the state of a rule to `DELETING` after you
    #   use the `DeleteConfigRule` request to delete the rule. After Config
    #   deletes the rule, the rule and all of its evaluations are erased and
    #   are no longer available.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Service principal name of the service that created the rule.
    #
    #   <note markdown="1"> The field is populated only if the service-linked rule is created by
    #   a service. The field is empty if you create your own rule.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] evaluation_modes
    #   The modes the Config rule can be evaluated in. The valid values are
    #   distinct objects. By default, the value is Detective evaluation mode
    #   only.
    #   @return [Array<Types::EvaluationModeConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigRule AWS API Documentation
    #
    class ConfigRule < Struct.new(
      :config_rule_name,
      :config_rule_arn,
      :config_rule_id,
      :description,
      :scope,
      :source,
      :input_parameters,
      :maximum_execution_frequency,
      :config_rule_state,
      :created_by,
      :evaluation_modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the compliance results based on account ID, region, compliance
    # type, and rule name.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The rule compliance status.
    #
    #   For the `ConfigRuleComplianceFilters` data type, Config supports
    #   only `COMPLIANT` and `NON_COMPLIANT`. Config does not support the
    #   `NOT_APPLICABLE` and the `INSUFFICIENT_DATA` values.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of the source account.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The source region where the data is aggregated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigRuleComplianceFilters AWS API Documentation
    #
    class ConfigRuleComplianceFilters < Struct.new(
      :config_rule_name,
      :compliance_type,
      :account_id,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the results based on the account IDs and regions.
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of the source account.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The source region where the data is aggregated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigRuleComplianceSummaryFilters AWS API Documentation
    #
    class ConfigRuleComplianceSummaryFilters < Struct.new(
      :account_id,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status information for your Config Managed rules and Config Custom
    # Policy rules. The status includes information such as the last time
    # the rule ran, the last time it failed, and the related error for the
    # last failure.
    #
    # This action does not return status information about Config Custom
    # Lambda rules.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_arn
    #   The Amazon Resource Name (ARN) of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_id
    #   The ID of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] last_successful_invocation_time
    #   The time that Config last successfully invoked the Config rule to
    #   evaluate your Amazon Web Services resources.
    #   @return [Time]
    #
    # @!attribute [rw] last_failed_invocation_time
    #   The time that Config last failed to invoke the Config rule to
    #   evaluate your Amazon Web Services resources.
    #   @return [Time]
    #
    # @!attribute [rw] last_successful_evaluation_time
    #   The time that Config last successfully evaluated your Amazon Web
    #   Services resources against the rule.
    #   @return [Time]
    #
    # @!attribute [rw] last_failed_evaluation_time
    #   The time that Config last failed to evaluate your Amazon Web
    #   Services resources against the rule.
    #   @return [Time]
    #
    # @!attribute [rw] first_activated_time
    #   The time that you first activated the Config rule.
    #   @return [Time]
    #
    # @!attribute [rw] last_deactivated_time
    #   The time that you last turned off the Config rule.
    #   @return [Time]
    #
    # @!attribute [rw] last_error_code
    #   The error code that Config returned when the rule last failed.
    #   @return [String]
    #
    # @!attribute [rw] last_error_message
    #   The error message that Config returned when the rule last failed.
    #   @return [String]
    #
    # @!attribute [rw] first_evaluation_started
    #   Indicates whether Config has evaluated your resources against the
    #   rule at least once.
    #
    #   * `true` - Config has evaluated your Amazon Web Services resources
    #     against the rule at least once.
    #
    #   * `false` - Config has not finished evaluating your Amazon Web
    #     Services resources against the rule at least once.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_debug_log_delivery_status
    #   The status of the last attempted delivery of a debug log for your
    #   Config Custom Policy rules. Either `Successful` or `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] last_debug_log_delivery_status_reason
    #   The reason Config was not able to deliver a debug log. This is for
    #   the last failed attempt to retrieve a debug log for your Config
    #   Custom Policy rules.
    #   @return [String]
    #
    # @!attribute [rw] last_debug_log_delivery_time
    #   The time Config last attempted to deliver a debug log for your
    #   Config Custom Policy rules.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigRuleEvaluationStatus AWS API Documentation
    #
    class ConfigRuleEvaluationStatus < Struct.new(
      :config_rule_name,
      :config_rule_arn,
      :config_rule_id,
      :last_successful_invocation_time,
      :last_failed_invocation_time,
      :last_successful_evaluation_time,
      :last_failed_evaluation_time,
      :first_activated_time,
      :last_deactivated_time,
      :last_error_code,
      :last_error_message,
      :first_evaluation_started,
      :last_debug_log_delivery_status,
      :last_debug_log_delivery_status_reason,
      :last_debug_log_delivery_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides options for how often Config delivers configuration snapshots
    # to the Amazon S3 bucket in your delivery channel.
    #
    # The frequency for a rule that triggers evaluations for your resources
    # when Config delivers the configuration snapshot is set by one of two
    # values, depending on which is less frequent:
    #
    # * The value for the `deliveryFrequency` parameter within the delivery
    #   channel configuration, which sets how often Config delivers
    #   configuration snapshots. This value also sets how often Config
    #   invokes evaluations for Config rules.
    #
    # * The value for the `MaximumExecutionFrequency` parameter, which sets
    #   the maximum frequency with which Config invokes evaluations for the
    #   rule. For more information, see ConfigRule.
    #
    # If the `deliveryFrequency` value is less frequent than the
    # `MaximumExecutionFrequency` value for a rule, Config invokes the rule
    # only as often as the `deliveryFrequency` value.
    #
    # 1.  For example, you want your rule to run evaluations when Config
    #     delivers the configuration snapshot.
    #
    # 2.  You specify the `MaximumExecutionFrequency` value for `Six_Hours`.
    #
    # 3.  You then specify the delivery channel `deliveryFrequency` value
    #     for `TwentyFour_Hours`.
    #
    # 4.  Because the value for `deliveryFrequency` is less frequent than
    #     `MaximumExecutionFrequency`, Config invokes evaluations for the
    #     rule every 24 hours.
    #
    # You should set the `MaximumExecutionFrequency` value to be at least as
    # frequent as the `deliveryFrequency` value. You can view the
    # `deliveryFrequency` value by using the `DescribeDeliveryChannnels`
    # action.
    #
    # To update the `deliveryFrequency` with which Config delivers your
    # configuration snapshots, use the `PutDeliveryChannel` action.
    #
    # @!attribute [rw] delivery_frequency
    #   The frequency with which Config delivers configuration snapshots.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigSnapshotDeliveryProperties AWS API Documentation
    #
    class ConfigSnapshotDeliveryProperties < Struct.new(
      :delivery_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list that contains the status of the delivery of the configuration
    # stream notification to the Amazon SNS topic.
    #
    # @!attribute [rw] last_status
    #   Status of the last attempted delivery.
    #
    #   **Note** Providing an SNS topic on a [DeliveryChannel][1] for Config
    #   is optional. If the SNS delivery is turned off, the last status will
    #   be **Not\_Applicable**.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html
    #   @return [String]
    #
    # @!attribute [rw] last_error_code
    #   The error code from the last attempted delivery.
    #   @return [String]
    #
    # @!attribute [rw] last_error_message
    #   The error message from the last attempted delivery.
    #   @return [String]
    #
    # @!attribute [rw] last_status_change_time
    #   The time from the last status change.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigStreamDeliveryInfo AWS API Documentation
    #
    class ConfigStreamDeliveryInfo < Struct.new(
      :last_status,
      :last_error_code,
      :last_error_message,
      :last_status_change_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about the configuration aggregator, including information
    # about source accounts, regions, and metadata of the aggregator.
    #
    # @!attribute [rw] configuration_aggregator_name
    #   The name of the aggregator.
    #   @return [String]
    #
    # @!attribute [rw] configuration_aggregator_arn
    #   The Amazon Resource Name (ARN) of the aggregator.
    #   @return [String]
    #
    # @!attribute [rw] account_aggregation_sources
    #   Provides a list of source accounts and regions to be aggregated.
    #   @return [Array<Types::AccountAggregationSource>]
    #
    # @!attribute [rw] organization_aggregation_source
    #   Provides an organization and list of regions to be aggregated.
    #   @return [Types::OrganizationAggregationSource]
    #
    # @!attribute [rw] creation_time
    #   The time stamp when the configuration aggregator was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time of the last update.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Amazon Web Services service that created the configuration
    #   aggregator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigurationAggregator AWS API Documentation
    #
    class ConfigurationAggregator < Struct.new(
      :configuration_aggregator_name,
      :configuration_aggregator_arn,
      :account_aggregation_sources,
      :organization_aggregation_source,
      :creation_time,
      :last_updated_time,
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list that contains detailed configurations of a specified resource.
    #
    # @!attribute [rw] version
    #   The version number of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account ID associated with the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] configuration_item_capture_time
    #   The time when the configuration recording was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] configuration_item_status
    #   The configuration item status. The valid values are:
    #
    #   * OK – The resource configuration has been updated
    #
    #   * ResourceDiscovered – The resource was newly discovered
    #
    #   * ResourceNotRecorded – The resource was discovered but its
    #     configuration was not recorded since the recorder excludes the
    #     recording of resources of this type
    #
    #   * ResourceDeleted – The resource was deleted
    #
    #   * ResourceDeletedNotRecorded – The resource was deleted but its
    #     configuration was not recorded since the recorder excludes the
    #     recording of resources of this type
    #
    #   <note markdown="1"> The CIs do not incur any cost.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] configuration_state_id
    #   An identifier that indicates the ordering of the configuration items
    #   of a resource.
    #   @return [String]
    #
    # @!attribute [rw] configuration_item_md5_hash
    #   Unique MD5 hash that represents the configuration item's state.
    #
    #   You can use MD5 hash to compare the states of two or more
    #   configuration items that are associated with the same resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource (for example, `sg-xxxxxx`).
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The custom name of the resource, if available.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The region where the resource resides.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_creation_time
    #   The time stamp when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A mapping of key value tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] related_events
    #   A list of CloudTrail event IDs.
    #
    #   A populated field indicates that the current configuration was
    #   initiated by the events recorded in the CloudTrail log. For more
    #   information about CloudTrail, see [What Is CloudTrail][1].
    #
    #   An empty field indicates that the current configuration was not
    #   initiated by any event. As of Version 1.3, the relatedEvents field
    #   is empty. You can access the [LookupEvents API][2] in the
    #   *CloudTrail API Reference* to retrieve the events for the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html
    #   [2]: https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] relationships
    #   A list of related Amazon Web Services resources.
    #   @return [Array<Types::Relationship>]
    #
    # @!attribute [rw] configuration
    #   The description of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] supplementary_configuration
    #   Configuration attributes that Config returns for certain resource
    #   types to supplement the information returned for the `configuration`
    #   parameter.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigurationItem AWS API Documentation
    #
    class ConfigurationItem < Struct.new(
      :version,
      :account_id,
      :configuration_item_capture_time,
      :configuration_item_status,
      :configuration_state_id,
      :configuration_item_md5_hash,
      :arn,
      :resource_type,
      :resource_id,
      :resource_name,
      :aws_region,
      :availability_zone,
      :resource_creation_time,
      :tags,
      :related_events,
      :relationships,
      :configuration,
      :supplementary_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Records configuration changes to specified resource types. For more
    # information about the configuration recorder, see [ **Managing the
    # Configuration Recorder** ][1] in the *Config Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html
    #
    # @!attribute [rw] name
    #   The name of the configuration recorder. Config automatically assigns
    #   the name of "default" when creating the configuration recorder.
    #
    #   You cannot change the name of the configuration recorder after it
    #   has been created. To change the configuration recorder name, you
    #   must delete it and create a new configuration recorder with a new
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Amazon Resource Name (ARN) of the IAM role assumed by Config and
    #   used by the configuration recorder.
    #
    #   <note markdown="1"> While the API model does not require this field, the server will
    #   reject a request without a defined `roleARN` for the configuration
    #   recorder.
    #
    #    </note>
    #
    #   <note markdown="1"> **Pre-existing Config role**
    #
    #    If you have used an Amazon Web Services service that uses Config,
    #   such as Security Hub or Control Tower, and an Config role has
    #   already been created, make sure that the IAM role that you use when
    #   setting up Config keeps the same minimum permissions as the already
    #   created Config role. You must do this so that the other Amazon Web
    #   Services service continues to run as expected.
    #
    #    For example, if Control Tower has an IAM role that allows Config to
    #   read Amazon Simple Storage Service (Amazon S3) objects, make sure
    #   that the same permissions are granted within the IAM role you use
    #   when setting up Config. Otherwise, it may interfere with how Control
    #   Tower operates. For more information about IAM roles for Config, see
    #   [ **Identity and Access Management for Config** ][1] in the *Config
    #   Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/security-iam.html
    #   @return [String]
    #
    # @!attribute [rw] recording_group
    #   Specifies which resource types Config records for configuration
    #   changes.
    #
    #   <note markdown="1"> <b> High Number of Config Evaluations</b>
    #
    #    You may notice increased activity in your account during your
    #   initial month recording with Config when compared to subsequent
    #   months. During the initial bootstrapping process, Config runs
    #   evaluations on all the resources in your account that you have
    #   selected for Config to record.
    #
    #    If you are running ephemeral workloads, you may see increased
    #   activity from Config as it records configuration changes associated
    #   with creating and deleting these temporary resources. An *ephemeral
    #   workload* is a temporary use of computing resources that are loaded
    #   and run when needed. Examples include Amazon Elastic Compute Cloud
    #   (Amazon EC2) Spot Instances, Amazon EMR jobs, and Auto Scaling. If
    #   you want to avoid the increased activity from running ephemeral
    #   workloads, you can run these types of workloads in a separate
    #   account with Config turned off to avoid increased configuration
    #   recording and rule evaluations.
    #
    #    </note>
    #   @return [Types::RecordingGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigurationRecorder AWS API Documentation
    #
    class ConfigurationRecorder < Struct.new(
      :name,
      :role_arn,
      :recording_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current status of the configuration recorder.
    #
    # <note markdown="1"> For a detailed status of recording events over time, add your Config
    # events to CloudWatch metrics and use CloudWatch metrics.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The name of the configuration recorder.
    #   @return [String]
    #
    # @!attribute [rw] last_start_time
    #   The time the recorder was last started.
    #   @return [Time]
    #
    # @!attribute [rw] last_stop_time
    #   The time the recorder was last stopped.
    #   @return [Time]
    #
    # @!attribute [rw] recording
    #   Specifies whether or not the recorder is currently recording.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_status
    #   The status of the latest recording event processed by the recorder.
    #   @return [String]
    #
    # @!attribute [rw] last_error_code
    #   The latest error code from when the recorder last failed.
    #   @return [String]
    #
    # @!attribute [rw] last_error_message
    #   The latest error message from when the recorder last failed.
    #   @return [String]
    #
    # @!attribute [rw] last_status_change_time
    #   The time of the latest change in status of an recording event
    #   processed by the recorder.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigurationRecorderStatus AWS API Documentation
    #
    class ConfigurationRecorderStatus < Struct.new(
      :name,
      :last_start_time,
      :last_stop_time,
      :recording,
      :last_status,
      :last_error_code,
      :last_error_message,
      :last_status_change_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the conformance pack by compliance types and Config rule
    # names.
    #
    # @!attribute [rw] config_rule_names
    #   Filters the results by Config rule names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compliance_type
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
    #   `INSUFFICIENT_DATA` is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackComplianceFilters AWS API Documentation
    #
    class ConformancePackComplianceFilters < Struct.new(
      :config_rule_names,
      :compliance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A compliance score is the percentage of the number of compliant
    # rule-resource combinations in a conformance pack compared to the
    # number of total possible rule-resource combinations in the conformance
    # pack. This metric provides you with a high-level view of the
    # compliance state of your conformance packs. You can use it to
    # identify, investigate, and understand the level of compliance in your
    # conformance packs.
    #
    # @!attribute [rw] score
    #   Compliance score for the conformance pack. Conformance packs with no
    #   evaluation results will have a compliance score of
    #   `INSUFFICIENT_DATA`.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_name
    #   The name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the conformance pack compliance score was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackComplianceScore AWS API Documentation
    #
    class ConformancePackComplianceScore < Struct.new(
      :score,
      :conformance_pack_name,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of filters to apply to the conformance pack compliance score
    # result set.
    #
    # @!attribute [rw] conformance_pack_names
    #   The names of the conformance packs whose compliance scores you want
    #   to include in the conformance pack compliance score result set. You
    #   can include up to 25 conformance packs in the `ConformancePackNames`
    #   array of strings, each with a character limit of 256 characters for
    #   the conformance pack name.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackComplianceScoresFilters AWS API Documentation
    #
    class ConformancePackComplianceScoresFilters < Struct.new(
      :conformance_pack_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary includes the name and status of the conformance pack.
    #
    # @!attribute [rw] conformance_pack_name
    #   The name of the conformance pack name.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_compliance_status
    #   The status of the conformance pack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackComplianceSummary AWS API Documentation
    #
    class ConformancePackComplianceSummary < Struct.new(
      :conformance_pack_name,
      :conformance_pack_compliance_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns details of a conformance pack. A conformance pack is a
    # collection of Config rules and remediation actions that can be easily
    # deployed in an account and a region.
    #
    # @!attribute [rw] conformance_pack_name
    #   Name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_arn
    #   Amazon Resource Name (ARN) of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_id
    #   ID of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_bucket
    #   The name of the Amazon S3 bucket where Config stores conformance
    #   pack templates.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #   @return [Array<Types::ConformancePackInputParameter>]
    #
    # @!attribute [rw] last_update_requested_time
    #   The last time a conformation pack update was requested.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon Web Services service that created the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] template_ssm_document_details
    #   An object that contains the name or Amazon Resource Name (ARN) of
    #   the Amazon Web Services Systems Manager document (SSM document) and
    #   the version of the SSM document that is used to create a conformance
    #   pack.
    #   @return [Types::TemplateSSMDocumentDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackDetail AWS API Documentation
    #
    class ConformancePackDetail < Struct.new(
      :conformance_pack_name,
      :conformance_pack_arn,
      :conformance_pack_id,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :last_update_requested_time,
      :created_by,
      :template_ssm_document_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters a conformance pack by Config rule names, compliance types,
    # Amazon Web Services resource types, and resource IDs.
    #
    # @!attribute [rw] config_rule_names
    #   Filters the results by Config rule names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compliance_type
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
    #   `INSUFFICIENT_DATA` is not supported.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Filters the results by the resource type (for example,
    #   `"AWS::EC2::Instance"`).
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   Filters the results by resource IDs.
    #
    #   <note markdown="1"> This is valid only when you provide resource type. If there is no
    #   resource type, you will see an error.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackEvaluationFilters AWS API Documentation
    #
    class ConformancePackEvaluationFilters < Struct.new(
      :config_rule_names,
      :compliance_type,
      :resource_type,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a conformance pack evaluation. Provides Config rule and
    # Amazon Web Services resource type that was evaluated, the compliance
    # of the conformance pack, related time stamps, and supplementary
    # information.
    #
    # @!attribute [rw] compliance_type
    #   The compliance type. The allowed values are `COMPLIANT` and
    #   `NON_COMPLIANT`. `INSUFFICIENT_DATA` is not supported.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_result_identifier
    #   Uniquely identifies an evaluation result.
    #   @return [Types::EvaluationResultIdentifier]
    #
    # @!attribute [rw] config_rule_invoked_time
    #   The time when Config rule evaluated Amazon Web Services resource.
    #   @return [Time]
    #
    # @!attribute [rw] result_recorded_time
    #   The time when Config recorded the evaluation result.
    #   @return [Time]
    #
    # @!attribute [rw] annotation
    #   Supplementary information about how the evaluation determined the
    #   compliance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackEvaluationResult AWS API Documentation
    #
    class ConformancePackEvaluationResult < Struct.new(
      :compliance_type,
      :evaluation_result_identifier,
      :config_rule_invoked_time,
      :result_recorded_time,
      :annotation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input parameters in the form of key-value pairs for the conformance
    # pack, both of which you define. Keys can have a maximum character
    # length of 255 characters, and values can have a maximum length of 4096
    # characters.
    #
    # @!attribute [rw] parameter_name
    #   One part of a key-value pair.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   Another part of the key-value pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackInputParameter AWS API Documentation
    #
    class ConformancePackInputParameter < Struct.new(
      :parameter_name,
      :parameter_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compliance information of one or more Config rules within a
    # conformance pack. You can filter using Config rule names and
    # compliance types.
    #
    # @!attribute [rw] config_rule_name
    #   Name of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   Compliance of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] controls
    #   Controls for the conformance pack. A control is a process to prevent
    #   or detect problems while meeting objectives. A control can align
    #   with a specific compliance regime or map to internal controls
    #   defined by an organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackRuleCompliance AWS API Documentation
    #
    class ConformancePackRuleCompliance < Struct.new(
      :config_rule_name,
      :compliance_type,
      :controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status details of a conformance pack.
    #
    # @!attribute [rw] conformance_pack_name
    #   Name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_id
    #   ID of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_arn
    #   Amazon Resource Name (ARN) of comformance pack.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_state
    #   Indicates deployment status of conformance pack.
    #
    #   Config sets the state of the conformance pack to:
    #
    #   * CREATE\_IN\_PROGRESS when a conformance pack creation is in
    #     progress for an account.
    #
    #   * CREATE\_COMPLETE when a conformance pack has been successfully
    #     created in your account.
    #
    #   * CREATE\_FAILED when a conformance pack creation failed in your
    #     account.
    #
    #   * DELETE\_IN\_PROGRESS when a conformance pack deletion is in
    #     progress.
    #
    #   * DELETE\_FAILED when a conformance pack deletion failed in your
    #     account.
    #   @return [String]
    #
    # @!attribute [rw] stack_arn
    #   Amazon Resource Name (ARN) of CloudFormation stack.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_status_reason
    #   The reason of conformance pack creation failure.
    #   @return [String]
    #
    # @!attribute [rw] last_update_requested_time
    #   Last time when conformation pack creation and update was requested.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_completed_time
    #   Last time when conformation pack creation and update was successful.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackStatusDetail AWS API Documentation
    #
    class ConformancePackStatusDetail < Struct.new(
      :conformance_pack_name,
      :conformance_pack_id,
      :conformance_pack_arn,
      :conformance_pack_state,
      :stack_arn,
      :conformance_pack_status_reason,
      :last_update_requested_time,
      :last_update_completed_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have specified a template that is not valid or supported.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackTemplateValidationException AWS API Documentation
    #
    class ConformancePackTemplateValidationException < Aws::EmptyStructure; end

    # Provides the runtime system, policy definition, and whether debug
    # logging enabled. You can specify the following CustomPolicyDetails
    # parameter values only for Config Custom Policy rules.
    #
    # @!attribute [rw] policy_runtime
    #   The runtime system for your Config Custom Policy rule. Guard is a
    #   policy-as-code language that allows you to write policies that are
    #   enforced by Config Custom Policy rules. For more information about
    #   Guard, see the [Guard GitHub Repository][1].
    #
    #
    #
    #   [1]: https://github.com/aws-cloudformation/cloudformation-guard
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The policy definition containing the logic for your Config Custom
    #   Policy rule.
    #   @return [String]
    #
    # @!attribute [rw] enable_debug_log_delivery
    #   The boolean expression for enabling debug logging for your Config
    #   Custom Policy rule. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/CustomPolicyDetails AWS API Documentation
    #
    class CustomPolicyDetails < Struct.new(
      :policy_runtime,
      :policy_text,
      :enable_debug_log_delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorized_account_id
    #   The 12-digit account ID of the account authorized to aggregate data.
    #   @return [String]
    #
    # @!attribute [rw] authorized_aws_region
    #   The region authorized to collect aggregated data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteAggregationAuthorizationRequest AWS API Documentation
    #
    class DeleteAggregationAuthorizationRequest < Struct.new(
      :authorized_account_id,
      :authorized_aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   The name of the Config rule that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigRuleRequest AWS API Documentation
    #
    class DeleteConfigRuleRequest < Struct.new(
      :config_rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigurationAggregatorRequest AWS API Documentation
    #
    class DeleteConfigurationAggregatorRequest < Struct.new(
      :configuration_aggregator_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for the `DeleteConfigurationRecorder` action.
    #
    # @!attribute [rw] configuration_recorder_name
    #   The name of the configuration recorder to be deleted. You can
    #   retrieve the name of your configuration recorder by using the
    #   `DescribeConfigurationRecorders` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigurationRecorderRequest AWS API Documentation
    #
    class DeleteConfigurationRecorderRequest < Struct.new(
      :configuration_recorder_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_name
    #   Name of the conformance pack you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConformancePackRequest AWS API Documentation
    #
    class DeleteConformancePackRequest < Struct.new(
      :conformance_pack_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DeleteDeliveryChannel action. The action accepts the
    # following data, in JSON format.
    #
    # @!attribute [rw] delivery_channel_name
    #   The name of the delivery channel to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteDeliveryChannelRequest AWS API Documentation
    #
    class DeleteDeliveryChannelRequest < Struct.new(
      :delivery_channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   The name of the Config rule for which you want to delete the
    #   evaluation results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteEvaluationResultsRequest AWS API Documentation
    #
    class DeleteEvaluationResultsRequest < Struct.new(
      :config_rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output when you delete the evaluation results for the specified
    # Config rule.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteEvaluationResultsResponse AWS API Documentation
    #
    class DeleteEvaluationResultsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] organization_config_rule_name
    #   The name of organization Config rule that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteOrganizationConfigRuleRequest AWS API Documentation
    #
    class DeleteOrganizationConfigRuleRequest < Struct.new(
      :organization_config_rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_conformance_pack_name
    #   The name of organization conformance pack that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteOrganizationConformancePackRequest AWS API Documentation
    #
    class DeleteOrganizationConformancePackRequest < Struct.new(
      :organization_conformance_pack_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] requester_account_id
    #   The 12-digit account ID of the account requesting to aggregate data.
    #   @return [String]
    #
    # @!attribute [rw] requester_aws_region
    #   The region requesting to aggregate data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeletePendingAggregationRequestRequest AWS API Documentation
    #
    class DeletePendingAggregationRequestRequest < Struct.new(
      :requester_account_id,
      :requester_aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   The name of the Config rule for which you want to delete remediation
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteRemediationConfigurationRequest AWS API Documentation
    #
    class DeleteRemediationConfigurationRequest < Struct.new(
      :config_rule_name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteRemediationConfigurationResponse AWS API Documentation
    #
    class DeleteRemediationConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] config_rule_name
    #   The name of the Config rule for which you want to delete remediation
    #   exception configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_keys
    #   An exception list of resource exception keys to be processed with
    #   the current request. Config adds exception for each resource key.
    #   For example, Config adds 3 exceptions for 3 resource keys.
    #   @return [Array<Types::RemediationExceptionResourceKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteRemediationExceptionsRequest AWS API Documentation
    #
    class DeleteRemediationExceptionsRequest < Struct.new(
      :config_rule_name,
      :resource_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_batches
    #   Returns a list of failed delete remediation exceptions batch
    #   objects. Each object in the batch consists of a list of failed items
    #   and failure messages.
    #   @return [Array<Types::FailedDeleteRemediationExceptionsBatch>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteRemediationExceptionsResponse AWS API Documentation
    #
    class DeleteRemediationExceptionsResponse < Struct.new(
      :failed_batches)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Unique identifier of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteResourceConfigRequest AWS API Documentation
    #
    class DeleteResourceConfigRequest < Struct.new(
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retention_configuration_name
    #   The name of the retention configuration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteRetentionConfigurationRequest AWS API Documentation
    #
    class DeleteRetentionConfigurationRequest < Struct.new(
      :retention_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_name
    #   The name of the query that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteStoredQueryRequest AWS API Documentation
    #
    class DeleteStoredQueryRequest < Struct.new(
      :query_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteStoredQueryResponse AWS API Documentation
    #
    class DeleteStoredQueryResponse < Aws::EmptyStructure; end

    # The input for the DeliverConfigSnapshot action.
    #
    # @!attribute [rw] delivery_channel_name
    #   The name of the delivery channel through which the snapshot is
    #   delivered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeliverConfigSnapshotRequest AWS API Documentation
    #
    class DeliverConfigSnapshotRequest < Struct.new(
      :delivery_channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DeliverConfigSnapshot action, in JSON format.
    #
    # @!attribute [rw] config_snapshot_id
    #   The ID of the snapshot that is being created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeliverConfigSnapshotResponse AWS API Documentation
    #
    class DeliverConfigSnapshotResponse < Struct.new(
      :config_snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The channel through which Config delivers notifications and updated
    # configuration states.
    #
    # @!attribute [rw] name
    #   The name of the delivery channel. By default, Config assigns the
    #   name "default" when creating the delivery channel. To change the
    #   delivery channel name, you must use the DeleteDeliveryChannel action
    #   to delete your current delivery channel, and then you must use the
    #   PutDeliveryChannel command to create a delivery channel that has the
    #   desired name.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon S3 bucket to which Config delivers
    #   configuration snapshots and configuration history files.
    #
    #   If you specify a bucket that belongs to another Amazon Web Services
    #   account, that bucket must have policies that grant access
    #   permissions to Config. For more information, see [Permissions for
    #   the Amazon S3 Bucket][1] in the *Config Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The prefix for the specified Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_kms_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service (KMS )
    #   KMS key (KMS key) used to encrypt objects delivered by Config. Must
    #   belong to the same Region as the destination S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   Config sends notifications about configuration changes.
    #
    #   If you choose a topic from another account, the topic must have
    #   policies that grant access permissions to Config. For more
    #   information, see [Permissions for the Amazon SNS Topic][1] in the
    #   *Config Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html
    #   @return [String]
    #
    # @!attribute [rw] config_snapshot_delivery_properties
    #   The options for how often Config delivers configuration snapshots to
    #   the Amazon S3 bucket.
    #   @return [Types::ConfigSnapshotDeliveryProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeliveryChannel AWS API Documentation
    #
    class DeliveryChannel < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :s3_kms_key_arn,
      :sns_topic_arn,
      :config_snapshot_delivery_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of a specified delivery channel.
    #
    # Valid values: `Success` \| `Failure`
    #
    # @!attribute [rw] name
    #   The name of the delivery channel.
    #   @return [String]
    #
    # @!attribute [rw] config_snapshot_delivery_info
    #   A list containing the status of the delivery of the snapshot to the
    #   specified Amazon S3 bucket.
    #   @return [Types::ConfigExportDeliveryInfo]
    #
    # @!attribute [rw] config_history_delivery_info
    #   A list that contains the status of the delivery of the configuration
    #   history to the specified Amazon S3 bucket.
    #   @return [Types::ConfigExportDeliveryInfo]
    #
    # @!attribute [rw] config_stream_delivery_info
    #   A list containing the status of the delivery of the configuration
    #   stream notification to the specified Amazon SNS topic.
    #   @return [Types::ConfigStreamDeliveryInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeliveryChannelStatus AWS API Documentation
    #
    class DeliveryChannelStatus < Struct.new(
      :name,
      :config_snapshot_delivery_info,
      :config_history_delivery_info,
      :config_stream_delivery_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters the results by ConfigRuleComplianceFilters object.
    #   @return [Types::ConfigRuleComplianceFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is maximum. If you specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregateComplianceByConfigRulesRequest AWS API Documentation
    #
    class DescribeAggregateComplianceByConfigRulesRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregate_compliance_by_config_rules
    #   Returns a list of AggregateComplianceByConfigRule object.
    #   @return [Array<Types::AggregateComplianceByConfigRule>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregateComplianceByConfigRulesResponse AWS API Documentation
    #
    class DescribeAggregateComplianceByConfigRulesResponse < Struct.new(
      :aggregate_compliance_by_config_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters the result by `AggregateConformancePackComplianceFilters`
    #   object.
    #   @return [Types::AggregateConformancePackComplianceFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of conformance packs compliance details returned
    #   on each page. The default is maximum. If you specify 0, Config uses
    #   the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregateComplianceByConformancePacksRequest AWS API Documentation
    #
    class DescribeAggregateComplianceByConformancePacksRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregate_compliance_by_conformance_packs
    #   Returns the `AggregateComplianceByConformancePack` object.
    #   @return [Array<Types::AggregateComplianceByConformancePack>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregateComplianceByConformancePacksResponse AWS API Documentation
    #
    class DescribeAggregateComplianceByConformancePacksResponse < Struct.new(
      :aggregate_compliance_by_conformance_packs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   The maximum number of AggregationAuthorizations returned on each
    #   page. The default is maximum. If you specify 0, Config uses the
    #   default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregationAuthorizationsRequest AWS API Documentation
    #
    class DescribeAggregationAuthorizationsRequest < Struct.new(
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregation_authorizations
    #   Returns a list of authorizations granted to various aggregator
    #   accounts and regions.
    #   @return [Array<Types::AggregationAuthorization>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregationAuthorizationsResponse AWS API Documentation
    #
    class DescribeAggregationAuthorizationsResponse < Struct.new(
      :aggregation_authorizations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_names
    #   Specify one or more Config rule names to filter the results by rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compliance_types
    #   Filters the results by compliance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeComplianceByConfigRuleRequest AWS API Documentation
    #
    class DescribeComplianceByConfigRuleRequest < Struct.new(
      :config_rule_names,
      :compliance_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_by_config_rules
    #   Indicates whether each of the specified Config rules is compliant.
    #   @return [Array<Types::ComplianceByConfigRule>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeComplianceByConfigRuleResponse AWS API Documentation
    #
    class DescribeComplianceByConfigRuleResponse < Struct.new(
      :compliance_by_config_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The types of Amazon Web Services resources for which you want
    #   compliance information (for example, `AWS::EC2::Instance`). For this
    #   action, you can specify that the resource type is an Amazon Web
    #   Services account by specifying `AWS::::Account`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the Amazon Web Services resource for which you want
    #   compliance information. You can specify only one resource ID. If you
    #   specify a resource ID, you must also specify a type for
    #   `ResourceType`.
    #   @return [String]
    #
    # @!attribute [rw] compliance_types
    #   Filters the results by compliance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeComplianceByResourceRequest AWS API Documentation
    #
    class DescribeComplianceByResourceRequest < Struct.new(
      :resource_type,
      :resource_id,
      :compliance_types,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_by_resources
    #   Indicates whether the specified Amazon Web Services resource
    #   complies with all of the Config rules that evaluate it.
    #   @return [Array<Types::ComplianceByResource>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeComplianceByResourceResponse AWS API Documentation
    #
    class DescribeComplianceByResourceResponse < Struct.new(
      :compliance_by_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_names
    #   The name of the Config managed rules for which you want status
    #   information. If you do not specify any names, Config returns status
    #   information for all Config managed rules that you use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of rule evaluation results that you want returned.
    #
    #   This parameter is required if the rule limit for your account is
    #   more than the default of 150 rules.
    #
    #   For information about requesting a rule limit increase, see [Config
    #   Limits][1] in the *Amazon Web Services General Reference Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRuleEvaluationStatusRequest AWS API Documentation
    #
    class DescribeConfigRuleEvaluationStatusRequest < Struct.new(
      :config_rule_names,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rules_evaluation_status
    #   Status information about your Config managed rules.
    #   @return [Array<Types::ConfigRuleEvaluationStatus>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRuleEvaluationStatusResponse AWS API Documentation
    #
    class DescribeConfigRuleEvaluationStatusResponse < Struct.new(
      :config_rules_evaluation_status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a filtered list of Detective or Proactive Config rules. By
    # default, if the filter is not defined, this API returns an unfiltered
    # list. For more information on Detective or Proactive Config rules, see
    # [ **Evaluation Mode** ][1] in the *Config Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html
    #
    # @!attribute [rw] evaluation_mode
    #   The mode of an evaluation. The valid values are Detective or
    #   Proactive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRulesFilters AWS API Documentation
    #
    class DescribeConfigRulesFilters < Struct.new(
      :evaluation_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_names
    #   The names of the Config rules for which you want details. If you do
    #   not specify any names, Config returns details for all your rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Returns a list of Detective or Proactive Config rules. By default,
    #   this API returns an unfiltered list. For more information on
    #   Detective or Proactive Config rules, see [ **Evaluation Mode** ][1]
    #   in the *Config Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html
    #   @return [Types::DescribeConfigRulesFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRulesRequest AWS API Documentation
    #
    class DescribeConfigRulesRequest < Struct.new(
      :config_rule_names,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rules
    #   The details about your Config rules.
    #   @return [Array<Types::ConfigRule>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRulesResponse AWS API Documentation
    #
    class DescribeConfigRulesResponse < Struct.new(
      :config_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   Filters the status type.
    #
    #   * Valid value FAILED indicates errors while moving data.
    #
    #   * Valid value SUCCEEDED indicates the data was successfully moved.
    #
    #   * Valid value OUTDATED indicates the data is not the most recent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of AggregatorSourceStatus returned on each page.
    #   The default is maximum. If you specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregatorSourcesStatusRequest AWS API Documentation
    #
    class DescribeConfigurationAggregatorSourcesStatusRequest < Struct.new(
      :configuration_aggregator_name,
      :update_status,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregated_source_status_list
    #   Returns an AggregatedSourceStatus object.
    #   @return [Array<Types::AggregatedSourceStatus>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregatorSourcesStatusResponse AWS API Documentation
    #
    class DescribeConfigurationAggregatorSourcesStatusResponse < Struct.new(
      :aggregated_source_status_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_names
    #   The name of the configuration aggregators.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of configuration aggregators returned on each
    #   page. The default is maximum. If you specify 0, Config uses the
    #   default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregatorsRequest AWS API Documentation
    #
    class DescribeConfigurationAggregatorsRequest < Struct.new(
      :configuration_aggregator_names,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregators
    #   Returns a ConfigurationAggregators object.
    #   @return [Array<Types::ConfigurationAggregator>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregatorsResponse AWS API Documentation
    #
    class DescribeConfigurationAggregatorsResponse < Struct.new(
      :configuration_aggregators,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeConfigurationRecorderStatus action.
    #
    # @!attribute [rw] configuration_recorder_names
    #   The name(s) of the configuration recorder. If the name is not
    #   specified, the action returns the current status of all the
    #   configuration recorders associated with the account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecorderStatusRequest AWS API Documentation
    #
    class DescribeConfigurationRecorderStatusRequest < Struct.new(
      :configuration_recorder_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DescribeConfigurationRecorderStatus action, in JSON
    # format.
    #
    # @!attribute [rw] configuration_recorders_status
    #   A list that contains status of the specified recorders.
    #   @return [Array<Types::ConfigurationRecorderStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecorderStatusResponse AWS API Documentation
    #
    class DescribeConfigurationRecorderStatusResponse < Struct.new(
      :configuration_recorders_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeConfigurationRecorders action.
    #
    # @!attribute [rw] configuration_recorder_names
    #   A list of configuration recorder names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecordersRequest AWS API Documentation
    #
    class DescribeConfigurationRecordersRequest < Struct.new(
      :configuration_recorder_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DescribeConfigurationRecorders action.
    #
    # @!attribute [rw] configuration_recorders
    #   A list that contains the descriptions of the specified configuration
    #   recorders.
    #   @return [Array<Types::ConfigurationRecorder>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecordersResponse AWS API Documentation
    #
    class DescribeConfigurationRecordersResponse < Struct.new(
      :configuration_recorders)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_name
    #   Name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `ConformancePackComplianceFilters` object.
    #   @return [Types::ConformancePackComplianceFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of Config rules within a conformance pack are
    #   returned on each page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConformancePackComplianceRequest AWS API Documentation
    #
    class DescribeConformancePackComplianceRequest < Struct.new(
      :conformance_pack_name,
      :filters,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_name
    #   Name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_rule_compliance_list
    #   Returns a list of `ConformancePackRuleCompliance` objects.
    #   @return [Array<Types::ConformancePackRuleCompliance>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConformancePackComplianceResponse AWS API Documentation
    #
    class DescribeConformancePackComplianceResponse < Struct.new(
      :conformance_pack_name,
      :conformance_pack_rule_compliance_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_names
    #   Comma-separated list of conformance pack names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of conformance packs status returned on each
    #   page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConformancePackStatusRequest AWS API Documentation
    #
    class DescribeConformancePackStatusRequest < Struct.new(
      :conformance_pack_names,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_status_details
    #   A list of `ConformancePackStatusDetail` objects.
    #   @return [Array<Types::ConformancePackStatusDetail>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConformancePackStatusResponse AWS API Documentation
    #
    class DescribeConformancePackStatusResponse < Struct.new(
      :conformance_pack_status_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_names
    #   Comma-separated list of conformance pack names for which you want
    #   details. If you do not specify any names, Config returns details for
    #   all your conformance packs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of conformance packs returned on each page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConformancePacksRequest AWS API Documentation
    #
    class DescribeConformancePacksRequest < Struct.new(
      :conformance_pack_names,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_details
    #   Returns a list of `ConformancePackDetail` objects.
    #   @return [Array<Types::ConformancePackDetail>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConformancePacksResponse AWS API Documentation
    #
    class DescribeConformancePacksResponse < Struct.new(
      :conformance_pack_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DeliveryChannelStatus action.
    #
    # @!attribute [rw] delivery_channel_names
    #   A list of delivery channel names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannelStatusRequest AWS API Documentation
    #
    class DescribeDeliveryChannelStatusRequest < Struct.new(
      :delivery_channel_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DescribeDeliveryChannelStatus action.
    #
    # @!attribute [rw] delivery_channels_status
    #   A list that contains the status of a specified delivery channel.
    #   @return [Array<Types::DeliveryChannelStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannelStatusResponse AWS API Documentation
    #
    class DescribeDeliveryChannelStatusResponse < Struct.new(
      :delivery_channels_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeDeliveryChannels action.
    #
    # @!attribute [rw] delivery_channel_names
    #   A list of delivery channel names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannelsRequest AWS API Documentation
    #
    class DescribeDeliveryChannelsRequest < Struct.new(
      :delivery_channel_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DescribeDeliveryChannels action.
    #
    # @!attribute [rw] delivery_channels
    #   A list that contains the descriptions of the specified delivery
    #   channel.
    #   @return [Array<Types::DeliveryChannel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannelsResponse AWS API Documentation
    #
    class DescribeDeliveryChannelsResponse < Struct.new(
      :delivery_channels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_config_rule_names
    #   The names of organization Config rules for which you want status
    #   details. If you do not specify any names, Config returns details for
    #   all your organization Config rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of `OrganizationConfigRuleStatuses` returned on
    #   each page. If you do no specify a number, Config uses the default.
    #   The default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConfigRuleStatusesRequest AWS API Documentation
    #
    class DescribeOrganizationConfigRuleStatusesRequest < Struct.new(
      :organization_config_rule_names,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_config_rule_statuses
    #   A list of `OrganizationConfigRuleStatus` objects.
    #   @return [Array<Types::OrganizationConfigRuleStatus>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConfigRuleStatusesResponse AWS API Documentation
    #
    class DescribeOrganizationConfigRuleStatusesResponse < Struct.new(
      :organization_config_rule_statuses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_config_rule_names
    #   The names of organization Config rules for which you want details.
    #   If you do not specify any names, Config returns details for all your
    #   organization Config rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of organization Config rules returned on each
    #   page. If you do no specify a number, Config uses the default. The
    #   default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConfigRulesRequest AWS API Documentation
    #
    class DescribeOrganizationConfigRulesRequest < Struct.new(
      :organization_config_rule_names,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_config_rules
    #   Returns a list of `OrganizationConfigRule` objects.
    #   @return [Array<Types::OrganizationConfigRule>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConfigRulesResponse AWS API Documentation
    #
    class DescribeOrganizationConfigRulesResponse < Struct.new(
      :organization_config_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_conformance_pack_names
    #   The names of organization conformance packs for which you want
    #   status details. If you do not specify any names, Config returns
    #   details for all your organization conformance packs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of OrganizationConformancePackStatuses returned
    #   on each page. If you do no specify a number, Config uses the
    #   default. The default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConformancePackStatusesRequest AWS API Documentation
    #
    class DescribeOrganizationConformancePackStatusesRequest < Struct.new(
      :organization_conformance_pack_names,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_conformance_pack_statuses
    #   A list of `OrganizationConformancePackStatus` objects.
    #   @return [Array<Types::OrganizationConformancePackStatus>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConformancePackStatusesResponse AWS API Documentation
    #
    class DescribeOrganizationConformancePackStatusesResponse < Struct.new(
      :organization_conformance_pack_statuses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_conformance_pack_names
    #   The name that you assign to an organization conformance pack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of organization config packs returned on each
    #   page. If you do no specify a number, Config uses the default. The
    #   default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConformancePacksRequest AWS API Documentation
    #
    class DescribeOrganizationConformancePacksRequest < Struct.new(
      :organization_conformance_pack_names,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_conformance_packs
    #   Returns a list of OrganizationConformancePacks objects.
    #   @return [Array<Types::OrganizationConformancePack>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConformancePacksResponse AWS API Documentation
    #
    class DescribeOrganizationConformancePacksResponse < Struct.new(
      :organization_conformance_packs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is maximum. If you specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribePendingAggregationRequestsRequest AWS API Documentation
    #
    class DescribePendingAggregationRequestsRequest < Struct.new(
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pending_aggregation_requests
    #   Returns a PendingAggregationRequests object.
    #   @return [Array<Types::PendingAggregationRequest>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribePendingAggregationRequestsResponse AWS API Documentation
    #
    class DescribePendingAggregationRequestsResponse < Struct.new(
      :pending_aggregation_requests,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_names
    #   A list of Config rule names of remediation configurations for which
    #   you want details.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationConfigurationsRequest AWS API Documentation
    #
    class DescribeRemediationConfigurationsRequest < Struct.new(
      :config_rule_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] remediation_configurations
    #   Returns a remediation configuration object.
    #   @return [Array<Types::RemediationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationConfigurationsResponse AWS API Documentation
    #
    class DescribeRemediationConfigurationsResponse < Struct.new(
      :remediation_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   The name of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] resource_keys
    #   An exception list of resource exception keys to be processed with
    #   the current request. Config adds exception for each resource key.
    #   For example, Config adds 3 exceptions for 3 resource keys.
    #   @return [Array<Types::RemediationExceptionResourceKey>]
    #
    # @!attribute [rw] limit
    #   The maximum number of RemediationExceptionResourceKey returned on
    #   each page. The default is 25. If you specify 0, Config uses the
    #   default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationExceptionsRequest AWS API Documentation
    #
    class DescribeRemediationExceptionsRequest < Struct.new(
      :config_rule_name,
      :resource_keys,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] remediation_exceptions
    #   Returns a list of remediation exception objects.
    #   @return [Array<Types::RemediationException>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationExceptionsResponse AWS API Documentation
    #
    class DescribeRemediationExceptionsResponse < Struct.new(
      :remediation_exceptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   A list of Config rule names.
    #   @return [String]
    #
    # @!attribute [rw] resource_keys
    #   A list of resource keys to be processed with the current request.
    #   Each element in the list consists of the resource type and resource
    #   ID.
    #   @return [Array<Types::ResourceKey>]
    #
    # @!attribute [rw] limit
    #   The maximum number of RemediationExecutionStatuses returned on each
    #   page. The default is maximum. If you specify 0, Config uses the
    #   default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationExecutionStatusRequest AWS API Documentation
    #
    class DescribeRemediationExecutionStatusRequest < Struct.new(
      :config_rule_name,
      :resource_keys,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] remediation_execution_statuses
    #   Returns a list of remediation execution statuses objects.
    #   @return [Array<Types::RemediationExecutionStatus>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationExecutionStatusResponse AWS API Documentation
    #
    class DescribeRemediationExecutionStatusResponse < Struct.new(
      :remediation_execution_statuses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retention_configuration_names
    #   A list of names of retention configurations for which you want
    #   details. If you do not specify a name, Config returns details for
    #   all the retention configurations for that account.
    #
    #   <note markdown="1"> Currently, Config supports only one retention configuration per
    #   region in your account.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRetentionConfigurationsRequest AWS API Documentation
    #
    class DescribeRetentionConfigurationsRequest < Struct.new(
      :retention_configuration_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retention_configurations
    #   Returns a retention configuration object.
    #   @return [Array<Types::RetentionConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRetentionConfigurationsResponse AWS API Documentation
    #
    class DescribeRetentionConfigurationsResponse < Struct.new(
      :retention_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an Amazon Web Services resource and indicates whether it
    # complies with the Config rule that it was evaluated against.
    #
    # @!attribute [rw] compliance_resource_type
    #   The type of Amazon Web Services resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] compliance_resource_id
    #   The ID of the Amazon Web Services resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   Indicates whether the Amazon Web Services resource complies with the
    #   Config rule that it was evaluated against.
    #
    #   For the `Evaluation` data type, Config supports only the
    #   `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE` values. Config
    #   does not support the `INSUFFICIENT_DATA` value for this data type.
    #
    #   Similarly, Config does not accept `INSUFFICIENT_DATA` as the value
    #   for `ComplianceType` from a `PutEvaluations` request. For example,
    #   an Lambda function for a custom Config rule cannot pass an
    #   `INSUFFICIENT_DATA` value to Config.
    #   @return [String]
    #
    # @!attribute [rw] annotation
    #   Supplementary information about how the evaluation determined the
    #   compliance.
    #   @return [String]
    #
    # @!attribute [rw] ordering_timestamp
    #   The time of the event in Config that triggered the evaluation. For
    #   event-based evaluations, the time indicates when Config created the
    #   configuration item that triggered the evaluation. For periodic
    #   evaluations, the time indicates when Config triggered the evaluation
    #   at the frequency that you specified (for example, every 24 hours).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/Evaluation AWS API Documentation
    #
    class Evaluation < Struct.new(
      :compliance_resource_type,
      :compliance_resource_id,
      :compliance_type,
      :annotation,
      :ordering_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use EvaluationContext to group independently initiated proactive
    # resource evaluations. For example, CFN Stack. If you want to check
    # just a resource definition, you do not need to provide evaluation
    # context.
    #
    # @!attribute [rw] evaluation_context_identifier
    #   A unique EvaluationContextIdentifier ID for an EvaluationContext.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/EvaluationContext AWS API Documentation
    #
    class EvaluationContext < Struct.new(
      :evaluation_context_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object for Config rule evaluation mode. The
    # Supported valid values are Detective or Proactive.
    #
    # @!attribute [rw] mode
    #   The mode of an evaluation. The valid values are Detective or
    #   Proactive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/EvaluationModeConfiguration AWS API Documentation
    #
    class EvaluationModeConfiguration < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Config evaluation. Provides the Amazon Web Services
    # resource that was evaluated, the compliance of the resource, related
    # time stamps, and supplementary information.
    #
    # @!attribute [rw] evaluation_result_identifier
    #   Uniquely identifies the evaluation result.
    #   @return [Types::EvaluationResultIdentifier]
    #
    # @!attribute [rw] compliance_type
    #   Indicates whether the Amazon Web Services resource complies with the
    #   Config rule that evaluated it.
    #
    #   For the `EvaluationResult` data type, Config supports only the
    #   `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE` values. Config
    #   does not support the `INSUFFICIENT_DATA` value for the
    #   `EvaluationResult` data type.
    #   @return [String]
    #
    # @!attribute [rw] result_recorded_time
    #   The time when Config recorded the evaluation result.
    #   @return [Time]
    #
    # @!attribute [rw] config_rule_invoked_time
    #   The time when the Config rule evaluated the Amazon Web Services
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] annotation
    #   Supplementary information about how the evaluation determined the
    #   compliance.
    #   @return [String]
    #
    # @!attribute [rw] result_token
    #   An encrypted token that associates an evaluation with an Config
    #   rule. The token identifies the rule, the Amazon Web Services
    #   resource being evaluated, and the event that triggered the
    #   evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/EvaluationResult AWS API Documentation
    #
    class EvaluationResult < Struct.new(
      :evaluation_result_identifier,
      :compliance_type,
      :result_recorded_time,
      :config_rule_invoked_time,
      :annotation,
      :result_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Uniquely identifies an evaluation result.
    #
    # @!attribute [rw] evaluation_result_qualifier
    #   Identifies an Config rule used to evaluate an Amazon Web Services
    #   resource, and provides the type and ID of the evaluated resource.
    #   @return [Types::EvaluationResultQualifier]
    #
    # @!attribute [rw] ordering_timestamp
    #   The time of the event that triggered the evaluation of your Amazon
    #   Web Services resources. The time can indicate when Config delivered
    #   a configuration item change notification, or it can indicate when
    #   Config delivered the configuration snapshot, depending on which
    #   event triggered the evaluation.
    #   @return [Time]
    #
    # @!attribute [rw] resource_evaluation_id
    #   A Unique ID for an evaluation result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/EvaluationResultIdentifier AWS API Documentation
    #
    class EvaluationResultIdentifier < Struct.new(
      :evaluation_result_qualifier,
      :ordering_timestamp,
      :resource_evaluation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an Config rule that evaluated an Amazon Web Services
    # resource, and provides the type and ID of the resource that the rule
    # evaluated.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the Config rule that was used in the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the evaluated Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_mode
    #   The mode of an evaluation. The valid values are Detective or
    #   Proactive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/EvaluationResultQualifier AWS API Documentation
    #
    class EvaluationResultQualifier < Struct.new(
      :config_rule_name,
      :resource_type,
      :resource_id,
      :evaluation_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns status details of an evaluation.
    #
    # @!attribute [rw] status
    #   The status of an execution. The valid values are In\_Progress,
    #   Succeeded or Failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   An explanation for failed execution status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/EvaluationStatus AWS API Documentation
    #
    class EvaluationStatus < Struct.new(
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether the configuration recorder excludes resource types
    # from being recorded. Use the `resourceTypes` field to enter a
    # comma-separated list of resource types to exclude as exemptions.
    #
    # @!attribute [rw] resource_types
    #   A comma-separated list of resource types to exclude from recording
    #   by the configuration recorder.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ExclusionByResourceTypes AWS API Documentation
    #
    class ExclusionByResourceTypes < Struct.new(
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The controls that Config uses for executing remediations.
    #
    # @!attribute [rw] ssm_controls
    #   A SsmControls object.
    #   @return [Types::SsmControls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ExecutionControls AWS API Documentation
    #
    class ExecutionControls < Struct.new(
      :ssm_controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an Amazon Web Services resource and indicates whether it
    # complies with the Config rule that it was evaluated against.
    #
    # @!attribute [rw] compliance_resource_type
    #   The evaluated compliance resource type. Config accepts
    #   `AWS::::Account` resource type.
    #   @return [String]
    #
    # @!attribute [rw] compliance_resource_id
    #   The evaluated compliance resource ID. Config accepts only Amazon Web
    #   Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The compliance of the Amazon Web Services resource. The valid values
    #   are `COMPLIANT, NON_COMPLIANT, ` and `NOT_APPLICABLE`.
    #   @return [String]
    #
    # @!attribute [rw] annotation
    #   Supplementary information about the reason of compliance. For
    #   example, this task was completed on a specific date.
    #   @return [String]
    #
    # @!attribute [rw] ordering_timestamp
    #   The time when the compliance was recorded.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ExternalEvaluation AWS API Documentation
    #
    class ExternalEvaluation < Struct.new(
      :compliance_resource_type,
      :compliance_resource_id,
      :compliance_type,
      :annotation,
      :ordering_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of each of the failed delete remediation exceptions with specific
    # reasons.
    #
    # @!attribute [rw] failure_message
    #   Returns a failure message for delete remediation exception. For
    #   example, Config creates an exception due to an internal error.
    #   @return [String]
    #
    # @!attribute [rw] failed_items
    #   Returns remediation exception resource key object of the failed
    #   items.
    #   @return [Array<Types::RemediationExceptionResourceKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/FailedDeleteRemediationExceptionsBatch AWS API Documentation
    #
    class FailedDeleteRemediationExceptionsBatch < Struct.new(
      :failure_message,
      :failed_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of each of the failed remediations with specific reasons.
    #
    # @!attribute [rw] failure_message
    #   Returns a failure message. For example, the resource is already
    #   compliant.
    #   @return [String]
    #
    # @!attribute [rw] failed_items
    #   Returns remediation configurations of the failed items.
    #   @return [Array<Types::RemediationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/FailedRemediationBatch AWS API Documentation
    #
    class FailedRemediationBatch < Struct.new(
      :failure_message,
      :failed_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of each of the failed remediation exceptions with specific
    # reasons.
    #
    # @!attribute [rw] failure_message
    #   Returns a failure message. For example, the auto-remediation has
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] failed_items
    #   Returns remediation exception resource key object of the failed
    #   items.
    #   @return [Array<Types::RemediationException>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/FailedRemediationExceptionBatch AWS API Documentation
    #
    class FailedRemediationExceptionBatch < Struct.new(
      :failure_message,
      :failed_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the fields such as name of the field.
    #
    # @!attribute [rw] name
    #   Name of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/FieldInfo AWS API Documentation
    #
    class FieldInfo < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_name
    #   The name of the Config rule for which you want compliance
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of the source account.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The source region from where the data is aggregated.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The resource compliance status.
    #
    #   <note markdown="1"> For the `GetAggregateComplianceDetailsByConfigRuleRequest` data
    #   type, Config supports only the `COMPLIANT` and `NON_COMPLIANT`.
    #   Config does not support the `NOT_APPLICABLE` and `INSUFFICIENT_DATA`
    #   values.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 50. You cannot specify a number greater than 100. If you
    #   specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateComplianceDetailsByConfigRuleRequest AWS API Documentation
    #
    class GetAggregateComplianceDetailsByConfigRuleRequest < Struct.new(
      :configuration_aggregator_name,
      :config_rule_name,
      :account_id,
      :aws_region,
      :compliance_type,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregate_evaluation_results
    #   Returns an AggregateEvaluationResults object.
    #   @return [Array<Types::AggregateEvaluationResult>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateComplianceDetailsByConfigRuleResponse AWS API Documentation
    #
    class GetAggregateComplianceDetailsByConfigRuleResponse < Struct.new(
      :aggregate_evaluation_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters the results based on the ConfigRuleComplianceSummaryFilters
    #   object.
    #   @return [Types::ConfigRuleComplianceSummaryFilters]
    #
    # @!attribute [rw] group_by_key
    #   Groups the result based on ACCOUNT\_ID or AWS\_REGION.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 1000. You cannot specify a number greater than 1000. If
    #   you specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateConfigRuleComplianceSummaryRequest AWS API Documentation
    #
    class GetAggregateConfigRuleComplianceSummaryRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :group_by_key,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_by_key
    #   Groups the result based on ACCOUNT\_ID or AWS\_REGION.
    #   @return [String]
    #
    # @!attribute [rw] aggregate_compliance_counts
    #   Returns a list of AggregateComplianceCounts object.
    #   @return [Array<Types::AggregateComplianceCount>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateConfigRuleComplianceSummaryResponse AWS API Documentation
    #
    class GetAggregateConfigRuleComplianceSummaryResponse < Struct.new(
      :group_by_key,
      :aggregate_compliance_counts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters the results based on the
    #   `AggregateConformancePackComplianceSummaryFilters` object.
    #   @return [Types::AggregateConformancePackComplianceSummaryFilters]
    #
    # @!attribute [rw] group_by_key
    #   Groups the result based on Amazon Web Services account ID or Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results returned on each page. The default is
    #   maximum. If you specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateConformancePackComplianceSummaryRequest AWS API Documentation
    #
    class GetAggregateConformancePackComplianceSummaryRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :group_by_key,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregate_conformance_pack_compliance_summaries
    #   Returns a list of `AggregateConformancePackComplianceSummary`
    #   object.
    #   @return [Array<Types::AggregateConformancePackComplianceSummary>]
    #
    # @!attribute [rw] group_by_key
    #   Groups the result based on Amazon Web Services account ID or Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateConformancePackComplianceSummaryResponse AWS API Documentation
    #
    class GetAggregateConformancePackComplianceSummaryResponse < Struct.new(
      :aggregate_conformance_pack_compliance_summaries,
      :group_by_key,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters the results based on the `ResourceCountFilters` object.
    #   @return [Types::ResourceCountFilters]
    #
    # @!attribute [rw] group_by_key
    #   The key to group the resource counts.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of GroupedResourceCount objects returned on each
    #   page. The default is 1000. You cannot specify a number greater than
    #   1000. If you specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateDiscoveredResourceCountsRequest AWS API Documentation
    #
    class GetAggregateDiscoveredResourceCountsRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :group_by_key,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] total_discovered_resources
    #   The total number of resources that are present in an aggregator with
    #   the filters that you provide.
    #   @return [Integer]
    #
    # @!attribute [rw] group_by_key
    #   The key passed into the request object. If `GroupByKey` is not
    #   provided, the result will be empty.
    #   @return [String]
    #
    # @!attribute [rw] grouped_resource_counts
    #   Returns a list of GroupedResourceCount objects.
    #   @return [Array<Types::GroupedResourceCount>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateDiscoveredResourceCountsResponse AWS API Documentation
    #
    class GetAggregateDiscoveredResourceCountsResponse < Struct.new(
      :total_discovered_resources,
      :group_by_key,
      :grouped_resource_counts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   An object that identifies aggregate resource.
    #   @return [Types::AggregateResourceIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateResourceConfigRequest AWS API Documentation
    #
    class GetAggregateResourceConfigRequest < Struct.new(
      :configuration_aggregator_name,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_item
    #   Returns a `ConfigurationItem` object.
    #   @return [Types::ConfigurationItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateResourceConfigResponse AWS API Documentation
    #
    class GetAggregateResourceConfigResponse < Struct.new(
      :configuration_item)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   The name of the Config rule for which you want compliance
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] compliance_types
    #   Filters the results by compliance.
    #
    #   `INSUFFICIENT_DATA` is a valid `ComplianceType` that is returned
    #   when an Config rule cannot be evaluated. However,
    #   `INSUFFICIENT_DATA` cannot be used as a `ComplianceType` for
    #   filtering results.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceDetailsByConfigRuleRequest AWS API Documentation
    #
    class GetComplianceDetailsByConfigRuleRequest < Struct.new(
      :config_rule_name,
      :compliance_types,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_results
    #   Indicates whether the Amazon Web Services resource complies with the
    #   specified Config rule.
    #   @return [Array<Types::EvaluationResult>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceDetailsByConfigRuleResponse AWS API Documentation
    #
    class GetComplianceDetailsByConfigRuleResponse < Struct.new(
      :evaluation_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The type of the Amazon Web Services resource for which you want
    #   compliance information.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the Amazon Web Services resource for which you want
    #   compliance information.
    #   @return [String]
    #
    # @!attribute [rw] compliance_types
    #   Filters the results by compliance.
    #
    #   `INSUFFICIENT_DATA` is a valid `ComplianceType` that is returned
    #   when an Config rule cannot be evaluated. However,
    #   `INSUFFICIENT_DATA` cannot be used as a `ComplianceType` for
    #   filtering results.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @!attribute [rw] resource_evaluation_id
    #   The unique ID of Amazon Web Services resource execution for which
    #   you want to retrieve evaluation results.
    #
    #   <note markdown="1"> You need to only provide either a `ResourceEvaluationID` or a
    #   `ResourceID `and `ResourceType`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceDetailsByResourceRequest AWS API Documentation
    #
    class GetComplianceDetailsByResourceRequest < Struct.new(
      :resource_type,
      :resource_id,
      :compliance_types,
      :next_token,
      :resource_evaluation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_results
    #   Indicates whether the specified Amazon Web Services resource
    #   complies each Config rule.
    #   @return [Array<Types::EvaluationResult>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceDetailsByResourceResponse AWS API Documentation
    #
    class GetComplianceDetailsByResourceResponse < Struct.new(
      :evaluation_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_summary
    #   The number of Config rules that are compliant and the number that
    #   are noncompliant, up to a maximum of 25 for each.
    #   @return [Types::ComplianceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceSummaryByConfigRuleResponse AWS API Documentation
    #
    class GetComplianceSummaryByConfigRuleResponse < Struct.new(
      :compliance_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_types
    #   Specify one or more resource types to get the number of resources
    #   that are compliant and the number that are noncompliant for each
    #   resource type.
    #
    #   For this request, you can specify an Amazon Web Services resource
    #   type such as `AWS::EC2::Instance`. You can specify that the resource
    #   type is an Amazon Web Services account by specifying
    #   `AWS::::Account`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceSummaryByResourceTypeRequest AWS API Documentation
    #
    class GetComplianceSummaryByResourceTypeRequest < Struct.new(
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_summaries_by_resource_type
    #   The number of resources that are compliant and the number that are
    #   noncompliant. If one or more resource types were provided with the
    #   request, the numbers are returned for each resource type. The
    #   maximum number returned is 100.
    #   @return [Array<Types::ComplianceSummaryByResourceType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceSummaryByResourceTypeResponse AWS API Documentation
    #
    class GetComplianceSummaryByResourceTypeResponse < Struct.new(
      :compliance_summaries_by_resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_name
    #   Name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `ConformancePackEvaluationFilters` object.
    #   @return [Types::ConformancePackEvaluationFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. If
    #   you do no specify a number, Config uses the default. The default is
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetConformancePackComplianceDetailsRequest AWS API Documentation
    #
    class GetConformancePackComplianceDetailsRequest < Struct.new(
      :conformance_pack_name,
      :filters,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_name
    #   Name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_rule_evaluation_results
    #   Returns a list of `ConformancePackEvaluationResult` objects.
    #   @return [Array<Types::ConformancePackEvaluationResult>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetConformancePackComplianceDetailsResponse AWS API Documentation
    #
    class GetConformancePackComplianceDetailsResponse < Struct.new(
      :conformance_pack_name,
      :conformance_pack_rule_evaluation_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_names
    #   Names of conformance packs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of conformance packs returned on each page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetConformancePackComplianceSummaryRequest AWS API Documentation
    #
    class GetConformancePackComplianceSummaryRequest < Struct.new(
      :conformance_pack_names,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_compliance_summary_list
    #   A list of `ConformancePackComplianceSummary` objects.
    #   @return [Array<Types::ConformancePackComplianceSummary>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetConformancePackComplianceSummaryResponse AWS API Documentation
    #
    class GetConformancePackComplianceSummaryResponse < Struct.new(
      :conformance_pack_compliance_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   The name of your Config Custom Policy rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetCustomRulePolicyRequest AWS API Documentation
    #
    class GetCustomRulePolicyRequest < Struct.new(
      :config_rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_text
    #   The policy definition containing the logic for your Config Custom
    #   Policy rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetCustomRulePolicyResponse AWS API Documentation
    #
    class GetCustomRulePolicyResponse < Struct.new(
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_types
    #   The comma-separated list that specifies the resource types that you
    #   want Config to return (for example, `"AWS::EC2::Instance"`,
    #   `"AWS::IAM::User"`).
    #
    #   If a value for `resourceTypes` is not specified, Config returns all
    #   resource types that Config is recording in the region for your
    #   account.
    #
    #   <note markdown="1"> If the configuration recorder is turned off, Config returns an empty
    #   list of ResourceCount objects. If the configuration recorder is not
    #   recording a specific resource type (for example, S3 buckets), that
    #   resource type is not returned in the list of ResourceCount objects.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of ResourceCount objects returned on each page.
    #   The default is 100. You cannot specify a number greater than 100. If
    #   you specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetDiscoveredResourceCountsRequest AWS API Documentation
    #
    class GetDiscoveredResourceCountsRequest < Struct.new(
      :resource_types,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] total_discovered_resources
    #   The total number of resources that Config is recording in the region
    #   for your account. If you specify resource types in the request,
    #   Config returns only the total number of resources for those resource
    #   types.
    #
    #   **Example**
    #
    #   1.  Config is recording three resource types in the US East (Ohio)
    #       Region for your account: 25 EC2 instances, 20 IAM users, and 15
    #       S3 buckets, for a total of 60 resources.
    #
    #   2.  You make a call to the `GetDiscoveredResourceCounts` action and
    #       specify the resource type, `"AWS::EC2::Instances"`, in the
    #       request.
    #
    #   3.  Config returns 25 for `totalDiscoveredResources`.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_counts
    #   The list of `ResourceCount` objects. Each object is listed in
    #   descending order by the number of resources.
    #   @return [Array<Types::ResourceCount>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetDiscoveredResourceCountsResponse AWS API Documentation
    #
    class GetDiscoveredResourceCountsResponse < Struct.new(
      :total_discovered_resources,
      :resource_counts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_config_rule_name
    #   The name of your organization Config rule for which you want status
    #   details for member accounts.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `StatusDetailFilters` object.
    #   @return [Types::StatusDetailFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of `OrganizationConfigRuleDetailedStatus`
    #   returned on each page. If you do not specify a number, Config uses
    #   the default. The default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetOrganizationConfigRuleDetailedStatusRequest AWS API Documentation
    #
    class GetOrganizationConfigRuleDetailedStatusRequest < Struct.new(
      :organization_config_rule_name,
      :filters,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_config_rule_detailed_status
    #   A list of `MemberAccountStatus` objects.
    #   @return [Array<Types::MemberAccountStatus>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetOrganizationConfigRuleDetailedStatusResponse AWS API Documentation
    #
    class GetOrganizationConfigRuleDetailedStatusResponse < Struct.new(
      :organization_config_rule_detailed_status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_conformance_pack_name
    #   The name of organization conformance pack for which you want status
    #   details for member accounts.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An `OrganizationResourceDetailedStatusFilters` object.
    #   @return [Types::OrganizationResourceDetailedStatusFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of `OrganizationConformancePackDetailedStatuses`
    #   returned on each page. If you do not specify a number, Config uses
    #   the default. The default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetOrganizationConformancePackDetailedStatusRequest AWS API Documentation
    #
    class GetOrganizationConformancePackDetailedStatusRequest < Struct.new(
      :organization_conformance_pack_name,
      :filters,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_conformance_pack_detailed_statuses
    #   A list of `OrganizationConformancePackDetailedStatus` objects.
    #   @return [Array<Types::OrganizationConformancePackDetailedStatus>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetOrganizationConformancePackDetailedStatusResponse AWS API Documentation
    #
    class GetOrganizationConformancePackDetailedStatusResponse < Struct.new(
      :organization_conformance_pack_detailed_statuses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_config_rule_name
    #   The name of your organization Config Custom Policy rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetOrganizationCustomRulePolicyRequest AWS API Documentation
    #
    class GetOrganizationCustomRulePolicyRequest < Struct.new(
      :organization_config_rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_text
    #   The policy definition containing the logic for your organization
    #   Config Custom Policy rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetOrganizationCustomRulePolicyResponse AWS API Documentation
    #
    class GetOrganizationCustomRulePolicyResponse < Struct.new(
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the GetResourceConfigHistory action.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource (for example., `sg-xxxxxx`).
    #   @return [String]
    #
    # @!attribute [rw] later_time
    #   The time stamp that indicates a later time. If not specified,
    #   current time is taken.
    #   @return [Time]
    #
    # @!attribute [rw] earlier_time
    #   The time stamp that indicates an earlier time. If not specified, the
    #   action returns paginated results that contain configuration items
    #   that start when the first configuration item was recorded.
    #   @return [Time]
    #
    # @!attribute [rw] chronological_order
    #   The chronological order for configuration items listed. By default,
    #   the results are listed in reverse chronological order.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of configuration items returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetResourceConfigHistoryRequest AWS API Documentation
    #
    class GetResourceConfigHistoryRequest < Struct.new(
      :resource_type,
      :resource_id,
      :later_time,
      :earlier_time,
      :chronological_order,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the GetResourceConfigHistory action.
    #
    # @!attribute [rw] configuration_items
    #   A list that contains the configuration history of one or more
    #   resources.
    #   @return [Array<Types::ConfigurationItem>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetResourceConfigHistoryResponse AWS API Documentation
    #
    class GetResourceConfigHistoryResponse < Struct.new(
      :configuration_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_evaluation_id
    #   The unique `ResourceEvaluationId` of Amazon Web Services resource
    #   execution for which you want to retrieve the evaluation summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetResourceEvaluationSummaryRequest AWS API Documentation
    #
    class GetResourceEvaluationSummaryRequest < Struct.new(
      :resource_evaluation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_evaluation_id
    #   The unique `ResourceEvaluationId` of Amazon Web Services resource
    #   execution for which you want to retrieve the evaluation summary.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_mode
    #   Lists results of the mode that you requested to retrieve the
    #   resource evaluation summary. The valid values are Detective or
    #   Proactive.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_status
    #   Returns an `EvaluationStatus` object.
    #   @return [Types::EvaluationStatus]
    #
    # @!attribute [rw] evaluation_start_timestamp
    #   The start timestamp when Config rule starts evaluating compliance
    #   for the provided resource details.
    #   @return [Time]
    #
    # @!attribute [rw] compliance
    #   The compliance status of the resource evaluation summary.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_context
    #   Returns an `EvaluationContext` object.
    #   @return [Types::EvaluationContext]
    #
    # @!attribute [rw] resource_details
    #   Returns a `ResourceDetails` object.
    #   @return [Types::ResourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetResourceEvaluationSummaryResponse AWS API Documentation
    #
    class GetResourceEvaluationSummaryResponse < Struct.new(
      :resource_evaluation_id,
      :evaluation_mode,
      :evaluation_status,
      :evaluation_start_timestamp,
      :compliance,
      :evaluation_context,
      :resource_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_name
    #   The name of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetStoredQueryRequest AWS API Documentation
    #
    class GetStoredQueryRequest < Struct.new(
      :query_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stored_query
    #   Returns a `StoredQuery` object.
    #   @return [Types::StoredQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetStoredQueryResponse AWS API Documentation
    #
    class GetStoredQueryResponse < Struct.new(
      :stored_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # The count of resources that are grouped by the group name.
    #
    # @!attribute [rw] group_name
    #   The name of the group that can be region, account ID, or resource
    #   type. For example, region1, region2 if the region was chosen as
    #   `GroupByKey`.
    #   @return [String]
    #
    # @!attribute [rw] resource_count
    #   The number of resources in the group.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GroupedResourceCount AWS API Documentation
    #
    class GroupedResourceCount < Struct.new(
      :group_name,
      :resource_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Using the same client token with one or more different parameters.
    # Specify a new client token with the parameter changes and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/IdempotentParameterMismatch AWS API Documentation
    #
    class IdempotentParameterMismatch < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your Amazon S3 bucket policy does not permit Config to write to it.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InsufficientDeliveryPolicyException AWS API Documentation
    #
    class InsufficientDeliveryPolicyException < Aws::EmptyStructure; end

    # Indicates one of the following errors:
    #
    # * For PutConfigRule, the rule cannot be created because the IAM role
    #   assigned to Config lacks permissions to perform the config:Put*
    #   action.
    #
    # * For PutConfigRule, the Lambda function cannot be invoked. Check the
    #   function ARN, and check the function's permissions.
    #
    # * For PutOrganizationConfigRule, organization Config rule cannot be
    #   created because you do not have permissions to call IAM `GetRole`
    #   action or create a service-linked role.
    #
    # * For PutConformancePack and PutOrganizationConformancePack, a
    #   conformance pack cannot be created because you do not have the
    #   following permissions:
    #
    #   * You do not have permission to call IAM `GetRole` action or create
    #     a service-linked role.
    #
    #   * You do not have permission to read Amazon S3 bucket or call
    #     SSM:GetDocument.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InsufficientPermissionsException AWS API Documentation
    #
    class InsufficientPermissionsException < Aws::EmptyStructure; end

    # You have provided a name for the configuration recorder that is not
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidConfigurationRecorderNameException AWS API Documentation
    #
    class InvalidConfigurationRecorderNameException < Aws::EmptyStructure; end

    # The specified delivery channel name is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidDeliveryChannelNameException AWS API Documentation
    #
    class InvalidDeliveryChannelNameException < Aws::EmptyStructure; end

    # The syntax of the query is incorrect.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidExpressionException AWS API Documentation
    #
    class InvalidExpressionException < Aws::EmptyStructure; end

    # The specified limit is outside the allowable range.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidLimitException AWS API Documentation
    #
    class InvalidLimitException < Aws::EmptyStructure; end

    # The specified next token is not valid. Specify the `nextToken` string
    # that was returned in the previous response to get the next page of
    # results.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Aws::EmptyStructure; end

    # One or more of the specified parameters are not valid. Verify that
    # your parameters are valid and try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Aws::EmptyStructure; end

    # Indicates one of the following errors:
    #
    # * You have provided a combination of parameter values that is not
    #   valid. For example:
    #
    #   * Setting the `allSupported` field of [RecordingGroup][1] to `true`,
    #     but providing a non-empty list for the `resourceTypes`field of
    #     [RecordingGroup][1].
    #
    #   * Setting the `allSupported` field of [RecordingGroup][1] to `true`,
    #     but also setting the `useOnly` field of [RecordingStrategy][2] to
    #     `EXCLUSION_BY_RESOURCE_TYPES`.
    #
    # * Every parameter is either null, false, or empty.
    #
    # * You have reached the limit of the number of resource types you can
    #   provide for the recording group.
    #
    # * You have provided resource types or a recording strategy that are
    #   not valid.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html
    # [2]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidRecordingGroupException AWS API Documentation
    #
    class InvalidRecordingGroupException < Aws::EmptyStructure; end

    # The specified `ResultToken` is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidResultTokenException AWS API Documentation
    #
    class InvalidResultTokenException < Aws::EmptyStructure; end

    # You have provided a null or empty Amazon Resource Name (ARN) for the
    # IAM role assumed by Config and used by the configuration recorder.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidRoleException AWS API Documentation
    #
    class InvalidRoleException < Aws::EmptyStructure; end

    # The specified Amazon S3 key prefix is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidS3KeyPrefixException AWS API Documentation
    #
    class InvalidS3KeyPrefixException < Aws::EmptyStructure; end

    # The specified Amazon KMS Key ARN is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidS3KmsKeyArnException AWS API Documentation
    #
    class InvalidS3KmsKeyArnException < Aws::EmptyStructure; end

    # The specified Amazon SNS topic does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidSNSTopicARNException AWS API Documentation
    #
    class InvalidSNSTopicARNException < Aws::EmptyStructure; end

    # The specified time range is not valid. The earlier time is not
    # chronologically before the later time.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidTimeRangeException AWS API Documentation
    #
    class InvalidTimeRangeException < Aws::EmptyStructure; end

    # You cannot delete the delivery channel you specified because the
    # configuration recorder is running.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/LastDeliveryChannelDeleteFailedException AWS API Documentation
    #
    class LastDeliveryChannelDeleteFailedException < Aws::EmptyStructure; end

    # For `StartConfigRulesEvaluation` API, this exception is thrown if an
    # evaluation is in progress or if you call the
    # StartConfigRulesEvaluation API more than once per minute.
    #
    # For `PutConfigurationAggregator` API, this exception is thrown if the
    # number of accounts and aggregators exceeds the limit.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resources that you want Config to list in the response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters the results based on the `ResourceFilters` object.
    #   @return [Types::ResourceFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of resource identifiers returned on each page.
    #   You cannot specify a number greater than 100. If you specify 0,
    #   Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListAggregateDiscoveredResourcesRequest AWS API Documentation
    #
    class ListAggregateDiscoveredResourcesRequest < Struct.new(
      :configuration_aggregator_name,
      :resource_type,
      :filters,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifiers
    #   Returns a list of `ResourceIdentifiers` objects.
    #   @return [Array<Types::AggregateResourceIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListAggregateDiscoveredResourcesResponse AWS API Documentation
    #
    class ListAggregateDiscoveredResourcesResponse < Struct.new(
      :resource_identifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters the results based on the
    #   `ConformancePackComplianceScoresFilters`.
    #   @return [Types::ConformancePackComplianceScoresFilters]
    #
    # @!attribute [rw] sort_order
    #   Determines the order in which conformance pack compliance scores are
    #   sorted. Either in ascending or descending order.
    #
    #   By default, conformance pack compliance scores are sorted in
    #   alphabetical order by name of the conformance pack. Conformance pack
    #   compliance scores are sorted in reverse alphabetical order if you
    #   enter `DESCENDING`.
    #
    #   You can sort conformance pack compliance scores by the numerical
    #   value of the compliance score by entering `SCORE` in the `SortBy`
    #   action. When compliance scores are sorted by `SCORE`, conformance
    #   packs with a compliance score of `INSUFFICIENT_DATA` will be last
    #   when sorting by ascending order and first when sorting by descending
    #   order.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Sorts your conformance pack compliance scores in either ascending or
    #   descending order, depending on `SortOrder`.
    #
    #   By default, conformance pack compliance scores are sorted in
    #   alphabetical order by name of the conformance pack. Enter `SCORE`,
    #   to sort conformance pack compliance scores by the numerical value of
    #   the compliance score.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of conformance pack compliance scores returned on
    #   each page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string in a prior request that you can use to get
    #   the paginated response for the next set of conformance pack
    #   compliance scores.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListConformancePackComplianceScoresRequest AWS API Documentation
    #
    class ListConformancePackComplianceScoresRequest < Struct.new(
      :filters,
      :sort_order,
      :sort_by,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` string that you can use to get the next page of
    #   results in a paginated response.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_compliance_scores
    #   A list of `ConformancePackComplianceScore` objects.
    #   @return [Array<Types::ConformancePackComplianceScore>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListConformancePackComplianceScoresResponse AWS API Documentation
    #
    class ListConformancePackComplianceScoresResponse < Struct.new(
      :next_token,
      :conformance_pack_compliance_scores)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The type of resources that you want Config to list in the response.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The IDs of only those resources that you want Config to list in the
    #   response. If you do not specify this parameter, Config lists all
    #   resources of the specified type that it has discovered. You can list
    #   a minimum of 1 resourceID and a maximum of 20 resourceIds.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_name
    #   The custom name of only those resources that you want Config to list
    #   in the response. If you do not specify this parameter, Config lists
    #   all resources of the specified type that it has discovered.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of resource identifiers returned on each page.
    #   The default is 100. You cannot specify a number greater than 100. If
    #   you specify 0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] include_deleted_resources
    #   Specifies whether Config includes deleted resources in the results.
    #   By default, deleted resources are not included.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListDiscoveredResourcesRequest AWS API Documentation
    #
    class ListDiscoveredResourcesRequest < Struct.new(
      :resource_type,
      :resource_ids,
      :resource_name,
      :limit,
      :include_deleted_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifiers
    #   The details that identify a resource that is discovered by Config,
    #   including the resource type, ID, and (if available) the custom
    #   resource name.
    #   @return [Array<Types::ResourceIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListDiscoveredResourcesResponse AWS API Documentation
    #
    class ListDiscoveredResourcesResponse < Struct.new(
      :resource_identifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Returns a `ResourceEvaluationFilters` object.
    #   @return [Types::ResourceEvaluationFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluations returned on each page. The default
    #   is 10. You cannot specify a number greater than 100. If you specify
    #   0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListResourceEvaluationsRequest AWS API Documentation
    #
    class ListResourceEvaluationsRequest < Struct.new(
      :filters,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_evaluations
    #   Returns a `ResourceEvaluations` object.
    #   @return [Array<Types::ResourceEvaluation>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListResourceEvaluationsResponse AWS API Documentation
    #
    class ListResourceEvaluationsResponse < Struct.new(
      :resource_evaluations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The nextToken string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListStoredQueriesRequest AWS API Documentation
    #
    class ListStoredQueriesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stored_query_metadata
    #   A list of `StoredQueryMetadata` objects.
    #   @return [Array<Types::StoredQueryMetadata>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all of the
    #   remaining results, the response object's `NextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   this action again and assign that token to the request object's
    #   `NextToken` parameter. If there are no remaining results, the
    #   previous response object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListStoredQueriesResponse AWS API Documentation
    #
    class ListStoredQueriesResponse < Struct.new(
      :stored_query_metadata,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags. Currently, the supported resources are
    #   `ConfigRule`, `ConfigurationAggregator` and
    #   `AggregatorAuthorization`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of tags returned on each page. The limit maximum
    #   is 50. You cannot specify a number greater than 50. If you specify
    #   0, Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the limit of active custom resource types in your
    # account. There is a limit of 100,000. Delete unused resources using
    # [DeleteResourceConfig][1] ``.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteResourceConfig.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxActiveResourcesExceededException AWS API Documentation
    #
    class MaxActiveResourcesExceededException < Aws::EmptyStructure; end

    # Failed to add the Config rule because the account already contains the
    # maximum number of 150 rules. Consider deleting any deactivated rules
    # before you add new rules.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfConfigRulesExceededException AWS API Documentation
    #
    class MaxNumberOfConfigRulesExceededException < Aws::EmptyStructure; end

    # You have reached the limit of the number of configuration recorders
    # you can create.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfConfigurationRecordersExceededException AWS API Documentation
    #
    class MaxNumberOfConfigurationRecordersExceededException < Aws::EmptyStructure; end

    # You have reached the limit of the number of conformance packs you can
    # create in an account. For more information, see [ **Service Limits**
    # ][1] in the *Config Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfConformancePacksExceededException AWS API Documentation
    #
    class MaxNumberOfConformancePacksExceededException < Aws::EmptyStructure; end

    # You have reached the limit of the number of delivery channels you can
    # create.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfDeliveryChannelsExceededException AWS API Documentation
    #
    class MaxNumberOfDeliveryChannelsExceededException < Aws::EmptyStructure; end

    # You have reached the limit of the number of organization Config rules
    # you can create. For more information, see see [ **Service Limits**
    # ][1] in the *Config Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfOrganizationConfigRulesExceededException AWS API Documentation
    #
    class MaxNumberOfOrganizationConfigRulesExceededException < Aws::EmptyStructure; end

    # You have reached the limit of the number of organization conformance
    # packs you can create in an account. For more information, see [
    # **Service Limits** ][1] in the *Config Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfOrganizationConformancePacksExceededException AWS API Documentation
    #
    class MaxNumberOfOrganizationConformancePacksExceededException < Aws::EmptyStructure; end

    # Failed to add the retention configuration because a retention
    # configuration with that name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfRetentionConfigurationsExceededException AWS API Documentation
    #
    class MaxNumberOfRetentionConfigurationsExceededException < Aws::EmptyStructure; end

    # Organization Config rule creation or deletion status in each member
    # account. This includes the name of the rule, the status, error code
    # and error message when the rule creation or deletion failed.
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of a member account.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_name
    #   The name of Config rule deployed in the member account.
    #   @return [String]
    #
    # @!attribute [rw] member_account_rule_status
    #   Indicates deployment status for Config rule in the member account.
    #   When management account calls `PutOrganizationConfigRule` action for
    #   the first time, Config rule status is created in the member account.
    #   When management account calls `PutOrganizationConfigRule` action for
    #   the second time, Config rule status is updated in the member
    #   account. Config rule status is deleted when the management account
    #   deletes `OrganizationConfigRule` and disables service access for
    #   `config-multiaccountsetup.amazonaws.com`.
    #
    #   Config sets the state of the rule to:
    #
    #   * `CREATE_SUCCESSFUL` when Config rule has been created in the
    #     member account.
    #
    #   * `CREATE_IN_PROGRESS` when Config rule is being created in the
    #     member account.
    #
    #   * `CREATE_FAILED` when Config rule creation has failed in the member
    #     account.
    #
    #   * `DELETE_FAILED` when Config rule deletion has failed in the member
    #     account.
    #
    #   * `DELETE_IN_PROGRESS` when Config rule is being deleted in the
    #     member account.
    #
    #   * `DELETE_SUCCESSFUL` when Config rule has been deleted in the
    #     member account.
    #
    #   * `UPDATE_SUCCESSFUL` when Config rule has been updated in the
    #     member account.
    #
    #   * `UPDATE_IN_PROGRESS` when Config rule is being updated in the
    #     member account.
    #
    #   * `UPDATE_FAILED` when Config rule deletion has failed in the member
    #     account.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code that is returned when Config rule creation or deletion
    #   failed in the member account.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message indicating that Config rule account creation or
    #   deletion has failed due to an error in the member account.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The timestamp of the last status update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MemberAccountStatus AWS API Documentation
    #
    class MemberAccountStatus < Struct.new(
      :account_id,
      :config_rule_name,
      :member_account_rule_status,
      :error_code,
      :error_message,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # There are no configuration recorders available to provide the role
    # needed to describe your resources. Create a configuration recorder.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoAvailableConfigurationRecorderException AWS API Documentation
    #
    class NoAvailableConfigurationRecorderException < Aws::EmptyStructure; end

    # There is no delivery channel available to record configurations.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoAvailableDeliveryChannelException AWS API Documentation
    #
    class NoAvailableDeliveryChannelException < Aws::EmptyStructure; end

    # Organization is no longer available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoAvailableOrganizationException AWS API Documentation
    #
    class NoAvailableOrganizationException < Aws::EmptyStructure; end

    # There is no configuration recorder running.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoRunningConfigurationRecorderException AWS API Documentation
    #
    class NoRunningConfigurationRecorderException < Aws::EmptyStructure; end

    # The specified Amazon S3 bucket does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchBucketException AWS API Documentation
    #
    class NoSuchBucketException < Aws::EmptyStructure; end

    # The Config rule in the request is not valid. Verify that the rule is
    # an Config Process Check rule, that the rule name is correct, and that
    # valid Amazon Resouce Names (ARNs) are used before trying again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchConfigRuleException AWS API Documentation
    #
    class NoSuchConfigRuleException < Aws::EmptyStructure; end

    # Config rule that you passed in the filter does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchConfigRuleInConformancePackException AWS API Documentation
    #
    class NoSuchConfigRuleInConformancePackException < Aws::EmptyStructure; end

    # You have specified a configuration aggregator that does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchConfigurationAggregatorException AWS API Documentation
    #
    class NoSuchConfigurationAggregatorException < Aws::EmptyStructure; end

    # You have specified a configuration recorder that does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchConfigurationRecorderException AWS API Documentation
    #
    class NoSuchConfigurationRecorderException < Aws::EmptyStructure; end

    # You specified one or more conformance packs that do not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchConformancePackException AWS API Documentation
    #
    class NoSuchConformancePackException < Aws::EmptyStructure; end

    # You have specified a delivery channel that does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchDeliveryChannelException AWS API Documentation
    #
    class NoSuchDeliveryChannelException < Aws::EmptyStructure; end

    # The Config rule in the request is not valid. Verify that the rule is
    # an organization Config Process Check rule, that the rule name is
    # correct, and that valid Amazon Resouce Names (ARNs) are used before
    # trying again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchOrganizationConfigRuleException AWS API Documentation
    #
    class NoSuchOrganizationConfigRuleException < Aws::EmptyStructure; end

    # Config organization conformance pack that you passed in the filter
    # does not exist.
    #
    # For DeleteOrganizationConformancePack, you tried to delete an
    # organization conformance pack that does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchOrganizationConformancePackException AWS API Documentation
    #
    class NoSuchOrganizationConformancePackException < Aws::EmptyStructure; end

    # You specified an Config rule without a remediation configuration.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchRemediationConfigurationException AWS API Documentation
    #
    class NoSuchRemediationConfigurationException < Aws::EmptyStructure; end

    # You tried to delete a remediation exception that does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchRemediationExceptionException AWS API Documentation
    #
    class NoSuchRemediationExceptionException < Aws::EmptyStructure; end

    # You have specified a retention configuration that does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchRetentionConfigurationException AWS API Documentation
    #
    class NoSuchRetentionConfigurationException < Aws::EmptyStructure; end

    # For `PutConfigurationAggregator` API, you can see this exception for
    # the following reasons:
    #
    # * No permission to call `EnableAWSServiceAccess` API
    #
    # * The configuration aggregator cannot be updated because your Amazon
    #   Web Services Organization management account or the delegated
    #   administrator role changed. Delete this aggregator and create a new
    #   one with the current Amazon Web Services Organization.
    #
    # * The configuration aggregator is associated with a previous Amazon
    #   Web Services Organization and Config cannot aggregate data with
    #   current Amazon Web Services Organization. Delete this aggregator and
    #   create a new one with the current Amazon Web Services Organization.
    #
    # * You are not a registered delegated administrator for Config with
    #   permissions to call `ListDelegatedAdministrators` API. Ensure that
    #   the management account registers delagated administrator for Config
    #   service principle name before the delegated administrator creates an
    #   aggregator.
    #
    # For all `OrganizationConfigRule` and `OrganizationConformancePack`
    # APIs, Config throws an exception if APIs are called from member
    # accounts. All APIs must be called from organization management
    # account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationAccessDeniedException AWS API Documentation
    #
    class OrganizationAccessDeniedException < Aws::EmptyStructure; end

    # This object contains regions to set up the aggregator and an IAM role
    # to retrieve organization details.
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role used to retrieve Amazon Web Services
    #   Organization details associated with the aggregator account.
    #   @return [String]
    #
    # @!attribute [rw] aws_regions
    #   The source regions being aggregated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] all_aws_regions
    #   If true, aggregate existing Config regions and future regions.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationAggregationSource AWS API Documentation
    #
    class OrganizationAggregationSource < Struct.new(
      :role_arn,
      :aws_regions,
      :all_aws_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Config resource cannot be created because your organization does not
    # have all features enabled.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationAllFeaturesNotEnabledException AWS API Documentation
    #
    class OrganizationAllFeaturesNotEnabledException < Aws::EmptyStructure; end

    # An organization Config rule that has information about Config rules
    # that Config creates in member accounts.
    #
    # @!attribute [rw] organization_config_rule_name
    #   The name that you assign to organization Config rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_config_rule_arn
    #   Amazon Resource Name (ARN) of organization Config rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_managed_rule_metadata
    #   An `OrganizationManagedRuleMetadata` object.
    #   @return [Types::OrganizationManagedRuleMetadata]
    #
    # @!attribute [rw] organization_custom_rule_metadata
    #   An `OrganizationCustomRuleMetadata` object.
    #   @return [Types::OrganizationCustomRuleMetadata]
    #
    # @!attribute [rw] excluded_accounts
    #   A comma-separated list of accounts excluded from organization Config
    #   rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_update_time
    #   The timestamp of the last update.
    #   @return [Time]
    #
    # @!attribute [rw] organization_custom_policy_rule_metadata
    #   An object that specifies metadata for your organization's Config
    #   Custom Policy rule. The metadata includes the runtime system in use,
    #   which accounts have debug logging enabled, and other custom rule
    #   metadata, such as resource type, resource ID of Amazon Web Services
    #   resource, and organization trigger types that initiate Config to
    #   evaluate Amazon Web Services resources against a rule.
    #   @return [Types::OrganizationCustomPolicyRuleMetadataNoPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationConfigRule AWS API Documentation
    #
    class OrganizationConfigRule < Struct.new(
      :organization_config_rule_name,
      :organization_config_rule_arn,
      :organization_managed_rule_metadata,
      :organization_custom_rule_metadata,
      :excluded_accounts,
      :last_update_time,
      :organization_custom_policy_rule_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the status for an organization Config rule in an organization.
    #
    # @!attribute [rw] organization_config_rule_name
    #   The name that you assign to organization Config rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_rule_status
    #   Indicates deployment status of an organization Config rule. When
    #   management account calls PutOrganizationConfigRule action for the
    #   first time, Config rule status is created in all the member
    #   accounts. When management account calls PutOrganizationConfigRule
    #   action for the second time, Config rule status is updated in all the
    #   member accounts. Additionally, Config rule status is updated when
    #   one or more member accounts join or leave an organization. Config
    #   rule status is deleted when the management account deletes
    #   OrganizationConfigRule in all the member accounts and disables
    #   service access for `config-multiaccountsetup.amazonaws.com`.
    #
    #   Config sets the state of the rule to:
    #
    #   * `CREATE_SUCCESSFUL` when an organization Config rule has been
    #     successfully created in all the member accounts.
    #
    #   * `CREATE_IN_PROGRESS` when an organization Config rule creation is
    #     in progress.
    #
    #   * `CREATE_FAILED` when an organization Config rule creation failed
    #     in one or more member accounts within that organization.
    #
    #   * `DELETE_FAILED` when an organization Config rule deletion failed
    #     in one or more member accounts within that organization.
    #
    #   * `DELETE_IN_PROGRESS` when an organization Config rule deletion is
    #     in progress.
    #
    #   * `DELETE_SUCCESSFUL` when an organization Config rule has been
    #     successfully deleted from all the member accounts.
    #
    #   * `UPDATE_SUCCESSFUL` when an organization Config rule has been
    #     successfully updated in all the member accounts.
    #
    #   * `UPDATE_IN_PROGRESS` when an organization Config rule update is in
    #     progress.
    #
    #   * `UPDATE_FAILED` when an organization Config rule update failed in
    #     one or more member accounts within that organization.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code that is returned when organization Config rule
    #   creation or deletion has failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message indicating that organization Config rule creation
    #   or deletion failed due to an error.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The timestamp of the last update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationConfigRuleStatus AWS API Documentation
    #
    class OrganizationConfigRuleStatus < Struct.new(
      :organization_config_rule_name,
      :organization_rule_status,
      :error_code,
      :error_message,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An organization conformance pack that has information about
    # conformance packs that Config creates in member accounts.
    #
    # @!attribute [rw] organization_conformance_pack_name
    #   The name you assign to an organization conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] organization_conformance_pack_arn
    #   Amazon Resource Name (ARN) of organization conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_bucket
    #   The name of the Amazon S3 bucket where Config stores conformance
    #   pack templates.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_key_prefix
    #   Any folder structure you want to add to an Amazon S3 bucket.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #   @return [Array<Types::ConformancePackInputParameter>]
    #
    # @!attribute [rw] excluded_accounts
    #   A comma-separated list of accounts excluded from organization
    #   conformance pack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_update_time
    #   Last time when organization conformation pack was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationConformancePack AWS API Documentation
    #
    class OrganizationConformancePack < Struct.new(
      :organization_conformance_pack_name,
      :organization_conformance_pack_arn,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :excluded_accounts,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Organization conformance pack creation or deletion status in each
    # member account. This includes the name of the conformance pack, the
    # status, error code and error message when the conformance pack
    # creation or deletion failed.
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of a member account.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_name
    #   The name of conformance pack deployed in the member account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates deployment status for conformance pack in a member
    #   account. When management account calls
    #   `PutOrganizationConformancePack` action for the first time,
    #   conformance pack status is created in the member account. When
    #   management account calls `PutOrganizationConformancePack` action for
    #   the second time, conformance pack status is updated in the member
    #   account. Conformance pack status is deleted when the management
    #   account deletes `OrganizationConformancePack` and disables service
    #   access for `config-multiaccountsetup.amazonaws.com`.
    #
    #   Config sets the state of the conformance pack to:
    #
    #   * `CREATE_SUCCESSFUL` when conformance pack has been created in the
    #     member account.
    #
    #   * `CREATE_IN_PROGRESS` when conformance pack is being created in the
    #     member account.
    #
    #   * `CREATE_FAILED` when conformance pack creation has failed in the
    #     member account.
    #
    #   * `DELETE_FAILED` when conformance pack deletion has failed in the
    #     member account.
    #
    #   * `DELETE_IN_PROGRESS` when conformance pack is being deleted in the
    #     member account.
    #
    #   * `DELETE_SUCCESSFUL` when conformance pack has been deleted in the
    #     member account.
    #
    #   * `UPDATE_SUCCESSFUL` when conformance pack has been updated in the
    #     member account.
    #
    #   * `UPDATE_IN_PROGRESS` when conformance pack is being updated in the
    #     member account.
    #
    #   * `UPDATE_FAILED` when conformance pack deletion has failed in the
    #     member account.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code that is returned when conformance pack creation or
    #   deletion failed in the member account.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message indicating that conformance pack account creation
    #   or deletion has failed due to an error in the member account.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The timestamp of the last status update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationConformancePackDetailedStatus AWS API Documentation
    #
    class OrganizationConformancePackDetailedStatus < Struct.new(
      :account_id,
      :conformance_pack_name,
      :status,
      :error_code,
      :error_message,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the status for an organization conformance pack in an
    # organization.
    #
    # @!attribute [rw] organization_conformance_pack_name
    #   The name that you assign to organization conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates deployment status of an organization conformance pack.
    #   When management account calls PutOrganizationConformancePack for the
    #   first time, conformance pack status is created in all the member
    #   accounts. When management account calls
    #   PutOrganizationConformancePack for the second time, conformance pack
    #   status is updated in all the member accounts. Additionally,
    #   conformance pack status is updated when one or more member accounts
    #   join or leave an organization. Conformance pack status is deleted
    #   when the management account deletes OrganizationConformancePack in
    #   all the member accounts and disables service access for
    #   `config-multiaccountsetup.amazonaws.com`.
    #
    #   Config sets the state of the conformance pack to:
    #
    #   * `CREATE_SUCCESSFUL` when an organization conformance pack has been
    #     successfully created in all the member accounts.
    #
    #   * `CREATE_IN_PROGRESS` when an organization conformance pack
    #     creation is in progress.
    #
    #   * `CREATE_FAILED` when an organization conformance pack creation
    #     failed in one or more member accounts within that organization.
    #
    #   * `DELETE_FAILED` when an organization conformance pack deletion
    #     failed in one or more member accounts within that organization.
    #
    #   * `DELETE_IN_PROGRESS` when an organization conformance pack
    #     deletion is in progress.
    #
    #   * `DELETE_SUCCESSFUL` when an organization conformance pack has been
    #     successfully deleted from all the member accounts.
    #
    #   * `UPDATE_SUCCESSFUL` when an organization conformance pack has been
    #     successfully updated in all the member accounts.
    #
    #   * `UPDATE_IN_PROGRESS` when an organization conformance pack update
    #     is in progress.
    #
    #   * `UPDATE_FAILED` when an organization conformance pack update
    #     failed in one or more member accounts within that organization.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code that is returned when organization conformance pack
    #   creation or deletion has failed in a member account.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message indicating that organization conformance pack
    #   creation or deletion failed due to an error.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The timestamp of the last update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationConformancePackStatus AWS API Documentation
    #
    class OrganizationConformancePackStatus < Struct.new(
      :organization_conformance_pack_name,
      :status,
      :error_code,
      :error_message,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have specified a template that is not valid or supported.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationConformancePackTemplateValidationException AWS API Documentation
    #
    class OrganizationConformancePackTemplateValidationException < Aws::EmptyStructure; end

    # An object that specifies metadata for your organization's Config
    # Custom Policy rule. The metadata includes the runtime system in use,
    # which accounts have debug logging enabled, and other custom rule
    # metadata, such as resource type, resource ID of Amazon Web Services
    # resource, and organization trigger types that initiate Config to
    # evaluate Amazon Web Services resources against a rule.
    #
    # @!attribute [rw] description
    #   The description that you provide for your organization Config Custom
    #   Policy rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_config_rule_trigger_types
    #   The type of notification that initiates Config to run an evaluation
    #   for a rule. For Config Custom Policy rules, Config supports
    #   change-initiated notification types:
    #
    #   * `ConfigurationItemChangeNotification` - Initiates an evaluation
    #     when Config delivers a configuration item as a result of a
    #     resource change.
    #
    #   * `OversizedConfigurationItemChangeNotification` - Initiates an
    #     evaluation when Config delivers an oversized configuration item.
    #     Config may generate this notification type when a resource changes
    #     and the notification exceeds the maximum size allowed by Amazon
    #     SNS.
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_parameters
    #   A string, in JSON format, that is passed to your organization Config
    #   Custom Policy rule.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The maximum frequency with which Config runs evaluations for a rule.
    #   Your Config Custom Policy rule is triggered when Config delivers the
    #   configuration snapshot. For more information, see
    #   ConfigSnapshotDeliveryProperties.
    #   @return [String]
    #
    # @!attribute [rw] resource_types_scope
    #   The type of the Amazon Web Services resource that was evaluated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_id_scope
    #   The ID of the Amazon Web Services resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] tag_key_scope
    #   One part of a key-value pair that make up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] tag_value_scope
    #   The optional part of a key-value pair that make up a tag. A value
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @!attribute [rw] policy_runtime
    #   The runtime system for your organization Config Custom Policy rules.
    #   Guard is a policy-as-code language that allows you to write policies
    #   that are enforced by Config Custom Policy rules. For more
    #   information about Guard, see the [Guard GitHub Repository][1].
    #
    #
    #
    #   [1]: https://github.com/aws-cloudformation/cloudformation-guard
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The policy definition containing the logic for your organization
    #   Config Custom Policy rule.
    #   @return [String]
    #
    # @!attribute [rw] debug_log_delivery_accounts
    #   A list of accounts that you can enable debug logging for your
    #   organization Config Custom Policy rule. List is null when debug
    #   logging is enabled for all accounts.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationCustomPolicyRuleMetadata AWS API Documentation
    #
    class OrganizationCustomPolicyRuleMetadata < Struct.new(
      :description,
      :organization_config_rule_trigger_types,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope,
      :policy_runtime,
      :policy_text,
      :debug_log_delivery_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # metadata for your organization Config Custom Policy rule including the
    # runtime system in use, which accounts have debug logging enabled, and
    # other custom rule metadata such as resource type, resource ID of
    # Amazon Web Services resource, and organization trigger types that
    # trigger Config to evaluate Amazon Web Services resources against a
    # rule.
    #
    # @!attribute [rw] description
    #   The description that you provide for your organization Config Custom
    #   Policy rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_config_rule_trigger_types
    #   The type of notification that triggers Config to run an evaluation
    #   for a rule. For Config Custom Policy rules, Config supports change
    #   triggered notification types:
    #
    #   * `ConfigurationItemChangeNotification` - Triggers an evaluation
    #     when Config delivers a configuration item as a result of a
    #     resource change.
    #
    #   * `OversizedConfigurationItemChangeNotification` - Triggers an
    #     evaluation when Config delivers an oversized configuration item.
    #     Config may generate this notification type when a resource changes
    #     and the notification exceeds the maximum size allowed by Amazon
    #     SNS.
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_parameters
    #   A string, in JSON format, that is passed to your organization Config
    #   Custom Policy rule.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The maximum frequency with which Config runs evaluations for a rule.
    #   Your Config Custom Policy rule is triggered when Config delivers the
    #   configuration snapshot. For more information, see
    #   ConfigSnapshotDeliveryProperties.
    #   @return [String]
    #
    # @!attribute [rw] resource_types_scope
    #   The type of the Amazon Web Services resource that was evaluated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_id_scope
    #   The ID of the Amazon Web Services resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] tag_key_scope
    #   One part of a key-value pair that make up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] tag_value_scope
    #   The optional part of a key-value pair that make up a tag. A value
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @!attribute [rw] policy_runtime
    #   The runtime system for your organization Config Custom Policy rules.
    #   Guard is a policy-as-code language that allows you to write policies
    #   that are enforced by Config Custom Policy rules. For more
    #   information about Guard, see the [Guard GitHub Repository][1].
    #
    #
    #
    #   [1]: https://github.com/aws-cloudformation/cloudformation-guard
    #   @return [String]
    #
    # @!attribute [rw] debug_log_delivery_accounts
    #   A list of accounts that you can enable debug logging for your
    #   organization Config Custom Policy rule. List is null when debug
    #   logging is enabled for all accounts.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationCustomPolicyRuleMetadataNoPolicy AWS API Documentation
    #
    class OrganizationCustomPolicyRuleMetadataNoPolicy < Struct.new(
      :description,
      :organization_config_rule_trigger_types,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope,
      :policy_runtime,
      :debug_log_delivery_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # organization custom rule metadata such as resource type, resource ID
    # of Amazon Web Services resource, Lambda function ARN, and organization
    # trigger types that trigger Config to evaluate your Amazon Web Services
    # resources against a rule. It also provides the frequency with which
    # you want Config to run evaluations for the rule if the trigger type is
    # periodic.
    #
    # @!attribute [rw] description
    #   The description that you provide for your organization Config rule.
    #   @return [String]
    #
    # @!attribute [rw] lambda_function_arn
    #   The lambda function ARN.
    #   @return [String]
    #
    # @!attribute [rw] organization_config_rule_trigger_types
    #   The type of notification that triggers Config to run an evaluation
    #   for a rule. You can specify the following notification types:
    #
    #   * `ConfigurationItemChangeNotification` - Triggers an evaluation
    #     when Config delivers a configuration item as a result of a
    #     resource change.
    #
    #   * `OversizedConfigurationItemChangeNotification` - Triggers an
    #     evaluation when Config delivers an oversized configuration item.
    #     Config may generate this notification type when a resource changes
    #     and the notification exceeds the maximum size allowed by Amazon
    #     SNS.
    #
    #   * `ScheduledNotification` - Triggers a periodic evaluation at the
    #     frequency specified for `MaximumExecutionFrequency`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_parameters
    #   A string, in JSON format, that is passed to your organization Config
    #   rule Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The maximum frequency with which Config runs evaluations for a rule.
    #   Your custom rule is triggered when Config delivers the configuration
    #   snapshot. For more information, see
    #   ConfigSnapshotDeliveryProperties.
    #
    #   <note markdown="1"> By default, rules with a periodic trigger are evaluated every 24
    #   hours. To change the frequency, specify a valid value for the
    #   `MaximumExecutionFrequency` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_types_scope
    #   The type of the Amazon Web Services resource that was evaluated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_id_scope
    #   The ID of the Amazon Web Services resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] tag_key_scope
    #   One part of a key-value pair that make up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] tag_value_scope
    #   The optional part of a key-value pair that make up a tag. A value
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationCustomRuleMetadata AWS API Documentation
    #
    class OrganizationCustomRuleMetadata < Struct.new(
      :description,
      :lambda_function_arn,
      :organization_config_rule_trigger_types,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # organization managed rule metadata such as resource type and ID of
    # Amazon Web Services resource along with the rule identifier. It also
    # provides the frequency with which you want Config to run evaluations
    # for the rule if the trigger type is periodic.
    #
    # @!attribute [rw] description
    #   The description that you provide for your organization Config rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_identifier
    #   For organization config managed rules, a predefined identifier from
    #   a list. For example, `IAM_PASSWORD_POLICY` is a managed rule. To
    #   reference a managed rule, see [Using Config managed rules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html
    #   @return [String]
    #
    # @!attribute [rw] input_parameters
    #   A string, in JSON format, that is passed to your organization Config
    #   rule Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The maximum frequency with which Config runs evaluations for a rule.
    #   This is for an Config managed rule that is triggered at a periodic
    #   frequency.
    #
    #   <note markdown="1"> By default, rules with a periodic trigger are evaluated every 24
    #   hours. To change the frequency, specify a valid value for the
    #   `MaximumExecutionFrequency` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_types_scope
    #   The type of the Amazon Web Services resource that was evaluated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_id_scope
    #   The ID of the Amazon Web Services resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] tag_key_scope
    #   One part of a key-value pair that make up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] tag_value_scope
    #   The optional part of a key-value pair that make up a tag. A value
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationManagedRuleMetadata AWS API Documentation
    #
    class OrganizationManagedRuleMetadata < Struct.new(
      :description,
      :rule_identifier,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status filter object to filter results based on specific member
    # account ID or status type for an organization conformance pack.
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of the member account within an
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates deployment status for conformance pack in a member
    #   account. When management account calls
    #   `PutOrganizationConformancePack` action for the first time,
    #   conformance pack status is created in the member account. When
    #   management account calls `PutOrganizationConformancePack` action for
    #   the second time, conformance pack status is updated in the member
    #   account. Conformance pack status is deleted when the management
    #   account deletes `OrganizationConformancePack` and disables service
    #   access for `config-multiaccountsetup.amazonaws.com`.
    #
    #   Config sets the state of the conformance pack to:
    #
    #   * `CREATE_SUCCESSFUL` when conformance pack has been created in the
    #     member account.
    #
    #   * `CREATE_IN_PROGRESS` when conformance pack is being created in the
    #     member account.
    #
    #   * `CREATE_FAILED` when conformance pack creation has failed in the
    #     member account.
    #
    #   * `DELETE_FAILED` when conformance pack deletion has failed in the
    #     member account.
    #
    #   * `DELETE_IN_PROGRESS` when conformance pack is being deleted in the
    #     member account.
    #
    #   * `DELETE_SUCCESSFUL` when conformance pack has been deleted in the
    #     member account.
    #
    #   * `UPDATE_SUCCESSFUL` when conformance pack has been updated in the
    #     member account.
    #
    #   * `UPDATE_IN_PROGRESS` when conformance pack is being updated in the
    #     member account.
    #
    #   * `UPDATE_FAILED` when conformance pack deletion has failed in the
    #     member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationResourceDetailedStatusFilters AWS API Documentation
    #
    class OrganizationResourceDetailedStatusFilters < Struct.new(
      :account_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration item size is outside the allowable range.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OversizedConfigurationItemException AWS API Documentation
    #
    class OversizedConfigurationItemException < Aws::EmptyStructure; end

    # An object that represents the account ID and region of an aggregator
    # account that is requesting authorization but is not yet authorized.
    #
    # @!attribute [rw] requester_account_id
    #   The 12-digit account ID of the account requesting to aggregate data.
    #   @return [String]
    #
    # @!attribute [rw] requester_aws_region
    #   The region requesting to aggregate data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PendingAggregationRequest AWS API Documentation
    #
    class PendingAggregationRequest < Struct.new(
      :requester_account_id,
      :requester_aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorized_account_id
    #   The 12-digit account ID of the account authorized to aggregate data.
    #   @return [String]
    #
    # @!attribute [rw] authorized_aws_region
    #   The region authorized to collect aggregated data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tag object.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutAggregationAuthorizationRequest AWS API Documentation
    #
    class PutAggregationAuthorizationRequest < Struct.new(
      :authorized_account_id,
      :authorized_aws_region,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregation_authorization
    #   Returns an AggregationAuthorization object.
    #   @return [Types::AggregationAuthorization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutAggregationAuthorizationResponse AWS API Documentation
    #
    class PutAggregationAuthorizationResponse < Struct.new(
      :aggregation_authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule
    #   The rule that you want to add to your account.
    #   @return [Types::ConfigRule]
    #
    # @!attribute [rw] tags
    #   An array of tag object.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigRuleRequest AWS API Documentation
    #
    class PutConfigRuleRequest < Struct.new(
      :config_rule,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] account_aggregation_sources
    #   A list of AccountAggregationSource object.
    #   @return [Array<Types::AccountAggregationSource>]
    #
    # @!attribute [rw] organization_aggregation_source
    #   An OrganizationAggregationSource object.
    #   @return [Types::OrganizationAggregationSource]
    #
    # @!attribute [rw] tags
    #   An array of tag object.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigurationAggregatorRequest AWS API Documentation
    #
    class PutConfigurationAggregatorRequest < Struct.new(
      :configuration_aggregator_name,
      :account_aggregation_sources,
      :organization_aggregation_source,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregator
    #   Returns a ConfigurationAggregator object.
    #   @return [Types::ConfigurationAggregator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigurationAggregatorResponse AWS API Documentation
    #
    class PutConfigurationAggregatorResponse < Struct.new(
      :configuration_aggregator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the PutConfigurationRecorder action.
    #
    # @!attribute [rw] configuration_recorder
    #   An object for the configuration recorder to record configuration
    #   changes for specified resource types.
    #   @return [Types::ConfigurationRecorder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigurationRecorderRequest AWS API Documentation
    #
    class PutConfigurationRecorderRequest < Struct.new(
      :configuration_recorder)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_name
    #   The unique name of the conformance pack you want to deploy.
    #   @return [String]
    #
    # @!attribute [rw] template_s3_uri
    #   The location of the file containing the template body
    #   (`s3://bucketname/prefix`). The uri must point to a conformance pack
    #   template (max size: 300 KB) that is located in an Amazon S3 bucket
    #   in the same Region as the conformance pack.
    #
    #   <note markdown="1"> You must have access to read Amazon S3 bucket.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   A string containing the full conformance pack template body. The
    #   structure containing the template body has a minimum length of 1
    #   byte and a maximum length of 51,200 bytes.
    #
    #   <note markdown="1"> You can use a YAML template with two resource types: Config rule
    #   (`AWS::Config::ConfigRule`) and remediation action
    #   (`AWS::Config::RemediationConfiguration`).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_bucket
    #   The name of the Amazon S3 bucket where Config stores conformance
    #   pack templates.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #   @return [Array<Types::ConformancePackInputParameter>]
    #
    # @!attribute [rw] template_ssm_document_details
    #   An object of type `TemplateSSMDocumentDetails`, which contains the
    #   name or the Amazon Resource Name (ARN) of the Amazon Web Services
    #   Systems Manager document (SSM document) and the version of the SSM
    #   document that is used to create a conformance pack.
    #   @return [Types::TemplateSSMDocumentDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConformancePackRequest AWS API Documentation
    #
    class PutConformancePackRequest < Struct.new(
      :conformance_pack_name,
      :template_s3_uri,
      :template_body,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :template_ssm_document_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conformance_pack_arn
    #   ARN of the conformance pack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConformancePackResponse AWS API Documentation
    #
    class PutConformancePackResponse < Struct.new(
      :conformance_pack_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the PutDeliveryChannel action.
    #
    # @!attribute [rw] delivery_channel
    #   The configuration delivery channel object that delivers the
    #   configuration information to an Amazon S3 bucket and to an Amazon
    #   SNS topic.
    #   @return [Types::DeliveryChannel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutDeliveryChannelRequest AWS API Documentation
    #
    class PutDeliveryChannelRequest < Struct.new(
      :delivery_channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluations
    #   The assessments that the Lambda function performs. Each evaluation
    #   identifies an Amazon Web Services resource and indicates whether it
    #   complies with the Config rule that invokes the Lambda function.
    #   @return [Array<Types::Evaluation>]
    #
    # @!attribute [rw] result_token
    #   An encrypted token that associates an evaluation with an Config
    #   rule. Identifies the rule and the event that triggered the
    #   evaluation.
    #   @return [String]
    #
    # @!attribute [rw] test_mode
    #   Use this parameter to specify a test run for `PutEvaluations`. You
    #   can verify whether your Lambda function will deliver evaluation
    #   results to Config. No updates occur to your existing evaluations,
    #   and evaluation results are not sent to Config.
    #
    #   <note markdown="1"> When `TestMode` is `true`, `PutEvaluations` doesn't require a valid
    #   value for the `ResultToken` parameter, but the value cannot be null.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutEvaluationsRequest AWS API Documentation
    #
    class PutEvaluationsRequest < Struct.new(
      :evaluations,
      :result_token,
      :test_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_evaluations
    #   Requests that failed because of a client or server error.
    #   @return [Array<Types::Evaluation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutEvaluationsResponse AWS API Documentation
    #
    class PutEvaluationsResponse < Struct.new(
      :failed_evaluations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   The name of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] external_evaluation
    #   An `ExternalEvaluation` object that provides details about
    #   compliance.
    #   @return [Types::ExternalEvaluation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutExternalEvaluationRequest AWS API Documentation
    #
    class PutExternalEvaluationRequest < Struct.new(
      :config_rule_name,
      :external_evaluation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutExternalEvaluationResponse AWS API Documentation
    #
    class PutExternalEvaluationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] organization_config_rule_name
    #   The name that you assign to an organization Config rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_managed_rule_metadata
    #   An `OrganizationManagedRuleMetadata` object. This object specifies
    #   organization managed rule metadata such as resource type and ID of
    #   Amazon Web Services resource along with the rule identifier. It also
    #   provides the frequency with which you want Config to run evaluations
    #   for the rule if the trigger type is periodic.
    #   @return [Types::OrganizationManagedRuleMetadata]
    #
    # @!attribute [rw] organization_custom_rule_metadata
    #   An `OrganizationCustomRuleMetadata` object. This object specifies
    #   organization custom rule metadata such as resource type, resource ID
    #   of Amazon Web Services resource, Lambda function ARN, and
    #   organization trigger types that trigger Config to evaluate your
    #   Amazon Web Services resources against a rule. It also provides the
    #   frequency with which you want Config to run evaluations for the rule
    #   if the trigger type is periodic.
    #   @return [Types::OrganizationCustomRuleMetadata]
    #
    # @!attribute [rw] excluded_accounts
    #   A comma-separated list of accounts that you want to exclude from an
    #   organization Config rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organization_custom_policy_rule_metadata
    #   An `OrganizationCustomPolicyRuleMetadata` object. This object
    #   specifies metadata for your organization's Config Custom Policy
    #   rule. The metadata includes the runtime system in use, which
    #   accounts have debug logging enabled, and other custom rule metadata,
    #   such as resource type, resource ID of Amazon Web Services resource,
    #   and organization trigger types that initiate Config to evaluate
    #   Amazon Web Services resources against a rule.
    #   @return [Types::OrganizationCustomPolicyRuleMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutOrganizationConfigRuleRequest AWS API Documentation
    #
    class PutOrganizationConfigRuleRequest < Struct.new(
      :organization_config_rule_name,
      :organization_managed_rule_metadata,
      :organization_custom_rule_metadata,
      :excluded_accounts,
      :organization_custom_policy_rule_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_config_rule_arn
    #   The Amazon Resource Name (ARN) of an organization Config rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutOrganizationConfigRuleResponse AWS API Documentation
    #
    class PutOrganizationConfigRuleResponse < Struct.new(
      :organization_config_rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_conformance_pack_name
    #   Name of the organization conformance pack you want to create.
    #   @return [String]
    #
    # @!attribute [rw] template_s3_uri
    #   Location of file containing the template body. The uri must point to
    #   the conformance pack template (max size: 300 KB).
    #
    #   <note markdown="1"> You must have access to read Amazon S3 bucket.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   A string containing full conformance pack template body. Structure
    #   containing the template body with a minimum length of 1 byte and a
    #   maximum length of 51,200 bytes.
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_bucket
    #   The name of the Amazon S3 bucket where Config stores conformance
    #   pack templates.
    #
    #   <note markdown="1"> This field is optional. If used, it must be prefixed with
    #   `awsconfigconforms`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #   @return [Array<Types::ConformancePackInputParameter>]
    #
    # @!attribute [rw] excluded_accounts
    #   A list of Amazon Web Services accounts to be excluded from an
    #   organization conformance pack while deploying a conformance pack.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutOrganizationConformancePackRequest AWS API Documentation
    #
    class PutOrganizationConformancePackRequest < Struct.new(
      :organization_conformance_pack_name,
      :template_s3_uri,
      :template_body,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :excluded_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_conformance_pack_arn
    #   ARN of the organization conformance pack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutOrganizationConformancePackResponse AWS API Documentation
    #
    class PutOrganizationConformancePackResponse < Struct.new(
      :organization_conformance_pack_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] remediation_configurations
    #   A list of remediation configuration objects.
    #   @return [Array<Types::RemediationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRemediationConfigurationsRequest AWS API Documentation
    #
    class PutRemediationConfigurationsRequest < Struct.new(
      :remediation_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_batches
    #   Returns a list of failed remediation batch objects.
    #   @return [Array<Types::FailedRemediationBatch>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRemediationConfigurationsResponse AWS API Documentation
    #
    class PutRemediationConfigurationsResponse < Struct.new(
      :failed_batches)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   The name of the Config rule for which you want to create remediation
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_keys
    #   An exception list of resource exception keys to be processed with
    #   the current request. Config adds exception for each resource key.
    #   For example, Config adds 3 exceptions for 3 resource keys.
    #   @return [Array<Types::RemediationExceptionResourceKey>]
    #
    # @!attribute [rw] message
    #   The message contains an explanation of the exception.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   The exception is automatically deleted after the expiration date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRemediationExceptionsRequest AWS API Documentation
    #
    class PutRemediationExceptionsRequest < Struct.new(
      :config_rule_name,
      :resource_keys,
      :message,
      :expiration_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_batches
    #   Returns a list of failed remediation exceptions batch objects. Each
    #   object in the batch consists of a list of failed items and failure
    #   messages.
    #   @return [Array<Types::FailedRemediationExceptionBatch>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRemediationExceptionsResponse AWS API Documentation
    #
    class PutRemediationExceptionsResponse < Struct.new(
      :failed_batches)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The type of the resource. The custom resource type must be
    #   registered with CloudFormation.
    #
    #   <note markdown="1"> You cannot use the organization names “amzn”, “amazon”, “alexa”,
    #   “custom” with custom resource types. It is the first part of the
    #   ResourceType up to the first ::.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] schema_version_id
    #   Version of the schema registered for the ResourceType in
    #   CloudFormation.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Unique identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration object of the resource in valid JSON format. It
    #   must match the schema registered with CloudFormation.
    #
    #   <note markdown="1"> The configuration JSON must not exceed 64 KB.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the resource.
    #
    #   <note markdown="1"> This field is not to be confused with the Amazon Web Services-wide
    #   tag feature for Amazon Web Services resources. Tags for
    #   `PutResourceConfig` are tags that you supply for the configuration
    #   items of your custom resources.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutResourceConfigRequest AWS API Documentation
    #
    class PutResourceConfigRequest < Struct.new(
      :resource_type,
      :schema_version_id,
      :resource_id,
      :resource_name,
      :configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retention_period_in_days
    #   Number of days Config stores your historical information.
    #
    #   <note markdown="1"> Currently, only applicable to the configuration item history.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRetentionConfigurationRequest AWS API Documentation
    #
    class PutRetentionConfigurationRequest < Struct.new(
      :retention_period_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retention_configuration
    #   Returns a retention configuration object.
    #   @return [Types::RetentionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRetentionConfigurationResponse AWS API Documentation
    #
    class PutRetentionConfigurationResponse < Struct.new(
      :retention_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stored_query
    #   A list of `StoredQuery` objects. The mandatory fields are
    #   `QueryName` and `Expression`.
    #
    #   <note markdown="1"> When you are creating a query, you must provide a query name and an
    #   expression. When you are updating a query, you must provide a query
    #   name but updating the description is optional.
    #
    #    </note>
    #   @return [Types::StoredQuery]
    #
    # @!attribute [rw] tags
    #   A list of `Tags` object.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutStoredQueryRequest AWS API Documentation
    #
    class PutStoredQueryRequest < Struct.new(
      :stored_query,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_arn
    #   Amazon Resource Name (ARN) of the query. For example,
    #   arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutStoredQueryResponse AWS API Documentation
    #
    class PutStoredQueryResponse < Struct.new(
      :query_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the query.
    #
    # @!attribute [rw] select_fields
    #   Returns a `FieldInfo` object.
    #   @return [Array<Types::FieldInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/QueryInfo AWS API Documentation
    #
    class QueryInfo < Struct.new(
      :select_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies which resource types Config records for configuration
    # changes. In the recording group, you specify whether you want to
    # record all supported resource types or to include or exclude specific
    # types of resources.
    #
    # By default, Config records configuration changes for all supported
    # types of *Regional resources* that Config discovers in the Amazon Web
    # Services Region in which it is running. Regional resources are tied to
    # a Region and can be used only in that Region. Examples of Regional
    # resources are Amazon EC2 instances and Amazon EBS volumes.
    #
    # You can also have Config record supported types of *global resources*.
    # Global resources are not tied to a specific Region and can be used in
    # all Regions. The global resource types that Config supports include
    # IAM users, groups, roles, and customer managed policies.
    #
    # Global resource types onboarded to Config recording after February
    # 2022 will be recorded only in the service's home Region for the
    # commercial partition and Amazon Web Services GovCloud (US-West) for
    # the Amazon Web Services GovCloud (US) partition. You can view the
    # Configuration Items for these new global resource types only in their
    # home Region and Amazon Web Services GovCloud (US-West).
    #
    # If you don't want Config to record all resources, you can specify
    # which types of resources Config records with the `resourceTypes`
    # parameter.
    #
    # For a list of supported resource types, see [Supported Resource
    # Types][1] in the *Config developer guide*.
    #
    # For more information and a table of the Home Regions for Global
    # Resource Types Onboarded after February 2022, see [Selecting Which
    # Resources Config Records][2] in the *Config developer guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources
    # [2]: https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html
    #
    # @!attribute [rw] all_supported
    #   Specifies whether Config records configuration changes for all
    #   supported regional resource types.
    #
    #   If you set this field to `true`, when Config adds support for a new
    #   type of regional resource, Config starts recording resources of that
    #   type automatically.
    #
    #   If you set this field to `true`, you cannot enumerate specific
    #   resource types to record in the `resourceTypes` field of
    #   [RecordingGroup][1], or to exclude in the `resourceTypes` field of
    #   [ExclusionByResourceTypes][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html
    #   [2]: https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html
    #   @return [Boolean]
    #
    # @!attribute [rw] include_global_resource_types
    #   Specifies whether Config records configuration changes for all
    #   supported global resources.
    #
    #   Before you set this field to `true`, set the `allSupported` field of
    #   [RecordingGroup][1] to `true`. Optionally, you can set the `useOnly`
    #   field of [RecordingStrategy][2] to `ALL_SUPPORTED_RESOURCE_TYPES`.
    #
    #   If you set this field to `true`, when Config adds support for a new
    #   type of global resource in the Region where you set up the
    #   configuration recorder, Config starts recording resources of that
    #   type automatically.
    #
    #   <note markdown="1"> If you set this field to `false` but list global resource types in
    #   the `resourceTypes` field of [RecordingGroup][1], Config will still
    #   record configuration changes for those specified resource types
    #   *regardless* of if you set the `includeGlobalResourceTypes` field to
    #   false.
    #
    #    If you do not want to record configuration changes to global
    #   resource types, make sure to not list them in the `resourceTypes`
    #   field in addition to setting the `includeGlobalResourceTypes` field
    #   to false.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html
    #   [2]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_types
    #   A comma-separated list that specifies which resource types Config
    #   records.
    #
    #   Optionally, you can set the `useOnly` field of
    #   [RecordingStrategy][1] to `INCLUSION_BY_RESOURCE_TYPES`.
    #
    #   To record all configuration changes, set the `allSupported` field of
    #   [RecordingGroup][2] to `true`, and either omit this field or don't
    #   specify any resource types in this field. If you set the
    #   `allSupported` field to `false` and specify values for
    #   `resourceTypes`, when Config adds support for a new type of
    #   resource, it will not record resources of that type unless you
    #   manually add that type to your recording group.
    #
    #   For a list of valid `resourceTypes` values, see the **Resource Type
    #   Value** column in [Supported Amazon Web Services resource Types][3]
    #   in the *Config developer guide*.
    #
    #   <note markdown="1"> **Region Availability**
    #
    #    Before specifying a resource type for Config to track, check
    #   [Resource Coverage by Region Availability][4] to see if the resource
    #   type is supported in the Amazon Web Services Region where you set up
    #   Config. If a resource type is supported by Config in at least one
    #   Region, you can enable the recording of that resource type in all
    #   Regions supported by Config, even if the specified resource type is
    #   not supported in the Amazon Web Services Region where you set up
    #   Config.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html
    #   [2]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html
    #   [3]: https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources
    #   [4]: https://docs.aws.amazon.com/config/latest/developerguide/what-is-resource-config-coverage.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_by_resource_types
    #   An object that specifies how Config excludes resource types from
    #   being recorded by the configuration recorder.
    #
    #   To use this option, you must set the `useOnly` field of
    #   [RecordingStrategy][1] to `EXCLUSION_BY_RESOURCE_TYPES`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html
    #   @return [Types::ExclusionByResourceTypes]
    #
    # @!attribute [rw] recording_strategy
    #   An object that specifies the recording strategy for the
    #   configuration recorder.
    #
    #   * If you set the `useOnly` field of [RecordingStrategy][1] to
    #     `ALL_SUPPORTED_RESOURCE_TYPES`, Config records configuration
    #     changes for all supported regional resource types. You also must
    #     set the `allSupported` field of [RecordingGroup][2] to `true`.
    #     When Config adds support for a new type of regional resource,
    #     Config automatically starts recording resources of that type.
    #
    #   * If you set the `useOnly` field of [RecordingStrategy][1] to
    #     `INCLUSION_BY_RESOURCE_TYPES`, Config records configuration
    #     changes for only the resource types you specify in the
    #     `resourceTypes` field of [RecordingGroup][2].
    #
    #   * If you set the `useOnly` field of [RecordingStrategy][1] to
    #     `EXCLUSION_BY_RESOURCE_TYPES`, Config records configuration
    #     changes for all supported resource types except the resource types
    #     that you specify as exemptions to exclude from being recorded in
    #     the `resourceTypes` field of [ExclusionByResourceTypes][3].
    #
    #   <note markdown="1"> The `recordingStrategy` field is optional when you set the
    #   `allSupported` field of [RecordingGroup][2] to `true`.
    #
    #    The `recordingStrategy` field is optional when you list resource
    #   types in the `resourceTypes` field of [RecordingGroup][2].
    #
    #    The `recordingStrategy` field is required if you list resource types
    #   to exclude from recording in the `resourceTypes` field of
    #   [ExclusionByResourceTypes][3].
    #
    #    </note>
    #
    #   <note markdown="1"> If you choose `EXCLUSION_BY_RESOURCE_TYPES` for the recording
    #   strategy, the `exclusionByResourceTypes` field will override other
    #   properties in the request.
    #
    #    For example, even if you set `includeGlobalResourceTypes` to false,
    #   global resource types will still be automatically recorded in this
    #   option unless those resource types are specifically listed as
    #   exemptions in the `resourceTypes` field of
    #   `exclusionByResourceTypes`.
    #
    #    By default, if you choose the `EXCLUSION_BY_RESOURCE_TYPES`
    #   recording strategy, when Config adds support for a new resource type
    #   in the Region where you set up the configuration recorder, including
    #   global resource types, Config starts recording resources of that
    #   type automatically.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html
    #   [2]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html
    #   [3]: https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html
    #   @return [Types::RecordingStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RecordingGroup AWS API Documentation
    #
    class RecordingGroup < Struct.new(
      :all_supported,
      :include_global_resource_types,
      :resource_types,
      :exclusion_by_resource_types,
      :recording_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the recording strategy of the configuration recorder.
    #
    # @!attribute [rw] use_only
    #   The recording strategy for the configuration recorder.
    #
    #   * If you set this option to `ALL_SUPPORTED_RESOURCE_TYPES`, Config
    #     records configuration changes for all supported regional resource
    #     types. You also must set the `allSupported` field of
    #     [RecordingGroup][1] to `true`.
    #
    #     When Config adds support for a new type of regional resource,
    #     Config automatically starts recording resources of that type. For
    #     a list of supported resource types, see [Supported Resource
    #     Types][2] in the *Config developer guide*.
    #
    #   * If you set this option to `INCLUSION_BY_RESOURCE_TYPES`, Config
    #     records configuration changes for only the resource types that you
    #     specify in the `resourceTypes` field of [RecordingGroup][1].
    #
    #   * If you set this option to `EXCLUSION_BY_RESOURCE_TYPES`, Config
    #     records configuration changes for all supported resource types,
    #     except the resource types that you specify as exemptions to
    #     exclude from being recorded in the `resourceTypes` field of
    #     [ExclusionByResourceTypes][3].
    #
    #   <note markdown="1"> The `recordingStrategy` field is optional when you set the
    #   `allSupported` field of [RecordingGroup][1] to `true`.
    #
    #    The `recordingStrategy` field is optional when you list resource
    #   types in the `resourceTypes` field of [RecordingGroup][1].
    #
    #    The `recordingStrategy` field is required if you list resource types
    #   to exclude from recording in the `resourceTypes` field of
    #   [ExclusionByResourceTypes][3].
    #
    #    </note>
    #
    #   <note markdown="1"> If you choose `EXCLUSION_BY_RESOURCE_TYPES` for the recording
    #   strategy, the `exclusionByResourceTypes` field will override other
    #   properties in the request.
    #
    #    For example, even if you set `includeGlobalResourceTypes` to false,
    #   global resource types will still be automatically recorded in this
    #   option unless those resource types are specifically listed as
    #   exemptions in the `resourceTypes` field of
    #   `exclusionByResourceTypes`.
    #
    #    By default, if you choose the `EXCLUSION_BY_RESOURCE_TYPES`
    #   recording strategy, when Config adds support for a new resource type
    #   in the Region where you set up the configuration recorder, including
    #   global resource types, Config starts recording resources of that
    #   type automatically.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html
    #   [2]: https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources
    #   [3]: https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RecordingStrategy AWS API Documentation
    #
    class RecordingStrategy < Struct.new(
      :use_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # The relationship of the related resource to the main resource.
    #
    # @!attribute [rw] resource_type
    #   The resource type of the related resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the related resource (for example, `sg-xxxxxx`).
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The custom name of the related resource, if available.
    #   @return [String]
    #
    # @!attribute [rw] relationship_name
    #   The type of relationship with the related resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/Relationship AWS API Documentation
    #
    class Relationship < Struct.new(
      :resource_type,
      :resource_id,
      :resource_name,
      :relationship_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details about the remediation
    # configuration that includes the remediation action, parameters, and
    # data to execute the action.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the target. Target executes remediation. For example,
    #   SSM document.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   Target ID is the name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   Version of the target. For example, version of the SSM document.
    #
    #   <note markdown="1"> If you make backward incompatible changes to the SSM document, you
    #   must call PutRemediationConfiguration API again to ensure the
    #   remediations can run.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   An object of the RemediationParameterValue.
    #   @return [Hash<String,Types::RemediationParameterValue>]
    #
    # @!attribute [rw] resource_type
    #   The type of a resource.
    #   @return [String]
    #
    # @!attribute [rw] automatic
    #   The remediation is triggered automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_controls
    #   An ExecutionControls object.
    #   @return [Types::ExecutionControls]
    #
    # @!attribute [rw] maximum_automatic_attempts
    #   The maximum number of failed attempts for auto-remediation. If you
    #   do not select a number, the default is 5.
    #
    #   For example, if you specify MaximumAutomaticAttempts as 5 with
    #   RetryAttemptSeconds as 50 seconds, Config will put a
    #   RemediationException on your behalf for the failing resource after
    #   the 5th failed attempt within 50 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_attempt_seconds
    #   Maximum time in seconds that Config runs auto-remediation. If you do
    #   not select a number, the default is 60 seconds.
    #
    #   For example, if you specify RetryAttemptSeconds as 50 seconds and
    #   MaximumAutomaticAttempts as 5, Config will run auto-remediations 5
    #   times within 50 seconds before throwing an exception.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) of remediation configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_by_service
    #   Name of the service that owns the service-linked rule, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RemediationConfiguration AWS API Documentation
    #
    class RemediationConfiguration < Struct.new(
      :config_rule_name,
      :target_type,
      :target_id,
      :target_version,
      :parameters,
      :resource_type,
      :automatic,
      :execution_controls,
      :maximum_automatic_attempts,
      :retry_attempt_seconds,
      :arn,
      :created_by_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details about the remediation exception.
    # The details include the rule name, an explanation of an exception, the
    # time when the exception will be deleted, the resource ID, and resource
    # type.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the Config rule.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of a resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource (for example., sg-xxxxxx).
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanation of an remediation exception.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   The time when the remediation exception will be deleted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RemediationException AWS API Documentation
    #
    class RemediationException < Struct.new(
      :config_rule_name,
      :resource_type,
      :resource_id,
      :message,
      :expiration_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that identify a resource within Config, including the
    # resource type and resource ID.
    #
    # @!attribute [rw] resource_type
    #   The type of a resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource (for example., sg-xxxxxx).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RemediationExceptionResourceKey AWS API Documentation
    #
    class RemediationExceptionResourceKey < Struct.new(
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details of the current status of the invoked remediation
    # action for that resource.
    #
    # @!attribute [rw] resource_key
    #   The details that identify a resource within Config, including the
    #   resource type and resource ID.
    #   @return [Types::ResourceKey]
    #
    # @!attribute [rw] state
    #   ENUM of the values.
    #   @return [String]
    #
    # @!attribute [rw] step_details
    #   Details of every step.
    #   @return [Array<Types::RemediationExecutionStep>]
    #
    # @!attribute [rw] invocation_time
    #   Start time when the remediation was executed.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the remediation execution was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RemediationExecutionStatus AWS API Documentation
    #
    class RemediationExecutionStatus < Struct.new(
      :resource_key,
      :state,
      :step_details,
      :invocation_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Name of the step from the SSM document.
    #
    # @!attribute [rw] name
    #   The details of the step.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The valid status of the step.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message if the step was interrupted during execution.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when the step started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   The time when the step stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RemediationExecutionStep AWS API Documentation
    #
    class RemediationExecutionStep < Struct.new(
      :name,
      :state,
      :error_message,
      :start_time,
      :stop_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Remediation action is in progress. You can either cancel execution in
    # Amazon Web Services Systems Manager or wait and try again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RemediationInProgressException AWS API Documentation
    #
    class RemediationInProgressException < Aws::EmptyStructure; end

    # The value is either a dynamic (resource) value or a static value. You
    # must select either a dynamic value or a static value.
    #
    # @!attribute [rw] resource_value
    #   The value is dynamic and changes at run-time.
    #   @return [Types::ResourceValue]
    #
    # @!attribute [rw] static_value
    #   The value is static and does not change at run-time.
    #   @return [Types::StaticValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RemediationParameterValue AWS API Documentation
    #
    class RemediationParameterValue < Struct.new(
      :resource_value,
      :static_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Two users are trying to modify the same query at the same time. Wait
    # for a moment and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceConcurrentModificationException AWS API Documentation
    #
    class ResourceConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the resource type and the number of resources.
    #
    # @!attribute [rw] resource_type
    #   The resource type (for example, `"AWS::EC2::Instance"`).
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of resources.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceCount AWS API Documentation
    #
    class ResourceCount < Struct.new(
      :resource_type,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the resource count based on account ID, region, and resource
    # type.
    #
    # @!attribute [rw] resource_type
    #   The type of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The 12-digit ID of the account.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The region where the account is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceCountFilters AWS API Documentation
    #
    class ResourceCountFilters < Struct.new(
      :resource_type,
      :account_id,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the resource being evaluated.
    #
    # @!attribute [rw] resource_id
    #   A unique resource ID for an evaluation.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource being evaluated.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration
    #   The resource definition to be evaluated as per the resource
    #   configuration schema type.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_schema_type
    #   The schema type of the resource configuration.
    #
    #   <note markdown="1"> You can find the [Resource type schema][1], or
    #   `CFN_RESOURCE_SCHEMA`, in "*Amazon Web Services public
    #   extensions*" within the CloudFormation registry or with the
    #   following CLI commmand: `aws cloudformation describe-type
    #   --type-name "AWS::S3::Bucket" --type RESOURCE`.
    #
    #    For more information, see [Managing extensions through the
    #   CloudFormation registry][2] and [Amazon Web Services resource and
    #   property types reference][3] in the CloudFormation User Guide.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :resource_id,
      :resource_type,
      :resource_configuration,
      :resource_configuration_schema_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns details of a resource evaluation.
    #
    # @!attribute [rw] resource_evaluation_id
    #   The ResourceEvaluationId of a evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_mode
    #   The mode of an evaluation. The valid values are Detective or
    #   Proactive.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_start_timestamp
    #   The starting time of an execution.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceEvaluation AWS API Documentation
    #
    class ResourceEvaluation < Struct.new(
      :resource_evaluation_id,
      :evaluation_mode,
      :evaluation_start_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns details of a resource evaluation based on the selected filter.
    #
    # @!attribute [rw] evaluation_mode
    #   Filters all resource evaluations results based on an evaluation
    #   mode. the valid value for this API is `Proactive`.
    #   @return [String]
    #
    # @!attribute [rw] time_window
    #   Returns a `TimeWindow` object.
    #   @return [Types::TimeWindow]
    #
    # @!attribute [rw] evaluation_context_identifier
    #   Filters evaluations for a given infrastructure deployment. For
    #   example: CFN Stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceEvaluationFilters AWS API Documentation
    #
    class ResourceEvaluationFilters < Struct.new(
      :evaluation_mode,
      :time_window,
      :evaluation_context_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the results by resource account ID, region, resource ID, and
    # resource name.
    #
    # @!attribute [rw] account_id
    #   The 12-digit source account ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The source region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceFilters AWS API Documentation
    #
    class ResourceFilters < Struct.new(
      :account_id,
      :resource_id,
      :resource_name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that identify a resource that is discovered by Config,
    # including the resource type, ID, and (if available) the custom
    # resource name.
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource (for example, `sg-xxxxxx`).
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The custom name of the resource (if available).
    #   @return [String]
    #
    # @!attribute [rw] resource_deletion_time
    #   The time that the resource was deleted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceIdentifier AWS API Documentation
    #
    class ResourceIdentifier < Struct.new(
      :resource_type,
      :resource_id,
      :resource_name,
      :resource_deletion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # You see this exception in the following cases:
    #
    # * For DeleteConfigRule, Config is deleting this rule. Try your request
    #   again later.
    #
    # * For DeleteConfigRule, the rule is deleting your evaluation results.
    #   Try your request again later.
    #
    # * For DeleteConfigRule, a remediation action is associated with the
    #   rule and Config cannot delete this rule. Delete the remediation
    #   action associated with the rule before deleting the rule and try
    #   your request again later.
    #
    # * For PutConfigOrganizationRule, organization Config rule deletion is
    #   in progress. Try your request again later.
    #
    # * For DeleteOrganizationConfigRule, organization Config rule creation
    #   is in progress. Try your request again later.
    #
    # * For PutConformancePack and PutOrganizationConformancePack, a
    #   conformance pack creation, update, and deletion is in progress. Try
    #   your request again later.
    #
    # * For DeleteConformancePack, a conformance pack creation, update, and
    #   deletion is in progress. Try your request again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Aws::EmptyStructure; end

    # The details that identify a resource within Config, including the
    # resource type and resource ID.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource (for example., sg-xxxxxx).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceKey AWS API Documentation
    #
    class ResourceKey < Struct.new(
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have specified a resource that is either unknown or has not been
    # discovered.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceNotDiscoveredException AWS API Documentation
    #
    class ResourceNotDiscoveredException < Aws::EmptyStructure; end

    # You have specified a resource that does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # The dynamic value of the resource.
    #
    # @!attribute [rw] value
    #   The value is a resource ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ResourceValue AWS API Documentation
    #
    class ResourceValue < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object with the name of the retention configuration and the
    # retention period in days. The object stores the configuration for data
    # retention in Config.
    #
    # @!attribute [rw] name
    #   The name of the retention configuration object.
    #   @return [String]
    #
    # @!attribute [rw] retention_period_in_days
    #   Number of days Config stores your historical information.
    #
    #   <note markdown="1"> Currently, only applicable to the configuration item history.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RetentionConfiguration AWS API Documentation
    #
    class RetentionConfiguration < Struct.new(
      :name,
      :retention_period_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines which resources trigger an evaluation for an Config rule. The
    # scope can include one or more resource types, a combination of a tag
    # key and value, or a combination of one resource type and one resource
    # ID. Specify a scope to constrain which resources trigger an evaluation
    # for a rule. Otherwise, evaluations for the rule are triggered when any
    # resource in your recording group changes in configuration.
    #
    # @!attribute [rw] compliance_resource_types
    #   The resource types of only those Amazon Web Services resources that
    #   you want to trigger an evaluation for the rule. You can only specify
    #   one type if you also specify a resource ID for
    #   `ComplianceResourceId`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_key
    #   The tag key that is applied to only those Amazon Web Services
    #   resources that you want to trigger an evaluation for the rule.
    #   @return [String]
    #
    # @!attribute [rw] tag_value
    #   The tag value applied to only those Amazon Web Services resources
    #   that you want to trigger an evaluation for the rule. If you specify
    #   a value for `TagValue`, you must also specify a value for `TagKey`.
    #   @return [String]
    #
    # @!attribute [rw] compliance_resource_id
    #   The ID of the only Amazon Web Services resource that you want to
    #   trigger an evaluation for the rule. If you specify a resource ID,
    #   you must specify one resource type for `ComplianceResourceTypes`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/Scope AWS API Documentation
    #
    class Scope < Struct.new(
      :compliance_resource_types,
      :tag_key,
      :tag_value,
      :compliance_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] expression
    #   The SQL query SELECT command.
    #   @return [String]
    #
    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of query results returned on each page.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of query results returned on each page. Config
    #   also allows the Limit request parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/SelectAggregateResourceConfigRequest AWS API Documentation
    #
    class SelectAggregateResourceConfigRequest < Struct.new(
      :expression,
      :configuration_aggregator_name,
      :limit,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   Returns the results for the SQL query.
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_info
    #   Details about the query.
    #   @return [Types::QueryInfo]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/SelectAggregateResourceConfigResponse AWS API Documentation
    #
    class SelectAggregateResourceConfigResponse < Struct.new(
      :results,
      :query_info,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] expression
    #   The SQL query `SELECT` command.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of query results returned on each page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/SelectResourceConfigRequest AWS API Documentation
    #
    class SelectResourceConfigRequest < Struct.new(
      :expression,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   Returns the results for the SQL query.
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_info
    #   Returns the `QueryInfo` object.
    #   @return [Types::QueryInfo]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned in a previous request that you use
    #   to request the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/SelectResourceConfigResponse AWS API Documentation
    #
    class SelectResourceConfigResponse < Struct.new(
      :results,
      :query_info,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the CustomPolicyDetails, the rule owner (`Amazon Web
    # Services` for managed rules, `CUSTOM_POLICY` for Custom Policy rules,
    # and `CUSTOM_LAMBDA` for Custom Lambda rules), the rule identifier, and
    # the events that cause the evaluation of your Amazon Web Services
    # resources.
    #
    # @!attribute [rw] owner
    #   Indicates whether Amazon Web Services or the customer owns and
    #   manages the Config rule.
    #
    #   Config Managed Rules are predefined rules owned by Amazon Web
    #   Services. For more information, see [Config Managed Rules][1] in the
    #   *Config developer guide*.
    #
    #   Config Custom Rules are rules that you can develop either with Guard
    #   (`CUSTOM_POLICY`) or Lambda (`CUSTOM_LAMBDA`). For more information,
    #   see [Config Custom Rules ][2] in the *Config developer guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html
    #   [2]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html
    #   @return [String]
    #
    # @!attribute [rw] source_identifier
    #   For Config Managed rules, a predefined identifier from a list. For
    #   example, `IAM_PASSWORD_POLICY` is a managed rule. To reference a
    #   managed rule, see [List of Config Managed Rules][1].
    #
    #   For Config Custom Lambda rules, the identifier is the Amazon
    #   Resource Name (ARN) of the rule's Lambda function, such as
    #   `arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name`.
    #
    #   For Config Custom Policy rules, this field will be ignored.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html
    #   @return [String]
    #
    # @!attribute [rw] source_details
    #   Provides the source and the message types that cause Config to
    #   evaluate your Amazon Web Services resources against a rule. It also
    #   provides the frequency with which you want Config to run evaluations
    #   for the rule if the trigger type is periodic.
    #
    #   If the owner is set to `CUSTOM_POLICY`, the only acceptable values
    #   for the Config rule trigger message type are
    #   `ConfigurationItemChangeNotification` and
    #   `OversizedConfigurationItemChangeNotification`.
    #   @return [Array<Types::SourceDetail>]
    #
    # @!attribute [rw] custom_policy_details
    #   Provides the runtime system, policy definition, and whether debug
    #   logging is enabled. Required when owner is set to `CUSTOM_POLICY`.
    #   @return [Types::CustomPolicyDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/Source AWS API Documentation
    #
    class Source < Struct.new(
      :owner,
      :source_identifier,
      :source_details,
      :custom_policy_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the source and the message types that trigger Config to
    # evaluate your Amazon Web Services resources against a rule. It also
    # provides the frequency with which you want Config to run evaluations
    # for the rule if the trigger type is periodic. You can specify the
    # parameter values for `SourceDetail` only for custom rules.
    #
    # @!attribute [rw] event_source
    #   The source of the event, such as an Amazon Web Services service,
    #   that triggers Config to evaluate your Amazon Web Services resources.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of notification that triggers Config to run an evaluation
    #   for a rule. You can specify the following notification types:
    #
    #   * `ConfigurationItemChangeNotification` - Triggers an evaluation
    #     when Config delivers a configuration item as a result of a
    #     resource change.
    #
    #   * `OversizedConfigurationItemChangeNotification` - Triggers an
    #     evaluation when Config delivers an oversized configuration item.
    #     Config may generate this notification type when a resource changes
    #     and the notification exceeds the maximum size allowed by Amazon
    #     SNS.
    #
    #   * `ScheduledNotification` - Triggers a periodic evaluation at the
    #     frequency specified for `MaximumExecutionFrequency`.
    #
    #   * `ConfigurationSnapshotDeliveryCompleted` - Triggers a periodic
    #     evaluation when Config delivers a configuration snapshot.
    #
    #   If you want your custom rule to be triggered by configuration
    #   changes, specify two SourceDetail objects, one for
    #   `ConfigurationItemChangeNotification` and one for
    #   `OversizedConfigurationItemChangeNotification`.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The frequency at which you want Config to run evaluations for a
    #   custom rule with a periodic trigger. If you specify a value for
    #   `MaximumExecutionFrequency`, then `MessageType` must use the
    #   `ScheduledNotification` value.
    #
    #   <note markdown="1"> By default, rules with a periodic trigger are evaluated every 24
    #   hours. To change the frequency, specify a valid value for the
    #   `MaximumExecutionFrequency` parameter.
    #
    #    Based on the valid value you choose, Config runs evaluations once
    #   for each valid value. For example, if you choose `Three_Hours`,
    #   Config runs evaluations once every three hours. In this case,
    #   `Three_Hours` is the frequency of this rule.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/SourceDetail AWS API Documentation
    #
    class SourceDetail < Struct.new(
      :event_source,
      :message_type,
      :maximum_execution_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Web Services Systems Manager (SSM) specific remediation
    # controls.
    #
    # @!attribute [rw] concurrent_execution_rate_percentage
    #   The maximum percentage of remediation actions allowed to run in
    #   parallel on the non-compliant resources for that specific rule. You
    #   can specify a percentage, such as 10%. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] error_percentage
    #   The percentage of errors that are allowed before SSM stops running
    #   automations on non-compliant resources for that specific rule. You
    #   can specify a percentage of errors, for example 10%. If you do not
    #   specifiy a percentage, the default is 50%. For example, if you set
    #   the ErrorPercentage to 40% for 10 non-compliant resources, then SSM
    #   stops running the automations when the fifth error is received.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/SsmControls AWS API Documentation
    #
    class SsmControls < Struct.new(
      :concurrent_execution_rate_percentage,
      :error_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_names
    #   The list of names of Config rules that you want to run evaluations
    #   for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartConfigRulesEvaluationRequest AWS API Documentation
    #
    class StartConfigRulesEvaluationRequest < Struct.new(
      :config_rule_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output when you start the evaluation for the specified Config
    # rule.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartConfigRulesEvaluationResponse AWS API Documentation
    #
    class StartConfigRulesEvaluationResponse < Aws::EmptyStructure; end

    # The input for the StartConfigurationRecorder action.
    #
    # @!attribute [rw] configuration_recorder_name
    #   The name of the recorder object that records each configuration
    #   change made to the resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartConfigurationRecorderRequest AWS API Documentation
    #
    class StartConfigurationRecorderRequest < Struct.new(
      :configuration_recorder_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_rule_name
    #   The list of names of Config rules that you want to run remediation
    #   execution for.
    #   @return [String]
    #
    # @!attribute [rw] resource_keys
    #   A list of resource keys to be processed with the current request.
    #   Each element in the list consists of the resource type and resource
    #   ID.
    #   @return [Array<Types::ResourceKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartRemediationExecutionRequest AWS API Documentation
    #
    class StartRemediationExecutionRequest < Struct.new(
      :config_rule_name,
      :resource_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failure_message
    #   Returns a failure message. For example, the resource is already
    #   compliant.
    #   @return [String]
    #
    # @!attribute [rw] failed_items
    #   For resources that have failed to start execution, the API returns a
    #   resource key object.
    #   @return [Array<Types::ResourceKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartRemediationExecutionResponse AWS API Documentation
    #
    class StartRemediationExecutionResponse < Struct.new(
      :failure_message,
      :failed_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_details
    #   Returns a `ResourceDetails` object.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] evaluation_context
    #   Returns an `EvaluationContext` object.
    #   @return [Types::EvaluationContext]
    #
    # @!attribute [rw] evaluation_mode
    #   The mode of an evaluation. The valid values for this API are
    #   `DETECTIVE` and `PROACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_timeout
    #   The timeout for an evaluation. The default is 900 seconds. You
    #   cannot specify a number greater than 3600. If you specify 0, Config
    #   uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A client token is a unique, case-sensitive string of up to 64 ASCII
    #   characters. To make an idempotent API request using one of these
    #   actions, specify a client token in the request.
    #
    #   <note markdown="1"> Avoid reusing the same client token for other API requests. If you
    #   retry a request that completed successfully using the same client
    #   token and the same parameters, the retry succeeds without performing
    #   any further actions. If you retry a successful request using the
    #   same client token, but one or more of the parameters are different,
    #   other than the Region or Availability Zone, the retry fails with an
    #   IdempotentParameterMismatch error.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartResourceEvaluationRequest AWS API Documentation
    #
    class StartResourceEvaluationRequest < Struct.new(
      :resource_details,
      :evaluation_context,
      :evaluation_mode,
      :evaluation_timeout,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_evaluation_id
    #   A unique ResourceEvaluationId that is associated with a single
    #   execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartResourceEvaluationResponse AWS API Documentation
    #
    class StartResourceEvaluationResponse < Struct.new(
      :resource_evaluation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The static value of the resource.
    #
    # @!attribute [rw] values
    #   A list of values. For example, the ARN of the assumed role.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StaticValue AWS API Documentation
    #
    class StaticValue < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status filter object to filter results based on specific member
    # account ID or status type for an organization Config rule.
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of the member account within an
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] member_account_rule_status
    #   Indicates deployment status for Config rule in the member account.
    #   When management account calls `PutOrganizationConfigRule` action for
    #   the first time, Config rule status is created in the member account.
    #   When management account calls `PutOrganizationConfigRule` action for
    #   the second time, Config rule status is updated in the member
    #   account. Config rule status is deleted when the management account
    #   deletes `OrganizationConfigRule` and disables service access for
    #   `config-multiaccountsetup.amazonaws.com`.
    #
    #   Config sets the state of the rule to:
    #
    #   * `CREATE_SUCCESSFUL` when Config rule has been created in the
    #     member account.
    #
    #   * `CREATE_IN_PROGRESS` when Config rule is being created in the
    #     member account.
    #
    #   * `CREATE_FAILED` when Config rule creation has failed in the member
    #     account.
    #
    #   * `DELETE_FAILED` when Config rule deletion has failed in the member
    #     account.
    #
    #   * `DELETE_IN_PROGRESS` when Config rule is being deleted in the
    #     member account.
    #
    #   * `DELETE_SUCCESSFUL` when Config rule has been deleted in the
    #     member account.
    #
    #   * `UPDATE_SUCCESSFUL` when Config rule has been updated in the
    #     member account.
    #
    #   * `UPDATE_IN_PROGRESS` when Config rule is being updated in the
    #     member account.
    #
    #   * `UPDATE_FAILED` when Config rule deletion has failed in the member
    #     account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StatusDetailFilters AWS API Documentation
    #
    class StatusDetailFilters < Struct.new(
      :account_id,
      :member_account_rule_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the StopConfigurationRecorder action.
    #
    # @!attribute [rw] configuration_recorder_name
    #   The name of the recorder object that records each configuration
    #   change made to the resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StopConfigurationRecorderRequest AWS API Documentation
    #
    class StopConfigurationRecorderRequest < Struct.new(
      :configuration_recorder_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the details of a stored query.
    #
    # @!attribute [rw] query_id
    #   The ID of the query.
    #   @return [String]
    #
    # @!attribute [rw] query_arn
    #   Amazon Resource Name (ARN) of the query. For example,
    #   arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
    #   @return [String]
    #
    # @!attribute [rw] query_name
    #   The name of the query.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A unique description for the query.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The expression of the query. For example, `SELECT resourceId,
    #   resourceType,
    #   supplementaryConfiguration.BucketVersioningConfiguration.status
    #   WHERE resourceType = 'AWS::S3::Bucket' AND
    #   supplementaryConfiguration.BucketVersioningConfiguration.status =
    #   'Off'.`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StoredQuery AWS API Documentation
    #
    class StoredQuery < Struct.new(
      :query_id,
      :query_arn,
      :query_name,
      :description,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns details of a specific query.
    #
    # @!attribute [rw] query_id
    #   The ID of the query.
    #   @return [String]
    #
    # @!attribute [rw] query_arn
    #   Amazon Resource Name (ARN) of the query. For example,
    #   arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
    #   @return [String]
    #
    # @!attribute [rw] query_name
    #   The name of the query.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A unique description for the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StoredQueryMetadata AWS API Documentation
    #
    class StoredQueryMetadata < Struct.new(
      :query_id,
      :query_arn,
      :query_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tags for the resource. The metadata that you apply to a resource
    # to help you categorize and organize them. Each tag consists of a key
    # and an optional value, both of which you define. Tag keys can have a
    # maximum character length of 128 characters, and tag values can have a
    # maximum length of 256 characters.
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that make up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional part of a key-value pair that make up a tag. A value
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags. Currently, the supported resources are
    #   `ConfigRule`, `ConfigurationAggregator` and
    #   `AggregatorAuthorization`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tag object.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This API allows you to create a conformance pack template with an
    # Amazon Web Services Systems Manager document (SSM document). To deploy
    # a conformance pack using an SSM document, first create an SSM document
    # with conformance pack content, and then provide the `DocumentName` in
    # the [PutConformancePack API][1]. You can also provide the
    # `DocumentVersion`.
    #
    # The `TemplateSSMDocumentDetails` object contains the name of the SSM
    # document and the version of the SSM document.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html
    #
    # @!attribute [rw] document_name
    #   The name or Amazon Resource Name (ARN) of the SSM document to use to
    #   create a conformance pack. If you use the document name, Config
    #   checks only your account and Amazon Web Services Region for the SSM
    #   document. If you want to use an SSM document from another Region or
    #   account, you must provide the ARN.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the SSM document to use to create a conformance pack.
    #   By default, Config uses the latest version.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/TemplateSSMDocumentDetails AWS API Documentation
    #
    class TemplateSSMDocumentDetails < Struct.new(
      :document_name,
      :document_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters evaluation results based on start and end times.
    #
    # @!attribute [rw] start_time
    #   The start time of an execution.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of an execution. The end time must be after the start
    #   date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/TimeWindow AWS API Documentation
    #
    class TimeWindow < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the limit of the number of tags you can use. For more
    # information, see [ **Service Limits** ][1] in the *Config Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags. Currently, the supported resources are
    #   `ConfigRule`, `ConfigurationAggregator` and
    #   `AggregatorAuthorization`.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested action is not valid.
    #
    # For PutStoredQuery, you will see this exception if there are missing
    # required fields or if the input value fails the validation, or if you
    # are trying to create more than 300 queries.
    #
    # For GetStoredQuery, ListStoredQuery, and DeleteStoredQuery you will
    # see this exception if there are missing required fields or if the
    # input value fails the validation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ValidationException AWS API Documentation
    #
    class ValidationException < Aws::EmptyStructure; end

  end
end
