# frozen_string_literal: true

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
      SENSITIVE = []
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
    #   The number of compliant and noncompliant AWS Config rules.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that identify a resource that is collected by AWS Config
    # aggregator, including the resource type, ID, (if available) the custom
    # resource name, the source account, and source region.
    #
    # @note When making an API call, you may pass AggregateResourceIdentifier
    #   data as a hash:
    #
    #       {
    #         source_account_id: "AccountId", # required
    #         source_region: "AwsRegion", # required
    #         resource_id: "ResourceId", # required
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #         resource_name: "ResourceName",
    #       }
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
    #   The ID of the AWS resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the AWS resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the AWS resource.
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
    #   The 12-digit AWS account ID associated with the resource.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetAggregateResourceConfigRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         resource_identifiers: [ # required
    #           {
    #             source_account_id: "AccountId", # required
    #             source_region: "AwsRegion", # required
    #             resource_id: "ResourceId", # required
    #             resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #             resource_name: "ResourceName",
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass BatchGetResourceConfigRequest
    #   data as a hash:
    #
    #       {
    #         resource_keys: [ # required
    #           {
    #             resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
    #
    # @note When making an API call, you may pass ConfigRule
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName",
    #         config_rule_arn: "StringWithCharLimit256",
    #         config_rule_id: "StringWithCharLimit64",
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
    #
    #   <note markdown="1"> The scope can be empty.
    #
    #    </note>
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] last_deactivated_time
    #   The time that you last turned off the AWS Config rule.
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
      :last_deactivated_time,
      :last_error_code,
      :last_error_message,
      :first_evaluation_started)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides options for how often AWS Config delivers configuration
    # snapshots to the Amazon S3 bucket in your delivery channel.
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
      SENSITIVE = []
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
    #   AWS service that created the configuration aggregator.
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
    #   The 12-digit AWS account ID associated with the resource.
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
    #   accoun
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
    #   initiated by any event. As of Version 1.3, the relatedEvents field
    #   is empty. You can access the [LookupEvents API][2] in the *AWS
    #   CloudTrail API Reference* to retrieve the events for the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html
    #   [2]: https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html
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
      SENSITIVE = []
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
    #           resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the conformance pack by compliance types and AWS Config rule
    # names.
    #
    # @note When making an API call, you may pass ConformancePackComplianceFilters
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["StringWithCharLimit64"],
    #         compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT
    #       }
    #
    # @!attribute [rw] config_rule_names
    #   Filters the results by AWS Config rule names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compliance_type
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
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

    # Summary includes the name and status of the conformance pack.
    #
    # @!attribute [rw] conformance_pack_name
    #   The name of the conformance pack name.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_compliance_status
    #   The status of the conformance pack. The allowed values are COMPLIANT
    #   and NON\_COMPLIANT.
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
    # collection of AWS Config rules and remediation actions that can be
    # easily deployed in an account and a region.
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
    #   Conformance pack template that is used to create a pack. The
    #   delivery bucket name should start with awsconfigconforms. For
    #   example: "Resource": "arn:aws:s3:::your\_bucket\_name/*".
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #   @return [Array<Types::ConformancePackInputParameter>]
    #
    # @!attribute [rw] last_update_requested_time
    #   Last time when conformation pack update was requested.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   AWS service that created the conformance pack.
    #   @return [String]
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
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters a conformance pack by AWS Config rule names, compliance types,
    # AWS resource types, and resource IDs.
    #
    # @note When making an API call, you may pass ConformancePackEvaluationFilters
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["StringWithCharLimit64"],
    #         compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT
    #         resource_type: "StringWithCharLimit256",
    #         resource_ids: ["StringWithCharLimit256"],
    #       }
    #
    # @!attribute [rw] config_rule_names
    #   Filters the results by AWS Config rule names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compliance_type
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
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

    # The details of a conformance pack evaluation. Provides AWS Config rule
    # and AWS resource type that was evaluated, the compliance of the
    # conformance pack, related time stamps, and supplementary information.
    #
    # @!attribute [rw] compliance_type
    #   The compliance type. The allowed values are `COMPLIANT` and
    #   `NON_COMPLIANT`.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_result_identifier
    #   Uniquely identifies an evaluation result.
    #   @return [Types::EvaluationResultIdentifier]
    #
    # @!attribute [rw] config_rule_invoked_time
    #   The time when AWS Config rule evaluated AWS resource.
    #   @return [Time]
    #
    # @!attribute [rw] result_recorded_time
    #   The time when AWS Config recorded the evaluation result.
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
    # @note When making an API call, you may pass ConformancePackInputParameter
    #   data as a hash:
    #
    #       {
    #         parameter_name: "ParameterName", # required
    #         parameter_value: "ParameterValue", # required
    #       }
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

    # Compliance information of one or more AWS Config rules within a
    # conformance pack. You can filter using AWS Config rule names and
    # compliance types.
    #
    # @!attribute [rw] config_rule_name
    #   Name of the config rule.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   Compliance of the AWS Config rule
    #
    #   The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ConformancePackRuleCompliance AWS API Documentation
    #
    class ConformancePackRuleCompliance < Struct.new(
      :config_rule_name,
      :compliance_type)
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
    #   AWS Config sets the state of the conformance pack to:
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
    #   Amazon Resource Name (ARN) of AWS CloudFormation stack.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName", # required
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConformancePackRequest
    #   data as a hash:
    #
    #       {
    #         conformance_pack_name: "ConformancePackName", # required
    #       }
    #
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The output when you delete the evaluation results for the specified
    # AWS Config rule.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteEvaluationResultsResponse AWS API Documentation
    #
    class DeleteEvaluationResultsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteOrganizationConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         organization_config_rule_name: "OrganizationConfigRuleName", # required
    #       }
    #
    # @!attribute [rw] organization_config_rule_name
    #   The name of organization config rule that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteOrganizationConfigRuleRequest AWS API Documentation
    #
    class DeleteOrganizationConfigRuleRequest < Struct.new(
      :organization_config_rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteOrganizationConformancePackRequest
    #   data as a hash:
    #
    #       {
    #         organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #       }
    #
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRemediationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         resource_type: "String",
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule for which you want to delete
    #   remediation configuration.
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

    # @note When making an API call, you may pass DeleteRemediationExceptionsRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         resource_keys: [ # required
    #           {
    #             resource_type: "StringWithCharLimit256",
    #             resource_id: "StringWithCharLimit1024",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule for which you want to delete
    #   remediation exception configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_keys
    #   An exception list of resource exception keys to be processed with
    #   the current request. AWS Config adds exception for each resource
    #   key. For example, AWS Config adds 3 exceptions for 3 resource keys.
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

    # @note When making an API call, you may pass DeleteResourceConfigRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "ResourceTypeString", # required
    #         resource_id: "ResourceId", # required
    #       }
    #
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
      SENSITIVE = []
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
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html
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
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html
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

    # @note When making an API call, you may pass DescribeComplianceByConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["ConfigRuleName"],
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
    #   The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
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
      SENSITIVE = []
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
    #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
    #   `INSUFFICIENT_DATA`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConfigRuleEvaluationStatusRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["ConfigRuleName"],
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
    #   more than the default of 150 rules.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConfigRulesRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["ConfigRuleName"],
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
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
    #   The `nextToken` string returned on a previous page that you use to
    #   get the next page of results in a paginated response.
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

    # @note When making an API call, you may pass DescribeConformancePackComplianceRequest
    #   data as a hash:
    #
    #       {
    #         conformance_pack_name: "ConformancePackName", # required
    #         filters: {
    #           config_rule_names: ["StringWithCharLimit64"],
    #           compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT
    #         },
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] conformance_pack_name
    #   Name of the conformance pack.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `ConformancePackComplianceFilters` object.
    #   @return [Types::ConformancePackComplianceFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of AWS Config rules within a conformance pack are
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

    # @note When making an API call, you may pass DescribeConformancePackStatusRequest
    #   data as a hash:
    #
    #       {
    #         conformance_pack_names: ["ConformancePackName"],
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass DescribeConformancePacksRequest
    #   data as a hash:
    #
    #       {
    #         conformance_pack_names: ["ConformancePackName"],
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] conformance_pack_names
    #   Comma-separated list of conformance pack names for which you want
    #   details. If you do not specify any names, AWS Config returns details
    #   for all your conformance packs.
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

    # @note When making an API call, you may pass DescribeOrganizationConfigRuleStatusesRequest
    #   data as a hash:
    #
    #       {
    #         organization_config_rule_names: ["StringWithCharLimit64"],
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] organization_config_rule_names
    #   The names of organization config rules for which you want status
    #   details. If you do not specify any names, AWS Config returns details
    #   for all your organization AWS Confg rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of `OrganizationConfigRuleStatuses` returned on
    #   each page. If you do no specify a number, AWS Config uses the
    #   default. The default is 100.
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

    # @note When making an API call, you may pass DescribeOrganizationConfigRulesRequest
    #   data as a hash:
    #
    #       {
    #         organization_config_rule_names: ["StringWithCharLimit64"],
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] organization_config_rule_names
    #   The names of organization config rules for which you want details.
    #   If you do not specify any names, AWS Config returns details for all
    #   your organization config rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of organization config rules returned on each
    #   page. If you do no specify a number, AWS Config uses the default.
    #   The default is 100.
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

    # @note When making an API call, you may pass DescribeOrganizationConformancePackStatusesRequest
    #   data as a hash:
    #
    #       {
    #         organization_conformance_pack_names: ["OrganizationConformancePackName"],
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] organization_conformance_pack_names
    #   The names of organization conformance packs for which you want
    #   status details. If you do not specify any names, AWS Config returns
    #   details for all your organization conformance packs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of OrganizationConformancePackStatuses returned
    #   on each page. If you do no specify a number, AWS Config uses the
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

    # @note When making an API call, you may pass DescribeOrganizationConformancePacksRequest
    #   data as a hash:
    #
    #       {
    #         organization_conformance_pack_names: ["OrganizationConformancePackName"],
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] organization_conformance_pack_names
    #   The name that you assign to an organization conformance pack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of organization config packs returned on each
    #   page. If you do no specify a number, AWS Config uses the default.
    #   The default is 100.
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

    # @note When making an API call, you may pass DescribeRemediationConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["ConfigRuleName"], # required
    #       }
    #
    # @!attribute [rw] config_rule_names
    #   A list of AWS Config rule names of remediation configurations for
    #   which you want details.
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

    # @note When making an API call, you may pass DescribeRemediationExceptionsRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         resource_keys: [
    #           {
    #             resource_type: "StringWithCharLimit256",
    #             resource_id: "StringWithCharLimit1024",
    #           },
    #         ],
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] resource_keys
    #   An exception list of resource exception keys to be processed with
    #   the current request. AWS Config adds exception for each resource
    #   key. For example, AWS Config adds 3 exceptions for 3 resource keys.
    #   @return [Array<Types::RemediationExceptionResourceKey>]
    #
    # @!attribute [rw] limit
    #   The maximum number of RemediationExceptionResourceKey returned on
    #   each page. The default is 25. If you specify 0, AWS Config uses the
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

    # @note When making an API call, you may pass DescribeRemediationExecutionStatusRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         resource_keys: [
    #           {
    #             resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #             resource_id: "ResourceId", # required
    #           },
    #         ],
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   A list of AWS Config rule names.
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
    #   page. The default is maximum. If you specify 0, AWS Config uses the
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The controls that AWS Config uses for executing remediations.
    #
    # @note When making an API call, you may pass ExecutionControls
    #   data as a hash:
    #
    #       {
    #         ssm_controls: {
    #           concurrent_execution_rate_percentage: 1,
    #           error_percentage: 1,
    #         },
    #       }
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

    # List of each of the failed delete remediation exceptions with specific
    # reasons.
    #
    # @!attribute [rw] failure_message
    #   Returns a failure message for delete remediation exception. For
    #   example, AWS Config creates an exception due to an internal error.
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

    # @note When making an API call, you may pass GetAggregateDiscoveredResourceCountsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         filters: {
    #           resource_type: "AWS::EC2::CustomerGateway", # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #           account_id: "AccountId",
    #           region: "AwsRegion",
    #         },
    #         group_by_key: "RESOURCE_TYPE", # accepts RESOURCE_TYPE, ACCOUNT_ID, AWS_REGION
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
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
    #   1000. If you specify 0, AWS Config uses the default.
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

    # @note When making an API call, you may pass GetAggregateResourceConfigRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         resource_identifier: { # required
    #           source_account_id: "AccountId", # required
    #           source_region: "AwsRegion", # required
    #           resource_id: "ResourceId", # required
    #           resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #           resource_name: "ResourceName",
    #         },
    #       }
    #
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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

    # @note When making an API call, you may pass GetConformancePackComplianceDetailsRequest
    #   data as a hash:
    #
    #       {
    #         conformance_pack_name: "ConformancePackName", # required
    #         filters: {
    #           config_rule_names: ["StringWithCharLimit64"],
    #           compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT
    #           resource_type: "StringWithCharLimit256",
    #           resource_ids: ["StringWithCharLimit256"],
    #         },
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
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
    #   you do no specify a number, AWS Config uses the default. The default
    #   is 100.
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

    # @note When making an API call, you may pass GetConformancePackComplianceSummaryRequest
    #   data as a hash:
    #
    #       {
    #         conformance_pack_names: ["ConformancePackName"], # required
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOrganizationConfigRuleDetailedStatusRequest
    #   data as a hash:
    #
    #       {
    #         organization_config_rule_name: "OrganizationConfigRuleName", # required
    #         filters: {
    #           account_id: "AccountId",
    #           member_account_rule_status: "CREATE_SUCCESSFUL", # accepts CREATE_SUCCESSFUL, CREATE_IN_PROGRESS, CREATE_FAILED, DELETE_SUCCESSFUL, DELETE_FAILED, DELETE_IN_PROGRESS, UPDATE_SUCCESSFUL, UPDATE_IN_PROGRESS, UPDATE_FAILED
    #         },
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] organization_config_rule_name
    #   The name of organization config rule for which you want status
    #   details for member accounts.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `StatusDetailFilters` object.
    #   @return [Types::StatusDetailFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of `OrganizationConfigRuleDetailedStatus`
    #   returned on each page. If you do not specify a number, AWS Config
    #   uses the default. The default is 100.
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

    # @note When making an API call, you may pass GetOrganizationConformancePackDetailedStatusRequest
    #   data as a hash:
    #
    #       {
    #         organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #         filters: {
    #           account_id: "AccountId",
    #           status: "CREATE_SUCCESSFUL", # accepts CREATE_SUCCESSFUL, CREATE_IN_PROGRESS, CREATE_FAILED, DELETE_SUCCESSFUL, DELETE_FAILED, DELETE_IN_PROGRESS, UPDATE_SUCCESSFUL, UPDATE_IN_PROGRESS, UPDATE_FAILED
    #         },
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
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
    #   returned on each page. If you do not specify a number, AWS Config
    #   uses the default. The default is 100.
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

    # The input for the GetResourceConfigHistory action.
    #
    # @note When making an API call, you may pass GetResourceConfigHistoryRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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

    # Your Amazon S3 bucket policy does not permit AWS Config to write to
    # it.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InsufficientDeliveryPolicyException AWS API Documentation
    #
    class InsufficientDeliveryPolicyException < Aws::EmptyStructure; end

    # Indicates one of the following errors:
    #
    # * For PutConfigRule, the rule cannot be created because the IAM role
    #   assigned to AWS Config lacks permissions to perform the config:Put*
    #   action.
    #
    # * For PutConfigRule, the AWS Lambda function cannot be invoked. Check
    #   the function ARN, and check the function's permissions.
    #
    # * For PutOrganizationConfigRule, organization config rule cannot be
    #   created because you do not have permissions to call IAM `GetRole`
    #   action or create a service linked role.
    #
    # * For PutConformancePack and PutOrganizationConformancePack, a
    #   conformance pack cannot be created because you do not have
    #   permissions:
    #
    #   * To call IAM `GetRole` action or create a service linked role.
    #
    #   * To read Amazon S3 bucket.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InsufficientPermissionsException AWS API Documentation
    #
    class InsufficientPermissionsException < Aws::EmptyStructure; end

    # You have provided a configuration recorder name that is not valid.
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

    # The specified next token is invalid. Specify the `nextToken` string
    # that was returned in the previous response to get the next page of
    # results.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Aws::EmptyStructure; end

    # One or more of the specified parameters are invalid. Verify that your
    # parameters are valid and try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Aws::EmptyStructure; end

    # AWS Config throws an exception if the recording group does not contain
    # a valid list of resource types. Invalid values might also be
    # incorrectly formatted.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidRecordingGroupException AWS API Documentation
    #
    class InvalidRecordingGroupException < Aws::EmptyStructure; end

    # The specified `ResultToken` is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidResultTokenException AWS API Documentation
    #
    class InvalidResultTokenException < Aws::EmptyStructure; end

    # You have provided a null or empty role ARN.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidRoleException AWS API Documentation
    #
    class InvalidRoleException < Aws::EmptyStructure; end

    # The specified Amazon S3 key prefix is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/InvalidS3KeyPrefixException AWS API Documentation
    #
    class InvalidS3KeyPrefixException < Aws::EmptyStructure; end

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

    # @note When making an API call, you may pass ListAggregateDiscoveredResourcesRequest
    #   data as a hash:
    #
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #         filters: {
    #           account_id: "AccountId",
    #           resource_id: "ResourceId",
    #           resource_name: "ResourceName",
    #           region: "AwsRegion",
    #         },
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] configuration_aggregator_name
    #   The name of the configuration aggregator.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resources that you want AWS Config to list in the
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters the results based on the `ResourceFilters` object.
    #   @return [Types::ResourceFilters]
    #
    # @!attribute [rw] limit
    #   The maximum number of resource identifiers returned on each page.
    #   The default is 100. You cannot specify a number greater than 100. If
    #   you specify 0, AWS Config uses the default.
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

    # @note When making an API call, you may pass ListDiscoveredResourcesRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
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
    #   0, AWS Config uses the default.
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

    # You have reached the limit (100,000) of active custom resource types
    # in your account. Delete unused resources using `DeleteResourceConfig`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxActiveResourcesExceededException AWS API Documentation
    #
    class MaxActiveResourcesExceededException < Aws::EmptyStructure; end

    # Failed to add the AWS Config rule because the account already contains
    # the maximum number of 150 rules. Consider deleting any deactivated
    # rules before you add new rules.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfConfigRulesExceededException AWS API Documentation
    #
    class MaxNumberOfConfigRulesExceededException < Aws::EmptyStructure; end

    # You have reached the limit of the number of recorders you can create.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfConfigurationRecordersExceededException AWS API Documentation
    #
    class MaxNumberOfConfigurationRecordersExceededException < Aws::EmptyStructure; end

    # You have reached the limit (6) of the number of conformance packs in
    # an account (6 conformance pack with 25 AWS Config rules per pack).
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

    # You have reached the limit of the number of organization config rules
    # you can create.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/MaxNumberOfOrganizationConfigRulesExceededException AWS API Documentation
    #
    class MaxNumberOfOrganizationConfigRulesExceededException < Aws::EmptyStructure; end

    # You have reached the limit (6) of the number of organization
    # conformance packs in an account (6 conformance pack with 25 AWS Config
    # rules per pack per account).
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

    # Organization config rule creation or deletion status in each member
    # account. This includes the name of the rule, the status, error code
    # and error message when the rule creation or deletion failed.
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of a member account.
    #   @return [String]
    #
    # @!attribute [rw] config_rule_name
    #   The name of config rule deployed in the member account.
    #   @return [String]
    #
    # @!attribute [rw] member_account_rule_status
    #   Indicates deployment status for config rule in the member account.
    #   When master account calls `PutOrganizationConfigRule` action for the
    #   first time, config rule status is created in the member account.
    #   When master account calls `PutOrganizationConfigRule` action for the
    #   second time, config rule status is updated in the member account.
    #   Config rule status is deleted when the master account deletes
    #   `OrganizationConfigRule` and disables service access for
    #   `config-multiaccountsetup.amazonaws.com`.
    #
    #   AWS Config sets the state of the rule to:
    #
    #   * `CREATE_SUCCESSFUL` when config rule has been created in the
    #     member account.
    #
    #   * `CREATE_IN_PROGRESS` when config rule is being created in the
    #     member account.
    #
    #   * `CREATE_FAILED` when config rule creation has failed in the member
    #     account.
    #
    #   * `DELETE_FAILED` when config rule deletion has failed in the member
    #     account.
    #
    #   * `DELETE_IN_PROGRESS` when config rule is being deleted in the
    #     member account.
    #
    #   * `DELETE_SUCCESSFUL` when config rule has been deleted in the
    #     member account.
    #
    #   * `UPDATE_SUCCESSFUL` when config rule has been updated in the
    #     member account.
    #
    #   * `UPDATE_IN_PROGRESS` when config rule is being updated in the
    #     member account.
    #
    #   * `UPDATE_FAILED` when config rule deletion has failed in the member
    #     account.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code that is returned when config rule creation or deletion
    #   failed in the member account.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message indicating that config rule account creation or
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

    # One or more AWS Config rules in the request are invalid. Verify that
    # the rule names are correct and try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchConfigRuleException AWS API Documentation
    #
    class NoSuchConfigRuleException < Aws::EmptyStructure; end

    # AWS Config rule that you passed in the filter does not exist.
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

    # You specified one or more organization config rules that do not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchOrganizationConfigRuleException AWS API Documentation
    #
    class NoSuchOrganizationConfigRuleException < Aws::EmptyStructure; end

    # AWS Config organization conformance pack that you passed in the filter
    # does not exist.
    #
    # For DeleteOrganizationConformancePack, you tried to delete an
    # organization conformance pack that does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/NoSuchOrganizationConformancePackException AWS API Documentation
    #
    class NoSuchOrganizationConformancePackException < Aws::EmptyStructure; end

    # You specified an AWS Config rule without a remediation configuration.
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

    # For PutConfigAggregator API, no permission to call
    # EnableAWSServiceAccess API.
    #
    # For all OrganizationConfigRule and OrganizationConformancePack APIs,
    # AWS Config throws an exception if APIs are called from member
    # accounts. All APIs must be called from organization master account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationAccessDeniedException AWS API Documentation
    #
    class OrganizationAccessDeniedException < Aws::EmptyStructure; end

    # This object contains regions to set up the aggregator and an IAM role
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
    #   ARN of the IAM role used to retrieve AWS Organization details
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
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Config resource cannot be created because your organization does
    # not have all features enabled.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationAllFeaturesNotEnabledException AWS API Documentation
    #
    class OrganizationAllFeaturesNotEnabledException < Aws::EmptyStructure; end

    # An organization config rule that has information about config rules
    # that AWS Config creates in member accounts.
    #
    # @!attribute [rw] organization_config_rule_name
    #   The name that you assign to organization config rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_config_rule_arn
    #   Amazon Resource Name (ARN) of organization config rule.
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
    #   A comma-separated list of accounts excluded from organization config
    #   rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_update_time
    #   The timestamp of the last update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/OrganizationConfigRule AWS API Documentation
    #
    class OrganizationConfigRule < Struct.new(
      :organization_config_rule_name,
      :organization_config_rule_arn,
      :organization_managed_rule_metadata,
      :organization_custom_rule_metadata,
      :excluded_accounts,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the status for an organization config rule in an organization.
    #
    # @!attribute [rw] organization_config_rule_name
    #   The name that you assign to organization config rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_rule_status
    #   Indicates deployment status of an organization config rule. When
    #   master account calls PutOrganizationConfigRule action for the first
    #   time, config rule status is created in all the member accounts. When
    #   master account calls PutOrganizationConfigRule action for the second
    #   time, config rule status is updated in all the member accounts.
    #   Additionally, config rule status is updated when one or more member
    #   accounts join or leave an organization. Config rule status is
    #   deleted when the master account deletes OrganizationConfigRule in
    #   all the member accounts and disables service access for
    #   `config-multiaccountsetup.amazonaws.com`.
    #
    #   AWS Config sets the state of the rule to:
    #
    #   * `CREATE_SUCCESSFUL` when an organization config rule has been
    #     successfully created in all the member accounts.
    #
    #   * `CREATE_IN_PROGRESS` when an organization config rule creation is
    #     in progress.
    #
    #   * `CREATE_FAILED` when an organization config rule creation failed
    #     in one or more member accounts within that organization.
    #
    #   * `DELETE_FAILED` when an organization config rule deletion failed
    #     in one or more member accounts within that organization.
    #
    #   * `DELETE_IN_PROGRESS` when an organization config rule deletion is
    #     in progress.
    #
    #   * `DELETE_SUCCESSFUL` when an organization config rule has been
    #     successfully deleted from all the member accounts.
    #
    #   * `UPDATE_SUCCESSFUL` when an organization config rule has been
    #     successfully updated in all the member accounts.
    #
    #   * `UPDATE_IN_PROGRESS` when an organization config rule update is in
    #     progress.
    #
    #   * `UPDATE_FAILED` when an organization config rule update failed in
    #     one or more member accounts within that organization.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code that is returned when organization config rule
    #   creation or deletion has failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message indicating that organization config rule creation
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
    # conformance packs that AWS Config creates in member accounts.
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
    #   Location of an Amazon S3 bucket where AWS Config can deliver
    #   evaluation results and conformance pack template that is used to
    #   create a pack.
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_key_prefix
    #   Any folder structure you want to add to an Amazon S3 bucket.
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
    #   account. When master account calls `PutOrganizationConformancePack`
    #   action for the first time, conformance pack status is created in the
    #   member account. When master account calls
    #   `PutOrganizationConformancePack` action for the second time,
    #   conformance pack status is updated in the member account.
    #   Conformance pack status is deleted when the master account deletes
    #   `OrganizationConformancePack` and disables service access for
    #   `config-multiaccountsetup.amazonaws.com`.
    #
    #   AWS Config sets the state of the conformance pack to:
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
    #   When master account calls PutOrganizationConformancePack for the
    #   first time, conformance pack status is created in all the member
    #   accounts. When master account calls PutOrganizationConformancePack
    #   for the second time, conformance pack status is updated in all the
    #   member accounts. Additionally, conformance pack status is updated
    #   when one or more member accounts join or leave an organization.
    #   Conformance pack status is deleted when the master account deletes
    #   OrganizationConformancePack in all the member accounts and disables
    #   service access for `config-multiaccountsetup.amazonaws.com`.
    #
    #   AWS Config sets the state of the conformance pack to:
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

    # An object that specifies organization custom rule metadata such as
    # resource type, resource ID of AWS resource, Lamdba function ARN, and
    # organization trigger types that trigger AWS Config to evaluate your
    # AWS resources against a rule. It also provides the frequency with
    # which you want AWS Config to run evaluations for the rule if the
    # trigger type is periodic.
    #
    # @note When making an API call, you may pass OrganizationCustomRuleMetadata
    #   data as a hash:
    #
    #       {
    #         description: "StringWithCharLimit256Min0",
    #         lambda_function_arn: "StringWithCharLimit256", # required
    #         organization_config_rule_trigger_types: ["ConfigurationItemChangeNotification"], # required, accepts ConfigurationItemChangeNotification, OversizedConfigurationItemChangeNotification, ScheduledNotification
    #         input_parameters: "StringWithCharLimit2048",
    #         maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #         resource_types_scope: ["StringWithCharLimit256"],
    #         resource_id_scope: "StringWithCharLimit768",
    #         tag_key_scope: "StringWithCharLimit128",
    #         tag_value_scope: "StringWithCharLimit256",
    #       }
    #
    # @!attribute [rw] description
    #   The description that you provide for organization config rule.
    #   @return [String]
    #
    # @!attribute [rw] lambda_function_arn
    #   The lambda function ARN.
    #   @return [String]
    #
    # @!attribute [rw] organization_config_rule_trigger_types
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_parameters
    #   A string, in JSON format, that is passed to organization config rule
    #   Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The maximum frequency with which AWS Config runs evaluations for a
    #   rule. Your custom rule is triggered when AWS Config delivers the
    #   configuration snapshot. For more information, see
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
    #   The type of the AWS resource that was evaluated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_id_scope
    #   The ID of the AWS resource that was evaluated.
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

    # An object that specifies organization managed rule metadata such as
    # resource type and ID of AWS resource along with the rule identifier.
    # It also provides the frequency with which you want AWS Config to run
    # evaluations for the rule if the trigger type is periodic.
    #
    # @note When making an API call, you may pass OrganizationManagedRuleMetadata
    #   data as a hash:
    #
    #       {
    #         description: "StringWithCharLimit256Min0",
    #         rule_identifier: "StringWithCharLimit256", # required
    #         input_parameters: "StringWithCharLimit2048",
    #         maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #         resource_types_scope: ["StringWithCharLimit256"],
    #         resource_id_scope: "StringWithCharLimit768",
    #         tag_key_scope: "StringWithCharLimit128",
    #         tag_value_scope: "StringWithCharLimit256",
    #       }
    #
    # @!attribute [rw] description
    #   The description that you provide for organization config rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_identifier
    #   For organization config managed rules, a predefined identifier from
    #   a list. For example, `IAM_PASSWORD_POLICY` is a managed rule. To
    #   reference a managed rule, see [Using AWS Managed Config Rules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html
    #   @return [String]
    #
    # @!attribute [rw] input_parameters
    #   A string, in JSON format, that is passed to organization config rule
    #   Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] maximum_execution_frequency
    #   The maximum frequency with which AWS Config runs evaluations for a
    #   rule. You are using an AWS managed rule that is triggered at a
    #   periodic frequency.
    #
    #   <note markdown="1"> By default, rules with a periodic trigger are evaluated every 24
    #   hours. To change the frequency, specify a valid value for the
    #   `MaximumExecutionFrequency` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_types_scope
    #   The type of the AWS resource that was evaluated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_id_scope
    #   The ID of the AWS resource that was evaluated.
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
    # @note When making an API call, you may pass OrganizationResourceDetailedStatusFilters
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId",
    #         status: "CREATE_SUCCESSFUL", # accepts CREATE_SUCCESSFUL, CREATE_IN_PROGRESS, CREATE_FAILED, DELETE_SUCCESSFUL, DELETE_FAILED, DELETE_IN_PROGRESS, UPDATE_SUCCESSFUL, UPDATE_IN_PROGRESS, UPDATE_FAILED
    #       }
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of the member account within an
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates deployment status for conformance pack in a member
    #   account. When master account calls `PutOrganizationConformancePack`
    #   action for the first time, conformance pack status is created in the
    #   member account. When master account calls
    #   `PutOrganizationConformancePack` action for the second time,
    #   conformance pack status is updated in the member account.
    #   Conformance pack status is deleted when the master account deletes
    #   `OrganizationConformancePack` and disables service access for
    #   `config-multiaccountsetup.amazonaws.com`.
    #
    #   AWS Config sets the state of the conformance pack to:
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

    # @note When making an API call, you may pass PutAggregationAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         authorized_account_id: "AccountId", # required
    #         authorized_aws_region: "AwsRegion", # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
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

    # @note When making an API call, you may pass PutConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         config_rule: { # required
    #           config_rule_name: "ConfigRuleName",
    #           config_rule_arn: "StringWithCharLimit256",
    #           config_rule_id: "StringWithCharLimit64",
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
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
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
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
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
    #             resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutConformancePackRequest
    #   data as a hash:
    #
    #       {
    #         conformance_pack_name: "ConformancePackName", # required
    #         template_s3_uri: "TemplateS3Uri",
    #         template_body: "TemplateBody",
    #         delivery_s3_bucket: "DeliveryS3Bucket",
    #         delivery_s3_key_prefix: "DeliveryS3KeyPrefix",
    #         conformance_pack_input_parameters: [
    #           {
    #             parameter_name: "ParameterName", # required
    #             parameter_value: "ParameterValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] conformance_pack_name
    #   Name of the conformance pack you want to create.
    #   @return [String]
    #
    # @!attribute [rw] template_s3_uri
    #   Location of file containing the template body
    #   (`s3://bucketname/prefix`). The uri must point to the conformance
    #   pack template (max size: 300 KB) that is located in an Amazon S3
    #   bucket in the same region as the conformance pack.
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
    #
    #   <note markdown="1"> You can only use a YAML template with one resource type, that is,
    #   config rule and a remediation action.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_bucket
    #   AWS Config stores intermediate files while processing conformance
    #   pack template.
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #   @return [Array<Types::ConformancePackInputParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConformancePackRequest AWS API Documentation
    #
    class PutConformancePackRequest < Struct.new(
      :conformance_pack_name,
      :template_s3_uri,
      :template_body,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters)
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
      SENSITIVE = []
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

    # @note When making an API call, you may pass PutOrganizationConfigRuleRequest
    #   data as a hash:
    #
    #       {
    #         organization_config_rule_name: "OrganizationConfigRuleName", # required
    #         organization_managed_rule_metadata: {
    #           description: "StringWithCharLimit256Min0",
    #           rule_identifier: "StringWithCharLimit256", # required
    #           input_parameters: "StringWithCharLimit2048",
    #           maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #           resource_types_scope: ["StringWithCharLimit256"],
    #           resource_id_scope: "StringWithCharLimit768",
    #           tag_key_scope: "StringWithCharLimit128",
    #           tag_value_scope: "StringWithCharLimit256",
    #         },
    #         organization_custom_rule_metadata: {
    #           description: "StringWithCharLimit256Min0",
    #           lambda_function_arn: "StringWithCharLimit256", # required
    #           organization_config_rule_trigger_types: ["ConfigurationItemChangeNotification"], # required, accepts ConfigurationItemChangeNotification, OversizedConfigurationItemChangeNotification, ScheduledNotification
    #           input_parameters: "StringWithCharLimit2048",
    #           maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #           resource_types_scope: ["StringWithCharLimit256"],
    #           resource_id_scope: "StringWithCharLimit768",
    #           tag_key_scope: "StringWithCharLimit128",
    #           tag_value_scope: "StringWithCharLimit256",
    #         },
    #         excluded_accounts: ["AccountId"],
    #       }
    #
    # @!attribute [rw] organization_config_rule_name
    #   The name that you assign to an organization config rule.
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
    #   A comma-separated list of accounts that you want to exclude from an
    #   organization config rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutOrganizationConfigRuleRequest AWS API Documentation
    #
    class PutOrganizationConfigRuleRequest < Struct.new(
      :organization_config_rule_name,
      :organization_managed_rule_metadata,
      :organization_custom_rule_metadata,
      :excluded_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_config_rule_arn
    #   The Amazon Resource Name (ARN) of an organization config rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutOrganizationConfigRuleResponse AWS API Documentation
    #
    class PutOrganizationConfigRuleResponse < Struct.new(
      :organization_config_rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutOrganizationConformancePackRequest
    #   data as a hash:
    #
    #       {
    #         organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #         template_s3_uri: "TemplateS3Uri",
    #         template_body: "TemplateBody",
    #         delivery_s3_bucket: "DeliveryS3Bucket",
    #         delivery_s3_key_prefix: "DeliveryS3KeyPrefix",
    #         conformance_pack_input_parameters: [
    #           {
    #             parameter_name: "ParameterName", # required
    #             parameter_value: "ParameterValue", # required
    #           },
    #         ],
    #         excluded_accounts: ["AccountId"],
    #       }
    #
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
    #   Location of an Amazon S3 bucket where AWS Config can deliver
    #   evaluation results. AWS Config stores intermediate files while
    #   processing conformance pack template.
    #
    #   The delivery bucket name should start with awsconfigconforms. For
    #   example: "Resource": "arn:aws:s3:::your\_bucket\_name/*". For
    #   more information, see [Permissions for cross account bucket
    #   access][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/conformance-pack-organization-apis.html
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #   @return [Array<Types::ConformancePackInputParameter>]
    #
    # @!attribute [rw] excluded_accounts
    #   A list of AWS accounts to be excluded from an organization
    #   conformance pack while deploying a conformance pack.
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

    # @note When making an API call, you may pass PutRemediationConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         remediation_configurations: [ # required
    #           {
    #             config_rule_name: "ConfigRuleName", # required
    #             target_type: "SSM_DOCUMENT", # required, accepts SSM_DOCUMENT
    #             target_id: "StringWithCharLimit256", # required
    #             target_version: "String",
    #             parameters: {
    #               "StringWithCharLimit256" => {
    #                 resource_value: {
    #                   value: "RESOURCE_ID", # required, accepts RESOURCE_ID
    #                 },
    #                 static_value: {
    #                   values: ["StringWithCharLimit256"], # required
    #                 },
    #               },
    #             },
    #             resource_type: "String",
    #             automatic: false,
    #             execution_controls: {
    #               ssm_controls: {
    #                 concurrent_execution_rate_percentage: 1,
    #                 error_percentage: 1,
    #               },
    #             },
    #             maximum_automatic_attempts: 1,
    #             retry_attempt_seconds: 1,
    #             arn: "StringWithCharLimit1024",
    #             created_by_service: "StringWithCharLimit1024",
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass PutRemediationExceptionsRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         resource_keys: [ # required
    #           {
    #             resource_type: "StringWithCharLimit256",
    #             resource_id: "StringWithCharLimit1024",
    #           },
    #         ],
    #         message: "StringWithCharLimit1024",
    #         expiration_time: Time.now,
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule for which you want to create
    #   remediation exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_keys
    #   An exception list of resource exception keys to be processed with
    #   the current request. AWS Config adds exception for each resource
    #   key. For example, AWS Config adds 3 exceptions for 3 resource keys.
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

    # @note When making an API call, you may pass PutResourceConfigRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "ResourceTypeString", # required
    #         schema_version_id: "SchemaVersionId", # required
    #         resource_id: "ResourceId", # required
    #         resource_name: "ResourceName",
    #         configuration: "Configuration", # required
    #         tags: {
    #           "Name" => "Value",
    #         },
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of the resource. The custom resource type must be
    #   registered with AWS CloudFormation.
    #
    #   <note markdown="1"> You cannot use the organization names “aws”, “amzn”, “amazon”,
    #   “alexa”, “custom” with custom resource types. It is the first part
    #   of the ResourceType up to the first ::.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] schema_version_id
    #   Version of the schema registered for the ResourceType in AWS
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
    #   must match the schema registered with AWS CloudFormation.
    #
    #   <note markdown="1"> The configuration JSON must not exceed 64 KB.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the resource.
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
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources
    # [2]: https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html
    #
    # @note When making an API call, you may pass RecordingGroup
    #   data as a hash:
    #
    #       {
    #         all_supported: false,
    #         include_global_resource_types: false,
    #         resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RecordingGroup AWS API Documentation
    #
    class RecordingGroup < Struct.new(
      :all_supported,
      :include_global_resource_types,
      :resource_types)
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
    # @note When making an API call, you may pass RemediationConfiguration
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         target_type: "SSM_DOCUMENT", # required, accepts SSM_DOCUMENT
    #         target_id: "StringWithCharLimit256", # required
    #         target_version: "String",
    #         parameters: {
    #           "StringWithCharLimit256" => {
    #             resource_value: {
    #               value: "RESOURCE_ID", # required, accepts RESOURCE_ID
    #             },
    #             static_value: {
    #               values: ["StringWithCharLimit256"], # required
    #             },
    #           },
    #         },
    #         resource_type: "String",
    #         automatic: false,
    #         execution_controls: {
    #           ssm_controls: {
    #             concurrent_execution_rate_percentage: 1,
    #             error_percentage: 1,
    #           },
    #         },
    #         maximum_automatic_attempts: 1,
    #         retry_attempt_seconds: 1,
    #         arn: "StringWithCharLimit1024",
    #         created_by_service: "StringWithCharLimit1024",
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The name of the AWS Config rule.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the target. Target executes remediation. For example,
    #   SSM document.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   Target ID is the name of the public document.
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
    #   RetryAttemptsSeconds as 50 seconds, AWS Config will put a
    #   RemediationException on your behalf for the failing resource after
    #   the 5th failed attempt within 50 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_attempt_seconds
    #   Maximum time in seconds that AWS Config runs auto-remediation. If
    #   you do not select a number, the default is 60 seconds.
    #
    #   For example, if you specify RetryAttemptsSeconds as 50 seconds and
    #   MaximumAutomaticAttempts as 5, AWS Config will run auto-remediations
    #   5 times within 50 seconds before throwing an exception.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) of remediation configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_by_service
    #   Name of the service that owns the service linked rule, if
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
    #   The name of the AWS Config rule.
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

    # The details that identify a resource within AWS Config, including the
    # resource type and resource ID.
    #
    # @note When making an API call, you may pass RemediationExceptionResourceKey
    #   data as a hash:
    #
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         resource_id: "StringWithCharLimit1024",
    #       }
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
    #   The details that identify a resource within AWS Config, including
    #   the resource type and resource ID.
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
    # AWS Systems Manager or wait and try again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/RemediationInProgressException AWS API Documentation
    #
    class RemediationInProgressException < Aws::EmptyStructure; end

    # The value is either a dynamic (resource) value or a static value. You
    # must select either a dynamic value or a static value.
    #
    # @note When making an API call, you may pass RemediationParameterValue
    #   data as a hash:
    #
    #       {
    #         resource_value: {
    #           value: "RESOURCE_ID", # required, accepts RESOURCE_ID
    #         },
    #         static_value: {
    #           values: ["StringWithCharLimit256"], # required
    #         },
    #       }
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
    # @note When making an API call, you may pass ResourceCountFilters
    #   data as a hash:
    #
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #         account_id: "AccountId",
    #         region: "AwsRegion",
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of the AWS resource.
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

    # Filters the results by resource account ID, region, resource ID, and
    # resource name.
    #
    # @note When making an API call, you may pass ResourceFilters
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId",
    #         resource_id: "ResourceId",
    #         resource_name: "ResourceName",
    #         region: "AwsRegion",
    #       }
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You see this exception in the following cases:
    #
    # * For DeleteConfigRule, AWS Config is deleting this rule. Try your
    #   request again later.
    #
    # * For DeleteConfigRule, the rule is deleting your evaluation results.
    #   Try your request again later.
    #
    # * For DeleteConfigRule, a remediation action is associated with the
    #   rule and AWS Config cannot delete this rule. Delete the remediation
    #   action associated with the rule before deleting the rule and try
    #   your request again later.
    #
    # * For PutConfigOrganizationRule, organization config rule deletion is
    #   in progress. Try your request again later.
    #
    # * For DeleteOrganizationConfigRule, organization config rule creation
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

    # The details that identify a resource within AWS Config, including the
    # resource type and resource ID.
    #
    # @note When making an API call, you may pass ResourceKey
    #   data as a hash:
    #
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
    # @note When making an API call, you may pass ResourceValue
    #   data as a hash:
    #
    #       {
    #         value: "RESOURCE_ID", # required, accepts RESOURCE_ID
    #       }
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SelectAggregateResourceConfigRequest
    #   data as a hash:
    #
    #       {
    #         expression: "Expression", # required
    #         configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #         limit: 1,
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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
    #   The maximum number of query results returned on each page. AWS
    #   Config also allows the Limit request parameter.
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

    # @note When making an API call, you may pass SelectResourceConfigRequest
    #   data as a hash:
    #
    #       {
    #         expression: "Expression", # required
    #         limit: 1,
    #         next_token: "NextToken",
    #       }
    #
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
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Systems Manager (SSM) specific remediation controls.
    #
    # @note When making an API call, you may pass SsmControls
    #   data as a hash:
    #
    #       {
    #         concurrent_execution_rate_percentage: 1,
    #         error_percentage: 1,
    #       }
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

    # @note When making an API call, you may pass StartConfigRulesEvaluationRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_names: ["ConfigRuleName"],
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartRemediationExecutionRequest
    #   data as a hash:
    #
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         resource_keys: [ # required
    #           {
    #             resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #             resource_id: "ResourceId", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] config_rule_name
    #   The list of names of AWS Config rules that you want to run
    #   remediation execution for.
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

    # The static value of the resource.
    #
    # @note When making an API call, you may pass StaticValue
    #   data as a hash:
    #
    #       {
    #         values: ["StringWithCharLimit256"], # required
    #       }
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
    # account ID or status type for an organization config rule.
    #
    # @note When making an API call, you may pass StatusDetailFilters
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId",
    #         member_account_rule_status: "CREATE_SUCCESSFUL", # accepts CREATE_SUCCESSFUL, CREATE_IN_PROGRESS, CREATE_FAILED, DELETE_SUCCESSFUL, DELETE_FAILED, DELETE_IN_PROGRESS, UPDATE_SUCCESSFUL, UPDATE_IN_PROGRESS, UPDATE_FAILED
    #       }
    #
    # @!attribute [rw] account_id
    #   The 12-digit account ID of the member account within an
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] member_account_rule_status
    #   Indicates deployment status for config rule in the member account.
    #   When master account calls `PutOrganizationConfigRule` action for the
    #   first time, config rule status is created in the member account.
    #   When master account calls `PutOrganizationConfigRule` action for the
    #   second time, config rule status is updated in the member account.
    #   Config rule status is deleted when the master account deletes
    #   `OrganizationConfigRule` and disables service access for
    #   `config-multiaccountsetup.amazonaws.com`.
    #
    #   AWS Config sets the state of the rule to:
    #
    #   * `CREATE_SUCCESSFUL` when config rule has been created in the
    #     member account.
    #
    #   * `CREATE_IN_PROGRESS` when config rule is being created in the
    #     member account.
    #
    #   * `CREATE_FAILED` when config rule creation has failed in the member
    #     account.
    #
    #   * `DELETE_FAILED` when config rule deletion has failed in the member
    #     account.
    #
    #   * `DELETE_IN_PROGRESS` when config rule is being deleted in the
    #     member account.
    #
    #   * `DELETE_SUCCESSFUL` when config rule has been deleted in the
    #     member account.
    #
    #   * `UPDATE_SUCCESSFUL` when config rule has been updated in the
    #     member account.
    #
    #   * `UPDATE_IN_PROGRESS` when config rule is being updated in the
    #     member account.
    #
    #   * `UPDATE_FAILED` when config rule deletion has failed in the member
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The tags for the resource. The metadata that you apply to a resource
    # to help you categorize and organize them. Each tag consists of a key
    # and an optional value, both of which you define. Tag keys can have a
    # maximum character length of 128 characters, and tag values can have a
    # maximum length of 256 characters.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
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

    # You have reached the limit of the number of tags you can use. You have
    # more than 50 tags.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ValidationException AWS API Documentation
    #
    class ValidationException < Aws::EmptyStructure; end

  end
end
