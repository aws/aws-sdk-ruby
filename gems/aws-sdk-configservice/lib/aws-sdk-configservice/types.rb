# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConfigService
  module Types

    # A collection of accounts and regions.
    #
    # @note When making an API call, you may pass AccountAggregationSource
    #   data as a hash:
    #
    #       {
    #         account_ids: ["AccountId"], # required
    #         all_aws_regions: false,
    #         aws_regions: ["String"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   The 12-digit account ID of the account being aggregated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] all_aws_regions
    #   If true, aggregate existing AWS Config regions and future regions.
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
      include Aws::Structure
    end

    # Indicates whether an AWS Config rule is compliant based on account ID,
    # region, compliance, and rule name.
    #
    # A rule is compliant if all of the resources that the rule evaluated
    # comply with it. It is noncompliant if any of these resources do not
    # comply.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   Indicates whether an AWS resource or AWS Config rule is compliant
    #   and provides the number of contributors that affect the compliance.
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
    #   The number of compliant and noncompliant AWS Config rules.
    #   @return [Types::ComplianceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/AggregateComplianceCount AWS API Documentation
    #
    class AggregateComplianceCount < Struct.new(
      :group_name,
      :compliance_summary)
      include Aws::Structure
    end

    # The details of an AWS Config evaluation for an account ID and region
    # in an aggregator. Provides the AWS resource that was evaluated, the
    # compliance of the resource, related time stamps, and supplementary
    # information.
    #
    # @!attribute [rw] evaluation_result_identifier
    #   Uniquely identifies the evaluation result.
    #   @return [Types::EvaluationResultIdentifier]
    #
    # @!attribute [rw] compliance_type
    #   The resource compliance status.
    #
    #   For the `AggregationEvaluationResult` data type, AWS Config supports
    #   only the `COMPLIANT` and `NON_COMPLIANT`. AWS Config does not
    #   support the `NOT_APPLICABLE` and `INSUFFICIENT_DATA` value.
    #   @return [String]
    #
    # @!attribute [rw] result_recorded_time
    #   The time when AWS Config recorded the aggregate evaluation result.
    #   @return [Time]
    #
    # @!attribute [rw] config_rule_invoked_time
    #   The time when the AWS Config rule evaluated the AWS resource.
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
    #   The error code that AWS Config returned when the source account
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
      include Aws::Structure
    end

    # The detailed configuration of a specified resource.
    #
    # @!attribute [rw] version
    #   The version number of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The 12 digit AWS account ID associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] configuration_item_capture_time
    #   The time when the configuration recording was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] configuration_item_status
    #   The configuration item status.
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
    #   The type of AWS resource.
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
    #   Configuration attributes that AWS Config returns for certain
    #   resource types to supplement the information returned for the
    #   configuration parameter.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetResourceConfigRequest
    #   data as a hash:
    #
    #       {
    #         resource_keys: [ # required
    #           {
    #             resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig
    #             resource_id: "ResourceId", # required
    #           },
    #         ],
    #       }
    #
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
      include Aws::Structure
    end

    # Indicates whether an AWS resource or AWS Config rule is compliant and
    # provides the number of contributors that affect the compliance.
    #
    # @!attribute [rw] compliance_type
    #   Indicates whether an AWS resource or AWS Config rule is compliant.
    #
    #   A resource is compliant if it complies with all of the AWS Config
    #   rules that evaluate it. A resource is noncompliant if it does not
    #   comply with one or more of these rules.
    #
    #   A rule is compliant if all of the resources that the rule evaluates
    #   comply with it. A rule is noncompliant if any of these resources do
    #   not comply.
    #
    #   AWS Config returns the `INSUFFICIENT_DATA` value when no evaluation
    #   results are available for the AWS resource or AWS Config rule.
    #
    #   For the `Compliance` data type, AWS Config supports only
    #   `COMPLIANT`, `NON_COMPLIANT`, and `INSUFFICIENT_DATA` values. AWS
    #   Config does not support the `NOT_APPLICABLE` value for the
    #   `Compliance` data type.
    #   @return [String]
    #
    # @!attribute [rw] compliance_contributor_count
    #   The number of AWS resources or AWS Config rules that cause a result
    #   of `NON_COMPLIANT`, up to a maximum number.
    #   @return [Types::ComplianceContributorCount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/Compliance AWS API Documentation
    #
    class Compliance < Struct.new(
      :compliance_type,
      :compliance_contributor_count)
      include Aws::Structure
    end

    # Indicates whether an AWS Config rule is compliant. A rule is compliant
    # if all of the resources that the rule evaluated comply with it. A rule
    # is noncompliant if any of these resources do not comply.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   Indicates whether the AWS Config rule is compliant.
    #   @return [Types::Compliance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ComplianceByConfigRule AWS API Documentation
    #
    class ComplianceByConfigRule < Struct.new(
      :config_rule_name,
      :compliance)
      include Aws::Structure
    end

    # Indicates whether an AWS resource that is evaluated according to one
    # or more AWS Config rules is compliant. A resource is compliant if it
    # complies with all of the rules that evaluate it. A resource is
    # noncompliant if it does not comply with one or more of these rules.
    #
    # @!attribute [rw] resource_type
    #   The type of the AWS resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the AWS resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   Indicates whether the AWS resource complies with all of the AWS
    #   Config rules that evaluated it.
    #   @return [Types::Compliance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ComplianceByResource AWS API Documentation
    #
    class ComplianceByResource < Struct.new(
      :resource_type,
      :resource_id,
      :compliance)
      include Aws::Structure
    end

    # The number of AWS resources or AWS Config rules responsible for the
    # current compliance of the item, up to a maximum number.
    #
    # @!attribute [rw] capped_count
    #   The number of AWS resources or AWS Config rules responsible for the
    #   current compliance of the item.
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
      include Aws::Structure
    end

    # The number of AWS Config rules or AWS resources that are compliant and
    # noncompliant.
    #
    # @!attribute [rw] compliant_resource_count
    #   The number of AWS Config rules or AWS resources that are compliant,
    #   up to a maximum of 25 for rules and 100 for resources.
    #   @return [Types::ComplianceContributorCount]
    #
    # @!attribute [rw] non_compliant_resource_count
    #   The number of AWS Config rules or AWS resources that are
    #   noncompliant, up to a maximum of 25 for rules and 100 for resources.
    #   @return [Types::ComplianceContributorCount]
    #
    # @!attribute [rw] compliance_summary_timestamp
    #   The time that AWS Config created the compliance summary.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ComplianceSummary AWS API Documentation
    #
    class ComplianceSummary < Struct.new(
      :compliant_resource_count,
      :non_compliant_resource_count,
      :compliance_summary_timestamp)
      include Aws::Structure
    end

    # The number of AWS resources of a specific type that are compliant or
    # noncompliant, up to a maximum of 100 for each.
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource.
    #   @return [String]
    #
    # @!attribute [rw] compliance_summary
    #   The number of AWS resources that are compliant or noncompliant, up
    #   to a maximum of 100 for each.
    #   @return [Types::ComplianceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ComplianceSummaryByResourceType AWS API Documentation
    #
    class ComplianceSummaryByResourceType < Struct.new(
      :resource_type,
      :compliance_summary)
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
      include Aws::Structure
    end

    # An AWS Config rule represents an AWS Lambda function that you create
    # for a custom rule or a predefined function for an AWS managed rule.
    # The function evaluates configuration items to assess whether your AWS
    # resources comply with your desired configurations. This function can
    # run when AWS Config detects a configuration change to an AWS resource
    # and at a periodic frequency that you choose (for example, every 24
    # hours).
    #
    # <note markdown="1"> You can use the AWS CLI and AWS SDKs if you want to create a rule that
    # triggers evaluations for your resources when AWS Config delivers the
    # configuration snapshot. For more information, see
    # ConfigSnapshotDeliveryProperties.
    #
    #  </note>
    #
    # For more information about developing and using AWS Config rules, see
    # [Evaluating AWS Resource Configurations with AWS Config][1] in the
    # *AWS Config Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
    #
    # @note When making an API call, you may pass ConfigRule
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "StringWithCharLimit64",
    #         config_rule_arn: "String",
    #         config_rule_id: "String",
    #         description: "EmptiableStringWithCharLimit256",
    #         scope: {
    #           compliance_resource_types: ["StringWithCharLimit256"],
    #           tag_key: "StringWithCharLimit128",
    #           tag_value: "StringWithCharLimit256",
    #           compliance_resource_id: "BaseResourceId",
    #         },
    #         source: { # required
    #           owner: "CUSTOM_LAMBDA", # required, accepts CUSTOM_LAMBDA, AWS
    #           source_identifier: "StringWithCharLimit256", # required
    #           source_details: [
    #             {
    #               event_source: "aws.config", # accepts aws.config
    #               message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification, OversizedConfigurationItemChangeNotification
    #               maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #             },
    #           ],
    #         },
    #         input_parameters: "StringWithCharLimit1024",
    #         maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #         config_rule_state: "ACTIVE", # accepts ACTIVE, DELETING, DELETING_RESULTS, EVALUATING
    #         created_by: "StringWithCharLimit256",
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name that you assign to the AWS Config rule. The name is
    #   required if you are adding a new rule.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_arn
    #   The Amazon Resource Name (ARN) of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_id
    #   The ID of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description that you provide for the AWS Config rule.
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
    #   @return [Types::Scope]
    #
    # @!attribute [rw] source
    #   Provides the rule owner (AWS or customer), the rule identifier, and
    #   the notifications that cause the function to evaluate your AWS
    #   resources.
    #   @return [Types::Source]
    #
    # @!attribute [rw] input_parameters
    #   A string, in JSON format, that is passed to the AWS Config rule
    #   Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The maximum frequency with which AWS Config runs evaluations for a
    #   rule. You can specify a value for `MaximumExecutionFrequency` when:
    #
    #   * You are using an AWS managed rule that is triggered at a periodic
    #     frequency.
    #
    #   * Your custom rule is triggered when AWS Config delivers the
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
    #   Indicates whether the AWS Config rule is active or is currently
    #   being deleted by AWS Config. It can also indicate the evaluation
    #   status for the AWS Config rule.
    #
    #   AWS Config sets the state of the rule to `EVALUATING` temporarily
    #   after you use the `StartConfigRulesEvaluation` request to evaluate
    #   your resources against the AWS Config rule.
    #
    #   AWS Config sets the state of the rule to `DELETING_RESULTS`
    #   temporarily after you use the `DeleteEvaluationResults` request to
    #   delete the current evaluation results for the AWS Config rule.
    #
    #   AWS Config temporarily sets the state of a rule to `DELETING` after
    #   you use the `DeleteConfigRule` request to delete the rule. After AWS
    #   Config deletes the rule, the rule and all of its evaluations are
    #   erased and are no longer available.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Service principal name of the service that created the rule.
    #
    #   <note markdown="1"> The field is populated only if the service linked rule is created by
    #   a service. The field is empty if you create your own rule.
    #
    #    </note>
    #   @return [String]
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
      :created_by)
      include Aws::Structure
    end

    # Filters the compliance results based on account ID, region, compliance
    # type, and rule name.
    #
    # @note When making an API call, you may pass ConfigRuleComplianceFilters
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName",
    #         compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #         account_id: "AccountId",
    #         aws_region: "AwsRegion",
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The rule compliance status.
    #
    #   For the `ConfigRuleComplianceFilters` data type, AWS Config supports
    #   only `COMPLIANT` and `NON_COMPLIANT`. AWS Config does not support
    #   the `NOT_APPLICABLE` and the `INSUFFICIENT_DATA` values.
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
      include Aws::Structure
    end

    # Filters the results based on the account IDs and regions.
    #
    # @note When making an API call, you may pass ConfigRuleComplianceSummaryFilters
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId",
    #         aws_region: "AwsRegion",
    #       }
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
      include Aws::Structure
    end

    # Status information for your AWS managed Config rules. The status
    # includes information such as the last time the rule ran, the last time
    # it failed, and the related error for the last failure.
    #
    # This action does not return status information about custom AWS Config
    # rules.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_arn
    #   The Amazon Resource Name (ARN) of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_id
    #   The ID of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] last_successful_invocation_time
    #   The time that AWS Config last successfully invoked the AWS Config
    #   rule to evaluate your AWS resources.
    #   @return [Time]
    #
    # @!attribute [rw] last_failed_invocation_time
    #   The time that AWS Config last failed to invoke the AWS Config rule
    #   to evaluate your AWS resources.
    #   @return [Time]
    #
    # @!attribute [rw] last_successful_evaluation_time
    #   The time that AWS Config last successfully evaluated your AWS
    #   resources against the rule.
    #   @return [Time]
    #
    # @!attribute [rw] last_failed_evaluation_time
    #   The time that AWS Config last failed to evaluate your AWS resources
    #   against the rule.
    #   @return [Time]
    #
    # @!attribute [rw] first_activated_time
    #   The time that you first activated the AWS Config rule.
    #   @return [Time]
    #
    # @!attribute [rw] last_error_code
    #   The error code that AWS Config returned when the rule last failed.
    #   @return [String]
    #
    # @!attribute [rw] last_error_message
    #   The error message that AWS Config returned when the rule last
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] first_evaluation_started
    #   Indicates whether AWS Config has evaluated your resources against
    #   the rule at least once.
    #
    #   * `true` - AWS Config has evaluated your AWS resources against the
    #     rule at least once.
    #
    #   * `false` - AWS Config has not once finished evaluating your AWS
    #     resources against the rule.
    #   @return [Boolean]
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
      :last_error_code,
      :last_error_message,
      :first_evaluation_started)
      include Aws::Structure
    end

    # Provides options for how often AWS Config delivers configuration
    # snapshots to the Amazon S3 bucket in your delivery channel.
    #
    # <note markdown="1"> If you want to create a rule that triggers evaluations for your
    # resources when AWS Config delivers the configuration snapshot, see the
    # following:
    #
    #  </note>
    #
    # The frequency for a rule that triggers evaluations for your resources
    # when AWS Config delivers the configuration snapshot is set by one of
    # two values, depending on which is less frequent:
    #
    # * The value for the `deliveryFrequency` parameter within the delivery
    #   channel configuration, which sets how often AWS Config delivers
    #   configuration snapshots. This value also sets how often AWS Config
    #   invokes evaluations for AWS Config rules.
    #
    # * The value for the `MaximumExecutionFrequency` parameter, which sets
    #   the maximum frequency with which AWS Config invokes evaluations for
    #   the rule. For more information, see ConfigRule.
    #
    # If the `deliveryFrequency` value is less frequent than the
    # `MaximumExecutionFrequency` value for a rule, AWS Config invokes the
    # rule only as often as the `deliveryFrequency` value.
    #
    # 1.  For example, you want your rule to run evaluations when AWS Config
    #     delivers the configuration snapshot.
    #
    # 2.  You specify the `MaximumExecutionFrequency` value for `Six_Hours`.
    #
    # 3.  You then specify the delivery channel `deliveryFrequency` value
    #     for `TwentyFour_Hours`.
    #
    # 4.  Because the value for `deliveryFrequency` is less frequent than
    #     `MaximumExecutionFrequency`, AWS Config invokes evaluations for
    #     the rule every 24 hours.
    #
    # You should set the `MaximumExecutionFrequency` value to be at least as
    # frequent as the `deliveryFrequency` value. You can view the
    # `deliveryFrequency` value by using the `DescribeDeliveryChannnels`
    # action.
    #
    # To update the `deliveryFrequency` with which AWS Config delivers your
    # configuration snapshots, use the `PutDeliveryChannel` action.
    #
    # @note When making an API call, you may pass ConfigSnapshotDeliveryProperties
    #   data as a hash:
    #
    #       {
    #         delivery_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #       }
    #
    # @!attribute [rw] delivery_frequency
    #   The frequency with which AWS Config delivers configuration
    #   snapshots.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigSnapshotDeliveryProperties AWS API Documentation
    #
    class ConfigSnapshotDeliveryProperties < Struct.new(
      :delivery_frequency)
      include Aws::Structure
    end

    # A list that contains the status of the delivery of the configuration
    # stream notification to the Amazon SNS topic.
    #
    # @!attribute [rw] last_status
    #   Status of the last attempted delivery.
    #
    #   **Note** Providing an SNS topic on a [DeliveryChannel][1] for AWS
    #   Config is optional. If the SNS delivery is turned off, the last
    #   status will be **Not\_Applicable**.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigurationAggregator AWS API Documentation
    #
    class ConfigurationAggregator < Struct.new(
      :configuration_aggregator_name,
      :configuration_aggregator_arn,
      :account_aggregation_sources,
      :organization_aggregation_source,
      :creation_time,
      :last_updated_time)
      include Aws::Structure
    end

    # A list that contains detailed configurations of a specified resource.
    #
    # @!attribute [rw] version
    #   The version number of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The 12-digit AWS account ID associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] configuration_item_capture_time
    #   The time when the configuration recording was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] configuration_item_status
    #   The configuration item status.
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
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource.
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
    #   information about CloudTrail, see [What Is AWS CloudTrail][1].
    #
    #   An empty field indicates that the current configuration was not
    #   initiated by any event.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] relationships
    #   A list of related AWS resources.
    #   @return [Array<Types::Relationship>]
    #
    # @!attribute [rw] configuration
    #   The description of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] supplementary_configuration
    #   Configuration attributes that AWS Config returns for certain
    #   resource types to supplement the information returned for the
    #   `configuration` parameter.
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
      include Aws::Structure
    end

    # An object that represents the recording of configuration changes of an
    # AWS resource.
    #
    # @note When making an API call, you may pass ConfigurationRecorder
    #   data as a hash:
    #
    #       {
    #         name: "RecorderName",
    #         role_arn: "String",
    #         recording_group: {
    #           all_supported: false,
    #           include_global_resource_types: false,
    #           resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the recorder. By default, AWS Config automatically
    #   assigns the name "default" when creating the configuration
    #   recorder. You cannot change the assigned name.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Amazon Resource Name (ARN) of the IAM role used to describe the AWS
    #   resources associated with the account.
    #   @return [String]
    #
    # @!attribute [rw] recording_group
    #   Specifies the types of AWS resources for which AWS Config records
    #   configuration changes.
    #   @return [Types::RecordingGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConfigurationRecorder AWS API Documentation
    #
    class ConfigurationRecorder < Struct.new(
      :name,
      :role_arn,
      :recording_group)
      include Aws::Structure
    end

    # The current status of the configuration recorder.
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
    #   The last (previous) status of the recorder.
    #   @return [String]
    #
    # @!attribute [rw] last_error_code
    #   The error code indicating that the recording failed.
    #   @return [String]
    #
    # @!attribute [rw] last_error_message
    #   The message indicating that the recording failed due to an error.
    #   @return [String]
    #
    # @!attribute [rw] last_status_change_time
    #   The time when the status was last changed.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAggregationAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         authorized_account_id: "AccountId", # required
    #         authorized_aws_region: "AwsRegion", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "StringWithCharLimit64", # required
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigRuleRequest AWS API Documentation
    #
    class DeleteConfigRuleRequest < Struct.new(
      :config_rule_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConfigurationAggregatorRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #       }
    #
    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigurationAggregatorRequest AWS API Documentation
    #
    class DeleteConfigurationAggregatorRequest < Struct.new(
      :configuration_aggregator_name)
      include Aws::Structure
    end

    # The request object for the `DeleteConfigurationRecorder` action.
    #
    # @note When making an API call, you may pass DeleteConfigurationRecorderRequest
    #   data as a hash:
    #
    #       {
    #         configuration_recorder_name: "RecorderName", # required
    #       }
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
      include Aws::Structure
    end

    # The input for the DeleteDeliveryChannel action. The action accepts the
    # following data, in JSON format.
    #
    # @note When making an API call, you may pass DeleteDeliveryChannelRequest
    #   data as a hash:
    #
    #       {
    #         delivery_channel_name: "ChannelName", # required
    #       }
    #
    # @!attribute [rw] delivery_channel_name
    #   The name of the delivery channel to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteDeliveryChannelRequest AWS API Documentation
    #
    class DeleteDeliveryChannelRequest < Struct.new(
      :delivery_channel_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEvaluationResultsRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "StringWithCharLimit64", # required
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule for which you want to delete the
    #   evaluation results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteEvaluationResultsRequest AWS API Documentation
    #
    class DeleteEvaluationResultsRequest < Struct.new(
      :config_rule_name)
      include Aws::Structure
    end

    # The output when you delete the evaluation results for the specified
    # AWS Config rule.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteEvaluationResultsResponse AWS API Documentation
    #
    class DeleteEvaluationResultsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePendingAggregationRequestRequest
    #   data as a hash:
    #
    #       {
    #         requester_account_id: "AccountId", # required
    #         requester_aws_region: "AwsRegion", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRetentionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         retention_configuration_name: "RetentionConfigurationName", # required
    #       }
    #
    # @!attribute [rw] retention_configuration_name
    #   The name of the retention configuration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteRetentionConfigurationRequest AWS API Documentation
    #
    class DeleteRetentionConfigurationRequest < Struct.new(
      :retention_configuration_name)
      include Aws::Structure
    end

    # The input for the DeliverConfigSnapshot action.
    #
    # @note When making an API call, you may pass DeliverConfigSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         delivery_channel_name: "ChannelName", # required
    #       }
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
      include Aws::Structure
    end

    # The channel through which AWS Config delivers notifications and
    # updated configuration states.
    #
    # @note When making an API call, you may pass DeliveryChannel
    #   data as a hash:
    #
    #       {
    #         name: "ChannelName",
    #         s3_bucket_name: "String",
    #         s3_key_prefix: "String",
    #         sns_topic_arn: "String",
    #         config_snapshot_delivery_properties: {
    #           delivery_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the delivery channel. By default, AWS Config assigns the
    #   name "default" when creating the delivery channel. To change the
    #   delivery channel name, you must use the DeleteDeliveryChannel action
    #   to delete your current delivery channel, and then you must use the
    #   PutDeliveryChannel command to create a delivery channel that has the
    #   desired name.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon S3 bucket to which AWS Config delivers
    #   configuration snapshots and configuration history files.
    #
    #   If you specify a bucket that belongs to another AWS account, that
    #   bucket must have policies that grant access permissions to AWS
    #   Config. For more information, see [Permissions for the Amazon S3
    #   Bucket][1] in the AWS Config Developer Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The prefix for the specified Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS
    #   Config sends notifications about configuration changes.
    #
    #   If you choose a topic from another account, the topic must have
    #   policies that grant access permissions to AWS Config. For more
    #   information, see [Permissions for the Amazon SNS Topic][1] in the
    #   AWS Config Developer Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html
    #   @return [String]
    #
    # @!attribute [rw] config_snapshot_delivery_properties
    #   The options for how often AWS Config delivers configuration
    #   snapshots to the Amazon S3 bucket.
    #   @return [Types::ConfigSnapshotDeliveryProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeliveryChannel AWS API Documentation
    #
    class DeliveryChannel < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_arn,
      :config_snapshot_delivery_properties)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAggregateComplianceByConfigRulesRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         filters: {
    #           config_rule_name: "ConfigRuleName",
    #           compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #           account_id: "AccountId",
    #           aws_region: "AwsRegion",
    #         },
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
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
    #   default is maximum. If you specify 0, AWS Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregateComplianceByConfigRulesRequest AWS API Documentation
    #
    class DescribeAggregateComplianceByConfigRulesRequest < Struct.new(
      :configuration_aggregator_name,
      :filters,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] aggregate_compliance_by_config_rules
    #   Returns a list of AggregateComplianceByConfigRule object.
    #   @return [Array<Types::AggregateComplianceByConfigRule>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregateComplianceByConfigRulesResponse AWS API Documentation
    #
    class DescribeAggregateComplianceByConfigRulesResponse < Struct.new(
      :aggregate_compliance_by_config_rules,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAggregationAuthorizationsRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of AggregationAuthorizations returned on each
    #   page. The default is maximum. If you specify 0, AWS Config uses the
    #   default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregationAuthorizationsRequest AWS API Documentation
    #
    class DescribeAggregationAuthorizationsRequest < Struct.new(
      :limit,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] aggregation_authorizations
    #   Returns a list of authorizations granted to various aggregator
    #   accounts and regions.
    #   @return [Array<Types::AggregationAuthorization>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregationAuthorizationsResponse AWS API Documentation
    #
    class DescribeAggregationAuthorizationsResponse < Struct.new(
      :aggregation_authorizations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeComplianceByConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["StringWithCharLimit64"],
    #         compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] config_rule_names
    #   Specify one or more AWS Config rule names to filter the results by
    #   rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compliance_types
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
    #   `INSUFFICIENT_DATA`.
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
      include Aws::Structure
    end

    # @!attribute [rw] compliance_by_config_rules
    #   Indicates whether each of the specified AWS Config rules is
    #   compliant.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeComplianceByResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         resource_id: "BaseResourceId",
    #         compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_type
    #   The types of AWS resources for which you want compliance information
    #   (for example, `AWS::EC2::Instance`). For this action, you can
    #   specify that the resource type is an AWS account by specifying
    #   `AWS::::Account`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the AWS resource for which you want compliance
    #   information. You can specify only one resource ID. If you specify a
    #   resource ID, you must also specify a type for `ResourceType`.
    #   @return [String]
    #
    # @!attribute [rw] compliance_types
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
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
      include Aws::Structure
    end

    # @!attribute [rw] compliance_by_resources
    #   Indicates whether the specified AWS resource complies with all of
    #   the AWS Config rules that evaluate it.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConfigRuleEvaluationStatusRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["StringWithCharLimit64"],
    #         next_token: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] config_rule_names
    #   The name of the AWS managed Config rules for which you want status
    #   information. If you do not specify any names, AWS Config returns
    #   status information for all AWS managed Config rules that you use.
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
    #   more than the default of 50 rules.
    #
    #   For information about requesting a rule limit increase, see [AWS
    #   Config Limits][1] in the *AWS General Reference Guide*.
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
      include Aws::Structure
    end

    # @!attribute [rw] config_rules_evaluation_status
    #   Status information about your AWS managed Config rules.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConfigRulesRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["StringWithCharLimit64"],
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] config_rule_names
    #   The names of the AWS Config rules for which you want details. If you
    #   do not specify any names, AWS Config returns details for all your
    #   rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRulesRequest AWS API Documentation
    #
    class DescribeConfigRulesRequest < Struct.new(
      :config_rule_names,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] config_rules
    #   The details about your AWS Config rules.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConfigurationAggregatorSourcesStatusRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         update_status: ["FAILED"], # accepts FAILED, SUCCEEDED, OUTDATED
    #         next_token: "String",
    #         limit: 1,
    #       }
    #
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
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of AggregatorSourceStatus returned on each page.
    #   The default is maximum. If you specify 0, AWS Config uses the
    #   default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregatorSourcesStatusRequest AWS API Documentation
    #
    class DescribeConfigurationAggregatorSourcesStatusRequest < Struct.new(
      :configuration_aggregator_name,
      :update_status,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] aggregated_source_status_list
    #   Returns an AggregatedSourceStatus object.
    #   @return [Array<Types::AggregatedSourceStatus>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregatorSourcesStatusResponse AWS API Documentation
    #
    class DescribeConfigurationAggregatorSourcesStatusResponse < Struct.new(
      :aggregated_source_status_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConfigurationAggregatorsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_names: ["ConfigurationAggregatorName"],
    #         next_token: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] configuration_aggregator_names
    #   The name of the configuration aggregators.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of configuration aggregators returned on each
    #   page. The default is maximum. If you specify 0, AWS Config uses the
    #   default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregatorsRequest AWS API Documentation
    #
    class DescribeConfigurationAggregatorsRequest < Struct.new(
      :configuration_aggregator_names,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] configuration_aggregators
    #   Returns a ConfigurationAggregators object.
    #   @return [Array<Types::ConfigurationAggregator>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregatorsResponse AWS API Documentation
    #
    class DescribeConfigurationAggregatorsResponse < Struct.new(
      :configuration_aggregators,
      :next_token)
      include Aws::Structure
    end

    # The input for the DescribeConfigurationRecorderStatus action.
    #
    # @note When making an API call, you may pass DescribeConfigurationRecorderStatusRequest
    #   data as a hash:
    #
    #       {
    #         configuration_recorder_names: ["RecorderName"],
    #       }
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
      include Aws::Structure
    end

    # The input for the DescribeConfigurationRecorders action.
    #
    # @note When making an API call, you may pass DescribeConfigurationRecordersRequest
    #   data as a hash:
    #
    #       {
    #         configuration_recorder_names: ["RecorderName"],
    #       }
    #
    # @!attribute [rw] configuration_recorder_names
    #   A list of configuration recorder names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecordersRequest AWS API Documentation
    #
    class DescribeConfigurationRecordersRequest < Struct.new(
      :configuration_recorder_names)
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
      include Aws::Structure
    end

    # The input for the DeliveryChannelStatus action.
    #
    # @note When making an API call, you may pass DescribeDeliveryChannelStatusRequest
    #   data as a hash:
    #
    #       {
    #         delivery_channel_names: ["ChannelName"],
    #       }
    #
    # @!attribute [rw] delivery_channel_names
    #   A list of delivery channel names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannelStatusRequest AWS API Documentation
    #
    class DescribeDeliveryChannelStatusRequest < Struct.new(
      :delivery_channel_names)
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
      include Aws::Structure
    end

    # The input for the DescribeDeliveryChannels action.
    #
    # @note When making an API call, you may pass DescribeDeliveryChannelsRequest
    #   data as a hash:
    #
    #       {
    #         delivery_channel_names: ["ChannelName"],
    #       }
    #
    # @!attribute [rw] delivery_channel_names
    #   A list of delivery channel names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannelsRequest AWS API Documentation
    #
    class DescribeDeliveryChannelsRequest < Struct.new(
      :delivery_channel_names)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePendingAggregationRequestsRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is maximum. If you specify 0, AWS Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribePendingAggregationRequestsRequest AWS API Documentation
    #
    class DescribePendingAggregationRequestsRequest < Struct.new(
      :limit,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] pending_aggregation_requests
    #   Returns a PendingAggregationRequests object.
    #   @return [Array<Types::PendingAggregationRequest>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribePendingAggregationRequestsResponse AWS API Documentation
    #
    class DescribePendingAggregationRequestsResponse < Struct.new(
      :pending_aggregation_requests,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRetentionConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         retention_configuration_names: ["RetentionConfigurationName"],
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] retention_configuration_names
    #   A list of names of retention configurations for which you want
    #   details. If you do not specify a name, AWS Config returns details
    #   for all the retention configurations for that account.
    #
    #   <note markdown="1"> Currently, AWS Config supports only one retention configuration per
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
      include Aws::Structure
    end

    # Identifies an AWS resource and indicates whether it complies with the
    # AWS Config rule that it was evaluated against.
    #
    # @note When making an API call, you may pass Evaluation
    #   data as a hash:
    #
    #       {
    #         compliance_resource_type: "StringWithCharLimit256", # required
    #         compliance_resource_id: "BaseResourceId", # required
    #         compliance_type: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #         annotation: "StringWithCharLimit256",
    #         ordering_timestamp: Time.now, # required
    #       }
    #
    # @!attribute [rw] compliance_resource_type
    #   The type of AWS resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] compliance_resource_id
    #   The ID of the AWS resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   Indicates whether the AWS resource complies with the AWS Config rule
    #   that it was evaluated against.
    #
    #   For the `Evaluation` data type, AWS Config supports only the
    #   `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE` values. AWS
    #   Config does not support the `INSUFFICIENT_DATA` value for this data
    #   type.
    #
    #   Similarly, AWS Config does not accept `INSUFFICIENT_DATA` as the
    #   value for `ComplianceType` from a `PutEvaluations` request. For
    #   example, an AWS Lambda function for a custom AWS Config rule cannot
    #   pass an `INSUFFICIENT_DATA` value to AWS Config.
    #   @return [String]
    #
    # @!attribute [rw] annotation
    #   Supplementary information about how the evaluation determined the
    #   compliance.
    #   @return [String]
    #
    # @!attribute [rw] ordering_timestamp
    #   The time of the event in AWS Config that triggered the evaluation.
    #   For event-based evaluations, the time indicates when AWS Config
    #   created the configuration item that triggered the evaluation. For
    #   periodic evaluations, the time indicates when AWS Config triggered
    #   the evaluation at the frequency that you specified (for example,
    #   every 24 hours).
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
      include Aws::Structure
    end

    # The details of an AWS Config evaluation. Provides the AWS resource
    # that was evaluated, the compliance of the resource, related time
    # stamps, and supplementary information.
    #
    # @!attribute [rw] evaluation_result_identifier
    #   Uniquely identifies the evaluation result.
    #   @return [Types::EvaluationResultIdentifier]
    #
    # @!attribute [rw] compliance_type
    #   Indicates whether the AWS resource complies with the AWS Config rule
    #   that evaluated it.
    #
    #   For the `EvaluationResult` data type, AWS Config supports only the
    #   `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE` values. AWS
    #   Config does not support the `INSUFFICIENT_DATA` value for the
    #   `EvaluationResult` data type.
    #   @return [String]
    #
    # @!attribute [rw] result_recorded_time
    #   The time when AWS Config recorded the evaluation result.
    #   @return [Time]
    #
    # @!attribute [rw] config_rule_invoked_time
    #   The time when the AWS Config rule evaluated the AWS resource.
    #   @return [Time]
    #
    # @!attribute [rw] annotation
    #   Supplementary information about how the evaluation determined the
    #   compliance.
    #   @return [String]
    #
    # @!attribute [rw] result_token
    #   An encrypted token that associates an evaluation with an AWS Config
    #   rule. The token identifies the rule, the AWS resource being
    #   evaluated, and the event that triggered the evaluation.
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
      include Aws::Structure
    end

    # Uniquely identifies an evaluation result.
    #
    # @!attribute [rw] evaluation_result_qualifier
    #   Identifies an AWS Config rule used to evaluate an AWS resource, and
    #   provides the type and ID of the evaluated resource.
    #   @return [Types::EvaluationResultQualifier]
    #
    # @!attribute [rw] ordering_timestamp
    #   The time of the event that triggered the evaluation of your AWS
    #   resources. The time can indicate when AWS Config delivered a
    #   configuration item change notification, or it can indicate when AWS
    #   Config delivered the configuration snapshot, depending on which
    #   event triggered the evaluation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/EvaluationResultIdentifier AWS API Documentation
    #
    class EvaluationResultIdentifier < Struct.new(
      :evaluation_result_qualifier,
      :ordering_timestamp)
      include Aws::Structure
    end

    # Identifies an AWS Config rule that evaluated an AWS resource, and
    # provides the type and ID of the resource that the rule evaluated.
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule that was used in the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the evaluated AWS resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/EvaluationResultQualifier AWS API Documentation
    #
    class EvaluationResultQualifier < Struct.new(
      :config_rule_name,
      :resource_type,
      :resource_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAggregateComplianceDetailsByConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         config_rule_name: "ConfigRuleName", # required
    #         account_id: "AccountId", # required
    #         aws_region: "AwsRegion", # required
    #         compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule for which you want compliance
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
    #   type, AWS Config supports only the `COMPLIANT` and `NON_COMPLIANT`.
    #   AWS Config does not support the `NOT_APPLICABLE` and
    #   `INSUFFICIENT_DATA` values.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 50. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
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
      include Aws::Structure
    end

    # @!attribute [rw] aggregate_evaluation_results
    #   Returns an AggregateEvaluationResults object.
    #   @return [Array<Types::AggregateEvaluationResult>]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateComplianceDetailsByConfigRuleResponse AWS API Documentation
    #
    class GetAggregateComplianceDetailsByConfigRuleResponse < Struct.new(
      :aggregate_evaluation_results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAggregateConfigRuleComplianceSummaryRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         filters: {
    #           account_id: "AccountId",
    #           aws_region: "AwsRegion",
    #         },
    #         group_by_key: "ACCOUNT_ID", # accepts ACCOUNT_ID, AWS_REGION
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
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
    #   you specify 0, AWS Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
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
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateConfigRuleComplianceSummaryResponse AWS API Documentation
    #
    class GetAggregateConfigRuleComplianceSummaryResponse < Struct.new(
      :group_by_key,
      :aggregate_compliance_counts,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComplianceDetailsByConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "StringWithCharLimit64", # required
    #         compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule for which you want compliance
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] compliance_types
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
    #   `NOT_APPLICABLE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
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
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_results
    #   Indicates whether the AWS resource complies with the specified AWS
    #   Config rule.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComplianceDetailsByResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "StringWithCharLimit256", # required
    #         resource_id: "BaseResourceId", # required
    #         compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of the AWS resource for which you want compliance
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the AWS resource for which you want compliance
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] compliance_types
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
    #   `NOT_APPLICABLE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceDetailsByResourceRequest AWS API Documentation
    #
    class GetComplianceDetailsByResourceRequest < Struct.new(
      :resource_type,
      :resource_id,
      :compliance_types,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_results
    #   Indicates whether the specified AWS resource complies each AWS
    #   Config rule.
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
      include Aws::Structure
    end

    # @!attribute [rw] compliance_summary
    #   The number of AWS Config rules that are compliant and the number
    #   that are noncompliant, up to a maximum of 25 for each.
    #   @return [Types::ComplianceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceSummaryByConfigRuleResponse AWS API Documentation
    #
    class GetComplianceSummaryByConfigRuleResponse < Struct.new(
      :compliance_summary)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComplianceSummaryByResourceTypeRequest
    #   data as a hash:
    #
    #       {
    #         resource_types: ["StringWithCharLimit256"],
    #       }
    #
    # @!attribute [rw] resource_types
    #   Specify one or more resource types to get the number of resources
    #   that are compliant and the number that are noncompliant for each
    #   resource type.
    #
    #   For this request, you can specify an AWS resource type such as
    #   `AWS::EC2::Instance`. You can specify that the resource type is an
    #   AWS account by specifying `AWS::::Account`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceSummaryByResourceTypeRequest AWS API Documentation
    #
    class GetComplianceSummaryByResourceTypeRequest < Struct.new(
      :resource_types)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDiscoveredResourceCountsRequest
    #   data as a hash:
    #
    #       {
    #         resource_types: ["StringWithCharLimit256"],
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_types
    #   The comma-separated list that specifies the resource types that you
    #   want AWS Config to return (for example, `"AWS::EC2::Instance"`,
    #   `"AWS::IAM::User"`).
    #
    #   If a value for `resourceTypes` is not specified, AWS Config returns
    #   all resource types that AWS Config is recording in the region for
    #   your account.
    #
    #   <note markdown="1"> If the configuration recorder is turned off, AWS Config returns an
    #   empty list of ResourceCount objects. If the configuration recorder
    #   is not recording a specific resource type (for example, S3 buckets),
    #   that resource type is not returned in the list of ResourceCount
    #   objects.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of ResourceCount objects returned on each page.
    #   The default is 100. You cannot specify a number greater than 100. If
    #   you specify 0, AWS Config uses the default.
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
      include Aws::Structure
    end

    # @!attribute [rw] total_discovered_resources
    #   The total number of resources that AWS Config is recording in the
    #   region for your account. If you specify resource types in the
    #   request, AWS Config returns only the total number of resources for
    #   those resource types.
    #
    #   **Example**
    #
    #   1.  AWS Config is recording three resource types in the US East
    #       (Ohio) Region for your account: 25 EC2 instances, 20 IAM users,
    #       and 15 S3 buckets, for a total of 60 resources.
    #
    #   2.  You make a call to the `GetDiscoveredResourceCounts` action and
    #       specify the resource type, `"AWS::EC2::Instances"`, in the
    #       request.
    #
    #   3.  AWS Config returns 25 for `totalDiscoveredResources`.
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
      include Aws::Structure
    end

    # The input for the GetResourceConfigHistory action.
    #
    # @note When making an API call, you may pass GetResourceConfigHistoryRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig
    #         resource_id: "ResourceId", # required
    #         later_time: Time.now,
    #         earlier_time: Time.now,
    #         chronological_order: "Reverse", # accepts Reverse, Forward
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
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
    #   specify 0, AWS Config uses the default.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDiscoveredResourcesRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig
    #         resource_ids: ["ResourceId"],
    #         resource_name: "ResourceName",
    #         limit: 1,
    #         include_deleted_resources: false,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of resources that you want AWS Config to list in the
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The IDs of only those resources that you want AWS Config to list in
    #   the response. If you do not specify this parameter, AWS Config lists
    #   all resources of the specified type that it has discovered.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_name
    #   The custom name of only those resources that you want AWS Config to
    #   list in the response. If you do not specify this parameter, AWS
    #   Config lists all resources of the specified type that it has
    #   discovered.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of resource identifiers returned on each page.
    #   The default is 100. You cannot specify a number greater than 100. If
    #   you specify 0, AWS Config uses the default.
    #   @return [Integer]
    #
    # @!attribute [rw] include_deleted_resources
    #   Specifies whether AWS Config includes deleted resources in the
    #   results. By default, deleted resources are not included.
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
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifiers
    #   The details that identify a resource that is discovered by AWS
    #   Config, including the resource type, ID, and (if available) the
    #   custom resource name.
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
      include Aws::Structure
    end

    # This object contains regions to setup the aggregator and an IAM role
    # to retrieve organization details.
    #
    # @note When making an API call, you may pass OrganizationAggregationSource
    #   data as a hash:
    #
    #       {
    #         role_arn: "String", # required
    #         aws_regions: ["String"],
    #         all_aws_regions: false,
    #       }
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role used to retreive AWS Organization details
    #   associated with the aggregator account.
    #   @return [String]
    #
    # @!attribute [rw] aws_regions
    #   The source regions being aggregated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] all_aws_regions
    #   If true, aggregate existing AWS Config regions and future regions.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationAggregationSource AWS API Documentation
    #
    class OrganizationAggregationSource < Struct.new(
      :role_arn,
      :aws_regions,
      :all_aws_regions)
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAggregationAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         authorized_account_id: "AccountId", # required
    #         authorized_aws_region: "AwsRegion", # required
    #       }
    #
    # @!attribute [rw] authorized_account_id
    #   The 12-digit account ID of the account authorized to aggregate data.
    #   @return [String]
    #
    # @!attribute [rw] authorized_aws_region
    #   The region authorized to collect aggregated data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutAggregationAuthorizationRequest AWS API Documentation
    #
    class PutAggregationAuthorizationRequest < Struct.new(
      :authorized_account_id,
      :authorized_aws_region)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         config_rule: { # required
    #           config_rule_name: "StringWithCharLimit64",
    #           config_rule_arn: "String",
    #           config_rule_id: "String",
    #           description: "EmptiableStringWithCharLimit256",
    #           scope: {
    #             compliance_resource_types: ["StringWithCharLimit256"],
    #             tag_key: "StringWithCharLimit128",
    #             tag_value: "StringWithCharLimit256",
    #             compliance_resource_id: "BaseResourceId",
    #           },
    #           source: { # required
    #             owner: "CUSTOM_LAMBDA", # required, accepts CUSTOM_LAMBDA, AWS
    #             source_identifier: "StringWithCharLimit256", # required
    #             source_details: [
    #               {
    #                 event_source: "aws.config", # accepts aws.config
    #                 message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification, OversizedConfigurationItemChangeNotification
    #                 maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #               },
    #             ],
    #           },
    #           input_parameters: "StringWithCharLimit1024",
    #           maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #           config_rule_state: "ACTIVE", # accepts ACTIVE, DELETING, DELETING_RESULTS, EVALUATING
    #           created_by: "StringWithCharLimit256",
    #         },
    #       }
    #
    # @!attribute [rw] config_rule
    #   The rule that you want to add to your account.
    #   @return [Types::ConfigRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigRuleRequest AWS API Documentation
    #
    class PutConfigRuleRequest < Struct.new(
      :config_rule)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutConfigurationAggregatorRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         account_aggregation_sources: [
    #           {
    #             account_ids: ["AccountId"], # required
    #             all_aws_regions: false,
    #             aws_regions: ["String"],
    #           },
    #         ],
    #         organization_aggregation_source: {
    #           role_arn: "String", # required
    #           aws_regions: ["String"],
    #           all_aws_regions: false,
    #         },
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigurationAggregatorRequest AWS API Documentation
    #
    class PutConfigurationAggregatorRequest < Struct.new(
      :configuration_aggregator_name,
      :account_aggregation_sources,
      :organization_aggregation_source)
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
      include Aws::Structure
    end

    # The input for the PutConfigurationRecorder action.
    #
    # @note When making an API call, you may pass PutConfigurationRecorderRequest
    #   data as a hash:
    #
    #       {
    #         configuration_recorder: { # required
    #           name: "RecorderName",
    #           role_arn: "String",
    #           recording_group: {
    #             all_supported: false,
    #             include_global_resource_types: false,
    #             resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] configuration_recorder
    #   The configuration recorder object that records each configuration
    #   change made to the resources.
    #   @return [Types::ConfigurationRecorder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigurationRecorderRequest AWS API Documentation
    #
    class PutConfigurationRecorderRequest < Struct.new(
      :configuration_recorder)
      include Aws::Structure
    end

    # The input for the PutDeliveryChannel action.
    #
    # @note When making an API call, you may pass PutDeliveryChannelRequest
    #   data as a hash:
    #
    #       {
    #         delivery_channel: { # required
    #           name: "ChannelName",
    #           s3_bucket_name: "String",
    #           s3_key_prefix: "String",
    #           sns_topic_arn: "String",
    #           config_snapshot_delivery_properties: {
    #             delivery_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #           },
    #         },
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEvaluationsRequest
    #   data as a hash:
    #
    #       {
    #         evaluations: [
    #           {
    #             compliance_resource_type: "StringWithCharLimit256", # required
    #             compliance_resource_id: "BaseResourceId", # required
    #             compliance_type: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #             annotation: "StringWithCharLimit256",
    #             ordering_timestamp: Time.now, # required
    #           },
    #         ],
    #         result_token: "String", # required
    #         test_mode: false,
    #       }
    #
    # @!attribute [rw] evaluations
    #   The assessments that the AWS Lambda function performs. Each
    #   evaluation identifies an AWS resource and indicates whether it
    #   complies with the AWS Config rule that invokes the AWS Lambda
    #   function.
    #   @return [Array<Types::Evaluation>]
    #
    # @!attribute [rw] result_token
    #   An encrypted token that associates an evaluation with an AWS Config
    #   rule. Identifies the rule and the event that triggered the
    #   evaluation.
    #   @return [String]
    #
    # @!attribute [rw] test_mode
    #   Use this parameter to specify a test run for `PutEvaluations`. You
    #   can verify whether your AWS Lambda function will deliver evaluation
    #   results to AWS Config. No updates occur to your existing
    #   evaluations, and evaluation results are not sent to AWS Config.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRetentionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         retention_period_in_days: 1, # required
    #       }
    #
    # @!attribute [rw] retention_period_in_days
    #   Number of days AWS Config stores your historical information.
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
      include Aws::Structure
    end

    # Specifies the types of AWS resource for which AWS Config records
    # configuration changes.
    #
    # In the recording group, you specify whether all supported types or
    # specific types of resources are recorded.
    #
    # By default, AWS Config records configuration changes for all supported
    # types of regional resources that AWS Config discovers in the region in
    # which it is running. Regional resources are tied to a region and can
    # be used only in that region. Examples of regional resources are EC2
    # instances and EBS volumes.
    #
    # You can also have AWS Config record configuration changes for
    # supported types of global resources (for example, IAM resources).
    # Global resources are not tied to an individual region and can be used
    # in all regions.
    #
    # The configuration details for any global resource are the same in all
    # regions. If you customize AWS Config in multiple regions to record
    # global resources, it will create multiple configuration items each
    # time a global resource changes: one configuration item for each
    # region. These configuration items will contain identical data. To
    # prevent duplicate configuration items, you should consider customizing
    # AWS Config in only one region to record global resources, unless you
    # want the configuration items to be available in multiple regions.
    #
    # If you don't want AWS Config to record all resources, you can specify
    # which types of resources it will record with the `resourceTypes`
    # parameter.
    #
    # For a list of supported resource types, see [Supported Resource
    # Types][1].
    #
    # For more information, see [Selecting Which Resources AWS Config
    # Records][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources
    # [2]: http://docs.aws.amazon.com/config/latest/developerguide/select-resources.html
    #
    # @note When making an API call, you may pass RecordingGroup
    #   data as a hash:
    #
    #       {
    #         all_supported: false,
    #         include_global_resource_types: false,
    #         resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig
    #       }
    #
    # @!attribute [rw] all_supported
    #   Specifies whether AWS Config records configuration changes for every
    #   supported type of regional resource.
    #
    #   If you set this option to `true`, when AWS Config adds support for a
    #   new type of regional resource, it starts recording resources of that
    #   type automatically.
    #
    #   If you set this option to `true`, you cannot enumerate a list of
    #   `resourceTypes`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_global_resource_types
    #   Specifies whether AWS Config includes all supported types of global
    #   resources (for example, IAM resources) with the resources that it
    #   records.
    #
    #   Before you can set this option to `true`, you must set the
    #   `allSupported` option to `true`.
    #
    #   If you set this option to `true`, when AWS Config adds support for a
    #   new type of global resource, it starts recording resources of that
    #   type automatically.
    #
    #   The configuration details for any global resource are the same in
    #   all regions. To prevent duplicate configuration items, you should
    #   consider customizing AWS Config in only one region to record global
    #   resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_types
    #   A comma-separated list that specifies the types of AWS resources for
    #   which AWS Config records configuration changes (for example,
    #   `AWS::EC2::Instance` or `AWS::CloudTrail::Trail`).
    #
    #   Before you can set this option to `true`, you must set the
    #   `allSupported` option to `false`.
    #
    #   If you set this option to `true`, when AWS Config adds support for a
    #   new type of resource, it will not record resources of that type
    #   unless you manually add that type to your recording group.
    #
    #   For a list of valid `resourceTypes` values, see the **resourceType
    #   Value** column in [Supported AWS Resource Types][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RecordingGroup AWS API Documentation
    #
    class RecordingGroup < Struct.new(
      :all_supported,
      :include_global_resource_types,
      :resource_types)
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
      include Aws::Structure
    end

    # The details that identify a resource that is discovered by AWS Config,
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
      include Aws::Structure
    end

    # The details that identify a resource within AWS Config, including the
    # resource type and resource ID.
    #
    # @note When making an API call, you may pass ResourceKey
    #   data as a hash:
    #
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig
    #         resource_id: "ResourceId", # required
    #       }
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
      include Aws::Structure
    end

    # An object with the name of the retention configuration and the
    # retention period in days. The object stores the configuration for data
    # retention in AWS Config.
    #
    # @!attribute [rw] name
    #   The name of the retention configuration object.
    #   @return [String]
    #
    # @!attribute [rw] retention_period_in_days
    #   Number of days AWS Config stores your historical information.
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
      include Aws::Structure
    end

    # Defines which resources trigger an evaluation for an AWS Config rule.
    # The scope can include one or more resource types, a combination of a
    # tag key and value, or a combination of one resource type and one
    # resource ID. Specify a scope to constrain which resources trigger an
    # evaluation for a rule. Otherwise, evaluations for the rule are
    # triggered when any resource in your recording group changes in
    # configuration.
    #
    # @note When making an API call, you may pass Scope
    #   data as a hash:
    #
    #       {
    #         compliance_resource_types: ["StringWithCharLimit256"],
    #         tag_key: "StringWithCharLimit128",
    #         tag_value: "StringWithCharLimit256",
    #         compliance_resource_id: "BaseResourceId",
    #       }
    #
    # @!attribute [rw] compliance_resource_types
    #   The resource types of only those AWS resources that you want to
    #   trigger an evaluation for the rule. You can only specify one type if
    #   you also specify a resource ID for `ComplianceResourceId`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_key
    #   The tag key that is applied to only those AWS resources that you
    #   want to trigger an evaluation for the rule.
    #   @return [String]
    #
    # @!attribute [rw] tag_value
    #   The tag value applied to only those AWS resources that you want to
    #   trigger an evaluation for the rule. If you specify a value for
    #   `TagValue`, you must also specify a value for `TagKey`.
    #   @return [String]
    #
    # @!attribute [rw] compliance_resource_id
    #   The ID of the only AWS resource that you want to trigger an
    #   evaluation for the rule. If you specify a resource ID, you must
    #   specify one resource type for `ComplianceResourceTypes`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/Scope AWS API Documentation
    #
    class Scope < Struct.new(
      :compliance_resource_types,
      :tag_key,
      :tag_value,
      :compliance_resource_id)
      include Aws::Structure
    end

    # Provides the AWS Config rule owner (AWS or customer), the rule
    # identifier, and the events that trigger the evaluation of your AWS
    # resources.
    #
    # @note When making an API call, you may pass Source
    #   data as a hash:
    #
    #       {
    #         owner: "CUSTOM_LAMBDA", # required, accepts CUSTOM_LAMBDA, AWS
    #         source_identifier: "StringWithCharLimit256", # required
    #         source_details: [
    #           {
    #             event_source: "aws.config", # accepts aws.config
    #             message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification, OversizedConfigurationItemChangeNotification
    #             maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] owner
    #   Indicates whether AWS or the customer owns and manages the AWS
    #   Config rule.
    #   @return [String]
    #
    # @!attribute [rw] source_identifier
    #   For AWS Config managed rules, a predefined identifier from a list.
    #   For example, `IAM_PASSWORD_POLICY` is a managed rule. To reference a
    #   managed rule, see [Using AWS Managed Config Rules][1].
    #
    #   For custom rules, the identifier is the Amazon Resource Name (ARN)
    #   of the rule's AWS Lambda function, such as
    #   `arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html
    #   @return [String]
    #
    # @!attribute [rw] source_details
    #   Provides the source and type of the event that causes AWS Config to
    #   evaluate your AWS resources.
    #   @return [Array<Types::SourceDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/Source AWS API Documentation
    #
    class Source < Struct.new(
      :owner,
      :source_identifier,
      :source_details)
      include Aws::Structure
    end

    # Provides the source and the message types that trigger AWS Config to
    # evaluate your AWS resources against a rule. It also provides the
    # frequency with which you want AWS Config to run evaluations for the
    # rule if the trigger type is periodic. You can specify the parameter
    # values for `SourceDetail` only for custom rules.
    #
    # @note When making an API call, you may pass SourceDetail
    #   data as a hash:
    #
    #       {
    #         event_source: "aws.config", # accepts aws.config
    #         message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification, OversizedConfigurationItemChangeNotification
    #         maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #       }
    #
    # @!attribute [rw] event_source
    #   The source of the event, such as an AWS service, that triggers AWS
    #   Config to evaluate your AWS resources.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of notification that triggers AWS Config to run an
    #   evaluation for a rule. You can specify the following notification
    #   types:
    #
    #   * `ConfigurationItemChangeNotification` - Triggers an evaluation
    #     when AWS Config delivers a configuration item as a result of a
    #     resource change.
    #
    #   * `OversizedConfigurationItemChangeNotification` - Triggers an
    #     evaluation when AWS Config delivers an oversized configuration
    #     item. AWS Config may generate this notification type when a
    #     resource changes and the notification exceeds the maximum size
    #     allowed by Amazon SNS.
    #
    #   * `ScheduledNotification` - Triggers a periodic evaluation at the
    #     frequency specified for `MaximumExecutionFrequency`.
    #
    #   * `ConfigurationSnapshotDeliveryCompleted` - Triggers a periodic
    #     evaluation when AWS Config delivers a configuration snapshot.
    #
    #   If you want your custom rule to be triggered by configuration
    #   changes, specify two SourceDetail objects, one for
    #   `ConfigurationItemChangeNotification` and one for
    #   `OversizedConfigurationItemChangeNotification`.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The frequency at which you want AWS Config to run evaluations for a
    #   custom rule with a periodic trigger. If you specify a value for
    #   `MaximumExecutionFrequency`, then `MessageType` must use the
    #   `ScheduledNotification` value.
    #
    #   <note markdown="1"> By default, rules with a periodic trigger are evaluated every 24
    #   hours. To change the frequency, specify a valid value for the
    #   `MaximumExecutionFrequency` parameter.
    #
    #    Based on the valid value you choose, AWS Config runs evaluations
    #   once for each valid value. For example, if you choose `Three_Hours`,
    #   AWS Config runs evaluations once every three hours. In this case,
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartConfigRulesEvaluationRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["StringWithCharLimit64"],
    #       }
    #
    # @!attribute [rw] config_rule_names
    #   The list of names of AWS Config rules that you want to run
    #   evaluations for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartConfigRulesEvaluationRequest AWS API Documentation
    #
    class StartConfigRulesEvaluationRequest < Struct.new(
      :config_rule_names)
      include Aws::Structure
    end

    # The output when you start the evaluation for the specified AWS Config
    # rule.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartConfigRulesEvaluationResponse AWS API Documentation
    #
    class StartConfigRulesEvaluationResponse < Aws::EmptyStructure; end

    # The input for the StartConfigurationRecorder action.
    #
    # @note When making an API call, you may pass StartConfigurationRecorderRequest
    #   data as a hash:
    #
    #       {
    #         configuration_recorder_name: "RecorderName", # required
    #       }
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
      include Aws::Structure
    end

    # The input for the StopConfigurationRecorder action.
    #
    # @note When making an API call, you may pass StopConfigurationRecorderRequest
    #   data as a hash:
    #
    #       {
    #         configuration_recorder_name: "RecorderName", # required
    #       }
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
      include Aws::Structure
    end

  end
end
