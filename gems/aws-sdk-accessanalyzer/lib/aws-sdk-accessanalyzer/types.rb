# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AccessAnalyzer
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the analyzed resource.
    #
    # @!attribute [rw] actions
    #   The actions that an external principal is granted permission to use
    #   by the policy that generated the finding.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analyzed_at
    #   The time at which the resource was analyzed.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The time at which the finding was created.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   An error message.
    #   @return [String]
    #
    # @!attribute [rw] is_public
    #   Indicates whether the policy that generated the finding grants
    #   public access to the resource.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that was analyzed.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_account
    #   The AWS account ID that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was analyzed.
    #   @return [String]
    #
    # @!attribute [rw] shared_via
    #   Indicates how the access that generated the finding is granted. This
    #   is populated for Amazon S3 bucket findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current status of the finding generated from the analyzed
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the finding was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/AnalyzedResource AWS API Documentation
    #
    class AnalyzedResource < Struct.new(
      :actions,
      :analyzed_at,
      :created_at,
      :error,
      :is_public,
      :resource_arn,
      :resource_owner_account,
      :resource_type,
      :shared_via,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the ARN of the analyzed resource.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the analyzed resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_account
    #   The AWS account ID that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that was analyzed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/AnalyzedResourceSummary AWS API Documentation
    #
    class AnalyzedResourceSummary < Struct.new(
      :resource_arn,
      :resource_owner_account,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the analyzer.
    #
    # @!attribute [rw] arn
    #   The ARN of the analyzer.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   A timestamp for the time at which the analyzer was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_resource_analyzed
    #   The resource that was most recently analyzed by the analyzer.
    #   @return [String]
    #
    # @!attribute [rw] last_resource_analyzed_at
    #   The time at which the most recently analyzed resource was analyzed.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the analyzer.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the analyzer. An `Active` analyzer successfully
    #   monitors supported resources and generates new findings. The
    #   analyzer is `Disabled` when a user action, such as removing trusted
    #   access for IAM Access Analyzer from AWS Organizations, causes the
    #   analyzer to stop generating new findings. The status is `Creating`
    #   when the analyzer creation is in progress and `Failed` when the
    #   analyzer creation has failed.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The `statusReason` provides more details about the current status of
    #   the analyzer. For example, if the creation for the analyzer fails, a
    #   `Failed` status is displayed. For an analyzer with organization as
    #   the type, this failure can be due to an issue with creating the
    #   service-linked roles required in the member accounts of the AWS
    #   organization.
    #   @return [Types::StatusReason]
    #
    # @!attribute [rw] tags
    #   The tags added to the analyzer.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of analyzer, which corresponds to the zone of trust chosen
    #   for the analyzer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/AnalyzerSummary AWS API Documentation
    #
    class AnalyzerSummary < Struct.new(
      :arn,
      :created_at,
      :last_resource_analyzed,
      :last_resource_analyzed_at,
      :name,
      :status,
      :status_reason,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retroactively applies an archive rule.
    #
    # @note When making an API call, you may pass ApplyArchiveRuleRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_arn: "AnalyzerArn", # required
    #         client_token: "String",
    #         rule_name: "Name", # required
    #       }
    #
    # @!attribute [rw] analyzer_arn
    #   The Amazon resource name (ARN) of the analyzer.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ApplyArchiveRuleRequest AWS API Documentation
    #
    class ApplyArchiveRuleRequest < Struct.new(
      :analyzer_arn,
      :client_token,
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an archive rule.
    #
    # @!attribute [rw] created_at
    #   The time at which the archive rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] filter
    #   A filter used to define the archive rule.
    #   @return [Hash<String,Types::Criterion>]
    #
    # @!attribute [rw] rule_name
    #   The name of the archive rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the archive rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ArchiveRuleSummary AWS API Documentation
    #
    class ArchiveRuleSummary < Struct.new(
      :created_at,
      :filter,
      :rule_name,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflict exception error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates an analyzer.
    #
    # @note When making an API call, you may pass CreateAnalyzerRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_name: "Name", # required
    #         archive_rules: [
    #           {
    #             filter: { # required
    #               "String" => {
    #                 contains: ["String"],
    #                 eq: ["String"],
    #                 exists: false,
    #                 neq: ["String"],
    #               },
    #             },
    #             rule_name: "Name", # required
    #           },
    #         ],
    #         client_token: "String",
    #         tags: {
    #           "String" => "String",
    #         },
    #         type: "ACCOUNT", # required, accepts ACCOUNT, ORGANIZATION
    #       }
    #
    # @!attribute [rw] analyzer_name
    #   The name of the analyzer to create.
    #   @return [String]
    #
    # @!attribute [rw] archive_rules
    #   Specifies the archive rules to add for the analyzer. Archive rules
    #   automatically archive findings that meet the criteria you define for
    #   the rule.
    #   @return [Array<Types::InlineArchiveRule>]
    #
    # @!attribute [rw] client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the analyzer.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of analyzer to create. Only ACCOUNT analyzers are
    #   supported. You can create only one analyzer per account per Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/CreateAnalyzerRequest AWS API Documentation
    #
    class CreateAnalyzerRequest < Struct.new(
      :analyzer_name,
      :archive_rules,
      :client_token,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request to create an analyzer.
    #
    # @!attribute [rw] arn
    #   The ARN of the analyzer that was created by the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/CreateAnalyzerResponse AWS API Documentation
    #
    class CreateAnalyzerResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates an archive rule.
    #
    # @note When making an API call, you may pass CreateArchiveRuleRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_name: "Name", # required
    #         client_token: "String",
    #         filter: { # required
    #           "String" => {
    #             contains: ["String"],
    #             eq: ["String"],
    #             exists: false,
    #             neq: ["String"],
    #           },
    #         },
    #         rule_name: "Name", # required
    #       }
    #
    # @!attribute [rw] analyzer_name
    #   The name of the created analyzer.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The criteria for the rule.
    #   @return [Hash<String,Types::Criterion>]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule to create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/CreateArchiveRuleRequest AWS API Documentation
    #
    class CreateArchiveRuleRequest < Struct.new(
      :analyzer_name,
      :client_token,
      :filter,
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria to use in the filter that defines the archive rule.
    #
    # @note When making an API call, you may pass Criterion
    #   data as a hash:
    #
    #       {
    #         contains: ["String"],
    #         eq: ["String"],
    #         exists: false,
    #         neq: ["String"],
    #       }
    #
    # @!attribute [rw] contains
    #   A "contains" operator to match for the filter used to create the
    #   rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] eq
    #   An "equals" operator to match for the filter used to create the
    #   rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exists
    #   An "exists" operator to match for the filter used to create the
    #   rule.
    #   @return [Boolean]
    #
    # @!attribute [rw] neq
    #   A "not equals" operator to match for the filter used to create the
    #   rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/Criterion AWS API Documentation
    #
    class Criterion < Struct.new(
      :contains,
      :eq,
      :exists,
      :neq)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes an analyzer.
    #
    # @note When making an API call, you may pass DeleteAnalyzerRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_name: "Name", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] analyzer_name
    #   The name of the analyzer to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/DeleteAnalyzerRequest AWS API Documentation
    #
    class DeleteAnalyzerRequest < Struct.new(
      :analyzer_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes an archive rule.
    #
    # @note When making an API call, you may pass DeleteArchiveRuleRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_name: "Name", # required
    #         client_token: "String",
    #         rule_name: "Name", # required
    #       }
    #
    # @!attribute [rw] analyzer_name
    #   The name of the analyzer that associated with the archive rule to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/DeleteArchiveRuleRequest AWS API Documentation
    #
    class DeleteArchiveRuleRequest < Struct.new(
      :analyzer_name,
      :client_token,
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a finding.
    #
    # @!attribute [rw] action
    #   The action in the analyzed policy statement that an external
    #   principal has permission to use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analyzed_at
    #   The time at which the resource was analyzed.
    #   @return [Time]
    #
    # @!attribute [rw] condition
    #   The condition in the analyzed policy statement that resulted in a
    #   finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The time at which the finding was generated.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   An error.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the finding.
    #   @return [String]
    #
    # @!attribute [rw] is_public
    #   Indicates whether the policy that generated the finding allows
    #   public access to the resource.
    #   @return [Boolean]
    #
    # @!attribute [rw] principal
    #   The external principal that access to a resource within the zone of
    #   trust.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource
    #   The resource that an external principal has access to.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_account
    #   The AWS account ID that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource reported in the finding.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the finding. This indicates how the access that
    #   generated the finding is granted. It is populated for Amazon S3
    #   bucket findings.
    #   @return [Array<Types::FindingSource>]
    #
    # @!attribute [rw] status
    #   The current status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the finding was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :action,
      :analyzed_at,
      :condition,
      :created_at,
      :error,
      :id,
      :is_public,
      :principal,
      :resource,
      :resource_owner_account,
      :resource_type,
      :sources,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of the finding. This indicates how the access that
    # generated the finding is granted. It is populated for Amazon S3 bucket
    # findings.
    #
    # @!attribute [rw] detail
    #   Includes details about how the access that generated the finding is
    #   granted. This is populated for Amazon S3 bucket findings.
    #   @return [Types::FindingSourceDetail]
    #
    # @!attribute [rw] type
    #   Indicates the type of access that generated the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/FindingSource AWS API Documentation
    #
    class FindingSource < Struct.new(
      :detail,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes details about how the access that generated the finding is
    # granted. This is populated for Amazon S3 bucket findings.
    #
    # @!attribute [rw] access_point_arn
    #   The ARN of the access point that generated the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/FindingSourceDetail AWS API Documentation
    #
    class FindingSourceDetail < Struct.new(
      :access_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a finding.
    #
    # @!attribute [rw] action
    #   The action in the analyzed policy statement that an external
    #   principal has permission to use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analyzed_at
    #   The time at which the resource-based policy that generated the
    #   finding was analyzed.
    #   @return [Time]
    #
    # @!attribute [rw] condition
    #   The condition in the analyzed policy statement that resulted in a
    #   finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The time at which the finding was created.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   The error that resulted in an Error finding.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the finding.
    #   @return [String]
    #
    # @!attribute [rw] is_public
    #   Indicates whether the finding reports a resource that has a policy
    #   that allows public access.
    #   @return [Boolean]
    #
    # @!attribute [rw] principal
    #   The external principal that has access to a resource within the zone
    #   of trust.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource
    #   The resource that the external principal has access to.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_account
    #   The AWS account ID that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that the external principal has access to.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the finding. This indicates how the access that
    #   generated the finding is granted. It is populated for Amazon S3
    #   bucket findings.
    #   @return [Array<Types::FindingSource>]
    #
    # @!attribute [rw] status
    #   The status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the finding was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/FindingSummary AWS API Documentation
    #
    class FindingSummary < Struct.new(
      :action,
      :analyzed_at,
      :condition,
      :created_at,
      :error,
      :id,
      :is_public,
      :principal,
      :resource,
      :resource_owner_account,
      :resource_type,
      :sources,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves an analyzed resource.
    #
    # @note When making an API call, you may pass GetAnalyzedResourceRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_arn: "AnalyzerArn", # required
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] analyzer_arn
    #   The ARN of the analyzer to retrieve information from.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to retrieve information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetAnalyzedResourceRequest AWS API Documentation
    #
    class GetAnalyzedResourceRequest < Struct.new(
      :analyzer_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @!attribute [rw] resource
    #   An `AnalyedResource` object that contains information that Access
    #   Analyzer found when it analyzed the resource.
    #   @return [Types::AnalyzedResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetAnalyzedResourceResponse AWS API Documentation
    #
    class GetAnalyzedResourceResponse < Struct.new(
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves an analyzer.
    #
    # @note When making an API call, you may pass GetAnalyzerRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_name: "Name", # required
    #       }
    #
    # @!attribute [rw] analyzer_name
    #   The name of the analyzer retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetAnalyzerRequest AWS API Documentation
    #
    class GetAnalyzerRequest < Struct.new(
      :analyzer_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @!attribute [rw] analyzer
    #   An `AnalyzerSummary` object that contains information about the
    #   analyzer.
    #   @return [Types::AnalyzerSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetAnalyzerResponse AWS API Documentation
    #
    class GetAnalyzerResponse < Struct.new(
      :analyzer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves an archive rule.
    #
    # @note When making an API call, you may pass GetArchiveRuleRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_name: "Name", # required
    #         rule_name: "Name", # required
    #       }
    #
    # @!attribute [rw] analyzer_name
    #   The name of the analyzer to retrieve rules from.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetArchiveRuleRequest AWS API Documentation
    #
    class GetArchiveRuleRequest < Struct.new(
      :analyzer_name,
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @!attribute [rw] archive_rule
    #   Contains information about an archive rule.
    #   @return [Types::ArchiveRuleSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetArchiveRuleResponse AWS API Documentation
    #
    class GetArchiveRuleResponse < Struct.new(
      :archive_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves a finding.
    #
    # @note When making an API call, you may pass GetFindingRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_arn: "AnalyzerArn", # required
    #         id: "FindingId", # required
    #       }
    #
    # @!attribute [rw] analyzer_arn
    #   The ARN of the analyzer that generated the finding.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the finding to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetFindingRequest AWS API Documentation
    #
    class GetFindingRequest < Struct.new(
      :analyzer_arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @!attribute [rw] finding
    #   A `finding` object that contains finding details.
    #   @return [Types::Finding]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetFindingResponse AWS API Documentation
    #
    class GetFindingResponse < Struct.new(
      :finding)
      SENSITIVE = []
      include Aws::Structure
    end

    # An criterion statement in an archive rule. Each archive rule may have
    # multiple criteria.
    #
    # @note When making an API call, you may pass InlineArchiveRule
    #   data as a hash:
    #
    #       {
    #         filter: { # required
    #           "String" => {
    #             contains: ["String"],
    #             eq: ["String"],
    #             exists: false,
    #             neq: ["String"],
    #           },
    #         },
    #         rule_name: "Name", # required
    #       }
    #
    # @!attribute [rw] filter
    #   The condition and values for a criterion.
    #   @return [Hash<String,Types::Criterion>]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/InlineArchiveRule AWS API Documentation
    #
    class InlineArchiveRule < Struct.new(
      :filter,
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The seconds to wait to retry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves a list of resources that have been analyzed.
    #
    # @note When making an API call, you may pass ListAnalyzedResourcesRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_arn: "AnalyzerArn", # required
    #         max_results: 1,
    #         next_token: "Token",
    #         resource_type: "AWS::S3::Bucket", # accepts AWS::S3::Bucket, AWS::IAM::Role, AWS::SQS::Queue, AWS::Lambda::Function, AWS::Lambda::LayerVersion, AWS::KMS::Key
    #       }
    #
    # @!attribute [rw] analyzer_arn
    #   The ARN of the analyzer to retrieve a list of analyzed resources
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAnalyzedResourcesRequest AWS API Documentation
    #
    class ListAnalyzedResourcesRequest < Struct.new(
      :analyzer_arn,
      :max_results,
      :next_token,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @!attribute [rw] analyzed_resources
    #   A list of resources that were analyzed.
    #   @return [Array<Types::AnalyzedResourceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAnalyzedResourcesResponse AWS API Documentation
    #
    class ListAnalyzedResourcesResponse < Struct.new(
      :analyzed_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves a list of analyzers.
    #
    # @note When making an API call, you may pass ListAnalyzersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #         type: "ACCOUNT", # accepts ACCOUNT, ORGANIZATION
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of analyzer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAnalyzersRequest AWS API Documentation
    #
    class ListAnalyzersRequest < Struct.new(
      :max_results,
      :next_token,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @!attribute [rw] analyzers
    #   The analyzers retrieved.
    #   @return [Array<Types::AnalyzerSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAnalyzersResponse AWS API Documentation
    #
    class ListAnalyzersResponse < Struct.new(
      :analyzers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves a list of archive rules created for the specified analyzer.
    #
    # @note When making an API call, you may pass ListArchiveRulesRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_name: "Name", # required
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] analyzer_name
    #   The name of the analyzer to retrieve rules from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListArchiveRulesRequest AWS API Documentation
    #
    class ListArchiveRulesRequest < Struct.new(
      :analyzer_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @!attribute [rw] archive_rules
    #   A list of archive rules created for the specified analyzer.
    #   @return [Array<Types::ArchiveRuleSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListArchiveRulesResponse AWS API Documentation
    #
    class ListArchiveRulesResponse < Struct.new(
      :archive_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves a list of findings generated by the specified analyzer.
    #
    # @note When making an API call, you may pass ListFindingsRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_arn: "AnalyzerArn", # required
    #         filter: {
    #           "String" => {
    #             contains: ["String"],
    #             eq: ["String"],
    #             exists: false,
    #             neq: ["String"],
    #           },
    #         },
    #         max_results: 1,
    #         next_token: "Token",
    #         sort: {
    #           attribute_name: "String",
    #           order_by: "ASC", # accepts ASC, DESC
    #         },
    #       }
    #
    # @!attribute [rw] analyzer_arn
    #   The ARN of the analyzer to retrieve findings from.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to match for the findings to return.
    #   @return [Hash<String,Types::Criterion>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   The sort order for the findings returned.
    #   @return [Types::SortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListFindingsRequest AWS API Documentation
    #
    class ListFindingsRequest < Struct.new(
      :analyzer_arn,
      :filter,
      :max_results,
      :next_token,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @!attribute [rw] findings
    #   A list of findings retrieved from the analyzer that match the filter
    #   criteria specified, if any.
    #   @return [Array<Types::FindingSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListFindingsResponse AWS API Documentation
    #
    class ListFindingsResponse < Struct.new(
      :findings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves a list of tags applied to the specified resource.
    #
    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to retrieve tags from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @!attribute [rw] tags
    #   The tags that are applied to the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Service quote met error.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria used to sort.
    #
    # @note When making an API call, you may pass SortCriteria
    #   data as a hash:
    #
    #       {
    #         attribute_name: "String",
    #         order_by: "ASC", # accepts ASC, DESC
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute to sort on.
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   The sort order, ascending or descending.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/SortCriteria AWS API Documentation
    #
    class SortCriteria < Struct.new(
      :attribute_name,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Starts a scan of the policies applied to the specified resource.
    #
    # @note When making an API call, you may pass StartResourceScanRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_arn: "AnalyzerArn", # required
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] analyzer_arn
    #   The ARN of the analyzer to use to scan the policies applied to the
    #   specified resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to scan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/StartResourceScanRequest AWS API Documentation
    #
    class StartResourceScanRequest < Struct.new(
      :analyzer_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides more details about the current status of the analyzer. For
    # example, if the creation for the analyzer fails, a `Failed` status is
    # displayed. For an analyzer with organization as the type, this failure
    # can be due to an issue with creating the service-linked roles required
    # in the member accounts of the AWS organization.
    #
    # @!attribute [rw] code
    #   The reason code for the current status of the analyzer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/StatusReason AWS API Documentation
    #
    class StatusReason < Struct.new(
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Adds a tag to the specified resource.
    #
    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tags: { # required
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to add the tag to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Throttling limit exceeded error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The seconds to wait to retry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Removes a tag from the specified resource.
    #
    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove the tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key for the tag to add.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to the request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Updates the specified archive rule.
    #
    # @note When making an API call, you may pass UpdateArchiveRuleRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_name: "Name", # required
    #         client_token: "String",
    #         filter: { # required
    #           "String" => {
    #             contains: ["String"],
    #             eq: ["String"],
    #             exists: false,
    #             neq: ["String"],
    #           },
    #         },
    #         rule_name: "Name", # required
    #       }
    #
    # @!attribute [rw] analyzer_name
    #   The name of the analyzer to update the archive rules for.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter to match for the rules to update. Only rules that match the
    #   filter are updated.
    #   @return [Hash<String,Types::Criterion>]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UpdateArchiveRuleRequest AWS API Documentation
    #
    class UpdateArchiveRuleRequest < Struct.new(
      :analyzer_name,
      :client_token,
      :filter,
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates findings with the new values provided in the request.
    #
    # @note When making an API call, you may pass UpdateFindingsRequest
    #   data as a hash:
    #
    #       {
    #         analyzer_arn: "AnalyzerArn", # required
    #         client_token: "String",
    #         ids: ["FindingId"],
    #         resource_arn: "ResourceArn",
    #         status: "ACTIVE", # required, accepts ACTIVE, ARCHIVED
    #       }
    #
    # @!attribute [rw] analyzer_arn
    #   The ARN of the analyzer that generated the findings to update.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   The IDs of the findings to update.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource identified in the finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state represents the action to take to update the finding
    #   Status. Use `ARCHIVE` to change an Active finding to an Archived
    #   finding. Use `ACTIVE` to change an Archived finding to an Active
    #   finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UpdateFindingsRequest AWS API Documentation
    #
    class UpdateFindingsRequest < Struct.new(
      :analyzer_arn,
      :client_token,
      :ids,
      :resource_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation exception error.
    #
    # @!attribute [rw] field_list
    #   A list of fields that didn't validate.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a validation exception.
    #
    # @!attribute [rw] message
    #   A message about the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
