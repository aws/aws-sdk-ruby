# frozen_string_literal: true

# This is generated code!

module Aws::ConfigService
  # This module contains the types returned by client operations.
  module Types

    # <p>A collection of accounts and regions.</p>
    # @!attribute account_ids
    #   <p>The 12-digit account ID of the account being aggregated.
    #   		</p>
    #   @return [Array<String>]
    # @!attribute all_aws_regions
    #   <p>If true, aggregate existing Config regions and future
    #   			regions.</p>
    #   @return [Boolean]
    # @!attribute aws_regions
    #   <p>The source regions being aggregated.</p>
    #   @return [Array<String>]
    class AccountAggregationSource < Struct.new(
      :account_ids,
      :all_aws_regions,
      :aws_regions,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:all_aws_regions] = false unless options.key?(:all_aws_regions)
        super
      end
    end

    # <p>Indicates whether an Config rule is compliant based on
    # 			account ID, region, compliance, and rule name.</p>
    #          <p>A rule is compliant if all of the resources that the rule
    # 			evaluated comply with it. It is noncompliant if any of these
    # 			resources do not comply.</p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #   @return [String]
    # @!attribute compliance
    #   <p>Indicates whether an Amazon Web Services resource or Config rule is
    #   			compliant and provides the number of contributors that affect the
    #   			compliance.</p>
    #   @return [Types::Compliance]
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The source region from where the data is aggregated.</p>
    #   @return [String]
    class AggregateComplianceByConfigRule < Struct.new(
      :config_rule_name,
      :compliance,
      :account_id,
      :aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides aggregate compliance of the conformance pack. Indicates whether a conformance pack is compliant based on the name of the conformance pack, account ID, and region.</p>
    #          <p>A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant.
    # 			The compliance status of a conformance pack is INSUFFICIENT_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data.
    # 			If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT_DATA, the conformance pack shows 
    # 			compliant.</p>
    # @!attribute conformance_pack_name
    #   <p>The name of the conformance pack.</p>
    #   @return [String]
    # @!attribute compliance
    #   <p>The compliance status of the conformance pack.</p>
    #   @return [Types::AggregateConformancePackCompliance]
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID of the source account.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The source Amazon Web Services Region from where the data is aggregated.</p>
    #   @return [String]
    class AggregateComplianceByConformancePack < Struct.new(
      :conformance_pack_name,
      :compliance,
      :account_id,
      :aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the number of compliant and noncompliant rules for one
    # 			or more accounts and regions in an aggregator.</p>
    # @!attribute group_name
    #   <p>The 12-digit account ID or region based on the GroupByKey
    #   			value.</p>
    #   @return [String]
    # @!attribute compliance_summary
    #   <p>The number of compliant and noncompliant Config
    #   			rules.</p>
    #   @return [Types::ComplianceSummary]
    class AggregateComplianceCount < Struct.new(
      :group_name,
      :compliance_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the number of compliant and noncompliant rules within a conformance pack.
    # 			Also provides the compliance status of the conformance pack and the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.</p>
    #          <p>A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant.
    # 			The compliance status of a conformance pack is INSUFFICIENT_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data.
    # 			If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT_DATA, the conformance pack shows compliant.</p>
    # @!attribute compliance_type
    #   <p>The compliance status of the conformance pack.</p>
    #   @return [String]
    # @!attribute compliant_rule_count
    #   <p>The number of compliant Config Rules.</p>
    #   @return [Integer]
    # @!attribute non_compliant_rule_count
    #   <p>The number of noncompliant Config Rules.</p>
    #   @return [Integer]
    # @!attribute total_rule_count
    #   <p>Total number of compliant rules, noncompliant rules, and the rules that do not have any applicable resources to evaluate upon resulting in insufficient data.</p>
    #   @return [Integer]
    class AggregateConformancePackCompliance < Struct.new(
      :compliance_type,
      :compliant_rule_count,
      :non_compliant_rule_count,
      :total_rule_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:compliant_rule_count] = 0 unless options.key?(:compliant_rule_count)
        options[:non_compliant_rule_count] = 0 unless options.key?(:non_compliant_rule_count)
        options[:total_rule_count] = 0 unless options.key?(:total_rule_count)
        super
      end
    end

    # <p>The number of conformance packs that are compliant and noncompliant.</p>
    # @!attribute compliant_conformance_pack_count
    #   <p>Number of compliant conformance packs.</p>
    #   @return [Integer]
    # @!attribute non_compliant_conformance_pack_count
    #   <p>Number of noncompliant conformance packs.</p>
    #   @return [Integer]
    class AggregateConformancePackComplianceCount < Struct.new(
      :compliant_conformance_pack_count,
      :non_compliant_conformance_pack_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:compliant_conformance_pack_count] = 0 unless options.key?(:compliant_conformance_pack_count)
        options[:non_compliant_conformance_pack_count] = 0 unless options.key?(:non_compliant_conformance_pack_count)
        super
      end
    end

    # <p>Filters the conformance packs based on an account ID, region, compliance type, and the name of the conformance pack.</p>
    # @!attribute conformance_pack_name
    #   <p>The name of the conformance pack.</p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p>The compliance status of the conformance pack.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID of the source account.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The source Amazon Web Services Region from where the data is aggregated.</p>
    #   @return [String]
    class AggregateConformancePackComplianceFilters < Struct.new(
      :conformance_pack_name,
      :compliance_type,
      :account_id,
      :aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides a summary of compliance based on either account ID or region. </p>
    # @!attribute compliance_summary
    #   <p>Returns an <code>AggregateConformancePackComplianceCount</code> object. </p>
    #   @return [Types::AggregateConformancePackComplianceCount]
    # @!attribute group_name
    #   <p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    #   @return [String]
    class AggregateConformancePackComplianceSummary < Struct.new(
      :compliance_summary,
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filters the results based on account ID and region. </p>
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID of the source account.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The source Amazon Web Services Region from where the data is aggregated.</p>
    #   @return [String]
    class AggregateConformancePackComplianceSummaryFilters < Struct.new(
      :account_id,
      :aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AggregateConformancePackComplianceSummaryGroupKey
      ACCOUNT_ID = 'ACCOUNT_ID'
      AWS_REGION = 'AWS_REGION'
    end

    # <p>The details of an Config evaluation for an account ID and
    # 			region in an aggregator. Provides the Amazon Web Services resource that was
    # 			evaluated, the compliance of the resource, related time stamps, and
    # 			supplementary information. </p>
    # @!attribute evaluation_result_identifier
    #   <p>Uniquely identifies the evaluation result.</p>
    #   @return [Types::EvaluationResultIdentifier]
    # @!attribute compliance_type
    #   <p>The resource compliance status.</p>
    #            <p>For the <code>AggregationEvaluationResult</code> data type, Config supports only the <code>COMPLIANT</code> and
    #   				<code>NON_COMPLIANT</code>. Config does not support the
    #   				<code>NOT_APPLICABLE</code> and <code>INSUFFICIENT_DATA</code>
    #   			value.</p>
    #   @return [String]
    # @!attribute result_recorded_time
    #   <p>The time when Config recorded the aggregate evaluation
    #   			result.</p>
    #   @return [Time]
    # @!attribute config_rule_invoked_time
    #   <p>The time when the Config rule evaluated the Amazon Web Services
    #   			resource.</p>
    #   @return [Time]
    # @!attribute annotation
    #   <p>Supplementary information about how the agrregate evaluation
    #   			determined the compliance.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The source region from where the data is aggregated.</p>
    #   @return [String]
    class AggregateEvaluationResult < Struct.new(
      :evaluation_result_identifier,
      :compliance_type,
      :result_recorded_time,
      :config_rule_invoked_time,
      :annotation,
      :account_id,
      :aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details that identify a resource that is collected by Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.</p>
    # @!attribute source_account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The source region where data is aggregated.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the Amazon Web Services resource.</p>
    #   @return [String]
    class AggregateResourceIdentifier < Struct.new(
      :source_account_id,
      :source_region,
      :resource_id,
      :resource_type,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The current sync status between the source and the aggregator
    # 			account.</p>
    # @!attribute source_id
    #   <p>The source account ID or an organization.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The source account or an organization.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>Filters the last updated status type.</p>
    #            <ul>
    #               <li>
    #                  <p>Valid value FAILED indicates errors while moving
    #   					data.</p>
    #               </li>
    #               <li>
    #                  <p>Valid value SUCCEEDED indicates the data was
    #   					successfully moved.</p>
    #               </li>
    #               <li>
    #                  <p>Valid value OUTDATED indicates the data is not the most
    #   					recent.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The time of the last update.</p>
    #   @return [Time]
    # @!attribute last_error_code
    #   <p>The error code that Config returned when the source account
    #   			aggregation last failed.</p>
    #   @return [String]
    # @!attribute last_error_message
    #   <p>The message indicating that the source account aggregation
    #   			failed due to an error.</p>
    #   @return [String]
    class AggregatedSourceStatus < Struct.new(
      :source_id,
      :source_type,
      :aws_region,
      :last_update_status,
      :last_update_time,
      :last_error_code,
      :last_error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AggregatedSourceStatusType
      FAILED = 'FAILED'
      SUCCEEDED = 'SUCCEEDED'
      OUTDATED = 'OUTDATED'
    end

    module AggregatedSourceType
      ACCOUNT = 'ACCOUNT'
      ORGANIZATION = 'ORGANIZATION'
    end

    # <p>An object that represents the authorizations granted to
    # 			aggregator accounts and regions.</p>
    # @!attribute aggregation_authorization_arn
    #   <p>The Amazon Resource Name (ARN) of the aggregation
    #   			object.</p>
    #   @return [String]
    # @!attribute authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate
    #   			data.</p>
    #   @return [String]
    # @!attribute authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time stamp when the aggregation authorization was
    #   			created.</p>
    #   @return [Time]
    class AggregationAuthorization < Struct.new(
      :aggregation_authorization_arn,
      :authorized_account_id,
      :authorized_aws_region,
      :creation_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object to filter the configuration recorders based on the resource types in scope for recording.</p>
    # @!attribute type
    #   <p>The type of resource type filter to apply. <code>INCLUDE</code> specifies that the list of resource types in the <code>Value</code> field will be aggregated and no other resource types will be filtered.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Comma-separate list of resource types to filter your aggregated configuration recorders.</p>
    #   @return [Array<String>]
    class AggregatorFilterResourceType < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object to filter service-linked configuration recorders in an aggregator based on the linked Amazon Web Services service.</p>
    # @!attribute type
    #   <p>The type of service principal filter to apply. <code>INCLUDE</code> specifies that the list of service principals in the <code>Value</code> field will be aggregated and no other service principals will be filtered.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Comma-separated list of service principals for the linked Amazon Web Services services to filter your aggregated service-linked configuration recorders.</p>
    #   @return [Array<String>]
    class AggregatorFilterServicePrincipal < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AggregatorFilterType
      INCLUDE = 'INCLUDE'
    end

    # <p>An object to filter the data you specify for an aggregator.</p>
    # @!attribute resource_type
    #   <p>An object to filter the configuration recorders based on the resource types in scope for recording.</p>
    #   @return [Types::AggregatorFilterResourceType]
    # @!attribute service_principal
    #   <p>An object to filter service-linked configuration recorders in an aggregator based on the linked Amazon Web Services service.</p>
    #   @return [Types::AggregatorFilterServicePrincipal]
    class AggregatorFilters < Struct.new(
      :resource_type,
      :service_principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_recorder_arn
    #   <p>The Amazon Resource Name (ARN) of the specified configuration recorder.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The list of resource types you want to add to the recording group of the specified configuration recorder.</p>
    #   @return [Array<String>]
    class AssociateResourceTypesRequest < Struct.new(
      :configuration_recorder_arn,
      :resource_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_recorder
    #   <p>Records configuration changes to the resource types in scope.</p>
    #            <p>For more information about the configuration recorder,
    #   			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html">
    #                  <b>Working with the Configuration Recorder</b>
    #               </a> in the <i>Config Developer Guide</i>.</p>
    #   @return [Types::ConfigurationRecorder]
    class AssociateResourceTypesResponse < Struct.new(
      :configuration_recorder,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The detailed configurations of a specified resource.</p>
    # @!attribute version
    #   <p>The version number of the resource configuration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID associated with the resource.</p>
    #   @return [String]
    # @!attribute configuration_item_capture_time
    #   <p>The time when the recording of configuration changes was initiated for the resource.</p>
    #   @return [Time]
    # @!attribute configuration_item_status
    #   <p>The configuration item status. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>OK – The resource configuration has been updated.</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDiscovered – The resource was newly discovered.</p>
    #               </li>
    #               <li>
    #                  <p>ResourceNotRecorded – The resource was discovered, but its configuration was not recorded since the recorder doesn't record resources of this type.</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDeleted – The resource was deleted</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDeletedNotRecorded – The resource was deleted, but its configuration was not recorded since the recorder doesn't record resources of this type.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute configuration_state_id
    #   <p>An identifier that indicates the ordering of the configuration
    #   			items of a resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource (for example., sg-xxxxxx).</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The custom name of the resource, if available.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The region where the resource resides.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone associated with the resource.</p>
    #   @return [String]
    # @!attribute resource_creation_time
    #   <p>The time stamp when the resource was created.</p>
    #   @return [Time]
    # @!attribute configuration
    #   <p>A JSON-encoded string that contains the contents for the resource configuration. This string needs to be deserialized using <code>json.loads()</code> before you can access the contents.
    #   </p>
    #   @return [String]
    # @!attribute supplementary_configuration
    #   <p>A string to string map that contains additional contents for the resource configuration.Config returns this field for certain
    #   			resource types to supplement the information returned for the
    #   			<code>configuration</code> field.</p>
    #            <p>This string needs to be deserialized using <code>json.loads()</code> before you can access the contents.</p>
    #   @return [Hash<String, String>]
    # @!attribute recording_frequency
    #   <p>The recording frequency that Config uses to record configuration changes for the resource.</p>
    #            <note>
    #               <p>This field only appears in the API response when <code>DAILY</code> recording is enabled for a resource type.
    #   				If this field is not present, <code>CONTINUOUS</code> recording is enabled for that resource type. For more information on daily recording and continuous recording, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html#select-resources-recording-frequency">Recording Frequency</a> in the <i>Config
    #   						Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute configuration_item_delivery_time
    #   <p>The time when configuration changes for the resource were delivered.</p>
    #            <note>
    #               <p>This field is optional and is not guaranteed to be present in a configuration item  (CI). If you are using daily recording,
    #   			this field will be populated. However, if you are using continuous recording,
    #   			this field will be omitted since the delivery time is instantaneous as the CI is available right away. For more information on daily recording and continuous recording, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html#select-resources-recording-frequency">Recording Frequency</a> in the <i>Config
    #   					Developer Guide</i>.</p>
    #            </note>
    #   @return [Time]
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
      :supplementary_configuration,
      :recording_frequency,
      :configuration_item_delivery_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute resource_identifiers
    #   <p>A list of aggregate ResourceIdentifiers objects. </p>
    #   @return [Array<Types::AggregateResourceIdentifier>]
    class BatchGetAggregateResourceConfigRequest < Struct.new(
      :configuration_aggregator_name,
      :resource_identifiers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute base_configuration_items
    #   <p>A list that contains the current configuration of one or more resources.</p>
    #   @return [Array<Types::BaseConfigurationItem>]
    # @!attribute unprocessed_resource_identifiers
    #   <p>A list of resource identifiers that were not processed with current scope. The list is empty if all the resources are processed.</p>
    #   @return [Array<Types::AggregateResourceIdentifier>]
    class BatchGetAggregateResourceConfigResponse < Struct.new(
      :base_configuration_items,
      :unprocessed_resource_identifiers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_keys
    #   <p>A list of resource keys to be processed with the current
    #   			request. Each element in the list consists of the resource type and
    #   			resource ID.</p>
    #   @return [Array<Types::ResourceKey>]
    class BatchGetResourceConfigRequest < Struct.new(
      :resource_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute base_configuration_items
    #   <p>A list that contains the current configuration of one or more
    #   			resources.</p>
    #   @return [Array<Types::BaseConfigurationItem>]
    # @!attribute unprocessed_resource_keys
    #   <p>A list of resource keys that were not processed with the
    #   			current response. The unprocessesResourceKeys value is in the same
    #   			form as ResourceKeys, so the value can be directly provided to a
    #   			subsequent BatchGetResourceConfig operation.
    #   			
    #   			If there are no unprocessed resource keys, the response contains an
    #   			empty unprocessedResourceKeys list. </p>
    #   @return [Array<Types::ResourceKey>]
    class BatchGetResourceConfigResponse < Struct.new(
      :base_configuration_items,
      :unprocessed_resource_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ChronologicalOrder
      Reverse = 'Reverse'
      Forward = 'Forward'
    end

    # <p>Indicates whether an Amazon Web Services resource or Config rule is
    # 			compliant and provides the number of contributors that affect the
    # 			compliance.</p>
    # @!attribute compliance_type
    #   <p>Indicates whether an Amazon Web Services resource or Config rule is
    #   			compliant.</p>
    #            <p>A resource is compliant if it complies with all of the Config rules that evaluate it. A resource is noncompliant if it does
    #   			not comply with one or more of these rules.</p>
    #            <p>A rule is compliant if all of the resources that the rule
    #   			evaluates comply with it. A rule is noncompliant if any of these
    #   			resources do not comply.</p>
    #            <p>Config returns the <code>INSUFFICIENT_DATA</code> value
    #   			when no evaluation results are available for the Amazon Web Services resource or Config rule.</p>
    #            <p>For the <code>Compliance</code> data type, Config supports
    #   			only <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and
    #   				<code>INSUFFICIENT_DATA</code> values. Config does not
    #   			support the <code>NOT_APPLICABLE</code> value for the
    #   				<code>Compliance</code> data type.</p>
    #   @return [String]
    # @!attribute compliance_contributor_count
    #   <p>The number of Amazon Web Services resources or Config rules that cause a
    #   			result of <code>NON_COMPLIANT</code>, up to a maximum
    #   			number.</p>
    #   @return [Types::ComplianceContributorCount]
    class Compliance < Struct.new(
      :compliance_type,
      :compliance_contributor_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates whether an Config rule is compliant. A rule is
    # 			compliant if all of the resources that the rule evaluated comply
    # 			with it. A rule is noncompliant if any of these resources do not
    # 			comply.</p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #   @return [String]
    # @!attribute compliance
    #   <p>Indicates whether the Config rule is compliant.</p>
    #   @return [Types::Compliance]
    class ComplianceByConfigRule < Struct.new(
      :config_rule_name,
      :compliance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates whether an Amazon Web Services resource that is evaluated according
    # 			to one or more Config rules is compliant. A resource is
    # 			compliant if it complies with all of the rules that evaluate it. A
    # 			resource is noncompliant if it does not comply with one or more of
    # 			these rules.</p>
    # @!attribute resource_type
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #   @return [String]
    # @!attribute compliance
    #   <p>Indicates whether the Amazon Web Services resource complies with all of the Config rules that evaluated it.</p>
    #   @return [Types::Compliance]
    class ComplianceByResource < Struct.new(
      :resource_type,
      :resource_id,
      :compliance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The number of Amazon Web Services resources or Config rules responsible for
    # 			the current compliance of the item, up to a maximum
    # 			number.</p>
    # @!attribute capped_count
    #   <p>The number of Amazon Web Services resources or Config rules responsible for
    #   			the current compliance of the item.</p>
    #   @return [Integer]
    # @!attribute cap_exceeded
    #   <p>Indicates whether the maximum count is reached.</p>
    #   @return [Boolean]
    class ComplianceContributorCount < Struct.new(
      :capped_count,
      :cap_exceeded,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:capped_count] = 0 unless options.key?(:capped_count)
        options[:cap_exceeded] = false unless options.key?(:cap_exceeded)
        super
      end
    end

    # <p>The number of Config rules or Amazon Web Services resources that are
    # 			compliant and noncompliant.</p>
    # @!attribute compliant_resource_count
    #   <p>The number of Config rules or Amazon Web Services resources that are
    #   			compliant, up to a maximum of 25 for rules and 100 for
    #   			resources.</p>
    #   @return [Types::ComplianceContributorCount]
    # @!attribute non_compliant_resource_count
    #   <p>The number of Config rules or Amazon Web Services resources that are
    #   			noncompliant, up to a maximum of 25 for rules and 100 for
    #   			resources.</p>
    #   @return [Types::ComplianceContributorCount]
    # @!attribute compliance_summary_timestamp
    #   <p>The time that Config created the compliance
    #   			summary.</p>
    #   @return [Time]
    class ComplianceSummary < Struct.new(
      :compliant_resource_count,
      :non_compliant_resource_count,
      :compliance_summary_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The number of Amazon Web Services resources of a specific type that are
    # 			compliant or noncompliant, up to a maximum of 100 for
    # 			each.</p>
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute compliance_summary
    #   <p>The number of Amazon Web Services resources that are compliant or noncompliant,
    #   			up to a maximum of 100 for each.</p>
    #   @return [Types::ComplianceSummary]
    class ComplianceSummaryByResourceType < Struct.new(
      :resource_type,
      :compliance_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ComplianceType
      Compliant = 'COMPLIANT'
      Non_Compliant = 'NON_COMPLIANT'
      Not_Applicable = 'NOT_APPLICABLE'
      Insufficient_Data = 'INSUFFICIENT_DATA'
    end

    # <p>Provides status of the delivery of the snapshot or the
    # 			configuration history to the specified Amazon S3 bucket. Also
    # 			provides the status of notifications about the Amazon S3 delivery to
    # 			the specified Amazon SNS topic.</p>
    # @!attribute last_status
    #   <p>Status of the last attempted delivery.</p>
    #   @return [String]
    # @!attribute last_error_code
    #   <p>The error code from the last attempted delivery.</p>
    #   @return [String]
    # @!attribute last_error_message
    #   <p>The error message from the last attempted delivery.</p>
    #   @return [String]
    # @!attribute last_attempt_time
    #   <p>The time of the last attempted delivery.</p>
    #   @return [Time]
    # @!attribute last_successful_time
    #   <p>The time of the last successful delivery.</p>
    #   @return [Time]
    # @!attribute next_delivery_time
    #   <p>The time that the next delivery occurs.</p>
    #   @return [Time]
    class ConfigExportDeliveryInfo < Struct.new(
      :last_status,
      :last_error_code,
      :last_error_message,
      :last_attempt_time,
      :last_successful_time,
      :next_delivery_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Config rules evaluate the configuration settings of your Amazon Web Services resources. A rule can run when Config detects a configuration change to
    # 			an Amazon Web Services resource or at a periodic frequency that you choose (for
    # 			example, every 24 hours). There are two types of rules: <i>Config Managed Rules</i> and <i>Config Custom Rules</i>.</p>
    #          <p>Config Managed Rules are predefined,
    # 				customizable rules created by Config. For a list of managed rules, see
    # 				<a href="https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html">List of Config
    # 					Managed Rules</a>.</p>
    #          <p>Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions
    # 				(<a href="https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function"> Lambda Developer Guide</a>) and with Guard (<a href="https://github.com/aws-cloudformation/cloudformation-guard">Guard GitHub
    # 						Repository</a>), a policy-as-code language.
    # 				
    # 				Config custom rules created with Lambda
    # 				are called <i>Config Custom Lambda Rules</i> and Config custom rules created with
    # 				Guard are called <i>Config Custom Policy Rules</i>.</p>
    #          <p>For more information about developing and using Config
    # 			rules, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating Resource with Config Rules</a>
    # 			in the <i>Config Developer Guide</i>.</p>
    #          <note>
    #             <p>You can use the Amazon Web Services CLI and Amazon Web Services SDKs if you want to create
    # 				a rule that triggers evaluations for your resources when Config delivers the configuration snapshot. For more
    # 				information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    #          </note>
    # @!attribute config_rule_name
    #   <p>The name that you assign to the Config rule. The name is
    #   			required if you are adding a new rule.</p>
    #   @return [String]
    # @!attribute config_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the Config
    #   			rule.</p>
    #   @return [String]
    # @!attribute config_rule_id
    #   <p>The ID of the Config rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description that you provide for the Config
    #   			rule.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Defines which resources can trigger an evaluation for the rule.
    #   			The scope can include one or more resource types, a combination of
    #   			one resource type and one resource ID, or a combination of a tag key
    #   			and value. Specify a scope to constrain the resources that can
    #   			trigger an evaluation for the rule. If you do not specify a scope,
    #   			evaluations are triggered when any resource in the recording group
    #   			changes.</p>
    #   @return [Types::Scope]
    # @!attribute source
    #   <p>Provides the rule owner (<code>Amazon Web Services</code> for managed rules, <code>CUSTOM_POLICY</code> for Custom Policy rules, and <code>CUSTOM_LAMBDA</code> for Custom Lambda rules), the rule identifier,
    #   			and the notifications that cause the function to evaluate your Amazon Web Services
    #   			resources.</p>
    #   @return [Types::Source]
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to the Config rule
    #   			Lambda function.</p>
    #   @return [String]
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations
    #   			for a rule. You can specify a value for
    #   				<code>MaximumExecutionFrequency</code> when:</p>
    #            <ul>
    #               <li>
    #                  <p>This is for an Config managed rule that is triggered at
    #   					a periodic frequency.</p>
    #               </li>
    #               <li>
    #                  <p>Your custom rule is triggered when Config delivers
    #   					the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>By default, rules with a periodic trigger are evaluated
    #   				every 24 hours. To change the frequency, specify a valid value
    #   				for the <code>MaximumExecutionFrequency</code>
    #   				parameter.</p>
    #            </note>
    #   @return [String]
    # @!attribute config_rule_state
    #   <p>Indicates whether the Config rule is active or is currently
    #   			being deleted by Config. It can also indicate the evaluation
    #   			status for the Config rule.</p>
    #            <p>Config sets the state of the rule to
    #   				<code>EVALUATING</code> temporarily after you use the
    #   				<code>StartConfigRulesEvaluation</code> request to evaluate your
    #   			resources against the Config rule.</p>
    #            <p>Config sets the state of the rule to
    #   				<code>DELETING_RESULTS</code> temporarily after you use the
    #   				<code>DeleteEvaluationResults</code> request to delete the
    #   			current evaluation results for the Config rule.</p>
    #            <p>Config temporarily sets the state of a rule to
    #   				<code>DELETING</code> after you use the
    #   				<code>DeleteConfigRule</code> request to delete the rule. After
    #   			Config deletes the rule, the rule and all of its evaluations are
    #   			erased and are no longer available.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Service principal name of the service that created the
    #   			rule.</p>
    #            <note>
    #               <p>The field is populated only if the service-linked rule is
    #   				created by a service. The field is empty if you create your own
    #   				rule.</p>
    #            </note>
    #   @return [String]
    # @!attribute evaluation_modes
    #   <p>The modes the Config rule can be evaluated in. The valid values are distinct objects. By default, the value is Detective evaluation mode only.</p>
    #   @return [Array<Types::EvaluationModeConfiguration>]
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
      :evaluation_modes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filters the compliance results based on account ID, region,
    # 			compliance type, and rule name.</p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p>The rule compliance status.</p>
    #            <p>For the <code>ConfigRuleComplianceFilters</code> data type, Config supports only <code>COMPLIANT</code> and
    #   				<code>NON_COMPLIANT</code>. Config does not support the
    #   				<code>NOT_APPLICABLE</code> and the
    #   				<code>INSUFFICIENT_DATA</code> values.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.
    #   			</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The source region where the data is aggregated.
    #   			</p>
    #   @return [String]
    class ConfigRuleComplianceFilters < Struct.new(
      :config_rule_name,
      :compliance_type,
      :account_id,
      :aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filters the results based on the account IDs and
    # 			regions.</p>
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The source region where the data is aggregated.</p>
    #   @return [String]
    class ConfigRuleComplianceSummaryFilters < Struct.new(
      :account_id,
      :aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConfigRuleComplianceSummaryGroupKey
      ACCOUNT_ID = 'ACCOUNT_ID'
      AWS_REGION = 'AWS_REGION'
    end

    # <p>Status information for your Config Managed rules and Config Custom Policy rules. The
    # 			status includes information such as the last time the rule ran, the
    # 			last time it failed, and the related error for the last
    # 			failure.</p>
    #          <p>This operation does not return status information about Config Custom Lambda rules.</p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #   @return [String]
    # @!attribute config_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the Config
    #   			rule.</p>
    #   @return [String]
    # @!attribute config_rule_id
    #   <p>The ID of the Config rule.</p>
    #   @return [String]
    # @!attribute last_successful_invocation_time
    #   <p>The time that Config last successfully invoked the Config rule to evaluate your Amazon Web Services resources.</p>
    #   @return [Time]
    # @!attribute last_failed_invocation_time
    #   <p>The time that Config last failed to invoke the Config
    #   			rule to evaluate your Amazon Web Services resources.</p>
    #   @return [Time]
    # @!attribute last_successful_evaluation_time
    #   <p>The time that Config last successfully evaluated your Amazon Web Services
    #   			resources against the rule.</p>
    #   @return [Time]
    # @!attribute last_failed_evaluation_time
    #   <p>The time that Config last failed to evaluate your Amazon Web Services
    #   			resources against the rule.</p>
    #   @return [Time]
    # @!attribute first_activated_time
    #   <p>The time that you first activated the Config
    #   			rule.</p>
    #   @return [Time]
    # @!attribute last_deactivated_time
    #   <p>The time that you last turned off the Config rule.</p>
    #   @return [Time]
    # @!attribute last_error_code
    #   <p>The error code that Config returned when the rule last
    #   			failed.</p>
    #   @return [String]
    # @!attribute last_error_message
    #   <p>The error message that Config returned when the rule last
    #   			failed.</p>
    #   @return [String]
    # @!attribute first_evaluation_started
    #   <p>Indicates whether Config has evaluated your resources
    #   			against the rule at least once.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code> - Config has evaluated your Amazon Web Services
    #   					resources against the rule at least once.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code> - Config has not finished evaluating your Amazon Web Services resources against the
    #   					rule
    #   					at least once.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute last_debug_log_delivery_status
    #   <p>The status of the last attempted delivery of a debug log for your Config Custom Policy rules. Either <code>Successful</code> or <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute last_debug_log_delivery_status_reason
    #   <p>The reason Config was not able to deliver a debug log. This is for the last
    #   			failed attempt to retrieve a debug log for your Config Custom Policy rules.</p>
    #   @return [String]
    # @!attribute last_debug_log_delivery_time
    #   <p>The time Config last attempted to deliver a debug log for your Config Custom Policy rules.</p>
    #   @return [Time]
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
      :last_debug_log_delivery_time,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:first_evaluation_started] = false unless options.key?(:first_evaluation_started)
        super
      end
    end

    module ConfigRuleState
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
      DELETING_RESULTS = 'DELETING_RESULTS'
      EVALUATING = 'EVALUATING'
    end

    # <p>Provides options for how often Config delivers
    # 			configuration snapshots to the Amazon S3 bucket in your delivery
    # 			channel.</p>
    #          <p>The frequency for a rule that triggers evaluations for your
    # 			resources when Config delivers the configuration snapshot is set
    # 			by one of two values, depending on which is less frequent:</p>
    #          <ul>
    #             <li>
    #                <p>The value for the <code>deliveryFrequency</code>
    # 					parameter within the delivery channel configuration, which
    # 					sets how often Config delivers configuration snapshots.
    # 					This value also sets how often Config invokes
    # 					evaluations for Config rules.</p>
    #             </li>
    #             <li>
    #                <p>The value for the
    # 						<code>MaximumExecutionFrequency</code> parameter, which
    # 					sets the maximum frequency with which Config invokes
    # 					evaluations for the rule. For more information, see <a>ConfigRule</a>.</p>
    #             </li>
    #          </ul>
    #          <p>If the <code>deliveryFrequency</code> value is less frequent
    # 			than the <code>MaximumExecutionFrequency</code> value for a rule,
    # 			Config invokes the rule only as often as the
    # 				<code>deliveryFrequency</code> value.</p>
    #          <ol>
    #             <li>
    #                <p>For example, you want your rule to run evaluations when
    # 					Config delivers the configuration snapshot.</p>
    #             </li>
    #             <li>
    #                <p>You specify the <code>MaximumExecutionFrequency</code>
    # 					value for <code>Six_Hours</code>. </p>
    #             </li>
    #             <li>
    #                <p>You then specify the delivery channel
    # 						<code>deliveryFrequency</code> value for
    # 						<code>TwentyFour_Hours</code>.</p>
    #             </li>
    #             <li>
    #                <p>Because the value for <code>deliveryFrequency</code> is
    # 					less frequent than <code>MaximumExecutionFrequency</code>,
    # 					Config invokes evaluations for the rule every 24 hours.
    # 				</p>
    #             </li>
    #          </ol>
    #          <p>You should set the <code>MaximumExecutionFrequency</code> value
    # 			to be at least as frequent as the <code>deliveryFrequency</code>
    # 			value. You can view the <code>deliveryFrequency</code> value by
    # 			using the <code>DescribeDeliveryChannnels</code> action.</p>
    #          <p>To update the <code>deliveryFrequency</code> with which Config delivers your configuration snapshots, use the
    # 				<code>PutDeliveryChannel</code> action.</p>
    # @!attribute delivery_frequency
    #   <p>The frequency with which Config delivers configuration
    #   			snapshots.</p>
    #   @return [String]
    class ConfigSnapshotDeliveryProperties < Struct.new(
      :delivery_frequency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list that contains the status of the delivery of the
    # 			configuration stream notification to the Amazon SNS topic.</p>
    # @!attribute last_status
    #   <p>Status of the last attempted delivery.</p>
    #            <p>
    #               <b>Note</b> Providing an SNS topic on a
    #   				<a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html">DeliveryChannel</a> for Config is optional. If the SNS
    #   			delivery is turned off, the last status will be <b>Not_Applicable</b>.</p>
    #   @return [String]
    # @!attribute last_error_code
    #   <p>The error code from the last attempted delivery.</p>
    #   @return [String]
    # @!attribute last_error_message
    #   <p>The error message from the last attempted delivery.</p>
    #   @return [String]
    # @!attribute last_status_change_time
    #   <p>The time from the last status change.</p>
    #   @return [Time]
    class ConfigStreamDeliveryInfo < Struct.new(
      :last_status,
      :last_error_code,
      :last_error_message,
      :last_status_change_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details about the configuration aggregator, including
    # 			information about source accounts, regions, and metadata of the
    # 			aggregator. </p>
    # @!attribute configuration_aggregator_name
    #   <p>The name of the aggregator.</p>
    #   @return [String]
    # @!attribute configuration_aggregator_arn
    #   <p>The Amazon Resource Name (ARN) of the aggregator.</p>
    #   @return [String]
    # @!attribute account_aggregation_sources
    #   <p>Provides a list of source accounts and regions to be
    #   			aggregated.</p>
    #   @return [Array<Types::AccountAggregationSource>]
    # @!attribute organization_aggregation_source
    #   <p>Provides an organization and list of regions to be
    #   			aggregated.</p>
    #   @return [Types::OrganizationAggregationSource]
    # @!attribute creation_time
    #   <p>The time stamp when the configuration aggregator was
    #   			created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time of the last update.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>Amazon Web Services service that created the configuration aggregator.</p>
    #   @return [String]
    # @!attribute aggregator_filters
    #   <p>An object to filter the data you specify for an aggregator.</p>
    #   @return [Types::AggregatorFilters]
    class ConfigurationAggregator < Struct.new(
      :configuration_aggregator_name,
      :configuration_aggregator_arn,
      :account_aggregation_sources,
      :organization_aggregation_source,
      :creation_time,
      :last_updated_time,
      :created_by,
      :aggregator_filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list that contains detailed configurations of a specified
    # 			resource.</p>
    # @!attribute version
    #   <p>The version number of the resource configuration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID associated with the
    #   			resource.</p>
    #   @return [String]
    # @!attribute configuration_item_capture_time
    #   <p>The time when the recording of configuration changes was
    #   			initiated for the resource.</p>
    #   @return [Time]
    # @!attribute configuration_item_status
    #   <p>The configuration item status. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>OK – The resource configuration has been updated</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDiscovered – The resource was newly discovered</p>
    #               </li>
    #               <li>
    #                  <p>ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder doesn't record resources of this type</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDeleted – The resource was deleted</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder doesn't  record resources of this type</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute configuration_state_id
    #   <p>An identifier that indicates the ordering of the configuration
    #   			items of a resource.</p>
    #   @return [String]
    # @!attribute configuration_item_md5_hash
    #   <p>Unique MD5 hash that represents the configuration item's
    #   			state.</p>
    #            <p>You can use MD5 hash to compare the states of two or more
    #   			configuration items that are associated with the same
    #   			resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource (for example,
    #   			<code>sg-xxxxxx</code>).</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The custom name of the resource, if available.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The region where the resource resides.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone associated with the resource.</p>
    #   @return [String]
    # @!attribute resource_creation_time
    #   <p>The time stamp when the resource was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A mapping of key value tags associated with the
    #   			resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute related_events
    #   <p>A list of CloudTrail event IDs.</p>
    #            <p>A populated field indicates that the current configuration was
    #   			initiated by the events recorded in the CloudTrail log. For more
    #   			information about CloudTrail, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">What Is CloudTrail</a>.</p>
    #            <p>An empty field indicates that the current configuration was not
    #   			initiated by any event. As of Version 1.3, the relatedEvents field is empty. 
    #   			You can access the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html">LookupEvents API</a> in the <i>CloudTrail API Reference</i> to retrieve the events for the resource.</p>
    #   @return [Array<String>]
    # @!attribute relationships
    #   <p>A list of related Amazon Web Services resources.</p>
    #   @return [Array<Types::Relationship>]
    # @!attribute configuration
    #   <p>A JSON-encoded string that contains the contents for the resource configuration. This string needs to be deserialized using <code>json.loads()</code> before you can access the contents.</p>
    #   @return [String]
    # @!attribute supplementary_configuration
    #   <p>A string to string map that contains additional contents for the resource configuration.Config returns this field for certain
    #   			resource types to supplement the information returned for the
    #   			<code>configuration</code> field.</p>
    #            <p>This string to string map needs to be deserialized using <code>json.loads()</code> before you can accessing the contents.</p>
    #   @return [Hash<String, String>]
    # @!attribute recording_frequency
    #   <p>The recording frequency that Config uses to record configuration changes for the resource.</p>
    #            <note>
    #               <p>This field only appears in the API response when <code>DAILY</code> recording is enabled for a resource type.
    #   				If this field is not present, <code>CONTINUOUS</code> recording is enabled for that resource type. For more information on daily recording and continuous recording, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html#select-resources-recording-frequency">Recording Frequency</a> in the <i>Config
    #   						Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute configuration_item_delivery_time
    #   <p>The time when configuration changes for the resource were delivered.</p>
    #            <note>
    #               <p>This field is optional and is not guaranteed to be present in a configuration item  (CI). If you are using daily recording,
    #   			this field will be populated. However, if you are using continuous recording,
    #   			this field will be omitted since the delivery time is instantaneous as the CI is available right away.</p>
    #               <p>For more information on daily recording and continuous recording, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html#select-resources-recording-frequency">Recording Frequency</a> in the <i>Config
    #   					Developer Guide</i>.</p>
    #            </note>
    #   @return [Time]
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
      :supplementary_configuration,
      :recording_frequency,
      :configuration_item_delivery_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConfigurationItemStatus
      OK = 'OK'
      ResourceDiscovered = 'ResourceDiscovered'
      ResourceNotRecorded = 'ResourceNotRecorded'
      ResourceDeleted = 'ResourceDeleted'
      ResourceDeletedNotRecorded = 'ResourceDeletedNotRecorded'
    end

    # <p>Records configuration changes to the resource types in scope.</p>
    #          <p>For more information about the configuration recorder,
    # 			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html">
    #                <b>Working with the Configuration Recorder</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the specified configuration recorder.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration recorder.</p>
    #            <p>For customer managed configuration recorders, Config automatically assigns the name of "default" when creating a configuration recorder if you do not specify a name at creation time.</p>
    #            <p>For service-linked configuration recorders, Config automatically assigns a name that has the prefix "<code>AWSConfigurationRecorderFor</code>" to a new service-linked configuration recorder.</p>
    #            <note>
    #               <p>
    #                  <b>Changing the name of a configuration recorder</b>
    #               </p>
    #               <p>To change the name of the customer managed configuration recorder, you must delete it and create a new customer managed configuration recorder with a new name.</p>
    #               <p>You cannot change the name of a service-linked configuration recorder.</p>
    #            </note>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role assumed by Config and used by the specified configuration recorder.</p>
    #            <note>
    #               <p>
    #                  <b>The server will reject a request without a defined <code>roleARN</code> for the configuration recorder</b>
    #               </p>
    #               <p>While the API model does not require this field, the server will reject a request without a defined <code>roleARN</code> for the configuration recorder.</p>
    #               <p>
    #                  <b>Policies and compliance results</b>
    #               </p>
    #               <p>
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM policies</a>
    #   				and <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html">other policies managed in Organizations</a>
    #   				can impact whether Config
    #   				has permissions to record configuration changes for your resources. Additionally, rules directly evaluate the configuration of a resource and rules don't take into account these policies when running evaluations.
    #   				Make sure that the policies in effect align with how you intend to use Config.</p>
    #               <p>
    #                  <b>Keep Minimum Permisions When Reusing an IAM role</b>
    #               </p>
    #               <p>If you use an Amazon Web Services service that uses Config, such as Security Hub or
    #   				Control Tower, and an IAM role has already been created, make sure that the
    #   				IAM role that you use when setting up Config keeps the same minimum
    #   				permissions as the pre-existing IAM role. You must do this to ensure that the
    #   				other Amazon Web Services service continues to run as expected. </p>
    #               <p>For example, if Control Tower has an IAM role that allows Config to read
    #   				S3 objects, make sure that the same permissions are granted
    #   				to the IAM role you use when setting up Config. Otherwise, it may
    #   				interfere with how Control Tower operates.</p>
    #               <p>
    #                  <b>The service-linked IAM role for Config must be used for service-linked configuration recorders</b>
    #               </p>
    #               <p>For service-linked configuration recorders, you must use the service-linked IAM role for Config: <a href="https://docs.aws.amazon.com/config/latest/developerguide/using-service-linked-roles.html">AWSServiceRoleForConfig</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute recording_group
    #   <p>Specifies which resource types are in scope for the configuration recorder to record.</p>
    #            <note>
    #               <p>
    #                  <b> High Number of Config Evaluations</b>
    #               </p>
    #               <p>You might notice increased activity in your account during your initial month recording with Config when compared to subsequent months. During the
    #   				initial bootstrapping process, Config runs evaluations on all the resources in your account that you have selected
    #   				for Config to record.</p>
    #               <p>If you are running ephemeral workloads, you may see increased activity from Config as it records configuration changes associated with creating and deleting these
    #   				temporary resources. An <i>ephemeral workload</i> is a temporary use of computing resources that are loaded
    #   				and run when needed. Examples include Amazon Elastic Compute Cloud (Amazon EC2)
    #   				Spot Instances, Amazon EMR jobs, and Auto Scaling.</p>
    #               <p>If you want to avoid the increased activity from running ephemeral workloads, you can set up the configuration recorder to exclude these resource types from being recorded, or run these types of workloads in a separate account with Config turned off to avoid
    #   				increased configuration recording and rule evaluations.</p>
    #            </note>
    #   @return [Types::RecordingGroup]
    # @!attribute recording_mode
    #   <p>Specifies the default recording frequency for the configuration recorder.
    #   			
    #   			Config supports <i>Continuous recording</i> and <i>Daily recording</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Continuous recording allows you to record configuration changes continuously whenever a change occurs.</p>
    #               </li>
    #               <li>
    #                  <p>Daily recording allows you to receive a configuration item (CI) representing the most recent state of your resources over the last 24-hour period, only if it’s different from the previous CI recorded.
    #   			</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <b>Some resource types require continuous recording</b>
    #               </p>
    #               <p>Firewall Manager depends on continuous recording to monitor your resources. If you are using Firewall Manager,
    #   			it is recommended that you set the recording frequency to Continuous.</p>
    #            </note>
    #            <p>You can also override the recording frequency for specific resource types.</p>
    #   @return [Types::RecordingMode]
    # @!attribute recording_scope
    #   <p>Specifies whether the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_ConfigurationItem.html">ConfigurationItems</a> in scope for the specified configuration recorder are recorded for free (<code>INTERNAL</code>) or if it impacts the costs to your bill (<code>PAID</code>).</p>
    #   @return [String]
    # @!attribute service_principal
    #   <p>For service-linked configuration recorders, specifies the linked Amazon Web Services service for the configuration recorder.</p>
    #   @return [String]
    class ConfigurationRecorder < Struct.new(
      :arn,
      :name,
      :role_arn,
      :recording_group,
      :recording_mode,
      :recording_scope,
      :service_principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filters configuration recorders by recording scope.</p>
    # @!attribute filter_name
    #   <p>The name of the type of filter. Currently, only <code>recordingScope</code> is supported.</p>
    #   @return [String]
    # @!attribute filter_value
    #   <p>The value of the filter. For <code>recordingScope</code>, valid values include: <code>INTERNAL</code> and <code>PAID</code>.</p>
    #            <p>
    #               <code>INTERNAL</code> indicates that the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_ConfigurationItem.html">ConfigurationItems</a> in scope for the configuration recorder are recorded for free.</p>
    #            <p>
    #               <code>PAID</code> indicates that the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_ConfigurationItem.html">ConfigurationItems</a> in scope for the configuration recorder impact the costs to your bill.</p>
    #   @return [Array<String>]
    class ConfigurationRecorderFilter < Struct.new(
      :filter_name,
      :filter_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConfigurationRecorderFilterName
      RecordingScope = 'recordingScope'
    end

    # <p>The current status of the configuration recorder.</p>
    #          <p>For a detailed status of recording events over time, add your Config events to CloudWatch metrics and use CloudWatch metrics.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration recorder.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration recorder.</p>
    #   @return [String]
    # @!attribute last_start_time
    #   <p>The time the recorder was last started.</p>
    #   @return [Time]
    # @!attribute last_stop_time
    #   <p>The time the recorder was last stopped.</p>
    #   @return [Time]
    # @!attribute recording
    #   <p>Specifies whether or not the recorder is currently
    #   			recording.</p>
    #   @return [Boolean]
    # @!attribute last_status
    #   <p>The status of the latest recording event processed by the recorder.</p>
    #   @return [String]
    # @!attribute last_error_code
    #   <p>The latest error code from when the recorder last failed.</p>
    #   @return [String]
    # @!attribute last_error_message
    #   <p>The latest error message from when the recorder last failed.</p>
    #   @return [String]
    # @!attribute last_status_change_time
    #   <p>The time of the latest change in status of an recording event processed by the recorder.</p>
    #   @return [Time]
    # @!attribute service_principal
    #   <p>For service-linked configuration recorders, the service principal of the linked Amazon Web Services service.</p>
    #   @return [String]
    class ConfigurationRecorderStatus < Struct.new(
      :arn,
      :name,
      :last_start_time,
      :last_stop_time,
      :recording,
      :last_status,
      :last_error_code,
      :last_error_message,
      :last_status_change_time,
      :service_principal,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:recording] = false unless options.key?(:recording)
        super
      end
    end

    # <p>A summary of a configuration recorder, including the <code>arn</code>, <code>name</code>, <code>servicePrincipal</code>, and <code>recordingScope</code>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration recorder.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration recorder.</p>
    #   @return [String]
    # @!attribute service_principal
    #   <p>For service-linked configuration recorders, indicates which Amazon Web Services service the configuration recorder is linked to.</p>
    #   @return [String]
    # @!attribute recording_scope
    #   <p>Indicates whether the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_ConfigurationItem.html">ConfigurationItems</a> in scope for the configuration recorder are recorded for free (<code>INTERNAL</code>) or if you are charged a service fee for recording (<code>PAID</code>).</p>
    #   @return [String]
    class ConfigurationRecorderSummary < Struct.new(
      :arn,
      :name,
      :service_principal,
      :recording_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutServiceLinkedConfigurationRecorder.html">PutServiceLinkedConfigurationRecorder</a>, you cannot create a service-linked recorder because a service-linked recorder already exists for the specified service.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteServiceLinkedConfigurationRecorder.html">DeleteServiceLinkedConfigurationRecorder</a>, you cannot delete the service-linked recorder because it is currently in use by the linked Amazon Web Services service.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteDeliveryChannel.html">DeleteDeliveryChannel</a>, you cannot delete the specified delivery channel because the customer managed configuration recorder is running. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_StopConfigurationRecorder.html">StopConfigurationRecorder</a> operation to stop the customer managed configuration
    # 			recorder.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_AssociateResourceTypes.html">AssociateResourceTypes</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DisassociateResourceTypes.html">DisassociateResourceTypes</a>, one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>For service-linked configuration recorders, the configuration recorder is not in use by the service. No association or dissociation of resource types is permitted.</p>
    #             </li>
    #             <li>
    #                <p>For service-linked configuration recorders, your requested change to the configuration recorder has been denied by its linked Amazon Web Services service.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filters the conformance pack by compliance types and Config rule names.</p>
    # @!attribute config_rule_names
    #   <p>Filters the results by Config rule names.</p>
    #   @return [Array<String>]
    # @!attribute compliance_type
    #   <p>Filters the results by compliance.</p>
    #            <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>
    #   @return [String]
    class ConformancePackComplianceFilters < Struct.new(
      :config_rule_names,
      :compliance_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A compliance score is the percentage of the number of compliant rule-resource combinations in a conformance pack compared to the number of total possible rule-resource combinations in the conformance pack.
    # 			This metric provides you with a high-level view of the compliance state of your conformance packs. You can use it to identify, investigate, and understand
    # 			the level of compliance in your conformance packs.</p>
    # @!attribute score
    #   <p>Compliance score for the conformance pack. Conformance packs with no evaluation results will have a compliance score of <code>INSUFFICIENT_DATA</code>.</p>
    #   @return [String]
    # @!attribute conformance_pack_name
    #   <p>The name of the conformance pack.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time that the conformance pack compliance score was last updated.</p>
    #   @return [Time]
    class ConformancePackComplianceScore < Struct.new(
      :score,
      :conformance_pack_name,
      :last_updated_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of filters to apply to the conformance pack compliance score result set. </p>
    # @!attribute conformance_pack_names
    #   <p>The names of the conformance packs whose compliance scores you want to include in the conformance pack compliance score result set.
    #   			You can include up to 25 conformance packs in the <code>ConformancePackNames</code> array of strings, each with a character limit of 256 characters for the conformance pack name.</p>
    #   @return [Array<String>]
    class ConformancePackComplianceScoresFilters < Struct.new(
      :conformance_pack_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary includes the name and status of the conformance pack.</p>
    # @!attribute conformance_pack_name
    #   <p>The name of the conformance pack name.</p>
    #   @return [String]
    # @!attribute conformance_pack_compliance_status
    #   <p>The status of the conformance pack.</p>
    #   @return [String]
    class ConformancePackComplianceSummary < Struct.new(
      :conformance_pack_name,
      :conformance_pack_compliance_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConformancePackComplianceType
      COMPLIANT = 'COMPLIANT'
      NON_COMPLIANT = 'NON_COMPLIANT'
      INSUFFICIENT_DATA = 'INSUFFICIENT_DATA'
    end

    # <p>Returns details of a conformance pack. A conformance pack is a collection of Config rules and remediation actions that can be easily deployed in an account and a region.</p>
    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #   @return [String]
    # @!attribute conformance_pack_arn
    #   <p>Amazon Resource Name (ARN) of the conformance pack.</p>
    #   @return [String]
    # @!attribute conformance_pack_id
    #   <p>ID of the conformance pack.</p>
    #   @return [String]
    # @!attribute delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates. </p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    #   @return [String]
    # @!attribute delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket.</p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    #   @return [String]
    # @!attribute conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #   @return [Array<Types::ConformancePackInputParameter>]
    # @!attribute last_update_requested_time
    #   <p>The last time a conformation pack update was requested. </p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon Web Services service that created the conformance pack.</p>
    #   @return [String]
    # @!attribute template_ssm_document_details
    #   <p>An object that contains the name or Amazon Resource Name (ARN) of the Amazon Web Services Systems Manager document (SSM document) and the version of the SSM document that is used to create a conformance pack.</p>
    #   @return [Types::TemplateSSMDocumentDetails]
    class ConformancePackDetail < Struct.new(
      :conformance_pack_name,
      :conformance_pack_arn,
      :conformance_pack_id,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :last_update_requested_time,
      :created_by,
      :template_ssm_document_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filters a conformance pack by Config rule names, compliance types, Amazon Web Services resource types, and resource IDs.</p>
    # @!attribute config_rule_names
    #   <p>Filters the results by Config rule names.</p>
    #   @return [Array<String>]
    # @!attribute compliance_type
    #   <p>Filters the results by compliance.</p>
    #            <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Filters the results by the resource type (for example, <code>"AWS::EC2::Instance"</code>). </p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>Filters the results by resource IDs.</p>
    #            <note>
    #               <p>This is valid only when you provide resource type. If there is no resource type, you will see an error.</p>
    #            </note>
    #   @return [Array<String>]
    class ConformancePackEvaluationFilters < Struct.new(
      :config_rule_names,
      :compliance_type,
      :resource_type,
      :resource_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a conformance pack evaluation. Provides Config rule and Amazon Web Services resource type that was evaluated, the compliance of the conformance pack, related time stamps, and supplementary information. </p>
    # @!attribute compliance_type
    #   <p>The compliance type. The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>
    #   @return [String]
    # @!attribute evaluation_result_identifier
    #   <p>Uniquely identifies an evaluation result.</p>
    #   @return [Types::EvaluationResultIdentifier]
    # @!attribute config_rule_invoked_time
    #   <p>The time when Config rule evaluated Amazon Web Services resource.</p>
    #   @return [Time]
    # @!attribute result_recorded_time
    #   <p>The time when Config recorded the evaluation result. </p>
    #   @return [Time]
    # @!attribute annotation
    #   <p>Supplementary information about how the evaluation determined the compliance. </p>
    #   @return [String]
    class ConformancePackEvaluationResult < Struct.new(
      :compliance_type,
      :evaluation_result_identifier,
      :config_rule_invoked_time,
      :result_recorded_time,
      :annotation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input parameters in the form of key-value pairs for the conformance pack, both of which you define. 
    # 			Keys can have a maximum character length of 255 characters, and values can have a maximum length of 4096 characters.</p>
    # @!attribute parameter_name
    #   <p>One part of a key-value pair.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>Another part of the key-value pair. </p>
    #   @return [String]
    class ConformancePackInputParameter < Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Compliance information of one or more Config rules within a conformance pack. You can filter using Config rule names and compliance types.</p>
    # @!attribute config_rule_name
    #   <p>Name of the Config rule.</p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p>Compliance of the Config rule.</p>
    #   @return [String]
    # @!attribute controls
    #   <p>Controls for the conformance pack. A control is a process to prevent or detect problems while meeting objectives.
    #   			A control can align with a specific compliance regime or map to internal controls defined by an organization.</p>
    #   @return [Array<String>]
    class ConformancePackRuleCompliance < Struct.new(
      :config_rule_name,
      :compliance_type,
      :controls,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConformancePackState
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      CREATE_COMPLETE = 'CREATE_COMPLETE'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      DELETE_FAILED = 'DELETE_FAILED'
    end

    # <p>Status details of a conformance pack.</p>
    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #   @return [String]
    # @!attribute conformance_pack_id
    #   <p>ID of the conformance pack.</p>
    #   @return [String]
    # @!attribute conformance_pack_arn
    #   <p>Amazon Resource Name (ARN) of comformance pack.</p>
    #   @return [String]
    # @!attribute conformance_pack_state
    #   <p>Indicates deployment status of conformance pack.</p>
    #            <p>Config sets the state of the conformance pack to:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE_IN_PROGRESS when a conformance pack creation is in progress for an account.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_COMPLETE when a conformance pack has been successfully created in your account.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED when a conformance pack creation failed in your account.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_IN_PROGRESS when a conformance pack deletion is in progress. </p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED when a conformance pack deletion failed in your account.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute stack_arn
    #   <p>Amazon Resource Name (ARN) of CloudFormation stack. </p>
    #   @return [String]
    # @!attribute conformance_pack_status_reason
    #   <p>The reason of conformance pack creation failure.</p>
    #   @return [String]
    # @!attribute last_update_requested_time
    #   <p>Last time when conformation pack creation and update was requested.</p>
    #   @return [Time]
    # @!attribute last_update_completed_time
    #   <p>Last time when conformation pack creation and update was successful.</p>
    #   @return [Time]
    class ConformancePackStatusDetail < Struct.new(
      :conformance_pack_name,
      :conformance_pack_id,
      :conformance_pack_arn,
      :conformance_pack_state,
      :stack_arn,
      :conformance_pack_status_reason,
      :last_update_requested_time,
      :last_update_completed_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have specified a template that is not valid or supported.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class ConformancePackTemplateValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the runtime system, policy definition, and whether debug logging enabled. You can
    # 			specify the following CustomPolicyDetails parameter values 
    # 			only
    # 			for Config Custom Policy rules.</p>
    # @!attribute policy_runtime
    #   <p>The runtime system for your Config Custom Policy rule. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the <a href="https://github.com/aws-cloudformation/cloudformation-guard">Guard GitHub
    #   					Repository</a>.</p>
    #   @return [String]
    # @!attribute policy_text
    #   <p>The policy definition containing the logic for your Config Custom Policy rule.</p>
    #   @return [String]
    # @!attribute enable_debug_log_delivery
    #   <p>The boolean expression for enabling debug logging for your Config Custom Policy rule. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class CustomPolicyDetails < Struct.new(
      :policy_runtime,
      :policy_text,
      :enable_debug_log_delivery,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_debug_log_delivery] = false unless options.key?(:enable_debug_log_delivery)
        super
      end
    end

    # @!attribute authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate
    #   			data.</p>
    #   @return [String]
    # @!attribute authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #   @return [String]
    class DeleteAggregationAuthorizationRequest < Struct.new(
      :authorized_account_id,
      :authorized_aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule that you want to
    #   			delete.</p>
    #   @return [String]
    class DeleteConfigRuleRequest < Struct.new(
      :config_rule_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    class DeleteConfigurationAggregatorRequest < Struct.new(
      :configuration_aggregator_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request object for the
    # 				<code>DeleteConfigurationRecorder</code> operation.</p>
    # @!attribute configuration_recorder_name
    #   <p>The name of the customer managed configuration recorder that you want to delete. You can
    #   			retrieve the name of your configuration recorders by using the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DescribeConfigurationRecorders.html">DescribeConfigurationRecorders</a> operation.</p>
    #   @return [String]
    class DeleteConfigurationRecorderRequest < Struct.new(
      :configuration_recorder_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack you want to delete.</p>
    #   @return [String]
    class DeleteConformancePackRequest < Struct.new(
      :conformance_pack_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>DeleteDeliveryChannel</a>
    # 			action. The action accepts the following data, in JSON format.
    # 		</p>
    # @!attribute delivery_channel_name
    #   <p>The name of the delivery channel that you want to delete.</p>
    #   @return [String]
    class DeleteDeliveryChannelRequest < Struct.new(
      :delivery_channel_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want to delete
    #   			the evaluation results.</p>
    #   @return [String]
    class DeleteEvaluationResultsRequest < Struct.new(
      :config_rule_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output when you delete the evaluation results for the
    # 			specified Config rule.</p>
    class DeleteEvaluationResultsResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_config_rule_name
    #   <p>The name of organization Config rule that you want to delete.</p>
    #   @return [String]
    class DeleteOrganizationConfigRuleRequest < Struct.new(
      :organization_config_rule_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_conformance_pack_name
    #   <p>The name of organization conformance pack that you want to delete.</p>
    #   @return [String]
    class DeleteOrganizationConformancePackRequest < Struct.new(
      :organization_conformance_pack_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute requester_account_id
    #   <p>The 12-digit account ID of the account requesting to aggregate
    #   			data.</p>
    #   @return [String]
    # @!attribute requester_aws_region
    #   <p>The region requesting to aggregate data.</p>
    #   @return [String]
    class DeletePendingAggregationRequestRequest < Struct.new(
      :requester_account_id,
      :requester_aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want to delete remediation configuration.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of a resource.</p>
    #   @return [String]
    class DeleteRemediationConfigurationRequest < Struct.new(
      :config_rule_name,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteRemediationConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want to delete remediation exception configuration.</p>
    #   @return [String]
    # @!attribute resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    #   @return [Array<Types::RemediationExceptionResourceKey>]
    class DeleteRemediationExceptionsRequest < Struct.new(
      :config_rule_name,
      :resource_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failed_batches
    #   <p>Returns a list of failed delete remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.</p>
    #   @return [Array<Types::FailedDeleteRemediationExceptionsBatch>]
    class DeleteRemediationExceptionsResponse < Struct.new(
      :failed_batches,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Unique identifier of the resource.</p>
    #   @return [String]
    class DeleteResourceConfigRequest < Struct.new(
      :resource_type,
      :resource_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retention_configuration_name
    #   <p>The name of the retention configuration to delete.</p>
    #   @return [String]
    class DeleteRetentionConfigurationRequest < Struct.new(
      :retention_configuration_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_principal
    #   <p>The service principal of the Amazon Web Services service for the service-linked configuration recorder that you want to delete.</p>
    #   @return [String]
    class DeleteServiceLinkedConfigurationRecorderRequest < Struct.new(
      :service_principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the specified configuration recorder.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the specified configuration recorder.</p>
    #   @return [String]
    class DeleteServiceLinkedConfigurationRecorderResponse < Struct.new(
      :arn,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_name
    #   <p>The name of the query that you want to delete.</p>
    #   @return [String]
    class DeleteStoredQueryRequest < Struct.new(
      :query_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteStoredQueryResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>DeliverConfigSnapshot</a>
    # 			action.</p>
    # @!attribute delivery_channel_name
    #   <p>The name of the delivery channel through which the snapshot is
    #   			delivered.</p>
    #   @return [String]
    class DeliverConfigSnapshotRequest < Struct.new(
      :delivery_channel_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output for the <a>DeliverConfigSnapshot</a>
    # 			action, in JSON format.</p>
    # @!attribute config_snapshot_id
    #   <p>The ID of the snapshot that is being created.</p>
    #   @return [String]
    class DeliverConfigSnapshotResponse < Struct.new(
      :config_snapshot_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The channel through which Config delivers notifications and
    # 			updated configuration states.</p>
    # @!attribute name
    #   <p>The name of the delivery channel. By default, Config
    #   			assigns the name "default" when creating the delivery channel. To
    #   			change the delivery channel name, you must use the
    #   			DeleteDeliveryChannel action to delete your current delivery
    #   			channel, and then you must use the PutDeliveryChannel command to
    #   			create a delivery channel that has the desired name.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket to which Config delivers
    #   			configuration snapshots and configuration history files.</p>
    #            <p>If you specify a bucket that belongs to another Amazon Web Services account,
    #   			that bucket must have policies that grant access permissions to Config. For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html">Permissions for the Amazon S3 Bucket</a> in the <i>Config
    #   			Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>The prefix for the specified Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS key (KMS key) used to encrypt objects delivered by Config.
    #   			Must belong to the same Region as the destination S3 bucket.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   			Config sends notifications about configuration
    #   			changes.</p>
    #            <p>If you choose a topic from another account, the topic must have
    #   			policies that grant access permissions to Config. For more
    #   			information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html">Permissions for the Amazon SNS Topic</a> in the <i>Config
    #   			Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute config_snapshot_delivery_properties
    #   <p>The options for how often Config delivers configuration
    #   			snapshots to the Amazon S3 bucket.</p>
    #   @return [Types::ConfigSnapshotDeliveryProperties]
    class DeliveryChannel < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :s3_kms_key_arn,
      :sns_topic_arn,
      :config_snapshot_delivery_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The status of a specified delivery channel.</p>
    #          <p>Valid values: <code>Success</code> | <code>Failure</code>
    #          </p>
    # @!attribute name
    #   <p>The name of the delivery channel.</p>
    #   @return [String]
    # @!attribute config_snapshot_delivery_info
    #   <p>A list containing the status of the delivery of the snapshot to
    #   			the specified Amazon S3 bucket.</p>
    #   @return [Types::ConfigExportDeliveryInfo]
    # @!attribute config_history_delivery_info
    #   <p>A list that contains the status of the delivery of the
    #   			configuration history to the specified Amazon S3 bucket.</p>
    #   @return [Types::ConfigExportDeliveryInfo]
    # @!attribute config_stream_delivery_info
    #   <p>A list containing the status of the delivery of the
    #   			configuration stream notification to the specified Amazon SNS
    #   			topic.</p>
    #   @return [Types::ConfigStreamDeliveryInfo]
    class DeliveryChannelStatus < Struct.new(
      :name,
      :config_snapshot_delivery_info,
      :config_history_delivery_info,
      :config_stream_delivery_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DeliveryStatus
      Success = 'Success'
      Failure = 'Failure'
      Not_Applicable = 'Not_Applicable'
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters the results by ConfigRuleComplianceFilters object.
    #   		</p>
    #   @return [Types::ConfigRuleComplianceFilters]
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is
    #   			maximum.
    #   			If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeAggregateComplianceByConfigRulesRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute aggregate_compliance_by_config_rules
    #   <p>Returns a list of AggregateComplianceByConfigRule
    #   			object.</p>
    #   @return [Array<Types::AggregateComplianceByConfigRule>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeAggregateComplianceByConfigRulesResponse < Struct.new(
      :aggregate_compliance_by_config_rules,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters the result by <code>AggregateConformancePackComplianceFilters</code> object.</p>
    #   @return [Types::AggregateConformancePackComplianceFilters]
    # @!attribute limit
    #   <p>The maximum number of conformance packs compliance details returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeAggregateComplianceByConformancePacksRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute aggregate_compliance_by_conformance_packs
    #   <p>Returns the <code>AggregateComplianceByConformancePack</code> object.</p>
    #   @return [Array<Types::AggregateComplianceByConformancePack>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeAggregateComplianceByConformancePacksResponse < Struct.new(
      :aggregate_compliance_by_conformance_packs,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of AggregationAuthorizations returned on
    #   			each page. The default is maximum. If you specify 0, Config uses
    #   			the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeAggregationAuthorizationsRequest < Struct.new(
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute aggregation_authorizations
    #   <p>Returns a list of authorizations granted to various aggregator
    #   			accounts and regions.</p>
    #   @return [Array<Types::AggregationAuthorization>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeAggregationAuthorizationsResponse < Struct.new(
      :aggregation_authorizations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute config_rule_names
    #   <p>Specify one or more Config rule names to filter the results
    #   			by rule.</p>
    #   @return [Array<String>]
    # @!attribute compliance_types
    #   <p>Filters the results by compliance.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #   @return [String]
    class DescribeComplianceByConfigRuleRequest < Struct.new(
      :config_rule_names,
      :compliance_types,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute compliance_by_config_rules
    #   <p>Indicates whether each of the specified Config rules is
    #   			compliant.</p>
    #   @return [Array<Types::ComplianceByConfigRule>]
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #   @return [String]
    class DescribeComplianceByConfigRuleResponse < Struct.new(
      :compliance_by_config_rules,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute resource_type
    #   <p>The types of Amazon Web Services resources for which you want compliance
    #   			information (for example, <code>AWS::EC2::Instance</code>). For this operation, you can specify that the resource type is an Amazon Web Services account by
    #   			specifying <code>AWS::::Account</code>.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the Amazon Web Services resource for which you want compliance
    #   			information. You can specify only one resource ID. If you specify a
    #   			resource ID, you must also specify a type for
    #   				<code>ResourceType</code>.</p>
    #   @return [String]
    # @!attribute compliance_types
    #   <p>Filters the results by compliance.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 10. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #   @return [String]
    class DescribeComplianceByResourceRequest < Struct.new(
      :resource_type,
      :resource_id,
      :compliance_types,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute compliance_by_resources
    #   <p>Indicates whether the specified Amazon Web Services resource complies with all
    #   			of the Config rules that evaluate it.</p>
    #   @return [Array<Types::ComplianceByResource>]
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #   @return [String]
    class DescribeComplianceByResourceResponse < Struct.new(
      :compliance_by_resources,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute config_rule_names
    #   <p>The name of the Config managed rules for which you want
    #   			status information. If you do not specify any names, Config
    #   			returns status information for all Config managed rules that you
    #   			use.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The number of rule evaluation results that you want
    #   			returned.</p>
    #            <p>This parameter is required if the rule limit for your account
    #   			is more than the default of 1000 rules.</p>
    #            <p>For information about requesting a rule limit increase, see
    #   				<a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">Config Limits</a> in the <i>Amazon Web Services General
    #   				Reference Guide</i>.</p>
    #   @return [Integer]
    class DescribeConfigRuleEvaluationStatusRequest < Struct.new(
      :config_rule_names,
      :next_token,
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute config_rules_evaluation_status
    #   <p>Status information about your Config managed rules.</p>
    #   @return [Array<Types::ConfigRuleEvaluationStatus>]
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConfigRuleEvaluationStatusResponse < Struct.new(
      :config_rules_evaluation_status,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns a filtered list of Detective or Proactive Config rules. By default, if the filter is not defined, this API returns an unfiltered list. For more information on Detective or Proactive Config rules,
    # 			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html">
    #                <b>Evaluation Mode</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    # @!attribute evaluation_mode
    #   <p>The mode of an evaluation. The valid values are Detective or Proactive.</p>
    #   @return [String]
    class DescribeConfigRulesFilters < Struct.new(
      :evaluation_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute config_rule_names
    #   <p>The names of the Config rules for which you want details.
    #   			If you do not specify any names, Config returns details for all
    #   			your rules.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Returns a list of Detective or Proactive Config rules. By default, this API returns an unfiltered list. For more information on Detective or Proactive Config rules,
    #   			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html">
    #                  <b>Evaluation Mode</b>
    #               </a> in the <i>Config Developer Guide</i>.</p>
    #   @return [Types::DescribeConfigRulesFilters]
    class DescribeConfigRulesRequest < Struct.new(
      :config_rule_names,
      :next_token,
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute config_rules
    #   <p>The details about your Config rules.</p>
    #   @return [Array<Types::ConfigRule>]
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConfigRulesResponse < Struct.new(
      :config_rules,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>Filters the status type.</p>
    #            <ul>
    #               <li>
    #                  <p>Valid value FAILED indicates errors while moving
    #   					data.</p>
    #               </li>
    #               <li>
    #                  <p>Valid value SUCCEEDED indicates the data was
    #   					successfully moved.</p>
    #               </li>
    #               <li>
    #                  <p>Valid value OUTDATED indicates the data is not the most
    #   					recent.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of AggregatorSourceStatus returned on each
    #   			page. The default is maximum. If you specify 0, Config uses the
    #   			default.</p>
    #   @return [Integer]
    class DescribeConfigurationAggregatorSourcesStatusRequest < Struct.new(
      :configuration_aggregator_name,
      :update_status,
      :next_token,
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute aggregated_source_status_list
    #   <p>Returns an AggregatedSourceStatus object.
    #   			</p>
    #   @return [Array<Types::AggregatedSourceStatus>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConfigurationAggregatorSourcesStatusResponse < Struct.new(
      :aggregated_source_status_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_names
    #   <p>The name of the configuration aggregators.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of configuration aggregators returned on
    #   			each page. The default is maximum. If you specify 0, Config uses
    #   			the default.</p>
    #   @return [Integer]
    class DescribeConfigurationAggregatorsRequest < Struct.new(
      :configuration_aggregator_names,
      :next_token,
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregators
    #   <p>Returns a ConfigurationAggregators object.</p>
    #   @return [Array<Types::ConfigurationAggregator>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConfigurationAggregatorsResponse < Struct.new(
      :configuration_aggregators,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>DescribeConfigurationRecorderStatus</a>
    # 			action.</p>
    # @!attribute configuration_recorder_names
    #   <p>The name of the configuration recorder. If the name is not
    #   			specified, the operation returns the status for the customer managed configuration recorder configured for the
    #   			account, if applicable.</p>
    #            <note>
    #               <p>When making a request to this operation, you can only specify one configuration recorder.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute service_principal
    #   <p>For service-linked configuration recorders, you can use the service principal of the linked Amazon Web Services service to specify the configuration recorder.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration recorder that you want to specify.</p>
    #   @return [String]
    class DescribeConfigurationRecorderStatusRequest < Struct.new(
      :configuration_recorder_names,
      :service_principal,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output for the <a>DescribeConfigurationRecorderStatus</a> action, in JSON
    # 			format.</p>
    # @!attribute configuration_recorders_status
    #   <p>A list that contains status of the specified
    #   			recorders.</p>
    #   @return [Array<Types::ConfigurationRecorderStatus>]
    class DescribeConfigurationRecorderStatusResponse < Struct.new(
      :configuration_recorders_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>DescribeConfigurationRecorders</a> action.</p>
    # @!attribute configuration_recorder_names
    #   <p>A list of names of the configuration recorders that you want to specify.</p>
    #            <note>
    #               <p>When making a request to this operation, you can only specify one configuration recorder.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute service_principal
    #   <p>For service-linked configuration recorders, you can use the service principal of the linked Amazon Web Services service to specify the configuration recorder.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration recorder that you want to specify.</p>
    #   @return [String]
    class DescribeConfigurationRecordersRequest < Struct.new(
      :configuration_recorder_names,
      :service_principal,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output for the <a>DescribeConfigurationRecorders</a> action.</p>
    # @!attribute configuration_recorders
    #   <p>A list that contains the descriptions of the specified
    #   			configuration recorders.</p>
    #   @return [Array<Types::ConfigurationRecorder>]
    class DescribeConfigurationRecordersResponse < Struct.new(
      :configuration_recorders,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A <code>ConformancePackComplianceFilters</code> object.</p>
    #   @return [Types::ConformancePackComplianceFilters]
    # @!attribute limit
    #   <p>The maximum number of Config rules within a conformance pack are returned on each page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConformancePackComplianceRequest < Struct.new(
      :conformance_pack_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #   @return [String]
    # @!attribute conformance_pack_rule_compliance_list
    #   <p>Returns a list of <code>ConformancePackRuleCompliance</code> objects.</p>
    #   @return [Array<Types::ConformancePackRuleCompliance>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConformancePackComplianceResponse < Struct.new(
      :conformance_pack_name,
      :conformance_pack_rule_compliance_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_names
    #   <p>Comma-separated list of conformance pack names.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of conformance packs status returned on each page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConformancePackStatusRequest < Struct.new(
      :conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_status_details
    #   <p>A list of <code>ConformancePackStatusDetail</code> objects.</p>
    #   @return [Array<Types::ConformancePackStatusDetail>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConformancePackStatusResponse < Struct.new(
      :conformance_pack_status_details,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_names
    #   <p>Comma-separated list of conformance pack names for which you want details. If you do not specify any names, Config returns details for all your conformance packs. </p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of conformance packs returned on each page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConformancePacksRequest < Struct.new(
      :conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_details
    #   <p>Returns a list of <code>ConformancePackDetail</code> objects.</p>
    #   @return [Array<Types::ConformancePackDetail>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeConformancePacksResponse < Struct.new(
      :conformance_pack_details,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>DeliveryChannelStatus</a>
    # 			action.</p>
    # @!attribute delivery_channel_names
    #   <p>A list of delivery channel names.</p>
    #   @return [Array<String>]
    class DescribeDeliveryChannelStatusRequest < Struct.new(
      :delivery_channel_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output for the <a>DescribeDeliveryChannelStatus</a> action.</p>
    # @!attribute delivery_channels_status
    #   <p>A list that contains the status of a specified delivery
    #   			channel.</p>
    #   @return [Array<Types::DeliveryChannelStatus>]
    class DescribeDeliveryChannelStatusResponse < Struct.new(
      :delivery_channels_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>DescribeDeliveryChannels</a>
    # 			action.</p>
    # @!attribute delivery_channel_names
    #   <p>A list of delivery channel names.</p>
    #   @return [Array<String>]
    class DescribeDeliveryChannelsRequest < Struct.new(
      :delivery_channel_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output for the <a>DescribeDeliveryChannels</a>
    # 			action.</p>
    # @!attribute delivery_channels
    #   <p>A list that contains the descriptions of the specified delivery
    #   			channel.</p>
    #   @return [Array<Types::DeliveryChannel>]
    class DescribeDeliveryChannelsResponse < Struct.new(
      :delivery_channels,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_config_rule_names
    #   <p>The names of organization Config rules for which you want status details. If you do not specify any names, Config returns details for all your organization Config rules.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of <code>OrganizationConfigRuleStatuses</code> returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class DescribeOrganizationConfigRuleStatusesRequest < Struct.new(
      :organization_config_rule_names,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_config_rule_statuses
    #   <p>A list of <code>OrganizationConfigRuleStatus</code> objects.</p>
    #   @return [Array<Types::OrganizationConfigRuleStatus>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class DescribeOrganizationConfigRuleStatusesResponse < Struct.new(
      :organization_config_rule_statuses,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_config_rule_names
    #   <p>The names of organization Config rules for which you want details. If you do not specify any names, Config returns details for all your organization Config rules.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of organization Config rules returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class DescribeOrganizationConfigRulesRequest < Struct.new(
      :organization_config_rule_names,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_config_rules
    #   <p>Returns a list of <code>OrganizationConfigRule</code> objects.</p>
    #   @return [Array<Types::OrganizationConfigRule>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class DescribeOrganizationConfigRulesResponse < Struct.new(
      :organization_config_rules,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_conformance_pack_names
    #   <p>The names of organization conformance packs for which you want status details. 
    #   			If you do not specify any names, Config returns details for all your organization conformance packs. </p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of OrganizationConformancePackStatuses returned on each page. 
    #   			If you do no specify a number, Config uses the default. The default is 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class DescribeOrganizationConformancePackStatusesRequest < Struct.new(
      :organization_conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_conformance_pack_statuses
    #   <p>A list of <code>OrganizationConformancePackStatus</code> objects. </p>
    #   @return [Array<Types::OrganizationConformancePackStatus>]
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class DescribeOrganizationConformancePackStatusesResponse < Struct.new(
      :organization_conformance_pack_statuses,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_conformance_pack_names
    #   <p>The name that you assign to an organization conformance pack.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of organization config packs returned on each page. If you do no specify a
    #   			number, Config uses the default. The default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a
    #   			paginated response.</p>
    #   @return [String]
    class DescribeOrganizationConformancePacksRequest < Struct.new(
      :organization_conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_conformance_packs
    #   <p>Returns a list of OrganizationConformancePacks objects.</p>
    #   @return [Array<Types::OrganizationConformancePack>]
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a
    #   			paginated response.</p>
    #   @return [String]
    class DescribeOrganizationConformancePacksResponse < Struct.new(
      :organization_conformance_packs,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is maximum. If you specify 0, Config uses the
    #   			default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribePendingAggregationRequestsRequest < Struct.new(
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute pending_aggregation_requests
    #   <p>Returns a PendingAggregationRequests object.</p>
    #   @return [Array<Types::PendingAggregationRequest>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribePendingAggregationRequestsResponse < Struct.new(
      :pending_aggregation_requests,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule_names
    #   <p>A list of Config rule names of remediation configurations for which you want details. </p>
    #   @return [Array<String>]
    class DescribeRemediationConfigurationsRequest < Struct.new(
      :config_rule_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute remediation_configurations
    #   <p>Returns a remediation configuration object.</p>
    #   @return [Array<Types::RemediationConfiguration>]
    class DescribeRemediationConfigurationsResponse < Struct.new(
      :remediation_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #   @return [String]
    # @!attribute resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    #   @return [Array<Types::RemediationExceptionResourceKey>]
    # @!attribute limit
    #   <p>The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeRemediationExceptionsRequest < Struct.new(
      :config_rule_name,
      :resource_keys,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute remediation_exceptions
    #   <p>Returns a list of remediation exception objects.</p>
    #   @return [Array<Types::RemediationException>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeRemediationExceptionsResponse < Struct.new(
      :remediation_exceptions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #   @return [String]
    # @!attribute resource_keys
    #   <p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>
    #   @return [Array<Types::ResourceKey>]
    # @!attribute limit
    #   <p>The maximum number of RemediationExecutionStatuses returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeRemediationExecutionStatusRequest < Struct.new(
      :config_rule_name,
      :resource_keys,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute remediation_execution_statuses
    #   <p>Returns a list of remediation execution statuses objects.</p>
    #   @return [Array<Types::RemediationExecutionStatus>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class DescribeRemediationExecutionStatusResponse < Struct.new(
      :remediation_execution_statuses,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retention_configuration_names
    #   <p>A list of names of retention configurations for which you want
    #   			details. If you do not specify a name, Config returns details
    #   			for all the retention configurations for that account.</p>
    #            <note>
    #               <p>Currently, Config supports only one retention
    #   				configuration per region in your account.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response. </p>
    #   @return [String]
    class DescribeRetentionConfigurationsRequest < Struct.new(
      :retention_configuration_names,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retention_configurations
    #   <p>Returns a retention configuration object.</p>
    #   @return [Array<Types::RetentionConfiguration>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response. </p>
    #   @return [String]
    class DescribeRetentionConfigurationsResponse < Struct.new(
      :retention_configurations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_recorder_arn
    #   <p>The Amazon Resource Name (ARN) of the specified configuration recorder.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The list of resource types you want to remove from the recording group of the specified configuration recorder.</p>
    #   @return [Array<String>]
    class DisassociateResourceTypesRequest < Struct.new(
      :configuration_recorder_arn,
      :resource_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_recorder
    #   <p>Records configuration changes to the resource types in scope.</p>
    #            <p>For more information about the configuration recorder,
    #   			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html">
    #                  <b>Working with the Configuration Recorder</b>
    #               </a> in the <i>Config Developer Guide</i>.</p>
    #   @return [Types::ConfigurationRecorder]
    class DisassociateResourceTypesResponse < Struct.new(
      :configuration_recorder,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifies an Amazon Web Services resource and indicates whether it complies
    # 			with the Config rule that it was evaluated against.</p>
    # @!attribute compliance_resource_type
    #   <p>The type of Amazon Web Services resource that was evaluated.</p>
    #   @return [String]
    # @!attribute compliance_resource_id
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p>Indicates whether the Amazon Web Services resource complies with the Config
    #   			rule that it was evaluated against.</p>
    #            <p>For the <code>Evaluation</code> data type, Config supports
    #   			only the <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and
    #   				<code>NOT_APPLICABLE</code> values. Config does not support
    #   			the <code>INSUFFICIENT_DATA</code> value for this data
    #   			type.</p>
    #            <p>Similarly, Config does not accept
    #   				<code>INSUFFICIENT_DATA</code> as the value for
    #   				<code>ComplianceType</code> from a <code>PutEvaluations</code>
    #   			request. For example, an Lambda function for a custom Config
    #   			rule cannot pass an <code>INSUFFICIENT_DATA</code> value to Config.</p>
    #   @return [String]
    # @!attribute annotation
    #   <p>Supplementary information about how the evaluation determined
    #   			the compliance.</p>
    #   @return [String]
    # @!attribute ordering_timestamp
    #   <p>The time of the event in Config that triggered the
    #   			evaluation. For event-based evaluations, the time indicates when Config created the configuration item that triggered the evaluation.
    #   			For periodic evaluations, the time indicates when Config
    #   			triggered the evaluation at the frequency that you specified (for
    #   			example, every 24 hours).</p>
    #   @return [Time]
    class Evaluation < Struct.new(
      :compliance_resource_type,
      :compliance_resource_id,
      :compliance_type,
      :annotation,
      :ordering_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Use EvaluationContext to group independently initiated proactive resource evaluations. For example, CFN Stack. 
    # 			If you want to check just a resource definition, you do not need to provide evaluation context.</p>
    # @!attribute evaluation_context_identifier
    #   <p>A unique EvaluationContextIdentifier ID for an EvaluationContext.</p>
    #   @return [String]
    class EvaluationContext < Struct.new(
      :evaluation_context_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EvaluationMode
      DETECTIVE = 'DETECTIVE'
      PROACTIVE = 'PROACTIVE'
    end

    # <p>The configuration object for Config rule evaluation mode. The supported valid values are Detective or Proactive.</p>
    # @!attribute mode
    #   <p>The mode of an evaluation. The valid values are Detective or Proactive.</p>
    #   @return [String]
    class EvaluationModeConfiguration < Struct.new(
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of an Config evaluation. Provides the Amazon Web Services
    # 			resource that was evaluated, the compliance of the resource, related
    # 			time stamps, and supplementary information.</p>
    # @!attribute evaluation_result_identifier
    #   <p>Uniquely identifies the evaluation result.</p>
    #   @return [Types::EvaluationResultIdentifier]
    # @!attribute compliance_type
    #   <p>Indicates whether the Amazon Web Services resource complies with the Config
    #   			rule that evaluated it.</p>
    #            <p>For the <code>EvaluationResult</code> data type, Config
    #   			supports only the <code>COMPLIANT</code>,
    #   			<code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code> values.
    #   			Config does not support the <code>INSUFFICIENT_DATA</code> value
    #   			for the <code>EvaluationResult</code> data type.</p>
    #   @return [String]
    # @!attribute result_recorded_time
    #   <p>The time when Config recorded the evaluation
    #   			result.</p>
    #   @return [Time]
    # @!attribute config_rule_invoked_time
    #   <p>The time when the Config rule evaluated the Amazon Web Services
    #   			resource.</p>
    #   @return [Time]
    # @!attribute annotation
    #   <p>Supplementary information about how the evaluation determined
    #   			the compliance.</p>
    #   @return [String]
    # @!attribute result_token
    #   <p>An encrypted token that associates an evaluation with an Config rule. The token identifies the rule, the Amazon Web Services resource being
    #   			evaluated, and the event that triggered the evaluation.</p>
    #   @return [String]
    class EvaluationResult < Struct.new(
      :evaluation_result_identifier,
      :compliance_type,
      :result_recorded_time,
      :config_rule_invoked_time,
      :annotation,
      :result_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Uniquely identifies an evaluation result.</p>
    # @!attribute evaluation_result_qualifier
    #   <p>Identifies an Config rule used to evaluate an Amazon Web Services resource,
    #   			and provides the type and ID of the evaluated resource.</p>
    #   @return [Types::EvaluationResultQualifier]
    # @!attribute ordering_timestamp
    #   <p>The time of the event that triggered the evaluation of your Amazon Web Services
    #   			resources. The time can indicate when Config delivered a
    #   			configuration item change notification, or it can indicate when Config delivered the configuration snapshot, depending on which
    #   			event triggered the evaluation.</p>
    #   @return [Time]
    # @!attribute resource_evaluation_id
    #   <p>A Unique ID for an evaluation result.</p>
    #   @return [String]
    class EvaluationResultIdentifier < Struct.new(
      :evaluation_result_qualifier,
      :ordering_timestamp,
      :resource_evaluation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifies an Config rule that evaluated an Amazon Web Services resource,
    # 			and provides the type and ID of the resource that the rule
    # 			evaluated.</p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule that was used in the
    #   			evaluation.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource that was evaluated.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the evaluated Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute evaluation_mode
    #   <p>The mode of an evaluation. The valid values are Detective or Proactive.</p>
    #   @return [String]
    class EvaluationResultQualifier < Struct.new(
      :config_rule_name,
      :resource_type,
      :resource_id,
      :evaluation_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns status details of an evaluation.</p>
    # @!attribute status
    #   <p>The status of an execution. The valid values are In_Progress, Succeeded or Failed. </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>An explanation for failed execution status.</p>
    #   @return [String]
    class EvaluationStatus < Struct.new(
      :status,
      :failure_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EventSource
      Aws_Config = 'aws.config'
    end

    # <p>Specifies whether the configuration recorder excludes certain resource types from being recorded.
    # 			Use the <code>resourceTypes</code> field to enter a comma-separated list of resource types you want to exclude from recording.</p>
    #          <p>By default, when Config adds support for a new resource type in the Region where you set up the configuration recorder,
    # 			including global resource types, Config starts recording resources of that type automatically.</p>
    #          <note>
    #             <p>
    #                <b>How to use the exclusion recording strategy </b>
    #             </p>
    #             <p>To use this option, you must set the <code>useOnly</code>
    # 				field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a>
    # 				to <code>EXCLUSION_BY_RESOURCE_TYPES</code>.</p>
    #             <p>Config will then record configuration changes for all supported resource types, except the resource types that you specify to exclude from being recorded.</p>
    #             <p>
    #                <b>Global resource types and the exclusion recording strategy </b>
    #             </p>
    #             <p>Unless specifically listed as exclusions,
    # 				<code>AWS::RDS::GlobalCluster</code> will be recorded automatically in all supported  Config Regions were the configuration recorder is enabled.</p>
    #             <p>IAM users, groups, roles, and customer managed policies will be recorded in the Region where you set up the configuration recorder if that is a Region where Config was available before February 2022.
    # 				You cannot be record the global IAM resouce types in Regions supported by Config after February 2022. For a list of those Regions,
    # 				see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html#select-resources-all">Recording Amazon Web Services Resources | Global Resources</a>.</p>
    #          </note>
    # @!attribute resource_types
    #   <p>A comma-separated list of resource types to exclude from recording by the configuration
    #   			recorder.</p>
    #   @return [Array<String>]
    class ExclusionByResourceTypes < Struct.new(
      :resource_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The controls that Config uses for executing remediations.</p>
    # @!attribute ssm_controls
    #   <p>A SsmControls object.</p>
    #   @return [Types::SsmControls]
    class ExecutionControls < Struct.new(
      :ssm_controls,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifies an Amazon Web Services resource and indicates whether it complies with the Config rule that it was evaluated against.</p>
    # @!attribute compliance_resource_type
    #   <p>The evaluated compliance resource type. Config accepts <code>AWS::::Account</code> resource type.</p>
    #   @return [String]
    # @!attribute compliance_resource_id
    #   <p>The evaluated compliance resource ID. Config accepts only Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p>The compliance of the Amazon Web Services resource. The valid values are <code>COMPLIANT, NON_COMPLIANT, </code> and <code>NOT_APPLICABLE</code>.</p>
    #   @return [String]
    # @!attribute annotation
    #   <p>Supplementary information about the reason of compliance. For example, this task was completed on a specific date.</p>
    #   @return [String]
    # @!attribute ordering_timestamp
    #   <p>The time when the compliance was recorded. </p>
    #   @return [Time]
    class ExternalEvaluation < Struct.new(
      :compliance_resource_type,
      :compliance_resource_id,
      :compliance_type,
      :annotation,
      :ordering_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List of each of the failed delete remediation exceptions with specific reasons.</p>
    # @!attribute failure_message
    #   <p>Returns a failure message for delete remediation exception. For example, Config creates an exception due to an internal error.</p>
    #   @return [String]
    # @!attribute failed_items
    #   <p>Returns remediation exception resource key object of the failed items.</p>
    #   @return [Array<Types::RemediationExceptionResourceKey>]
    class FailedDeleteRemediationExceptionsBatch < Struct.new(
      :failure_message,
      :failed_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List of each of the failed remediations with specific reasons.</p>
    # @!attribute failure_message
    #   <p>Returns a failure message. For example, the resource is already compliant.</p>
    #   @return [String]
    # @!attribute failed_items
    #   <p>Returns remediation configurations of the failed items.</p>
    #   @return [Array<Types::RemediationConfiguration>]
    class FailedRemediationBatch < Struct.new(
      :failure_message,
      :failed_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List of each of the failed remediation exceptions with specific reasons.</p>
    # @!attribute failure_message
    #   <p>Returns a failure message. For example, the auto-remediation has failed.</p>
    #   @return [String]
    # @!attribute failed_items
    #   <p>Returns remediation exception resource key object of the failed items.</p>
    #   @return [Array<Types::RemediationException>]
    class FailedRemediationExceptionBatch < Struct.new(
      :failure_message,
      :failed_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about the fields such as name of the field.</p>
    # @!attribute name
    #   <p>Name of the field.</p>
    #   @return [String]
    class FieldInfo < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want compliance
    #   			information.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The source region from where the data is aggregated.</p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p>The resource compliance status.</p>
    #            <note>
    #               <p>For the
    #   					<code>GetAggregateComplianceDetailsByConfigRuleRequest</code>
    #   				data type, Config supports only the <code>COMPLIANT</code>
    #   				and <code>NON_COMPLIANT</code>. Config does not support the
    #   					<code>NOT_APPLICABLE</code> and
    #   					<code>INSUFFICIENT_DATA</code> values.</p>
    #            </note>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 50. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class GetAggregateComplianceDetailsByConfigRuleRequest < Struct.new(
      :configuration_aggregator_name,
      :config_rule_name,
      :account_id,
      :aws_region,
      :compliance_type,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute aggregate_evaluation_results
    #   <p>Returns an AggregateEvaluationResults object.</p>
    #   @return [Array<Types::AggregateEvaluationResult>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class GetAggregateComplianceDetailsByConfigRuleResponse < Struct.new(
      :aggregate_evaluation_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters the results based on the
    #   			ConfigRuleComplianceSummaryFilters object.</p>
    #   @return [Types::ConfigRuleComplianceSummaryFilters]
    # @!attribute group_by_key
    #   <p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 1000. You cannot specify a number greater than 1000.
    #   			If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class GetAggregateConfigRuleComplianceSummaryRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :group_by_key,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_by_key
    #   <p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>
    #   @return [String]
    # @!attribute aggregate_compliance_counts
    #   <p>Returns a list of AggregateComplianceCounts object.</p>
    #   @return [Array<Types::AggregateComplianceCount>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #   @return [String]
    class GetAggregateConfigRuleComplianceSummaryResponse < Struct.new(
      :group_by_key,
      :aggregate_compliance_counts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters the results based on the <code>AggregateConformancePackComplianceSummaryFilters</code> object.</p>
    #   @return [Types::AggregateConformancePackComplianceSummaryFilters]
    # @!attribute group_by_key
    #   <p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results returned on each page. The default is maximum. If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class GetAggregateConformancePackComplianceSummaryRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :group_by_key,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute aggregate_conformance_pack_compliance_summaries
    #   <p>Returns a list of <code>AggregateConformancePackComplianceSummary</code> object.</p>
    #   @return [Array<Types::AggregateConformancePackComplianceSummary>]
    # @!attribute group_by_key
    #   <p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class GetAggregateConformancePackComplianceSummaryResponse < Struct.new(
      :aggregate_conformance_pack_compliance_summaries,
      :group_by_key,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters the results based on the <code>ResourceCountFilters</code> object.</p>
    #   @return [Types::ResourceCountFilters]
    # @!attribute group_by_key
    #   <p>The key to group the resource counts.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of <a>GroupedResourceCount</a> objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class GetAggregateDiscoveredResourceCountsRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :group_by_key,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute total_discovered_resources
    #   <p>The total number of resources that are present in an aggregator with the filters that you provide.</p>
    #   @return [Integer]
    # @!attribute group_by_key
    #   <p>The key passed into the request object. If <code>GroupByKey</code> is not provided, the result will be empty.</p>
    #   @return [String]
    # @!attribute grouped_resource_counts
    #   <p>Returns a list of GroupedResourceCount objects.</p>
    #   @return [Array<Types::GroupedResourceCount>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class GetAggregateDiscoveredResourceCountsResponse < Struct.new(
      :total_discovered_resources,
      :group_by_key,
      :grouped_resource_counts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_discovered_resources] = 0 unless options.key?(:total_discovered_resources)
        super
      end
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>An object that identifies aggregate resource.</p>
    #   @return [Types::AggregateResourceIdentifier]
    class GetAggregateResourceConfigRequest < Struct.new(
      :configuration_aggregator_name,
      :resource_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_item
    #   <p>Returns a <code>ConfigurationItem</code> object.</p>
    #   @return [Types::ConfigurationItem]
    class GetAggregateResourceConfigResponse < Struct.new(
      :configuration_item,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want compliance
    #   			information.</p>
    #   @return [String]
    # @!attribute compliance_types
    #   <p>Filters the results by compliance.</p>
    #            <p>
    #               <code>INSUFFICIENT_DATA</code> is a valid <code>ComplianceType</code> that is returned when an Config rule cannot be evaluated. However, <code>INSUFFICIENT_DATA</code> cannot be used as a <code>ComplianceType</code> for filtering results.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 10. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #   @return [String]
    class GetComplianceDetailsByConfigRuleRequest < Struct.new(
      :config_rule_name,
      :compliance_types,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute evaluation_results
    #   <p>Indicates whether the Amazon Web Services resource complies with the specified
    #   			Config rule.</p>
    #   @return [Array<Types::EvaluationResult>]
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #   @return [String]
    class GetComplianceDetailsByConfigRuleResponse < Struct.new(
      :evaluation_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute resource_type
    #   <p>The type of the Amazon Web Services resource for which you want compliance
    #   			information.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the Amazon Web Services resource for which you want compliance
    #   			information.</p>
    #   @return [String]
    # @!attribute compliance_types
    #   <p>Filters the results by compliance.</p>
    #            <p>
    #               <code>INSUFFICIENT_DATA</code> is a valid <code>ComplianceType</code> that is returned when an Config rule cannot be evaluated. However, <code>INSUFFICIENT_DATA</code> cannot be used as a <code>ComplianceType</code> for filtering results.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #   @return [String]
    # @!attribute resource_evaluation_id
    #   <p>The unique ID of Amazon Web Services resource execution for which you want to retrieve evaluation results. </p>
    #            <note>
    #               <p>You need to only provide either a <code>ResourceEvaluationID</code> or a <code>ResourceID </code>and <code>ResourceType</code>.</p>
    #            </note>
    #   @return [String]
    class GetComplianceDetailsByResourceRequest < Struct.new(
      :resource_type,
      :resource_id,
      :compliance_types,
      :next_token,
      :resource_evaluation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute evaluation_results
    #   <p>Indicates whether the specified Amazon Web Services resource complies each Config rule.</p>
    #   @return [Array<Types::EvaluationResult>]
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #   @return [String]
    class GetComplianceDetailsByResourceResponse < Struct.new(
      :evaluation_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute compliance_summary
    #   <p>The number of Config rules that are compliant and the
    #   			number that are noncompliant, up to a maximum of 25 for
    #   			each.</p>
    #   @return [Types::ComplianceSummary]
    class GetComplianceSummaryByConfigRuleResponse < Struct.new(
      :compliance_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute resource_types
    #   <p>Specify one or more resource types to get the number of
    #   			resources that are compliant and the number that are noncompliant
    #   			for each resource type.</p>
    #            <p>For this request, you can specify an Amazon Web Services resource type such as
    #   				<code>AWS::EC2::Instance</code>. You can specify that the
    #   			resource type is an Amazon Web Services account by specifying
    #   				<code>AWS::::Account</code>.</p>
    #   @return [Array<String>]
    class GetComplianceSummaryByResourceTypeRequest < Struct.new(
      :resource_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute compliance_summaries_by_resource_type
    #   <p>The number of resources that are compliant and the number that
    #   			are noncompliant. If one or more resource types were provided with
    #   			the request, the numbers are returned for each resource type. The
    #   			maximum number returned is 100.</p>
    #   @return [Array<Types::ComplianceSummaryByResourceType>]
    class GetComplianceSummaryByResourceTypeResponse < Struct.new(
      :compliance_summaries_by_resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A <code>ConformancePackEvaluationFilters</code> object.</p>
    #   @return [Types::ConformancePackEvaluationFilters]
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class GetConformancePackComplianceDetailsRequest < Struct.new(
      :conformance_pack_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #   @return [String]
    # @!attribute conformance_pack_rule_evaluation_results
    #   <p>Returns a list of <code>ConformancePackEvaluationResult</code> objects.</p>
    #   @return [Array<Types::ConformancePackEvaluationResult>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    class GetConformancePackComplianceDetailsResponse < Struct.new(
      :conformance_pack_name,
      :conformance_pack_rule_evaluation_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_names
    #   <p>Names of conformance packs.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of conformance packs returned on each page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class GetConformancePackComplianceSummaryRequest < Struct.new(
      :conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_compliance_summary_list
    #   <p>A list of <code>ConformancePackComplianceSummary</code> objects. </p>
    #   @return [Array<Types::ConformancePackComplianceSummary>]
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class GetConformancePackComplianceSummaryResponse < Struct.new(
      :conformance_pack_compliance_summary_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of your Config Custom Policy rule.</p>
    #   @return [String]
    class GetCustomRulePolicyRequest < Struct.new(
      :config_rule_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_text
    #   <p>The policy definition containing the logic for your Config Custom Policy rule.</p>
    #   @return [String]
    class GetCustomRulePolicyResponse < Struct.new(
      :policy_text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_types
    #   <p>The comma-separated list that specifies the resource types that
    #   			you want Config to return (for example,
    #   				<code>"AWS::EC2::Instance"</code>,
    #   			<code>"AWS::IAM::User"</code>).</p>
    #            <p>If a value for <code>resourceTypes</code> is not specified, Config returns all resource types that Config is recording in
    #   			the region for your account.</p>
    #            <note>
    #               <p>If the configuration recorder is turned off, Config
    #   				returns an empty list of <a>ResourceCount</a>
    #   				objects. If the configuration recorder is not recording a
    #   				specific resource type (for example, S3 buckets), that resource
    #   				type is not returned in the list of <a>ResourceCount</a> objects.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of <a>ResourceCount</a> objects
    #   			returned on each page. The default is 100. You cannot specify a
    #   			number greater than 100. If you specify 0, Config uses the
    #   			default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #   @return [String]
    class GetDiscoveredResourceCountsRequest < Struct.new(
      :resource_types,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute total_discovered_resources
    #   <p>The total number of resources that Config is recording in
    #   			the region for your account. If you specify resource types in the
    #   			request, Config returns only the total number of resources for
    #   			those resource types.</p>
    #            <p class="title">
    #               <b>Example</b>
    #            </p>
    #            <ol>
    #               <li>
    #                  <p>Config is recording three resource types in the US
    #   					East (Ohio) Region for your account: 25 EC2 instances, 20
    #   					IAM users, and 15 S3 buckets, for a total of 60
    #   					resources.</p>
    #               </li>
    #               <li>
    #                  <p>You make a call to the
    #   						<code>GetDiscoveredResourceCounts</code> action and
    #   					specify the resource type,
    #   						<code>"AWS::EC2::Instances"</code>, in the
    #   					request.</p>
    #               </li>
    #               <li>
    #                  <p>Config returns 25 for
    #   						<code>totalDiscoveredResources</code>.</p>
    #               </li>
    #            </ol>
    #   @return [Integer]
    # @!attribute resource_counts
    #   <p>The list of <code>ResourceCount</code> objects. Each object is
    #   			listed in descending order by the number of resources.</p>
    #   @return [Array<Types::ResourceCount>]
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #   @return [String]
    class GetDiscoveredResourceCountsResponse < Struct.new(
      :total_discovered_resources,
      :resource_counts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_discovered_resources] = 0 unless options.key?(:total_discovered_resources)
        super
      end
    end

    # @!attribute organization_config_rule_name
    #   <p>The name of your organization Config rule for which you want status details for member accounts.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A <code>StatusDetailFilters</code> object.</p>
    #   @return [Types::StatusDetailFilters]
    # @!attribute limit
    #   <p>The maximum number of <code>OrganizationConfigRuleDetailedStatus</code> returned on each page. If you do not specify a number, Config uses the default. The default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class GetOrganizationConfigRuleDetailedStatusRequest < Struct.new(
      :organization_config_rule_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_config_rule_detailed_status
    #   <p>A list of <code>MemberAccountStatus</code> objects.</p>
    #   @return [Array<Types::MemberAccountStatus>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class GetOrganizationConfigRuleDetailedStatusResponse < Struct.new(
      :organization_config_rule_detailed_status,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_conformance_pack_name
    #   <p>The name of organization conformance pack for which you want status details for member accounts.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An <code>OrganizationResourceDetailedStatusFilters</code> object.</p>
    #   @return [Types::OrganizationResourceDetailedStatusFilters]
    # @!attribute limit
    #   <p>The maximum number of <code>OrganizationConformancePackDetailedStatuses</code> returned on each page. 
    #   			If you do not specify a number, Config uses the default. The default is 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class GetOrganizationConformancePackDetailedStatusRequest < Struct.new(
      :organization_conformance_pack_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_conformance_pack_detailed_statuses
    #   <p>A list of <code>OrganizationConformancePackDetailedStatus</code> objects. </p>
    #   @return [Array<Types::OrganizationConformancePackDetailedStatus>]
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class GetOrganizationConformancePackDetailedStatusResponse < Struct.new(
      :organization_conformance_pack_detailed_statuses,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_config_rule_name
    #   <p>The name of your organization Config Custom Policy rule. </p>
    #   @return [String]
    class GetOrganizationCustomRulePolicyRequest < Struct.new(
      :organization_config_rule_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_text
    #   <p>The policy definition containing the logic for your organization Config Custom Policy rule.</p>
    #   @return [String]
    class GetOrganizationCustomRulePolicyResponse < Struct.new(
      :policy_text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>GetResourceConfigHistory</a>
    # 			action.</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource (for example.,
    #   			<code>sg-xxxxxx</code>).</p>
    #   @return [String]
    # @!attribute later_time
    #   <p>The chronologically latest time in the time range for which the history requested. If not specified,
    #   			current time is taken.</p>
    #   @return [Time]
    # @!attribute earlier_time
    #   <p>The chronologically earliest time in the time range for which the history requested. If not
    #   			specified, the action returns paginated results that contain
    #   			configuration items that start when the first configuration item was
    #   			recorded.</p>
    #   @return [Time]
    # @!attribute chronological_order
    #   <p>The chronological order for configuration items listed. By
    #   			default, the results are listed in reverse chronological
    #   			order.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of configuration items returned on each
    #   			page. The default is 10. You cannot specify a number greater than
    #   			100. If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #   @return [String]
    class GetResourceConfigHistoryRequest < Struct.new(
      :resource_type,
      :resource_id,
      :later_time,
      :earlier_time,
      :chronological_order,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output for the <a>GetResourceConfigHistory</a>
    # 			action.</p>
    # @!attribute configuration_items
    #   <p>An array of <code>ConfigurationItems</code> Objects. Contatins the configuration history for one or more
    #   			resources.</p>
    #   @return [Array<Types::ConfigurationItem>]
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #   @return [String]
    class GetResourceConfigHistoryResponse < Struct.new(
      :configuration_items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_evaluation_id
    #   <p>The unique <code>ResourceEvaluationId</code> of Amazon Web Services resource execution for which you want to retrieve the evaluation summary.</p>
    #   @return [String]
    class GetResourceEvaluationSummaryRequest < Struct.new(
      :resource_evaluation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_evaluation_id
    #   <p>The unique <code>ResourceEvaluationId</code> of Amazon Web Services resource execution for which you want to retrieve the evaluation summary.</p>
    #   @return [String]
    # @!attribute evaluation_mode
    #   <p>Lists results of the mode that you requested to retrieve the resource evaluation summary. The valid values are Detective or Proactive.</p>
    #   @return [String]
    # @!attribute evaluation_status
    #   <p>Returns an <code>EvaluationStatus</code> object.</p>
    #   @return [Types::EvaluationStatus]
    # @!attribute evaluation_start_timestamp
    #   <p>The start timestamp when Config rule starts evaluating compliance for the provided resource details.</p>
    #   @return [Time]
    # @!attribute compliance
    #   <p>The compliance status of the resource evaluation summary.</p>
    #   @return [String]
    # @!attribute evaluation_context
    #   <p>Returns an <code>EvaluationContext</code> object.</p>
    #   @return [Types::EvaluationContext]
    # @!attribute resource_details
    #   <p>Returns a <code>ResourceDetails</code> object.</p>
    #   @return [Types::ResourceDetails]
    class GetResourceEvaluationSummaryResponse < Struct.new(
      :resource_evaluation_id,
      :evaluation_mode,
      :evaluation_status,
      :evaluation_start_timestamp,
      :compliance,
      :evaluation_context,
      :resource_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_name
    #   <p>The name of the query.</p>
    #   @return [String]
    class GetStoredQueryRequest < Struct.new(
      :query_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute stored_query
    #   <p>Returns a <code>StoredQuery</code> object.</p>
    #   @return [Types::StoredQuery]
    class GetStoredQueryResponse < Struct.new(
      :stored_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The count of resources that are grouped by the group name.</p>
    # @!attribute group_name
    #   <p>The name of the group that can be region, account ID, or resource type. For example, region1, region2 if the region was chosen as <code>GroupByKey</code>.</p>
    #   @return [String]
    # @!attribute resource_count
    #   <p>The number of resources in the group.</p>
    #   @return [Integer]
    class GroupedResourceCount < Struct.new(
      :group_name,
      :resource_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:resource_count] = 0 unless options.key?(:resource_count)
        super
      end
    end

    # <p>Using the same client token with one or more different parameters. Specify a new client token with the parameter changes and try again.</p>
    # @!attribute message
    #   @return [String]
    class IdempotentParameterMismatch < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your Amazon S3 bucket policy does not allow Config to
    # 			write to it.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InsufficientDeliveryPolicyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConfigRule.html">PutConfigRule</a>, the rule cannot be created because the IAM role assigned to Config lacks permissions to perform the config:Put* action.</p>
    #             </li>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConfigRule.html">PutConfigRule</a>, the Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.</p>
    #             </li>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutOrganizationConfigRule.html">PutOrganizationConfigRule</a>, organization Config rule cannot be created because you do not have permissions to call IAM <code>GetRole</code> action or create a service-linked role.</p>
    #             </li>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html">PutConformancePack</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutOrganizationConformancePack.html">PutOrganizationConformancePack</a>, a conformance pack cannot be created because you do not have the following permissions: </p>
    #                <ul>
    #                   <li>
    #                      <p>You do not have permission to call IAM <code>GetRole</code> action or create a service-linked role.</p>
    #                   </li>
    #                   <li>
    #                      <p>You do not have permission to read Amazon S3 bucket or call SSM:GetDocument.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutServiceLinkedConfigurationRecorder.html">PutServiceLinkedConfigurationRecorder</a>, a service-linked configuration recorder cannot be created because you do not have the following permissions: IAM <code>CreateServiceLinkedRole</code>.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InsufficientPermissionsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration recorder name is not valid. The prefix "<code>AWSConfigurationRecorderFor</code>" is reserved for service-linked configuration recorders.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidConfigurationRecorderNameException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified delivery channel name is not valid.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidDeliveryChannelNameException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The syntax of the query is incorrect.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidExpressionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified limit is outside the allowable range.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidLimitException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified next token is not valid. Specify the
    # 				<code>nextToken</code> string that was returned in the previous
    # 			response to get the next page of results.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One or more of the specified parameters are not valid. Verify
    # 			that your parameters are valid and try again.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>You have provided a combination of parameter values that is not valid. For example:</p>
    #                <ul>
    #                   <li>
    #                      <p>Setting the <code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to <code>true</code>,
    # 						but providing a non-empty list for the <code>resourceTypes</code>field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>Setting the <code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to <code>true</code>, but also setting the <code>useOnly</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> to <code>EXCLUSION_BY_RESOURCE_TYPES</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Every parameter is either null, false, or empty.</p>
    #             </li>
    #             <li>
    #                <p>You have reached the limit of the number of resource types you can provide for the recording group.</p>
    #             </li>
    #             <li>
    #                <p>You have provided resource types or a recording strategy that are not valid.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidRecordingGroupException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified <code>ResultToken</code> is not valid.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidResultTokenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have provided a null or empty Amazon Resource Name (ARN) for the IAM role assumed by Config and used by the customer managed configuration recorder.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidRoleException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified Amazon S3 key prefix is not valid.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidS3KeyPrefixException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified Amazon KMS Key ARN is not valid.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidS3KmsKeyArnException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified Amazon SNS topic does not exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidSNSTopicARNException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified time range is not valid. The earlier time is not
    # 			chronologically before the later time.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class InvalidTimeRangeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You cannot delete the delivery channel you specified because the customer managed configuration recorder is running.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class LastDeliveryChannelDeleteFailedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For <code>PutServiceLinkedConfigurationRecorder</code> API, this exception
    # 			is thrown if the number of service-linked roles in the account exceeds the limit.</p>
    #          <p>For <code>StartConfigRulesEvaluation</code> API, this exception
    # 			is thrown if an evaluation is in progress or if you call the <a>StartConfigRulesEvaluation</a> API more than once per
    # 			minute.</p>
    #          <p>For <code>PutConfigurationAggregator</code> API, this exception
    # 			is thrown if the number of accounts and aggregators exceeds the
    # 			limit.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resources that you want Config to list in the response.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters the results based on the <code>ResourceFilters</code> object.</p>
    #   @return [Types::ResourceFilters]
    # @!attribute limit
    #   <p>The maximum number of resource identifiers returned on each page. You cannot specify a number greater than 100. If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class ListAggregateDiscoveredResourcesRequest < Struct.new(
      :configuration_aggregator_name,
      :resource_type,
      :filters,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_identifiers
    #   <p>Returns a list of <code>ResourceIdentifiers</code> objects.</p>
    #   @return [Array<Types::AggregateResourceIdentifier>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class ListAggregateDiscoveredResourcesResponse < Struct.new(
      :resource_identifiers,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters the results based on a list of <code>ConfigurationRecorderFilter</code> objects that you specify.</p>
    #   @return [Array<Types::ConfigurationRecorderFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>NextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class ListConfigurationRecordersRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_recorder_summaries
    #   <p>A list of <code>ConfigurationRecorderSummary</code> objects that includes.</p>
    #   @return [Array<Types::ConfigurationRecorderSummary>]
    # @!attribute next_token
    #   <p>The <code>NextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class ListConfigurationRecordersResponse < Struct.new(
      :configuration_recorder_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters the results based on the <code>ConformancePackComplianceScoresFilters</code>.</p>
    #   @return [Types::ConformancePackComplianceScoresFilters]
    # @!attribute sort_order
    #   <p>Determines the order in which conformance pack compliance scores are sorted. Either in ascending or descending order.</p>
    #            <p>By default, conformance pack compliance scores are sorted in alphabetical order by name of the conformance pack. Conformance pack compliance scores are sorted in reverse alphabetical order if you enter <code>DESCENDING</code>.</p>
    #            <p>You can sort conformance pack compliance scores by the numerical value of the compliance score by entering <code>SCORE</code> in the <code>SortBy</code> action. When compliance scores are sorted by <code>SCORE</code>, conformance packs with a compliance score of <code>INSUFFICIENT_DATA</code> will be last when sorting by ascending order and first when sorting by descending order.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Sorts your conformance pack compliance scores in either ascending or descending order, depending on <code>SortOrder</code>.</p>
    #            <p>By default, conformance pack compliance scores are sorted in alphabetical order by name of the conformance pack.
    #   			Enter <code>SCORE</code>, to sort conformance pack compliance scores by the numerical value of the compliance score.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of conformance pack compliance scores returned on each page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string in a prior request that you can use to get the paginated response for the next set of conformance pack compliance scores.</p>
    #   @return [String]
    class ListConformancePackComplianceScoresRequest < Struct.new(
      :filters,
      :sort_order,
      :sort_by,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The <code>nextToken</code> string that you can use to get the next page of results in a paginated response.</p>
    #   @return [String]
    # @!attribute conformance_pack_compliance_scores
    #   <p>A list of <code>ConformancePackComplianceScore</code> objects.</p>
    #   @return [Array<Types::ConformancePackComplianceScore>]
    class ListConformancePackComplianceScoresResponse < Struct.new(
      :next_token,
      :conformance_pack_compliance_scores,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute resource_type
    #   <p>The type of resources that you want Config to list in the
    #   			response.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>The IDs of only those resources that you want Config to
    #   			list in the response. If you do not specify this parameter, Config lists all resources of the specified type that it has
    #   			discovered. You can list a minimum of 1 resourceID and a maximum of 20 resourceIds.</p>
    #   @return [Array<String>]
    # @!attribute resource_name
    #   <p>The custom name of only those resources that you want Config to list in the response. If you do not specify this
    #   			parameter, Config lists all resources of the specified type that
    #   			it has discovered.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of resource identifiers returned on each
    #   			page. The default is 100. You cannot specify a number greater than
    #   			100. If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute include_deleted_resources
    #   <p>Specifies whether Config includes deleted resources in the
    #   			results. By default, deleted resources are not included.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #   @return [String]
    class ListDiscoveredResourcesRequest < Struct.new(
      :resource_type,
      :resource_ids,
      :resource_name,
      :limit,
      :include_deleted_resources,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute resource_identifiers
    #   <p>The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the
    #   			custom resource name.</p>
    #   @return [Array<Types::ResourceIdentifier>]
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #   @return [String]
    class ListDiscoveredResourcesResponse < Struct.new(
      :resource_identifiers,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Returns a <code>ResourceEvaluationFilters</code> object.</p>
    #   @return [Types::ResourceEvaluationFilters]
    # @!attribute limit
    #   <p>The maximum number of evaluations returned on each page. The default is 10. 
    #   			You cannot specify a number greater than 100. If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class ListResourceEvaluationsRequest < Struct.new(
      :filters,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_evaluations
    #   <p>Returns a <code>ResourceEvaluations</code> object.</p>
    #   @return [Array<Types::ResourceEvaluation>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #   @return [String]
    class ListResourceEvaluationsResponse < Struct.new(
      :resource_evaluations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call.</p>
    #   @return [Integer]
    class ListStoredQueriesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute stored_query_metadata
    #   <p>A list of <code>StoredQueryMetadata</code> objects.</p>
    #   @return [Array<Types::StoredQueryMetadata>]
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. 
    #   			To retrieve the next set of results, call this operation again and assign that token to the request object's <code>NextToken</code> parameter. 
    #   			If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>. </p>
    #   @return [String]
    class ListStoredQueriesResponse < Struct.new(
      :stored_query_metadata,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. The following resources are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationRecorder</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationAggregator</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AggregationAuthorization</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StoredQuery</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, Config uses the default. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have reached the limit of active custom resource types in your account. There is a limit of 100,000.
    # 			Delete unused resources using <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteResourceConfig.html">DeleteResourceConfig</a>
    #             <code></code>.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class MaxActiveResourcesExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Failed to add the Config rule because the account already
    # 			contains the maximum number of 1000 rules. Consider deleting any
    # 			deactivated rules before you add new rules.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class MaxNumberOfConfigRulesExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have reached the limit of the number of configuration recorders you can
    # 			create.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class MaxNumberOfConfigurationRecordersExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have reached the limit of the number of conformance packs you can create in an account. For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class MaxNumberOfConformancePacksExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have reached the limit of the number of delivery channels
    # 			you can create.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class MaxNumberOfDeliveryChannelsExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have reached the limit of the number of organization Config rules you can create. For more information, see see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class MaxNumberOfOrganizationConfigRulesExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have reached the limit of the number of organization conformance packs you can create in an account. For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class MaxNumberOfOrganizationConformancePacksExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Failed to add the retention configuration because a retention configuration with that name already exists.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class MaxNumberOfRetentionConfigurationsExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MaximumExecutionFrequency
      One_Hour = 'One_Hour'
      Three_Hours = 'Three_Hours'
      Six_Hours = 'Six_Hours'
      Twelve_Hours = 'Twelve_Hours'
      TwentyFour_Hours = 'TwentyFour_Hours'
    end

    module MemberAccountRuleStatus
      CREATE_SUCCESSFUL = 'CREATE_SUCCESSFUL'
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETE_SUCCESSFUL = 'DELETE_SUCCESSFUL'
      DELETE_FAILED = 'DELETE_FAILED'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      UPDATE_SUCCESSFUL = 'UPDATE_SUCCESSFUL'
      UPDATE_IN_PROGRESS = 'UPDATE_IN_PROGRESS'
      UPDATE_FAILED = 'UPDATE_FAILED'
    end

    # <p>Organization Config rule creation or deletion status in each member account. This includes the name of the rule, the status, error code and error message when the rule creation or deletion failed.</p>
    # @!attribute account_id
    #   <p>The 12-digit account ID of a member account.</p>
    #   @return [String]
    # @!attribute config_rule_name
    #   <p>The name of Config rule deployed in the member account.</p>
    #   @return [String]
    # @!attribute member_account_rule_status
    #   <p>Indicates deployment status for Config rule in the member account.
    #   			When management account calls <code>PutOrganizationConfigRule</code> action for the first time, Config rule status is created in the member account. 
    #   			When management account calls <code>PutOrganizationConfigRule</code> action for the second time, Config rule status is updated in the member account.   
    #   			Config rule status is deleted when the management account deletes <code>OrganizationConfigRule</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. 
    #   		</p>
    #            <p> Config sets the state of the rule to:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when Config rule has been created in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when Config rule is being created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when Config rule creation has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when Config rule deletion has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when Config rule is being deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when Config rule has been deleted in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when Config rule has been updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when Config rule is being updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when Config rule deletion has failed in the member account.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code that is returned when Config rule creation or deletion failed in the member account.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message indicating that Config rule account creation or deletion has failed due to an error in the member account.</p>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The timestamp of the last status update.</p>
    #   @return [Time]
    class MemberAccountStatus < Struct.new(
      :account_id,
      :config_rule_name,
      :member_account_rule_status,
      :error_code,
      :error_message,
      :last_update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MessageType
      ConfigurationItemChangeNotification = 'ConfigurationItemChangeNotification'
      ConfigurationSnapshotDeliveryCompleted = 'ConfigurationSnapshotDeliveryCompleted'
      ScheduledNotification = 'ScheduledNotification'
      OversizedConfigurationItemChangeNotification = 'OversizedConfigurationItemChangeNotification'
    end

    # <p>There are no customer managed configuration recorders available to record your resources. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConfigurationRecorder.html">PutConfigurationRecorder</a> operation to create the customer managed configuration
    # 			recorder.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoAvailableConfigurationRecorderException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>There is no delivery channel available to record
    # 			configurations.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoAvailableDeliveryChannelException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Organization is no longer available.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoAvailableOrganizationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>There is no configuration recorder running.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoRunningConfigurationRecorderException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified Amazon S3 bucket does not exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchBucketException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Config rule in the request is not valid. Verify that the rule is an Config Process Check rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchConfigRuleException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Config rule that you passed in the filter does not exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchConfigRuleInConformancePackException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have specified a configuration aggregator that does not exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchConfigurationAggregatorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have specified a configuration recorder that does not
    # 			exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchConfigurationRecorderException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You specified one or more conformance packs that do not exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchConformancePackException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have specified a delivery channel that does not
    # 			exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchDeliveryChannelException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Config rule in the request is not valid. Verify that the rule is an organization Config Process Check rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchOrganizationConfigRuleException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Config organization conformance pack that you passed in the filter does not exist.</p>
    #          <p>For DeleteOrganizationConformancePack, you tried to delete an organization conformance pack that does not exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchOrganizationConformancePackException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You specified an Config rule without a remediation configuration.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchRemediationConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You tried to delete a remediation exception that does not exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchRemediationExceptionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have specified a retention configuration that does not exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class NoSuchRetentionConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For <code>PutConfigurationAggregator</code> API, you can see this exception for the following reasons:</p>
    #          <ul>
    #             <li>
    #                <p>No permission to call <code>EnableAWSServiceAccess</code> API</p>
    #             </li>
    #             <li>
    #                <p>The configuration aggregator cannot be updated because your Amazon Web Services Organization management account or the delegated administrator role changed. 
    # 				Delete this aggregator and create a new one with the current Amazon Web Services Organization.</p>
    #             </li>
    #             <li>
    #                <p>The configuration aggregator is associated with a previous Amazon Web Services Organization and Config cannot aggregate data with current Amazon Web Services Organization. 
    # 				Delete this aggregator and create a new one with the current Amazon Web Services Organization.</p>
    #             </li>
    #             <li>
    #                <p>You are not a registered delegated administrator for Config with permissions to call <code>ListDelegatedAdministrators</code> API. 
    # 			Ensure that the management account registers delagated administrator for Config service principal name before the delegated administrator creates an aggregator.</p>
    #             </li>
    #          </ul>
    #          <p>For all <code>OrganizationConfigRule</code> and <code>OrganizationConformancePack</code> APIs, Config throws an exception if APIs are called from member accounts. All APIs must be called from organization management account.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class OrganizationAccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This object contains regions to set up the aggregator and an IAM
    # 			role to retrieve organization details.</p>
    # @!attribute role_arn
    #   <p>ARN of the IAM role used to retrieve Amazon Web Services Organization details
    #   			associated with the aggregator account.</p>
    #   @return [String]
    # @!attribute aws_regions
    #   <p>The source regions being aggregated.</p>
    #   @return [Array<String>]
    # @!attribute all_aws_regions
    #   <p>If true, aggregate existing Config regions and future
    #   			regions.</p>
    #   @return [Boolean]
    class OrganizationAggregationSource < Struct.new(
      :role_arn,
      :aws_regions,
      :all_aws_regions,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:all_aws_regions] = false unless options.key?(:all_aws_regions)
        super
      end
    end

    # <p>Config resource cannot be created because your organization does not have all features enabled.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class OrganizationAllFeaturesNotEnabledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An organization Config rule that has information about Config rules that Config creates in member accounts.</p>
    # @!attribute organization_config_rule_name
    #   <p>The name that you assign to organization Config rule.</p>
    #   @return [String]
    # @!attribute organization_config_rule_arn
    #   <p>Amazon Resource Name (ARN) of organization Config rule.</p>
    #   @return [String]
    # @!attribute organization_managed_rule_metadata
    #   <p>An <code>OrganizationManagedRuleMetadata</code> object.</p>
    #   @return [Types::OrganizationManagedRuleMetadata]
    # @!attribute organization_custom_rule_metadata
    #   <p>An <code>OrganizationCustomRuleMetadata</code> object.</p>
    #   @return [Types::OrganizationCustomRuleMetadata]
    # @!attribute excluded_accounts
    #   <p>A comma-separated list of accounts excluded from organization Config rule.</p>
    #   @return [Array<String>]
    # @!attribute last_update_time
    #   <p>The timestamp of the last update.</p>
    #   @return [Time]
    # @!attribute organization_custom_policy_rule_metadata
    #   <p>An
    #   			object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have
    #   			debug logging enabled, and other custom rule metadata, such as resource type, resource
    #   			ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>
    #   @return [Types::OrganizationCustomPolicyRuleMetadataNoPolicy]
    class OrganizationConfigRule < Struct.new(
      :organization_config_rule_name,
      :organization_config_rule_arn,
      :organization_managed_rule_metadata,
      :organization_custom_rule_metadata,
      :excluded_accounts,
      :last_update_time,
      :organization_custom_policy_rule_metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the status for an organization Config rule in an organization.</p>
    # @!attribute organization_config_rule_name
    #   <p>The name that you assign to organization Config rule.</p>
    #   @return [String]
    # @!attribute organization_rule_status
    #   <p>Indicates deployment status of an organization Config rule. 
    #   			When management account calls PutOrganizationConfigRule action for the first time, Config rule status is created in all the member accounts. 
    #   			When management account calls PutOrganizationConfigRule action for the second time, Config rule status is updated in all the member accounts. Additionally, Config rule status is updated when one or more member accounts join or leave an organization.   
    #   			Config rule status is deleted when the management account deletes OrganizationConfigRule in all the member accounts and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>.</p>
    #            <p>Config sets the state of the rule to:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when an organization Config rule has been successfully created in all the member accounts. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when an organization Config rule creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when an organization Config rule creation failed in one or more member accounts within that organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when an organization Config rule deletion failed in one or more member accounts within that organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when an organization Config rule deletion is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when an organization Config rule has been successfully deleted from all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when an organization Config rule has been successfully updated in all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when an organization Config rule update is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when an organization Config rule update failed in one or more member accounts within that organization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code that is returned when organization Config rule creation or deletion has failed.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message indicating that organization Config rule creation or deletion failed due to an error.</p>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The timestamp of the last update.</p>
    #   @return [Time]
    class OrganizationConfigRuleStatus < Struct.new(
      :organization_config_rule_name,
      :organization_rule_status,
      :error_code,
      :error_message,
      :last_update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OrganizationConfigRuleTriggerType
      CONFIGURATION_ITEM_CHANGE_NOTIFICATION = 'ConfigurationItemChangeNotification'
      OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION = 'OversizedConfigurationItemChangeNotification'
      SCHEDULED_NOTIFICATION = 'ScheduledNotification'
    end

    module OrganizationConfigRuleTriggerTypeNoSN
      CONFIGURATION_ITEM_CHANGE_NOTIFICATION = 'ConfigurationItemChangeNotification'
      OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION = 'OversizedConfigurationItemChangeNotification'
    end

    # <p>An organization conformance pack that has information about conformance packs that Config creates in member accounts. </p>
    # @!attribute organization_conformance_pack_name
    #   <p>The name you assign to an organization conformance pack.</p>
    #   @return [String]
    # @!attribute organization_conformance_pack_arn
    #   <p>Amazon Resource Name (ARN) of organization conformance pack.</p>
    #   @return [String]
    # @!attribute delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.  </p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    #   @return [String]
    # @!attribute delivery_s3_key_prefix
    #   <p>Any folder structure you want to add to an Amazon S3 bucket.</p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    #   @return [String]
    # @!attribute conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #   @return [Array<Types::ConformancePackInputParameter>]
    # @!attribute excluded_accounts
    #   <p>A comma-separated list of accounts excluded from organization conformance pack.</p>
    #   @return [Array<String>]
    # @!attribute last_update_time
    #   <p>Last time when organization conformation pack was updated.</p>
    #   @return [Time]
    class OrganizationConformancePack < Struct.new(
      :organization_conformance_pack_name,
      :organization_conformance_pack_arn,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :excluded_accounts,
      :last_update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Organization conformance pack creation or deletion status in each member account. 
    # 			This includes the name of the conformance pack, the status, error code and error message 
    # 			when the conformance pack creation or deletion failed. </p>
    # @!attribute account_id
    #   <p>The 12-digit account ID of a member account.</p>
    #   @return [String]
    # @!attribute conformance_pack_name
    #   <p>The name of conformance pack deployed in the member account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates deployment status for conformance pack in a member account.
    #   			When management account calls <code>PutOrganizationConformancePack</code> action for the first time, conformance pack status is created in the member account. 
    #   			When management account calls <code>PutOrganizationConformancePack</code> action for the second time, conformance pack status is updated in the member account.   
    #   			Conformance pack status is deleted when the management account deletes <code>OrganizationConformancePack</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. 
    #   		</p>
    #            <p> Config sets the state of the conformance pack to:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when conformance pack has been created in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when conformance pack is being created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when conformance pack creation has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when conformance pack is being deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when conformance pack has been deleted in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when conformance pack has been updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when conformance pack is being updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code that is returned when conformance pack creation or 
    #   			deletion failed in the member account. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message indicating that conformance pack account creation or deletion 
    #   			has failed due to an error in the member account. </p>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The timestamp of the last status update.</p>
    #   @return [Time]
    class OrganizationConformancePackDetailedStatus < Struct.new(
      :account_id,
      :conformance_pack_name,
      :status,
      :error_code,
      :error_message,
      :last_update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the status for an organization conformance pack in an organization.</p>
    # @!attribute organization_conformance_pack_name
    #   <p>The name that you assign to organization conformance pack.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates deployment status of an organization conformance pack. 
    #   			When management account calls PutOrganizationConformancePack for the first time, 
    #   			conformance pack status is created in all the member accounts. 
    #   			When management account calls PutOrganizationConformancePack for the second time, 
    #   			conformance pack status is updated in all the member accounts. 
    #   			Additionally, conformance pack status is updated when one or more member accounts join or leave an 
    #   			organization.   
    #   			Conformance pack status is deleted when the management account deletes 
    #   			OrganizationConformancePack in all the member accounts and disables service 
    #   			access for <code>config-multiaccountsetup.amazonaws.com</code>.</p>
    #            <p>Config sets the state of the conformance pack to:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when an organization conformance pack has been successfully created in all the member accounts. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when an organization conformance pack creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when an organization conformance pack creation failed in one or more member accounts within that organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when an organization conformance pack deletion failed in one or more member accounts within that organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when an organization conformance pack deletion is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when an organization conformance pack has been successfully deleted from all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when an organization conformance pack has been successfully updated in all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when an organization conformance pack update is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when an organization conformance pack update failed in one or more member accounts within that organization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code that is returned when organization conformance pack creation or deletion has failed in a member account. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message indicating that organization conformance pack creation or deletion failed due to an error. </p>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The timestamp of the last update.</p>
    #   @return [Time]
    class OrganizationConformancePackStatus < Struct.new(
      :organization_conformance_pack_name,
      :status,
      :error_code,
      :error_message,
      :last_update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have specified a template that is not valid or supported.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class OrganizationConformancePackTemplateValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An
    # 			object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have
    # 			debug logging enabled, and other custom rule metadata, such as resource type, resource
    # 			ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>
    # @!attribute description
    #   <p>The description that you provide for your organization Config Custom Policy rule.</p>
    #   @return [String]
    # @!attribute organization_config_rule_trigger_types
    #   <p>The type of notification that initiates Config to run an evaluation for a rule.
    #   			For Config Custom Policy rules, Config supports change-initiated notification types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationItemChangeNotification</code> - Initiates an evaluation when Config delivers a configuration item as a result of a resource
    #   					change.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OversizedConfigurationItemChangeNotification</code> - Initiates an evaluation when
    #   						Config delivers an oversized configuration item. Config may generate this notification type when a resource changes and the
    #   					notification exceeds the maximum size allowed by Amazon SNS.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to your organization Config Custom Policy rule.</p>
    #   @return [String]
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations for a rule. Your
    #   			Config Custom Policy rule is triggered when Config delivers
    #   			the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    #   @return [String]
    # @!attribute resource_types_scope
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #   @return [Array<String>]
    # @!attribute resource_id_scope
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #   @return [String]
    # @!attribute tag_key_scope
    #   <p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>
    #   @return [String]
    # @!attribute tag_value_scope
    #   <p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>
    #   @return [String]
    # @!attribute policy_runtime
    #   <p>The runtime system for your organization Config Custom Policy rules. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the <a href="https://github.com/aws-cloudformation/cloudformation-guard">Guard GitHub
    #   			Repository</a>.</p>
    #   @return [String]
    # @!attribute policy_text
    #   <p>The policy definition containing the logic for your organization Config Custom Policy rule.</p>
    #   @return [String]
    # @!attribute debug_log_delivery_accounts
    #   <p>A list of accounts that you can enable debug logging for your organization Config Custom Policy rule. List is null when debug logging is enabled for all accounts.</p>
    #   @return [Array<String>]
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
      :debug_log_delivery_accounts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> metadata for your organization Config Custom Policy rule including the runtime system in use, which accounts have debug logging enabled, and
    # 			other custom rule metadata such as resource type, resource ID of Amazon Web Services
    # 			resource, and organization trigger types that trigger Config to evaluate
    # 				Amazon Web Services resources against a rule.</p>
    # @!attribute description
    #   <p>The description that you provide for your organization Config Custom Policy rule.</p>
    #   @return [String]
    # @!attribute organization_config_rule_trigger_types
    #   <p>The type of notification that triggers Config to run an evaluation for a rule.
    #   			For Config Custom Policy rules, Config supports change
    #   			triggered notification types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers a configuration item as a result of a resource change.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers an oversized configuration item. 
    #   				Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to your organization Config Custom Policy rule.</p>
    #   @return [String]
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations for a rule. Your
    #   			Config Custom Policy rule is triggered when Config delivers
    #   			the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    #   @return [String]
    # @!attribute resource_types_scope
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #   @return [Array<String>]
    # @!attribute resource_id_scope
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #   @return [String]
    # @!attribute tag_key_scope
    #   <p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>
    #   @return [String]
    # @!attribute tag_value_scope
    #   <p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>
    #   @return [String]
    # @!attribute policy_runtime
    #   <p>The runtime system for your organization Config Custom Policy rules. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the <a href="https://github.com/aws-cloudformation/cloudformation-guard">Guard GitHub
    #   			Repository</a>.</p>
    #   @return [String]
    # @!attribute debug_log_delivery_accounts
    #   <p>A list of accounts that you can enable debug logging for your organization Config Custom Policy rule. List is null when debug logging is enabled for all accounts.</p>
    #   @return [Array<String>]
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
      :debug_log_delivery_accounts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that specifies organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN, 
    # 			and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule. 
    # 			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    # @!attribute description
    #   <p>The description that you provide for your organization Config rule.</p>
    #   @return [String]
    # @!attribute lambda_function_arn
    #   <p>The lambda function ARN.</p>
    #   @return [String]
    # @!attribute organization_config_rule_trigger_types
    #   <p>The type of notification that triggers Config to run an evaluation for a rule. You can specify the following notification types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers a configuration item as a result of a resource change.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers an oversized configuration item. 
    #   			         	Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledNotification</code> - Triggers a periodic evaluation at the frequency specified for <code>MaximumExecutionFrequency</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to your organization Config rule Lambda function.</p>
    #   @return [String]
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations for a rule. 
    #   			Your custom rule is triggered when Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    #            <note>
    #               <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid 
    #   			value for the <code>MaximumExecutionFrequency</code> parameter.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_types_scope
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #   @return [Array<String>]
    # @!attribute resource_id_scope
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #   @return [String]
    # @!attribute tag_key_scope
    #   <p>One part of a key-value pair that make up a tag. 
    #   			A key is a general label that acts like a category for more specific tag values. </p>
    #   @return [String]
    # @!attribute tag_value_scope
    #   <p>The optional part of a key-value pair that make up a tag. 
    #   			A value acts as a descriptor within a tag category (key). </p>
    #   @return [String]
    class OrganizationCustomRuleMetadata < Struct.new(
      :description,
      :lambda_function_arn,
      :organization_config_rule_trigger_types,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that specifies organization managed rule metadata such as resource type and ID of Amazon Web Services resource along with the rule identifier. 
    # 			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    # @!attribute description
    #   <p>The description that you provide for your organization Config rule.</p>
    #   @return [String]
    # @!attribute rule_identifier
    #   <p>For organization config managed rules, a predefined identifier from a
    #   			list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed
    #   			rule. To reference a managed rule, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">Using Config managed rules</a>.</p>
    #   @return [String]
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to your organization Config rule Lambda function.</p>
    #   @return [String]
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations for a rule. This is for an Config managed rule that is triggered at a periodic frequency.</p>
    #            <note>
    #               <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid 
    #   			value for the <code>MaximumExecutionFrequency</code> parameter.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_types_scope
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #   @return [Array<String>]
    # @!attribute resource_id_scope
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #   @return [String]
    # @!attribute tag_key_scope
    #   <p>One part of a key-value pair that make up a tag. 
    #   			A key is a general label that acts like a category for more specific tag values. </p>
    #   @return [String]
    # @!attribute tag_value_scope
    #   <p>The optional part of a key-value pair that make up a tag. 
    #   			A value acts as a descriptor within a tag category (key).</p>
    #   @return [String]
    class OrganizationManagedRuleMetadata < Struct.new(
      :description,
      :rule_identifier,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OrganizationResourceDetailedStatus
      CREATE_SUCCESSFUL = 'CREATE_SUCCESSFUL'
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETE_SUCCESSFUL = 'DELETE_SUCCESSFUL'
      DELETE_FAILED = 'DELETE_FAILED'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      UPDATE_SUCCESSFUL = 'UPDATE_SUCCESSFUL'
      UPDATE_IN_PROGRESS = 'UPDATE_IN_PROGRESS'
      UPDATE_FAILED = 'UPDATE_FAILED'
    end

    # <p>Status filter object to filter results based on specific member account ID or status type for an organization conformance pack.</p>
    # @!attribute account_id
    #   <p>The 12-digit account ID of the member account within an organization.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates deployment status for conformance pack in a member account.
    #   			When management account calls <code>PutOrganizationConformancePack</code> action for the first time, conformance pack status is created in the member account. 
    #   			When management account calls <code>PutOrganizationConformancePack</code> action for the second time, conformance pack status is updated in the member account.   
    #   			Conformance pack status is deleted when the management account deletes <code>OrganizationConformancePack</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. 
    #   		</p>
    #            <p> Config sets the state of the conformance pack to:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when conformance pack has been created in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when conformance pack is being created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when conformance pack creation has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when conformance pack is being deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when conformance pack has been deleted in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when conformance pack has been updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when conformance pack is being updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class OrganizationResourceDetailedStatusFilters < Struct.new(
      :account_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OrganizationResourceStatus
      CREATE_SUCCESSFUL = 'CREATE_SUCCESSFUL'
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETE_SUCCESSFUL = 'DELETE_SUCCESSFUL'
      DELETE_FAILED = 'DELETE_FAILED'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      UPDATE_SUCCESSFUL = 'UPDATE_SUCCESSFUL'
      UPDATE_IN_PROGRESS = 'UPDATE_IN_PROGRESS'
      UPDATE_FAILED = 'UPDATE_FAILED'
    end

    module OrganizationRuleStatus
      CREATE_SUCCESSFUL = 'CREATE_SUCCESSFUL'
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETE_SUCCESSFUL = 'DELETE_SUCCESSFUL'
      DELETE_FAILED = 'DELETE_FAILED'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      UPDATE_SUCCESSFUL = 'UPDATE_SUCCESSFUL'
      UPDATE_IN_PROGRESS = 'UPDATE_IN_PROGRESS'
      UPDATE_FAILED = 'UPDATE_FAILED'
    end

    # <p>The configuration item size is outside the allowable range.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class OversizedConfigurationItemException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Owner
      Custom_Lambda = 'CUSTOM_LAMBDA'
      Aws = 'AWS'
      Custom_Policy = 'CUSTOM_POLICY'
    end

    # <p>An object that represents the account ID and region of an
    # 			aggregator account that is requesting authorization but is not yet
    # 			authorized.</p>
    # @!attribute requester_account_id
    #   <p>The 12-digit account ID of the account requesting to aggregate
    #   			data.</p>
    #   @return [String]
    # @!attribute requester_aws_region
    #   <p>The region requesting to aggregate data. </p>
    #   @return [String]
    class PendingAggregationRequest < Struct.new(
      :requester_account_id,
      :requester_aws_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate data.</p>
    #   @return [String]
    # @!attribute authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tag object.</p>
    #   @return [Array<Types::Tag>]
    class PutAggregationAuthorizationRequest < Struct.new(
      :authorized_account_id,
      :authorized_aws_region,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute aggregation_authorization
    #   <p>Returns an AggregationAuthorization object.
    #   			
    #   		</p>
    #   @return [Types::AggregationAuthorization]
    class PutAggregationAuthorizationResponse < Struct.new(
      :aggregation_authorization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule
    #   <p>The rule that you want to add to your account.</p>
    #   @return [Types::ConfigRule]
    # @!attribute tags
    #   <p>An array of tag object.</p>
    #   @return [Array<Types::Tag>]
    class PutConfigRuleRequest < Struct.new(
      :config_rule,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute account_aggregation_sources
    #   <p>A list of AccountAggregationSource object.
    #   			
    #   		</p>
    #   @return [Array<Types::AccountAggregationSource>]
    # @!attribute organization_aggregation_source
    #   <p>An OrganizationAggregationSource object.</p>
    #   @return [Types::OrganizationAggregationSource]
    # @!attribute tags
    #   <p>An array of tag object.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute aggregator_filters
    #   <p>An object to filter configuration recorders in an aggregator. Either <code>ResourceType</code> or <code>ServicePrincipal</code> is required.</p>
    #   @return [Types::AggregatorFilters]
    class PutConfigurationAggregatorRequest < Struct.new(
      :configuration_aggregator_name,
      :account_aggregation_sources,
      :organization_aggregation_source,
      :tags,
      :aggregator_filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configuration_aggregator
    #   <p>Returns a ConfigurationAggregator object.</p>
    #   @return [Types::ConfigurationAggregator]
    class PutConfigurationAggregatorResponse < Struct.new(
      :configuration_aggregator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>PutConfigurationRecorder</a>
    # 			action.</p>
    # @!attribute configuration_recorder
    #   <p>An object for the configuration recorder. A configuration recorder records configuration changes for the resource types in scope.</p>
    #   @return [Types::ConfigurationRecorder]
    # @!attribute tags
    #   <p>The tags for the customer managed configuration recorder. Each tag consists of a key and an optional value, both of which you define.</p>
    #   @return [Array<Types::Tag>]
    class PutConfigurationRecorderRequest < Struct.new(
      :configuration_recorder,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>The unique name of the conformance pack you want to deploy.</p>
    #   @return [String]
    # @!attribute template_s3_uri
    #   <p>The location of the file containing the template body (<code>s3://bucketname/prefix</code>). The uri must point to a conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same Region as the conformance pack. </p>
    #            <note>
    #               <p>You must have access to read Amazon S3 bucket.
    #   			In addition, in order to ensure a successful deployment, the template object must not be in an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html">archived storage class</a> if this parameter is passed.</p>
    #            </note>
    #   @return [String]
    # @!attribute template_body
    #   <p>A string that contains the full conformance pack template body. The structure containing the template body has a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>
    #            <note>
    #               <p>You can use a YAML template with two resource types: Config rule (<code>AWS::Config::ConfigRule</code>) and remediation action (<code>AWS::Config::RemediationConfiguration</code>).</p>
    #            </note>
    #   @return [String]
    # @!attribute delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    #   @return [String]
    # @!attribute delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket. </p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    #   @return [String]
    # @!attribute conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #   @return [Array<Types::ConformancePackInputParameter>]
    # @!attribute template_ssm_document_details
    #   <p>An object of type <code>TemplateSSMDocumentDetails</code>, which contains the name or the Amazon Resource Name (ARN) of the Amazon Web Services Systems Manager document (SSM document) and the version of the SSM document that is used to create a conformance pack.</p>
    #   @return [Types::TemplateSSMDocumentDetails]
    class PutConformancePackRequest < Struct.new(
      :conformance_pack_name,
      :template_s3_uri,
      :template_body,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :template_ssm_document_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conformance_pack_arn
    #   <p>ARN of the conformance pack.</p>
    #   @return [String]
    class PutConformancePackResponse < Struct.new(
      :conformance_pack_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>PutDeliveryChannel</a>
    # 			action.</p>
    # @!attribute delivery_channel
    #   <p>An object for the delivery channel. A delivery channel sends notifications and updated configuration states.
    #   		</p>
    #   @return [Types::DeliveryChannel]
    class PutDeliveryChannelRequest < Struct.new(
      :delivery_channel,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute evaluations
    #   <p>The assessments that the Lambda function performs. Each
    #   			evaluation identifies an Amazon Web Services resource and indicates whether it
    #   			complies with the Config rule that invokes the Lambda
    #   			function.</p>
    #   @return [Array<Types::Evaluation>]
    # @!attribute result_token
    #   <p>An encrypted token that associates an evaluation with an Config rule. Identifies the rule and the event that triggered the
    #   			evaluation.</p>
    #   @return [String]
    # @!attribute test_mode
    #   <p>Use this parameter to specify a test run for
    #   			<code>PutEvaluations</code>. You can verify whether your Lambda function will deliver evaluation results to Config. No
    #   			updates occur to your existing evaluations, and evaluation results
    #   			are not sent to Config.</p>
    #            <note>
    #               <p>When <code>TestMode</code> is <code>true</code>,
    #   					<code>PutEvaluations</code> doesn't require a valid value
    #   				for the <code>ResultToken</code> parameter, but the value cannot
    #   				be null.</p>
    #            </note>
    #   @return [Boolean]
    class PutEvaluationsRequest < Struct.new(
      :evaluations,
      :result_token,
      :test_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute failed_evaluations
    #   <p>Requests that failed because of a client or server
    #   			error.</p>
    #   @return [Array<Types::Evaluation>]
    class PutEvaluationsResponse < Struct.new(
      :failed_evaluations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #   @return [String]
    # @!attribute external_evaluation
    #   <p>An <code>ExternalEvaluation</code> object that provides details about compliance.</p>
    #   @return [Types::ExternalEvaluation]
    class PutExternalEvaluationRequest < Struct.new(
      :config_rule_name,
      :external_evaluation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutExternalEvaluationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_config_rule_name
    #   <p>The name that you assign to an organization Config rule.</p>
    #   @return [String]
    # @!attribute organization_managed_rule_metadata
    #   <p>An <code>OrganizationManagedRuleMetadata</code> object. This object specifies organization
    #   			managed rule metadata such as resource type and ID of Amazon Web Services resource along with the rule identifier.
    #   			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    #   @return [Types::OrganizationManagedRuleMetadata]
    # @!attribute organization_custom_rule_metadata
    #   <p>An <code>OrganizationCustomRuleMetadata</code> object. This object specifies organization custom rule metadata such as resource type,
    #   			resource ID of Amazon Web Services resource, Lambda function ARN, and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule.
    #   			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    #   @return [Types::OrganizationCustomRuleMetadata]
    # @!attribute excluded_accounts
    #   <p>A comma-separated list of accounts that you want to exclude from an organization Config rule.</p>
    #   @return [Array<String>]
    # @!attribute organization_custom_policy_rule_metadata
    #   <p>An <code>OrganizationCustomPolicyRuleMetadata</code> object. This object specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug
    #   			logging enabled, and other custom rule metadata, such as resource type, resource ID of
    #   			Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>
    #   @return [Types::OrganizationCustomPolicyRuleMetadata]
    class PutOrganizationConfigRuleRequest < Struct.new(
      :organization_config_rule_name,
      :organization_managed_rule_metadata,
      :organization_custom_rule_metadata,
      :excluded_accounts,
      :organization_custom_policy_rule_metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_config_rule_arn
    #   <p>The Amazon Resource Name (ARN) of an organization Config rule.</p>
    #   @return [String]
    class PutOrganizationConfigRuleResponse < Struct.new(
      :organization_config_rule_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_conformance_pack_name
    #   <p>Name of the organization conformance pack you want to create.</p>
    #   @return [String]
    # @!attribute template_s3_uri
    #   <p>Location of file containing the template body. The uri must point to the conformance pack template
    #   			(max size: 300 KB).</p>
    #            <note>
    #               <p>You must have access to read Amazon S3 bucket.
    #   			In addition, in order to ensure a successful deployment, the template object must not be in an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html">archived storage class</a> if this parameter is passed.</p>
    #            </note>
    #   @return [String]
    # @!attribute template_body
    #   <p>A string that contains the full conformance pack template body. Structure containing the template body
    #   			with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>
    #   @return [String]
    # @!attribute delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
    #            <note>
    #               <p>This field is optional. If used, it must be prefixed with <code>awsconfigconforms</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket.</p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    #   @return [String]
    # @!attribute conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #   @return [Array<Types::ConformancePackInputParameter>]
    # @!attribute excluded_accounts
    #   <p>A list of Amazon Web Services accounts to be excluded from an organization conformance pack while deploying a conformance pack.</p>
    #   @return [Array<String>]
    class PutOrganizationConformancePackRequest < Struct.new(
      :organization_conformance_pack_name,
      :template_s3_uri,
      :template_body,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :excluded_accounts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_conformance_pack_arn
    #   <p>ARN of the organization conformance pack.</p>
    #   @return [String]
    class PutOrganizationConformancePackResponse < Struct.new(
      :organization_conformance_pack_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute remediation_configurations
    #   <p>A list of remediation configuration objects.</p>
    #   @return [Array<Types::RemediationConfiguration>]
    class PutRemediationConfigurationsRequest < Struct.new(
      :remediation_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failed_batches
    #   <p>Returns a list of failed remediation batch objects.</p>
    #   @return [Array<Types::FailedRemediationBatch>]
    class PutRemediationConfigurationsResponse < Struct.new(
      :failed_batches,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want to create remediation exception.</p>
    #   @return [String]
    # @!attribute resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    #   @return [Array<Types::RemediationExceptionResourceKey>]
    # @!attribute message
    #   <p>The message contains an explanation of the exception.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The exception is automatically deleted after the expiration date.</p>
    #   @return [Time]
    class PutRemediationExceptionsRequest < Struct.new(
      :config_rule_name,
      :resource_keys,
      :message,
      :expiration_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failed_batches
    #   <p>Returns a list of failed remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.</p>
    #   @return [Array<Types::FailedRemediationExceptionBatch>]
    class PutRemediationExceptionsResponse < Struct.new(
      :failed_batches,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>The type of the resource. The custom resource type must be registered with CloudFormation. </p>
    #            <note>
    #               <p>You cannot use the organization names “amzn”, “amazon”, “alexa”, “custom” with custom resource types. It is the first part of the ResourceType up to the first ::.</p>
    #            </note>
    #   @return [String]
    # @!attribute schema_version_id
    #   <p>Version of the schema registered for the ResourceType in CloudFormation.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Unique identifier of the resource.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>Name of the resource.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration object of the resource in valid JSON format. It must match the schema registered with CloudFormation.</p>
    #            <note>
    #               <p>The configuration JSON must not exceed 64 KB.</p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #            <note>
    #               <p>This field is not to be confused with the Amazon Web Services-wide tag feature for Amazon Web Services resources.
    #   			Tags for <code>PutResourceConfig</code> are tags that you supply for the configuration items of your custom resources.</p>
    #            </note>
    #   @return [Hash<String, String>]
    class PutResourceConfigRequest < Struct.new(
      :resource_type,
      :schema_version_id,
      :resource_id,
      :resource_name,
      :configuration,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retention_period_in_days
    #   <p>Number of days Config stores your historical
    #   			information.</p>
    #            <note>
    #               <p>Currently, only applicable to the configuration item
    #   				history.</p>
    #            </note>
    #   @return [Integer]
    class PutRetentionConfigurationRequest < Struct.new(
      :retention_period_in_days,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retention_configuration
    #   <p>Returns a retention configuration object.</p>
    #   @return [Types::RetentionConfiguration]
    class PutRetentionConfigurationResponse < Struct.new(
      :retention_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_principal
    #   <p>The service principal of the Amazon Web Services service for the service-linked configuration recorder that you want to create.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for a service-linked configuration recorder. Each tag consists of a key and an optional value, both of which you define.</p>
    #   @return [Array<Types::Tag>]
    class PutServiceLinkedConfigurationRecorderRequest < Struct.new(
      :service_principal,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the specified configuration recorder.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the specified configuration recorder.</p>
    #            <p>For service-linked configuration recorders, Config automatically assigns a name that has the prefix "<code>AWSConfigurationRecorderFor</code>" to the new service-linked configuration recorder.</p>
    #   @return [String]
    class PutServiceLinkedConfigurationRecorderResponse < Struct.new(
      :arn,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute stored_query
    #   <p>A list of <code>StoredQuery</code> objects. 
    #   			The mandatory fields are <code>QueryName</code> and <code>Expression</code>.</p>
    #            <note>
    #               <p>When you are creating a query, you must provide a query name and an expression. 
    #   			When you are updating a query, you must provide a query name but updating the description is optional.</p>
    #            </note>
    #   @return [Types::StoredQuery]
    # @!attribute tags
    #   <p>A list of <code>Tags</code> object.</p>
    #   @return [Array<Types::Tag>]
    class PutStoredQueryRequest < Struct.new(
      :stored_query,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_arn
    #   <p>Amazon Resource Name (ARN) of the query. 
    #   			For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.</p>
    #   @return [String]
    class PutStoredQueryResponse < Struct.new(
      :query_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about the query.</p>
    # @!attribute select_fields
    #   <p>Returns a <code>FieldInfo</code> object.</p>
    #   @return [Array<Types::FieldInfo>]
    class QueryInfo < Struct.new(
      :select_fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RecorderStatus
      Pending = 'Pending'
      Success = 'Success'
      Failure = 'Failure'
      NotApplicable = 'NotApplicable'
    end

    module RecordingFrequency
      CONTINUOUS = 'CONTINUOUS'
      DAILY = 'DAILY'
    end

    # <p>Specifies which resource types Config
    # 			records for configuration changes. By default, Config records configuration changes for all current and future supported resource types in the Amazon Web Services Region where you have enabled Config,
    # 			excluding the global IAM resource types: IAM users, groups, roles, and customer managed policies.</p>
    #          <p>In the recording group, you specify whether you want to record all supported current and future supported resource types or to include or exclude specific resources types.
    # 			For a list of supported resource types, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported Resource Types</a> in the <i>Config developer guide</i>.</p>
    #          <p>If you don't want Config to record all current and future supported resource types (excluding the global IAM resource types), use one of the following recording strategies:</p>
    #          <ol>
    #             <li>
    #                <p>
    #                   <b>Record all current and future resource types with exclusions</b> (<code>EXCLUSION_BY_RESOURCE_TYPES</code>), or</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Record specific resource types</b> (<code>INCLUSION_BY_RESOURCE_TYPES</code>).</p>
    #             </li>
    #          </ol>
    #          <p>If you use the recording strategy to <b>Record all current and future resource types</b> (<code>ALL_SUPPORTED_RESOURCE_TYPES</code>),
    # 			you can use the flag <code>includeGlobalResourceTypes</code> to include the global IAM resource types in your recording.</p>
    #          <important>
    #             <p>
    #                <b>Aurora global clusters are recorded in all enabled Regions</b>
    #             </p>
    #             <p>The <code>AWS::RDS::GlobalCluster</code> resource type
    # 				will be recorded in all supported Config Regions where the configuration recorder is enabled.</p>
    #             <p>If you do not want to record <code>AWS::RDS::GlobalCluster</code> in all enabled Regions, use the <code>EXCLUSION_BY_RESOURCE_TYPES</code> or <code>INCLUSION_BY_RESOURCE_TYPES</code> recording strategy.</p>
    #          </important>
    # @!attribute all_supported
    #   <p>Specifies whether Config records configuration changes for all supported resource types, excluding the global IAM resource types.</p>
    #            <p>If you set this field to <code>true</code>, when Config
    #   			adds support for a new resource type, Config starts recording resources of that type automatically.</p>
    #            <p>If you set this field to <code>true</code>,
    #   			you cannot enumerate specific resource types to record in the <code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a>, or to exclude in the <code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html">ExclusionByResourceTypes</a>.</p>
    #            <note>
    #               <p>
    #                  <b>Region availability</b>
    #               </p>
    #               <p>Check <a href="https://docs.aws.amazon.com/config/latest/developerguide/what-is-resource-config-coverage.html">Resource Coverage by Region Availability</a>
    #   				to see if a resource type is supported in the Amazon Web Services Region where you set up Config.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute include_global_resource_types
    #   <p>This option is a bundle which only applies to the global IAM resource types:
    #   			IAM users, groups, roles, and customer managed policies. These global IAM resource types can only be recorded
    #   			by Config in Regions where Config was available before February 2022.
    #   			You cannot be record the global IAM resouce types in Regions supported by Config after February 2022. For a list of those Regions,
    #   			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html#select-resources-all">Recording Amazon Web Services Resources | Global Resources</a>.</p>
    #            <important>
    #               <p>
    #                  <b>Aurora global clusters are recorded in all enabled Regions</b>
    #               </p>
    #               <p>The <code>AWS::RDS::GlobalCluster</code> resource type will be recorded in all supported Config Regions where the configuration recorder is enabled, even if <code>includeGlobalResourceTypes</code> is set<code>false</code>.
    #   				The <code>includeGlobalResourceTypes</code> option is a bundle which only applies to IAM users, groups, roles, and customer managed policies.
    #   			</p>
    #               <p>If you do not want to record <code>AWS::RDS::GlobalCluster</code> in all enabled Regions, use one of the following recording strategies:</p>
    #               <ol>
    #                  <li>
    #                     <p>
    #                        <b>Record all current and future resource types with exclusions</b> (<code>EXCLUSION_BY_RESOURCE_TYPES</code>), or</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Record specific resource types</b> (<code>INCLUSION_BY_RESOURCE_TYPES</code>).</p>
    #                  </li>
    #               </ol>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html#select-resources-all">Selecting Which Resources are Recorded</a> in the <i>Config developer guide</i>.</p>
    #            </important>
    #            <important>
    #               <p>
    #                  <b>includeGlobalResourceTypes and the exclusion recording strategy</b>
    #               </p>
    #               <p>The <code>includeGlobalResourceTypes</code> field has no impact on the <code>EXCLUSION_BY_RESOURCE_TYPES</code> recording strategy.
    #   				This means that the global IAM resource types (IAM users, groups, roles, and customer managed policies) will
    #   				not be automatically added as exclusions for <code>exclusionByResourceTypes</code> when <code>includeGlobalResourceTypes</code> is set to <code>false</code>.</p>
    #               <p>The <code>includeGlobalResourceTypes</code> field should only be used to modify the <code>AllSupported</code> field, as the default for
    #   				the <code>AllSupported</code> field is to record configuration changes for all supported resource types excluding the global
    #   				IAM resource types. To include the global IAM resource types when <code>AllSupported</code> is set to <code>true</code>, make sure to set <code>includeGlobalResourceTypes</code> to <code>true</code>.</p>
    #               <p>To exclude the global IAM resource types for the <code>EXCLUSION_BY_RESOURCE_TYPES</code> recording strategy, you need to manually add them to the <code>resourceTypes</code> field of <code>exclusionByResourceTypes</code>.</p>
    #            </important>
    #            <note>
    #               <p>
    #                  <b>Required and optional fields</b>
    #               </p>
    #               <p>Before you set this field to <code>true</code>,
    #   			set the <code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to
    #   			<code>true</code>. Optionally, you can set the <code>useOnly</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> to <code>ALL_SUPPORTED_RESOURCE_TYPES</code>.</p>
    #            </note>
    #            <note>
    #               <p>
    #                  <b>Overriding fields</b>
    #               </p>
    #               <p>If you set this field to <code>false</code> but list global IAM resource types in the <code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a>,
    #   			Config will still record configuration changes for those specified resource types <i>regardless</i> of if you set the <code>includeGlobalResourceTypes</code> field to false.</p>
    #               <p>If you do not want to record configuration changes to the global IAM resource types (IAM users, groups, roles, and customer managed policies), make sure to not list them in the <code>resourceTypes</code> field
    #   			in addition to setting the <code>includeGlobalResourceTypes</code> field to false.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute resource_types
    #   <p>A comma-separated list that specifies which resource types Config
    #   			records.</p>
    #            <p>For a list of valid <code>resourceTypes</code> values, see the
    #   				<b>Resource Type Value</b> column in
    #   				<a href="https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported Amazon Web Services resource Types</a> in the <i>Config developer guide</i>.</p>
    #            <note>
    #               <p>
    #                  <b>Required and optional fields</b>
    #               </p>
    #               <p>Optionally, you can set the <code>useOnly</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> to <code>INCLUSION_BY_RESOURCE_TYPES</code>.</p>
    #               <p>To record all configuration changes,
    #   				set the <code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to
    #   				<code>true</code>, and either omit this field or don't specify any resource types in this field. If you set the <code>allSupported</code> field to <code>false</code> and specify values for <code>resourceTypes</code>,
    #   				when Config adds support for a new type of resource,
    #   				it will not record resources of that type unless you manually add that type to your recording group.</p>
    #            </note>
    #            <note>
    #               <p>
    #                  <b>Region availability</b>
    #               </p>
    #               <p>Before specifying a resource type for Config to track,
    #   				check <a href="https://docs.aws.amazon.com/config/latest/developerguide/what-is-resource-config-coverage.html">Resource Coverage by Region Availability</a>
    #   				to see if the resource type is supported in the Amazon Web Services Region where you set up Config.
    #   				If a resource type is supported by Config in at least one Region,
    #   				you can enable the recording of that resource type in all Regions supported by Config,
    #   				even if the specified resource type is not supported in the Amazon Web Services Region where you set up Config.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute exclusion_by_resource_types
    #   <p>An object that specifies how Config excludes resource types from being recorded by the configuration recorder.</p>
    #            <note>
    #               <p>
    #                  <b>Required fields</b>
    #               </p>
    #               <p>To use this option, you must set the <code>useOnly</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> to <code>EXCLUSION_BY_RESOURCE_TYPES</code>.</p>
    #            </note>
    #   @return [Types::ExclusionByResourceTypes]
    # @!attribute recording_strategy
    #   <p>An object that specifies the recording strategy for the configuration recorder.</p>
    #            <ul>
    #               <li>
    #                  <p>If you set the <code>useOnly</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> to <code>ALL_SUPPORTED_RESOURCE_TYPES</code>, Config records configuration changes for all supported resource types, excluding the global IAM resource types. You also must set the <code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to <code>true</code>. When Config adds support for a new resource type, Config automatically starts recording resources of that type.</p>
    #               </li>
    #               <li>
    #                  <p>If you set the <code>useOnly</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> to <code>INCLUSION_BY_RESOURCE_TYPES</code>, Config records configuration changes for only the resource types you specify in the <code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a>.</p>
    #               </li>
    #               <li>
    #                  <p>If you set the <code>useOnly</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> to <code>EXCLUSION_BY_RESOURCE_TYPES</code>, Config records configuration changes for all supported resource types
    #   				except the resource types that you specify to exclude from being recorded in the <code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html">ExclusionByResourceTypes</a>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <b>Required and optional fields</b>
    #               </p>
    #               <p>The <code>recordingStrategy</code> field is optional when you set the
    #   			<code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to <code>true</code>.</p>
    #               <p>The <code>recordingStrategy</code> field is optional when you list resource types in the
    #   				<code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a>.</p>
    #               <p>The <code>recordingStrategy</code> field is required if you list resource types to exclude from recording in the <code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html">ExclusionByResourceTypes</a>.</p>
    #            </note>
    #            <note>
    #               <p>
    #                  <b>Overriding fields</b>
    #               </p>
    #               <p>If you choose <code>EXCLUSION_BY_RESOURCE_TYPES</code> for the recording strategy, the <code>exclusionByResourceTypes</code> field will override other properties in the request.</p>
    #               <p>For example, even if you set <code>includeGlobalResourceTypes</code> to false, global IAM resource types will still be automatically
    #   			recorded in this option unless those resource types are specifically listed as exclusions in the <code>resourceTypes</code> field of <code>exclusionByResourceTypes</code>.</p>
    #            </note>
    #            <note>
    #               <p>
    #                  <b>Global resources types and the resource exclusion recording strategy</b>
    #               </p>
    #               <p>By default, if you choose the <code>EXCLUSION_BY_RESOURCE_TYPES</code> recording strategy,
    #   			when Config adds support for a new resource type in the Region where you set up the configuration recorder, including global resource types,
    #   			Config starts recording resources of that type automatically.</p>
    #               <p>Unless specifically listed as exclusions,
    #   				<code>AWS::RDS::GlobalCluster</code> will be recorded automatically in all supported Config Regions were the configuration recorder is enabled.</p>
    #               <p>IAM users, groups, roles, and customer managed policies will be recorded in the Region where you set up the configuration recorder if that is a Region where Config  was available before February 2022.
    #   				You cannot be record the global IAM resouce types in Regions supported by Config after February 2022. For a list of those Regions,
    #   				see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html#select-resources-all">Recording Amazon Web Services Resources | Global Resources</a>.</p>
    #            </note>
    #   @return [Types::RecordingStrategy]
    class RecordingGroup < Struct.new(
      :all_supported,
      :include_global_resource_types,
      :resource_types,
      :exclusion_by_resource_types,
      :recording_strategy,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:all_supported] = false unless options.key?(:all_supported)
        options[:include_global_resource_types] = false unless options.key?(:include_global_resource_types)
        super
      end
    end

    # <p>Specifies the default recording frequency that Config uses to record configuration changes.
    # 			
    # 			Config supports <i>Continuous recording</i> and <i>Daily recording</i>.</p>
    #          <ul>
    #             <li>
    #                <p>Continuous recording allows you to record configuration changes continuously whenever a change occurs.</p>
    #             </li>
    #             <li>
    #                <p>Daily recording allows you to receive a configuration item (CI) representing the most recent state of your resources over the last 24-hour period, only if it’s different from the previous CI recorded.
    # 			</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>Firewall Manager depends on continuous recording to monitor your resources. If you are using Firewall Manager,
    # 			it is recommended that you set the recording frequency to Continuous.</p>
    #          </note>
    #          <p>You can also override the recording frequency for specific resource types.</p>
    # @!attribute recording_frequency
    #   <p>The default recording frequency that Config uses to record configuration changes.</p>
    #            <important>
    #               <p>Daily recording cannot be specified for the following resource types:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>AWS::Config::ResourceCompliance</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS::Config::ConformancePackCompliance</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS::Config::ConfigurationRecorder</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #               <p>For the <b>allSupported</b> (<code>ALL_SUPPORTED_RESOURCE_TYPES</code>) recording strategy, these resource types will be set to Continuous recording.</p>
    #            </important>
    #   @return [String]
    # @!attribute recording_mode_overrides
    #   <p>An array of <code>recordingModeOverride</code> objects for you to specify your overrides for the recording mode.
    #   			The <code>recordingModeOverride</code> object in the <code>recordingModeOverrides</code> array consists of three fields: a <code>description</code>, the new <code>recordingFrequency</code>, and an array of <code>resourceTypes</code> to override.</p>
    #   @return [Array<Types::RecordingModeOverride>]
    class RecordingMode < Struct.new(
      :recording_frequency,
      :recording_mode_overrides,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object for you to specify your overrides for the recording mode.</p>
    # @!attribute description
    #   <p>A description that you provide for the override.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>A comma-separated list that specifies which resource types Config
    #   			includes in the override.</p>
    #            <important>
    #               <p>Daily recording cannot be specified for the following resource types:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>AWS::Config::ResourceCompliance</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS::Config::ConformancePackCompliance</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS::Config::ConfigurationRecorder</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </important>
    #   @return [Array<String>]
    # @!attribute recording_frequency
    #   <p>The recording frequency that will be applied to all the resource types specified in the override.</p>
    #            <ul>
    #               <li>
    #                  <p>Continuous recording allows you to record configuration changes continuously whenever a change occurs.</p>
    #               </li>
    #               <li>
    #                  <p>Daily recording allows you to receive a configuration item (CI) representing the most recent state of your resources over the last 24-hour period, only if it’s different from the previous CI recorded.
    #   			</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Firewall Manager depends on continuous recording to monitor your resources. If you are using Firewall Manager,
    #   			it is recommended that you set the recording frequency to Continuous.</p>
    #            </note>
    #   @return [String]
    class RecordingModeOverride < Struct.new(
      :description,
      :resource_types,
      :recording_frequency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RecordingScope
      INTERNAL = 'INTERNAL'
      PAID = 'PAID'
    end

    # <p>Specifies the recording strategy of the configuration recorder.</p>
    # @!attribute use_only
    #   <p>The recording strategy for the configuration recorder.</p>
    #            <ul>
    #               <li>
    #                  <p>If you set this option to <code>ALL_SUPPORTED_RESOURCE_TYPES</code>, Config records configuration changes for all supported resource types, excluding the global IAM resource types.
    #   				You also must set the <code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to <code>true</code>.
    #   				When Config adds support for a new resource type, Config automatically starts recording resources of that type. For a list of supported resource types,
    #   				see <a href="https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported Resource Types</a> in the <i>Config developer guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>If you set this option to <code>INCLUSION_BY_RESOURCE_TYPES</code>, Config records
    #   					configuration changes for only the resource types that you specify in the
    #   						<code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a>.</p>
    #               </li>
    #               <li>
    #                  <p>If you set this option to <code>EXCLUSION_BY_RESOURCE_TYPES</code>, Config records
    #   					configuration changes for all supported resource types, except the resource
    #   					types that you specify to exclude from being recorded in the
    #   						<code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html">ExclusionByResourceTypes</a>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <b>Required and optional fields</b>
    #               </p>
    #               <p>The <code>recordingStrategy</code> field is optional when you set the
    #   			<code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to <code>true</code>.</p>
    #               <p>The <code>recordingStrategy</code> field is optional when you list resource types in the
    #   				<code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a>.</p>
    #               <p>The <code>recordingStrategy</code> field is required if you list resource types to exclude from recording in the <code>resourceTypes</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html">ExclusionByResourceTypes</a>.</p>
    #            </note>
    #            <note>
    #               <p>
    #                  <b>Overriding fields</b>
    #               </p>
    #               <p>If you choose <code>EXCLUSION_BY_RESOURCE_TYPES</code> for the recording strategy, the <code>exclusionByResourceTypes</code> field will override other properties in the request.</p>
    #               <p>For example, even if you set <code>includeGlobalResourceTypes</code> to false, global IAM resource types will still be automatically
    #   			recorded in this option unless those resource types are specifically listed as exclusions in the <code>resourceTypes</code> field of <code>exclusionByResourceTypes</code>.</p>
    #            </note>
    #            <note>
    #               <p>
    #                  <b>Global resource types and the exclusion recording strategy</b>
    #               </p>
    #               <p>By default, if you choose the <code>EXCLUSION_BY_RESOURCE_TYPES</code> recording strategy,
    #   				when Config adds support for a new resource type in the Region where you set up the configuration recorder, including global resource types,
    #   				Config starts recording resources of that type automatically.</p>
    #               <p>Unless specifically listed as exclusions,
    #   				<code>AWS::RDS::GlobalCluster</code> will be recorded automatically in all supported Config Regions were the configuration recorder is enabled.</p>
    #               <p>IAM users, groups, roles, and customer managed policies will be recorded in the Region where you set up the configuration recorder if that is a Region where Config was available before February 2022.
    #   				You cannot be record the global IAM resouce types in Regions supported by Config after February 2022. This list where you cannot record the global IAM resource types includes the following Regions:</p>
    #               <ul>
    #                  <li>
    #                     <p>Asia Pacific (Hyderabad)</p>
    #                  </li>
    #                  <li>
    #                     <p>Asia Pacific (Melbourne)</p>
    #                  </li>
    #                  <li>
    #                     <p>Canada West (Calgary)</p>
    #                  </li>
    #                  <li>
    #                     <p>Europe (Spain)</p>
    #                  </li>
    #                  <li>
    #                     <p>Europe (Zurich)</p>
    #                  </li>
    #                  <li>
    #                     <p>Israel (Tel Aviv)</p>
    #                  </li>
    #                  <li>
    #                     <p>Middle East (UAE)</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    class RecordingStrategy < Struct.new(
      :use_only,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RecordingStrategyType
      ALL_SUPPORTED_RESOURCE_TYPES = 'ALL_SUPPORTED_RESOURCE_TYPES'
      INCLUSION_BY_RESOURCE_TYPES = 'INCLUSION_BY_RESOURCE_TYPES'
      EXCLUSION_BY_RESOURCE_TYPES = 'EXCLUSION_BY_RESOURCE_TYPES'
    end

    # <p>The relationship of the related resource to the main
    # 			resource.</p>
    # @!attribute resource_type
    #   <p>The resource type of the related resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the related resource (for example,
    #   				<code>sg-xxxxxx</code>).</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The custom name of the related resource, if
    #   			available.</p>
    #   @return [String]
    # @!attribute relationship_name
    #   <p>The type of relationship with the related resource.</p>
    #   @return [String]
    class Relationship < Struct.new(
      :resource_type,
      :resource_id,
      :resource_name,
      :relationship_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.</p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The type of the target. Target executes remediation. For example, SSM document.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>Target ID is the name of the SSM document.</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>Version of the target. For example, version of the SSM document.</p>
    #            <note>
    #               <p>If you make backward incompatible changes to the SSM document, 
    #   			you must call PutRemediationConfiguration API again to ensure the remediations can run.</p>
    #            </note>
    #   @return [String]
    # @!attribute parameters
    #   <p>An object of the RemediationParameterValue.</p>
    #   @return [Hash<String, Types::RemediationParameterValue>]
    # @!attribute resource_type
    #   <p>The type of a resource. </p>
    #   @return [String]
    # @!attribute automatic
    #   <p>The remediation is triggered automatically.</p>
    #   @return [Boolean]
    # @!attribute execution_controls
    #   <p>An ExecutionControls object.</p>
    #   @return [Types::ExecutionControls]
    # @!attribute maximum_automatic_attempts
    #   <p>The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.</p>
    #            <p>For example, if you specify MaximumAutomaticAttempts as 5 with RetryAttemptSeconds as 50 seconds, 
    #   			
    #   			Config will put a RemediationException on your behalf for the failing resource after the 5th failed attempt within 50 seconds.</p>
    #   @return [Integer]
    # @!attribute retry_attempt_seconds
    #   <p>Time window to determine whether or not to add a remediation exception to prevent infinite remediation attempts.
    #   			If <code>MaximumAutomaticAttempts</code> remediation attempts have been made under <code>RetryAttemptSeconds</code>, a remediation exception will be added to the resource.
    #   			If you do not select a number, the default is 60 seconds.
    #   		</p>
    #            <p>For example, if you specify <code>RetryAttemptSeconds</code> as 50 seconds and <code>MaximumAutomaticAttempts</code> as 5, 
    #   			Config will run auto-remediations 5 times within 50 seconds before adding a remediation exception to the resource.</p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) of remediation configuration.</p>
    #   @return [String]
    # @!attribute created_by_service
    #   <p>Name of the service that owns the service-linked rule, if applicable.</p>
    #   @return [String]
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
      :created_by_service,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:automatic] = false unless options.key?(:automatic)
        super
      end
    end

    # <p>An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type. </p>
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of a resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource (for example., sg-xxxxxx).</p>
    #   @return [String]
    # @!attribute message
    #   <p>An explanation of an remediation exception.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The time when the remediation exception will be deleted.</p>
    #   @return [Time]
    class RemediationException < Struct.new(
      :config_rule_name,
      :resource_type,
      :resource_id,
      :message,
      :expiration_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details that identify a resource within Config, including the resource type and resource ID. </p>
    # @!attribute resource_type
    #   <p>The type of a resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource (for example., sg-xxxxxx).</p>
    #   @return [String]
    class RemediationExceptionResourceKey < Struct.new(
      :resource_type,
      :resource_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RemediationExecutionState
      QUEUED = 'QUEUED'
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCEEDED = 'SUCCEEDED'
      FAILED = 'FAILED'
    end

    # <p>Provides details of the current status of the invoked remediation action for that resource.</p>
    # @!attribute resource_key
    #   <p>The details that identify a resource within Config, including
    #   			the resource type and resource ID.</p>
    #   @return [Types::ResourceKey]
    # @!attribute state
    #   <p>ENUM of the values.</p>
    #   @return [String]
    # @!attribute step_details
    #   <p>Details of every step.</p>
    #   @return [Array<Types::RemediationExecutionStep>]
    # @!attribute invocation_time
    #   <p>Start time when the remediation was executed.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time when the remediation execution was last updated.</p>
    #   @return [Time]
    class RemediationExecutionStatus < Struct.new(
      :resource_key,
      :state,
      :step_details,
      :invocation_time,
      :last_updated_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Name of the step from the SSM document.</p>
    # @!attribute name
    #   <p>The details of the step.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The valid status of the step.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message if the step was interrupted during execution.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time when the step started.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>The time when the step stopped.</p>
    #   @return [Time]
    class RemediationExecutionStep < Struct.new(
      :name,
      :state,
      :error_message,
      :start_time,
      :stop_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RemediationExecutionStepState
      SUCCEEDED = 'SUCCEEDED'
      PENDING = 'PENDING'
      FAILED = 'FAILED'
    end

    # <p>Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later. </p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class RemediationInProgressException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.</p>
    # @!attribute resource_value
    #   <p>The value is dynamic and changes at run-time.</p>
    #   @return [Types::ResourceValue]
    # @!attribute static_value
    #   <p>The value is static and does not change at run-time.</p>
    #   @return [Types::StaticValue]
    class RemediationParameterValue < Struct.new(
      :resource_value,
      :static_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RemediationTargetType
      SSM_DOCUMENT = 'SSM_DOCUMENT'
    end

    # <p>Two users are trying to modify the same query at the same time. Wait for a moment and try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceConfigurationSchemaType
      CFN_RESOURCE_SCHEMA = 'CFN_RESOURCE_SCHEMA'
    end

    # <p>An object that contains the resource type and the number of
    # 			resources.</p>
    # @!attribute resource_type
    #   <p>The resource type (for example,
    #   				<code>"AWS::EC2::Instance"</code>).</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of resources.</p>
    #   @return [Integer]
    class ResourceCount < Struct.new(
      :resource_type,
      :count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p>Filters the resource count based on account ID, region, and resource type.</p>
    # @!attribute resource_type
    #   <p>The type of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The 12-digit ID of the account.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The region where the account is located.</p>
    #   @return [String]
    class ResourceCountFilters < Struct.new(
      :resource_type,
      :account_id,
      :region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceCountGroupKey
      RESOURCE_TYPE = 'RESOURCE_TYPE'
      ACCOUNT_ID = 'ACCOUNT_ID'
      AWS_REGION = 'AWS_REGION'
    end

    # <p>Returns information about the resource being evaluated.</p>
    # @!attribute resource_id
    #   <p>A unique resource ID for an evaluation.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource being evaluated.</p>
    #   @return [String]
    # @!attribute resource_configuration
    #   <p>The resource definition to be evaluated as per the resource configuration schema type.</p>
    #   @return [String]
    # @!attribute resource_configuration_schema_type
    #   <p>The schema type of the resource configuration.</p>
    #            <note>
    #               <p>You can find the
    #   			<a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">Resource type schema</a>, or <code>CFN_RESOURCE_SCHEMA</code>, in "<i>Amazon Web Services public extensions</i>" within the CloudFormation registry or with the following CLI commmand:
    #   			<code>aws cloudformation describe-type --type-name "AWS::S3::Bucket" --type RESOURCE</code>.</p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view">Managing extensions through the CloudFormation registry</a>
    #   				and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and property types reference</a> in the CloudFormation User Guide.</p>
    #            </note>
    #   @return [String]
    class ResourceDetails < Struct.new(
      :resource_id,
      :resource_type,
      :resource_configuration,
      :resource_configuration_schema_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns details of a resource evaluation.</p>
    # @!attribute resource_evaluation_id
    #   <p>The ResourceEvaluationId of a evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_mode
    #   <p>The mode of an evaluation. The valid values are Detective or Proactive.</p>
    #   @return [String]
    # @!attribute evaluation_start_timestamp
    #   <p>The starting time of an execution.</p>
    #   @return [Time]
    class ResourceEvaluation < Struct.new(
      :resource_evaluation_id,
      :evaluation_mode,
      :evaluation_start_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns details of a resource evaluation based on the selected filter.</p>
    # @!attribute evaluation_mode
    #   <p>Filters all resource evaluations results based on an evaluation mode.</p>
    #            <important>
    #               <p>Currently, <code>DECTECTIVE</code> is not supported as a valid value. Ignore other documentation stating otherwise.</p>
    #            </important>
    #   @return [String]
    # @!attribute time_window
    #   <p>Returns a <code>TimeWindow</code> object.</p>
    #   @return [Types::TimeWindow]
    # @!attribute evaluation_context_identifier
    #   <p>Filters evaluations for a given infrastructure deployment. For example: CFN Stack.</p>
    #   @return [String]
    class ResourceEvaluationFilters < Struct.new(
      :evaluation_mode,
      :time_window,
      :evaluation_context_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceEvaluationStatus
      IN_PROGRESS = 'IN_PROGRESS'
      FAILED = 'FAILED'
      SUCCEEDED = 'SUCCEEDED'
    end

    # <p>Filters the results by resource account ID, region, resource ID, and resource name.</p>
    # @!attribute account_id
    #   <p>The 12-digit source account ID.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The source region.</p>
    #   @return [String]
    class ResourceFilters < Struct.new(
      :account_id,
      :resource_id,
      :resource_name,
      :region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the
    # 			custom resource name.</p>
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource (for example,
    #   			<code>sg-xxxxxx</code>).</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The custom name of the resource (if available).</p>
    #   @return [String]
    # @!attribute resource_deletion_time
    #   <p>The time that the resource was deleted.</p>
    #   @return [Time]
    class ResourceIdentifier < Struct.new(
      :resource_type,
      :resource_id,
      :resource_name,
      :resource_deletion_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You see this exception in the following cases: </p>
    #          <ul>
    #             <li>
    #                <p>For DeleteConfigRule, Config is deleting this rule. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteConfigRule, the rule is deleting your evaluation results. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteConfigRule, a remediation action is associated with the rule and Config cannot delete this rule. Delete the remediation action associated with the rule before deleting the rule and try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For PutConfigOrganizationRule, organization Config rule deletion is in progress. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteOrganizationConfigRule, organization Config rule creation is in progress. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For PutConformancePack and PutOrganizationConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details that identify a resource within Config, including
    # 			the resource type and resource ID.</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource (for example., sg-xxxxxx). </p>
    #   @return [String]
    class ResourceKey < Struct.new(
      :resource_type,
      :resource_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have specified a resource that is either unknown or has not
    # 			been discovered.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class ResourceNotDiscoveredException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have specified a resource that does not exist.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceType
      CustomerGateway = 'AWS::EC2::CustomerGateway'
      EIP = 'AWS::EC2::EIP'
      Host = 'AWS::EC2::Host'
      Instance = 'AWS::EC2::Instance'
      InternetGateway = 'AWS::EC2::InternetGateway'
      NetworkAcl = 'AWS::EC2::NetworkAcl'
      NetworkInterface = 'AWS::EC2::NetworkInterface'
      RouteTable = 'AWS::EC2::RouteTable'
      SecurityGroup = 'AWS::EC2::SecurityGroup'
      Subnet = 'AWS::EC2::Subnet'
      Trail = 'AWS::CloudTrail::Trail'
      Volume = 'AWS::EC2::Volume'
      VPC = 'AWS::EC2::VPC'
      VPNConnection = 'AWS::EC2::VPNConnection'
      VPNGateway = 'AWS::EC2::VPNGateway'
      RegisteredHAInstance = 'AWS::EC2::RegisteredHAInstance'
      NatGateway = 'AWS::EC2::NatGateway'
      EgressOnlyInternetGateway = 'AWS::EC2::EgressOnlyInternetGateway'
      VPCEndpoint = 'AWS::EC2::VPCEndpoint'
      VPCEndpointService = 'AWS::EC2::VPCEndpointService'
      FlowLog = 'AWS::EC2::FlowLog'
      VPCPeeringConnection = 'AWS::EC2::VPCPeeringConnection'
      Domain = 'AWS::Elasticsearch::Domain'
      Group = 'AWS::IAM::Group'
      Policy = 'AWS::IAM::Policy'
      Role = 'AWS::IAM::Role'
      User = 'AWS::IAM::User'
      LoadBalancerV2 = 'AWS::ElasticLoadBalancingV2::LoadBalancer'
      Certificate = 'AWS::ACM::Certificate'
      DBInstance = 'AWS::RDS::DBInstance'
      DBSubnetGroup = 'AWS::RDS::DBSubnetGroup'
      DBSecurityGroup = 'AWS::RDS::DBSecurityGroup'
      DBSnapshot = 'AWS::RDS::DBSnapshot'
      DBCluster = 'AWS::RDS::DBCluster'
      DBClusterSnapshot = 'AWS::RDS::DBClusterSnapshot'
      EventSubscription = 'AWS::RDS::EventSubscription'
      Bucket = 'AWS::S3::Bucket'
      AccountPublicAccessBlock = 'AWS::S3::AccountPublicAccessBlock'
      Cluster = 'AWS::Redshift::Cluster'
      ClusterSnapshot = 'AWS::Redshift::ClusterSnapshot'
      ClusterParameterGroup = 'AWS::Redshift::ClusterParameterGroup'
      ClusterSecurityGroup = 'AWS::Redshift::ClusterSecurityGroup'
      ClusterSubnetGroup = 'AWS::Redshift::ClusterSubnetGroup'
      RedshiftEventSubscription = 'AWS::Redshift::EventSubscription'
      ManagedInstanceInventory = 'AWS::SSM::ManagedInstanceInventory'
      Alarm = 'AWS::CloudWatch::Alarm'
      Stack = 'AWS::CloudFormation::Stack'
      LoadBalancer = 'AWS::ElasticLoadBalancing::LoadBalancer'
      AutoScalingGroup = 'AWS::AutoScaling::AutoScalingGroup'
      LaunchConfiguration = 'AWS::AutoScaling::LaunchConfiguration'
      ScalingPolicy = 'AWS::AutoScaling::ScalingPolicy'
      ScheduledAction = 'AWS::AutoScaling::ScheduledAction'
      Table = 'AWS::DynamoDB::Table'
      Project = 'AWS::CodeBuild::Project'
      RateBasedRule = 'AWS::WAF::RateBasedRule'
      Rule = 'AWS::WAF::Rule'
      RuleGroup = 'AWS::WAF::RuleGroup'
      WebACL = 'AWS::WAF::WebACL'
      RegionalRateBasedRule = 'AWS::WAFRegional::RateBasedRule'
      RegionalRule = 'AWS::WAFRegional::Rule'
      RegionalRuleGroup = 'AWS::WAFRegional::RuleGroup'
      RegionalWebACL = 'AWS::WAFRegional::WebACL'
      Distribution = 'AWS::CloudFront::Distribution'
      StreamingDistribution = 'AWS::CloudFront::StreamingDistribution'
      Function = 'AWS::Lambda::Function'
      NetworkFirewallFirewall = 'AWS::NetworkFirewall::Firewall'
      NetworkFirewallFirewallPolicy = 'AWS::NetworkFirewall::FirewallPolicy'
      NetworkFirewallRuleGroup = 'AWS::NetworkFirewall::RuleGroup'
      Application = 'AWS::ElasticBeanstalk::Application'
      ApplicationVersion = 'AWS::ElasticBeanstalk::ApplicationVersion'
      Environment = 'AWS::ElasticBeanstalk::Environment'
      WebACLV2 = 'AWS::WAFv2::WebACL'
      RuleGroupV2 = 'AWS::WAFv2::RuleGroup'
      IPSetV2 = 'AWS::WAFv2::IPSet'
      RegexPatternSetV2 = 'AWS::WAFv2::RegexPatternSet'
      ManagedRuleSetV2 = 'AWS::WAFv2::ManagedRuleSet'
      EncryptionConfig = 'AWS::XRay::EncryptionConfig'
      AssociationCompliance = 'AWS::SSM::AssociationCompliance'
      PatchCompliance = 'AWS::SSM::PatchCompliance'
      Protection = 'AWS::Shield::Protection'
      RegionalProtection = 'AWS::ShieldRegional::Protection'
      ConformancePackCompliance = 'AWS::Config::ConformancePackCompliance'
      ResourceCompliance = 'AWS::Config::ResourceCompliance'
      Stage = 'AWS::ApiGateway::Stage'
      RestApi = 'AWS::ApiGateway::RestApi'
      StageV2 = 'AWS::ApiGatewayV2::Stage'
      Api = 'AWS::ApiGatewayV2::Api'
      Pipeline = 'AWS::CodePipeline::Pipeline'
      CloudFormationProvisionedProduct = 'AWS::ServiceCatalog::CloudFormationProvisionedProduct'
      CloudFormationProduct = 'AWS::ServiceCatalog::CloudFormationProduct'
      Portfolio = 'AWS::ServiceCatalog::Portfolio'
      Queue = 'AWS::SQS::Queue'
      Key = 'AWS::KMS::Key'
      QLDBLedger = 'AWS::QLDB::Ledger'
      Secret = 'AWS::SecretsManager::Secret'
      Topic = 'AWS::SNS::Topic'
      FileData = 'AWS::SSM::FileData'
      BackupPlan = 'AWS::Backup::BackupPlan'
      BackupSelection = 'AWS::Backup::BackupSelection'
      BackupVault = 'AWS::Backup::BackupVault'
      BackupRecoveryPoint = 'AWS::Backup::RecoveryPoint'
      ECRRepository = 'AWS::ECR::Repository'
      ECSCluster = 'AWS::ECS::Cluster'
      ECSService = 'AWS::ECS::Service'
      ECSTaskDefinition = 'AWS::ECS::TaskDefinition'
      EFSAccessPoint = 'AWS::EFS::AccessPoint'
      EFSFileSystem = 'AWS::EFS::FileSystem'
      EKSCluster = 'AWS::EKS::Cluster'
      OpenSearchDomain = 'AWS::OpenSearch::Domain'
      TransitGateway = 'AWS::EC2::TransitGateway'
      KinesisStream = 'AWS::Kinesis::Stream'
      KinesisStreamConsumer = 'AWS::Kinesis::StreamConsumer'
      CodeDeployApplication = 'AWS::CodeDeploy::Application'
      CodeDeployDeploymentConfig = 'AWS::CodeDeploy::DeploymentConfig'
      CodeDeployDeploymentGroup = 'AWS::CodeDeploy::DeploymentGroup'
      LaunchTemplate = 'AWS::EC2::LaunchTemplate'
      ECRPublicRepository = 'AWS::ECR::PublicRepository'
      GuardDutyDetector = 'AWS::GuardDuty::Detector'
      EMRSecurityConfiguration = 'AWS::EMR::SecurityConfiguration'
      SageMakerCodeRepository = 'AWS::SageMaker::CodeRepository'
      Route53ResolverResolverEndpoint = 'AWS::Route53Resolver::ResolverEndpoint'
      Route53ResolverResolverRule = 'AWS::Route53Resolver::ResolverRule'
      Route53ResolverResolverRuleAssociation = 'AWS::Route53Resolver::ResolverRuleAssociation'
      DMSReplicationSubnetGroup = 'AWS::DMS::ReplicationSubnetGroup'
      DMSEventSubscription = 'AWS::DMS::EventSubscription'
      MSKCluster = 'AWS::MSK::Cluster'
      StepFunctionsActivity = 'AWS::StepFunctions::Activity'
      WorkSpacesWorkspace = 'AWS::WorkSpaces::Workspace'
      WorkSpacesConnectionAlias = 'AWS::WorkSpaces::ConnectionAlias'
      SageMakerModel = 'AWS::SageMaker::Model'
      ListenerV2 = 'AWS::ElasticLoadBalancingV2::Listener'
      StepFunctionsStateMachine = 'AWS::StepFunctions::StateMachine'
      BatchJobQueue = 'AWS::Batch::JobQueue'
      BatchComputeEnvironment = 'AWS::Batch::ComputeEnvironment'
      AccessAnalyzerAnalyzer = 'AWS::AccessAnalyzer::Analyzer'
      AthenaWorkGroup = 'AWS::Athena::WorkGroup'
      AthenaDataCatalog = 'AWS::Athena::DataCatalog'
      DetectiveGraph = 'AWS::Detective::Graph'
      GlobalAcceleratorAccelerator = 'AWS::GlobalAccelerator::Accelerator'
      GlobalAcceleratorEndpointGroup = 'AWS::GlobalAccelerator::EndpointGroup'
      GlobalAcceleratorListener = 'AWS::GlobalAccelerator::Listener'
      TransitGatewayAttachment = 'AWS::EC2::TransitGatewayAttachment'
      TransitGatewayRouteTable = 'AWS::EC2::TransitGatewayRouteTable'
      DMSCertificate = 'AWS::DMS::Certificate'
      AppConfigApplication = 'AWS::AppConfig::Application'
      AppSyncGraphQLApi = 'AWS::AppSync::GraphQLApi'
      DataSyncLocationSMB = 'AWS::DataSync::LocationSMB'
      DataSyncLocationFSxLustre = 'AWS::DataSync::LocationFSxLustre'
      DataSyncLocationS3 = 'AWS::DataSync::LocationS3'
      DataSyncLocationEFS = 'AWS::DataSync::LocationEFS'
      DataSyncTask = 'AWS::DataSync::Task'
      DataSyncLocationNFS = 'AWS::DataSync::LocationNFS'
      NetworkInsightsAccessScopeAnalysis = 'AWS::EC2::NetworkInsightsAccessScopeAnalysis'
      EKSFargateProfile = 'AWS::EKS::FargateProfile'
      GlueJob = 'AWS::Glue::Job'
      GuardDutyThreatIntelSet = 'AWS::GuardDuty::ThreatIntelSet'
      GuardDutyIPSet = 'AWS::GuardDuty::IPSet'
      SageMakerWorkteam = 'AWS::SageMaker::Workteam'
      SageMakerNotebookInstanceLifecycleConfig = 'AWS::SageMaker::NotebookInstanceLifecycleConfig'
      ServiceDiscoveryService = 'AWS::ServiceDiscovery::Service'
      ServiceDiscoveryPublicDnsNamespace = 'AWS::ServiceDiscovery::PublicDnsNamespace'
      SESContactList = 'AWS::SES::ContactList'
      SESConfigurationSet = 'AWS::SES::ConfigurationSet'
      Route53HostedZone = 'AWS::Route53::HostedZone'
      IoTEventsInput = 'AWS::IoTEvents::Input'
      IoTEventsDetectorModel = 'AWS::IoTEvents::DetectorModel'
      IoTEventsAlarmModel = 'AWS::IoTEvents::AlarmModel'
      ServiceDiscoveryHttpNamespace = 'AWS::ServiceDiscovery::HttpNamespace'
      EventsEventBus = 'AWS::Events::EventBus'
      ImageBuilderContainerRecipe = 'AWS::ImageBuilder::ContainerRecipe'
      ImageBuilderDistributionConfiguration = 'AWS::ImageBuilder::DistributionConfiguration'
      ImageBuilderInfrastructureConfiguration = 'AWS::ImageBuilder::InfrastructureConfiguration'
      DataSyncLocationObjectStorage = 'AWS::DataSync::LocationObjectStorage'
      DataSyncLocationHDFS = 'AWS::DataSync::LocationHDFS'
      GlueClassifier = 'AWS::Glue::Classifier'
      Route53RecoveryReadinessCell = 'AWS::Route53RecoveryReadiness::Cell'
      Route53RecoveryReadinessReadinessCheck = 'AWS::Route53RecoveryReadiness::ReadinessCheck'
      ECRRegistryPolicy = 'AWS::ECR::RegistryPolicy'
      BackupReportPlan = 'AWS::Backup::ReportPlan'
      LightsailCertificate = 'AWS::Lightsail::Certificate'
      RUMAppMonitor = 'AWS::RUM::AppMonitor'
      EventsEndpoint = 'AWS::Events::Endpoint'
      SESReceiptRuleSet = 'AWS::SES::ReceiptRuleSet'
      EventsArchive = 'AWS::Events::Archive'
      EventsApiDestination = 'AWS::Events::ApiDestination'
      LightsailDisk = 'AWS::Lightsail::Disk'
      FISExperimentTemplate = 'AWS::FIS::ExperimentTemplate'
      DataSyncLocationFSxWindows = 'AWS::DataSync::LocationFSxWindows'
      SESReceiptFilter = 'AWS::SES::ReceiptFilter'
      GuardDutyFilter = 'AWS::GuardDuty::Filter'
      SESTemplate = 'AWS::SES::Template'
      AmazonMQBroker = 'AWS::AmazonMQ::Broker'
      AppConfigEnvironment = 'AWS::AppConfig::Environment'
      AppConfigConfigurationProfile = 'AWS::AppConfig::ConfigurationProfile'
      Cloud9EnvironmentEC2 = 'AWS::Cloud9::EnvironmentEC2'
      EventSchemasRegistry = 'AWS::EventSchemas::Registry'
      EventSchemasRegistryPolicy = 'AWS::EventSchemas::RegistryPolicy'
      EventSchemasDiscoverer = 'AWS::EventSchemas::Discoverer'
      FraudDetectorLabel = 'AWS::FraudDetector::Label'
      FraudDetectorEntityType = 'AWS::FraudDetector::EntityType'
      FraudDetectorVariable = 'AWS::FraudDetector::Variable'
      FraudDetectorOutcome = 'AWS::FraudDetector::Outcome'
      IoTAuthorizer = 'AWS::IoT::Authorizer'
      IoTSecurityProfile = 'AWS::IoT::SecurityProfile'
      IoTRoleAlias = 'AWS::IoT::RoleAlias'
      IoTDimension = 'AWS::IoT::Dimension'
      IoTAnalyticsDatastore = 'AWS::IoTAnalytics::Datastore'
      LightsailBucket = 'AWS::Lightsail::Bucket'
      LightsailStaticIp = 'AWS::Lightsail::StaticIp'
      MediaPackagePackagingGroup = 'AWS::MediaPackage::PackagingGroup'
      Route53RecoveryReadinessRecoveryGroup = 'AWS::Route53RecoveryReadiness::RecoveryGroup'
      ResilienceHubResiliencyPolicy = 'AWS::ResilienceHub::ResiliencyPolicy'
      TransferWorkflow = 'AWS::Transfer::Workflow'
      EKSIdentityProviderConfig = 'AWS::EKS::IdentityProviderConfig'
      EKSAddon = 'AWS::EKS::Addon'
      GlueMLTransform = 'AWS::Glue::MLTransform'
      IoTPolicy = 'AWS::IoT::Policy'
      IoTMitigationAction = 'AWS::IoT::MitigationAction'
      IoTTwinMakerWorkspace = 'AWS::IoTTwinMaker::Workspace'
      IoTTwinMakerEntity = 'AWS::IoTTwinMaker::Entity'
      IoTAnalyticsDataset = 'AWS::IoTAnalytics::Dataset'
      IoTAnalyticsPipeline = 'AWS::IoTAnalytics::Pipeline'
      IoTAnalyticsChannel = 'AWS::IoTAnalytics::Channel'
      IoTSiteWiseDashboard = 'AWS::IoTSiteWise::Dashboard'
      IoTSiteWiseProject = 'AWS::IoTSiteWise::Project'
      IoTSiteWisePortal = 'AWS::IoTSiteWise::Portal'
      IoTSiteWiseAssetModel = 'AWS::IoTSiteWise::AssetModel'
      IVSChannel = 'AWS::IVS::Channel'
      IVSRecordingConfiguration = 'AWS::IVS::RecordingConfiguration'
      IVSPlaybackKeyPair = 'AWS::IVS::PlaybackKeyPair'
      KinesisAnalyticsV2Application = 'AWS::KinesisAnalyticsV2::Application'
      RDSGlobalCluster = 'AWS::RDS::GlobalCluster'
      S3MultiRegionAccessPoint = 'AWS::S3::MultiRegionAccessPoint'
      DeviceFarmTestGridProject = 'AWS::DeviceFarm::TestGridProject'
      BudgetsBudgetsAction = 'AWS::Budgets::BudgetsAction'
      LexBot = 'AWS::Lex::Bot'
      CodeGuruReviewerRepositoryAssociation = 'AWS::CodeGuruReviewer::RepositoryAssociation'
      IoTCustomMetric = 'AWS::IoT::CustomMetric'
      Route53ResolverFirewallDomainList = 'AWS::Route53Resolver::FirewallDomainList'
      RoboMakerRobotApplicationVersion = 'AWS::RoboMaker::RobotApplicationVersion'
      EC2TrafficMirrorSession = 'AWS::EC2::TrafficMirrorSession'
      IoTSiteWiseGateway = 'AWS::IoTSiteWise::Gateway'
      LexBotAlias = 'AWS::Lex::BotAlias'
      LookoutMetricsAlert = 'AWS::LookoutMetrics::Alert'
      IoTAccountAuditConfiguration = 'AWS::IoT::AccountAuditConfiguration'
      EC2TrafficMirrorTarget = 'AWS::EC2::TrafficMirrorTarget'
      S3StorageLens = 'AWS::S3::StorageLens'
      IoTScheduledAudit = 'AWS::IoT::ScheduledAudit'
      EventsConnection = 'AWS::Events::Connection'
      EventSchemasSchema = 'AWS::EventSchemas::Schema'
      MediaPackagePackagingConfiguration = 'AWS::MediaPackage::PackagingConfiguration'
      KinesisVideoSignalingChannel = 'AWS::KinesisVideo::SignalingChannel'
      AppStreamDirectoryConfig = 'AWS::AppStream::DirectoryConfig'
      LookoutVisionProject = 'AWS::LookoutVision::Project'
      Route53RecoveryControlCluster = 'AWS::Route53RecoveryControl::Cluster'
      Route53RecoveryControlSafetyRule = 'AWS::Route53RecoveryControl::SafetyRule'
      Route53RecoveryControlControlPanel = 'AWS::Route53RecoveryControl::ControlPanel'
      Route53RecoveryControlRoutingControl = 'AWS::Route53RecoveryControl::RoutingControl'
      Route53RecoveryReadinessResourceSet = 'AWS::Route53RecoveryReadiness::ResourceSet'
      RoboMakerSimulationApplication = 'AWS::RoboMaker::SimulationApplication'
      RoboMakerRobotApplication = 'AWS::RoboMaker::RobotApplication'
      HealthLakeFHIRDatastore = 'AWS::HealthLake::FHIRDatastore'
      PinpointSegment = 'AWS::Pinpoint::Segment'
      PinpointApplicationSettings = 'AWS::Pinpoint::ApplicationSettings'
      EventsRule = 'AWS::Events::Rule'
      EC2DHCPOptions = 'AWS::EC2::DHCPOptions'
      EC2NetworkInsightsPath = 'AWS::EC2::NetworkInsightsPath'
      EC2TrafficMirrorFilter = 'AWS::EC2::TrafficMirrorFilter'
      EC2IPAM = 'AWS::EC2::IPAM'
      IoTTwinMakerScene = 'AWS::IoTTwinMaker::Scene'
      NetworkManagerTransitGatewayRegistration = 'AWS::NetworkManager::TransitGatewayRegistration'
      CustomerProfilesDomain = 'AWS::CustomerProfiles::Domain'
      AutoScalingWarmPool = 'AWS::AutoScaling::WarmPool'
      ConnectPhoneNumber = 'AWS::Connect::PhoneNumber'
      AppConfigDeploymentStrategy = 'AWS::AppConfig::DeploymentStrategy'
      AppFlowFlow = 'AWS::AppFlow::Flow'
      AuditManagerAssessment = 'AWS::AuditManager::Assessment'
      CloudWatchMetricStream = 'AWS::CloudWatch::MetricStream'
      DeviceFarmInstanceProfile = 'AWS::DeviceFarm::InstanceProfile'
      DeviceFarmProject = 'AWS::DeviceFarm::Project'
      EC2EC2Fleet = 'AWS::EC2::EC2Fleet'
      EC2SubnetRouteTableAssociation = 'AWS::EC2::SubnetRouteTableAssociation'
      ECRPullThroughCacheRule = 'AWS::ECR::PullThroughCacheRule'
      GroundStationConfig = 'AWS::GroundStation::Config'
      ImageBuilderImagePipeline = 'AWS::ImageBuilder::ImagePipeline'
      IoTFleetMetric = 'AWS::IoT::FleetMetric'
      IoTWirelessServiceProfile = 'AWS::IoTWireless::ServiceProfile'
      NetworkManagerDevice = 'AWS::NetworkManager::Device'
      NetworkManagerGlobalNetwork = 'AWS::NetworkManager::GlobalNetwork'
      NetworkManagerLink = 'AWS::NetworkManager::Link'
      NetworkManagerSite = 'AWS::NetworkManager::Site'
      PanoramaPackage = 'AWS::Panorama::Package'
      PinpointApp = 'AWS::Pinpoint::App'
      RedshiftScheduledAction = 'AWS::Redshift::ScheduledAction'
      Route53ResolverFirewallRuleGroupAssociation = 'AWS::Route53Resolver::FirewallRuleGroupAssociation'
      SageMakerAppImageConfig = 'AWS::SageMaker::AppImageConfig'
      SageMakerImage = 'AWS::SageMaker::Image'
      ECSTaskSet = 'AWS::ECS::TaskSet'
      CassandraKeyspace = 'AWS::Cassandra::Keyspace'
      SignerSigningProfile = 'AWS::Signer::SigningProfile'
      AmplifyApp = 'AWS::Amplify::App'
      AppMeshVirtualNode = 'AWS::AppMesh::VirtualNode'
      AppMeshVirtualService = 'AWS::AppMesh::VirtualService'
      AppRunnerVpcConnector = 'AWS::AppRunner::VpcConnector'
      AppStreamApplication = 'AWS::AppStream::Application'
      CodeArtifactRepository = 'AWS::CodeArtifact::Repository'
      EC2PrefixList = 'AWS::EC2::PrefixList'
      EC2SpotFleet = 'AWS::EC2::SpotFleet'
      EvidentlyProject = 'AWS::Evidently::Project'
      ForecastDataset = 'AWS::Forecast::Dataset'
      IAMSAMLProvider = 'AWS::IAM::SAMLProvider'
      IAMServerCertificate = 'AWS::IAM::ServerCertificate'
      PinpointCampaign = 'AWS::Pinpoint::Campaign'
      PinpointInAppTemplate = 'AWS::Pinpoint::InAppTemplate'
      SageMakerDomain = 'AWS::SageMaker::Domain'
      TransferAgreement = 'AWS::Transfer::Agreement'
      TransferConnector = 'AWS::Transfer::Connector'
      KinesisFirehoseDeliveryStream = 'AWS::KinesisFirehose::DeliveryStream'
      AmplifyBranch = 'AWS::Amplify::Branch'
      AppIntegrationsEventIntegration = 'AWS::AppIntegrations::EventIntegration'
      AppMeshRoute = 'AWS::AppMesh::Route'
      AthenaPreparedStatement = 'AWS::Athena::PreparedStatement'
      EC2IPAMScope = 'AWS::EC2::IPAMScope'
      EvidentlyLaunch = 'AWS::Evidently::Launch'
      ForecastDatasetGroup = 'AWS::Forecast::DatasetGroup'
      GreengrassV2ComponentVersion = 'AWS::GreengrassV2::ComponentVersion'
      GroundStationMissionProfile = 'AWS::GroundStation::MissionProfile'
      MediaConnectFlowEntitlement = 'AWS::MediaConnect::FlowEntitlement'
      MediaConnectFlowVpcInterface = 'AWS::MediaConnect::FlowVpcInterface'
      MediaTailorPlaybackConfiguration = 'AWS::MediaTailor::PlaybackConfiguration'
      MSKConfiguration = 'AWS::MSK::Configuration'
      PersonalizeDataset = 'AWS::Personalize::Dataset'
      PersonalizeSchema = 'AWS::Personalize::Schema'
      PersonalizeSolution = 'AWS::Personalize::Solution'
      PinpointEmailTemplate = 'AWS::Pinpoint::EmailTemplate'
      PinpointEventStream = 'AWS::Pinpoint::EventStream'
      ResilienceHubApp = 'AWS::ResilienceHub::App'
      ACMPCACertificateAuthority = 'AWS::ACMPCA::CertificateAuthority'
      AppConfigHostedConfigurationVersion = 'AWS::AppConfig::HostedConfigurationVersion'
      AppMeshVirtualGateway = 'AWS::AppMesh::VirtualGateway'
      AppMeshVirtualRouter = 'AWS::AppMesh::VirtualRouter'
      AppRunnerService = 'AWS::AppRunner::Service'
      CustomerProfilesObjectType = 'AWS::CustomerProfiles::ObjectType'
      DMSEndpoint = 'AWS::DMS::Endpoint'
      EC2CapacityReservation = 'AWS::EC2::CapacityReservation'
      EC2ClientVpnEndpoint = 'AWS::EC2::ClientVpnEndpoint'
      KendraIndex = 'AWS::Kendra::Index'
      KinesisVideoStream = 'AWS::KinesisVideo::Stream'
      LogsDestination = 'AWS::Logs::Destination'
      PinpointEmailChannel = 'AWS::Pinpoint::EmailChannel'
      S3AccessPoint = 'AWS::S3::AccessPoint'
      NetworkManagerCustomerGatewayAssociation = 'AWS::NetworkManager::CustomerGatewayAssociation'
      NetworkManagerLinkAssociation = 'AWS::NetworkManager::LinkAssociation'
      IoTWirelessMulticastGroup = 'AWS::IoTWireless::MulticastGroup'
      PersonalizeDatasetGroup = 'AWS::Personalize::DatasetGroup'
      IoTTwinMakerComponentType = 'AWS::IoTTwinMaker::ComponentType'
      CodeBuildReportGroup = 'AWS::CodeBuild::ReportGroup'
      SageMakerFeatureGroup = 'AWS::SageMaker::FeatureGroup'
      MSKBatchScramSecret = 'AWS::MSK::BatchScramSecret'
      AppStreamStack = 'AWS::AppStream::Stack'
      IoTJobTemplate = 'AWS::IoT::JobTemplate'
      IoTWirelessFuotaTask = 'AWS::IoTWireless::FuotaTask'
      IoTProvisioningTemplate = 'AWS::IoT::ProvisioningTemplate'
      InspectorV2Filter = 'AWS::InspectorV2::Filter'
      Route53ResolverResolverQueryLoggingConfigAssociation = 'AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation'
      ServiceDiscoveryInstance = 'AWS::ServiceDiscovery::Instance'
      TransferCertificate = 'AWS::Transfer::Certificate'
      MediaConnectFlowSource = 'AWS::MediaConnect::FlowSource'
      APSRuleGroupsNamespace = 'AWS::APS::RuleGroupsNamespace'
      CodeGuruProfilerProfilingGroup = 'AWS::CodeGuruProfiler::ProfilingGroup'
      Route53ResolverResolverQueryLoggingConfig = 'AWS::Route53Resolver::ResolverQueryLoggingConfig'
      BatchSchedulingPolicy = 'AWS::Batch::SchedulingPolicy'
      ACMPCACertificateAuthorityActivation = 'AWS::ACMPCA::CertificateAuthorityActivation'
      AppMeshGatewayRoute = 'AWS::AppMesh::GatewayRoute'
      AppMeshMesh = 'AWS::AppMesh::Mesh'
      ConnectInstance = 'AWS::Connect::Instance'
      ConnectQuickConnect = 'AWS::Connect::QuickConnect'
      EC2CarrierGateway = 'AWS::EC2::CarrierGateway'
      EC2IPAMPool = 'AWS::EC2::IPAMPool'
      EC2TransitGatewayConnect = 'AWS::EC2::TransitGatewayConnect'
      EC2TransitGatewayMulticastDomain = 'AWS::EC2::TransitGatewayMulticastDomain'
      ECSCapacityProvider = 'AWS::ECS::CapacityProvider'
      IAMInstanceProfile = 'AWS::IAM::InstanceProfile'
      IoTCACertificate = 'AWS::IoT::CACertificate'
      IoTTwinMakerSyncJob = 'AWS::IoTTwinMaker::SyncJob'
      KafkaConnectConnector = 'AWS::KafkaConnect::Connector'
      LambdaCodeSigningConfig = 'AWS::Lambda::CodeSigningConfig'
      NetworkManagerConnectPeer = 'AWS::NetworkManager::ConnectPeer'
      ResourceExplorer2Index = 'AWS::ResourceExplorer2::Index'
      AppStreamFleet = 'AWS::AppStream::Fleet'
      CognitoUserPool = 'AWS::Cognito::UserPool'
      CognitoUserPoolClient = 'AWS::Cognito::UserPoolClient'
      CognitoUserPoolGroup = 'AWS::Cognito::UserPoolGroup'
      EC2NetworkInsightsAccessScope = 'AWS::EC2::NetworkInsightsAccessScope'
      EC2NetworkInsightsAnalysis = 'AWS::EC2::NetworkInsightsAnalysis'
      GrafanaWorkspace = 'AWS::Grafana::Workspace'
      GroundStationDataflowEndpointGroup = 'AWS::GroundStation::DataflowEndpointGroup'
      ImageBuilderImageRecipe = 'AWS::ImageBuilder::ImageRecipe'
      KMSAlias = 'AWS::KMS::Alias'
      M2Environment = 'AWS::M2::Environment'
      QuickSightDataSource = 'AWS::QuickSight::DataSource'
      QuickSightTemplate = 'AWS::QuickSight::Template'
      QuickSightTheme = 'AWS::QuickSight::Theme'
      RDSOptionGroup = 'AWS::RDS::OptionGroup'
      RedshiftEndpointAccess = 'AWS::Redshift::EndpointAccess'
      Route53ResolverFirewallRuleGroup = 'AWS::Route53Resolver::FirewallRuleGroup'
      SSMDocument = 'AWS::SSM::Document'
      AppConfigExtensionAssociation = 'AWS::AppConfig::ExtensionAssociation'
      AppIntegrationsApplication = 'AWS::AppIntegrations::Application'
      AppSyncApiCache = 'AWS::AppSync::ApiCache'
      BedrockGuardrail = 'AWS::Bedrock::Guardrail'
      BedrockKnowledgeBase = 'AWS::Bedrock::KnowledgeBase'
      CognitoIdentityPool = 'AWS::Cognito::IdentityPool'
      ConnectRule = 'AWS::Connect::Rule'
      ConnectUser = 'AWS::Connect::User'
      EC2ClientVpnTargetNetworkAssociation = 'AWS::EC2::ClientVpnTargetNetworkAssociation'
      EC2EIPAssociation = 'AWS::EC2::EIPAssociation'
      EC2IPAMResourceDiscovery = 'AWS::EC2::IPAMResourceDiscovery'
      EC2IPAMResourceDiscoveryAssociation = 'AWS::EC2::IPAMResourceDiscoveryAssociation'
      EC2InstanceConnectEndpoint = 'AWS::EC2::InstanceConnectEndpoint'
      EC2SnapshotBlockPublicAccess = 'AWS::EC2::SnapshotBlockPublicAccess'
      EC2VPCBlockPublicAccessExclusion = 'AWS::EC2::VPCBlockPublicAccessExclusion'
      EC2VPCBlockPublicAccessOptions = 'AWS::EC2::VPCBlockPublicAccessOptions'
      EC2VPCEndpointConnectionNotification = 'AWS::EC2::VPCEndpointConnectionNotification'
      EC2VPNConnectionRoute = 'AWS::EC2::VPNConnectionRoute'
      EvidentlySegment = 'AWS::Evidently::Segment'
      IAMOIDCProvider = 'AWS::IAM::OIDCProvider'
      InspectorV2Activation = 'AWS::InspectorV2::Activation'
      MSKClusterPolicy = 'AWS::MSK::ClusterPolicy'
      MSKVpcConnection = 'AWS::MSK::VpcConnection'
      MediaConnectGateway = 'AWS::MediaConnect::Gateway'
      MemoryDBSubnetGroup = 'AWS::MemoryDB::SubnetGroup'
      OpenSearchServerlessCollection = 'AWS::OpenSearchServerless::Collection'
      OpenSearchServerlessVpcEndpoint = 'AWS::OpenSearchServerless::VpcEndpoint'
      RedshiftEndpointAuthorization = 'AWS::Redshift::EndpointAuthorization'
      Route53ProfilesProfile = 'AWS::Route53Profiles::Profile'
      S3StorageLensGroup = 'AWS::S3::StorageLensGroup'
      S3ExpressBucketPolicy = 'AWS::S3Express::BucketPolicy'
      S3ExpressDirectoryBucket = 'AWS::S3Express::DirectoryBucket'
      SageMakerInferenceExperiment = 'AWS::SageMaker::InferenceExperiment'
      SecurityHubStandard = 'AWS::SecurityHub::Standard'
      TransferProfile = 'AWS::Transfer::Profile'
    end

    # <p>The dynamic value of the resource.</p>
    # @!attribute value
    #   <p>The value is a resource ID.</p>
    #   @return [String]
    class ResourceValue < Struct.new(
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceValueType
      RESOURCE_ID = 'RESOURCE_ID'
    end

    # <p>An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in Config.</p>
    # @!attribute name
    #   <p>The name of the retention configuration object.</p>
    #   @return [String]
    # @!attribute retention_period_in_days
    #   <p>Number of days Config stores your historical information.</p>
    #            <note>
    #               <p>Currently, only applicable to the configuration item history.</p>
    #            </note>
    #   @return [Integer]
    class RetentionConfiguration < Struct.new(
      :name,
      :retention_period_in_days,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines which resources trigger an evaluation for an Config
    # 			rule. The scope can include one or more resource types, a
    # 			combination of a tag key and value, or a combination of one resource
    # 			type and one resource ID. Specify a scope to constrain which
    # 			resources trigger an evaluation for a rule. Otherwise, evaluations
    # 			for the rule are triggered when any resource in your recording group
    # 			changes in configuration.</p>
    # @!attribute compliance_resource_types
    #   <p>The resource types of only those Amazon Web Services resources that you want to
    #   			trigger an evaluation for the rule. You can only specify one type if
    #   			you also specify a resource ID for
    #   			<code>ComplianceResourceId</code>.</p>
    #   @return [Array<String>]
    # @!attribute tag_key
    #   <p>The tag key that is applied to only those Amazon Web Services resources that
    #   			you want to trigger an evaluation for the rule.</p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The tag value applied to only those Amazon Web Services resources that you want
    #   			to trigger an evaluation for the rule. If you specify a value for
    #   				<code>TagValue</code>, you must also specify a value for
    #   				<code>TagKey</code>.</p>
    #   @return [String]
    # @!attribute compliance_resource_id
    #   <p>The ID of the only Amazon Web Services resource that you want to trigger an
    #   			evaluation for the rule. If you specify a resource ID, you must
    #   			specify one resource type for
    #   			<code>ComplianceResourceTypes</code>.</p>
    #   @return [String]
    class Scope < Struct.new(
      :compliance_resource_types,
      :tag_key,
      :tag_value,
      :compliance_resource_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute expression
    #   <p>The SQL query SELECT command. </p>
    #   @return [String]
    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of query results returned on each page. </p>
    #   @return [Integer]
    # @!attribute max_results
    #   <p>The maximum number of query results returned on each page. Config also allows the Limit request parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #   @return [String]
    class SelectAggregateResourceConfigRequest < Struct.new(
      :expression,
      :configuration_aggregator_name,
      :limit,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>Returns the results for the SQL query.</p>
    #   @return [Array<String>]
    # @!attribute query_info
    #   <p>Details about the query.</p>
    #   @return [Types::QueryInfo]
    # @!attribute next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #   @return [String]
    class SelectAggregateResourceConfigResponse < Struct.new(
      :results,
      :query_info,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute expression
    #   <p>The SQL query <code>SELECT</code> command.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of query results returned on each page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #   @return [String]
    class SelectResourceConfigRequest < Struct.new(
      :expression,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>Returns the results for the SQL query.</p>
    #   @return [Array<String>]
    # @!attribute query_info
    #   <p>Returns the <code>QueryInfo</code> object.</p>
    #   @return [Types::QueryInfo]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #   @return [String]
    class SelectResourceConfigResponse < Struct.new(
      :results,
      :query_info,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SortBy
      SCORE = 'SCORE'
    end

    module SortOrder
      ASCENDING = 'ASCENDING'
      DESCENDING = 'DESCENDING'
    end

    # <p>Provides the CustomPolicyDetails, the rule owner (<code>Amazon Web Services</code> for managed rules, <code>CUSTOM_POLICY</code> for Custom Policy rules, and <code>CUSTOM_LAMBDA</code> for Custom Lambda rules), the rule
    # 			identifier, and the events that cause the evaluation of your Amazon Web Services
    # 			resources.</p>
    # @!attribute owner
    #   <p>Indicates whether Amazon Web Services or the customer owns and manages the Config rule.</p>
    #            <p>Config Managed Rules are predefined rules owned by Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">Config Managed Rules</a> in the <i>Config developer guide</i>.</p>
    #            <p>Config Custom Rules are rules that you can develop either with Guard (<code>CUSTOM_POLICY</code>) or Lambda (<code>CUSTOM_LAMBDA</code>). For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html">Config Custom Rules </a> in the <i>Config developer guide</i>.</p>
    #   @return [String]
    # @!attribute source_identifier
    #   <p>For Config Managed rules, a predefined identifier from a
    #   			list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed
    #   			rule. To reference a managed rule, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html">List of Config Managed Rules</a>.</p>
    #            <p>For Config Custom Lambda rules, the identifier is the Amazon Resource Name
    #   			(ARN) of the rule's Lambda function, such as
    #   			<code>arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name</code>.</p>
    #            <p>For Config Custom Policy rules, this field will be ignored.</p>
    #   @return [String]
    # @!attribute source_details
    #   <p>Provides the source and the message types that cause Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    #            <p>If the owner is set to <code>CUSTOM_POLICY</code>, the only acceptable values for the Config rule trigger message type are <code>ConfigurationItemChangeNotification</code> and <code>OversizedConfigurationItemChangeNotification</code>.</p>
    #   @return [Array<Types::SourceDetail>]
    # @!attribute custom_policy_details
    #   <p>Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to <code>CUSTOM_POLICY</code>.</p>
    #   @return [Types::CustomPolicyDetails]
    class Source < Struct.new(
      :owner,
      :source_identifier,
      :source_details,
      :custom_policy_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the source and the message types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also
    # 			provides the frequency with which you want Config to run
    # 			evaluations for the rule if the trigger type is periodic. You can
    # 			specify the parameter values for <code>SourceDetail</code> only for
    # 			custom rules. </p>
    # @!attribute event_source
    #   <p>The source of the event, such as an Amazon Web Services service, that triggers
    #   			Config to evaluate your Amazon Web Services resources.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of notification that triggers Config to run an
    #   			evaluation for a rule. You can specify the following notification
    #   			types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationItemChangeNotification</code> - Triggers
    #   					an evaluation when Config delivers a configuration item
    #   					as a result of a resource change.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OversizedConfigurationItemChangeNotification</code>
    #   					- Triggers an evaluation when Config delivers an
    #   					oversized configuration item. Config may generate this
    #   					notification type when a resource changes and the
    #   					notification exceeds the maximum size allowed by Amazon
    #   					SNS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledNotification</code> - Triggers a
    #   					periodic evaluation at the frequency specified for
    #   						<code>MaximumExecutionFrequency</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationSnapshotDeliveryCompleted</code> -
    #   					Triggers a periodic evaluation when Config delivers a
    #   					configuration snapshot.</p>
    #               </li>
    #            </ul>
    #            <p>If you want your custom rule to be triggered by configuration
    #   			changes, specify two SourceDetail objects, one for
    #   				<code>ConfigurationItemChangeNotification</code> and one for
    #   				<code>OversizedConfigurationItemChangeNotification</code>.</p>
    #   @return [String]
    # @!attribute maximum_execution_frequency
    #   <p>The frequency at which you want Config to run evaluations
    #   			for a custom rule with a periodic trigger. If you specify a value
    #   			for <code>MaximumExecutionFrequency</code>, then
    #   				<code>MessageType</code> must use the
    #   				<code>ScheduledNotification</code> value.</p>
    #            <note>
    #               <p>By default, rules with a periodic trigger are evaluated
    #   				every 24 hours. To change the frequency, specify a valid value
    #   				for the <code>MaximumExecutionFrequency</code>
    #   				parameter.</p>
    #               <p>Based on the valid value you choose, Config runs
    #   				evaluations once for each valid value. For example, if you
    #   				choose <code>Three_Hours</code>, Config runs evaluations
    #   				once every three hours. In this case, <code>Three_Hours</code>
    #   				is the frequency of this rule. </p>
    #            </note>
    #   @return [String]
    class SourceDetail < Struct.new(
      :event_source,
      :message_type,
      :maximum_execution_frequency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon Web Services Systems Manager (SSM) specific remediation controls.</p>
    # @!attribute concurrent_execution_rate_percentage
    #   <p>The maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. You can specify a percentage, such as 10%. The default value is 10. </p>
    #   @return [Integer]
    # @!attribute error_percentage
    #   <p>The percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule.
    #   			You can specify a percentage of errors, for example 10%. If you do not specifiy a percentage, the default is 50%. 
    #   			For example, if you set the ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops running the automations when the fifth error is received. </p>
    #   @return [Integer]
    class SsmControls < Struct.new(
      :concurrent_execution_rate_percentage,
      :error_percentage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute config_rule_names
    #   <p>The list of names of Config rules that you want to run
    #   			evaluations for.</p>
    #   @return [Array<String>]
    class StartConfigRulesEvaluationRequest < Struct.new(
      :config_rule_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output when you start the evaluation for the specified Config rule.</p>
    class StartConfigRulesEvaluationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>StartConfigurationRecorder</a>
    # 			operation.</p>
    # @!attribute configuration_recorder_name
    #   <p>The name of the customer managed configuration recorder that you want to start.</p>
    #   @return [String]
    class StartConfigurationRecorderRequest < Struct.new(
      :configuration_recorder_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute config_rule_name
    #   <p>The list of names of Config rules that you want to run remediation execution for.</p>
    #   @return [String]
    # @!attribute resource_keys
    #   <p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>
    #   @return [Array<Types::ResourceKey>]
    class StartRemediationExecutionRequest < Struct.new(
      :config_rule_name,
      :resource_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failure_message
    #   <p>Returns a failure message. For example, the resource is already compliant.</p>
    #   @return [String]
    # @!attribute failed_items
    #   <p>For resources that have failed to start execution, the API returns a resource key object.</p>
    #   @return [Array<Types::ResourceKey>]
    class StartRemediationExecutionResponse < Struct.new(
      :failure_message,
      :failed_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_details
    #   <p>Returns a <code>ResourceDetails</code> object.</p>
    #   @return [Types::ResourceDetails]
    # @!attribute evaluation_context
    #   <p>Returns an <code>EvaluationContext</code> object.</p>
    #   @return [Types::EvaluationContext]
    # @!attribute evaluation_mode
    #   <p>The mode of an evaluation.</p>
    #            <note>
    #               <p>The only valid value for this API is <code>PROACTIVE</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute evaluation_timeout
    #   <p>The timeout for an evaluation. The default is 900 seconds. You cannot specify a number greater than 3600. If you specify 0, Config uses the default.</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   			To make an idempotent API request using one of these actions, specify a client token in the request.</p>
    #            <note>
    #               <p>Avoid reusing the same client token for other API requests. If you retry
    #   				a request that completed successfully using the same client token and the same
    #   				parameters, the retry succeeds without performing any further actions. If you retry
    #   				a successful request using the same client token, but one or more of the parameters
    #   				are different, other than the Region or Availability Zone, the retry fails with an
    #   				IdempotentParameterMismatch error.</p>
    #            </note>
    #   @return [String]
    class StartResourceEvaluationRequest < Struct.new(
      :resource_details,
      :evaluation_context,
      :evaluation_mode,
      :evaluation_timeout,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_evaluation_id
    #   <p>A
    #   			unique ResourceEvaluationId that is associated with a single execution.</p>
    #   @return [String]
    class StartResourceEvaluationResponse < Struct.new(
      :resource_evaluation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The static value of the resource.</p>
    # @!attribute values
    #   <p>A list of values. For example, the ARN of the assumed role. </p>
    #   @return [Array<String>]
    class StaticValue < Struct.new(
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Status filter object to filter results based on specific member account ID or status type for an organization Config rule. </p>
    # @!attribute account_id
    #   <p>The 12-digit account ID of the member account within an organization.</p>
    #   @return [String]
    # @!attribute member_account_rule_status
    #   <p>Indicates deployment status for Config rule in the member account.
    #   			When management account calls <code>PutOrganizationConfigRule</code> action for the first time, Config rule status is created in the member account. 
    #   			When management account calls <code>PutOrganizationConfigRule</code> action for the second time, Config rule status is updated in the member account.   
    #   			Config rule status is deleted when the management account deletes <code>OrganizationConfigRule</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. 
    #   			</p>
    #            <p>Config sets the state of the rule to:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when Config rule has been created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when Config rule is being created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when Config rule creation has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when Config rule deletion has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when Config rule is being deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when Config rule has been deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when Config rule has been updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when Config rule is being updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when Config rule deletion has failed in the member account.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StatusDetailFilters < Struct.new(
      :account_id,
      :member_account_rule_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for the <a>StopConfigurationRecorder</a> operation.</p>
    # @!attribute configuration_recorder_name
    #   <p>The name of the customer managed configuration recorder that you want to stop.</p>
    #   @return [String]
    class StopConfigurationRecorderRequest < Struct.new(
      :configuration_recorder_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the details of a stored query.</p>
    # @!attribute query_id
    #   <p>The ID of the query.</p>
    #   @return [String]
    # @!attribute query_arn
    #   <p>Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.</p>
    #   @return [String]
    # @!attribute query_name
    #   <p>The name of the query.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A unique description for the query.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The expression of the query. For example, <code>SELECT
    #   			resourceId,
    #   			resourceType,
    #   			supplementaryConfiguration.BucketVersioningConfiguration.status
    #   			WHERE
    #   			resourceType = 'AWS::S3::Bucket'
    #   			AND supplementaryConfiguration.BucketVersioningConfiguration.status = 'Off'.</code>
    #            </p>
    #   @return [String]
    class StoredQuery < Struct.new(
      :query_id,
      :query_arn,
      :query_name,
      :description,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns details of a specific query. </p>
    # @!attribute query_id
    #   <p>The ID of the query. </p>
    #   @return [String]
    # @!attribute query_arn
    #   <p>Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.</p>
    #   @return [String]
    # @!attribute query_name
    #   <p>The name of the query.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A unique description for the query.</p>
    #   @return [String]
    class StoredQueryMetadata < Struct.new(
      :query_id,
      :query_arn,
      :query_name,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The tags for the resource. The metadata that you apply to a resource to help you categorize and organize them. 
    # 			Each tag consists of a key and an optional value, both of which you define. 
    # 			Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    # @!attribute key
    #   <p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. The following resources are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationRecorder</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationAggregator</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AggregationAuthorization</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StoredQuery</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tag object.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This API allows you to create a conformance pack template with an Amazon Web Services Systems Manager document (SSM document). 
    # 			To deploy a conformance pack using an SSM document, first create an SSM document with conformance pack content, and then provide the <code>DocumentName</code> in the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html">PutConformancePack API</a>. You can also provide the <code>DocumentVersion</code>.</p>
    #          <p>The <code>TemplateSSMDocumentDetails</code> object contains the name of the SSM document and the version of the SSM document.</p>
    # @!attribute document_name
    #   <p>The name or Amazon Resource Name (ARN) of the SSM document to use to create a conformance pack.
    #   			If you use the document name, Config checks only your account and Amazon Web Services Region for the SSM document.</p>
    #   @return [String]
    # @!attribute document_version
    #   <p>The version of the SSM document to use to create a conformance pack. By default, Config uses the latest version.</p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    #   @return [String]
    class TemplateSSMDocumentDetails < Struct.new(
      :document_name,
      :document_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filters evaluation results based on start and end times.</p>
    # @!attribute start_time
    #   <p>The start time of an execution.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of an execution. The end time must be after the start date.</p>
    #   @return [Time]
    class TimeWindow < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have reached the limit of the number of tags you can use. 
    # 			For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested operation is not valid.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConfigurationRecorder.html">PutConfigurationRecorder</a>,
    # 			you will see this exception because you cannot use this operation to create a service-linked configuration recorder. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutServiceLinkedConfigurationRecorder.html">PutServiceLinkedConfigurationRecorder</a> operation to create a service-linked configuration
    # 			recorder.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteConfigurationRecorder.html">DeleteConfigurationRecorder</a>, you will see this exception because you cannot use this operation to delete a service-linked configuration recorder. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteServiceLinkedConfigurationRecorder.html">DeleteServiceLinkedConfigurationRecorder</a> operation to delete a service-linked configuration
    # 			recorder.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_StartConfigurationRecorder.html">StartConfigurationRecorder</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_StopConfigurationRecorder.html">StopConfigurationRecorder</a>, you will see this exception because these operations do not affect service-linked configuration recorders.
    # 			Service-linked configuration recorders are always recording. To stop recording, you must delete the service-linked configuration recorder. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteServiceLinkedConfigurationRecorder.html">DeleteServiceLinkedConfigurationRecorder</a> operation to delete a service-linked configuration
    # 			recorder.</p>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class UnmodifiableEntityException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. The following resources are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationRecorder</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationAggregator</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AggregationAuthorization</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StoredQuery</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested operation is not valid. You will see this exception if there are missing required fields or if the input value fails the validation.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutStoredQuery.html">PutStoredQuery</a>, one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>There are missing required fields.</p>
    #             </li>
    #             <li>
    #                <p>The input value fails the validation.</p>
    #             </li>
    #             <li>
    #                <p>You are trying to create more than 300 queries.</p>
    #             </li>
    #          </ul>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DescribeConfigurationRecorders.html">DescribeConfigurationRecorders</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DescribeConfigurationRecorderStatus.html">DescribeConfigurationRecorderStatus</a>, one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>You have specified more than one configuration recorder.</p>
    #             </li>
    #             <li>
    #                <p>You have provided a service principal for service-linked configuration recorder that is not valid.</p>
    #             </li>
    #          </ul>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_AssociateResourceTypes.html">AssociateResourceTypes</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DisassociateResourceTypes.html">DisassociateResourceTypes</a>, one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>Your configuraiton recorder has a recording strategy that does not allow the association or disassociation of resource types.</p>
    #             </li>
    #             <li>
    #                <p>One or more of the specified resource types are already associated or disassociated with the configuration recorder.</p>
    #             </li>
    #             <li>
    #                <p>For service-linked configuration recorders, the configuration recorder does not record one or more of the specified resource types.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>Error executing the command</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
